---@meta
---@diagnostic disable: missing-fields

---@class UserInputState : EnumValue<UserInputState>
---@field Value UserInputState
Enum.UserInputState = {
    ---@type UserInputState
    InputBegin = {}, -- Value = 0
    ---@type UserInputState
    InputChange = {}, -- Value = 1
    ---@type UserInputState
    InputEnd = {}, -- Value = 2
    ---@type UserInputState
    InputCancel = {}, -- Value = 3
}

