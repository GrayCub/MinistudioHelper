---@meta

---@class Vector3
---@field x number
---@field y number
---@field z number
Vector3 = {}

---@param x number
---@param y number
---@param z number
---@return Vector3
function Vector3.New(x, y, z) end

---@param Vector3ToNormalize Vector3
function Vector3:Normalize(Vector3ToNormalize) end

---@param Quaternion Vector3
function Vector3:FromQuaternion(Quaternion) end

---@param firstVector3 Vector3
---@param secondVecotr3 Vector3
---@return Vector3
function Vector3:Dot(firstVector3, secondVecotr3) end

---@param firstVector3 Vector3
---@param secondVecotr3 Vector3
---@return Vector3
function Vector3:Cross(firstVector3, secondVecotr3) end

---@param firstVector3 Vector3
---@param secondVecotr3 Vector3
---@param ratio number
---@return Vector3
function Vector3:Lerp(firstVector3, secondVecotr3, ratio) end

