---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@class FriendInviteService : SandboxNode
local FriendInviteService = {}

--- 获取好友列表
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin number
---@param func function
function FriendInviteService:GetFriendList(nUin, func) end

--- 新玩家判断
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin number
---@param nMapID longlong
---@param func function
function FriendInviteService:IsNewToThisMap(nUin, nMapID, func) end

--- 邀请者设置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin1 number
---@param nUin2 number
---@param nMapID longlong
function FriendInviteService:SetInvitePlayer(nUin1, nUin2, nMapID) end

--- 邀请者查询
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin1 number
---@param nMapID longlong
---@param func function
function FriendInviteService:GetInvitePlayer(nUin1, nMapID, func) end

--- 被邀请者设置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin number
---@param nMapID longlong
---@param userData table
---@param nCound number
function FriendInviteService:SetInvitedPlayerList(nUin, nMapID, userData, nCound) end

--- 被邀请者查询
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin number
---@param nMapID longlong
---@param func function
function FriendInviteService:GetInvitedPlayerList(nUin, nMapID, func) end

--- 好友跟随
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
---@param nUin1 number
---@param nUin2 number
function FriendInviteService:FriendFollow(nUin1, nUin2) end

--- 打开邀请列表(客机操作)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/FriendInviteService.html
function FriendInviteService:OpenInviterList() end

return FriendInviteService
