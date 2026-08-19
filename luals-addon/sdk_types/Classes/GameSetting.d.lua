---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/GameSetting.html
---@class GameSetting : SandboxNode
---@field GameStartMode GameStartMode @游戏开始模式
---@field CanCunIn boolean @游戏可否切入
---@field CountDown number @倒数读秒
---@field NeedPlayerCount number @最少玩家数
---@field BackgroundMusicIndex GameBackGroundMusic @背景音乐索引
---@field HideCursor boolean @隐藏光标
---@field Shadow ShadowDesc @光影开关
---@field WaterReflected WaterReflectedDesc @水面反射开关
---@field ToolActiveMode ToolActiveMode @道具激活方式
---@field LAYER1 number @第1层
---@field LAYER2 number @第2层
---@field LAYER3 number @第3层
---@field LAYER4 number @第4层
---@field LAYER5 number @第5层
---@field SyncStream boolean @同步流
---@field MusicOpen boolean @控制地图内背景音乐开关
---@field SafeSyncMode boolean @同步安全模式
---@field ViewRange CoreUIViewRange @视野
---@field UseMnSkin boolean @使用迷你皮肤
---@field Sensitivity number @镜头的灵敏度
---@field AvatarPolicy string @Avatar policy
---@field WithoutCharacter boolean @默认player不创建character
---@field CameraCollide boolean @镜头的是否碰撞
---@field LoadingCustomPartTime number @自定义加载条超时时间(毫秒)，0表示不开启
---@field StartScene EMultiScenesAPI @启动场景
---@field LightActor boolean @轻量Actor
---@field PhysicsFrames PhysicsFrames @相机正交大小
---@field PlayerIgnoreStream boolean @player不启用流式加载
---@field ComputeActorInteractions boolean @是否开启动画属性同步
---@field AvoidInteractionsSpeedFactor number @是否开启动画属性同步
---@field DynamicBatching boolean @动态合批
---@field ShowAssetLoading boolean @显示正在加载的资源
local GameSetting = {}

--- 是否在编辑器中运行
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/GameSetting.html
---@return boolean
function GameSetting:GetRunningInEditor() end

--- 设置loading自定义部分加载是否完成
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/GameSetting.html
---@param arg1 boolean
function GameSetting:SetLoadingCustomPartFinished(arg1) end

--- 设置loading自定义部分加载过程 log
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/GameSetting.html
---@param arg1 string
function GameSetting:SetLoadingCustomPartLog(arg1) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/GameSetting.html
function GameSetting:OpenAssetPoolGoCache() end

return GameSetting
