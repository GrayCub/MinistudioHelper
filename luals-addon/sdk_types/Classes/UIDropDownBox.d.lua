---@meta

--- UI下拉框组件。提供下拉选择功能，用户可以从预定义的选项列表中选择一个值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@class UIDropDownBox : UIComponent
---@field TitleColor ColorQuad @下拉框文本颜色。RGBA格式，控制下拉框显示文本的颜色和透明度
---@field TitleFontSize number @下拉框文本字体大小。控制下拉框显示文本的字体大小，取值范围：1-120，默认18
---@field SelectedIndex number @当前选中的选项索引。控制下拉框当前选中的选项，从0开始计数，-1表示未选中，默认值为-1
---@field SelectIndexChange SBXSignal @选项索引切换事件。当下拉框选中的选项发生变化时触发
local UIDropDownBox = {}

--- 获取下拉框当前选中项的value值。返回当前选中选项对应的value值，如果没有选中项则返回空字符串
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@return string
function UIDropDownBox:GetValue() end

--- 获取下拉框当前选中项的key值。返回当前选中选项对应的key值，如果没有选中项则返回空字符串
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@return string
function UIDropDownBox:GetItem() end

--- 向下拉框添加一个带value值的选项。同时设置选项的显示文本和对应的值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param item string
---@param value string
---@return number
function UIDropDownBox:AddItemWithValue(item, value) end

--- 向下拉框添加一个选项。添加选项时value值默认为空字符串
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param item string
---@return number
function UIDropDownBox:AddItem(item) end

--- 通过索引移除下拉框中的指定选项。移除指定索引位置的选项，后续选项的索引会自动调整
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param index number
function UIDropDownBox:RemoveItem(index) end

--- 通过索引获取下拉框中item的key值。根据索引获取对应item的key值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param index number
---@return string
function UIDropDownBox:GetItemByIndex(index) end

--- 通过索引获取下拉框中item的value值。根据索引获取对应item的value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param index number
---@return string
function UIDropDownBox:GetValueByIndex(index) end

--- 通过item的key值查找对应的索引。根据item的key值查找其在列表中的索引位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIDropDownBox.html
---@param item string
---@return number
function UIDropDownBox:GetIndexByItem(item) end

return UIDropDownBox
