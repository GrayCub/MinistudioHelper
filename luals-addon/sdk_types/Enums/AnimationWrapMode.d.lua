---@meta
---@diagnostic disable: missing-fields

---@class AnimationWrapMode : EnumValue<AnimationWrapMode>
---@field Value AnimationWrapMode
Enum.AnimationWrapMode = {
    ---@type AnimationWrapMode
    Default = {}, -- Value = 0; 默认播放模式，动画播放到最后一帧时停止，播放完成后允许队列中的其他动画播放
    ---@type AnimationWrapMode
    Clamp = {}, -- Value = 1; 约束模式，动画播放到最后一帧时停止并保持在最后一帧，播放完成后允许队列中的其他动画播放
    ---@type AnimationWrapMode
    Repeat = {}, -- Value = 2; 重复循环模式，动画播放到最后一帧后自动从头开始循环播放
    ---@type AnimationWrapMode
    PingPong = {}, -- Value = 4; 乒乓循环模式，动画正向播放到最后一帧后反向播放，来回循环
    ---@type AnimationWrapMode
    ClampForever = {}, -- Value = 8; 永久约束模式，动画播放到最后一帧后永久保持在该帧，播放完成后阻止队列中的其他动画播放
}

