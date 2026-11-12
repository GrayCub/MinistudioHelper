---@meta

---@class BoneNode : SandboxNode
---@field LocalPosition Vector3 局部位置
---@field LocalEuler Vector3 局部欧拉
---@field LocalScale Vector3 局部比例
---@field LocalRotation Quaternion 局部旋转
local BoneNode = {}

--- 通过骨骼名获取骨骼节点
---@param name string
---@return BoneNode
function BoneNode:GetBoneNode(name) end

--- 获取父骨骼节点
---@return BoneNode
function BoneNode:GetParentBoneNode() end

return BoneNode
