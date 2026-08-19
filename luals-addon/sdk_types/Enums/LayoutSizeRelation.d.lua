---@meta
---@diagnostic disable: missing-fields

---@class LayoutSizeRelation : EnumValue<LayoutSizeRelation>
---@field Value LayoutSizeRelation
Enum.LayoutSizeRelation = {
    ---@type LayoutSizeRelation
    None = {}, -- Value = 0; 无关联
    ---@type LayoutSizeRelation
    Height = {}, -- Value = 1; 高关联
    ---@type LayoutSizeRelation
    Width = {}, -- Value = 2; 宽关联
    ---@type LayoutSizeRelation
    Both = {}, -- Value = 3; 宽高关联
}

