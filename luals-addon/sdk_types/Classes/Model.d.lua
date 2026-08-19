---@meta

--- 模型节点，用于在场景中加载和显示3D模型，提供模型渲染、物理碰撞、骨骼动画、材质管理等功能
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@class Model : Transform
---@field DimensionUnit DimensionUnit @模型尺寸单位，用于指定模型尺寸的计算单位。设置此属性会影响模型在场景中的实际大小和物理计算。默认值为cenimeter（厘米）
---@field TextureId string @模型的主纹理资源路径，用于设置模型表面的纹理贴图。通过资源路径可以加载并应用纹理到模型上，影响模型的视觉效果。默认值为空字符串
---@field Color ColorQuad @模型的颜色，用于设置模型的整体颜色色调。颜色会与纹理混合，可以用来调整模型的颜色效果。默认值为白色（1, 1, 1, 1）
---@field ModelId string @模型资源路径，用于指定要加载的3D模型资源。默认值为默认模型资源路径
---@field Gravity number @模型的重力加速度，用于控制模型在物理模拟中受到的重力大小。正值表示向下的重力，负值表示向上的力。默认值通常为980
---@field Friction number @模型的摩擦系数，用于控制模型与其他物体接触时的摩擦力大小。取值范围通常在0到1之间，0表示无摩擦（完全光滑），1表示最大摩擦。影响物体滑动和停止的速度。默认值为0
---@field Restitution number @模型的弹性系数，用于控制模型碰撞时的弹性恢复程度。取值范围通常在0到1之间，0表示完全非弹性碰撞（不反弹），1表示完全弹性碰撞（完全反弹）。例如物体撞击地面时，会根据此值计算反弹高度。默认值为0.001
---@field Mass number @模型的质量，用于物理模拟中的惯性计算和碰撞响应。质量越大，物体越难被推动，碰撞时产生的动量也越大。默认值为1000
---@field Velocity Vector3 @模型的线性速度向量，表示模型在世界空间中的移动速度和方向。这是一个Vector3类型，三个分量分别表示X、Y、Z轴方向的速度。可以通过设置此属性来直接控制模型的移动。默认值为(0, 0, 0)
---@field AngleVelocity Vector3 @模型的角速度向量，表示模型绕X、Y、Z轴旋转的角速度。这是一个Vector3类型，用于控制模型的旋转运动。正值表示逆时针旋转，负值表示顺时针旋转。默认值为(0, 0, 0)
---@field Size Vector3 @模型的碰撞包围盒大小，表示模型在X、Y、Z三个轴向上的尺寸（世界空间单位）。这是一个Vector3类型，用于描述模型的物理尺寸，影响碰撞检测和物理计算。模型加载后会自动根据模型网格的包围盒计算并更新此值
---@field Center Vector3 @模型的包围盒中心点在世界坐标系中的位置。这是一个Vector3类型，表示模型包围盒的中心在世界空间中的坐标，用于碰撞检测和空间定位。模型加载后会自动根据模型网格的包围盒计算并更新此值
---@field EnableGravity boolean @是否启用重力，用于控制模型是否受到重力影响。默认值为true，既重力生效
---@field Anchored boolean @锚定状态，用于将模型固定在场景中。当设置为true时，此物体不受外部环境物理影响，但是会给外部提供物理输入。常用于地面、墙壁等固定物体。默认值为true
---@field PhysXType PhysicsType @物理碰撞体的形状类型，用于指定模型在物理模拟中使用的碰撞体形状。不同的形状类型会影响碰撞检测的精度和性能。默认值为BOX
---@field EnablePhysics boolean @是否启用物理特性，用于控制模型是否参与物理计算。默认值为true，既物理特性生效
---@field CanCollide boolean @是否可以产生物理碰撞，用于控制模型是否参与碰撞检测和响应。当设置为true时，模型会与其他物体产生物理碰撞；设置为false时，模型处于trigger状态，不会产生物理碰撞响应，但仍可以触发碰撞事件。默认值为true
---@field CanTouch boolean @是否触发碰撞回调事件，用于控制模型在碰撞时是否触发Touched和TouchEnded事件。当设置为true时，模型与其他物体碰撞会触发相应的事件回调；设置为false时，即使发生碰撞也不会触发事件。默认值为false
---@field CollideGroupID number @碰撞组ID，用于将模型分配到不同的碰撞组中。碰撞组ID是一个整数，可以通过PhysXService:SetCollideInfo函数设置任意两个组之间是否会产生碰撞。默认值为2
---@field CullLayer CullLayer @消隐层。默认值为DEFAULT
---@field IgnoreStreamSync boolean @是否忽略流式同步，用于控制模型是否参与流式加载和同步系统。当设置为true时，模型会忽略流式同步，不会被流式系统管理，始终保持在场景中；设置为false时，模型会参与流式同步，根据位置和距离进行动态加载和卸载。默认值为false，既参与流式同步
---@field TextureOverride boolean @是否启用材质贴图覆盖，用于控制是否允许覆盖模型的默认纹理。当设置为true时，可以通过其他方式（如TextureId属性）覆盖模型的纹理设置。默认值为true，既启用材质贴图覆盖
---@field CastShadow boolean @是否投射阴影，用于控制模型是否向其他物体投射阴影。当设置为true时，模型会在光源照射下向其他物体投射阴影；设置为false时，模型不投射阴影。默认值为true，既投射阴影
---@field CanRideOn boolean @是否可以被骑乘，用于控制模型是否可以作为载具被其他对象跟随移动。当设置为true时，其他对象可以"骑"在这个模型上并跟随其移动；设置为false时，模型不会作为载具。默认值为false，既不能被骑乘
---@field DrawPhysicsCollider boolean @是否显示物理包围盒，用于在编辑器中可视化模型的物理碰撞体。默认值为false，既不显示
---@field ReceiveShadow boolean @是否接收阴影，用于控制模型是否接收其他物体投射的阴影。当设置为true时，模型表面会显示其他物体投射的阴影；设置为false时，模型不接收阴影。默认值为true，既接收阴影
---@field CanBePushed boolean @是否可以被推动，用于控制模型是否可以被其他物体推动。当设置为true时，模型可以被其他物体推动；设置为false时，模型不会被推动。默认值为false，既不能被推动
---@field IsStatic boolean @是否可以被推动，用于控制模型是否可以被其他物体推动。当设置为true时，模型可以被其他物体推动；设置为false时，模型不会被推动。默认值为false，既不能被推动
---@field OutlineActive boolean @是否激活描边效果，用于控制模型是否显示轮廓描边。当设置为true时，模型会显示轮廓描边效果，描边颜色由OutlineColorIndex指定；设置为false时，不显示描边。默认值为false，既不激活描边效果
---@field OutlineColorIndex number @描边的颜色索引，用于指定模型轮廓描边的颜色。取值范围为0到15，对应GameSetting.OutlineColors中定义的颜色。可以通过查看GameSetting.OutlineColors来了解每个索引对应的颜色。默认值为0（白色）
---@field Climbable boolean @是否可被攀爬，用于标记模型是否可以被角色攀爬。当设置为true时，角色在碰撞到此模型时会识别为可攀爬表面，角色可以执行攀爬动作；设置为false时，模型不可被攀爬。默认值为false
---@field Touched SBXSignal @当模型与其他模型发生碰撞接触时触发此事件。可用于检测碰撞、播放音效、触发交互等
---@field TouchEnded SBXSignal @当模型与其他模型的碰撞接触结束时触发此事件。可用于检测碰撞结束、停止音效、结束交互等
---@field AnimationEvent SBXSignal @当模型播放的旧版动画触发动画事件时发送此通知。动画事件是在动画时间轴上标记的特殊时间点，可用于同步音效、特效等
---@field AnimationFrameEvent SBXSignal @当模型播放的旧版动画触发动画帧事件时发送此通知。动画帧事件包含事件名称信息，可用于精确控制动画播放过程中的行为
---@field LoadFinish SBXSignal @当模型的资源加载完成或加载状态发生变化时触发此事件。可用于在模型加载完成后执行初始化操作
local Model = {}

--- 播放动画。可以设置播放速度和循环模式。如果模型上已有相同的动画正在播放，会先停止旧动画再播放新动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param path string
---@param speed number
---@param loop number
---@return boolean
function Model:PlayAnimation(path, speed, loop) end

--- 播放动画（扩展版本），支持设置动画优先级和权重，用于实现动画混合效果。当多个动画同时播放时，系统会根据优先级和权重进行混合
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param path string
---@param speed number
---@param loop number
---@param priority number
---@param weight number
---@return boolean
function Model:PlayAnimationEx(path, speed, loop, priority, weight) end

--- 停止指定资源路径的动画播放。如果该动画正在播放，会立即停止；如果动画不存在或未在播放，则不会有任何效果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param path string
---@return boolean
function Model:StopAnimation(path) end

--- 停止指定资源路径的动画播放（扩展版本），支持在停止时选择是否重置动画状态。当需要让模型恢复到初始姿态时，可以设置reset为true
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param path string
---@param reset boolean
---@return boolean
function Model:StopAnimationEx(path, reset) end

--- 停止模型上所有正在播放的动画。此方法会立即停止所有当前播放的动画，无论其优先级或权重如何
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param reset boolean
---@return boolean
function Model:StopAllAnimation(reset) end

--- 开启或关闭动画事件。当开启时，动画播放过程中会触发动画事件回调，动画事件相关API可参考Animator、LegacyAnimation类，可以用于在特定动画帧执行自定义逻辑
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param enable boolean
function Model:EnableAnimationEvent(enable) end

--- 获取模型上所有正在播放的动画的序列ID列表。序列ID是动画在模型中的内部标识符，用于区分不同的动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return table
function Model:GetAnimationIDs() end

--- 获取指定动画的优先级值。优先级用于控制多个动画同时播放时的混合顺序，优先级高的动画会覆盖优先级低的动画
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param seqid number
---@return number
function Model:GetAnimationPriority(seqid) end

--- 设置指定动画的优先级值。当多个动画同时播放时，系统会根据优先级进行混合，优先级高的动画会覆盖优先级低的动画。可以在动画播放前或播放中动态调整优先级
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param seqid number
---@param value number
function Model:SetAnimationPriority(seqid, value) end

--- 获取指定动画的权重值。权重用于控制动画在混合时的贡献比例，权重越大，动画对最终效果的影响越大
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param seqid number
---@return number
function Model:GetAnimationWeight(seqid) end

--- 设置指定动画的权重值。权重用于控制动画在混合时的贡献比例，可以在动画播放过程中动态调整权重来实现平滑的动画过渡效果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param seqid number
---@param value number
function Model:SetAnimationWeight(seqid, value) end

--- 获取模型上所有骨骼的名称列表。骨骼名称可以用于后续的骨骼操作，如设置骨骼旋转、获取骨骼节点等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return table
function Model:GetBones() end

--- 设置指定骨骼的旋转角度，用于手动控制骨骼的旋转，实现自定义的骨骼动画效果。此方法会覆盖动画对该骨骼的旋转控制
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param boneName string
---@param qua Quaternion
---@param scale number
function Model:SetBoneRotate(boneName, qua, scale) end

--- 获取模型锚点在世界坐标系中的位置。锚点是模型上预定义的特定位置点，可以用于挂载其他对象或进行位置计算
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param id number
---@param offset Vector3
---@return Vector3
function Model:AnchorWorldPos(id, offset) end

--- 检查模型是否已绑定到BindAttachment对象。当模型作为子对象被添加到BindAttachment下时，模型会被绑定到父模型的指定骨骼上，此时该方法返回true
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param set boolean
---@return boolean
function Model:IsBinded(set) end

--- 向模型添加一个力向量，用于在物理模拟中推动模型移动。力会持续作用在模型上，直到被其他力抵消或模型停止。需要模型设置属性EnablePhysics为true才能生效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param force Vector3
function Model:AddForce(force) end

--- 向模型添加一个扭矩（旋转力），用于在物理模拟中使模型旋转。扭矩会持续作用在模型上，直到被其他扭矩抵消或模型停止旋转。需要模型设置EnablePhysics为true才能生效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param torque Vector3
function Model:AddTorque(torque) end

--- 在模型的指定位置添加一个力向量，用于实现更精确的物理控制。与AddForce不同，此方法可以在模型的特定点施加力，会产生旋转效果。需要模型设置属性EnablePhysics为true才能生效
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param force Vector3
---@param position Vector3
---@param mode number
function Model:AddForceAtPosition(force, position, mode) end

--- 设置模型的材质，用于改变模型的渲染外观。此方法会同步加载材质资源并应用到指定的渲染组件上
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param skinMeshRenderCompName string
---@param materialid string
---@param index number
function Model:SetMaterial(skinMeshRenderCompName, materialid, index) end

--- 设置模型的材质（异步版本），用于改变模型的渲染外观。此方法会异步加载材质资源，加载完成后通过回调函数通知。适合在需要等待材质加载完成的场景中使用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param meshRenderCompName string
---@param materialid string
---@param index number
---@param callback function
---@return number
function Model:SetMaterialNew(meshRenderCompName, materialid, index, callback) end

--- 根据名称或索引获取模型的材质节点对象。可以通过材质名称或索引来查找材质，用于后续的材质属性修改操作
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param findKey string
---@param byName boolean
---@param isSkinMeshRender boolean
---@param materialIndex number
---@return SandboxNode
function Model:GetMaterialByNameOrIndex(findKey, byName, isSkinMeshRender, materialIndex) end

--- 根据名称或索引设置模型的材质。可以通过材质名称或索引来定位要设置的材质，然后应用新的材质资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param findKey string
---@param byName boolean
---@param isSkinMeshRender boolean
---@param materialIndex number
---@param resId string
---@param callback function
function Model:SetMaterialByNameOrIndex(findKey, byName, isSkinMeshRender, materialIndex, resId, callback) end

--- 获取模型的LegacyAnimation节点对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return LegacyAnimation
function Model:GetLegacyAnimation() end

--- 获取模型的Animation节点对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Animation
function Model:GetAnimation() end

--- 获取模型的SkeletonAnimation节点对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return SkeletonAnimation
function Model:GetSkeletonAnimation() end

--- 获取模型的Animator节点对象
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Animator
function Model:GetAnimator() end

--- 根据指定的Mesh索引数组和材质索引获取材质实例对象。用于访问模型特定Mesh上的材质，可以用于修改材质属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param indices table
---@param materialIndex number
---@return SandboxNode
function Model:GetMaterialInstance(indices, materialIndex) end

--- 检查模型的资源是否已加载完成。可用于在访问模型资源前检查加载状态，避免访问未加载的资源
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return boolean
function Model:IsLoadFinish() end

--- 获取模型在渲染时的世界坐标位置。此位置可能与物理位置不同，用于获取实际渲染显示的位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Vector3
function Model:GetRenderPosition() end

--- 获取模型在渲染时的世界旋转（四元数）。此旋转可能与物理旋转不同，用于获取实际渲染显示的旋转
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Quaternion
function Model:GetRenderRotation() end

--- 获取模型在渲染时的世界旋转（欧拉角）。此旋转可能与物理旋转不同，用于获取实际渲染显示的旋转角度
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Vector3
function Model:GetRenderEuler() end

--- 在指定父骨骼节点的子骨骼中查找并获取指定名称的骨骼节点。此方法会在父骨骼的所有直接子骨骼中查找，不会递归查找子骨骼的子骨骼
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param parentBoneNode SandboxNode
---@param name string
---@return SandboxNode
function Model:GetBoneNodeChildByName(parentBoneNode, name) end

--- 在整个模型的骨骼层次结构中按名称查找并获取骨骼节点。此方法会递归查找所有骨骼，包括子骨骼的子骨骼
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param name string
---@return SandboxNode
function Model:GetBoneNodeByName(name) end

--- 设置模型的材质资源路径，用于替换模型的默认材质。此方法会加载指定的材质资源并应用到模型的所有渲染组件上
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param materialResId string
function Model:SetMaterialResId(materialResId) end

--- 获取模型已加载的资源类型。用于查询模型当前加载的资源类型状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return number
function Model:GetLoadedResType() end

--- 获取模型的资源内容对象。用于访问模型的子资源，如材质、纹理等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param meshIndices table
---@param resType AssetResType
---@param index number
---@return SandboxNode
function Model:GetAssetContent(meshIndices, resType, index) end

--- 设置模型的资源内容对象。用于替换模型的子资源，如材质、纹理等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param content SandboxNode
---@param meshIndices table
---@param index number
---@return boolean
function Model:SetAssetContent(content, meshIndices, index) end

--- 获取模型的快照对象。快照用于保存模型在某一时刻的状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return SandboxNode
function Model:GetSnapShot() end

--- 设置指定名称的渲染组件的阴影属性。用于控制模型特定渲染组件是否投射或接收阴影
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param rendererName string
---@param index number
---@param enable boolean
function Model:SetRenderersShadow(rendererName, index, enable) end

--- 设置指定索引的渲染组件的阴影属性。用于控制模型特定渲染组件是否投射或接收阴影
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param rendererIndices table
---@param index number
---@param enable boolean
function Model:SetRendererShadow(rendererIndices, index, enable) end

--- 获取模型中指定纹理名称的所有TextureRef路径。TextureRef路径用于标识纹理在模型层次结构中的位置，格式为"GameObject1.0
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return table
function Model:GetAllTextureRefPaths() end

--- 检测射线是否与模型相交，并返回相交点的位置。用于实现鼠标拾取、射线检测等功能
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param ray Ray
---@return boolean
function Model:IntersectRayPos(ray) end

--- 获取射线与模型相交点的世界坐标位置。需要先调用IntersectRayPos进行相交检测，如果返回true，再调用此方法获取相交点位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Vector3
function Model:GetIntersectRayPos() end

--- 获取射线与模型相交点的UV坐标。UV坐标用于在纹理上定位相交点对应的纹理位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return Vector2
function Model:GetIntersectRayUv() end

--- 获取射线与模型相交点处的材质数量。一个Mesh可能包含多个材质，此方法返回相交点处材质的数量
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@return number
function Model:GetIntersectRayMaterialCount() end

--- 获取射线与模型相交点处指定索引的材质对象。用于访问相交点处的材质，可以修改材质属性
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param index number
---@return SandboxNode
function Model:GetIntersectRayMaterial(index) end

--- 设置指定骨骼的后处理缩放。后处理缩放会在骨骼动画计算完成后应用，用于调整骨骼的最终显示大小
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param boneName string
---@param scale Vector3
---@param mode unsignedchar
function Model:SetBonePostScale(boneName, scale, mode) end

--- 设置指定骨骼的后处理位置偏移。后处理位置会在骨骼动画计算完成后应用，用于调整骨骼的最终显示位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param boneName string
---@param offset Vector3
---@param mode unsignedchar
function Model:SetBonePostPos(boneName, offset, mode) end

--- 清除指定骨骼的所有后处理信息（包括位置、旋转、缩放等）。恢复骨骼到原始状态
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param boneName string
function Model:ClearBone(boneName) end

--- 设置骨骼的特效信息。用于在指定骨骼上附加特效，如粒子效果、光效等
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param effectInfo table
function Model:SetBoneEffect(effectInfo) end

--- 获取指定节点路径的混合形状（BlendShape）信息。混合形状用于实现面部表情、变形等效果
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param nodePath string
---@return table
function Model:GetBlendShapeInfo(nodePath) end

--- 设置指定节点路径的混合形状权重。混合形状权重控制变形的强度，取值范围通常为0.0到1.0
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param nodePath string
---@param index number
---@param weight number
---@return boolean
function Model:SetBlendShapeWeight(nodePath, index, weight) end

--- 设置是否显示模型的骨骼。开启后会在场景中显示骨骼的线框结构，用于调试和可视化骨骼层次
--- @see https://studio.mini1.cn/wiki/Api/Classes/Role/Model.html
---@param show boolean
function Model:ShowBones(show) end

return Model
