---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/ContentService.html
---@class ContentService : SandboxNode
---@field RequestQueueSize number @请求队列的大小
---@field NotifyAssetFetchStatus SBXSignal @资源加载状态变更时，会触发一个NotifyAssetFetchStatus通知
---@field NotifyAssetStatusLoading SBXSignal @资源加载Loading时通知
local ContentService = {}

--- 异步预加载
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/ContentService.html
---@param func function
---@param reflexTuple ReflexTuple
function ContentService:PreloadAsync(func, reflexTuple) end

--- 获取资源加载状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/ContentService.html
---@param assetid string
---@return AssetFetchStatus
function ContentService:GetAssetFetchStatus(assetid) end

--- 资源加载状态变更的信号
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/ContentService.html
---@param assetid string
---@return SBXSignal
function ContentService:GetAssetFetchStatusChangedSignal(assetid) end

--- 获取资源加载状态信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/ContentService.html
---@param assetid string
---@return string
function ContentService:GetAssetStatusInfo(assetid) end

return ContentService
