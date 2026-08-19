---@meta

--- 是位于 服务内的容器对象。 它包含 和其他对象，当玩家加入游戏时，这些对象将被复制到 容器中。 例如，如果您想在满足某些条件时在客户端上创建特殊效果，您可以在该对象中放置一个 来实现此目的。 StarterPlayerScripts StarterPlayer LocalScripts PlayerScripts LocalScript 该对象也是使用 定义附加输入的 的好地方。 对于仅在玩家生成时相关的输入，您可以在 角色生成时使用 。 然后，当它们死亡或消失时，使用 。 ContextActionService LocalScript Players.LocalPlayer ContextActionService:BindAction() ContextActionService:UnbindAction()
--- @see https://studio.mini1.cn/wiki/Api/Classes/Script/StarterPlayerScripts.html
---@class StarterPlayerScripts : SandboxNode
local StarterPlayerScripts = {}

return StarterPlayerScripts
