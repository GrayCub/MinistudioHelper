---@meta

--- 用于3D空间中的UI广告牌容器
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIBillboard.html
---@class UIBillboard : Transform
---@field Billboard boolean @是否启用广告牌模式，默认值为false，不启用广告牌模式
---@field Size2d Vector2 @设置容器2D平面大小，默认值为(1,1)。当KeepSize=true时，单位为屏幕坐标，UI保持固定屏幕尺寸；当KeepSize=false时，单位为世界坐标，UI会根据距离摄像机远近进行缩放
---@field Visible boolean @UI容器是否可见，默认值为true，可见
---@field CanCollide boolean @是否启用物理碰撞检测，默认值为false，不发生物理碰撞检测
---@field ResolutionLevel ResolutionLevel @渲染清晰度等级，默认R1X(1倍分辨率)
---@field CullLayer CullLayer @消隐层，默认值为DEFAULT
---@field IgnoreStreamSync boolean @是否忽略流同步，默认值为false，不忽略流同步，仅限服务器端调用
---@field CanCoverByTrans boolean @Billboard模式时是否可被物体遮挡，默认值为true（高内存消耗），可以被物体遮挡
---@field KeepSize boolean @UI容器是否保持固定屏幕尺寸，默认值为true，此属性仅在Billboard为true且CanCoverByTrans为false时生效
local UIBillboard = {}

return UIBillboard
