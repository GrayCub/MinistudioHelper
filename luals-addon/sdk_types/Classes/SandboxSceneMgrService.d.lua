---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/SandboxSceneMgrService.html
---@class SandboxSceneMgrService : SandboxNode
---@field SceneConfigs table
---@field CurDefaultStartScene EMultiScenes @动态场景配置
---@field NextDefaultStartScene EMultiScenes
---@field DynamicSceneConfigs table
---@field SceneSwitchStart SBXSignal @切换场景开始通知(客户端)
---@field SceneOpResult SBXSignal @场景操作结果通知(客户端)
---@field DynamicSceneOpResultServer SBXSignal @动态场景操作结果通知(服务端)
local SandboxSceneMgrService = {}

--- 切换场景(客户端)切换结果SceneOpResult通知回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/SandboxSceneMgrService.html
function SandboxSceneMgrService:SwitchScene() end

--- 添加动态场景(服务端)添加结果DynamicSceneOpResultServer通知回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/SandboxSceneMgrService.html
function SandboxSceneMgrService:AddDynamicScene() end

--- 删除动态场景(服务端)删除结果DynamicSceneOpResultServer通知回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/SandboxSceneMgrService.html
function SandboxSceneMgrService:RemoveDynamicScene() end

--- 切换结果DynamicSceneOpResultServer通知回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Other/SandboxSceneMgrService.html
function SandboxSceneMgrService:DynamicSwitchScene() end

return SandboxSceneMgrService
