---@meta
---@diagnostic disable: missing-fields

---@class AssetFetchStatus : EnumValue<AssetFetchStatus>
---@field Value AssetFetchStatus
Enum.AssetFetchStatus = {
    ---@type AssetFetchStatus
    None = {}, -- Value = 0; 无状态
    ---@type AssetFetchStatus
    Success = {}, -- Value = 1; 加载成功
    ---@type AssetFetchStatus
    Failed = {}, -- Value = 2; 加载失败
    ---@type AssetFetchStatus
    Loading = {}, -- Value = 3; 正在加载
    ---@type AssetFetchStatus
    TimeOut = {}, -- Value = 4; 超时
}

