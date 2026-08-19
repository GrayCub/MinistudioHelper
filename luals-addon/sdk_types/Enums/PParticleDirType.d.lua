---@meta
---@diagnostic disable: missing-fields

---@class PParticleDirType : EnumValue<PParticleDirType>
---@field Value PParticleDirType
Enum.PParticleDirType = {
    ---@type PParticleDirType
    PR_FACE_CAMERA = {}, -- Value = 0; 面向相机
    ---@type PParticleDirType
    PR_ROT_ABOUT_UP = {}, -- Value = 1; 绕y轴旋转
    ---@type PParticleDirType
    PR_FACE_UP = {}, -- Value = 2; 面向y轴
    ---@type PParticleDirType
    PR_ROT_ABOUT_DIR = {}, -- Value = 3; 绕运动方向旋转
    ---@type PParticleDirType
    PR_FACE_DIR = {}, -- Value = 4; 面向运动方向
    ---@type PParticleDirType
    PR_FACE_UP_NOROT = {}, -- Value = 5; 面向y轴不旋转
}

