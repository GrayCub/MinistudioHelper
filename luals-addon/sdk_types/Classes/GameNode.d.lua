---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/GameNode.html
---@class GameNode : SandboxNode
---@field Name string @服务名
---@field Loaded SandboxNode @加载完的服务
local GameNode = {}

--- 通过名称获取该服务节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/GameNode.html
---@overload fun(name: "ContextActionService"): ContextActionService
---@overload fun(name: "UserInputService"): UserInputService
---@overload fun(name: "GameSetting"): GameSetting
---@overload fun(name: "MaterialService"): MaterialService
---@overload fun(name: "MainStorage"): MainStorage
---@overload fun(name: "InitStorage"): InitStorage
---@overload fun(name: "StarterPack"): StarterPack
---@overload fun(name: "RunService"): RunService
---@overload fun(name: "SpawnService"): SpawnService
---@overload fun(name: "Teams"): Teams
---@overload fun(name: "PostEffectService"): PostEffectService
---@overload fun(name: "MouseService"): MouseService
---@overload fun(name: "Players"): Players
---@overload fun(name: "StartPlayer"): StartPlayer
---@overload fun(name: "StarterGui"): StarterGui
---@overload fun(name: "WorldService"): WorldService
---@overload fun(name: "Chat"): Chat
---@overload fun(name: "TeleportService"): TeleportService
---@overload fun(name: "FriendsService"): FriendsService
---@overload fun(name: "SoundService"): SoundService
---@overload fun(name: "VoiceChatService"): VoiceChatService
---@overload fun(name: "VoiceChatRemoteService"): VoiceChatRemoteService
---@overload fun(name: "TweenService"): TweenService
---@overload fun(name: "PhysXService"): PhysXService
---@overload fun(name: "NetService"): NetService
---@overload fun(name: "CollectionService"): CollectionService
---@overload fun(name: "CloudService"): CloudService
---@overload fun(name: "ContentService"): ContentService
---@overload fun(name: "CoreUi"): CoreUI
---@overload fun(name: "TalkService"): TalkService
---@overload fun(name: "DeveloperStoreService"): DeveloperStoreService
---@overload fun(name: "AnalyticsService"): AnalyticsService
---@overload fun(name: "CloudServerConfigService"): CloudServerConfigService
---@overload fun(name: "FriendInviteService"): FriendInviteService
---@overload fun(name: "AdvertisementService"): AdvertisementService
---@overload fun(name: "UtilService"): UtilService
---@overload fun(name: "OnlineService"): OnlineService
---@overload fun(name: "CustomConfigService"): CustomConfigService
---@overload fun(name: "ServerScriptService"): ServerScriptService
---@overload fun(name: "ServerStorage"): ServerStorage
---@overload fun(name: "PluginsService"): PluginsService
---@overload fun(name: "WorkSpace"): WorkSpace
function GameNode:GetService(name) end

--- 关闭绑定
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/GameNode.html
---@param luaf function
function GameNode:BindToClose(luaf) end

--- 通过sceneid获取workspace
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/GameNode.html
---@param sceneid unsignedshort
---@return WorkSpace
function GameNode:GetWorkSpace(sceneid) end

return GameNode
