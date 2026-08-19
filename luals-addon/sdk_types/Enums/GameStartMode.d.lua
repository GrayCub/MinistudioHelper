---@meta
---@diagnostic disable: missing-fields

---@class GameStartMode : EnumValue<GameStartMode>
---@field Value GameStartMode
Enum.GameStartMode = {
    ---@type GameStartMode
    OWNER_OPEN = {}, -- Value = 0; 房主开启
    ---@type GameStartMode
    ENOUGH_AUTO_OPEN = {}, -- Value = 1; 达到人数自动开启
    ---@type GameStartMode
    NO_LIMIT = {}, -- Value = 2; 不限条件自动开启
}

