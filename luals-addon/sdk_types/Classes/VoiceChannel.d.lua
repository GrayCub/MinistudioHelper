---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/VoiceChannel.html
---@class VoiceChannel : SandboxNode
---@field ChannelID string @语音频道ID。它是一个只读属性
---@field JoinChannel SBXSignal @加入某语音频道
---@field LeaveChannel SBXSignal @退出语音频道
local VoiceChannel = {}

return VoiceChannel
