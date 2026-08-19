---@meta
---@diagnostic disable: missing-fields

---@class DevTouchMovementMode : EnumValue<DevTouchMovementMode>
---@field Value DevTouchMovementMode
Enum.DevTouchMovementMode = {
    ---@type DevTouchMovementMode
    UserChoice = {}, -- Value = 0; 用户选择
    ---@type DevTouchMovementMode
    Thumbstick = {}, -- Value = 1; 拇指操纵杆
    ---@type DevTouchMovementMode
    DPad = {}, -- Value = 2; DPad板
    ---@type DevTouchMovementMode
    Thumbpad = {}, -- Value = 3; 拇指板
    ---@type DevTouchMovementMode
    ClickToMove = {}, -- Value = 4; 单击移动
    ---@type DevTouchMovementMode
    Scriptable = {}, -- Value = 5; 脚本
    ---@type DevTouchMovementMode
    DynamicThumbstick = {}, -- Value = 6; 动态拇指操纵杆
}

