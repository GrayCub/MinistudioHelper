---@meta

--- 骨骼动画系统，继承自自定义动画系统（Animation），专门用于播放骨骼动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/SkeletonAnimation.html
---@class SkeletonAnimation : Animation
---@field SkeletonAsset string @骨骼资源路径
local SkeletonAnimation = {}

--- 检测骨骼动画系统是否有效，用于判断底层动画数据是否已经失效或不可用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/SkeletonAnimation.html
---@return boolean
function SkeletonAnimation:IsValid() end

--- 设置骨骼资源节点，用于指定动画绑定的骨骼模型。骨骼资源定义了动画的骨骼层次结构，确保骨骼动画能正确驱动模型的网格变形
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/SkeletonAnimation.html
---@param node SandboxNode
function SkeletonAnimation:SetSkeleton(node) end

--- 根据资源类型和路径更新骨骼资源，会重新加载骨骼模型并应用到动画系统
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/SkeletonAnimation.html
---@param resType AssetResType
---@param url string
function SkeletonAnimation:UpdateSkeleton(resType, url) end

return SkeletonAnimation
