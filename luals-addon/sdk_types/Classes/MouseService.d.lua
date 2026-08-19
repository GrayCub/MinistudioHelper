---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/MouseService.html
---@class MouseService : SandboxNode
local MouseService = {}

--- 是否视觉范围内
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/MouseService.html
---@return boolean
function MouseService:IsSight() end

--- 设置鼠标模式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/MouseService.html
---@param nModeType number
function MouseService:SetMode(nModeType) end

--- 获取光标拾取
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/MouseService.html
---@param mouseX number
---@param mouseY number
---@param range number
---@return table
function MouseService:GetCursorPick(mouseX, mouseY, range) end

return MouseService
