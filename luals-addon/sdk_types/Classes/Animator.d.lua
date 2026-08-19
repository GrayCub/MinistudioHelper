---@meta

--- 动画控制器，提供基于状态机的动画播放控制，用于管理复杂的动画逻辑和状态转换。通过AnimatorController资源定义动画状态机，包括动画状态、状态转换条件、动画参数（Float、Int、Bool、Trigger）和动画层（Layer）等。支持根据参数值自动进行状态转换、动画混合、动画层叠加等高级功能。与自定义动画系统（Animation）的区别在于：Animation系统直接通过动画切片名称播放动画，适合简单的动画播放场景；Animator系统通过状态机控制动画，适合需要复杂动画逻辑、条件判断和状态转换的场景
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@class Animator : AnimatorBase
---@field Pause boolean @是否暂停动画播放，设置为true时暂停所有动画播放，false时恢复播放。默认值为false
---@field SkeletonAsset string @骨骼资源路径，用于指定动画绑定的骨骼模型，骨骼资源定义了动画的骨骼层次结构。当设置了骨骼资源时，系统会加载骨骼资源并将其应用到动画控制器，确保骨骼动画能正确驱动模型的网格变形。如果不设置此参数，系统将使用模型自带的骨骼。默认值为空字符串。
---@field ControllerAsset string @动画控制器资源类型和路径，用于指定动画状态机配置文件，控制器资源定义了动画的状态、过渡和参数。默认值为空字符串。
---@field Speed number @动画控制器的全局播放速度倍数，用于控制整个动画控制器的播放快慢，影响所有动画层的播放速度。1.0表示正常速度，小于1.0表示慢速播放，大于1.0表示快速播放。默认值为1.0
---@field SkipSampleRate number @将指定状态设置到指定的标准化时间位置，用于跳转到动画的特定时间点。此方法会立即将状态跳转到指定位置并开始播放，不会进行过渡
---@field CullingMode number @动画剔除模式，用于控制当模型不可见时动画系统的行为。可选值：0（不剔除）、1（剔除IK重定向写入）、2（完全剔除）。默认值为0
---@field FixedTickTime number @固定最大Tick时间，用于限制动画更新的最大时间步长，防止在帧率波动时动画更新过快。默认值为0.0，表示不限制。当设置为大于0的值时，单次动画更新的最大时间步长将被限制为该值
---@field ModelWaitForLoaded boolean @是否等待模型加载完成后再显示模型，用于控制模型加载时的渲染可见性。默认值为false，即不等待模型加载完成后再显示模型
---@field EventNotify SBXSignal @当动画状态机状态发生变化时触发的通知事件，用于响应状态进入、退出、更新等状态机消息
---@field GetAnimationPostNotify SBXSignal @当动画姿态计算完成时触发的通知事件，用于响应动画每一帧的姿态更新完成
---@field UpdateAssetNotify SBXSignal @当动画资源更新时触发的通知事件，用于响应动画切片资源的加载或更新状态
local Animator = {}

--- 清空所有持有的动画资源，包括动画控制器和骨骼资源，并停止所有动画播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
function Animator:Clear() end

--- 检测动画控制器是否有效，用于判断底层动画数据是否已经失效或不可用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@return boolean
function Animator:IsValid() end

--- 设置动画控制器资源节点，用于指定动画状态机配置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param node SandboxNode
function Animator:SetControllerAsset(node) end

--- 获取当前持有的动画控制器资源节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@return SandboxNode
function Animator:GetControllerAsset() end

--- 获取当前持有的骨骼资源节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@return SandboxNode
function Animator:GetSkeleton() end

--- 设置骨骼资源节点，用于指定动画绑定的骨骼模型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param node SandboxNode
function Animator:SetSkeleton(node) end

--- 在指定动画层播放指定的动画状态，从指定的标准化偏移位置开始播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param name string
---@param layer number
---@param normalized number
function Animator:Play(name, layer, normalized) end

--- 使用交叉淡入淡出效果切换到指定动画状态，实现平滑的动画过渡
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateName string
---@param layer number
---@param transitionTotal number
---@param transitionOffset number
function Animator:CrossFade(stateName, layer, transitionTotal, transitionOffset) end

--- 设置动画控制器中浮点数类型参数的值，用于控制动画状态的切换条件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@param value number
function Animator:SetFloat(key, value) end

--- 设置动画控制器中整数类型参数的值，用于控制动画状态的切换条件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@param value number
function Animator:SetInt(key, value) end

--- 设置动画控制器中布尔类型参数的值，用于控制动画状态的切换条件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@param value boolean
function Animator:SetBool(key, value) end

--- 触发动画控制器中的触发器参数，用于触发一次性动画状态切换事件，触发后自动重置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
function Animator:SetTrigger(key) end

--- 获取动画控制器中浮点数类型参数的当前值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@return number
function Animator:GetFloat(key) end

--- 获取动画控制器中整数类型参数的当前值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@return number
function Animator:GetInt(key) end

--- 获取动画控制器中布尔类型参数的当前值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@return boolean
function Animator:GetBool(key) end

--- 获取动画控制器中触发器参数的当前状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param key string
---@return boolean
function Animator:GetTrigger(key) end

--- 获取动画控制器中动画层的总数量
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@return number
function Animator:GetLayerCount() end

--- 将动画重置到T-Pose状态，用于重置角色的骨骼姿态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param bool boolean
function Animator:ResetToTPose(bool) end

--- 设置指定动画层的混合权重值，用于控制该层动画与其他层动画混合时的权重比例
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param layer number
---@param value number
function Animator:SetLayerWeight(layer, value) end

--- 获取指定动画层的混合权重值，用于查询该层动画的当前权重
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param layer number
---@return number
function Animator:GetLayerWeight(layer) end

--- 设置目标骨骼相对于基础骨骼的变换，包括位置、旋转和缩放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param targetBoneNode SandboxNode
---@param baseBoneNode SandboxNode
---@param translate Vector3
---@param rotation Vector3
---@param scale Vector3
function Animator:SetBoneTransform(targetBoneNode, baseBoneNode, translate, rotation, scale) end

--- 设置指定骨骼在模型空间中的旋转，使用欧拉角表示
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param boneName string
---@param pitch number
---@param yaw number
---@param roll number
function Animator:SetBoneModelSpaceRotate(boneName, pitch, yaw, roll) end

--- 获取指定动画状态的已播放时间，用于查询状态的播放进度
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateFullName string
---@return number
function Animator:GetStatePlayedTime(stateFullName) end

--- 获取指定动画层当前正在播放的状态的已播放时间，用于查询当前状态的播放进度
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param layerIdx number
---@return number
function Animator:GetCurrentStatePlayedTime(layerIdx) end

--- 将指定状态设置到指定的标准化时间位置，用于跳转到动画的特定时间点。此方法会立即将状态跳转到指定位置并开始播放，不会进行过渡
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateFullName string
---@param normalizedTime number
---@return boolean
function Animator:SetStateAtNormlizedTime(stateFullName, normalizedTime) end

--- 设置指定状态的暂停状态，用于暂停或恢复特定状态的动画播放，不影响其他状态的播放。暂停时状态的播放速度为0，恢复时播放速度恢复为1.0
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateFullName string
---@param isPause boolean
---@return boolean
function Animator:SetStateIsPause(stateFullName, isPause) end

--- 获取指定状态绑定的动画切片的时长（以秒为单位），用于查询动画的播放时长
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateFullName string
---@return number
function Animator:GetClipLength(stateFullName) end

--- 使用平滑交叉淡入淡出效果切换到指定动画状态，实现更平滑的动画过渡。与CrossFade的区别在于使用平滑模式，过渡效果更加自然流畅
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param stateName string
---@param layer number
---@param transitionTotal number
---@param transitionOffset number
function Animator:CrossFadeSmooth(stateName, layer, transitionTotal, transitionOffset) end

--- 获取指定动画层中所有状态的完整路径名称列表，包括该层的主状态机和所有子状态机中的状态。用于查询和枚举指定层的所有可用状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animator.html
---@param layer number
---@return table
function Animator:GetlayerStateFullNames(layer) end

return Animator
