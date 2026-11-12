---@meta

---@class FAssetContentLoadFinishEvent : SBXSignal
FAssetContentLoadFinishEvent = {}

---@param callback fun(isFinish: boolean): nil
---@return SBXConnection
function FAssetContentLoadFinishEvent:Connect(callback) end


---@class AssetContent : SandboxNode
---@field LoadFinish FAssetContentLoadFinishEvent <Assignable> 资源加载完成时触发
local AssetContent = {}

--- 是否准备就绪
---@return boolean
function AssetContent:Ready() end

--- 通过资源类型和id加载该资源
---@param loadType AssetResType
---@param assetId string
function AssetContent:Load(loadType, assetId) end

--- 该资源清除
function AssetContent:Clear() end

--- 该资源模型是否已经加载完成
---@return boolean
function AssetContent:IsLoadSuccess() end

--- 获取加载的资源id
---@return string
function AssetContent:GetLoadAssetId() end

--- 获取加载的资源类型
---@return AssetResType
function AssetContent:GetResType() end

--- 获取加载的Texture2D资源
---@return Texture2D>
function AssetContent:GetTexture2D() end

return AssetContent
