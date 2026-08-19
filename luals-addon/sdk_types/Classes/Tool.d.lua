---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Tool.html
---@class Tool : SandboxNode
---@field CanBeDropped boolean @可否丢弃道具，默认不可以丢弃
---@field Enabled boolean @决定道具能否被使用，默认可以使用
---@field GripPos Vector3 @夹点位置
---@field GripEuler Vector3 @夹点的欧拉
---@field ToolTip string @道具提示信息
---@field TextureId string @默认快捷栏界面，显示的图标资源
---@field Index number @快捷栏下标
---@field ActivationOnly boolean @仅激活
---@field Activated SBXSignal @玩家已装备工具，点击鼠标左键时触发
---@field Deactivated SBXSignal @当鼠标左键松开时触发
---@field Equipped SBXSignal @当装备道具时触发
---@field Unequipped SBXSignal @当卸载道具时触发。
local Tool = {}

--- 已装备的的工具，模拟点击使用，会触发Activated事件。
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Tool.html
---@return boolean
function Tool:Activate() end

--- 模拟工具的结束使用。
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Tool.html
---@return boolean
function Tool:Deactivate() end

return Tool
