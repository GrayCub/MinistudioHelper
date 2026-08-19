---@meta
---@diagnostic disable: missing-fields

---@class LightType : EnumValue<LightType>
---@field Value LightType
Enum.LightType = {
    ---@type LightType
    Direction = {}, -- Value = 0; 平行光
    ---@type LightType
    Point = {}, -- Value = 1; 点光源
    ---@type LightType
    Spot = {}, -- Value = 2; 聚光灯
    ---@type LightType
    UnKnow = {}, -- Value = 3; 未知
}

