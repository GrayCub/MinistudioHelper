---@meta
---@diagnostic disable: missing-fields

---@class ScaleType : EnumValue<ScaleType>
---@field Value ScaleType
Enum.ScaleType = {
    ---@type ScaleType
    Stretch = {}, -- Value = 0; 拉伸 - 图片会被拉伸以填充整个节点
    ---@type ScaleType
    Slice = {}, -- Value = 1; 九宫格 - 使用九宫格方式缩放，保持边角不变形
}

