---@meta

---@class FSandboxUISnapshotNodeOnSnapFinishEvent : SBXSignal
FSandboxUISnapshotNodeOnSnapFinishEvent = {}

---@param callback fun(...: any): nil
---@return SBXConnection
function FSandboxUISnapshotNodeOnSnapFinishEvent:Connect(callback) end


---@class SandboxUISnapshotNode : SandboxNode
---@field IsSnapFinish boolean 是否截屏完毕
---@field OnSnapFinish FSandboxUISnapshotNodeOnSnapFinishEvent <Assignable> 截屏完毕时，触发一个OnSnapFinish通知
local SandboxUISnapshotNode = {}

return SandboxUISnapshotNode
