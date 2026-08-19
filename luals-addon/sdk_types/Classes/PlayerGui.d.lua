---@meta

--- PlayerGui 对象是一个保存 Player 的用户 GUI 的容器。 如果 ScreenGui 是 PlayerGui 的后代，则 ScreenGui 内的任何 GuiObject 都将被绘制到玩家的屏幕上。 任何 LocalScript 一旦插入 PlayerGui 就会立即运行。 当玩家第一次加入游戏时，他们的 PlayerGui 会自动插入到他们的 Player 对象中。 当玩家的 Player.Character 第一次生成时，StarterGui 的所有内容都会自动复制到玩家的 PlayerGui 中。
--- @see https://studio.mini1.cn/wiki/Api/Classes/GamePlay/PlayerGui.html
---@class PlayerGui : SandboxNode
local PlayerGui = {}

return PlayerGui
