---@meta
---@diagnostic disable: missing-fields

---@class FillMethod : EnumValue<FillMethod>
---@field Value FillMethod
Enum.FillMethod = {
    ---@type FillMethod
    None = {}, -- Value = 0; 无填充 - 不启用填充属性，正常显示图片
    ---@type FillMethod
    Horizontal = {}, -- Value = 1; 水平填充 - 将水平填充图像
    ---@type FillMethod
    Vertical = {}, -- Value = 2; 垂直填充 - 将垂直填充图像
    ---@type FillMethod
    Radial360 = {}, -- Value = 3; 径向填充 - 将径向填充图像，径向中心在图片的上方中点
}

