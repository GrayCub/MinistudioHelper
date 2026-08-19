---@meta
---@diagnostic disable: missing-fields

---@class DownEffect : EnumValue<DownEffect>
---@field Value DownEffect
Enum.DownEffect = {
    ---@type DownEffect
    NoEffect = {}, -- Value = 0; 无效果 - 按下时无任何视觉变化
    ---@type DownEffect
    ColorEffect = {}, -- Value = 1; 颜色变化效果 - 按下时按钮颜色变暗
    ---@type DownEffect
    ScaledEffect = {}, -- Value = 2; 缩放效果 - 按下时按钮略微缩小
}

