---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@class SandboxNode
---@field ClassType string @节点的ClassType名称（不可写）
---@field Name string @节点名
---@field Tag number @节点标签
---@field Parent SandboxNode @父节点
---@field parent SandboxNode @父节点（仅脚本可调用）
---@field Children SandboxNode @全部子节点。（仅脚本可调用）
---@field Enabled boolean @节点是否被禁用。被禁用后节点内逻辑，事件，通知等不生效。
---@field Attibutes AttributeContainer @获取属性容器。（仅脚本可调用）
---@field SyncMode NodeSyncMode @同步模式（仅主机能够设置）
---@field LocalSyncFlag NodeSyncLocalFlag @本地同步标识（本地属性，不需要同步）
---@field IgnoreSafeMode boolean @忽略安全模式
---@field ResourceLoadMode ResourceLoadMode @忽略安全模式
---@field FlagDebug unsignedlonglong @忽略安全模式
---@field ID SandboxNodeID @节点ID
---@field AncestryChanged SBXSignal @祖先节点变化时，会触发一个AncestryChanged通知
---@field ParentChanged SBXSignal @父节点(或父级节点)变化时，会触发一个ParentChanged通知
---@field AttributeChanged SBXSignal @属性发生变化时，会触发一个AttributeChanged通知(建议改用GetAttributeChangedNotify接口,性能明显比AttributeChanged接口高)
---@field ChildAdded SBXSignal @新增子节点时，会触发一个ChildAdded通知
---@field ChildRemoved SBXSignal @移除子节点时，会触发一个ChildRemoved通知
---@field CustomAttrChanged SBXSignal @自定义属性发生变化，会触发一个CustomAttrChanged通知
---@field GetAttributeChangedNotify SBXSignal
SandboxNode = {}

--- 创建指定类型的节点并挂载到父节点。
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@overload fun(className: "SandboxNode", parent: SandboxNode): Model
---@overload fun(className: "Model", parent: SandboxNode): Model
---@overload fun(className: "Actor", parent: SandboxNode): Actor
---@overload fun(className: "Camera", parent: SandboxNode): Camera
---@overload fun(className: "Light", parent: SandboxNode): Light
---@overload fun(className: "Material", parent: SandboxNode): Material
---@overload fun(className: "Animation", parent: SandboxNode): Animation
---@overload fun(className: "Sound", parent: SandboxNode): Sound
---@overload fun(className: "Particle", parent: SandboxNode): Particle
---@overload fun(className: "EffectObject", parent: SandboxNode): EffectObject
---@overload fun(className: "Script", parent: SandboxNode): Script
---@overload fun(className: "LocalScript", parent: SandboxNode): LocalScript
---@overload fun(className: "ModuleScript", parent: SandboxNode): ModuleScript
---@overload fun(className: "CustomNotify", parent: SandboxNode): CustomNotify
---@overload fun(className: "RemoteEvent", parent: SandboxNode): RemoteEvent
---@overload fun(className: "RemoteFunction", parent: SandboxNode): RemoteFunction
---@overload fun(className: "UIButton", parent: SandboxNode): UIButton
---@overload fun(className: "UIImage", parent: SandboxNode): UIImage
---@overload fun(className: "UITextLabel", parent: SandboxNode): UITextLabel
---@overload fun(className: "UITextInput", parent: SandboxNode): UITextInput
---@overload fun(className: "UIBillboard", parent: SandboxNode): UIBillboard
---@overload fun(className: "UIComponent", parent: SandboxNode): UIComponent
---@overload fun(className: "UIDropDownBox", parent: SandboxNode): UIDropDownBox
---@overload fun(className: "UIList", parent: SandboxNode): UIList
---@overload fun(className: "UIListLayout", parent: SandboxNode): UIListLayout
---@overload fun(className: "UIMiniCoin", parent: SandboxNode): UIMiniCoin
---@overload fun(className: "UIModelView", parent: SandboxNode): UIModelView
---@overload fun(className: "UIMovieClip", parent: SandboxNode): UIMovieClip
---@overload fun(className: "UIPanel", parent: SandboxNode): UIPanel
---@overload fun(className: "UIBMLabel", parent: SandboxNode): UIBMLabel
---@overload fun(className: "Team", parent: SandboxNode): Team
---@overload fun(className: "Surface", parent: SandboxNode): Surface
---@overload fun(className: "Timer", parent: SandboxNode): Timer
---@overload fun(className: "SpawnLocation", parent: SandboxNode): SpawnLocation
---@overload fun(className: "Tool", parent: SandboxNode): Tool
---@overload fun(className: "BindAttachment", parent: SandboxNode): BindAttachment
---@overload fun(className: "Attachment", parent: SandboxNode): Attachment
---@overload fun(className: "Beam", parent: SandboxNode): Beam
---@overload fun(className: "Trail", parent: SandboxNode): Trail
---@overload fun(className: "Fire", parent: SandboxNode): Fire
---@overload fun(className: "Smoke", parent: SandboxNode): Smoke
---@overload fun(className: "Exposion", parent: SandboxNode): Exposion
---@overload fun(className: "Decal", parent: SandboxNode): Decal
---@overload fun(className: "Sound", parent: SandboxNode): Sound
---@overload fun(className: "SoundGroup", parent: SandboxNode): SoundGroup
---@param className string 节点类型名，例如 "Model"
---@param parent SandboxNode 父节点实例
---@return SandboxNode
function SandboxNode.New(className, parent) end

--- 节点克隆，克隆反射属性，自定义属性，以及包含的子对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return SandboxNode
function SandboxNode:Clone() end

--- 通过节点名找到节点对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@param name string
---@return SandboxNode
function SandboxNode:FindFirstChild(name) end

--- 等待并返回指定名称的子节点。
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@param name string
---@return SandboxNode
function SandboxNode:WaitForChild(name) end

--- 获取全部子节点列表
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return SandboxNode[]
function SandboxNode:GetChildren() end

--- 销毁节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:Destroy() end

--- 清除所有子节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:ClearAllChildren() end

--- 销毁所有子节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:DestroyAllChildren() end

--- 设置父节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:SetParent() end

--- 获取节点id
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return SandboxNodeID
function SandboxNode:GetNodeid() end

--- 获取attr的反射属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return ReflexVariant
function SandboxNode:GetAttribute() end

--- 设置反射的属性值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return boolean
function SandboxNode:SetAttribute() end

--- 添加一条反射属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:AddAttribute() end

--- 通过attr名删除一条反射属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:DeleteAttribute() end

--- 判断节点的ClassType是不是属于value代表的ClassType
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return boolean
function SandboxNode:IsA() end

--- 设置反射同步模式（仅主机能够设置）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:SetReflexSyncMode() end

--- 获取反射同步模式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return SYNCMODE
function SandboxNode:GetReflexSyncMode() end

--- 设置反射本地同步标记
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:SetReflexLocalSyncFlag() end

--- 获取反射本地同步标记
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
---@return SYNCLOCALFLAG
function SandboxNode:GetReflexLocalSyncFlag() end

--- 主动加载 同步
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:ManualLoad() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:ManualLoadAsync() end

--- 主动卸载
--- @see https://studio.mini1.cn/wiki/Api/Classes/Base/SandboxNode.html
function SandboxNode:ManualUnLoad() end

return SandboxNode
