---@meta
---@diagnostic disable: missing-fields

---@class CameraType2D : EnumValue<CameraType2D>
---@field Value CameraType2D
Enum.CameraType2D = {
    ---@type CameraType2D
    Custom = {}, -- Value = 0; 默认自定义
    ---@type CameraType2D
    Scriptable = {}, -- Value = 1; 没有默认的行为模式。用于开发人员编写自己自定的表现模式
}

