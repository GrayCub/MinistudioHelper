---@meta
---@diagnostic disable: missing-fields

---@class ParticleSystemCullingMode : EnumValue<ParticleSystemCullingMode>
---@field Value ParticleSystemCullingMode
Enum.ParticleSystemCullingMode = {
    ---@type ParticleSystemCullingMode
    Automatic = {}, -- Value = 0; 自动裁剪
    ---@type ParticleSystemCullingMode
    PauseAndCatchup = {}, -- Value = 1; 若粒子发射器包围盒不在摄像机的可见范围内，粒子暂停模拟。若恢复可见，则粒子会以当前的时间开始模拟
    ---@type ParticleSystemCullingMode
    Pause = {}, -- Value = 2; 若粒子发射器包围盒不在摄像机的可见范围内，粒子暂停模拟。若恢复可见，则粒子会接着上次暂停的时间继续模拟
    ---@type ParticleSystemCullingMode
    AlwaysSimulate = {}, -- Value = 3; 无论粒子发射器包围盒是否在摄像机的可见范围内，粒子都会一直模拟，只是不在摄像机的可见范围内时不进行渲染
}

