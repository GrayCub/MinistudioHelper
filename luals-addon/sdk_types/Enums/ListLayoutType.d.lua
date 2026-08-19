---@meta
---@diagnostic disable: missing-fields

---@class ListLayoutType : EnumValue<ListLayoutType>
---@field Value ListLayoutType
Enum.ListLayoutType = {
    ---@type ListLayoutType
    SINGLE_COLUMN = {}, -- Value = 0; 单列，每行一个item，竖向排列
    ---@type ListLayoutType
    SINGLE_ROW = {}, -- Value = 1; 单行，每列一个item，横向排列
    ---@type ListLayoutType
    FLOW_HORIZONTAL = {}, -- Value = 2; 横向流动，item横向依次排列，到底视口右侧边缘或到达指定的列数，自动换行继续排列
    ---@type ListLayoutType
    FLOW_VERTICAL = {}, -- Value = 3; 竖向流动，item竖向依次排列，到底视口底部边缘或到达指定的行数，返回顶部开启新的一列继续排列
    ---@type ListLayoutType
    PAGINATION = {}, -- Value = 4; 分页，视口宽度x视口高度作为单页大小，横向排列各个页面。每页中，item横向依次排列
}

