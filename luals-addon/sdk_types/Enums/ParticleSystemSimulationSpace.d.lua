---@meta
---@diagnostic disable: missing-fields

---@class ParticleSystemSimulationSpace : EnumValue<ParticleSystemSimulationSpace>
---@field Value ParticleSystemSimulationSpace
Enum.ParticleSystemSimulationSpace = {
    ---@type ParticleSystemSimulationSpace
    Local = {}, -- Value = 0; 在本地空间中模拟粒子
    ---@type ParticleSystemSimulationSpace
    World = {}, -- Value = 1; 在世界空间中模拟粒子
    ---@type ParticleSystemSimulationSpace
    Custom = {}, -- Value = 2; 模拟相对于自定义变换组件的粒子
}

