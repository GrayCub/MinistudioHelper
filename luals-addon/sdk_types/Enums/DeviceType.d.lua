---@meta
---@diagnostic disable: missing-fields

---@class DeviceType : EnumValue<DeviceType>
---@field Value DeviceType
Enum.DeviceType = {
    ---@type DeviceType
    UNKNOWN = {}, -- Value = 0; 未知
    ---@type DeviceType
    ANDROID = {}, -- Value = 1; 安卓
    ---@type DeviceType
    IOS = {}, -- Value = 3; iOS
    ---@type DeviceType
    WIN = {}, -- Value = 4; Windows
}

