---@meta
---@diagnostic disable: missing-fields

---@class RollOffMode : EnumValue<RollOffMode>
---@field Value RollOffMode
Enum.RollOffMode = {
    ---@type RollOffMode
    Inverse = {}, -- Value = 0; 该声音将遵循逆衰减模型，其中mindistance=全音量，maxdistance=声音停止衰减，衰减根据全局衰减系数
    ---@type RollOffMode
    Linear = {}, -- Value = 1; 该声音将遵循线性衰减模型，其中mindistance=全音量，maxdistance=静音
    ---@type RollOffMode
    LinearSquare = {}, -- Value = 2; 该声音将遵循线性平方衰减模型，其中mindistance=全音量，maxdistance=静音
    ---@type RollOffMode
    InverseTapered = {}, -- Value = 3; 在距离接近mindistance时，该声音将遵循逆衰减模型，在距离接近maxdistance的情况下，该声音会遵循线性平方衰减模型
}

