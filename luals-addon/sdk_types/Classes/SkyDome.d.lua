---@meta

--- 天空穹顶节点，提供天空盒与云层、星空、天空颜色等外观参数的统一控制
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/SkyDome.html
---@class SkyDome : SandboxNode
---@field HazeColor ColorQuad @顶部天空颜色（薄雾/高空色），影响天空穹顶上部的渐变色，默认值为(40,122,255,255)
---@field HorizonColor ColorQuad @地平线颜色，影响天空中部与地平线过渡色，默认值为(164,211,255,255)
---@field ZenithColor ColorQuad @天穹底部颜色（靠近视野下缘），与顶/中部共同形成天空渐变，默认值为(177,226,255,255)
---@field SkyBoxType SkyBoxType @设置天空盒模式，默认值为Game
---@field CloudsEnable boolean @是否启用云层渲染，默认值为true
---@field ShadowColor ColorQuad @云层阴影高光色（亮部颜色）。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，默认值为(255,255,255,255)
---@field ShadowDarkColor ColorQuad @云层阴影暗部颜色。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，默认值为(255,255,255,255)
---@field CloudsCoverage number @云层覆盖率（云量）。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，数值越大云越密集，默认值为0.042
---@field LightIntensity number @云层受光强度。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，数值越大受光越强、明暗对比越明显，默认值为0.1
---@field CloudsSpeed number @云层移动速度。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，默认值为0.1
---@field CloudsAlpha number @云层透明度（不透明度的反向）。该参数仅在CloudsEnable为true且SkyBoxType为Custom时生效，数值越大越通透，默认值为0.41
---@field StarsAmount number @星星数量/强度。该参数仅在SkyBoxType为Custom时生效；当SkyBoxType为Game时，星星数量会根据时间系统自动调整，此参数无效。默认值为0.5
---@field CubeAssetID string @自定义天空盒贴图资源路径，在SkyBoxType为Custom时生效。该资源必须是立方体贴图（TextureCube）格式，如果使用普通2D纹理将导致加载失败
---@field AdvanceMaterialAssetID string @高级材质天空盒的材质资源路径，仅在SkyBoxType为Advance时生效，且只能在编译器模式下修改该值
local SkyDome = {}

--- 设置高级材质天空盒所使用的材质资源路径，仅在SkyBoxType为Advance时生效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/SkyDome.html
---@param assetID string
---@param callback function
function SkyDome:SetAdvanceMaterialAssetID(assetID, callback) end

--- 获取高级材质天空盒当前绑定的材质对象，仅在SkyBoxType为Advance时生效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/SkyDome.html
---@return SandboxNode
function SkyDome:GetAdvanceMaterialInstance() end

return SkyDome
