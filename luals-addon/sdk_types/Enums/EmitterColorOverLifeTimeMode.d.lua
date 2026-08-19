---@meta
---@diagnostic disable: missing-fields

---@class EmitterColorOverLifeTimeMode : EnumValue<EmitterColorOverLifeTimeMode>
---@field Value EmitterColorOverLifeTimeMode
Enum.EmitterColorOverLifeTimeMode = {
    ---@type EmitterColorOverLifeTimeMode
    Disable = {}, -- Value = 5; 无效
    ---@type EmitterColorOverLifeTimeMode
    Color = {}, -- Value = 0; 单一颜色
    ---@type EmitterColorOverLifeTimeMode
    Gradient = {}, -- Value = 1; 颜色梯度
    ---@type EmitterColorOverLifeTimeMode
    RandomBetweenTwoColors = {}, -- Value = 2; 两个颜色间随机
    ---@type EmitterColorOverLifeTimeMode
    RandomBetweenTwoGradients = {}, -- Value = 3; 两个颜色梯度间随机
    ---@type EmitterColorOverLifeTimeMode
    RandomColor = {}, -- Value = 4; 随机颜色
}

