---@meta
---@diagnostic disable: missing-fields

---@class GamePlayMode : EnumValue<GamePlayMode>
---@field Value GamePlayMode
Enum.GamePlayMode = {
    ---@type GamePlayMode
    MINIGAME = {}, -- Value = 0; 小游戏(hakoniwa箱庭)
    ---@type GamePlayMode
    SCROLLMAP = {}, -- Value = 1; 卷轴型地图
    ---@type GamePlayMode
    SURVIVE = {}, -- Value = 2; 大世界冒险
    ---@type GamePlayMode
    LOCKSTEP = {}, -- Value = 3; 帧同步
}

