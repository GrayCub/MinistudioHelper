---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/PhysXService.html
---@class PhysXService : SandboxNode
local PhysXService = {}

--- 设置碰撞信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/PhysXService.html
---@param groupID0 number
---@param groupID1 number
---@param b boolean
---@return boolean
function PhysXService:SetCollideInfo(groupID0, groupID1, b) end

--- 是否产生碰撞
--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/PhysXService.html
---@param groupID0 number
---@param groupID1 number
---@return boolean
function PhysXService:GetCollideInfo(groupID0, groupID1) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/PhysXService.html
---@return boolean
function PhysXService:SetCollideInfo2D() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Bind/PhysXService.html
---@return boolean
function PhysXService:GetCollideInfo2D() end

return PhysXService
