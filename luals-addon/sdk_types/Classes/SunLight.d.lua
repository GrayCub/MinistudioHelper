---@meta

--- 太阳光源节点。用于控制场景主光源（太阳）及相关渲染效果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/SunLight.html
---@class SunLight : SandboxNode
---@field Intensity number @光源强度。方向光的亮度系数，影响直射光照的整体强度。默认值为1.0
---@field Color ColorQuad @光源颜色。方向光的颜色，默认值为(255,255,255,255)
---@field LockTimeDir boolean @是否锁定由时间驱动的太阳方向。锁定时光照方向随时间系统自动更新，禁止手动旋转；未锁定时光照方向可通过Euler手动设置方向，不受时间驱动。默认值为true
---@field Euler Vector3 @光源欧拉角。在未锁定时间方向时，手动指定太阳光方向（局部欧拉角）。默认值为(0,0,0)
---@field ShadowBias number @阴影偏移。默认值为0.35
---@field ShadowSlopeBias number @阴影斜率偏移。针对斜面提高偏移以进一步减少阴影彼得潘效应/痤疮。默认值为0.4
---@field ShadowDistance number @阴影可见距离。超过该距离的物体将不投射或不显示阴影。默认值为2500
---@field SunRaysActive boolean @是否启用太阳光线（体积光）。开启后可通过比例/阈值/颜色进一步调节，默认值为false
---@field SunRaysScale number @太阳光线比例。控制体积光的强度/扩散感知比例。默认值为0.45
---@field SunRaysThreahold number @太阳光线阈值。亮度/可见性阈值，用于过滤参与体积光的像素。默认值为0.5
---@field SunRaysColor ColorQuad @太阳光线颜色。默认值为(255,255,255,255)
---@field UseCustomSunAndMoonTex boolean @是否使用自定义太阳/月亮纹理。默认值为false
---@field SunTex string @太阳纹理资源路径。自定义模式下用于替换默认太阳贴图，贴图资源背景颜色必须为黑色。默认值为空字符串
---@field SunScale Vector2 @太阳缩放。控制天空中太阳图元的屏幕空间比例。默认值为(1.0,1.0)
---@field MoonTex string @月亮纹理资源路径。自定义模式下用于替换默认月亮贴图，贴图资源背景颜色必须为黑色。默认值为空字符串
---@field MoonScale Vector2 @月亮缩放。控制天空中月亮图元的屏幕空间比例。默认值为(1.0,1.0)
---@field ShadowCascadeCount ShadowCascadeCount @阴影层叠数量。用于选择层叠阴影（CSM）层数，更多层数可改善近处细节但增加显存与计算开销。默认值为COUNT_ONE
local SunLight = {}

return SunLight
