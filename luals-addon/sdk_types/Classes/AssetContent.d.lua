---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@class AssetContent : SandboxNode
---@field LoadFinish SBXSignal @资源加载完成时触发
local AssetContent = {}

--- 是否准备就绪
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@return boolean
function AssetContent:Ready() end

--- 通过资源类型和id加载该资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@param loadType AssetResType
---@param assetId string
function AssetContent:Load(loadType, assetId) end

--- 该资源清除
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
function AssetContent:Clear() end

--- 该资源模型是否已经加载完成
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@return boolean
function AssetContent:IsLoadSuccess() end

--- 获取加载的资源id
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@return string
function AssetContent:GetLoadAssetId() end

--- 获取加载的资源类型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@return AssetResType
function AssetContent:GetResType() end

--- 获取加载的Texture2D资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/AssetContent.html
---@return Texture2D>
function AssetContent:GetTexture2D() end

return AssetContent
