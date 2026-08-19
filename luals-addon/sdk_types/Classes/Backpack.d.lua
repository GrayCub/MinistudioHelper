---@meta

--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@class Backpack : SandboxNode
---@field CoreUiEnabled boolean @是否显示默认的快捷栏UI，默认值为false
local Backpack = {}

--- 获取某个键位对应的道具，index从1开始
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@param index number
---@return Tool
function Backpack:GetTool(index) end

--- 设置道具到具体的物品栏按键位置
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@param index number
---@param tool Tool
function Backpack:SetTool(index, tool) end

--- 移除某物品栏道具
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@param index number
function Backpack:RemoveTool(index) end

--- 获取当前装备的道具
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@return Tool
function Backpack:GetCurEquipedTool() end

--- 查询道具是否已经放在物品栏中，返回下标
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/Backpack.html
---@param tool Tool
---@return number
function Backpack:FindTool(tool) end

return Backpack
