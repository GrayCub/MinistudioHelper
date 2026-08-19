---@meta
---@diagnostic disable: missing-fields

---@class ContextActionResult : EnumValue<ContextActionResult>
---@field Value ContextActionResult
Enum.ContextActionResult = {
    ---@type ContextActionResult
    Sink = {}, -- Value = 0; 如果ContextActionService:BindAction的functionToBind返回了Enum.ContextActionResult.Sink，那么输入事件就会停止于该函数，而其他位于其下的绑定动作则不会停止。这是默认的行为，前提是 functionToBind 没有返回任何值或者没有产生任何结果
    ---@type ContextActionResult
    Pass = {}, -- Value = 1; 如果ContextActionService:BindAction的 functionToBind 返回了 Enum.ContextActionResult.Pass，那么就认为输入事件没有被 functionToBind 处理过，就会继续将输入事件传送到与相同的输入类型绑定的动作上。
}

