---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@class CloudKVStore : SandboxNode
local CloudKVStore = {}

--- 同步获取排行榜 Top 数据
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param count number
---@return number
function CloudKVStore:GetTopSync(count) end

--- 同步获取排行榜 Bottom 数据
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param count number
---@return number
function CloudKVStore:GetBottomSync(count) end

--- 同步获取分值区间 [minValue, maxValue] 内的排序数据（条数不超过 count，且 count 最大不超过 100）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param count number
---@param bAscend boolean
---@param minValue number
---@param maxValue number
---@return number
function CloudKVStore:GetRangeSync(count, bAscend, minValue, maxValue) end

--- 获取排行榜名次
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param bAscend boolean
---@param nIndex number
---@return number
function CloudKVStore:GetOrderDataIndex(bAscend, nIndex) end

--- 清理排行榜数据
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
function CloudKVStore:Clean() end

--- 设置同步 kv 分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param name string
---@param value number
---@return number
function CloudKVStore:SetValue(key, name, value) end

--- 获取同步 kv 分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param name string
---@return number
function CloudKVStore:GetValue(key, name) end

--- 同步增加 key 对应分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param value number
---@return number
function CloudKVStore:IncreaseValue(key, value) end

--- 异步设置 kv 分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param name string
---@param value number
---@param func function
---@return number
function CloudKVStore:SetValueAsync(key, name, value, func) end

--- 异步获取 kv 分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param name string
---@param func function
---@return number
function CloudKVStore:GetValueAsync(key, name, func) end

--- 异步增加 key 对应分值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param value number
---@param func function
---@return number
function CloudKVStore:IncreaseValueAsync(key, value, func) end

--- 同步移除 key
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@return number
function CloudKVStore:RemoveKey(key) end

--- 异步移除 key
--- @see https://studio.mini1.cn/wiki/Api/Classes/Cloud/CloudKVStore.html
---@param key string
---@param func function
---@return number
function CloudKVStore:RemoveKeyAsync(key, func) end

return CloudKVStore
