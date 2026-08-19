---@meta
---@diagnostic disable: missing-fields

---@class UIMODLEVIEW_SkyLightType : EnumValue<UIMODLEVIEW_SkyLightType>
---@field Value UIMODLEVIEW_SkyLightType
Enum.UIMODLEVIEW_SkyLightType = {
    ---@type UIMODLEVIEW_SkyLightType
    Skybox = {}, -- Value = 1; 天空盒模式，使用立方体贴图提供环境光照
    ---@type UIMODLEVIEW_SkyLightType
    Gradient = {}, -- Value = 3; 渐变模式，使用颜色渐变提供环境光照
}

