---@meta

--- UI按钮组件。用户可以通过鼠标悬停或单击按钮时修改按钮样式或触发按钮事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIButton.html
---@class UIButton : UIComponent
---@field Icon string @按钮图标资源路径
---@field Title string @按钮显示文本
---@field TitleSize number @按钮文本字体大小。取值范围：1-120，默认18
---@field AutoTranslator boolean @是否开启自动翻译，开启后Title文本会根据当前语言设置自动翻译。默认值为false，不开启自动翻译
---@field DownEffectValue number @按钮按下效果变化值。控制按下时颜色变暗程度或缩放比例，取值范围：0.0-1.0
---@field DownEffect DownEffect @按钮按下效果类型。定义按钮被按下时的视觉反馈效果
---@field Alpha number @按钮整体透明度。取值范围：0.0-1.0，0.0为完全透明，1.0为完全不透明
---@field OutlineEnable boolean @是否启用文本描边效果。默认值为false，不启用文本描边效果
---@field OutlineColor ColorQuad @文本描边颜色。RGBA格式，仅在OutlineEnable为true时生效
---@field OutlineSize number @文本描边宽度。默认值为1，仅在OutlineEnable为true时生效
---@field ShadowEnable boolean @是否启用文本阴影效果。默认值为false，不启用文本阴影效果
---@field ShadowColor ColorQuad @文本阴影颜色。RGBA格式，仅在ShadowEnable为true时生效
---@field ShadowOffset Vector2 @文本阴影偏移量。Vector2格式，仅在ShadowEnable为true时生效
---@field IsAutoSize boolean @是否自动调整按钮大小为图标图片的原始尺寸。默认值为false，不自动调整按钮大小
---@field IconColor ColorQuad @按钮图标颜色。RGBA格式，仅在IconEnable为true时生效
---@field ResourceSize Vector2 @图标资源原始尺寸。只读属性，显示加载的图片资源的原始宽高
---@field ScaleType ScaleType @按钮图片显示类型。控制图片在按钮中的显示方式：拉伸填充或九宫格缩放，默认值为Stretch
---@field Scale9Grid Vector4 @九宫格缩放参数。Vector4格式(x,y,width,height)，定义九宫格的中心区域，仅在ScaleType为Slice时生效
---@field TitleColor ColorQuad @按钮文本颜色。RGBA格式，控制按钮上显示文字的颜色
---@field TextVAlignment TextVAlignment @文本垂直对齐方式。控制文本在按钮中的垂直位置：顶部对齐、居中对齐或底部对齐，默认值为Center
---@field TextHAlignment TextHAlignment @文本水平对齐方式。控制文本在按钮中的水平位置：左对齐、居中对齐或右对齐，默认值为Center
---@field Press SandboxNode_Ref @按钮按下时的音效。可指定自定义的Sound节点，按下按钮时播放
---@field Release SandboxNode_Ref @按钮抬起时的音效。可指定自定义的Sound节点，抬起按钮时播放
local UIButton = {}

return UIButton
