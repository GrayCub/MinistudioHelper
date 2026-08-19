---@meta
---@diagnostic disable: missing-fields

---@class MSAALevelDesc : EnumValue<MSAALevelDesc>
---@field Value MSAALevelDesc
Enum.MSAALevelDesc = {
    ---@type MSAALevelDesc
    kMSAALevelNone = {}, -- Value = 0; 无MSAA层级
    ---@type MSAALevelDesc
    kMSAALevel2x = {}, -- Value = 1; 2x层级
    ---@type MSAALevelDesc
    kMSAALevel4x = {}, -- Value = 2; 4x层级
    ---@type MSAALevelDesc
    kMSAALevel8x = {}, -- Value = 4; 8x层级
}

