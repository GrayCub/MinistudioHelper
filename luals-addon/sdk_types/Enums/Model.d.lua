---@meta
---@diagnostic disable: missing-fields

---@class Model : EnumValue<Model>
---@field Value Model
Enum.Model = {
    ---@type Model
    Plane = {}, -- Value = 1; 普通的3D面片
    ---@type Model
    Billboard = {}, -- Value = 2; 公告板，一直朝向摄像机，进大远小（3D渲染方式）
    ---@type Model
    AlwaysOnTop = {}, -- Value = 3; 公告板，一直朝向摄像机，一直保持大小（2D渲染方式）srptite3D目前还没支持2D渲染方式
}

