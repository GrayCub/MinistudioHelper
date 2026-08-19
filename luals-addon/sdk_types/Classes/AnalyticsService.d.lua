---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/AnalyticsService.html
---@class AnalyticsService : SandboxNode
local AnalyticsService = {}

--- 数据埋点上报
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/AnalyticsService.html
---@param dataMap table
function AnalyticsService:ReportData(dataMap) end

return AnalyticsService
