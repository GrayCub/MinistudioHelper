---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
---@class SoundGroup : SandboxNode
local SoundGroup = {}

--- 播放/继续播放组内声音
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
function SoundGroup:PlaySound() end

--- 停止播放组内声音
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
function SoundGroup:StopSound() end

--- 重新播放组内声音（声音将从头开始播放）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
function SoundGroup:ResumeSound() end

--- 暂停组内声音
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
function SoundGroup:PauseSound() end

--- 按比例改变组内声音音量（0~1），如：传入0.5会将组内Sound节点音量减半
--- @see https://studio.mini1.cn/wiki/Api/Classes/Sound/SoundGroup.html
---@param value number
function SoundGroup:ChangeVolume(value) end

return SoundGroup
