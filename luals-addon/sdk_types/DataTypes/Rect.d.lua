---@meta

---@class Rect
---@field Left number 矩形左边X坐标（只读）
---@field Right number 矩形右边X坐标（只读）
---@field Top number 矩形顶部Y坐标（只读）
---@field Bottom number 矩形底部Y坐标（只读）
Rect = {}

---@param left number
---@param top number
---@param right number
---@param bottom number
---@return Rect
function Rect.New(left, top, right, bottom) end

