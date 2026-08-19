---@meta
---@diagnostic disable: missing-fields

---@class EmitterTrailsTextureMode : EnumValue<EmitterTrailsTextureMode>
---@field Value EmitterTrailsTextureMode
Enum.EmitterTrailsTextureMode = {
    ---@type EmitterTrailsTextureMode
    Stretch = {}, -- Value = 0; 伸展
    ---@type EmitterTrailsTextureMode
    Tile = {}, -- Value = 1; 平铺
    ---@type EmitterTrailsTextureMode
    DistributePerSegment = {}, -- Value = 2; 分发
    ---@type EmitterTrailsTextureMode
    RepeatPerSegment = {}, -- Value = 3; 重复
}

