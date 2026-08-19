---@meta
---@diagnostic disable: missing-fields

---@class ParticleSystemGradientMode : EnumValue<ParticleSystemGradientMode>
---@field Value ParticleSystemGradientMode
Enum.ParticleSystemGradientMode = {
    ---@type ParticleSystemGradientMode
    Color = {}, -- Value = 0; 对 MinMaxGradient 使用单个颜色
    ---@type ParticleSystemGradientMode
    Gradient = {}, -- Value = 1; 对 MinMaxGradient 使用单个颜色渐变
}

