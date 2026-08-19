---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TeleportService.html
---@class TeleportService : SandboxNode
---@field TeleportSuccess SBXSignal @玩家传送成功触发，会触发一个TeleportSuccess通知
---@field TeleportFail SBXSignal @玩家传送失败，会触发一个TeleportFail通知
local TeleportService = {}

--- 地图内将玩家传送到指定位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TeleportService.html
---@param playernode SandboxNode
---@param pos Vector3
function TeleportService:Teleport(playernode, pos) end

return TeleportService
