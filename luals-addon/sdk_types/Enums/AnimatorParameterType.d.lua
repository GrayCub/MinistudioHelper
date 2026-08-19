---@meta
---@diagnostic disable: missing-fields

---@class AnimatorParameterType : EnumValue<AnimatorParameterType>
---@field Value AnimatorParameterType
Enum.AnimatorParameterType = {
    ---@type AnimatorParameterType
    Float = {}, -- Value = 0; 浮点数类型，用于存储小数值参数
    ---@type AnimatorParameterType
    Int = {}, -- Value = 1; 整数类型，用于存储整数值参数
    ---@type AnimatorParameterType
    Bool = {}, -- Value = 2; 布尔类型，用于存储真/假值参数
    ---@type AnimatorParameterType
    Trigger = {}, -- Value = 3; 触发器类型，用于触发一次性事件，触发后自动重置为false
}

