---@meta

--- UI布局和约束类别的基类
---@class UIBase : SandboxNode
---@field RenderIndex number UI渲染层级索引（大值遮挡小值，同值时后节点遮挡前节点），默认值为0
local UIBase = {}

return UIBase
