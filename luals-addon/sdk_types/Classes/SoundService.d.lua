---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundService.html
---@class SoundService : SandboxNode
---@field RolloffScale number @3D声音衰减速度
---@field DistanceFactor number @3D声音衰减距离
---@field DopplerScale number @3D声音多普勒效应强度
---@field GlobalVolume number @全局音量
---@field MusicOpen boolean @打开游戏内背景音乐
local SoundService = {}

--- 设置监听类型与监听者
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundService.html
---@param type ListenerType
---@param object SandboxNode
function SoundService:SetListener(type, object) end

--- 在本地播放声音（2D，不会同步）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundService.html
---@param sound SandboxNode
function SoundService:PlayerLocalSound(sound) end

--- 在本地开关声音（包括游戏本身的声音节点）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundService.html
---@param value boolean
function SoundService:SetSoundOpen(value) end

return SoundService
