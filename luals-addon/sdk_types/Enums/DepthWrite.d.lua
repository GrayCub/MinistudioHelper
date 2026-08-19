---@meta
---@diagnostic disable: missing-fields

---@class DepthWrite : EnumValue<DepthWrite>
---@field Value DepthWrite
Enum.DepthWrite = {
    ---@type DepthWrite
    kDepthWriteNone = {}, -- Value = 0; 不更改/保持默认
    ---@type DepthWrite
    kDepthWriteEnable = {}, -- Value = 1; 启用深度写入
    ---@type DepthWrite
    kDepthWriteDisable = {}, -- Value = 2; 禁用深度写入
}

