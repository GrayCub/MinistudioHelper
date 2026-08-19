---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/HingeJoint.html
---@class HingeJoint : SandboxNode
---@field LimitsEnable boolean @是否限制启用
---@field UpperAngle number @限制的最大角度
---@field LowerAngle number @限制的最小角度
---@field Restitution number @达到最大或最小角度后的一个回拉力
---@field Spring number @弹力
---@field Damping number @阻尼大小
---@field LimitTargetAngle number @限制的目标角度
---@field ActuatorType MotorType @传动类型（传动类型为：MOTOR时 ）
---@field MotorAngularSpeed number @motor传动参数:角速度
---@field MotorMaxTorque number @最大扭矩（传动类型为：SERVO时） ――暂时还没实现。
local HingeJoint = {}

return HingeJoint
