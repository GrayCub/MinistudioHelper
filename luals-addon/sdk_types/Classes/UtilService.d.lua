---@meta

---@class UtilService : SandboxNode
local UtilService = {}

--- 使用本地算法，计算并返回一个全球唯一的ID
---@return string
function UtilService:GetGlobalUniqueID() end

--- 通用任务分发方法
---@param arg1 number
---@param arg2 number
---@param arg3 number
---@param arg4 number
---@param arg5 number
function UtilService:GeneralTaskReported(arg1, arg2, arg3, arg4, arg5) end

--- 设置跳转城镇bool
---@param arg1 string
---@param arg2 boolean
function UtilService:SetJumpToTownValue(arg1, arg2) end

--- 获取跳转城镇bool
---@param arg1 string
---@return boolean
function UtilService:GetJumpToTownValue(arg1) end

function UtilService:CallMiniWorldLuaFunction() end

---@return table
function UtilService:CallMiniWorldLuaFunctionRet() end

function UtilService:CallMiniWoldLuaFunctionWithClassName() end

--- 获取玩家自己点赞地图状态 bool
function UtilService:GetPlayerLikeMapState() end

function UtilService:GetPlayerCollectedMapStateByUin() end

--- 获取玩家信息
---@param uin number
function UtilService:GetPlayerProfileByUin(uin) end

function UtilService:UploadAllCloudAsset() end

function UtilService:SyncAllCloudAsset() end

function UtilService:QueryAllCloudAsset() end

--- 手机振动
---@param time number
---@param amplitude number
function UtilService:GameVibrateWithTimeAmplitude(time, amplitude) end

--- 停止手机振动
function UtilService:GameVibrateStop() end

--- 打开好友界面UI
function UtilService:OpenFriendsUIWithParams() end

--- 获取指定玩家的头像,avatar,profile信息
function UtilService:GetPlayerHeadInfoAndProfileByUin() end

--- 获取当前正在加载的资源数
---@return number
function UtilService:GetCurrentLoadAssetIndex() end

--- 获取历史加载资源数
---@return number
function UtilService:GetHistoryLoadIndex() end

function UtilService:SandboxEventDispatcherCall() end

--- 获取当前版本号
---@return string
function UtilService:GetMiniVersionStr() end

function UtilService:SetCustomPlanarReflectionEnable() end

---@return boolean
function UtilService:GetCustomPlanarReflectionEnable() end

function UtilService:SetCustomPlanarReflectionTextureSize() end

---@return number
function UtilService:GetCustomPlanarReflectionTextureSize() end

function UtilService:SetCustomPlanarReflectionHeight() end

---@return number
function UtilService:GetCustomPlanarReflectionHeight() end

function UtilService:SetCustomPlanarReflectionCameraLayer() end

---@return number
function UtilService:GetCustomPlanarReflectionCameraLayer() end

return UtilService
