---@meta

--- UI约束和布局类别的基类。提供UI组件的基础功能，包括位置、大小、旋转、布局关系等核心属性。UI的屏幕坐标系最小尺寸为1280x720，实际坐标系大小=(max(设备分辨率宽度,1280),max(设备分辨率高度,720))，坐标原点(0,0)位于屏幕左上角，X轴向右为正，Y轴向下为正
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIComponent.html
---@class UIComponent : UIBase
---@field Size Vector2 @UI节点尺寸大小。控制UI组件的宽度和高度
---@field Scale Vector2 @UI节点缩放比例。控制UI组件在X轴和Y轴上的缩放倍数，默认值为(1,1)
---@field Rotation number @UI节点旋转角度。控制UI组件绕Z轴旋转的角度，单位为度（°）
---@field Position Vector2 @UI节点位置。控制UI组件相对于父节点的位置坐标
---@field Pivot Vector2 @UI节点轴点。控制UI组件变换（旋转、缩放、位置）的基准点，取值范围为(0,0)到(1,1)，其中(0,0)表示左上角，(0.5,0.5)表示中心，(1,1)表示右下角。默认值为(0.5,0.5)表示中心点
---@field IsKeepPosWhenPivotChange boolean @改变轴点时是否保持UI组件的位置属性变化。默认值为false，改变轴点后UI组件的位置属性保持不变
---@field LineColor ColorQuad @UI节点边框颜色。RGBA格式，控制UI组件边框的颜色和透明度
---@field FillColor ColorQuad @UI节点填充颜色。RGBA格式，控制UI组件背景的填充颜色和透明度
---@field LineSize number @UI节点边框宽度。控制UI组件边框的粗细，单位为屏幕坐标，默认值为0
---@field ClickPass boolean @是否将点击事件穿透给场景。默认值为false，不将点击事件穿透给场景
---@field LayoutHRelation LayoutHRelation @水平布局关联方式。包括左关联、中线关联和右关联。设置后，当父节点（若父节点为UIRoot则为屏幕）变化时，UI与关联位置的相对距离将保持不变
---@field LayoutVRelation LayoutVRelation @垂直布局关联方式。包括上关联、中线关联和下关联。设置后，当父节点（若父节点为UIRoot则为屏幕）变化时，UI与关联位置的相对距离将保持不变
---@field LayoutSizeRelation LayoutSizeRelation @尺寸布局关联方式。包括宽度关联、高度关联和全尺寸关联。当父节点尺寸改变时，UI组件尺寸会相应变化
---@field Active boolean @是否激活UI组件响应触摸事件。默认值为true，UI组件会响应触摸事件
---@field Grayed boolean @是否灰化。当为true时，UI组件会显示为灰化状态，通常用于表示禁用状态
---@field Alpha number @UI节点透明度。取值范围0.0-1.0，0.0为完全透明，1.0为完全不透明
---@field IsTouchEventBlocked boolean @是否阻止触摸、点击事件向父节点传递。默认值为true，触摸、点击事件不会传递给父节点
---@field RollOver SBXSignal @当鼠标进入UI组件范围时触发的事件
---@field RollOut SBXSignal @当鼠标离开UI组件范围时触发的事件
---@field TouchBegin SBXSignal @当开始触摸UI组件时触发的事件
---@field TouchEnd SBXSignal @当结束触摸UI组件时触发的事件
---@field TouchMove SBXSignal @当在UI组件上移动触摸时触发的事件
---@field Click SBXSignal @当点击UI组件时触发的事件
local UIComponent = {}

--- 获取UI组件的屏幕坐标
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIComponent.html
---@return Vector2
function UIComponent:GetGlobalPos() end

return UIComponent
