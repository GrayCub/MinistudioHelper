---@meta

--- 补间动画服务类，用于创建和管理补间动画对象（UITween）。TweenService是补间动画系统的工厂和管理器，通过Create方法创建UITween对象来执行属性插值动画。TweenService会自动管理UITween对象的生命周期，当新补间动画播放时会自动取消相同节点相同属性的旧补间，避免冲突。支持的属性类型包括：Number、Bool、Vector2、Vector3、Enum等。TweenService是服务节点，通常通过game:GetService('TweenService')获取，不能使用SandboxNode.new直接创建。UITween对象创建后会自动添加到TweenService的子节点中，当目标节点销毁时相关补间会被自动清理
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/TweenService.html
---@class TweenService : Service
local TweenService = {}

--- 创建一个补间动画对象（UITween），用于对指定节点的属性进行插值动画。该方法会创建一个UITween节点，配置目标节点、动画信息和属性映射关系，并将其添加到TweenService的子节点中。创建后的UITween对象需要通过Play方法开始播放动画。注意：如果新创建的UITween与已存在的UITween作用于相同节点的相同属性，播放新UITween时会自动取消旧的UITween
--- @see https://studio.mini1.cn/wiki/Api/Classes/Animation/TweenService.html
---@param node SandboxNode
---@param info TweenInfo
---@param map table
---@return UITween
function TweenService:Create(node, info, map) end

return TweenService
