---@meta

---@class Quaternion
Quaternion = {}

---@param a Quaternion
---@param b Quaternion
---@param t number
---@return Quaternion
function Quaternion:Lerp(a, b, t) end

---@param axis Vector3
---@param angle number
---@return Quaternion
function Quaternion:RotateAxisAngle(axis, angle) end

---@param targetq Quaternion
---@return Vector3
function Quaternion:LookDir(targetq) end

---@param target Quaternion
---@param dir Quaternion
---@return Vector3
function Quaternion:RotateToDir(target, dir) end

