---@meta
---@diagnostic disable: missing-fields

---@class TimelineTrackType : EnumValue<TimelineTrackType>
---@field Value TimelineTrackType
Enum.TimelineTrackType = {
    ---@type TimelineTrackType
    Invalid = {}, -- Value = 0; 无效
    ---@type TimelineTrackType
    Visible = {}, -- Value = 1; 可见轨道
    ---@type TimelineTrackType
    SkeletonAnimation = {}, -- Value = 2; 骨骼动画
    ---@type TimelineTrackType
    NodeAnimation = {}, -- Value = 3; 节点属性动画
    ---@type TimelineTrackType
    Audio = {}, -- Value = 5; 音频
    ---@type TimelineTrackType
    Custom = {}, -- Value = 6; 自定义
}

