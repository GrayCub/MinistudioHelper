---@meta

--- 继承： SandboxNode
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/ScriptNode.html
---@class ScriptNode : SandboxNode
---@field luafile string @加载模式是 时会执行设置的 的 内容 LoadMode::LUAFILE luafile string
---@field code string @加载模式是 时会执行设置 的字符串内容 LoadMode::LUACODE code
local ScriptNode = {}

return ScriptNode
