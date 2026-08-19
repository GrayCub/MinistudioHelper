---@meta
---@diagnostic disable: missing-fields

---@class UVWrapMode : EnumValue<UVWrapMode>
---@field Value UVWrapMode
Enum.UVWrapMode = {
    ---@type UVWrapMode
    CLAMP = {}, -- Value = 0; UV 都夹取（不平铺）
    ---@type UVWrapMode
    REPEAT = {}, -- Value = 1; UV 都循环重复（双向平铺）
    ---@type UVWrapMode
    REPEAT_U = {}, -- Value = 2; 仅 U 循环重复（水平平铺）
    ---@type UVWrapMode
    REPEAT_V = {}, -- Value = 3; 仅 V 循环重复（垂直平铺）
}

