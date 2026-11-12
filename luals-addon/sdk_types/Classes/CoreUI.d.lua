---@meta

---@class FCoreUIUiChangeEvent : SBXSignal
FCoreUIUiChangeEvent = {}

---@param callback fun(): nil
---@return SBXConnection
function FCoreUIUiChangeEvent:Connect(callback) end

---@class FCoreUISnapshotFinishEvent : SBXSignal
FCoreUISnapshotFinishEvent = {}

---@param callback fun(success: boolean, texture: Texture2D): nil
---@return SBXConnection
function FCoreUISnapshotFinishEvent:Connect(callback) end


--- 核心UI服务，管理游戏中所有内置界面组件的显示/隐藏状态，包括退出按钮、消息按钮、房间信息、设置按钮、麦克风和喇叭控制等
---@class CoreUI : Service
---@field HideBtnExit boolean 是否隐藏退出按钮，默认值为false，显示退出按钮
---@field HideBtnMsg boolean 是否隐藏消息按钮，默认值为flase，显示消息按钮
---@field HideViewRoomInfo boolean 是否隐藏房间信息视图，默认值为flase，显示房间信息视图
---@field MicUnMute boolean 麦克风是否静音，默认值为true，麦克风不静音
---@field HornUnMute boolean 喇叭是否静音，默认值为true，喇叭不静音
---@field HideBtnSet boolean 是否隐藏设置按钮，默认值为flase，显示设置按钮
---@field UiChange FCoreUIUiChangeEvent <Assignable> 当内置界面组件状态发生变化时触发的通知事件，仅限客户端调用
---@field SnapshotFinish FCoreUISnapshotFinishEvent <Assignable> 截屏完成时触发的通知事件
local CoreUI = {}

--- 弹出退出当前房间确认框，点击确认后退出，仅限客户端调用
function CoreUI:ExitGame() end

--- 获取用户头像，传入用户uin，返回用户头像节点，仅限客户端调用。如果传入的uin为空字符串或无效，仍会创建头像节点但可能无法正确显示头像内容
---@param uin string
---@return SandboxNode
function CoreUI:GetHeadNode(uin) end

--- 检查当前运行环境是否支持语音聊天功能，如果支持，则返回true，否则返回false，主要用于控制语音相关UI的显示和功能的启用
---@return boolean
function CoreUI:CheckVoiceChatEnable() end

--- 获取随机昵称，根据性别参数生成合适的昵称，传入参数为0-无性别限制，1-男性，2-女性，返回随机昵称字符串。如果传入无效的性别参数，系统会按无性别限制处理
---@param nSex number
---@return string
function CoreUI:GetRandomNickName(nSex) end

--- 检测ui是否被隐藏，仅限客户端调用。如果传入无效的枚举值，返回false
---@param val EnumCoreUi
---@return boolean
function CoreUI:CheckCoreUiHide(val) end

--- 根据传入的EnumCoreUi类型，隐藏对应的CoreUi默认组件，仅限客户端调用。如果传入无效的枚举值，操作会被忽略
---@param val EnumCoreUi
function CoreUI:HideCoreUi(val) end

--- 打开玩家仓库皮肤界面，仅限客户端调用
function CoreUI:OpenWareHouse() end

--- 执行截屏操作，仅限客户端调用
---@param val number
function CoreUI:DoSnapshot(val) end

return CoreUI
