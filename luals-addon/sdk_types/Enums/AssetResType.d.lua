---@meta
---@diagnostic disable: missing-fields

---@class AssetResType : EnumValue<AssetResType>
---@field Value AssetResType
Enum.AssetResType = {
    ---@type AssetResType
    Unknown = {}, -- Value = 1; 未知
    ---@type AssetResType
    Texture = {}, -- Value = 2; 图片
    ---@type AssetResType
    Bone = {}, -- Value = 3; 骨头
    ---@type AssetResType
    Audio = {}, -- Value = 4; 音频
    ---@type AssetResType
    Video = {}, -- Value = 5; 视频
    ---@type AssetResType
    Preload = {}, -- Value = 6; 预制体
    ---@type AssetResType
    Material = {}, -- Value = 7; 材质
    ---@type AssetResType
    Particle = {}, -- Value = 8; 粒子
    ---@type AssetResType
    Light = {}, -- Value = 9; 光源
    ---@type AssetResType
    Cubemap = {}, -- Value = 10; 立方体贴图
    ---@type AssetResType
    Blue = {}, -- Value = 11; 蓝图
    ---@type AssetResType
    Skeleton = {}, -- Value = 12; 骨骼
    ---@type AssetResType
    AnimController = {}, -- Value = 13; 动画控制
    ---@type AssetResType
    AnimOverrideController = {}, -- Value = 14; 动画Override控制
    ---@type AssetResType
    AnimAvatarMask = {}, -- Value = 15; Avatar遮罩
    ---@type AssetResType
    AnimClip = {}, -- Value = 16; 动画切片
    ---@type AssetResType
    AnimSkClip = {}, -- Value = 17; 骨骼动画切片
    ---@type AssetResType
    AnimBlendTree = {}, -- Value = 18; 动画混合树
    ---@type AssetResType
    NodePacket = {}, -- Value = 19; 节点包
    ---@type AssetResType
    Gif = {}, -- Value = 20; Gif图
    ---@type AssetResType
    Mesh = {}, -- Value = 21
    ---@type AssetResType
    ModelData = {}, -- Value = 22
    ---@type AssetResType
    Font = {}, -- Value = 23
    ---@type AssetResType
    DynamicBoneConfig = {}, -- Value = 24
    ---@type AssetResType
    DragonBone = {}, -- Value = 25
}

