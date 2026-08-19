---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Camera.html
---@class Camera : SandboxNode
---@field PickPosition Vector3 @摄像机跟随鼠标在游戏内指向的三维坐标
---@field LookFocus Vector3 @摄像机焦点，镜头所看向的点
---@field ZNear number @摄像机的近平面
---@field ZFar number @摄像机的远平面
---@field FieldOfView number @设置摄像机垂直视野的角度
---@field CameraType CameraType @摄像机类型
---@field CameraSubject SandboxNode @摄像机子节点
---@field ViewportSize Vector2 @描述客户端视口的尺寸（以像素为单位）
local Camera = {}

--- 以朝向摄像机的方向，通过给定的距摄像机的深度，在视口上的某个位置创建单位射线（以像素为单位）
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Camera.html
---@param x number
---@param y number
---@param depth number
---@return Ray
function Camera:ViewportPointToRay(x, y, depth) end

--- 将一个世界坐标position转换到摄像机视口坐标
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Camera.html
---@param position Vector3
---@return Vector3
function Camera:WorldToViewportPoint(position) end

--- 将3D节点世界坐标position转UI节点坐标
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Camera.html
---@param position Vector3
---@return Vector3
function Camera:WorldToUIPoint(position) end

return Camera
