---@meta

--- 自定义动画系统，提供基于动画切片（Clip）的播放控制，支持播放、停止、混合、交叉淡入淡出等高级动画功能，以及同步和复制功能。使用自定义的动画资源文件，通过动画切片名称来标识和播放动画，需要先添加动画切片资源才能播放。支持的资源类型包括：.anim文件和.skanim文件。与内置动画系统（LegacyAnimation）的区别在于：内置动画系统通过整数动画ID直接调用系统预置的动画资源，无需加载外部文件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@class Animation : AnimatorBase
local Animation = {}

--- 检测动画系统是否有效，用于判断底层动画数据是否已经失效或不可用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@return boolean
function Animation:IsValid() end

--- 清空所有持有的动画资源，移除所有动画切片并释放相关资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
function Animation:Clear() end

--- 检测指定名称的动画切片是否正在播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@return boolean
function Animation:IsPlaying(name) end

--- 停止指定名称的动画切片播放，如果切片正在播放则立即停止
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
function Animation:Stop(name) end

--- 设置指定动画切片的播放速度倍数，用于控制动画播放的快慢
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@param speed number
function Animation:SetSpeed(name, speed) end

--- 将指定动画切片重置到第一帧并从头开始播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
function Animation:Rewind(name) end

--- 设置指定动画切片的环绕模式，用于控制动画在播放到边界时的行为方式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@param wrap WrapMode
function Animation:SetWrapMode(name, wrap) end

--- 获取当前动画系统持有的所有动画切片资源节点列表
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@return SandboxNode
function Animation:GetClips() end

--- 设置当前动画系统持有的动画切片资源列表，会替换所有现有的动画切片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param assets SandboxNode
function Animation:SetClips(assets) end

--- 根据资源类型和路径数组更新动画切片资源列表，会替换所有现有的动画切片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param resType AssetResType
---@param urls table
function Animation:UpdateClips(resType, urls) end

--- 设置默认动画切片资源，当没有指定切片名称时会使用默认切片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param node SandboxNode
function Animation:SetDefaultClip(node) end

--- 根据资源类型和路径更新默认动画切片资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param resType AssetResType
---@param url string
function Animation:UpdateDefaultClip(resType, url) end

--- 播放指定名称的动画切片，使用指定的播放模式控制播放行为
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@param playMode PlayMode
function Animation:Play(name, playMode) end

--- 设置指定动画切片的混合权重，并在指定时间内平滑过渡到目标权重值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@param targetWeight number
---@param time number
function Animation:Blend(name, targetWeight, time) end

--- 设置指定动画切片的交叉淡入淡出效果，用于平滑切换动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param name string
---@param targetWeight number
---@param playMode PlayMode
function Animation:CrossFade(name, targetWeight, playMode) end

--- 添加一个新的动画切片到动画系统，使用指定的资源节点、名称和帧范围
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param node SandboxNode
---@param name string
---@param firstFrame number
---@param lastFrame number
---@param loop boolean
function Animation:AddClip(node, name, firstFrame, lastFrame, loop) end

--- 根据资源类型和路径更新指定名称的动画切片，修改其资源、帧范围和循环设置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param resType AssetResType
---@param url string
---@param name string
---@param firstFrame number
---@param lastFrame number
---@param loop boolean
function Animation:UpdateClip(resType, url, name, firstFrame, lastFrame, loop) end

--- 按名称移除一个动画切片，如果切片正在播放会先停止播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param clipname string
function Animation:RemoveClip(clipname) end

--- 获取是否启用自动播放功能，当启用时动画会在资源加载完成后自动开始播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@return boolean
function Animation:GetAutoPlay() end

--- 设置是否启用自动播放功能，当设置为true时，动画会在资源加载完成后自动开始播放默认动画切片
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/Animation.html
---@param autoPlay boolean
function Animation:SetAutoPlay(autoPlay) end

return Animation
