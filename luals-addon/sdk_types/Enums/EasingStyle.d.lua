---@meta
---@diagnostic disable: missing-fields

---@class EasingStyle : EnumValue<EasingStyle>
---@field Value EasingStyle
Enum.EasingStyle = {
    ---@type EasingStyle
    Linear = {}, -- Value = 0; 线性缓动，以恒定速度移动，无加速或减速
    ---@type EasingStyle
    Sine = {}, -- Value = 1; 正弦缓动，运动速度由正弦波决定，产生平滑的加速和减速曲线
    ---@type EasingStyle
    Back = {}, -- Value = 2; 回弹缓动，动画会稍微超出目标位置然后回弹到最终位置，产生弹跳效果
    ---@type EasingStyle
    Quad = {}, -- Value = 3; 二次方缓动，基于二次方函数，提供中等强度的加速减速效果
    ---@type EasingStyle
    Quart = {}, -- Value = 4; 四次方缓动，基于四次方函数，提供较强的加速减速效果
    ---@type EasingStyle
    Quint = {}, -- Value = 5; 五次方缓动，基于五次方函数，提供很强的加速减速效果
    ---@type EasingStyle
    Bounce = {}, -- Value = 6; 弹跳缓动，动画在结束位置会产生弹跳效果，就像物体撞击地面后反弹
    ---@type EasingStyle
    Elastic = {}, -- Value = 7; 弹性缓动，动画会产生弹性振荡效果，就像橡皮筋拉伸后回弹
}

