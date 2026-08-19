---@meta

--- 环境节点，管理游戏世界的基础环境设置，包括天气系统、重力效果、时间控制、天空盒设置和图形质量配置等核心环境参数
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Environment.html
---@class Environment : SandboxNode
---@field Weather Weather @设置游戏世界的天气类型，支持晴天、雨天、打雷和自动天气模式，影响游戏世界的视觉效果和氛围。默认值为SUNNY（晴天）
---@field Gravity number @设置游戏世界的重力强度，影响所有物理对象的下降速度和物理行为，数值越大重力越强。默认值为0
---@field LockTimeHour boolean @是否锁定游戏时间，当设置为true时，时间将停止自动流逝，保持在当前设置的时间点。默认值为true，锁定时间
---@field TimeHour number @设置游戏世界的时间（24小时制），单位为小时。游戏时间基于24000个tick为一天，每20分钟游戏时间对应现实1分钟，影响光照和昼夜效果。默认值为14.0（下午2点）
---@field WeatherChanged SBXSignal @当游戏天气发生变化时触发的通知事件，用于响应天气系统的状态改变
---@field GravityChanged SBXSignal @当游戏重力设置发生变化时触发的通知事件，用于响应重力参数的调整
---@field TimeChanged SBXSignal @当游戏时间发生变化时触发的通知事件，用于响应时间系统的状态改变
local Environment = {}

--- 获取当前设备的图形渲染器类型，用于判断使用的图形API（如OpenGL、DirectX等）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Environment.html
---@return DeviceRendererType
function Environment:GetDeviceRenderType() end

--- 获取当前设备的操作系统平台类型，用于判断运行环境（如Android、iOS、Windows等）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Environment.html
---@return DeviceType
function Environment:GetDeviceType() end

--- 判断当前设备是否为移动设备（手机或平板），用于移动端特定的功能控制
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Environment.html
---@return boolean
function Environment:IsMobile() end

return Environment
