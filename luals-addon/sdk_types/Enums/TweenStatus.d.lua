---@meta
---@diagnostic disable: missing-fields

---@class TweenStatus : EnumValue<TweenStatus>
---@field Value TweenStatus
Enum.TweenStatus = {
    ---@type TweenStatus
    Begin = {}, -- Value = 0; 初始状态，UITween对象刚创建，尚未开始播放
    ---@type TweenStatus
    Delayed = {}, -- Value = 1; 延迟状态，UITween已开始播放但处于延迟等待阶段，等待TweenInfo中设置的延迟时间结束
    ---@type TweenStatus
    Playing = {}, -- Value = 2; 播放状态，UITween正在播放，每帧更新目标节点的属性值
    ---@type TweenStatus
    Paused = {}, -- Value = 3; 暂停状态，UITween在完成前被暂停，可以通过Resume方法恢复播放
    ---@type TweenStatus
    Canceled = {}, -- Value = 4; 取消状态，UITween在完成前被取消，动画停止且属性值不会更新到目标值
    ---@type TweenStatus
    Completed = {}, -- Value = 5; 完成状态，UITween顺利完成了动画播放，属性值已更新到目标值，会触发Completed事件
}

