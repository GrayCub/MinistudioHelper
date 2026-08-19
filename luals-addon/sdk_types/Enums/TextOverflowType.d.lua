---@meta
---@diagnostic disable: missing-fields

---@class TextOverflowType : EnumValue<TextOverflowType>
---@field Value TextOverflowType
Enum.TextOverflowType = {
    ---@type TextOverflowType
    NONE = {}, -- Value = 0; 不限制
    ---@type TextOverflowType
    CLAMP = {}, -- Value = 1; 截断
    ---@type TextOverflowType
    SHRINK = {}, -- Value = 2; 缩小
    ---@type TextOverflowType
    RESIZE = {}, -- Value = 3; 调整尺寸
}

