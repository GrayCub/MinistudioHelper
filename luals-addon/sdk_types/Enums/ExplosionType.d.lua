---@meta
---@diagnostic disable: missing-fields

---@class ExplosionType : EnumValue<ExplosionType>
---@field Value ExplosionType
Enum.ExplosionType = {
    ---@type ExplosionType
    NoCrater = {}, -- Value = 0; 无火山口
    ---@type ExplosionType
    Crater = {}, -- Value = 1; 火山口
}

