---@meta

---@class FTeamPlayerAddedEvent : SBXSignal
FTeamPlayerAddedEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FTeamPlayerAddedEvent:Connect(callback) end

---@class FTeamPlayerRemovedEvent : SBXSignal
FTeamPlayerRemovedEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FTeamPlayerRemovedEvent:Connect(callback) end


---@class Team : SandboxNode
---@field AutoAssignable boolean 此属性用来决定加入游戏的Player是否允许自动分配到该队伍
---@field TeamColor ColorQuad 此属性设置Team的颜色，决定队伍成员的Player.TeamColor属性 (ColorQuad)
---@field PlayerAdded FTeamPlayerAddedEvent <Assignable> 新增一个玩家
---@field PlayerRemoved FTeamPlayerRemovedEvent <Assignable> 移除一个玩家
local Team = {}

return Team
