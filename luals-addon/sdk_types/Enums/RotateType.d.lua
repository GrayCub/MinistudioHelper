---@meta
---@diagnostic disable: missing-fields

---@class RotateType : EnumValue<RotateType>
---@field Value RotateType
Enum.RotateType = {
    ---@type RotateType
    ROTATE_0 = {}, -- Value = 0; 逆时针旋转0°
    ---@type RotateType
    ROTATE_90 = {}, -- Value = 1; 逆时针旋转90°
    ---@type RotateType
    ROTATE_180 = {}, -- Value = 2; 逆时针旋转180°
    ---@type RotateType
    ROTATE_270 = {}, -- Value = 3; 逆时针旋转270°
    ---@type RotateType
    MIRROR_0 = {}, -- Value = 4; 取0°镜像
    ---@type RotateType
    MIRROR_180 = {}, -- Value = 5; 取180°镜像
    ---@type RotateType
    MIRROR_90 = {}, -- Value = 6; 取90°镜像
    ---@type RotateType
    MIRROR_270 = {}, -- Value = 7; 取270°镜像
}

