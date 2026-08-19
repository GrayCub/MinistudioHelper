---@meta
---@diagnostic disable: missing-fields

---@class EmitterShape : EnumValue<EmitterShape>
---@field Value EmitterShape
Enum.EmitterShape = {
    ---@type EmitterShape
    Sphere = {}, -- Value = 0; 球
    ---@type EmitterShape
    Hemisphere = {}, -- Value = 2; 半球
    ---@type EmitterShape
    Cone = {}, -- Value = 4; 圆锥
    ---@type EmitterShape
    Box = {}, -- Value = 5; 盒
    ---@type EmitterShape
    Mesh = {}, -- Value = 6; 网格
    ---@type EmitterShape
    ConeVolume = {}, -- Value = 8; 锥体体积
    ---@type EmitterShape
    Circle = {}, -- Value = 10; 圆圈
    ---@type EmitterShape
    SingleSidedEdge = {}, -- Value = 12; 单面边缘
    ---@type EmitterShape
    MeshRenderer = {}, -- Value = 13; 单面边缘
    ---@type EmitterShape
    SkinnedMeshRenderer = {}, -- Value = 14; 单面边缘
    ---@type EmitterShape
    BoxShell = {}, -- Value = 15; 长方体边缘
    ---@type EmitterShape
    BoxEdge = {}, -- Value = 16; 长方体边缘
    ---@type EmitterShape
    Donut = {}, -- Value = 17; 甜甜圈
    ---@type EmitterShape
    Rectangle = {}, -- Value = 18; 甜甜圈
    ---@type EmitterShape
    Sprite = {}, -- Value = 19; 甜甜圈
    ---@type EmitterShape
    SpriteRenderer = {}, -- Value = 20; 甜甜圈
}

