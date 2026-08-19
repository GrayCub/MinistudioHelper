---@meta
---@diagnostic disable: missing-fields

---@class BlendModeType : EnumValue<BlendModeType>
---@field Value BlendModeType
Enum.BlendModeType = {
    ---@type BlendModeType
    BLEND_OPAQUE = {}, -- Value = 0; 不透明,disable
    ---@type BlendModeType
    BLEND_ALPHATEST = {}, -- Value = 1; Alpha测试
    ---@type BlendModeType
    BLEND_ALPHABLEND = {}, -- Value = 2; Alpha混合
    ---@type BlendModeType
    BLEND_ADDBLEND = {}, -- Value = 3; 相加混合
    ---@type BlendModeType
    BLEND_ADD = {}, -- Value = 4; 相加
    ---@type BlendModeType
    BLEND_MODULATE = {}, -- Value = 5; 和背景相乘
    ---@type BlendModeType
    BLEND_MODULATE2X = {}, -- Value = 6; 和背景相乘X2
}

