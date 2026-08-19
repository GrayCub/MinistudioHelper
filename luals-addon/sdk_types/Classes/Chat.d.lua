---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@class Chat : SandboxNode
---@field DefaultChat boolean @是否加载默认聊天
local Chat = {}

--- 是否允许聊天
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param userid number
---@return boolean
function Chat:IsUserChatEnable(userid) end

--- 发送文本消息
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@param type number
---@param targetuin number
---@param language number
function Chat:SendChatText(text, type, targetuin, language) end

--- 发送系统消息
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@param targetuin number
function Chat:SendSystemMsg(text, targetuin) end

--- 发送文本消息
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@param targetuin number
function Chat:SendChat(text, targetuin) end

--- 过滤文本
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@return string
function Chat:GetFilterString(text) end

--- 显示聊天气泡
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@param isShow boolean
---@param bubble number
---@param position Vector3
---@param chatBubbleId longlong
---@return longlong
function Chat:ShowChatBubble(text, isShow, bubble, position, chatBubbleId) end

--- 显示工具端聊天气泡
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param text string
---@param bgIndex number
---@param bgPath string
---@param position Vector3
---@return longlong
function Chat:ShowEditorChatBubble(text, bgIndex, bgPath, position) end

--- 更新工具端聊天气泡位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param chatBubbleId longlong
---@param position Vector3
function Chat:UpdateEditorChatBubblePosition(chatBubbleId, position) end

--- 设置角色聊天显示的聊天气泡是否是工具聊天气泡
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Chat.html
---@param actorShowEditorBubble boolean
function Chat:SetActorShowEditorChatBubble(actorShowEditorBubble) end

return Chat
