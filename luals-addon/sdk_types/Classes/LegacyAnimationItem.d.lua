---@meta

--- 内置动画项节点，需要挂载在LegacyAnimation节点下使用，用于管理单个内置动画序列的播放状态，包括播放状态、动画ID、速度、循环模式、优先级和权重等属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimationItem.html
---@class LegacyAnimationItem : SandboxNode
---@field Play boolean @控制动画项是否处于播放状态，设置为true时开始播放动画，false时停止播放。默认值为false
---@field AnimationID number @内置动画的序列ID，用于标识要播放的动画序列，ID为0表示未设置动画。当改变动画ID时，如果之前有动画正在播放，会自动停止旧动画。动画ID是沙盒系统内置模型的整数标识符，直接调用内置动画资源，无需加载外部文件。具体可用的动画ID请参考LegacyAnimation类的文档
---@field Speed number @动画的播放速度倍数，数值越大播放越快，1.0表示正常速度，小于1.0表示慢速播放，大于1.0表示快速播放。默认值为1.0
---@field LoopMode LegacyAnimationLoop @动画的循环播放模式，控制动画播放结束后的行为，包括循环播放、单次播放和单次播放后停止等模式
---@field Priority number @动画的播放优先级，数值越大优先级越高，当多个动画同时播放时，高优先级的动画会覆盖低优先级的动画，当优先级相同时，节点树顺序靠后的动画会覆盖顺序靠前的动画。默认值为1
---@field Weight number @动画的混合权重值，用于控制动画与其他动画混合时的权重比例，范围通常在0.0到1.0之间，1.0表示完全权重。默认值为1.0。使用前提：1)节点必须挂载在LegacyAnimation节点下；2)AnimationID必须已设置（不为0）；3)动画系统必须有效（已绑定到有效的模型节点）。权重主要用于多个动画同时播放时的混合场景，当只有一个动画播放时权重作用不明显
local LegacyAnimationItem = {}

return LegacyAnimationItem
