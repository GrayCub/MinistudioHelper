---@meta
---@diagnostic disable: missing-fields

---@class CoreUiComponent : EnumValue<CoreUiComponent>
---@field Value CoreUiComponent
Enum.CoreUiComponent = {
    ---@type CoreUiComponent
    None = {}, -- Value = 0; 无
    ---@type CoreUiComponent
    All = {}, -- Value = 1; 全部
    ---@type CoreUiComponent
    BtnExit = {}, -- Value = 2; 退出按钮
    ---@type CoreUiComponent
    BtnMsg = {}, -- Value = 3; 消息按钮
    ---@type CoreUiComponent
    BtnRoomInfo = {}, -- Value = 4; 房间信息按钮
    ---@type CoreUiComponent
    BtnSet = {}, -- Value = 5; 设置按钮
    ---@type CoreUiComponent
    BtnMic = {}, -- Value = 6; 麦克按钮
    ---@type CoreUiComponent
    BtnLoudSpeaker = {}, -- Value = 7; 喇叭按钮
    ---@type CoreUiComponent
    SocialBtn = {}, -- Value = 9; 社交按钮
}

