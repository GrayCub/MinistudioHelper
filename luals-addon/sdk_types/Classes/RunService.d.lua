---@meta

---@class FRunServiceHeartBeatEvent : SBXSignal
FRunServiceHeartBeatEvent = {}

---@param callback fun(time: number): nil
---@return SBXConnection
function FRunServiceHeartBeatEvent:Connect(callback) end

---@class FRunServiceRenderSteppedEvent : SBXSignal
FRunServiceRenderSteppedEvent = {}

---@param callback fun(step: number): nil
---@return SBXConnection
function FRunServiceRenderSteppedEvent:Connect(callback) end

---@class FRunServiceSteppedEvent : SBXSignal
FRunServiceSteppedEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FRunServiceSteppedEvent:Connect(callback) end

---@class FRunServiceSystemSteppedEvent : SBXSignal
FRunServiceSystemSteppedEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FRunServiceSystemSteppedEvent:Connect(callback) end


---@class RunService : SandboxNode
---@field LogicFPS number 逻辑帧数
---@field UpdateFPS number 上传帧
---@field HeartBeat FRunServiceHeartBeatEvent <Assignable> 心跳事件
---@field RenderStepped FRunServiceRenderSteppedEvent <Assignable> 渲染步幅事件，每次Update触发RenderStepped事件
---@field Stepped FRunServiceSteppedEvent <Assignable> 步幅事件，每次Tick触发Stepped事件
---@field SystemStepped FRunServiceSystemSteppedEvent <Assignable> 步幅事件，每次系统Tick触发SystemStepped事件
local RunService = {}

--- 当前的环境是否运行在客户端上
---@return boolean
function RunService:IsClient() end

--- 当前的环境是否运行在服务器上
---@return boolean
function RunService:IsServer() end

--- 当前的环境是否运行在studio上
---@return boolean
function RunService:IsStudio() end

--- 当前的环境是否运行在手机端上
---@return boolean
function RunService:IsMobile() end

--- 当前的环境是否运行在电脑端上
---@return boolean
function RunService:IsPC() end

--- 当前的环境是否远程环境
---@return boolean
function RunService:IsRemote() end

--- 当前运行环境是否为Edit（编辑)模式
---@return boolean
function RunService:IsEdit() end

--- 当前运行环境是否为Running模式
---@return boolean
function RunService:IsRunMode() end

--- 如果游戏在运行则暂停游戏的模拟，暂停物理运算和脚本
function RunService:Pause() end

--- 绑定RenderStep事件的Lua函数。RenderPriority为当前游戏内渲染层级，可根据需要进行插入
function RunService:BindToRenderStep() end

--- 解除绑定RenderStep事件的Lua函数
function RunService:UnbindFromRenderStep() end

--- 获取当前时间戳，精确到毫秒。不随本地时间修改而改变。9位
---@return number
function RunService:CurrentSteadyTimeStampMS() end

--- 设置自动tick间隙
function RunService:SetAutoTick() end

--- 是否自动tick
---@return boolean
function RunService:IsAutoTick() end

--- 驱动tick
function RunService:DriveTick() end

--- 每秒获取帧数
---@return number
function RunService:GetFramePerSecond() end

--- 设置每秒帧数值
function RunService:SetFramePerSecond() end

--- 获取游戏端版本号
---@return string
function RunService:GetMiniGameVersion() end

--- 获取游戏平台名称
---@return string
function RunService:GetAppPlatformName() end

--- 获取游戏运行平台具体的名称
---@return string
function RunService:GetAppPlatformNameEx() end

--- 绑定Tick事件的Lua函数。Priority为调用顺序， 此方法不建议里面带有 wait 函数
---@param szKey string
---@param priority number
---@param func function
function RunService:BindToTickRegister(szKey, priority, func) end

--- 解除绑定Tick事件的Lua函数
---@param szKey string
function RunService:UnBindFromTickRegister(szKey) end

--- 绑定Render事件的Lua函数。Priority为调用顺序， 此方法不建议里面带有 wait 函数
---@param szKey string
---@param priority number
---@param func function
function RunService:BindToRenderRegister(szKey, priority, func) end

--- 解除绑定Render事件的Lua函数
---@param szKey string
function RunService:UnBindFromRenderRegister(szKey) end

--- 获取当前地图ID
---@return string
function RunService:GetCurMapOwid() end

--- 获取当前地图更新时间（上传时间）
---@return number
function RunService:GetCurMapUpdateTimestamp() end

return RunService
