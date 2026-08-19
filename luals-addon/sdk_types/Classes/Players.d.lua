---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
---@class Players : SandboxNode
---@field LocalPlayer Player @是一个只读属性，指的是其客户端正在运行体验的玩家
---@field PlayerAdded SBXSignal @当玩家进入游戏时，PlayerAdded事件会触发。这用于在玩家加入游戏时触发事件，例如加载玩家保存的数据。 监听此事件的脚本代码尽量前置, 避免分发事件时还没执行脚本监听代码。建议放于StartPlayer.StarterPlayerScripts下的脚本节点的头部。
---@field PlayerRemoving SBXSignal @玩家移除事件，在玩家离开游戏之前立即触发。由于它在实际移除Player之前激发，因此此事件对于需要存储玩家数据非常有用
local Players = {}

--- 在Players中搜索每个玩家，以查找其player.UserId与给定UserId匹配的玩家
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
---@param userid number
---@return Player
function Players:GetPlayerByUserId(userid) end

--- 返回当前连接的所有玩家的表
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
---@return Player[]
function Players:GetPlayers() end

--- 隐藏触摸UI
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
function Players:HideTouchUI() end

--- 隐藏跳跃
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
function Players:HideJump() end

--- 隐藏摇杆
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
function Players:HideRocker() end

--- 申请好友
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
---@param nUin1 number
---@param nUin2 number
---@return boolean
function Players:SendFriendApply(nUin1, nUin2) end

--- 判断好友
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Players.html
---@param nUin1 number
---@param nUin2 number
---@param func function
function Players:HasFriend(nUin1, nUin2, func) end

return Players
