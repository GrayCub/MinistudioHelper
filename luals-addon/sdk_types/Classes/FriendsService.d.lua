---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
---@class FriendsService : SandboxNode
local FriendsService = {}

--- 获取好友数量
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
---@return number
function FriendsService:GetSize() end

--- 根据好友的序列号拿到好友信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
---@param index number
---@return ReflexTuple
function FriendsService:GetFriendsInfoByIndex(index) end

--- 异步查询好友信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
function FriendsService:QueryFriendInfoAsync() end

--- 是否查询完成
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
---@return boolean
function FriendsService:IsQueryFriendInfoDone() end

--- 是否查询完成
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/FriendsService.html
---@param arg1 function
function FriendsService:QueryFriendInfoWithCallback(arg1) end

return FriendsService
