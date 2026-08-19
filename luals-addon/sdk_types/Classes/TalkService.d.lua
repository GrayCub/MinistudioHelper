---@meta

--- 一种处理体验式文本聊天的服务。TalkService处理各种与文本聊天相关的任务，如管理频道、装饰消息、过滤文本、创建命令和开发自定义聊天界面。
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@class TalkService : SandboxNode
local TalkService = {}

--- 获取聊天信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param id number
---@param callback function
function TalkService:GetMessage(id, callback) end

--- 发送聊天信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param id number
---@param msg string
---@param callback function
function TalkService:SendMessage(id, msg, callback) end

--- 设置回调函数
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param key number
---@param callback function
function TalkService:SetCallBack(key, callback) end

--- 移除回调函数
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param key number
function TalkService:RemoveCallBack(key) end

--- 绑定NPC
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param sandboxNodeId number
function TalkService:BindNPCId(sandboxNodeId) end

--- 解绑NPC
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param sandboxNodeId number
function TalkService:UnBindNPCId(sandboxNodeId) end

--- 查询该沙盒节点绑定的NPCId
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/TalkService.html
---@param sandboxNodeId number
---@return number
function TalkService:QueryNPCId(sandboxNodeId) end

return TalkService
