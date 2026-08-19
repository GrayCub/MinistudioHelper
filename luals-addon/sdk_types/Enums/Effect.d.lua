---@meta
---@diagnostic disable: missing-fields

---@class Effect : EnumValue<Effect>
---@field Value Effect
Enum.Effect = {
    ---@type Effect
    Smoke = {}, -- Value = 1; 烟雾
    ---@type Effect
    Exposion = {}, -- Value = 2; 爆炸
    ---@type Effect
    Light = {}, -- Value = 3; 光效
    ---@type Effect
    Particle = {}, -- Value = 4; 粒子
    ---@type Effect
    Fire = {}, -- Value = 5; 火焰
    ---@type Effect
    Enviroment = {}, -- Value = 6; 环境
    ---@type Effect
    Hint = {}, -- Value = 7; 提示
}

