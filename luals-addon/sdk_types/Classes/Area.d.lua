---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Area.html
---@class Area : SandboxNode
---@field Beg Vector3 @起始位置世界坐标
---@field End Vector3 @结束位置世界坐标
---@field EffectWidth number @效果宽度
---@field Show boolean @是否显示
---@field ShowMode SceneEffectFrameShowMode @显示模式的枚举
---@field Color ColorQuad @区域颜色
---@field EnterNode SBXSignal @节点进入该区域时触发
---@field LeaveNode SBXSignal @节点离开该区域时触发
local Area = {}

return Area
