---@meta

---@class Ray
---@field Origin Vector3
---@field Direction Vector3
---@field Unit Ray
---@field ClosestPoint Vector3
---@field Distance number
Ray = {}

---@param origin Vector3
---@param direction Vector3
---@return Ray
function Ray.New(origin, direct) end

---@param ray Ray
---@param point Vector3
---@return Vector3
function Ray:ClosestPoint(ray, point) end

---@param ray Ray
---@param point Vector3
---@return number
function Ray:Distance(ray, point) end

