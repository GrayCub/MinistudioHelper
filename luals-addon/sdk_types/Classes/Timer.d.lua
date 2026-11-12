---@meta

---@class Timer : SandboxNode
---@field Callback function lua回调方法
---@field Delay number 首次延迟执行的时间
---@field Loop boolean 是否循环执行
---@field Interval number 计时间隔时间
local Timer = {}

--- 开始执行
function Timer:Start() end

--- 暂停。需要在开始执行后调用
function Timer:Pause() end

--- 恢复。需要在暂停后调用
function Timer:Resume() end

--- 停止。需要在开始执行后调用
function Timer:Stop() end

--- 开始执行。附带初始化的参数此服务器中可以容纳的最大玩家数量
---@param delay number
---@param loop boolean
---@param interval number
---@param cb function
function Timer:StartEx(delay, loop, interval, cb) end

--- 获取定时器运行状态
---@return RUNSTATE
function Timer:GetRunState() end

return Timer
