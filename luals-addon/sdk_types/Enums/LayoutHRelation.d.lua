---@meta
---@diagnostic disable: missing-fields

---@class LayoutHRelation : EnumValue<LayoutHRelation>
---@field Value LayoutHRelation
Enum.LayoutHRelation = {
    ---@type LayoutHRelation
    Left = {}, -- Value = 0; 左关联 - 与父节点左边缘对齐
    ---@type LayoutHRelation
    Middle = {}, -- Value = 1; 中线关联 - 与父节点水平中心对齐
    ---@type LayoutHRelation
    Right = {}, -- Value = 2; 右关联 - 与父节点右边缘对齐
}

