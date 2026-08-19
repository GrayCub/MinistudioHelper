---@meta

--- 角色节点，继承自Model节点，专门用于表示可控制的角色对象。提供角色移动、跳跃、寻路、生命值管理、行为状态控制、玩家绑定等功能。支持自动寻路导航、物理碰撞、动画播放、状态机管理等特性，是游戏中玩家角色和NPC角色的基础节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@class Actor : Model
---@field Movespeed number @角色的移动速度。数值越大移动越快。此速度是角色的基础移动速度，实际移动速度还会受到RunSpeedFactor的影响。默认值约为400
---@field MaxHealth number @角色的最大生命值，用于设置角色生命值的上限。当Health超过MaxHealth时，会自动被限制为MaxHealth。默认值为100.0
---@field Health number @角色的当前生命值，用于表示角色当前的健康状态。当Health为0或小于0时，角色会进入死亡状态。Health不能超过MaxHealth，如果设置的值超过MaxHealth，会自动被限制为MaxHealth。默认值为100.0（等于MaxHealth的初始值）
---@field UseCameraAngle boolean @使角色朝向摄像机角度，用于控制角色是否自动旋转以面向摄像机。当设置为true时，角色会朝向摄像机方向；设置为false时，角色保持原有朝向。默认值为false
---@field AutoRotate boolean @是否启用自动旋转，用于控制角色在移动时是否自动朝向移动方向。当设置为true时，角色在移动过程中会自动旋转以面向移动方向；设置为false时，角色保持当前朝向不变。默认值为false
---@field NoPath boolean @是否没有寻路路径，用于表示角色在寻路时是否无法找到有效路径。当设置为true时，表示当前没有可用的寻路路径；设置为false时，表示有可用的寻路路径。此属性为只读属性，由寻路系统自动更新。默认值为false
---@field Gravity number @角色受到的重力加速度，用于控制角色在垂直方向上的重力效果。数值越大，角色下落越快。此属性影响角色的跳跃、下落等物理行为。默认值约为980
---@field StepOffset number @角色可以攀越的高度，用于控制角色在移动时能够自动攀越的障碍物高度。当遇到高度小于等于此值的障碍物时，角色会自动攀越；超过此高度的障碍物则无法攀越。默认值为100
---@field CanAutoJump boolean @是否允许自动跳跃，用于控制角色是否可以在满足条件时自动执行跳跃动作。当设置为true时，角色在遇到障碍物或满足跳跃条件时会自动跳跃；设置为false时，需要手动调用Jump()方法才能跳跃。默认值为false
---@field SkinId number @玩家皮肤ID，用于标识玩家角色的皮肤资源ID。当角色被玩家控制时，此属性会被设置为对应玩家的皮肤ID；当角色未被玩家控制时，此属性为0。可以通过设置此属性来改变角色的外观。默认值为-1
---@field SlopeLimit number @角色可行走的最大坡度角度，用于控制角色能够行走的斜坡角度限制。当斜坡角度超过此值时，角色无法在该斜坡上行走。角度单位为度。默认值为45
---@field JumpBaseSpeed number @角色跳跃的起始速度，用于控制角色在跳跃时初始获得的垂直速度。数值越大，跳跃高度越高。此速度是角色离开地面时立即获得的速度。默认值为400
---@field JumpContinueSpeed number @持续跳跃速度，用于控制角色在持续按住跳跃键时减缓降落速度的效果。当角色在空中持续按住跳跃键时，会应用此速度来减缓下落速度，实现类似"滑翔"的效果。数值越大，减缓效果越明显。默认值为0
---@field RunSpeedFactor number @跑步速度倍数，用于控制角色在跑步状态下的速度倍数。实际移动速度=Movespeed×RunSpeedFactor。当RunState为true时，会应用此倍数；当RunState为false时，使用基础Movespeed。默认值为1.5
---@field RunState boolean @是否为跑步状态，用于标识角色当前是否处于跑步状态。当设置为true时，角色处于跑步状态，移动速度会乘以RunSpeedFactor；设置为false时，角色处于正常行走状态，使用基础Movespeed。此属性为只读属性，默认值为false
---@field CanPushOthers boolean @是否可以推动其他对象，用于控制角色是否能够推动其他物理对象。当设置为true时，角色在移动时可以推动其他可推动的对象；设置为false时，角色无法推动其他对象。默认值为false
---@field MoveDirection Vector3 @移动方向向量，用于表示角色当前的移动方向。这是一个三维向量（Vector3f），表示角色在世界坐标系中的移动方向。此属性为只读属性，实际移动方向由Move()、MoveTo()等方法控制。默认值为(0, 0, 0)
---@field PhysXRoleType PhysicsRoleType @物理角色类型，用于指定角色使用的物理碰撞体形状类型。不同的类型会影响角色的碰撞检测和物理行为。类型由PhysicsRoleType枚举定义，包括BOX（包围盒）和CAPSULE（胶囊体）。胶囊体更适合人形角色，包围盒更适合方形物体。默认值取决于Locomotion组件的初始化值
---@field StandardSkeleton StandardSkeleton @标准骨骼类型，用于指定角色使用的骨骼系统类型。不同的骨骼类型会影响角色的模型加载、动画系统、AvatarPart功能等。默认值为None
---@field Walking SBXSignal @行走状态变化事件，当角色开始行走或停止行走时会触发此事件。可以通过Connect方法监听此事件来响应角色的行走状态变化
---@field Standing SBXSignal @站立状态变化事件，当角色开始站立或结束站立时会触发此事件。可以通过Connect方法监听此事件来响应角色的站立状态变化
---@field Jumping SBXSignal @跳跃状态变化事件，当角色开始跳跃或结束跳跃时会触发此事件。可以通过Connect方法监听此事件来响应角色的跳跃状态变化
---@field Flying SBXSignal @飞行状态变化事件，当角色开始飞行或结束飞行时会触发此事件。可以通过Connect方法监听此事件来响应角色的飞行状态变化
---@field Died SBXSignal @死亡状态变化事件，当角色进入死亡状态或从死亡状态恢复时会触发此事件。可以通过Connect方法监听此事件来响应角色的死亡状态变化
---@field MoveStateChange SBXSignal @移动状态变化事件，当角色的行为状态（MoveState）发生变化时会触发此事件。可以通过Connect方法监听此事件来响应角色的状态变化，例如从站立切换到行走、从行走切换到跳跃等
---@field NavigateFinished SBXSignal @寻路完成事件，当角色通过NavigateTo()或NavigateToAsync()执行的自动寻路操作完成时会触发此事件。可以通过Connect方法监听此事件来响应寻路完成，例如执行后续动作或播放动画
---@field MoveFinished SBXSignal @移动完成事件，当角色通过MoveTo()执行的移动操作完成时会触发此事件。当角色到达目标位置或移动被StopMove()停止时会触发此事件。可以通过Connect方法监听此事件来响应移动完成
local Actor = {}

--- 设置移动结束时间，用于指定角色移动操作的结束时间点。当到达指定时间时，移动操作会自动停止。时间单位为秒，从游戏开始时间或调用MoveTo/Move方法时开始计算
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param endtime number
function Actor:SetMoveEndTime(endtime) end

--- 角色移动到指定位置，用于让角色自动移动到目标位置。角色会以当前Movespeed的速度直线移动到目标点，到达目标位置后会自动停止并触发MoveFinished事件。此方法会立即返回，移动过程在后台执行
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param target Vector3
function Actor:MoveTo(target) end

--- 角色按指定向量进行位移移动，用于让角色相对于当前位置移动一段距离。角色会按照给定的位移向量移动，移动速度由Movespeed控制。此方法会立即返回，移动过程在后台执行
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param vec Vector3
function Actor:MoveStep(vec) end

--- 角色朝指定方向持续移动，用于让角色按照给定的方向持续移动。角色会以当前Movespeed的速度沿指定方向移动，直到调用StopMove()停止。如果relativeToCamera为true，移动方向会相对于摄像机方向；如果为false，移动方向为世界坐标系方向
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param dir Vector3
---@param relativeToCamera boolean
function Actor:Move(dir, relativeToCamera) end

--- 停止移动，用于立即停止当前正在执行的Move()或MoveTo()移动操作。调用此方法后，角色会立即停止移动，不会触发MoveFinished事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
function Actor:StopMove() end

--- 执行跳跃动作，用于控制角色是否执行跳跃。当参数设置为true时，如果角色在地面上且不在跳跃冷却时间内，角色会执行跳跃动作，获得JumpBaseSpeed的初始速度；设置为false时，停止跳跃动作。跳跃高度由JumpBaseSpeed控制，持续按住跳跃键会应用JumpContinueSpeed来减缓下落
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param jump boolean
function Actor:Jump(jump) end

--- 设置跳跃参数，用于一次性设置角色的跳跃起始速度和持续速度。此方法等同于分别设置JumpBaseSpeed和JumpContinueSpeed属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param baseSpeed number
---@param continueSpeed number
function Actor:SetJumpInfo(baseSpeed, continueSpeed) end

--- 自动寻路到指定位置，用于让角色使用导航网格自动寻路到目标位置。系统会自动计算从当前位置到目标位置的最佳路径，角色会沿着路径自动移动。此方法会立即返回，寻路和移动过程在后台执行。寻路完成后会触发NavigateFinished事件。如果无法找到路径，NoPath属性会被设置为true
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param target Vector3
function Actor:NavigateTo(target) end

--- 设置跳跃冷却时间，用于控制角色两次跳跃之间的最小间隔时间。当角色执行跳跃后，在冷却时间内无法再次跳跃，防止连续快速跳跃。时间单位为秒
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param time number
function Actor:JumpCDTime(time) end

--- 设置是否允许连续跳跃，用于控制角色是否可以在空中连续执行多次跳跃。当设置为true时，角色在空中可以再次执行跳跃（二段跳、三段跳等）；设置为false时，角色只能在地面上跳跃，在空中无法再次跳跃
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param enable boolean
function Actor:SetEnableContinueJump(enable) end

--- 停止自动寻路，用于立即停止当前正在执行的NavigateTo()或NavigateToAsync()寻路操作。调用此方法后，角色会立即停止寻路移动，不会触发NavigateFinished事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
function Actor:StopNavigate() end

--- 获取当前行为状态，用于查询角色当前的行为状态。返回值为BehaviorState枚举类型，表示角色当前的移动和行为状态（如站立、行走、跳跃、飞行、死亡等）。此方法等同于读取MoveState属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@return BehaviorState
function Actor:GetCurMoveState() end

--- 同步查找最近的可行走点，用于在指定位置附近查找一个可以寻路到达的最近点。此方法会在导航网格上查找距离指定位置最近的可行走多边形中心点，用于将目标位置修正为可寻路的有效位置。此方法为同步方法，会立即返回结果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@return Vector3
function Actor:FindNearestPolygonCenter() end

--- 设置是否使用默认动画，用于控制角色是否使用系统默认的动画行为。当设置为true时，角色会根据当前状态（如MoveState）自动播放对应的默认动画；设置为false时，需要手动控制动画播放。默认动画包括站立、行走、跳跃、飞行等状态对应的动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
---@param use boolean
function Actor:UseDefaultAnimation(use) end

--- 绑定自定义玩家皮肤，用于将指定的玩家皮肤资源绑定到当前角色上。此方法会创建一个AvatarPartNode节点并绑定到角色，用于显示玩家的自定义皮肤外观。返回创建的皮肤节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Actor.html
function Actor:BindCustomPlayerSkin() end

return Actor
