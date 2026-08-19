---@meta
---@diagnostic disable: missing-fields

---@class TimelineCustomEvent : EnumValue<TimelineCustomEvent>
---@field Value TimelineCustomEvent
Enum.TimelineCustomEvent = {
    ---@type TimelineCustomEvent
    TimelineStart = {}, -- Value = 0; timeline 开始播放
    ---@type TimelineCustomEvent
    TimelineEnd = {}, -- Value = 1; timeline 结束播放
    ---@type TimelineCustomEvent
    ClipStart = {}, -- Value = 2; 片段开始
    ---@type TimelineCustomEvent
    ClipEnd = {}, -- Value = 3; 片段结束
    ---@type TimelineCustomEvent
    ClipTick = {}, -- Value = 4; 片段 tick
    ---@type TimelineCustomEvent
    EditorUpdateTime = {}, -- Value = 5; Editor 修改 timeline 的时间
}

