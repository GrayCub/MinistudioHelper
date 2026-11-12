---@meta

---@class AdvertisementService : SandboxNode
local AdvertisementService = {}

--- 指定用户播放广告
---@param uin number
---@param success boolean
function AdvertisementService:PlayAdvertising(uin, success) end

--- 广告播放接口回调
---@param callback function
function AdvertisementService:PlayAdvertisingCallback(callback) end

return AdvertisementService
