---@meta
---@diagnostic disable: missing-fields

---@class PhysicsType : EnumValue<PhysicsType>
---@field Value PhysicsType
Enum.PhysicsType = {
    ---@type PhysicsType
    BOX = {}, -- Value = 1; 包围盒类型，使用简单的轴对齐包围盒作为碰撞体。基于Size属性定义的包围盒大小
    ---@type PhysicsType
    TRIANGLE_MESH = {}, -- Value = 2; 三角形网格类型，使用模型的精确网格数据作为碰撞体。碰撞精度高，能够精确匹配模型的形状
}

