---@meta
---@diagnostic disable: missing-fields

---@class AnimationPlayMode : EnumValue<AnimationPlayMode>
---@field Value AnimationPlayMode
Enum.AnimationPlayMode = {
    ---@type AnimationPlayMode
    StopSameLayer = {}, -- Value = 0; 停止同一层模式，播放新动画时停止同一动画层上的其他动画
    ---@type AnimationPlayMode
    AddToQueue_Deprecated = {}, -- Value = 1; 添加到队列模式（已废弃），将动画添加到播放队列中等待播放
    ---@type AnimationPlayMode
    Mixed_Deprecated = {}, -- Value = 2; 混合播放模式（已废弃），允许多个动画同时混合播放
    ---@type AnimationPlayMode
    StopAll = {}, -- Value = 4; 停止所有模式，播放新动画时停止所有动画层上的所有动画
}

