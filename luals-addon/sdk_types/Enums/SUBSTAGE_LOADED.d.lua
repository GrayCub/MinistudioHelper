---@meta
---@diagnostic disable: missing-fields

---@class SUBSTAGE_LOADED : EnumValue<SUBSTAGE_LOADED>
---@field Value SUBSTAGE_LOADED
Enum.SUBSTAGE_LOADED = {
    ---@type SUBSTAGE_LOADED
    READY = {}, -- Value = 0
    ---@type SUBSTAGE_LOADED
    REMOTE_READYNODECREATE = {}, -- Value = 1
    ---@type SUBSTAGE_LOADED
    HOST_LOADNODES = {}, -- Value = 2
    ---@type SUBSTAGE_LOADED
    REMOTE_ASSETCONFIG = {}, -- Value = 3
    ---@type SUBSTAGE_LOADED
    CLIENT_LOCALPLAYER = {}, -- Value = 4
    ---@type SUBSTAGE_LOADED
    REMOTE_SYNCFINISH = {}, -- Value = 5
    ---@type SUBSTAGE_LOADED
    REMOTE_ALLSCRIPTS = {}, -- Value = 6
}

