---@meta
---@diagnostic disable: missing-fields

---@class GAMESTAGE : EnumValue<GAMESTAGE>
---@field Value GAMESTAGE
Enum.GAMESTAGE = {
    ---@type GAMESTAGE
    IDLE = {}, -- Value = 0; 闲置状态
    ---@type GAMESTAGE
    INIT = {}, -- Value = 1; 初始化状态
    ---@type GAMESTAGE
    LOADED = {}, -- Value = 2; 加载完成状态
    ---@type GAMESTAGE
    READY = {}, -- Value = 3; 准备状态
    ---@type GAMESTAGE
    RUN = {}, -- Value = 4; 运行状态
    ---@type GAMESTAGE
    END = {}, -- Value = 5; 结束状态
}

