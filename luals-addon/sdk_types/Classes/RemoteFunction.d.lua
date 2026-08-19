---@meta

--- （远程函数）用于创建客户端和服务器用来彼此通信的游戏内 。开发者可以通过调用 执行特定操作，并返回其结果。当不需要返回结果时，开发者应当转为使用异步调用且无需等待响应即可继续执行的 。 RemoteFunction API RemoteFunction RemoteEvent 客户端如果报错，服务器同样会报错 如果客户端失去链接，同样会导致报错 如果客户端调用函数缺少返回值，则服务器会一直等待
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteFunction.html
---@class RemoteFunction : SandboxNode
local RemoteFunction = {}

--- 调用客户端的方法. 在客户端脚本 中 设置 为绑定至 的方法。 LocalScript RemoteFunction:OnServerInvoke RemoteFunction
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteFunction.html
---@param arguments number
---@return ReflexTuple
function RemoteFunction:InvokeClient(arguments) end

--- 调用服务端的方法。 在服务端脚本 中 设置 为指定 调用绑定至 的方法。 Script RemoteFunction:OnClientInvoke client RemoteFunction
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/RemoteFunction.html
---@param arguments ReflexTuple
---@return ReflexTuple
function RemoteFunction:InvokeServer(arguments) end

return RemoteFunction
