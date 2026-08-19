---@meta
---@diagnostic disable: missing-fields

---@class LayoutVRelation : EnumValue<LayoutVRelation>
---@field Value LayoutVRelation
Enum.LayoutVRelation = {
    ---@type LayoutVRelation
    Top = {}, -- Value = 0; 上关联 - 与父节点上边缘对齐
    ---@type LayoutVRelation
    Middle = {}, -- Value = 1; 中线关联 - 与父节点垂直中心对齐
    ---@type LayoutVRelation
    Bottom = {}, -- Value = 2; 下关联 - 与父节点下边缘对齐
}

