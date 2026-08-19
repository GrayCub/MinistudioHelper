---@meta
---@diagnostic disable: missing-fields

---@class OverflowType : EnumValue<OverflowType>
---@field Value OverflowType
Enum.OverflowType = {
    ---@type OverflowType
    VISIBLE = {}, -- Value = 0; 溢出部分正常显示（无拖动效果）
    ---@type OverflowType
    HIDDEN = {}, -- Value = 1; 溢出部分隐藏（无拖动效果）
    ---@type OverflowType
    HORIZONTAL = {}, -- Value = 2; 水平滚动，支持鼠标拖拽，滑轮方式水平拖动
    ---@type OverflowType
    VERTICAL = {}, -- Value = 3; 垂直滚动，支持鼠标拖拽，滑轮方式垂直拖动
    ---@type OverflowType
    BOTH = {}, -- Value = 4; 自由滚动，支持鼠标拖拽，滑轮方式任意方向拖动
}

