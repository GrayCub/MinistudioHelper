---@meta
---@diagnostic disable: missing-fields

---@class SkyLightType : EnumValue<SkyLightType>
---@field Value SkyLightType
Enum.SkyLightType = {
    ---@type SkyLightType
    Skybox = {}, -- Value = 1; 天空盒模式 -使用立方体贴图纹理来提供环境光照和天空颜色
    ---@type SkyLightType
    Color = {}, -- Value = 2; 颜色模式 -已废弃，等同于Gradient模式
    ---@type SkyLightType
    Gradient = {}, -- Value = 3; 渐变模式 -使用天空、赤道和地面三个区域的渐变色来模拟大气散射光照效果
}

