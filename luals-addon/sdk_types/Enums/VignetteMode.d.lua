---@meta
---@diagnostic disable: missing-fields

---@class VignetteMode : EnumValue<VignetteMode>
---@field Value VignetteMode
Enum.VignetteMode = {
    ---@type VignetteMode
    Classic = {}, -- Value = 0; 经典模式（使用传统的渐变算法生成暗角效果）
    ---@type VignetteMode
    Masked = {}, -- Value = 1; 遮罩模式（使用遮罩贴图来定义暗角区域）
}

