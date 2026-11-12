---@meta

---@class SBXSignal
SBXSignal = {}

--- 建立事件触发时要调用的函数。返回与连接关联的SBXConnection对象
---@param callback fun(...: any): nil 每次事件触发时调用的回调函数
---@return SBXConnection
function SBXSignal:Connect(callback) end

---发送事件
---@return SBXConnection
function SBXSignal:Emit() end

---等待事件
---@return SBXConnection
function SBXSignal:Wait() end

---清空事件
---@return SBXConnection
function SBXSignal:Clear() end

