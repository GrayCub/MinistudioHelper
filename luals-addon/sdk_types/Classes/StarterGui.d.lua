---@meta

--- 全局服务节点，提供通用服务节点的基类。注：设置父节点必须是 GameNode
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/StarterGui.html
---@class StarterGui : SandboxNode
---@field IsRockerEnable boolean @摇杆是否启用
---@field WalkZone number @步行区
---@field BackGroundIcon string @背景图标
---@field DotIcon string @点图标
---@field DotScale number @点比例
---@field InactiveAlpha number @透明度是否激活
---@field Alpha number @透明度
---@field RockerPosition Vector2 @摇杆位置
---@field RockerSize Vector2 @摇杆尺寸
---@field BackGroundScaleType ScaleType @背景比例尺类型
---@field BackGroundSliceCenter Vector4 @背景切片中心
---@field DotScaleType ScaleType @点刻度类型
---@field DotSliceCenter Vector4 @点切片中心
---@field JumpIcon string @跳转图标
---@field JumpIconShow boolean @跳转图标显示
---@field NotifyRockerChange SBXSignal @摇杆切换会触发一个事件
local StarterGui = {}

return StarterGui
