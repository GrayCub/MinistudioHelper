---@meta
---@diagnostic disable: missing-fields

---@class StandardSkeleton : EnumValue<StandardSkeleton>
---@field Value StandardSkeleton
Enum.StandardSkeleton = {
    ---@type StandardSkeleton
    None = {}, -- Value = 0; 无骨骼
    ---@type StandardSkeleton
    Legacy = {}, -- Value = 1; 官方骨骼，使用LegacyAnimation系统播放动画，如果ModelId为空会自动加载player01默认模型
    ---@type StandardSkeleton
    Offical_Player12 = {}, -- Value = 2; 标准骨骼，使用Animator系统播放动画，如果ModelId为空会自动加载player12默认模型
}

