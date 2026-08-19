---@meta
---@diagnostic disable: missing-fields

---@class AttributeType : EnumValue<AttributeType>
---@field Value AttributeType
Enum.AttributeType = {
    ---@type AttributeType
    IDLE = {}, -- Value = 0; 闲置
    ---@type AttributeType
    Number = {}, -- Value = 1; 数值
    ---@type AttributeType
    Bool = {}, -- Value = 2; 布尔
    ---@type AttributeType
    String = {}, -- Value = 3; 字符串
    ---@type AttributeType
    Vector3 = {}, -- Value = 4; Vector3
    ---@type AttributeType
    Vector2 = {}, -- Value = 5; Vector2
    ---@type AttributeType
    Vector4 = {}, -- Value = 6; Vector4
    ---@type AttributeType
    Color = {}, -- Value = 7; Color
    ---@type AttributeType
    Rect = {}, -- Value = 8; Rect
    ---@type AttributeType
    NumberSequence = {}, -- Value = 9; 数字序列
    ---@type AttributeType
    ColorSequence = {}, -- Value = 10; 颜色序列
    ---@type AttributeType
    NodeLinker = {}, -- Value = 11; 节点链接
}

