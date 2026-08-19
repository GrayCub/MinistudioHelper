---@meta
---@diagnostic disable: missing-fields

---@class BehaviorState : EnumValue<BehaviorState>
---@field Value BehaviorState
Enum.BehaviorState = {
    ---@type BehaviorState
    ZERO = {}, -- Value = 0; 无状态
    ---@type BehaviorState
    Jump = {}, -- Value = 1; 跳
    ---@type BehaviorState
    Jumping = {}, -- Value = 2; 跳跃中
    ---@type BehaviorState
    Stand = {}, -- Value = 3; 站立
    ---@type BehaviorState
    Walk = {}, -- Value = 4; 行走
    ---@type BehaviorState
    Fly = {}, -- Value = 5; 飞行
    ---@type BehaviorState
    Died = {}, -- Value = 6; 死亡
}

