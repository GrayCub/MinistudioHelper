---@meta

--- 天空光源对象。用于在场景中创建和管理天空光照，支持天空盒纹理模式和渐变色模式，可以设置环境光颜色、强度、混合系数等属性，为整个场景提供全局环境光照
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/SkyLight.html
---@class SkyLight : Transform
---@field SkyLightType SkyLightType @天空光源类型，用于设置天空光照的方式。默认值为Skybox（天空盒模式）
---@field SkyLightTexture string @天空盒纹理资源路径，用于指定天空光源的立方体贴图纹理。仅在SkyLightType为Skybox时生效，此纹理将用于提供环境光照和天空颜色
---@field CubeAssetID string @立方体贴图资源ID，用于指定天空盒的立方体贴图纹理资源路径。仅在SkyLightType为Skybox时生效，此资源将作为环境光照的源纹理
---@field Intensity number @天空光源强度，用于控制天空光照对场景的照明强度。数值越大，天空光照对场景的影响越明显。默认值为1.0
---@field Color ColorQuad @天空光源颜色，用于设置天空光照的整体色调。此颜色会影响场景中所有物体接收到的环境光照颜色。默认值为(255,255,255,255)
---@field BlendAmount number @天空盒纹理混合系数，用于控制天空盒纹理与渐变色之间的混合程度。数值越高，对引用的天空盒纹理混合程度越高；数值越低，渐变色影响越大。默认值为1.0
---@field AmbientSkyColor ColorQuad @环境天空颜色，用于设置场景上方（天空方向）的环境光颜色。仅在SkyLightType为Gradient时生效，此颜色用于模拟天空区域的散射光照效果。默认值为(130,133,140)
---@field AmbientEquatorColor ColorQuad @环境光赤道颜色，用于设置场景水平方向（地平线区域）的环境光颜色。仅在SkyLightType为Gradient时生效，此颜色用于模拟地平线区域的散射光照效果。默认值为(100,100,100)
---@field AmbientGroundColor ColorQuad @环境地面颜色，用于设置场景下方（地面方向）的环境光颜色。仅在SkyLightType为Gradient时生效，此颜色用于模拟地面区域的散射光照效果。默认值为(65,65,50)
local SkyLight = {}

return SkyLight
