---@meta
---@diagnostic disable: missing-fields

---@class NodeSyncMode : EnumValue<NodeSyncMode>
---@field Value NodeSyncMode
Enum.NodeSyncMode = {
    ---@type NodeSyncMode
    NORMAL = {}, -- Value = 0; 普通的
    ---@type NodeSyncMode
    DISABLE = {}, -- Value = 1; 禁用
    ---@type NodeSyncMode
    ONLYHOST = {}, -- Value = 2; 唯一主机
    ---@type NodeSyncMode
    ONLYREMOTE = {}, -- Value = 3; 唯一远程
}

