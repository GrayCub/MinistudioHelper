---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Team.html
---@class Team : SandboxNode
---@field AutoAssignable boolean @此属性用来决定加入游戏的Player是否允许自动分配到该队伍
---@field TeamColor ColorQuad @此属性设置Team的颜色，决定队伍成员的Player.TeamColor属性 (ColorQuad)
---@field PlayerAdded SBXSignal @新增一个玩家
---@field PlayerRemoved SBXSignal @移除一个玩家
local Team = {}

return Team
