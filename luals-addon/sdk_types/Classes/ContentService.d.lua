---@meta

---@class FContentServiceNotifyAssetFetchStatusEvent : SBXSignal
FContentServiceNotifyAssetFetchStatusEvent = {}

---@param callback fun(assetid: string, status: AssetFetchStatus): nil
---@return SBXConnection
function FContentServiceNotifyAssetFetchStatusEvent:Connect(callback) end

---@class FContentServiceNotifyAssetStatusLoadingEvent : SBXSignal
FContentServiceNotifyAssetStatusLoadingEvent = {}

---@param callback fun(assetid: string, curNum: number, maxNum: number): nil
---@return SBXConnection
function FContentServiceNotifyAssetStatusLoadingEvent:Connect(callback) end


---@class ContentService : SandboxNode
---@field RequestQueueSize number 请求队列的大小
---@field NotifyAssetFetchStatus FContentServiceNotifyAssetFetchStatusEvent <Assignable> 资源加载状态变更时，会触发一个NotifyAssetFetchStatus通知
---@field NotifyAssetStatusLoading FContentServiceNotifyAssetStatusLoadingEvent <Assignable> 资源加载Loading时通知
local ContentService = {}

--- 异步预加载
---@param func function
---@param reflexTuple ReflexTuple
function ContentService:PreloadAsync(func, reflexTuple) end

--- 获取资源加载状态
---@param assetid string
---@return AssetFetchStatus
function ContentService:GetAssetFetchStatus(assetid) end

--- 资源加载状态变更的信号
---@param assetid string
---@return SBXSignal
function ContentService:GetAssetFetchStatusChangedSignal(assetid) end

--- 获取资源加载状态信息
---@param assetid string
---@return string
function ContentService:GetAssetStatusInfo(assetid) end

return ContentService
