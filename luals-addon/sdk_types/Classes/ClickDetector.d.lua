---@meta

---@class FClickDetectorMouseClickEvent : SBXSignal
FClickDetectorMouseClickEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorMouseClickEvent:Connect(callback) end

---@class FClickDetectorRightMouseClickEvent : SBXSignal
FClickDetectorRightMouseClickEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorRightMouseClickEvent:Connect(callback) end

---@class FClickDetectorMouseHoverEnterEvent : SBXSignal
FClickDetectorMouseHoverEnterEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorMouseHoverEnterEvent:Connect(callback) end

---@class FClickDetectorMouseHoverLeaveEvent : SBXSignal
FClickDetectorMouseHoverLeaveEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorMouseHoverLeaveEvent:Connect(callback) end

---@class FClickDetectorMouseDownEvent : SBXSignal
FClickDetectorMouseDownEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorMouseDownEvent:Connect(callback) end

---@class FClickDetectorMouseUpEvent : SBXSignal
FClickDetectorMouseUpEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorMouseUpEvent:Connect(callback) end

---@class FClickDetectorRightMouseDownEvent : SBXSignal
FClickDetectorRightMouseDownEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorRightMouseDownEvent:Connect(callback) end

---@class FClickDetectorRightMouseUpEvent : SBXSignal
FClickDetectorRightMouseUpEvent = {}

---@param callback fun(node: SandboxNode): nil
---@return SBXConnection
function FClickDetectorRightMouseUpEvent:Connect(callback) end


---@class ClickDetector : SandboxNode
---@field MouseClick FClickDetectorMouseClickEvent <Assignable> 鼠标左键点击节点时触发
---@field RightMouseClick FClickDetectorRightMouseClickEvent <Assignable> 鼠标右键点击时触发
---@field MouseHoverEnter FClickDetectorMouseHoverEnterEvent <Assignable> 鼠标停在节点上时触发
---@field MouseHoverLeave FClickDetectorMouseHoverLeaveEvent <Assignable> 鼠标在节点上离开时触发
---@field MouseDown FClickDetectorMouseDownEvent <Assignable> 鼠标按下时触发
---@field MouseUp FClickDetectorMouseUpEvent <Assignable> 鼠标弹起时触发
---@field RightMouseDown FClickDetectorRightMouseDownEvent <Assignable> 鼠标右键按下时触发
---@field RightMouseUp FClickDetectorRightMouseUpEvent <Assignable> 鼠标右键弹起时触发
local ClickDetector = {}

return ClickDetector
