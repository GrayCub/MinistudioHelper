---@meta
---@diagnostic disable: missing-fields

---@class GraphicsPlatform : EnumValue<GraphicsPlatform>
---@field Value GraphicsPlatform
Enum.GraphicsPlatform = {
    ---@type GraphicsPlatform
    Mobile = {}, -- Value = 0; 移动平台（手机和平板设备）
    ---@type GraphicsPlatform
    PC = {}, -- Value = 1; PC平台
    ---@type GraphicsPlatform
    Count = {}, -- Value = 2; 不是有效的枚举值，不能用于实际的业务逻辑
}

