---@meta
---@diagnostic disable: missing-fields

---@class ContextActionPriority : EnumValue<ContextActionPriority>
---@field Value ContextActionPriority
Enum.ContextActionPriority = {
    ---@type ContextActionPriority
    Low = {}, -- Value = 1000; 低优先级
    ---@type ContextActionPriority
    Medium = {}, -- Value = 2000; 中等优先级
    ---@type ContextActionPriority
    Default = {}, -- Value = 2000; 默认优先级
    ---@type ContextActionPriority
    High = {}, -- Value = 3000; 高优先级
}

