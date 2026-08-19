---@meta
---@diagnostic disable: missing-fields

---@class LayerIndexDesc : EnumValue<LayerIndexDesc>
---@field Value LayerIndexDesc
Enum.LayerIndexDesc = {
    ---@type LayerIndexDesc
    Default = {}, -- Value = 0; 默认层级
    ---@type LayerIndexDesc
    TransparentFX = {}, -- Value = 1; 透明特效层级
    ---@type LayerIndexDesc
    IgnoreCollision = {}, -- Value = 2; 忽略碰撞层级
    ---@type LayerIndexDesc
    IgnoreRayCast = {}, -- Value = 2; 忽略射线层级
    ---@type LayerIndexDesc
    Water = {}, -- Value = 4; 水面层级
    ---@type LayerIndexDesc
    UI = {}, -- Value = 5; UI层级
    ---@type LayerIndexDesc
    Custom_1 = {}, -- Value = 7; 自定义层级1
    ---@type LayerIndexDesc
    Custom_2 = {}, -- Value = 8; 自定义层级2
}

