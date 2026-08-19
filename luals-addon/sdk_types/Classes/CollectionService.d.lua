---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@class CollectionService : SandboxNode
local CollectionService = {}

--- 给节点增加标签
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@param node SandboxNode
---@param label string
function CollectionService:AddLabel(node, label) end

--- 移除节点标签
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@param node SandboxNode
---@param label string
function CollectionService:RemoveLabel(node, label) end

--- 获取该标签的所有节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@param label string
---@return SandboxNode
function CollectionService:GetLabeled(label) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@param node SandboxNode
---@return table
function CollectionService:GetTags(node) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@return table
function CollectionService:GetTags() end

--- 该节点是否有标签
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CollectionService.html
---@param node SandboxNode
---@param label string
---@return boolean
function CollectionService:HasLabel(node, label) end

return CollectionService
