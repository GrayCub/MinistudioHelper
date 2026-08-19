---@meta

---@class SBXSignal
SBXSignal = {}

---注册信号回调
---@param callback fun(...any):nil
---@return SBXConnection
function SBXSignal:Connect(callback) end

---@return SBXConnection
function SBXSignal:Emit() end

---@return SBXConnection
function SBXSignal:Wait() end

---@return SBXConnection
function SBXSignal:Clear() end

