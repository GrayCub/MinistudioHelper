---@meta
---@diagnostic disable: missing-fields

---@class BrowserType : EnumValue<BrowserType>
---@field Value BrowserType
Enum.BrowserType = {
    ---@type BrowserType
    NativeBrowser = {}, -- Value = 1
    ---@type BrowserType
    BuiltinWebView = {}, -- Value = 2
    ---@type BrowserType
    PersistWebView = {}, -- Value = 3
}

