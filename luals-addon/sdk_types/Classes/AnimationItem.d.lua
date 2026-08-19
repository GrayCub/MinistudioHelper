---@meta

--- 自定义动画项节点，用于管理单个动画切片（Clip）的播放配置，包括切片名称、资源路径、帧范围、播放速度、环绕模式和播放模式等。自定义动画系统使用自定义的动画资源文件，通过动画切片名称来标识和播放动画，需要先添加动画切片资源才能播放。支持的资源类型包括：.anim文件和.skanim文件。与内置动画系统（LegacyAnimationItem）的区别在于：内置动画系统通过整数ID直接调用系统预置的动画资源，无需加载外部文件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/AnimationItem.html
---@class AnimationItem : SandboxNode
---@field Play boolean @控制动画项是否处于播放状态，设置为true时开始播放动画切片，false时停止播放。默认值为false
---@field ClipName string @自定义动画切片的名称，用于标识和管理动画切片，名称必须唯一。当改变切片名称时，如果之前有动画正在播放，会自动停止旧动画并加载新动画
---@field ClipResID string @动画切片的资源路径，用于指定要加载的动画资源。资源路径为空时表示未设置动画资源。当改变资源路径时，会自动重新加载动画切片
---@field FirstFrame number @动画切片的起始帧编号，用于指定动画播放的开始位置。如果帧编号不存在，则使用动画切片资源的默认起始帧。帧编号从0开始计数
---@field LastFrame number @动画切片的结束帧编号，用于指定动画播放的结束位置。如果帧编号不存在，则使用动画切片资源的默认结束帧。帧编号必须大于等于起始帧
---@field PlaySpeed number @动画切片的播放速度倍数，数值越大播放越快，1.0表示正常速度，小于1.0表示慢速播放，大于1.0表示快速播放。默认值为1.0
---@field WrapMode AnimationWrapMode @动画切片的环绕模式，用于控制动画在播放到边界时的行为方式。默认值为Enum.AnimationWrapMode.Default
---@field PlayMode AnimationPlayMode @动画切片的播放模式，用于控制播放新动画时的行为。默认值为Enum.AnimationPlayMode.StopSameLayer
local AnimationItem = {}

return AnimationItem
