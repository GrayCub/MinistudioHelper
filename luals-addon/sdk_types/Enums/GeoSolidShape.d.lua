---@meta
---@diagnostic disable: missing-fields

---@class GeoSolidShape : EnumValue<GeoSolidShape>
---@field Value GeoSolidShape
Enum.GeoSolidShape = {
    ---@type GeoSolidShape
    Cuboid = {}, -- Value = 0; 立方体
    ---@type GeoSolidShape
    Wedge = {}, -- Value = 1; 楔体/直三棱柱
    ---@type GeoSolidShape
    Pyramid = {}, -- Value = 2; 金字塔/直四棱锥
    ---@type GeoSolidShape
    Cylinder = {}, -- Value = 3; 圆柱
    ---@type GeoSolidShape
    Cone = {}, -- Value = 4; 圆锥
    ---@type GeoSolidShape
    Sphere = {}, -- Value = 5; 球体
    ---@type GeoSolidShape
    Composite = {}, -- Value = 6; 组合
    ---@type GeoSolidShape
    Rectangle = {}, -- Value = 7; 矩形面片
}

