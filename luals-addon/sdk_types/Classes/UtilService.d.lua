---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@class UtilService : SandboxNode
local UtilService = {}

--- 使用本地算法，计算并返回一个全球唯一的ID
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return string
function UtilService:GetGlobalUniqueID() end

--- 通用任务分发方法
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@param arg1 number
---@param arg2 number
---@param arg3 number
---@param arg4 number
---@param arg5 number
function UtilService:GeneralTaskReported(arg1, arg2, arg3, arg4, arg5) end

--- 设置跳转城镇bool
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@param arg1 string
---@param arg2 boolean
function UtilService:SetJumpToTownValue(arg1, arg2) end

--- 获取跳转城镇bool
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@param arg1 string
---@return boolean
function UtilService:GetJumpToTownValue(arg1) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:CallMiniWorldLuaFunction() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return table
function UtilService:CallMiniWorldLuaFunctionRet() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:CallMiniWoldLuaFunctionWithClassName() end

--- 获取玩家自己点赞地图状态 bool
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:GetPlayerLikeMapState() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:GetPlayerCollectedMapStateByUin() end

--- 获取玩家信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@param uin number
function UtilService:GetPlayerProfileByUin(uin) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:UploadAllCloudAsset() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SyncAllCloudAsset() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:QueryAllCloudAsset() end

--- 手机振动
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@param time number
---@param amplitude number
function UtilService:GameVibrateWithTimeAmplitude(time, amplitude) end

--- 停止手机振动
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:GameVibrateStop() end

--- 打开好友界面UI
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:OpenFriendsUIWithParams() end

--- 获取指定玩家的头像,avatar,profile信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:GetPlayerHeadInfoAndProfileByUin() end

--- 获取当前正在加载的资源数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return number
function UtilService:GetCurrentLoadAssetIndex() end

--- 获取历史加载资源数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return number
function UtilService:GetHistoryLoadIndex() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SandboxEventDispatcherCall() end

--- 获取当前版本号
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return string
function UtilService:GetMiniVersionStr() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SetCustomPlanarReflectionEnable() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return boolean
function UtilService:GetCustomPlanarReflectionEnable() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SetCustomPlanarReflectionTextureSize() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return number
function UtilService:GetCustomPlanarReflectionTextureSize() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SetCustomPlanarReflectionHeight() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return number
function UtilService:GetCustomPlanarReflectionHeight() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
function UtilService:SetCustomPlanarReflectionCameraLayer() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/UtilService.html
---@return number
function UtilService:GetCustomPlanarReflectionCameraLayer() end

return UtilService
