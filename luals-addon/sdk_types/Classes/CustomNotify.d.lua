---@meta

---@class FCustomNotifyNotifyEvent : SBXSignal
FCustomNotifyNotifyEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FCustomNotifyNotifyEvent:Connect(callback) end


---@class CustomNotify : SandboxNode
---@field Notify FCustomNotifyNotifyEvent <Assignable>
local CustomNotify = {}

return CustomNotify
