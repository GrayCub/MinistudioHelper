---@meta

--- 输入框组件。用于在UI中输入文本内容
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UITextInput.html
---@class UITextInput : UIComponent
---@field TitleColor ColorQuad @文本颜色设置。控制输入框中显示文本的颜色，默认值为黑色(0,0,0,255)
---@field TextVAlignment TextVAlignment @文本垂直对齐方式。默认值为顶部对齐
---@field TextHAlignment TextHAlignment @文本水平对齐方式。默认值为左对齐
---@field MaxLength number @最大输入文本长度限制。超过此长度的输入将被截断，默认值为18个字符
---@field FontSize number @文本字体大小。取值范围为1-120，默认值为18
---@field Title string @输入框文本内容
---@field Return SBXSignal @输入完成事件。当用户在输入框中完成输入操作（如按回车键或失去焦点）时触发此事件
local UITextInput = {}

return UITextInput
