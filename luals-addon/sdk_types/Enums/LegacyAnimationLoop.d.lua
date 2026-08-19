---@meta
---@diagnostic disable: missing-fields

---@class LegacyAnimationLoop : EnumValue<LegacyAnimationLoop>
---@field Value LegacyAnimationLoop
Enum.LegacyAnimationLoop = {
    ---@type LegacyAnimationLoop
    LOOP_MODE = {}, -- Value = 0; 循环播放模式，动画播放结束后自动重新开始播放
    ---@type LegacyAnimationLoop
    ONCE_MODE = {}, -- Value = 1; 单次播放模式，动画播放一次后自动停止
    ---@type LegacyAnimationLoop
    ONCE_STOP_MODE = {}, -- Value = 2; 单次播放且不重置模式，动画播放一次后停止并保持在最后一帧，不重置到初始状态
}

