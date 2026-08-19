---@meta

--- 动画参数项节点，需要挂载在Animator节点下使用，用于控制动画控制器中的参数。支持浮点数、整数、布尔值和触发器四种类型的参数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimatorParamsItemNode.html
---@class AnimatorParamsItemNode : SandboxNode
---@field ParamName string @动画参数的名称，用于标识动画控制器中的参数，名称必须与动画控制器中定义的参数名称一致。当改变参数名称时，会自动更新对应的参数值
---@field ParamType AnimatorParameterType @动画参数的数据类型，包括浮点数、整数、布尔值和触发器四种类型。当改变参数类型时，会根据新类型重置参数值
---@field Float number @浮点数类型参数的值，仅在参数类型为Float时有效，数值范围没有限制。默认值为0.0f
---@field Int number @整数类型参数的值，仅在参数类型为Int时有效。用于控制动画的离散变化参数，默认值为0
---@field Bool boolean @布尔类型参数的值，仅在参数类型为Bool时有效。默认值为false
---@field Trigger boolean @触发器类型参数的值，仅在参数类型为Trigger时有效。设置为true时触发一次事件，触发后自动重置为false，用于触发一次性动画状态切换。默认值为false
local AnimatorParamsItemNode = {}

return AnimatorParamsItemNode
