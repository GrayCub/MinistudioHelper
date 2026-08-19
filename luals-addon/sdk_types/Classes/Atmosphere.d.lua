---@meta

--- 雾效节点。用于配置雾效类型、雾色以及线性雾的起止距离，并可对天空雾化强度进行偏移调节，修改后即时作用于全局渲染设置
--- @see https://studio.mini1.cn/wiki/Api/Classes/Build/Atmosphere.html
---@class Atmosphere : SandboxNode
---@field FogType FogType @雾效类型。默认值为Disable，关闭雾效
---@field FogColor ColorQuad @雾效颜色（RGBA）。默认值为蓝色(114,163,255,255)
---@field FogStart number @线性雾近端距离（世界单位）。仅当雾类型为Linear时生效，应小于FogEnd，默认值为4800
---@field FogEnd number @线性雾远端距离（世界单位）。仅当雾类型为Linear时生效，应大于FogStart，默认值为12800
---@field FogOffset number @天空雾化强度偏移量。仅当雾类型为Linear时生效，用于微调天空层的雾化强弱，默认值为1
local Atmosphere = {}

return Atmosphere
