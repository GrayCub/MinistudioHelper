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

local json = require("json")
local node_require = require("node_require")

local current_file = debug.getinfo(1, "S").source:sub(2)
local current_dir = current_file:match("(.*[/\\\\])") or ""
local node_tree_dts_path = current_dir .. "sdk_types/node_tree.d.lua"

local tree_cache = nil
local node_cache = {}
local SCRIPT_TYPES = {
    Script = true,
    LocalScript = true,
    ModuleScript = true,
}

local function get_tree_data()
    if tree_cache then return tree_cache end
    local f = io.open(node_tree_dts_path, "r")
    if not f then return tree_cache end

    local content = f:read("*a")
    f:close()

    local encoded = content:match("%-%- __MS_NODE_TREE_JSON__ ([^\r\n]+)")
    if not encoded then return tree_cache end

    local ok, res = pcall(json.decode, encoded)
    if ok and type(res) == "table" then
        tree_cache = res
    end
    return tree_cache
end

local function resolve_node(chain)
    local cache_key = table.concat(chain, "\31")
    local cached = node_cache[cache_key]
    if cached ~= nil then
        return cached or nil
    end
    local data = get_tree_data()
    if not data then
        node_cache[cache_key] = false
        return nil
    end

    local curr = data
    for _, name in ipairs(chain) do
        if type(curr) == "table" and curr[name] then
            curr = curr[name]
        else
            node_cache[cache_key] = false
            return nil
        end
    end
    local result = type(curr) == "table" and curr or nil
    node_cache[cache_key] = result or false
    return result
end

local function get_ast_chain(node)
    local reverse_chain = {}
    local curr = node
    while curr do
        if curr.type == "getfield" or curr.type == "getindex" then
            if curr.field and curr.field[1] then
                reverse_chain[#reverse_chain + 1] = curr.field[1]
            end
            curr = curr.node
        elseif curr.type == "getglobal" then
            if curr[1] then
                reverse_chain[#reverse_chain + 1] = curr[1]
            end
            break
        else
            break
        end
    end
    local chain = {}
    for index = #reverse_chain, 1, -1 do
        chain[#chain + 1] = reverse_chain[index]
    end
    return chain
end

local function resolve_node_require(uri, require_path)
    local chain = node_require.chain(uri, require_path)
    local resolved = node_require.resolve(uri, require_path, chain)
    if not chain or not resolved then return nil end

    if node_require.is_script_relative(require_path)
    and node_require.exists(resolved) then
        return resolved
    end

    local node = resolve_node(chain)
    if not node or not SCRIPT_TYPES[node.__type] then
        return nil
    end
    return resolved
end

local function collect_node_aliases(uri, text)
    local aliases = {}
    local declarations = {}
    for line_start, line in text:gmatch("()([^\r\n]+)") do
        local name, expression = line:match(
            "^%s*local%s+([%a_][%w_]*)%s*=%s*(.-)%s*$"
        )
        local is_local = name ~= nil
        if not name then
            name, expression = line:match(
                "^%s*([%a_][%w_%.]*)%s*=%s*(.-)%s*$"
            )
        end
        if name and expression then
            expression = expression:gsub("%s*%-%-.*$", "")
            local path = node_require.normalize_expression(
                expression,
                aliases
            )
            if path and node_require.chain(uri, path) then
                aliases[name] = path
                if is_local then
                    declarations[name] = line_start
                end
            end
        end
    end
    return aliases, declarations
end

function OnSetText(uri, text)
    if type(text) ~= "string" or not text:find("require", 1, true) then
        return nil
    end

    local aliases, declarations = collect_node_aliases(uri, text)

    local diffs = {}
    local suppressed_declarations = {}
    local resolved_paths = {}
    for _, call in ipairs(node_require.find_requires(text, aliases)) do
        local resolved = resolved_paths[call.path]
        if resolved == nil then
            resolved = resolve_node_require(uri, call.path) or false
            resolved_paths[call.path] = resolved
        end
        if resolved then
            diffs[#diffs + 1] = {
                start = call.start,
                finish = call.finish,
                text = '"' .. call.path .. '"',
            }
            if call.root and declarations[call.root] then
                suppressed_declarations[declarations[call.root]] = true
            end
        end
    end

    local newline = text:find("\r\n", 1, true) and "\r\n" or "\n"
    for position in pairs(suppressed_declarations) do
        diffs[#diffs + 1] = {
            start = position,
            finish = position - 1,
            text = "---@diagnostic disable-next-line: unused-local"
                .. newline,
        }
    end
    return #diffs > 0 and diffs or nil
end

function ResolveRequire(uri, require_path, source_uri)
    local owner_uri = source_uri or uri
    if type(require_path) == "string" then
        local resolved = resolve_node_require(owner_uri, require_path)
        return resolved and { resolved } or nil
    end
    if type(require_path) == "table" then
        local chain = get_ast_chain(require_path)
        if #chain == 0 and type(require_path.node) == "table" then
            chain = get_ast_chain(require_path.node)
        end
        if #chain > 0 then
            local resolved = resolve_node_require(owner_uri, chain)
            return resolved and { resolved } or nil
        end
    end
    return nil
end
