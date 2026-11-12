---@meta

---@class AnalyticsService : SandboxNode
local AnalyticsService = {}

--- 数据埋点上报
---@param dataMap table
function AnalyticsService:ReportData(dataMap) end

return AnalyticsService
