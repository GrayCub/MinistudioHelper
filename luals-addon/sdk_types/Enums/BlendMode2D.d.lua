---@meta
---@diagnostic disable: missing-fields

---@class BlendMode2D : EnumValue<BlendMode2D>
---@field Value BlendMode2D
Enum.BlendMode2D = {
    ---@type BlendMode2D
    NORMAL = {}, -- Value = 0; 正常混合
    ---@type BlendMode2D
    ADDITIVE = {}, -- Value = 2; 加法混合(发光效果)
    ---@type BlendMode2D
    MULTIPLY = {}, -- Value = 3; 乘法混合
    ---@type BlendMode2D
    SCREEN = {}, -- Value = 4; 滤色混合
    ---@type BlendMode2D
    DISABLE = {}, -- Value = 5; 禁用混合
}

