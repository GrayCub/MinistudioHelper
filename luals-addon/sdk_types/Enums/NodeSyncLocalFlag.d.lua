---@meta
---@diagnostic disable: missing-fields

---@class NodeSyncLocalFlag : EnumValue<NodeSyncLocalFlag>
---@field Value NodeSyncLocalFlag
Enum.NodeSyncLocalFlag = {
    ---@type NodeSyncLocalFlag
    ENABLE = {}, -- Value = 0; 可使用
    ---@type NodeSyncLocalFlag
    DISABLE = {}, -- Value = 1; 禁用
    ---@type NodeSyncLocalFlag
    NO_SEND = {}, -- Value = 2; 不发送
    ---@type NodeSyncLocalFlag
    NO_RECEIVE = {}, -- Value = 3; 不接收
}

