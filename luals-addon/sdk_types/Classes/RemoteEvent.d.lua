---@meta

--- （远程事件）的作用是在客户端和服务器端之间提供一个单向讯息传播途径，它允许 （脚本）和 （本地脚本）之间互相调用其内部的代码。讯息可以由客户端传向服务器端，也可以由服务器端传向特定的客户端，还可以由服务器端传给所有客户端。 RemoteEvent Script LocalScript
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteEvent.html
---@class RemoteEvent : SandboxNode
local RemoteEvent = {}

--- 在服务器端用同样的参数触发 事件，前面外加一个玩家参数。 RemoteEvent.OnServerNotify
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteEvent.html
---@param arguments ReflexTuple
function RemoteEvent:FireServer(arguments) end

--- 为指定的玩家触发 事件 RemoteEvent.OnClientNotify
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteEvent.html
---@param uin number
---@param arguments ReflexTuple
function RemoteEvent:FireClient(uin, arguments) end

--- 在每个客户端触发 事件。 RemoteEvent.OnClientNotify
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteEvent.html
---@param arguments ReflexTuple
function RemoteEvent:FireAllClients(arguments) end

return RemoteEvent
