---@meta

---@class TweenInfo
---@field Time number
---@field EasingStyle EasingStyle
---@field EasingDirection EasingDirection
---@field DelayTime number
---@field RepeatCount number
---@field Reverses boolean
TweenInfo = {}

---@return TweenInfo
function TweenInfo:New() end

---@param time number
---@return TweenInfo
function TweenInfo:New(time) end

---@param time number
---@param easingStyle EasingStyle
---@param easingDirection EasingDirection
---@param delayTime number
---@param repeatCount number
---@param reverses boolean
---@return TweenInfo
function TweenInfo:New(time, easingStyle, easingDirection, delayTime, repeatCount, reverses) end

