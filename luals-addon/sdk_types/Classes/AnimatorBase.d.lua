---@meta

--- 动画基类，提供动画播放的基础功能。是所有动画相关类的父类，为动画系统提供统一的接口和基础能力
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorBase.html
---@class AnimatorBase : SandboxNode
---@field ValidNotify SBXSignal @当动画有效性状态发生变化时触发的通知事件，用于响应动画数据有效性的变化
local AnimatorBase = {}

--- 检测动画基类是否有效，用于判断动画是否已绑定到有效的模型节点。当动画节点从父节点移除、父节点不是模型节点或模型节点被销毁时，动画会失效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorBase.html
---@return boolean
function AnimatorBase:IsValid() end

--- 创建一个新的空动画资源节点，用于存储和管理动画资源数据
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorBase.html
---@return SandboxNode
function AnimatorBase:NewAsset() end

--- 清理所有附加在动画上的特效对象，释放这些特效占用的内存资源。目前支持的特效类型包括：骨骼变换特效（AdditiveBoneTransform）。此方法不会清理动画资源本身（如动画切片、控制器等）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorBase.html
function AnimatorBase:ClearEffect() end

return AnimatorBase
