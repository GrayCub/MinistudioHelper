---@meta
---@diagnostic disable: missing-fields

---@class ListenerType : EnumValue<ListenerType>
---@field Value ListenerType
Enum.ListenerType = {
    ---@type ListenerType
    Camrea = {}, -- Value = 0; 以相机位置作为监听位置
    ---@type ListenerType
    TransObject = {}, -- Value = 1; 以玩家指定的Transform作为监听位置
    ---@type ListenerType
    Player = {}, -- Value = 2; 以玩家模型作为监听位置
}

