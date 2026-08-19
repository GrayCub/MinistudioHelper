---@meta

--- 内置动画系统，提供基于整数动画ID的播放控制，支持优先级、权重、循环模式等。使用沙盒系统内置模型的动画资源，通过动画ID直接调用底层内置动画系统，无需预先加载动画资源文件。与自定义动画系统（Animation）的区别在于：自定义动画系统通过动画切片名称标识和播放外部加载的动画资源，需要先添加动画切片资源才能播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@class LegacyAnimation : AnimatorBase
---@field EnablePlayEvent boolean @是否启用动画播放事件通知，当设置为true时，动画播放时会触发PlayEvent事件。默认值为false
---@field PlayEvent SBXSignal @当动画播放状态发生变化时触发的事件通知，用于监听动画的开始、结束和循环完成等状态变化。需要先启用EnablePlayEvent属性才能接收此事件
local LegacyAnimation = {}

--- 检测动画系统是否有效，用于判断底层动画数据是否已经失效或不可用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@return boolean
function LegacyAnimation:IsValid() end

--- 获取当前所有正在播放或已注册的动画序列ID列表
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@return table
function LegacyAnimation:GetAnimationIDs() end

--- 获取指定动画序列的播放优先级，优先级越高，动画在混合时会获得更大的权重
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param seqid number
---@return number
function LegacyAnimation:GetAnimationPriority(seqid) end

--- 设置指定动画序列的播放优先级，用于控制动画混合时的权重分配
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param seqid number
---@param value number
function LegacyAnimation:SetAnimationPriority(seqid, value) end

--- 获取指定动画序列的混合权重值，用于查询动画在混合时的权重比例
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param seqid number
---@return number
function LegacyAnimation:GetAnimationWeight(seqid) end

--- 设置指定动画序列的混合权重值，用于控制动画与其他动画混合时的权重比例
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param seqid number
---@param value number
function LegacyAnimation:SetAnimationWeight(seqid, value) end

--- 播放指定ID的动画序列，使用指定的播放速度和循环模式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param id number
---@param speed number
---@param loop number
---@return boolean
function LegacyAnimation:Play(id, speed, loop) end

--- 播放指定ID的动画序列，支持设置播放速度、循环模式、优先级和权重等完整参数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param id number
---@param speed number
---@param loop number
---@param priority number
---@param weight number
---@return boolean
function LegacyAnimation:PlayEx(id, speed, loop, priority, weight) end

--- 停止指定ID的动画序列播放，如果动画正在播放则立即停止
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param id number
---@return boolean
function LegacyAnimation:Stop(id) end

--- 停止指定ID的动画序列播放，支持是否重置动画状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param id number
---@param reset boolean
---@return boolean
function LegacyAnimation:StopEx(id, reset) end

--- 停止所有正在播放的动画序列
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/LegacyAnimation.html
---@param reset boolean
---@return boolean
function LegacyAnimation:StopAll(reset) end

return LegacyAnimation
