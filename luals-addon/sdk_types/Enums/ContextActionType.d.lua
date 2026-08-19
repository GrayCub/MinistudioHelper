---@meta
---@diagnostic disable: missing-fields

---@class ContextActionType : EnumValue<ContextActionType>
---@field Value ContextActionType
Enum.ContextActionType = {
    ---@type ContextActionType
    UserInputType = {}, -- Value = 0; 用户输入。对应Enum.UserInputType
    ---@type ContextActionType
    KeyBoard = {}, -- Value = 1; 键盘输入，对应Enum.KeyCode
}

