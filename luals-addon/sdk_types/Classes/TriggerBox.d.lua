---@meta

---@class FTriggerBoxTouchedEvent : SBXSignal
FTriggerBoxTouchedEvent = {}

---@param callback fun(node: SandboxNode, pos: Vector3, normal: Vector3): nil
---@return SBXConnection
function FTriggerBoxTouchedEvent:Connect(callback) end

---@class FTriggerBoxTouchEndedEvent : SBXSignal
FTriggerBoxTouchEndedEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FTriggerBoxTouchEndedEvent:Connect(callback) end


---@class TriggerBox : SandboxNode
---@field Size Vector3 触发器包围盒尺寸
---@field KinematicAble boolean 运动能力
---@field GravityAble boolean 重力能力
---@field Touched FTriggerBoxTouchedEvent <Assignable> 触发器被触碰时，触发通知
---@field TouchEnded FTriggerBoxTouchEndedEvent <Assignable> 触发器被触碰结束时，触发通知
local TriggerBox = {}

return TriggerBox
