---@meta
---@diagnostic disable: missing-fields

---@class PostprocessQuality : EnumValue<PostprocessQuality>
---@field Value PostprocessQuality
Enum.PostprocessQuality = {
    ---@type PostprocessQuality
    Disable = {}, -- Value = 0; 禁用
    ---@type PostprocessQuality
    Low = {}, -- Value = 1; 低质量
    ---@type PostprocessQuality
    Medium = {}, -- Value = 2; 中等质量
    ---@type PostprocessQuality
    High = {}, -- Value = 3; 高质量
    ---@type PostprocessQuality
    Count = {}, -- Value = 4; 不是有效的枚举值，不能用于实际的业务逻辑
}

