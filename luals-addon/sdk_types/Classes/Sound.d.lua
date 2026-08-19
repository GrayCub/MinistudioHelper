---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
---@class Sound : SandboxNode
---@field SoundPath string @声音资源路径
---@field Play Button @试听
---@field Volume number @声音音量大小
---@field IsLoop boolean @该声音是否重复播放
---@field PlayOnRemove boolean @设置为true时，会在移除节点后播放一次声音
---@field TransObject SandboxNode @设置为某个Transform节点后，Sound将在该节点的位置播放（3D声音），若Transform与FixPos均未设置，则为全局播放（2D声音）
---@field FixPos Vector3 @设置后，若没有指定Transform，则在指定位置(Vector3)播放3D声音
---@field IsFixPosPlay boolean @为true时代表正在FixPos属性所指位置播放3D声音
---@field RollOffMode RollOffMode @声音衰减模式，包括逆衰减（默认），线性衰减，线性平方衰减，锥型逆衰减模式
---@field RollOffMaxDistance number @声音衰减最大距离
---@field RollOffMinDistance number @声音衰减最小距离
---@field SoundPosition number @声音播放位置（以毫秒为单位）
---@field PlayFinish SBXSignal @Sound实例播放结束时触发该事件
local Sound = {}

--- 播放/继续播放声音（调用后IsPlaying为true，IsPaused为false）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
function Sound:PlaySound() end

--- 停止播放声音（调用后IsPlaying为false）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
function Sound:StopSound() end

--- 重新播放声音（声音将从头开始播放）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
function Sound:ResumeSound() end

--- 暂停声音（调用后IsPaused为true）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
function Sound:PauseSound() end

--- 设置同步模式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/Sound.html
function Sound:SoundSyncMode() end

return Sound
