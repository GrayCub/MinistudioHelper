---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/Effect/Particle.html
---@class Particle : SandboxNode
---@field Enable boolean @是否可用
---@field Speed number @速度
---@field Texture string @纹理
---@field Max_particles number @最大粒子数
---@field Spread number @传播
---@field Gravity_direction Vector3 @重力方向
---@field Gravity number @重力
---@field Lifespan number @持续时长
---@field Mid_point number @中点
---@field Emitrate number @发射的
---@field Length number @长
---@field Width number @宽
---@field Color_key table @颜色组合
---@field Opacity number @透明度
---@field Blend_mode_type number @混合模式类型
---@field Emitter_type number @发射器类型
---@field Particle_dir_type number @粒子方向类型
---@field Local_coord boolean @本地命令
---@field Tile_mode number @平铺模式
---@field Tile_rows number @平铺行
---@field Tile_cols number @平铺列
---@field Tile_seconds number @平铺秒数
---@field Speed_var number @速度变量
---@field Spread_offset number @排列偏移量
---@field Latitude number @纬度
---@field Resistance number @阻力
---@field Life_var number @声明周期
---@field Random_spread number @随机排列
---@field Size_var number @尺寸
---@field Size_keys table @尺寸组合
---@field Aspect_keys table @面组合
local Particle = {}

return Particle
