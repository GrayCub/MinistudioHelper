---@meta
---@diagnostic disable: missing-fields

---@class TextureMode : EnumValue<TextureMode>
---@field Value TextureMode
Enum.TextureMode = {
    ---@type TextureMode
    Stretch = {}, -- Value = 0; 伸展模式，纹理会被拉伸以填充整个表面，不会重复
    ---@type TextureMode
    Tile = {}, -- Value = 1; 平铺模式，纹理会在表面重复平铺，适合制作重复图案
}

