---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/AdvertisementService.html
---@class AdvertisementService : SandboxNode
local AdvertisementService = {}

--- 指定用户播放广告
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/AdvertisementService.html
---@param uin number
---@param success boolean
function AdvertisementService:PlayAdvertising(uin, success) end

--- 广告播放接口回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/AdvertisementService.html
---@param callback function
function AdvertisementService:PlayAdvertisingCallback(callback) end

return AdvertisementService
