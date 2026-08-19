---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/UIMiniCoin.html
---@class UIMiniCoin : SandboxNode
---@field IconSize Vector2 @UI节点像素和尺寸大小
---@field TextLabelSize Vector2 @UI节点像素和尺寸大小
---@field Scale Vector2 @UI节点缩放倍数
---@field Rotation number @UI节点旋转度数
---@field Position Vector2 @UI节点坐标
---@field Distance Vector2 @UI节点坐标
---@field Pivot Vector2 @UI节点锚点（0~1），（0.5,0.5）为中点
---@field LineColor ColorQuad @UI节点边线颜色设置
---@field FillColor ColorQuad @UI节点填充颜色设置
---@field LineSize number @UI节点边线像素和尺寸大小
---@field LayoutHRelation LayoutHRelation @水平关联方式，包括左关联、中线关联和右关联。设置后，当父节点（若父节点为UIRoot则为屏幕）变化时，UI与关联位置的相对距离将保持不变
---@field LayoutVRelation LayoutVRelation @垂直关联方式，包括上关联、中线关联和下关联。设置后，当父节点（若父节点为UIRoot则为屏幕）变化时，UI与关联位置的相对距离将保持不变
---@field OutlineEnable boolean @是否显示描边
---@field OutlineColor ColorQuad @描边颜色
---@field OutlineSize number @描边宽度
---@field FontSize number @字体大小
---@field TitleColor ColorQuad @字体颜色
local UIMiniCoin = {}

return UIMiniCoin
