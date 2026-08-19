---@meta
---@diagnostic disable: missing-fields

---@class EasingDirection : EnumValue<EasingDirection>
---@field Value EasingDirection
Enum.EasingDirection = {
    ---@type EasingDirection
    In = {}, -- Value = 0; 向前应用，动画开始时缓慢，结束时快速
    ---@type EasingDirection
    Out = {}, -- Value = 1; 向后应用，动画开始时快速，结束时缓慢
    ---@type EasingDirection
    In_Out = {}, -- Value = 2; 前后结合，动画前半段缓慢加速，后半段缓慢减速
}

