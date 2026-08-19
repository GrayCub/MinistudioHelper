---@meta
---@diagnostic disable: missing-fields

---@class Mode : EnumValue<Mode>
---@field Value Mode
Enum.Mode = {
    ---@type Mode
    Plane = {}, -- Value = 0; 普通的3D面片
    ---@type Mode
    Billboard = {}, -- Value = 1; 公告板 ，一直朝向摄像机，进大远小 （3D渲染方式）
    ---@type Mode
    AlwaysOnTop = {}, -- Value = 2; 公告板，一直朝向摄像机，保持能够覆盖其他3d节点
}

