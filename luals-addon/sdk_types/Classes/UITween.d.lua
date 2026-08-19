---@meta

--- 补间动画执行对象，用于对节点属性进行插值动画并控制动画播放。UITween对象只能通过TweenService:Create方法创建，不能使用SandboxNode.new直接创建。UITween支持多种缓动风格和缓动方向，可以实现各种动画效果。UITween在播放或暂停期间如果修改了目标节点的属性值，这些修改不会影响动画的播放，因为动画使用创建时保存的起始值（start）和目标值（end）进行插值，而不是每帧从节点读取当前值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/UITween.html
---@class UITween : SandboxNode
---@field Completed SBXSignal @补间动画完成或取消时触发的事件通知。当UITween播放完成（状态变为Completed）或被取消（状态变为Canceled）时，会触发此事件并传递当前状态。开发者可以通过监听此事件来执行动画完成后的回调逻辑，例如播放下一个动画、更新UI状态等
local UITween = {}

--- 开始播放补间动画。如果UITween处于初始状态（Begin）、取消状态（Canceled）、暂停状态（Paused）或完成状态（Completed），调用此方法会重新开始播放动画。播放时会重置动画时间，如果TweenInfo中设置了延迟时间，会先进入延迟状态（Delayed），然后进入播放状态（Playing）。如果新UITween与已存在的UITween作用于相同节点的相同属性，播放新UITween时会自动取消旧的UITween
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/UITween.html
function UITween:Play() end

--- 暂停补间动画的播放。如果UITween当前正在播放（Playing）或处于延迟状态（Delayed），调用此方法会将状态设置为暂停（Paused），动画会停止更新目标节点的属性值。暂停后可以通过Resume方法恢复播放
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/UITween.html
function UITween:Pause() end

--- 恢复暂停的补间动画播放。如果UITween当前处于暂停状态（Paused），调用此方法会恢复播放。如果还有剩余的延迟时间，会先进入延迟状态（Delayed），否则直接进入播放状态（Playing）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/UITween.html
function UITween:Resume() end

--- 取消补间动画的播放。调用此方法会立即停止动画播放，将状态设置为取消（Canceled），并触发Completed事件（传递Canceled状态）。取消后动画不会更新目标节点的属性值到目标值，属性值会停留在当前插值位置。如果UITween已经处于取消状态，此方法不会再次触发Completed事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/UITween.html
function UITween:Cancel() end

return UITween
