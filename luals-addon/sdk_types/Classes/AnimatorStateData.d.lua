---@meta

--- 动画状态数据节点，用于访问动画状态机的状态信息。只能通过Animator类的EventNotify事件的statedata参数获取。主要用于获取状态名称、设置状态播放速度、监听特定状态的事件等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorStateData.html
---@class AnimatorStateData : SandboxNode
---@field Speed number @动画状态的播放速度倍数，用于控制该状态的播放快慢，1.0表示正常速度，小于1.0为慢速，大于1.0为快速。默认值为1.0
---@field EventNotify SBXSignal @当动画状态机状态发生变化时触发的通知事件，用于响应状态进入、退出、更新等状态机消息
local AnimatorStateData = {}

--- 清空所有持有的状态数据资源，释放相关引用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorStateData.html
function AnimatorStateData:Clear() end

--- 检测动画状态数据是否有效，用于判断底层状态数据是否已经失效或不可用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorStateData.html
---@return boolean
function AnimatorStateData:IsValid() end

--- 获取状态的完整路径名称，包括状态所属的层和状态机层级路径，例如"BaseLayer.Idle"
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorStateData.html
---@return string
function AnimatorStateData:GetFullName() end

return AnimatorStateData
