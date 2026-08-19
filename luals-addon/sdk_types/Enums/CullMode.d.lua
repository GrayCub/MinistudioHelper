---@meta
---@diagnostic disable: missing-fields

---@class CullMode : EnumValue<CullMode>
---@field Value CullMode
Enum.CullMode = {
    ---@type CullMode
    kCullOff = {}, -- Value = 0; 不剔除
    ---@type CullMode
    kCullFront = {}, -- Value = 1; 剔除正面三角形
    ---@type CullMode
    kCullBack = {}, -- Value = 2; 剔除背面三角形
}

