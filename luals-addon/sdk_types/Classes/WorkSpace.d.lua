---@meta

--- 沙盒场景根节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/WorkSpace.html
---@class WorkSpace : SandboxNode
---@field CurrentCamera SandboxNode @当前场景相机节点
---@field SceneId unsignedshort @场景ID标识符。获取当前场景的唯一标识符，仅用于编辑器展示和调试，默认值为0
local WorkSpace = {}

--- 范围内查找模型节点。使用OverlapBox方法进行碰撞检测查找范围内的物体，并返回所有符合条件的模型节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/WorkSpace.html
---@param position Vector3
---@param radius number
---@return SandboxNode
function WorkSpace:FindModelsInRadius(position, radius) end

return WorkSpace
