---@meta

--- UI布局和约束类别的基类
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIBase.html
---@class UIBase : SandboxNode
---@field RenderIndex number @UI渲染层级索引（大值遮挡小值，同值时后节点遮挡前节点），默认值为0
local UIBase = {}

return UIBase
