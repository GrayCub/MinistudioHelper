---@meta

--- 文本组件。用于在UI中显示文本内容
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UITextLabel.html
---@class UITextLabel : UIComponent
---@field TitleColor ColorQuad @文本颜色设置。控制文本标签中显示文字的颜色，默认值为黑色(0,0,0,255)
---@field TextVAlignment TextVAlignment @文本垂直对齐方式
---@field TextHAlignment TextHAlignment @文本水平对齐方式
---@field FontSize number @文本字体大小。取值范围1-120，默认值为18
---@field Title string @文本内容
---@field IsAutoSize AutoSizeType @是否启用自动调整文本大小。控制文本标签是否根据文本内容自动调整节点大小，默认值为不启用自动调整文本大小
---@field OutlineEnable boolean @是否启用文本描边效果。控制文本是否显示描边边框，默认值为关闭
---@field OutlineColor ColorQuad @描边颜色设置。默认值为黑色(0,0,0,255)
---@field OutlineSize number @文本描边边框宽度设置。默认值为1
---@field ShadowEnable boolean @是否启用文本阴影效果。默认值为关闭
---@field ShadowColor ColorQuad @阴影颜色设置。默认值为黑色(0,0,0,255)
---@field ShadowOffset Vector2 @阴影偏移设置。控制文本阴影相对于文本的偏移位置，默认值为(0,0)
---@field RichText boolean @是否启用富文本模式。默认值为关闭
---@field LineSpacing number @行间距设置。默认值为3
---@field AutoTranslator boolean @是否启用自动翻译功能。控制文本是否根据当前语言设置自动翻译，默认值为关闭
---@field LetterSpacing number @字符间距设置。控制文本中各个字符之间的水平间距，默认值为0
local UITextLabel = {}

--- 获取文本实际尺寸。返回当前文本内容渲染后的实际宽度和高度
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UITextLabel.html
---@return Vector2
function UITextLabel:GetTextSize() end

return UITextLabel
