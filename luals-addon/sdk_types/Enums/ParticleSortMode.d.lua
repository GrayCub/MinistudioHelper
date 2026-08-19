---@meta
---@diagnostic disable: missing-fields

---@class ParticleSortMode : EnumValue<ParticleSortMode>
---@field Value ParticleSortMode
Enum.ParticleSortMode = {
    ---@type ParticleSortMode
    None = {}, -- Value = 0
    ---@type ParticleSortMode
    ByDistance = {}, -- Value = 1
    ---@type ParticleSortMode
    OldestInFront = {}, -- Value = 2
    ---@type ParticleSortMode
    YoungestInFront = {}, -- Value = 3
}

