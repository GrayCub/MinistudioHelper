---@meta
---@diagnostic disable: missing-fields

---@class DepthFunc : EnumValue<DepthFunc>
---@field Value DepthFunc
Enum.DepthFunc = {
    ---@type DepthFunc
    NearEqual = {}, -- Value = 0; 深度小于等于
    ---@type DepthFunc
    Near = {}, -- Value = 1; 深度小于
    ---@type DepthFunc
    FartherEqual = {}, -- Value = 2; 深度大于等于
    ---@type DepthFunc
    Farther = {}, -- Value = 3; 深度大于
    ---@type DepthFunc
    Equal = {}, -- Value = 4; 深度等于
    ---@type DepthFunc
    NotEqual = {}, -- Value = 5; 深度不等于
    ---@type DepthFunc
    Never = {}, -- Value = 6; 深度一直不等于
    ---@type DepthFunc
    Always = {}, -- Value = 7; 深度一直等于
}

