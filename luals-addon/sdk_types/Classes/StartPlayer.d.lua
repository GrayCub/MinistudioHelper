---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/StartPlayer.html
---@class StartPlayer : SandboxNode
---@field PCMovementMode DevPCMovementMode @玩家在PC端移动模式
---@field TouchMovementMode DevTouchMovementMode @玩家在触摸屏端移动模式
---@field CameraMaxZoomDistance number @玩家镜头的最大视距
---@field CameraMinZoomDistance number @玩家镜头的最小视距
---@field CameraMode CameraModel @玩家的相机模式（第一人称或第三人称视角）
local StartPlayer = {}

return StartPlayer
