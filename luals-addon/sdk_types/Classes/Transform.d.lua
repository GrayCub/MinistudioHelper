---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@class Transform : SandboxNode
---@field Position Vector3 @全局坐标
---@field Euler Vector3 @全局欧拉角
---@field Rotation Quaternion @全局旋转
---@field LocalPosition Vector3 @局部坐标
---@field LocalEuler Vector3 @局部欧拉角
---@field CubeBorderEnable boolean @立方体边框是否被禁止
---@field Layer LayerIndexDesc @灯光层级
---@field ForwardDir Vector3 @看向指定方向
---@field InheritParentVisible boolean @是否跟随父节点显示或者隐藏，不影响visible属性
---@field Scale Vector3 @全局大小
---@field Locked boolean @是否场景操作选中
local Transform = {}

--- 获取渲染世界位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@return Vector3
function Transform:GetRenderPosition() end

--- 获取渲染世界旋转
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@return Quaternion
function Transform:GetRenderRotation() end

--- 获取渲染世界欧拉角
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@return Vector3
function Transform:GetRenderEuler() end

--- 设置本地位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetLocalPosition(x, y, z) end

--- 设置本地缩放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetLocalScale(x, y, z) end

--- 设置本地欧拉角
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetLocalEuler(x, y, z) end

--- 设置全局位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetWorldPosition(x, y, z) end

--- 设置全局缩放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetWorldScale(x, y, z) end

--- 设置全局欧拉角
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x number
---@param y number
---@param z number
function Transform:SetWorldEuler(x, y, z) end

--- 看向指定位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x Vector3
---@param y boolean
function Transform:LookAt(x, y) end

--- 看向指定位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/Transform.html
---@param x SceneTransObject*
---@param y boolean
function Transform:LookAtObject(x, y) end

return Transform
