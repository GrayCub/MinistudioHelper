---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
---@class Player : SandboxNode
---@field Character Actor @玩家行为
---@field Neutral boolean @是否中立
---@field Team SandboxNode @隶属的队伍
---@field TeamColor ColorQuad @隶属的队伍颜色
---@field UserId number @玩家的用户Id
---@field Backpack SandboxNode @背包
---@field Nickname string @玩家昵称
---@field CameraMode CameraModel @玩家的相机模式（第一人称或第三人称视角）
---@field CameraMaxZoomDistance number @玩家镜头的最大视距
---@field CameraMinZoomDistance number @玩家镜头的最小视距
---@field PlayerStateEnable boolean @玩家状态是否显示
---@field GameplayPaused boolean @游戏暂停
---@field PCMovementMode DevPCMovementMode @玩家在PC端移动模式
---@field TouchMovementMode DevTouchMovementMode @玩家在触摸屏端移动模式
---@field Position Vector3 @玩家位置
---@field Rotation Quaternion @玩家旋转角度
---@field NameDisplayDistance number @其他Humanoid名称对当前玩家的可见距离。设置为0时将隐藏所有名称
---@field TeamId number @玩家的队伍Id
---@field ViewRange CoreUIViewRange @玩家视野范围
---@field DefaultDie boolean @死亡组件是否激活
---@field Character2D SandboxNode @玩家行为
---@field AvatarInfo ReflexTuple @查询该道具是否已经装备，返回下标
---@field Idle SBXSignal @通常在游戏引擎将玩家定类为闲置状态的两分钟后进行触发。Time（时间）为此时点后所经历的秒数
local Player = {}

--- 校准碰撞视线位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
---@param pos Vector3
---@param dir Vector3
---@param dist number
---@return Vector3
function Player:EyePos(pos, dir, dist) end

--- 校准碰撞视线位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
---@param pos Vector3
---@param dir Vector3
---@param filter table
---@param dist number
---@return Vector3
function Player:EyePosWithFilter(pos, dir, filter, dist) end

--- 给玩家装备上指定的道具
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
---@param node SandboxNode
function Player:EquipTool(node) end

--- 解除玩家的装备
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
function Player:UnequipTools() end

--- 丢弃装备
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
function Player:DropTool() end

--- 查询该道具是否已经装备，返回下标
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Player.html
---@param node SandboxNode
---@return number
function Player:FindTool(node) end

return Player
