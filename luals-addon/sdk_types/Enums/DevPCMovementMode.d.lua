---@meta
---@diagnostic disable: missing-fields

---@class DevPCMovementMode : EnumValue<DevPCMovementMode>
---@field Value DevPCMovementMode
Enum.DevPCMovementMode = {
    ---@type DevPCMovementMode
    UserChoice = {}, -- Value = 0; 用户选择
    ---@type DevPCMovementMode
    KeyboardMouse = {}, -- Value = 1; 键盘鼠标
    ---@type DevPCMovementMode
    ClickToMove = {}, -- Value = 2; 单击移动
    ---@type DevPCMovementMode
    Scriptable = {}, -- Value = 3; 脚本
}

