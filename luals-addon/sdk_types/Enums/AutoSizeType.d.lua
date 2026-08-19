---@meta
---@diagnostic disable: missing-fields

---@class AutoSizeType : EnumValue<AutoSizeType>
---@field Value AutoSizeType
Enum.AutoSizeType = {
    ---@type AutoSizeType
    NONE = {}, -- Value = 0; 不自动调整 - 文本标签保持固定尺寸
    ---@type AutoSizeType
    BOTH = {}, -- Value = 1; 双向调整 - 根据文本内容同时调整宽度和高度
    ---@type AutoSizeType
    HEIGHT = {}, -- Value = 2; 高度调整 - 仅根据文本内容调整高度，宽度保持固定
    ---@type AutoSizeType
    SHRINK = {}, -- Value = 3; 收缩调整 - 根据文本内容收缩到合适尺寸
}

