--[[
Copyright (C) 2026 阴阳灰仔 (GrayCub)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]

local M = {}

local function decode_uri(value)
    return (tostring(value):gsub("%%(%x%x)", function(hex)
        return string.char(tonumber(hex, 16))
    end):gsub("\\", "/"))
end

local function uri_to_file_path(uri)
    local path = decode_uri(uri):gsub("^file://", "")
    return path:gsub("^/([A-Za-z]:/)", "%1")
end

local function encode_uri(value)
    value = value:gsub("^file:///([A-Z]):", function(drive)
        return "file:///" .. drive:lower() .. ":"
    end)
    local scheme, path = value:match("^([%a][%w+%.%-]*://)(.*)$")
    if not scheme then return value end
    path = path:gsub("([^%w%-%._~/])", function(char)
        return string.format("%%%02X", string.byte(char))
    end)
    return scheme .. path
end

local function split_path(value)
    if type(value) == "table" then
        local result = {}
        for index, part in ipairs(value) do
            result[index] = part
        end
        return result
    end

    local result = {}
    for part in tostring(value):gmatch("[^%.]+") do
        result[#result + 1] = part
    end
    return result
end

local function skip_space(value, position)
    while value:sub(position, position):match("%s") do
        position = position + 1
    end
    return position
end

local function read_identifier(value, position)
    local start_pos, finish_pos = value:find("^[%a_][%w_]*", position)
    if not start_pos then return nil, position end
    return value:sub(start_pos, finish_pos), finish_pos + 1
end

local function read_string(value, position)
    local quote = value:sub(position, position)
    if quote ~= '"' and quote ~= "'" then return nil, position end
    local result = {}
    position = position + 1
    while position <= #value do
        local char = value:sub(position, position)
        if char == quote then
            return table.concat(result), position + 1
        end
        if char == "\\" and position < #value then
            position = position + 1
            char = value:sub(position, position)
        end
        result[#result + 1] = char
        position = position + 1
    end
    return nil, position
end

local function expand_alias(parts, aliases)
    local best_length = 0
    local best_target
    for alias, target in pairs(aliases or {}) do
        local alias_parts = split_path(alias)
        local matches = #alias_parts <= #parts
        for index, part in ipairs(alias_parts) do
            if parts[index] ~= part then
                matches = false
                break
            end
        end
        if matches and #alias_parts > best_length then
            best_length = #alias_parts
            best_target = split_path(target)
        end
    end
    if not best_target then return parts end

    local result = {}
    for _, part in ipairs(best_target) do
        result[#result + 1] = part
    end
    for index = best_length + 1, #parts do
        result[#result + 1] = parts[index]
    end
    return result
end

-- Convert a node expression into the same dotted path consumed by resolve().
-- Supported forms can be mixed freely:
-- game.MainStorage.Common.Global
-- game:GetService("MainStorage"):WaitForChild("Common").Global
-- MainStorage.Common:FindFirstChild("Global")
function M.normalize_expression(expression, aliases)
    if type(expression) ~= "string" then return nil end
    local position = skip_space(expression, 1)
    local first
    first, position = read_identifier(expression, position)
    if not first then return nil end

    local parts = { first }
    while true do
        position = skip_space(expression, position)
        local char = expression:sub(position, position)
        if char == "" then break end

        if char == "." then
            position = skip_space(expression, position + 1)
            local field
            field, position = read_identifier(expression, position)
            if not field then return nil end
            parts[#parts + 1] = field
        elseif char == "[" then
            position = skip_space(expression, position + 1)
            local field
            field, position = read_string(expression, position)
            if not field then return nil end
            position = skip_space(expression, position)
            if expression:sub(position, position) ~= "]" then return nil end
            position = position + 1
            parts[#parts + 1] = field
        elseif char == ":" then
            position = skip_space(expression, position + 1)
            local method
            method, position = read_identifier(expression, position)
            if method ~= "GetService"
            and method ~= "WaitForChild"
            and method ~= "FindFirstChild" then
                return nil
            end
            position = skip_space(expression, position)
            if expression:sub(position, position) ~= "(" then return nil end
            position = skip_space(expression, position + 1)
            local field
            field, position = read_string(expression, position)
            if not field then return nil end
            position = skip_space(expression, position)
            if expression:sub(position, position) ~= ")" then return nil end
            position = position + 1
            parts[#parts + 1] = field
        else
            return nil
        end
    end

    parts = expand_alias(parts, aliases)
    if parts[1] ~= "game" and parts[1] ~= "script" then return nil end
    return table.concat(parts, ".")
end

local function skip_quoted(value, position)
    local _, next_position = read_string(value, position)
    return next_position
end

local function skip_comment(value, position)
    if value:sub(position, position + 3) == "--[[" then
        local finish = value:find("]]", position + 4, true)
        return finish and finish + 2 or #value + 1
    end
    local finish = value:find("[\r\n]", position + 2)
    return finish or #value + 1
end

local function find_closing_paren(value, position)
    local depth = 1
    position = position + 1
    while position <= #value do
        local char = value:sub(position, position)
        if char == '"' or char == "'" then
            position = skip_quoted(value, position)
        elseif value:sub(position, position + 1) == "--" then
            position = skip_comment(value, position)
        elseif char == "(" then
            depth = depth + 1
            position = position + 1
        elseif char == ")" then
            depth = depth - 1
            if depth == 0 then return position end
            position = position + 1
        else
            position = position + 1
        end
    end
    return nil
end

function M.find_requires(text, aliases)
    local result = {}
    local position = 1
    while position <= #text do
        local char = text:sub(position, position)
        if char == '"' or char == "'" then
            position = skip_quoted(text, position)
        elseif text:sub(position, position + 1) == "--" then
            position = skip_comment(text, position)
        elseif char:match("[%a_]") then
            local word, next_position = read_identifier(text, position)
            if word == "require" then
                local open_position = skip_space(text, next_position)
                if text:sub(open_position, open_position) == "(" then
                    local close_position = find_closing_paren(
                        text,
                        open_position
                    )
                    if close_position then
                        local start_pos = skip_space(text, open_position + 1)
                        local finish_pos = close_position - 1
                        while finish_pos >= start_pos
                        and text:sub(finish_pos, finish_pos):match("%s") do
                            finish_pos = finish_pos - 1
                        end
                        local expression = text:sub(start_pos, finish_pos)
                        local path = M.normalize_expression(expression, aliases)
                        if path then
                            result[#result + 1] = {
                                start = start_pos,
                                finish = finish_pos,
                                path = path,
                                root = expression:match(
                                    "^%s*([%a_][%w_]*)"
                                ),
                            }
                        end
                        position = close_position + 1
                    else
                        position = next_position
                    end
                else
                    position = next_position
                end
            else
                position = next_position
            end
        else
            position = position + 1
        end
    end
    return result
end

local function script_info(uri)
    local value = decode_uri(uri)
    local lower = value:lower()
    local marker = "/data/scriptfiles/game/"
    local start = lower:find(marker, 1, true)
    if not start then
        marker = "/scriptfiles/game/"
        start = lower:find(marker, 1, true)
    end
    if not start then return nil end

    local relative = value:sub(start + #marker)
    if relative:lower():sub(-4) == ".lua" then
        relative = relative:sub(1, -5)
    end

    local chain = { "game" }
    for part in relative:gmatch("[^/]+") do
        chain[#chain + 1] = part
    end
    if #chain <= 1 then return nil end

    return {
        chain = chain,
        root_prefix = value:sub(1, start + #marker - 1),
    }
end

-- Resolve script-relative paths against the current script node. Script
-- children live in the directory named after their owning script.
function M.chain(uri, name)
    local parts = split_path(name)
    if #parts == 0 then return nil end
    if parts[1] == "script" then
        local info = script_info(uri)
        if not info then return nil end
        local result = {}
        for i = 1, #info.chain do result[i] = info.chain[i] end
        for i = 2, #parts do
            local part = parts[i]
            if part == "Parent" or part == "parent" then
                if #result > 1 then table.remove(result) end
            else
                result[#result + 1] = part
            end
        end
        return result
    end
    if parts[1] == "game" then return parts end
    return nil
end

function M.resolve(uri, name, chain)
    chain = chain or M.chain(uri, name)
    if not chain then return nil end
    local info = script_info(uri)
    if not info then return nil end

    local relative = {}
    for i = 2, #chain do relative[#relative + 1] = chain[i] end
    return encode_uri(
        info.root_prefix .. table.concat(relative, "/") .. ".lua"
    )
end

function M.is_script_relative(name)
    local parts = split_path(name)
    return parts[1] == "script"
end

function M.exists(uri)
    local file = io.open(uri_to_file_path(uri), "rb")
    if not file then return false end
    file:close()
    return true
end

function M.script_chain(uri)
    local info = script_info(uri)
    return info and info.chain or nil
end

return M
