---@meta

---@class CollectionService : SandboxNode
local CollectionService = {}

--- 给节点增加标签
---@param node SandboxNode
---@param label string
function CollectionService:AddLabel(node, label) end

--- 移除节点标签
---@param node SandboxNode
---@param label string
function CollectionService:RemoveLabel(node, label) end

--- 获取该标签的所有节点
---@param label string
---@return SandboxNode
function CollectionService:GetLabeled(label) end

---@param node SandboxNode
---@return table
function CollectionService:GetTags(node) end

---@return table
function CollectionService:GetTags() end

--- 该节点是否有标签
---@param node SandboxNode
---@param label string
---@return boolean
function CollectionService:HasLabel(node, label) end

return CollectionService
