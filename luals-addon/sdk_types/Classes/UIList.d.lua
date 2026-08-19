---@meta

--- UI列表组件。用于显示和管理列表数据，支持多种布局方式、虚拟列表、滚动和填充效果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@class UIList : UIComponent
---@field OverflowType OverflowType @列表内容溢出处理方式。控制列表内容超出显示区域时的处理方式，决定滚动方向。需要与ScrollType配套使用才能达到预期效果。默认值为VISIBLE，溢出部分正常显示
---@field ScrollType ListLayoutType @列表布局类型。控制列表项目的排列方式，决定内容扩展方向，需要与OverflowType配套使用才能达到预期效果。默认值为SINGLE_COLUMN，单列排列
---@field LineCount number @行数设置。控制列表显示的行数，当设置为0时表示不限制行数，仅在FLOW_VERTICAL和PAGINATION布局模式下有效。默认值为0，不限制行数
---@field ColumnCount number @列数设置。控制列表显示的列数，当设置为0时表示不限制列数，仅在FLOW_HORIZONTAL和PAGINATION布局模式下有效。默认值为0，不限制列数
---@field LineGap number @行间距。设置列表Item之间的垂直间距，单位为屏幕坐标，默认值为0
---@field ColumnGap number @列间距。设置列表Item之间的水平间距，单位为屏幕坐标，默认值为0
---@field HorizontalAlign TextHAlignment @水平对齐方式。控制列表Item在水平方向上的对齐方式，默认值为Center，居中对齐
---@field VerticalAlign TextVAlignment @垂直对齐方式。控制列表Item在垂直方向上的对齐方式，默认值为Center，居中对齐
---@field AutoResizeItem boolean @自动调整列表Item大小。启用后根据布局类型自动调整项目尺寸：单列布局时Item的宽度自动填充列表宽度；单行布局时Item的高度自动填充列表高度；流动布局时根据行列数自动调整Item尺寸以填满显示区域。默认值为false，不自动调整
---@field Padding Vector4 @内边距。设置列表内容与边界之间的距离，Vector4格式(left,right,top,bottom)，单位为屏幕坐标。默认值为(0,0,0,0)，无内边距
---@field ScrollPercent Vector2 @滚动位置百分比。控制列表的滚动位置，Vector2格式(horizontalPercent,verticalPercent)，取值范围0.0-1.0，0.0表示顶部/左侧，1.0表示底部/右侧，只读属性
---@field FoldInvisibleItems boolean @列表Item隐藏时是否折叠其所占用的布局空间。默认值为false，不折叠其所占用的布局空间
---@field Bounceback boolean @边缘回弹效果。启用后当滚动到列表边界时会产生回弹效果。默认值为true，启用回弹效果
---@field ContentSize Vector2 @列表内容区域大小。获取列表内容的总尺寸，Vector2格式(width, height)，只读属性
---@field ScrollItemToViewOnClick boolean @点击Item自动滚动到视图。启用后点击列表Item时会自动滚动使该项目完全显示在视图中。默认值为true，启用点击Item自动滚动到视图
---@field NotifyItemRefresh SBXSignal @列表刷新事件。当虚拟列表需要刷新某个Item的显示内容时触发此事件
---@field NotifyItemRegister SBXSignal @列表Item注册事件。当新的列表Item被创建并注册到列表中时触发此事件
local UIList = {}

--- 设置虚拟列表模式。启用后只为可视范围内的Item创建实体对象，设置后不可取消
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param node SandboxNode
---@return boolean
function UIList:SetVirtual(node) end

--- 设置循环虚拟列表。启用后列表头尾相接形成无限循环效果，设置后不可取消
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
function UIList:SetVirtualAndLoop() end

--- 设置虚拟列表Item数量。设置虚拟列表中显示的Item总数，用于虚拟列表和循环列表，仅在虚拟列表模式下有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
function UIList:SetVirtualItemNum() end

--- 滚动到列表顶部。将列表滚动到最顶部位置，仅在允许垂直滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param ani boolean
function UIList:ScrollToTop(ani) end

--- 滚动到列表底部。将列表滚动到最底部位置，仅在允许垂直滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param ani boolean
function UIList:ScrollToBottom(ani) end

--- 滚动到列表最左侧。将列表滚动到最左侧位置，仅在允许水平滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param ani boolean
function UIList:ScrollToLeft(ani) end

--- 滚动到列表最右侧。将列表滚动到最右侧位置，仅在允许水平滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param ani boolean
function UIList:ScrollToRight(ani) end

--- 滚动到指定Item。将列表滚动到指定索引的Item位置，使其显示在视图中
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param index number
---@param ani boolean
---@param scrollToStart boolean
function UIList:ScrollToView(index, ani, scrollToStart) end

--- 滚动到水平百分比位置。将列表滚动到指定的水平百分比位置，仅在允许水平滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param value number
---@param ani boolean
function UIList:ScrollToPercentX(value, ani) end

--- 滚动到垂直百分比位置。将列表滚动到指定的垂直百分比位置，仅在允许垂直滚动时有效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIList.html
---@param value number
---@param ani boolean
function UIList:ScrollToPercentY(value, ani) end

return UIList
