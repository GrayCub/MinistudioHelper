---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/PostEffectService.html
---@class PostEffectService : SandboxNode
local PostEffectService = {}

--- 添加后期特效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/PostEffectService.html
---@param szName string
---@param szMaterial string
---@param szShader string
function PostEffectService:AddPostEffect(szName, szMaterial, szShader) end

--- 通过特效key移除后期特效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/PostEffectService.html
---@param szKey string
function PostEffectService:RemovePostEffect(szKey) end

--- 设置后期特效参数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/PostEffectService.html
---@param szEffectName string
---@param szName string
---@param fValue number
function PostEffectService:SetParamValue(szEffectName, szName, fValue) end

return PostEffectService
