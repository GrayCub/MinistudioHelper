---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@class WorldService : SandboxNode
local WorldService = {}

--- 打印日志
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param szLog string
function WorldService:PrintLog(szLog) end

--- 获取当前所在chunk的首尾 xz 的坐标
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@return ReflexTuple
function WorldService:GetRangeXZ() end

--- 获取UI布局的缩放尺寸
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@return Vector2
function WorldService:GetUIScale() end

--- 射线段检测，返回最近的碰撞物
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param origin Vector3
---@param unitDir Vector3
---@param distance number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:RaycastClosest(origin, unitDir, distance, isIgnoreTrigger, filterGroup) end

--- 射线段检测，返回所有碰撞物，最多128个
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param origin Vector3
---@param unitDir Vector3
---@param distance number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:RaycastAll(origin, unitDir, distance, isIgnoreTrigger, filterGroup) end

--- 扫描全部
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param center Vector3
---@param shape Vector3
---@param direction Vector3
---@param angle Vector3
---@param distance number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:SweepBoxAll(center, shape, direction, angle, distance, isIgnoreTrigger, filterGroup) end

--- 扫描胶囊全部
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param radius number
---@param p0 Vector3
---@param p1 Vector3
---@param dir Vector3
---@param distance number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:SweepCapsuleAll(radius, p0, p1, dir, distance, isIgnoreTrigger, filterGroup) end

--- 扫描球全部
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param radius number
---@param center Vector3
---@param direction Vector3
---@param distance number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:SweepSphereAll(radius, center, direction, distance, isIgnoreTrigger, filterGroup) end

--- 重叠框
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param shape Vector3
---@param pos Vector3
---@param angle Vector3
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:OverlapBox(shape, pos, angle, isIgnoreTrigger, filterGroup) end

--- 重叠胶囊
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param radius number
---@param p0 Vector3
---@param p1 Vector3
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:OverlapCapsule(radius, p0, p1, isIgnoreTrigger, filterGroup) end

--- 重叠球体
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param radius number
---@param pos Vector3
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:OverlapSphere(radius, pos, isIgnoreTrigger, filterGroup) end

--- 2D射线检测，返回最近的碰撞物
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param point1 Vector2
---@param point2 Vector2
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:RayCastClosest2D(point1, point2, isIgnoreTrigger, filterGroup) end

--- 2D射线检测，返回所有碰撞物
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param point1 Vector2
---@param point2 Vector2
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:RayCastAll2D(point1, point2, isIgnoreTrigger, filterGroup) end

--- 2D矩形区域查询，返回与矩形重叠的所有碰撞物
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param lowerBound Vector2
---@param upperBound Vector2
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:OverlapBox2D(lowerBound, upperBound, isIgnoreTrigger, filterGroup) end

--- 2D圆形区域查询，返回与圆形重叠的所有碰撞物
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param center Vector2
---@param radius number
---@param isIgnoreTrigger boolean
---@param filterGroup table
---@return table
function WorldService:OverlapCircle2D(center, radius, isIgnoreTrigger, filterGroup) end

--- 2D非物理点查询，在指定世界坐标处查找渲染层级最高的可见2D节点（基于场景空间索引，非物理碰撞体）
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param position Vector2
---@return table
function WorldService:FindClosestNode2D(position) end

--- 2D非物理矩形查询，在指定矩形区域内查找所有可见2D节点，按渲染层级从高到低排序（基于场景空间索引，非物理碰撞体）
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param lowerBound Vector2
---@param upperBound Vector2
---@return table
function WorldService:FindNodesInBox2D(lowerBound, upperBound) end

--- 2D非物理圆形查询，在指定圆形区域内查找所有可见2D节点，按渲染层级从高到低排序（基于场景空间索引，非物理碰撞体）
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param center Vector2
---@param radius number
---@return table
function WorldService:FindNodesInCircle2D(center, radius) end

--- 用于隐藏显示游戏内置UI
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param isShow boolean
function WorldService:SetMainFrameShow(isShow) end

--- 获取UI布局的尺寸
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@return Vector2
function WorldService:GetUISize() end

--- 用于主动触发minigame 老的 esc 流程
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@return number
function WorldService:EmitMiniGameESCKey() end

--- 传送玩家到地图
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param mapid number
function WorldService:TeleportPlayer(mapid) end

--- 创建一个路径基于想要模拟的actor的参数.
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param Radius table
---@param Heigh any
---@param StepOffset any
---@param SlopLimit any
---@param CollideGroupID any
---@return SandboxNode
function WorldService:CreatePath(Radius, Heigh, StepOffset, SlopLimit, CollideGroupID) end

--- 设置当前worldservice的world的SceneId
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@param id number
---@return boolean
function WorldService:SetSceneId(id) end

--- 获取当前worldservice的world的SceneId
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
---@return number
function WorldService:GetSceneId() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
function WorldService:UploadTexture() end

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/WorldService.html
function WorldService:DoGmCmd() end

return WorldService
