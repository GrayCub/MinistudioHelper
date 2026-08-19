---@meta
---@diagnostic disable: missing-fields

---@class AntialiasingMethodDesc : EnumValue<AntialiasingMethodDesc>
---@field Value AntialiasingMethodDesc
Enum.AntialiasingMethodDesc = {
    ---@type AntialiasingMethodDesc
    kAntialiasingMethodFXAA = {}, -- Value = 0; FXAA（性能较好但质量略低于SMAA）
    ---@type AntialiasingMethodDesc
    kAntialiasingMethodSMAA = {}, -- Value = 1; SMAA（质量较高但性能开销相对较大）
}

