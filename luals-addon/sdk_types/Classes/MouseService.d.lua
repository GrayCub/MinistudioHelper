---@meta

---@class MouseService : SandboxNode
local MouseService = {}

--- 是否视觉范围内
---@return boolean
function MouseService:IsSight() end

--- 设置鼠标模式
---@param nModeType number
function MouseService:SetMode(nModeType) end

--- 获取光标拾取
---@param mouseX number
---@param mouseY number
---@param range number
---@return table
function MouseService:GetCursorPick(mouseX, mouseY, range) end

return MouseService
