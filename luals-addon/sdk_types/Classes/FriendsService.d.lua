---@meta

---@class FriendsService : SandboxNode
local FriendsService = {}

--- 获取好友数量
---@return number
function FriendsService:GetSize() end

--- 根据好友的序列号拿到好友信息
---@param index number
---@return ReflexTuple
function FriendsService:GetFriendsInfoByIndex(index) end

--- 异步查询好友信息
function FriendsService:QueryFriendInfoAsync() end

--- 是否查询完成
---@return boolean
function FriendsService:IsQueryFriendInfoDone() end

--- 是否查询完成
---@param arg1 function
function FriendsService:QueryFriendInfoWithCallback(arg1) end

return FriendsService
