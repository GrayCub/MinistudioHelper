---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TriggerBox.html
---@class TriggerBox : SandboxNode
---@field Size Vector3 @触发器包围盒尺寸
---@field KinematicAble boolean @运动能力
---@field GravityAble boolean @重力能力
---@field Touched SBXSignal @触发器被触碰时，触发通知
---@field TouchEnded SBXSignal @触发器被触碰结束时，触发通知
local TriggerBox = {}

return TriggerBox
