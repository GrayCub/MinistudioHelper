---@meta

--- UI图片组件。用于显示2D图片，支持多种填充模式、缩放类型和特效功能
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIImage.html
---@class UIImage : UIComponent
---@field Icon string @图片资源路径
---@field FillMethod FillMethod @填充模式。控制图片的填充显示方式，用于实现进度条、圆形进度等效果，默认值为None
---@field FillOrigin FillOrigin @填充原点。控制填充过程的原点，仅在Horizontal与Vertical填充模式下适用。对于每种填充方法，值的意义不同，默认值为Top
---@field FillClockwise boolean @顺时针填充。仅在Radial360模式下适用，为true时以上方中点为起点顺时针渲染，默认值为false
---@field FillAmount number @填充比例。控制填充显示的部分占原来大小的比例，取值范围：0.0-1.0，默认1.0
---@field IsAutoSize boolean @自动调整大小。为true时，将节点大小调整为图片原始大小，默认值为false
---@field Alpha number @图片透明度。控制图片的透明度，取值范围：0.0-1.0，0.0为完全透明，1.0为完全不透明，默认值为1.0
---@field ResourceSize Vector2 @图片资源原始尺寸。只读属性，显示加载的图片资源的原始宽高
---@field ScaleType ScaleType @图片缩放类型。控制图片在节点中的显示方式：拉伸填充或九宫格缩放
---@field Scale9Grid Vector4 @九宫格缩放参数。Vector4格式(x,y,width,height)，定义九宫格的中心区域，仅在ScaleType为Slice时生效
---@field BlurFilter boolean @是否启用高斯模糊效果。开启后图片会显示模糊效果，默认值为false
---@field BlurSigma number @高斯模糊强度。控制模糊效果的强度，数值越大模糊效果越强，默认值为3
---@field UIMaskMode boolean @遮罩模式。当前节点作为父节点的遮罩，用于实现裁剪效果，默认值为false
local UIImage = {}

return UIImage
