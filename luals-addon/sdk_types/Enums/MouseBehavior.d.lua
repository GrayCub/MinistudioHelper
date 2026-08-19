---@meta
---@diagnostic disable: missing-fields

---@class MouseBehavior : EnumValue<MouseBehavior>
---@field Value MouseBehavior
Enum.MouseBehavior = {
    ---@type MouseBehavior
    Default = {}, -- Value = 0; 自由移动
    ---@type MouseBehavior
    LockCenter = {}, -- Value = 1; 锁定在中间
    ---@type MouseBehavior
    LockCurrentPosition = {}, -- Value = 2; 锁定当前位置
}

