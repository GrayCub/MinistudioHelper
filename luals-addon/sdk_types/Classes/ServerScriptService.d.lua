---@meta

--- 服务器脚本服务。用来存放服务器脚本，并且会优先执行，不会将子节点同步到客户端，相应的子节点如果有 也不会执行。 LocalScript
---@class ServerScriptService : SandboxNode
local ServerScriptService = {}

return ServerScriptService
