---@meta

--- UI电影剪辑组件。用于在UI中播放动画序列
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIMovieClip.html
---@class UIMovieClip : UIComponent
---@field GifPath string @GIF动画资源路径。指定要播放的GIF动画文件的资源路径。推荐使用帧间隔稳定且每帧15ms的GIF动画，不稳定的帧间隔可能导致动画播放时出现闪烁或卡顿现象。
---@field AutoSize boolean @是否启用自适应尺寸。默认值为false，使用固定尺寸
---@field IsPlaying boolean @播放状态控制。控可以通过此属性动态控制动画的播放和暂停。默认值为false，不自动播放
---@field CilpFrame number @当前播放帧数。设置或获取当前播放的动画帧索引，从0开始计数。可以通过修改此值来跳转到指定帧，实现精确的动画控制。默认值为0
---@field RepeatDelay number @重复播放延迟时间。设置动画播放完成后到重新开始播放之间的延迟时间，单位为秒。默认值为0，无延迟
---@field DelayPer number @单帧播放延迟时间。设置每帧动画的显示持续时间，单位为秒。数值越小播放越快，数值越大播放越慢。默认值为0
---@field Swing boolean @摆动播放模式。启用后动画会正向播放完成后反向播放，形成来回摆动的效果。默认值为false，正常循环播放
---@field AddTexSuccess SBXSignal @当成功添加一张图片资源到动画序列时触发的事件。此事件在AddTex方法成功加载并添加图片资源后触发
local UIMovieClip = {}

--- 添加一张图片资源到动画序列
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIMovieClip.html
---@param value string
function UIMovieClip:AddTex(value) end

--- 清理动画序列所有的图片资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIMovieClip.html
function UIMovieClip:ClearTex() end

return UIMovieClip
