---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/InputObject.html
---@class InputObject : SandboxNode
---@field Delta Vector2 @时间增量
---@field Position Vector3 @鼠标相关的事件中，描述鼠标的位置
---@field KeyCode number @按键事件触发时，对应的按键码，等于枚举UserInputKeyCode中的某个值
---@field UserInputState number @描述输入状态（开始，结束等）等于枚举UserInputState中的某个值
---@field UserInputType number @描述输入的类型 等于枚举UserInputType中的某个值
---@field TouchId number @触摸事件触发
local InputObject = {}

--- 按键是否按下
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/InputObject.html
---@param vkey number
---@return boolean
function InputObject:IsModifierKeyDown(vkey) end

--- 获取触摸次数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/InputObject.html
---@return number
function InputObject:GetTouchCount() end

--- 获取触摸事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Input/InputObject.html
---@param index number
---@return table
function InputObject:GetTouch(index) end

return InputObject
