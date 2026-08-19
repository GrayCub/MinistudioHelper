---@meta

--- 贴花对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/Decal.html
---@class Decal : Transform
---@field Width number @贴花的宽，默认值为50，单位为世界坐标
---@field Height number @贴花的高，默认值为600，单位为世界坐标
---@field Length number @贴花的长，默认值为50，单位为世界坐标
---@field Cullback boolean @贴花是否启用背面剔除功能，默认值为true，启用背面剔除功能
---@field TextureId string @贴花的纹理(图片)的资源路径
---@field CullLayer CullLayer @贴花的消隐层，默认值为DEFAULT
local Decal = {}

return Decal
