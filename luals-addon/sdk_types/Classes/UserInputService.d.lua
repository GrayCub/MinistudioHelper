---@meta

---@class FUserInputServiceInputBeganEvent : SBXSignal
FUserInputServiceInputBeganEvent = {}

---@param callback fun(inputObj: InputObject, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceInputBeganEvent:Connect(callback) end

---@class FUserInputServiceInputChangedEvent : SBXSignal
FUserInputServiceInputChangedEvent = {}

---@param callback fun(inputObj: InputObject, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceInputChangedEvent:Connect(callback) end

---@class FUserInputServiceInputEndedEvent : SBXSignal
FUserInputServiceInputEndedEvent = {}

---@param callback fun(inputObj: InputObject, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceInputEndedEvent:Connect(callback) end

---@class FUserInputServiceTouchStartedEvent : SBXSignal
FUserInputServiceTouchStartedEvent = {}

---@param callback fun(inputObj: table, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceTouchStartedEvent:Connect(callback) end

---@class FUserInputServiceTouchMovedEvent : SBXSignal
FUserInputServiceTouchMovedEvent = {}

---@param callback fun(inputObj: table, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceTouchMovedEvent:Connect(callback) end

---@class FUserInputServiceTouchEndedEvent : SBXSignal
FUserInputServiceTouchEndedEvent = {}

---@param callback fun(inputObj: table, bGameProcessd: boolean): nil
---@return SBXConnection
function FUserInputServiceTouchEndedEvent:Connect(callback) end


---@class UserInputService : SandboxNode
---@field TouchEnabled boolean 当前的设备是否启用触摸屏
---@field KeyboardEnabled boolean 当前的设备是否启用键盘
---@field MouseEnabled boolean 当前的设备是否启用鼠标
---@field AccelerometerEnabled boolean 设备是否带启用加速器
---@field GamepadEnabled boolean 用户正在使用的设备是否启用可用的游戏手柄
---@field GyroscopeEnabled boolean 用户的设备是否启用陀螺仪
---@field OnScreenKeyboardVisible boolean 屏幕键盘当前是否在用户的屏幕上可见
---@field VREnabled boolean 用户是否正在使用头戴虚拟现实设备
---@field OnScreenKeyboardPosition Vector2 屏幕键盘的位置
---@field MouseIconEnabled boolean 决定Mouse的图标是否可见
---@field ModalEnabled boolean 切换迷你世界Studio的移动控制是否在移动设备上隐藏
---@field MouseDeltaSensitivity number 缩放用户的Mouse的Delta（位置改变）输出
---@field MouseBehavior MouseBehavior 用户的鼠标可以自由移动或是被锁定
---@field InputBegan FUserInputServiceInputBeganEvent <Assignable> 开始输入
---@field InputChanged FUserInputServiceInputChangedEvent <Assignable> 输入改变
---@field InputEnded FUserInputServiceInputEndedEvent <Assignable> 输入结束
---@field TouchStarted FUserInputServiceTouchStartedEvent <Assignable> 触摸开始
---@field TouchMoved FUserInputServiceTouchMovedEvent <Assignable> 触摸移动
---@field TouchEnded FUserInputServiceTouchEndedEvent <Assignable> 触摸结束
local UserInputService = {}

--- 从给定的obj列表中，根据传入的2D屏幕坐标，拾取指定对象
---@param mouseX number
---@param mouseY number
---@param objects table
---@return SandboxNode
function UserInputService:PickObjects(mouseX, mouseY, objects) end

---@return SandboxNode
function UserInputService:PickObjectsEx() end

--- 按键是否按下
---@param key number
---@return boolean
function UserInputService:IsKeyDown(key) end

--- 识别当前是否是远程桌面模式
---@return boolean
function UserInputService:IsRemoteSession() end

--- 获取输入对象
---@param type UserInputType
---@return SandboxNode
function UserInputService:GetInputObject(type) end

--- 获取鼠标当前坐标
---@return Vector2
function UserInputService:GetMouseLocation() end

return UserInputService
