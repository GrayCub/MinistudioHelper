---@meta

--- 实体建模节点，提供立方体、楔体、金字塔、圆柱、圆锥、球体、矩形与组合等基础几何体
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/GeoSolid.html
---@class GeoSolid : Model
---@field GeoSolidShape GeoSolidShape @几何体的基本形状。默认值为Cuboid（立方体）
---@field Hollow boolean @是否启用镂空效果。开启后会将几何体内部中空化，默认值为false
local GeoSolid = {}

return GeoSolid
