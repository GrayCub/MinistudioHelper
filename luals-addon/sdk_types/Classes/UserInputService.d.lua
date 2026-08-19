---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@class UserInputService : SandboxNode
---@field TouchEnabled boolean @当前的设备是否启用触摸屏
---@field KeyboardEnabled boolean @当前的设备是否启用键盘
---@field MouseEnabled boolean @当前的设备是否启用鼠标
---@field AccelerometerEnabled boolean @设备是否带启用加速器
---@field GamepadEnabled boolean @用户正在使用的设备是否启用可用的游戏手柄
---@field GyroscopeEnabled boolean @用户的设备是否启用陀螺仪
---@field OnScreenKeyboardVisible boolean @屏幕键盘当前是否在用户的屏幕上可见
---@field VREnabled boolean @用户是否正在使用头戴虚拟现实设备
---@field OnScreenKeyboardPosition Vector2 @屏幕键盘的位置
---@field MouseIconEnabled boolean @决定Mouse的图标是否可见
---@field ModalEnabled boolean @切换迷你世界Studio的移动控制是否在移动设备上隐藏
---@field MouseDeltaSensitivity number @缩放用户的Mouse的Delta（位置改变）输出
---@field MouseBehavior MouseBehavior @用户的鼠标可以自由移动或是被锁定
---@field InputBegan SandboxNode @开始输入
---@field InputChanged SandboxNode @输入改变
---@field InputEnded SandboxNode @输入结束
---@field TouchStarted SandboxNode @触摸开始
---@field TouchMoved SandboxNode @触摸移动
---@field TouchEnded SandboxNode @触摸结束
local UserInputService = {}

--- 从给定的obj列表中，根据传入的2D屏幕坐标，拾取指定对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@param mouseX number
---@param mouseY number
---@param objects table
---@return SandboxNode
function UserInputService:PickObjects(mouseX, mouseY, objects) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@return SandboxNode
function UserInputService:PickObjectsEx() end

--- 按键是否按下
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@param key number
---@return boolean
function UserInputService:IsKeyDown(key) end

--- 识别当前是否是远程桌面模式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@return boolean
function UserInputService:IsRemoteSession() end

--- 获取输入对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@param type UserInputType
---@return SandboxNode
function UserInputService:GetInputObject(type) end

--- 获取鼠标当前坐标
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/UserInputService.html
---@return Vector2
function UserInputService:GetMouseLocation() end

return UserInputService
