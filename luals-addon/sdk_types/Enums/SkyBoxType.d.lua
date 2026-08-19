---@meta
---@diagnostic disable: missing-fields

---@class SkyBoxType : EnumValue<SkyBoxType>
---@field Value SkyBoxType
Enum.SkyBoxType = {
    ---@type SkyBoxType
    Game = {}, -- Value = 0; 系统内置天空盒
    ---@type SkyBoxType
    Custom = {}, -- Value = 1; 自定义天空盒（通过 CubeAssetID 设置贴图路径）
    ---@type SkyBoxType
    Advance = {}, -- Value = 2; 高级材质天空盒（通过 AdvanceMaterialAssetID 属性或 SetAdvanceMaterialAssetID 方法绑定材质）
    ---@type SkyBoxType
    Disable = {}, -- Value = 3; 关闭天空盒
}

