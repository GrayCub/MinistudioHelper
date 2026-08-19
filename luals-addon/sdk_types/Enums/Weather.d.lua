---@meta
---@diagnostic disable: missing-fields

---@class Weather : EnumValue<Weather>
---@field Value Weather
Enum.Weather = {
    ---@type Weather
    Sunny = {}, -- Value = 0; 晴天
    ---@type Weather
    Rain = {}, -- Value = 1; 雨天
    ---@type Weather
    Thunder = {}, -- Value = 2; 雷雨天
    ---@type Weather
    Auto = {}, -- Value = 3; 自动天气（随机选择天气）
}

