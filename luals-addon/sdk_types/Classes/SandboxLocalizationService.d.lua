---@meta

---@class FSandboxLocalizationServicePlayerLocaleIdNotifyEvent : SBXSignal
FSandboxLocalizationServicePlayerLocaleIdNotifyEvent = {}

---@param callback fun(...: any): nil
---@return SBXConnection
function FSandboxLocalizationServicePlayerLocaleIdNotifyEvent:Connect(callback) end


---@class SandboxLocalizationService : SandboxNode
---@field LocaleIdConfig string
---@field LocaleIdConfigField uintptr_t
---@field LocaleIdNum number
---@field PlayerLocaleId LocaleId
---@field PlayerLocaleIdNotify FSandboxLocalizationServicePlayerLocaleIdNotifyEvent <Assignable>
local SandboxLocalizationService = {}

return SandboxLocalizationService
