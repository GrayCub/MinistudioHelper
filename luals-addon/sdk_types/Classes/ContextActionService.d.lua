---@meta

---@class FContextActionServiceBoundActionChangedEvent : SBXSignal
FContextActionServiceBoundActionChangedEvent = {}

---@param callback fun(actionName: string, propname: string, table: table): nil
---@return SBXConnection
function FContextActionServiceBoundActionChangedEvent:Connect(callback) end

---@class FContextActionServiceBoundActionAddedEvent : SBXSignal
FContextActionServiceBoundActionAddedEvent = {}

---@param callback fun(actionName: string, bCreateTouchBtn: boolean, table: table): nil
---@return SBXConnection
function FContextActionServiceBoundActionAddedEvent:Connect(callback) end

---@class FContextActionServiceBoundActionRemovedEvent : SBXSignal
FContextActionServiceBoundActionRemovedEvent = {}

---@param callback fun(actionName: string, table: table): nil
---@return SBXConnection
function FContextActionServiceBoundActionRemovedEvent:Connect(callback) end


---@class ContextActionService : SandboxNode
---@field BoundActionChanged FContextActionServiceBoundActionChangedEvent <Assignable> 当绑定行为发生改变时，会触发一个BoundActionChanged时间
---@field BoundActionAdded FContextActionServiceBoundActionAddedEvent <Assignable> 新增某绑定行为
---@field BoundActionRemoved FContextActionServiceBoundActionRemovedEvent <Assignable> 移除某绑定行为
local ContextActionService = {}

--- 绑定激活
---@param userInputTypeForActivate number
---@param keyCodeForActivate number
function ContextActionService:BindActivate(userInputTypeForActivate, keyCodeForActivate) end

--- 解绑激活
---@param userInputTypeForActivate number
---@param keyCodeForActivate number
function ContextActionService:UnbindActivate(userInputTypeForActivate, keyCodeForActivate) end

--- 获取当前所有绑定的事件信息
---@return table
function ContextActionService:GetAllBoundActionInfo() end

--- 获取当前绑定actionName的事件信息
---@param actionName string
---@return table
function ContextActionService:GetBoundActionInfo(actionName) end

--- 通过绑定名称获取该按钮节点
---@param actionName string
---@return SandboxNode
function ContextActionService:GetButton(actionName) end

--- 获取当前本地tool图片
---@return string
function ContextActionService:GetCurrentLocalToolIcon() end

--- 设置描述
---@param actionName string
---@param description string
function ContextActionService:SetDescription(actionName, description) end

--- 设置图片
---@param actionName string
---@param image string
function ContextActionService:SetImage(actionName, image) end

--- 设置位置
---@param actionName string
---@param position Vector2
function ContextActionService:SetPosition(actionName, position) end

--- 设置标题
---@param actionName string
---@param title string
function ContextActionService:SetTitle(actionName, title) end

--- 绑定一个回调函数到指定输入上
---@param actionname string
---@param func function
---@param createTouchBtn boolean
---@param hotkey ReflexVariant
function ContextActionService:BindContext(actionname, func, createTouchBtn, hotkey) end

--- 绑定一个回调函数到指定输入上，并指定优先级
---@param actionname string
---@param func function
---@param createTouchBtn boolean
---@param priority number
---@param hotkey ReflexVariant
function ContextActionService:BindContextAtPriority(actionname, func, createTouchBtn, priority, hotkey) end

--- 取消指定的用户绑定
---@param actionname string
function ContextActionService:UnbindContext(actionname) end

--- 移除所有的函数绑定
function ContextActionService:UnbindAllContext() end

--- lua回调函数
---@param actionName string
---@param state UserInputState
---@param inputObject SandboxNode
function ContextActionService:CallFunction(actionName, state, inputObject) end

--- 绑定一个回调函数到指定输入上(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
---@param actionName string
---@param func function
---@param nActionType number
---@param nSubType number
function ContextActionService:BindAction(actionName, func, nActionType, nSubType) end

--- 绑定一个回调函数到按钮事件(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
---@param actionName string
---@param func function
---@param nActionType number
---@param nSubType number
function ContextActionService:BindActionWithButton(actionName, func, nActionType, nSubType) end

--- 绑定一个回调函数到指定输入上，并指定优先级(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
---@param actionName string
---@param func function
---@param priority number
---@param nActionType number
---@param nSubType number
function ContextActionService:BindActionAtPriority(actionName, func, priority, nActionType, nSubType) end

--- 取消指定的用户绑定(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
---@param actionName string
function ContextActionService:UnbindAction(actionName) end

--- 移除所有的函数绑定(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
function ContextActionService:UnbindAllActions() end

return ContextActionService
