---@meta

--- 动画层项节点，需要挂载在Animator节点下使用，用于管理动画层中单个状态的信息，包括层的索引、权重、状态名称和播放参数等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorLayerItemNode.html
---@class AnimatorLayerItemNode : SandboxNode
---@field Index number @动画层的索引值，用于指定要控制的动画层，索引从0开始计数。当改变层索引时，会自动重新播放对应的状态
---@field Weight number @动画层的混合权重值，用于控制该层动画与其他层动画混合时的权重比例，范围通常在0.0到1.0之间，1.0表示完全权重。默认值为1.0
---@field StateName string @动画层中要播放的状态名称，用于指定该层要进入的动画状态。当改变状态名称时，会自动重新播放对应的状态
---@field NormaliedOffset number @动画状态的标准化偏移量，用于指定动画播放的起始位置，范围在0.0到1.0之间，0.0表示从第一帧开始，1.0表示从最后一帧开始。当改变偏移量时，会自动重新播放对应的状态
local AnimatorLayerItemNode = {}

return AnimatorLayerItemNode
