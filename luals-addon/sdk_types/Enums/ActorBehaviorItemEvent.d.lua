---@meta
---@diagnostic disable: missing-fields

---@class ActorBehaviorItemEvent : EnumValue<ActorBehaviorItemEvent>
---@field Value ActorBehaviorItemEvent
Enum.ActorBehaviorItemEvent = {
    ---@type ActorBehaviorItemEvent
    OnEnter = {}, -- Value = 0; 进入事件，当行为项被激活进入时触发，在播放动画之前调用
    ---@type ActorBehaviorItemEvent
    OnExit = {}, -- Value = 1; 退出事件，当行为项被清除退出时触发，在停止动画之前调用
    ---@type ActorBehaviorItemEvent
    OnEffect = {}, -- Value = 2; 生效事件，当行为项生效时触发，用于执行行为项的持续效果
}

