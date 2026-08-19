---@meta
---@diagnostic disable: missing-fields

---@class RenderPriority : EnumValue<RenderPriority>
---@field Value RenderPriority
Enum.RenderPriority = {
    ---@type RenderPriority
    First = {}, -- Value = 0; 优先运行
    ---@type RenderPriority
    Input = {}, -- Value = 100; 此项应当第 2 位运行
    ---@type RenderPriority
    Camera = {}, -- Value = 200; 在 Input（输入）后运行
    ---@type RenderPriority
    Character = {}, -- Value = 300; 在 Camera（镜头）后运行
    ---@type RenderPriority
    Last = {}, -- Value = 400; 在 Character 后运行
}

