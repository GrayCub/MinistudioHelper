---@meta

---@class FAreaEnterNodeEvent : SBXSignal
FAreaEnterNodeEvent = {}

---@param callback fun(actorNode: SandboxNode): nil
---@return SBXConnection
function FAreaEnterNodeEvent:Connect(callback) end

---@class FAreaLeaveNodeEvent : SBXSignal
FAreaLeaveNodeEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FAreaLeaveNodeEvent:Connect(callback) end


---@class Area : SandboxNode
---@field Beg Vector3 起始位置世界坐标
---@field End Vector3 结束位置世界坐标
---@field EffectWidth number 效果宽度
---@field Show boolean 是否显示
---@field ShowMode SceneEffectFrameShowMode 显示模式的枚举
---@field Color ColorQuad 区域颜色
---@field EnterNode FAreaEnterNodeEvent <Assignable> 节点进入该区域时触发
---@field LeaveNode FAreaLeaveNodeEvent <Assignable> 节点离开该区域时触发
local Area = {}

return Area
