---@meta

--- 表面节点组件。控制3D几何体各表面的材质、纹理和渲染效果，必须挂载到GeoSolid父节点上使用。
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/Surface.html
---@class Surface : SandboxNode
---@field Surface Surface @模型表面，默认值为FACE1
---@field TextureId string @模型表面纹理(图片)的资源路径
---@field Color ColorQuad @模型表面颜色，默认值为白色，支持透明通道
---@field MaterialType MaterialTemplate @模型表面材质
local Surface = {}

return Surface
