---@meta
---@diagnostic disable: missing-fields

---@class ParticleSystemRingBufferMode : EnumValue<ParticleSystemRingBufferMode>
---@field Value ParticleSystemRingBufferMode
Enum.ParticleSystemRingBufferMode = {
    ---@type ParticleSystemRingBufferMode
    Disabled = {}, -- Value = 0; 当粒子的存活时间超过它们的生命周期时，将移除粒子
    ---@type ParticleSystemRingBufferMode
    PauseUntilReplaced = {}, -- Value = 1; 创建新粒子会超过 Max Particles 属性时将移除粒子
    ---@type ParticleSystemRingBufferMode
    LoopUntilReplaced = {}, -- Value = 2; 创建新粒子会超过 Max Particles 属性时将移除粒子。在移除粒子之前，粒子保持存活，直到它们的存活时间超过它们的生命周期
}

