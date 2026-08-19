---@meta
---@diagnostic disable: missing-fields

---@class FillOrigin : EnumValue<FillOrigin>
---@field Value FillOrigin
Enum.FillOrigin = {
    ---@type FillOrigin
    Top = {}, -- Value = 0; 水平模式下为从左边开始填充，垂直模式下为从上方开始填充
    ---@type FillOrigin
    Bottom = {}, -- Value = 1; 水平模式下为从右边开始填充，垂直模式下为从下方开始填充
}

