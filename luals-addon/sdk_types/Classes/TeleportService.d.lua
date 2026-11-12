---@meta

---@class FTeleportServiceTeleportSuccessEvent : SBXSignal
FTeleportServiceTeleportSuccessEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FTeleportServiceTeleportSuccessEvent:Connect(callback) end

---@class FTeleportServiceTeleportFailEvent : SBXSignal
FTeleportServiceTeleportFailEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FTeleportServiceTeleportFailEvent:Connect(callback) end


---@class TeleportService : SandboxNode
---@field TeleportSuccess FTeleportServiceTeleportSuccessEvent <Assignable> 玩家传送成功触发，会触发一个TeleportSuccess通知
---@field TeleportFail FTeleportServiceTeleportFailEvent <Assignable> 玩家传送失败，会触发一个TeleportFail通知
local TeleportService = {}

--- 地图内将玩家传送到指定位置
---@param playernode SandboxNode
---@param pos Vector3
function TeleportService:Teleport(playernode, pos) end

return TeleportService
