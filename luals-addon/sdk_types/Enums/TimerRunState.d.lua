---@meta
---@diagnostic disable: missing-fields

---@class TimerRunState : EnumValue<TimerRunState>
---@field Value TimerRunState
Enum.TimerRunState = {
    ---@type TimerRunState
    IDLE = {}, -- Value = 0; 空闲状态。未开始运行，或者运行结束
    ---@type TimerRunState
    RUNNING = {}, -- Value = 1; 运行状态
    ---@type TimerRunState
    PAUSE = {}, -- Value = 2; 暂停状态
}

