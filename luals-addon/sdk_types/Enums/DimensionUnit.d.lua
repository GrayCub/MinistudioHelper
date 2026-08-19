---@meta
---@diagnostic disable: missing-fields

---@class DimensionUnit : EnumValue<DimensionUnit>
---@field Value DimensionUnit
Enum.DimensionUnit = {
    ---@type DimensionUnit
    cenimeter = {}, -- Value = 0; 厘米，以厘米为单位计算模型尺寸
    ---@type DimensionUnit
    diameter = {}, -- Value = 1; 直径，以直径为单位计算模型尺寸
    ---@type DimensionUnit
    meter = {}, -- Value = 2; 米，以米为单位计算模型尺寸
}

