---@meta
---@diagnostic disable: missing-fields

---@class GraphicsQuality : EnumValue<GraphicsQuality>
---@field Value GraphicsQuality
Enum.GraphicsQuality = {
    ---@type GraphicsQuality
    Low = {}, -- Value = 0; 低质量
    ---@type GraphicsQuality
    Medium = {}, -- Value = 1; 中等质量
    ---@type GraphicsQuality
    High = {}, -- Value = 2; 高质量
    ---@type GraphicsQuality
    Ultra = {}, -- Value = 3; 极高质量
    ---@type GraphicsQuality
    Count = {}, -- Value = 4; 不是有效的枚举值，不能用于实际的业务逻辑
}

