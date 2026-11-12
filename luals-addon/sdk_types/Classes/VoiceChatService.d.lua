---@meta

---@class VoiceChatService : SandboxNode
---@field ChannelType ChannelType 语音频道类型
local VoiceChatService = {}

--- 是否单频道
---@param bCheck boolean
---@return boolean
function VoiceChatService:IsSingleChannel(bCheck) end

--- 加入某语音频道
---@param uin number
---@param channelID CHANNEL_ID
---@return boolean
function VoiceChatService:JoinVoiceChannel(uin, channelID) end

---@return boolean
function VoiceChatService:SpecificJoinVoiceChannel() end

--- 分配某语音频道
---@param uin number
---@param channelID CHANNEL_ID
---@return boolean
function VoiceChatService:AssignVoiceChannel(uin, channelID) end

--- 退出某语音频道
---@param uin number
---@param channelID CHANNEL_ID
---@return boolean
function VoiceChatService:QuitVoiceChannel(uin, channelID) end

---@return boolean
function VoiceChatService:SpecificQuitVoiceChannel() end

--- 退出所有语音频道
---@param uin number
---@return boolean
function VoiceChatService:QuitAllVoiceChannel(uin) end

--- 设置扬声器状态
---@param uin number
---@param bActive boolean
function VoiceChatService:SetSpeakerStatus(uin, bActive) end

--- 获取扬声器状态
---@param uin number
---@return boolean
function VoiceChatService:GetSpeakerStatus(uin) end

--- 设置麦克风状态
---@param uin number
---@param bActive boolean
function VoiceChatService:SetMicroPhoneStatus(uin, bActive) end

--- 获取麦克风状态
---@param uin number
---@return boolean
function VoiceChatService:GetMicroPhoneStatus(uin) end

--- 调节音量
---@param uin number
---@param val number
function VoiceChatService:SetVolume(uin, val) end

--- 获取音量
---@param uin number
---@return number
function VoiceChatService:GetVolume(uin) end

--- 聆听他人
---@param setUin number
---@param otherUin number
---@param bListen boolean
---@return boolean
function VoiceChatService:SetListenOther(setUin, otherUin, bListen) end

--- 麦克风开关按钮
function VoiceChatService:MicroPhoneSwitchBtn() end

--- 扬声器开关按钮
function VoiceChatService:SpeakerSwitchBtn() end

--- 退出所有语音频道
function VoiceChatService:QuitAllVoiceChannelClient() end

--- 设置扬声器状态(客户端方法)
---@param arg1 boolean
function VoiceChatService:SetSpeakerStatusClient(arg1) end

--- 获取扬声器状态(客户端方法)
---@return boolean
function VoiceChatService:GetSpeakerStatusClient() end

--- 设置麦克风状态(客户端方法)
---@param arg1 boolean
function VoiceChatService:SetMicroPhoneStatusClient(arg1) end

--- 获取麦克风状态(客户端方法)
---@return boolean
function VoiceChatService:GetMicroPhoneStatusClient() end

return VoiceChatService
