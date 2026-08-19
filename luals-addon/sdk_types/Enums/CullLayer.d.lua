---@meta
---@diagnostic disable: missing-fields

---@class CullLayer : EnumValue<CullLayer>
---@field Value CullLayer
Enum.CullLayer = {
    ---@type CullLayer
    DEFAULT = {}, -- Value = 0; 默认消隐层，使用默认的渲染和消隐策略
    ---@type CullLayer
    LAYER1 = {}, -- Value = 1; 第1层消隐层，可用于特定的渲染优化或效果实现
    ---@type CullLayer
    LAYER2 = {}, -- Value = 2; 第2层消隐层，可用于特定的渲染优化或效果实现
    ---@type CullLayer
    LAYER3 = {}, -- Value = 3; 第3层消隐层，可用于特定的渲染优化或效果实现
    ---@type CullLayer
    LAYER4 = {}, -- Value = 4; 第4层消隐层，可用于特定的渲染优化或效果实现
    ---@type CullLayer
    LAYER5 = {}, -- Value = 5; 第5层消隐层，可用于特定的渲染优化或效果实现
}

