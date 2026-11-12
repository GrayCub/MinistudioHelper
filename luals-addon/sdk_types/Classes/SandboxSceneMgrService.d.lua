---@meta

---@class FSandboxSceneMgrServiceSceneSwitchStartEvent : SBXSignal
FSandboxSceneMgrServiceSceneSwitchStartEvent = {}

---@param callback fun(...: any): nil
---@return SBXConnection
function FSandboxSceneMgrServiceSceneSwitchStartEvent:Connect(callback) end

---@class FSandboxSceneMgrServiceSceneOpResultEvent : SBXSignal
FSandboxSceneMgrServiceSceneOpResultEvent = {}

---@param callback fun(...: any): nil
---@return SBXConnection
function FSandboxSceneMgrServiceSceneOpResultEvent:Connect(callback) end

---@class FSandboxSceneMgrServiceDynamicSceneOpResultServerEvent : SBXSignal
FSandboxSceneMgrServiceDynamicSceneOpResultServerEvent = {}

---@param callback fun(...: any): nil
---@return SBXConnection
function FSandboxSceneMgrServiceDynamicSceneOpResultServerEvent:Connect(callback) end


---@class SandboxSceneMgrService : SandboxNode
---@field SceneConfigs table
---@field CurDefaultStartScene EMultiScenes 动态场景配置
---@field NextDefaultStartScene EMultiScenes
---@field DynamicSceneConfigs table
---@field SceneSwitchStart FSandboxSceneMgrServiceSceneSwitchStartEvent <Assignable> 切换场景开始通知(客户端)
---@field SceneOpResult FSandboxSceneMgrServiceSceneOpResultEvent <Assignable> 场景操作结果通知(客户端)
---@field DynamicSceneOpResultServer FSandboxSceneMgrServiceDynamicSceneOpResultServerEvent <Assignable> 动态场景操作结果通知(服务端)
local SandboxSceneMgrService = {}

--- 切换场景(客户端)切换结果SceneOpResult通知回调
function SandboxSceneMgrService:SwitchScene() end

--- 添加动态场景(服务端)添加结果DynamicSceneOpResultServer通知回调
function SandboxSceneMgrService:AddDynamicScene() end

--- 删除动态场景(服务端)删除结果DynamicSceneOpResultServer通知回调
function SandboxSceneMgrService:RemoveDynamicScene() end

--- 切换结果DynamicSceneOpResultServer通知回调
function SandboxSceneMgrService:DynamicSwitchScene() end

return SandboxSceneMgrService
