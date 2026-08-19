---@meta
---@diagnostic disable: missing-fields

---@class Action : EnumValue<Action>
---@field Value Action
Enum.Action = {
    ---@type Action
    KEYBOARD = {}, -- Value = 0; 键盘输入
    ---@type Action
    MOUSE = {}, -- Value = 1; 鼠标输入
    ---@type Action
    GAMEPAD = {}, -- Value = 2; 游戏手柄输入
    ---@type Action
    CAMERA_INPUT = {}, -- Value = 3; 相机输入
}

