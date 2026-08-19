---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/ModelData.html
---@class ModelData : SandboxNode
---@field Skeleton string @骨骼
---@field Meshs table @网格
---@field Materials table @材质
---@field LoadAssetNotify SBXSignal @单个资源加载事件完成，触发通知事件
---@field LoadAssetFinishNotify SBXSignal @材质是否全部加载完成，触发通知事件
local ModelData = {}

return ModelData
