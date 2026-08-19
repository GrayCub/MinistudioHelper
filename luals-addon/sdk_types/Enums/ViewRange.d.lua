---@meta
---@diagnostic disable: missing-fields

---@class ViewRange : EnumValue<ViewRange>
---@field Value ViewRange
Enum.ViewRange = {
    ---@type ViewRange
    None = {}, -- Value = 0; 无
    ---@type ViewRange
    Near = {}, -- Value = 2; 近
    ---@type ViewRange
    Medium = {}, -- Value = 4; 中
    ---@type ViewRange
    Far = {}, -- Value = 6; 中
    ---@type ViewRange
    Farther = {}, -- Value = 10; 远
    ---@type ViewRange
    Farthest = {}, -- Value = 16; 最远
    ---@type ViewRange
    Max = {}, -- Value = 17; max
}

