---@meta

---@class FVoiceChannelJoinChannelEvent : SBXSignal
FVoiceChannelJoinChannelEvent = {}

---@param callback fun(channel: SandboxNode, uin: number, name: string, status: boolean): nil
---@return SBXConnection
function FVoiceChannelJoinChannelEvent:Connect(callback) end

---@class FVoiceChannelLeaveChannelEvent : SBXSignal
FVoiceChannelLeaveChannelEvent = {}

---@param callback fun(channel: SandboxNode, uin: number, name: string, event: string): nil
---@return SBXConnection
function FVoiceChannelLeaveChannelEvent:Connect(callback) end


---@class VoiceChannel : SandboxNode
---@field ChannelID string 语音频道ID。它是一个只读属性
---@field JoinChannel FVoiceChannelJoinChannelEvent <Assignable> 加入某语音频道
---@field LeaveChannel FVoiceChannelLeaveChannelEvent <Assignable> 退出语音频道
local VoiceChannel = {}

return VoiceChannel
