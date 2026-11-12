---@meta

---@class FModelDataLoadAssetNotifyEvent : SBXSignal
FModelDataLoadAssetNotifyEvent = {}

---@param callback fun(urlPath: string, isSuccess: boolean): nil
---@return SBXConnection
function FModelDataLoadAssetNotifyEvent:Connect(callback) end

---@class FModelDataLoadAssetFinishNotifyEvent : SBXSignal
FModelDataLoadAssetFinishNotifyEvent = {}

---@param callback fun(isFinish: boolean): nil
---@return SBXConnection
function FModelDataLoadAssetFinishNotifyEvent:Connect(callback) end


---@class ModelData : SandboxNode
---@field Skeleton string 骨骼
---@field Meshs table 网格
---@field Materials table 材质
---@field LoadAssetNotify FModelDataLoadAssetNotifyEvent <Assignable> 单个资源加载事件完成，触发通知事件
---@field LoadAssetFinishNotify FModelDataLoadAssetFinishNotifyEvent <Assignable> 材质是否全部加载完成，触发通知事件
local ModelData = {}

return ModelData
