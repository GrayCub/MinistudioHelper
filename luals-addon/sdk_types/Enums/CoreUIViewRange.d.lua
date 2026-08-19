---@meta
---@diagnostic disable: missing-fields

---@class CoreUIViewRange : EnumValue<CoreUIViewRange>
---@field Value CoreUIViewRange
Enum.CoreUIViewRange = {
    ---@type CoreUIViewRange
    None = {}, -- Value = 0; 无
    ---@type CoreUIViewRange
    Near = {}, -- Value = 2; 近
    ---@type CoreUIViewRange
    Medium = {}, -- Value = 4; 中
    ---@type CoreUIViewRange
    Far = {}, -- Value = 6; 中
    ---@type CoreUIViewRange
    Farther = {}, -- Value = 10; 远
    ---@type CoreUIViewRange
    Farthest = {}, -- Value = 16; 最远
}

