---@meta
---@diagnostic disable: missing-fields

---@class PreZMode : EnumValue<PreZMode>
---@field Value PreZMode
Enum.PreZMode = {
    ---@type PreZMode
    None = {}, -- Value = 0; 无
    ---@type PreZMode
    Maked = {}, -- Value = 1; 蒙层
    ---@type PreZMode
    OpaqueAndMasked = {}, -- Value = 3; 不透明且蒙层
}

