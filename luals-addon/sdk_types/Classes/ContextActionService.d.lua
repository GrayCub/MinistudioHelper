---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@class ContextActionService : SandboxNode
---@field BoundActionChanged SBXSignal @当绑定行为发生改变时，会触发一个BoundActionChanged时间
---@field BoundActionAdded SBXSignal @新增某绑定行为
---@field BoundActionRemoved SBXSignal @移除某绑定行为
local ContextActionService = {}

--- 绑定激活
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param userInputTypeForActivate number
---@param keyCodeForActivate number
function ContextActionService:BindActivate(userInputTypeForActivate, keyCodeForActivate) end

--- 解绑激活
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param userInputTypeForActivate number
---@param keyCodeForActivate number
function ContextActionService:UnbindActivate(userInputTypeForActivate, keyCodeForActivate) end

--- 获取当前所有绑定的事件信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@return table
function ContextActionService:GetAllBoundActionInfo() end

--- 获取当前绑定actionName的事件信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@return table
function ContextActionService:GetBoundActionInfo(actionName) end

--- 通过绑定名称获取该按钮节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@return SandboxNode
function ContextActionService:GetButton(actionName) end

--- 获取当前本地tool图片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@return string
function ContextActionService:GetCurrentLocalToolIcon() end

--- 设置描述
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param description string
function ContextActionService:SetDescription(actionName, description) end

--- 设置图片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param image string
function ContextActionService:SetImage(actionName, image) end

--- 设置位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param position Vector2
function ContextActionService:SetPosition(actionName, position) end

--- 设置标题
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param title string
function ContextActionService:SetTitle(actionName, title) end

--- 绑定一个回调函数到指定输入上
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionname string
---@param func function
---@param createTouchBtn boolean
---@param hotkey ReflexVariant
function ContextActionService:BindContext(actionname, func, createTouchBtn, hotkey) end

--- 绑定一个回调函数到指定输入上，并指定优先级
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionname string
---@param func function
---@param createTouchBtn boolean
---@param priority number
---@param hotkey ReflexVariant
function ContextActionService:BindContextAtPriority(actionname, func, createTouchBtn, priority, hotkey) end

--- 取消指定的用户绑定
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionname string
function ContextActionService:UnbindContext(actionname) end

--- 移除所有的函数绑定
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
function ContextActionService:UnbindAllContext() end

--- lua回调函数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param state UserInputState
---@param inputObject SandboxNode
function ContextActionService:CallFunction(actionName, state, inputObject) end

--- 绑定一个回调函数到指定输入上(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param func function
---@param nActionType number
---@param nSubType number
function ContextActionService:BindAction(actionName, func, nActionType, nSubType) end

--- 绑定一个回调函数到按钮事件(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param func function
---@param nActionType number
---@param nSubType number
function ContextActionService:BindActionWithButton(actionName, func, nActionType, nSubType) end

--- 绑定一个回调函数到指定输入上，并指定优先级(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
---@param func function
---@param priority number
---@param nActionType number
---@param nSubType number
function ContextActionService:BindActionAtPriority(actionName, func, priority, nActionType, nSubType) end

--- 取消指定的用户绑定(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
---@param actionName string
function ContextActionService:UnbindAction(actionName) end

--- 移除所有的函数绑定(准备废弃接口，不推荐使用了，推荐使用 BindContext 这套新接口)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/ContextActionService.html
function ContextActionService:UnbindAllActions() end

return ContextActionService
