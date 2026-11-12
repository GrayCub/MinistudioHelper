---@meta

---@class PostEffectService : SandboxNode
local PostEffectService = {}

--- 添加后期特效
---@param szName string
---@param szMaterial string
---@param szShader string
function PostEffectService:AddPostEffect(szName, szMaterial, szShader) end

--- 通过特效key移除后期特效
---@param szKey string
function PostEffectService:RemovePostEffect(szKey) end

--- 设置后期特效参数
---@param szEffectName string
---@param szName string
---@param fValue number
function PostEffectService:SetParamValue(szEffectName, szName, fValue) end

return PostEffectService
