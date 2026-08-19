---@meta
---@diagnostic disable: missing-fields

---@class CameraType : EnumValue<CameraType>
---@field Value CameraType
Enum.CameraType = {
    ---@type CameraType
    Fixed = {}, -- Value = 0; 为静止状态
    ---@type CameraType
    Attach = {}, -- Value = 1; 以一固定的偏移随Camera移动，并在对象旋转时也旋转
    ---@type CameraType
    Watch = {}, -- Value = 2; 为静止状态，但会旋转以保持Camera在视野正中
    ---@type CameraType
    Track = {}, -- Value = 3; 随Camera移动，但不会自动旋转
    ---@type CameraType
    Follow = {}, -- Value = 4; 随Camera移动，并会旋转以保持对象在视野正中
    ---@type CameraType
    Custom = {}, -- Value = 5; 默认自定义
    ---@type CameraType
    Scriptable = {}, -- Value = 6; 没有默认的行为模式。用于开发人员编写自己自定的表现模式
}

