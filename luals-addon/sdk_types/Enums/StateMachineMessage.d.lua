---@meta
---@diagnostic disable: missing-fields

---@class StateMachineMessage : EnumValue<StateMachineMessage>
---@field Value StateMachineMessage
Enum.StateMachineMessage = {
    ---@type StateMachineMessage
    kOnStateEnter = {}, -- Value = 1; 状态进入事件，当动画状态机切换到某个状态时触发
    ---@type StateMachineMessage
    kOnStateExit = {}, -- Value = 2; 状态退出事件，当动画状态机离开某个状态时触发
    ---@type StateMachineMessage
    kOnStateUpdate = {}, -- Value = 4; 状态更新事件，当动画状态正在播放时每帧触发
    ---@type StateMachineMessage
    kOnStateMove = {}, -- Value = 8; 状态移动事件，当动画状态在根运动（Root Motion）模式下发生移动时触发
    ---@type StateMachineMessage
    kOnStateIK = {}, -- Value = 16; 状态IK事件，当动画状态需要计算反向运动学（Inverse Kinematics）时触发
    ---@type StateMachineMessage
    kOnStateMachineEnter = {}, -- Value = 32; 状态机进入事件，当动画状态机被激活或进入时触发
    ---@type StateMachineMessage
    kOnStateMachineExit = {}, -- Value = 64; 状态机退出事件，当动画状态机被停用或退出时触发
}

