---@meta

--- 材质节点，管理渲染相关的通用材质属性（深度测试/写入、背面剔除、主纹理与平铺、法线、自发光、边缘光、透明度、阴影与亮度等）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Material.html
---@class Material : SandboxNode
---@field DepthFunc DepthFunc @深度测试函数。决定片元通过与否的深度比较方式，常用于透明/半透明与遮挡关系的控制。默认值为NearEqual
---@field DepthWrite DepthWrite @深度写入开关。开启时当前片元会写入深度缓冲；关闭常用于透明物体以避免遮挡错误。默认值为kDepthWriteEnable
---@field RenderGroup number @渲染分组。用于渲染阶段的排序/筛选策略，较小的分组优先渲染。默认值为0
---@field CullMode CullMode @背面剔除模式。用于控制三角形正面/背面的剔除策略，减少无效像素绘制。默认值为kCullBack，即剔除背面三角形
---@field MainTexture string @主纹理资源路径。物体表面的基础颜色贴图，默认值为空字符串
---@field MainTextureTileScale Vector2 @主纹理平铺缩放。设置UV平铺倍率，用于控制重复与缩放。默认值为(1.0,1.0)
---@field MainTextureTileOffset Vector2 @主纹理平铺偏移。设置UV偏移量，用于滚动或取样起点调整。默认值为(0.0,0.0)
---@field SpecScale number @高光范围系数。控制高光分布范围/粗糙度相关的系数。默认值为1.0
---@field SpecIntensity number @高光强度。控制镜面高光亮度。默认值为1.0
---@field ShadowColor ColorQuad @阴影着色颜色。用于调整阴影区域的颜色倾向。默认值为(255,255,255,255)
---@field AlphaTransparent number @整体透明度系数（0~1）。影响整体输出颜色的透明度。默认值为1.0
---@field RGBATransparent number @RGB 通道透明度系数。对颜色通道透明度进行额外缩放。默认值为1.0
---@field EnableEmissive boolean @是否启用自发光。启用后可使用自发光纹理/颜色及闪光参数。默认值为false
---@field EmissiveTexture string @自发光纹理资源路径。用于提供发光图样或遮罩，默认值为空字符串
---@field EmissiveTextureColor ColorQuad @自发光颜色。与自发光纹理一起决定最终发光颜色与强度。默认值为(255,255,255,255)
---@field GlitterSpeed number @闪光速度（特效）。控制自发光闪烁动画的速度。默认值为1.0
---@field GlitterPower number @闪光强度（特效）。控制自发光闪烁的亮度幅度。默认值为1.0
---@field ShadowPowerMin number @阴影调节系数最小值。与最大值配合用于控制阴影强弱范围。默认值为0.8
---@field ShadowPowerMax number @阴影调节系数最大值。配合最小值共同限定阴影影响强度。默认值为1.1
---@field Brightness number @亮度。用于提升整体发光/反射强度，常用于卡通或高亮效果。默认值为0.0
---@field StepAmount number @阶梯化过渡强度。用于非真实感/卡通分段过渡的强度。默认值为0.0
---@field OnStep number @阶梯化阈值。与 StepAmount 配合用于确定分段边界。默认值为0.0
---@field InnerColor ColorQuad @内发光颜色。用于角色/物体内部发光的颜色调节。默认值为(255,255,255,255)
---@field EnableRimColor boolean @是否启用边缘光。启用后可设置边缘光宽度/强度/颜色。默认值为false
---@field RimWidth number @边缘光宽度。控制由视角决定的轮廓高亮的厚度。默认值为0.0
---@field RimIntensity number @边缘光强度。控制轮廓高亮亮度。默认值为0.0
---@field RimColor ColorQuad @边缘光颜色。与宽度/强度配合决定边缘光最终观感。默认值为(255,255,255,255)
---@field NormalTexture string @法线纹理资源路径。用于细节凹凸效果的光照响应。默认值为空字符串
---@field DiffuseIns number @漫反射强度。控制漫反射分量的整体强弱。默认值为0.6
---@field ShadowIns number @阴影影响强度。决定阴影对最终光照结果的影响程度。默认值为0.54
local Material = {}

return Material
