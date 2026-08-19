---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/DefaultEffect.html
---@class DefaultEffect : SandboxNode
---@field EffectType Effect @特效效果类型,有烟雾、爆炸、光效、粒子、火焰、环境和提示
---@field EffectIndex number @特效效果序列
---@field Scale number @特效尺寸, 整体缩放比例
---@field Visible boolean @是否显示视觉效果
---@field MaxTime number @特效持续时长
---@field VisibleDistance number @特效最大可见距离
---@field AssetID string @资源ID
---@field CullLayer CullLayer @消隐层
local DefaultEffect = {}

return DefaultEffect
