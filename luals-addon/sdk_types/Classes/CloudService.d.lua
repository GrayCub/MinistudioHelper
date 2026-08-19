---@meta

--- 此类是一个服务！它是Cloud节点，可以使用GetService函数获取。负责Cloud服务 kv接口错误码: 0-成功 1-查询后端出错 2-未查询到key(not found) 101-解析错误 103-禁止的操作 104-没有数据存储 105-批量操作的key列表为空
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@class CloudService : Service
---@field NotifyOnMessage SBXSignal @接收所有tcp直连消息的事件
---@field NotifyOnConnectionMessage SBXSignal @连接信息通知
local CloudService = {}

--- 获取所有key值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
function CloudService:GetAllKeys(name) end

--- 异步获取所有key值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param func function
function CloudService:GetAllKeysAsync(name, func) end

--- 设置同步kv值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param kv_table table
function CloudService:MultiSetValue(name, kv_table) end

--- 设置异步kv值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param kv_table table
---@param func function
function CloudService:MultiSetValueAsync(name, kv_table, func) end

--- 获取同步 key 列表对应的 value
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param keys table
function CloudService:MultiGetValue(name, keys) end

--- 异步获取 key 列表对应的 value
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param keys table
---@param func function
function CloudService:MultiGetValueAsync(name, keys, func) end

--- 同步删除 key 对应的 value
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param keys table
function CloudService:MultiRemoveKeys(name, keys) end

--- 异步删除 key 对应的 value
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param keys table
---@param func function
function CloudService:MultiRemoveKeysAsync(name, keys, func) end

--- 设置同步kv值，支持复杂数据类型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param value ReflexVariant
function CloudService:SetValueV2(name, key, value) end

--- 设置异步kv值，支持复杂数据类型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param value ReflexVariant
---@param func function
function CloudService:SetValueAsyncV2(name, key, value, func) end

--- 获取同步key对应的value值，支持复杂数据类型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
function CloudService:GetValueV2(name, key) end

--- 获取异步key对应的value值，支持复杂数据类型
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param func function
function CloudService:GetValueAsyncV2(name, key, func) end

--- 删除同步key对应的value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
function CloudService:RemoveKeyV2(name, key) end

--- 删除异步key对应的value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param func function
function CloudService:RemoveKeyAsyncV2(name, key, func) end

--- 全局修改同步key对应的value值, 仅云服主机可用, 可在不同服务器之间安全修改kv值, 但性能更差
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param value_getter function
function CloudService:GlobalModify(name, key, value_getter) end

--- 全局获取异步key对应的value值, 仅云服主机可用, 可在不同服务器之间安全获取kv值, 但性能更差
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param func function
function CloudService:GlobalGet(name, key, func) end

--- 获取订单数据云节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param tableName string
---@return SandboxNode
function CloudService:GetOrderDataCloud(tableName) end

--- 房间上报分发请求（仅云服主机可用）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param topic string
---@param message MNJsonVal
---@return boolean
function CloudService:PublishAsync(topic, message) end

--- 房间上报分发请求（仅云服主机可用）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param topic string
---@param message MNJsonVal
---@param serverid string
---@return boolean
function CloudService:PublishAsync(topic, message, serverid) end

--- 房间监听消息（仅云服主机可用）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param topic string
---@param callback function
function CloudService:SubscribeAsync(topic, callback) end

--- 跳转到地图
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param mapid longlong
---@param uin number
---@param teleportData MNJsonVal
---@return boolean
function CloudService:TeleportToMap(mapid, uin, teleportData) end

--- 跳转到地图
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param mapid longlong
---@param uin number
---@param teleportData MNJsonVal
---@param reportData table
---@return boolean
function CloudService:TeleportToMap(mapid, uin, teleportData, reportData) end

--- 跳转到地图
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param mapid longlong
---@param uin number
---@param teleportData MNJsonVal
---@param reportData table
---@param skipComfirm boolean
---@return boolean
function CloudService:TeleportToMap(mapid, uin, teleportData, reportData, skipComfirm) end

--- 跳转到房间
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param serverid string
---@param uin number
---@param teleportData MNJsonVal
---@return boolean
function CloudService:TeleportToServer(serverid, uin, teleportData) end

--- 跳转到房间
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param serverid string
---@param uin number
---@param teleportData MNJsonVal
---@param reportData table
---@return boolean
function CloudService:TeleportToServer(serverid, uin, teleportData, reportData) end

--- 查询玩家所在房间(仅云服主机可用)
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param uin number
---@param callback function
function CloudService:GetPlayerServer(uin, callback) end

--- 开启并跳转到新房间
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param uin number
---@param mapid longlong
---@param serverData MNJsonVal
---@return boolean
function CloudService:ReserveServer(uin, mapid, serverData) end

--- 开启并跳转到新房间
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param uin number
---@param mapid longlong
---@param serverData MNJsonVal
---@param teleportData MNJsonVal
---@param reportData table
---@return boolean
function CloudService:ReserveServer(uin, mapid, serverData, teleportData, reportData) end

--- 获取开服参数 any
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@return MNJsonVal
function CloudService:GetServerRoomType() end

--- 获取服务ID
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@return string
function CloudService:GetServerID() end

--- 获取玩家进入房间时伴随的自定义数据（如果有）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@return MNJsonVal
function CloudService:GetPlayerTeleportInfo() end

--- 获取玩家进入房间时伴随的自定义数据（如果有）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param uin number
---@return MNJsonVal
function CloudService:GetServerPlayerTeleportInfo(uin) end

--- 当前房间停止进入玩家；禁止参与倒计时（小于等于零立即生效，默认0）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@return boolean
function CloudService:SetForbidJoin() end

--- 清理表名name 的全部kv
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@return number
function CloudService:ClearDataList(name) end

--- 清理表名 name 的全部 kv
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param func function
---@return number
function CloudService:ClearDataListAsync(name, func) end

--- 查询/开启标识为 key 的中心服；同 key 不会重复开启，除非上一实例已关闭
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param mapid string
---@param callback function
function CloudService:GetCenterServerAsync(key, mapid, callback) end

--- 获取当前中心服的标识 key；非中心服返回 ""
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@return string
function CloudService:GetCenterServerKey() end

--- 关闭当前云服（任何云服），要确保玩家正确下线（一般房间云服）
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param reason string
function CloudService:ShutdownServer(reason) end

--- 向多个房间发送 tcp 直连消息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param serverids table
---@param arguments ReflexTuple
---@return boolean
function CloudService:SendMessage(serverids, arguments) end

--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param arg1 table
---@param arg2 function
function CloudService:ReqPlayersSeat(arg1, arg2) end

--- (已废弃)设置同步value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param name string
---@param value string
function CloudService:SetValue(key, name, value) end

--- (已废弃)获取同步value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param name string
function CloudService:GetValue(key, name) end

--- (已废弃)设置异步value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param name string
---@param value string
---@param func function
function CloudService:SetValueAsync(key, name, value, func) end

--- (已废弃)获取异步value值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param name string
---@param func function
function CloudService:GetValueAsync(key, name, func) end

--- (已废弃)设置同步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param value table
function CloudService:SetTable(key, value) end

--- (已废弃)获取同步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
function CloudService:GetTable(key) end

--- (已废弃)设置异步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param value table
---@param func function
function CloudService:SetTableAsync(key, value, func) end

--- (已废弃)获取异步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param func function
function CloudService:GetTableAsync(key, func) end

--- (已废弃)获取同步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
function CloudService:GetTableOrEmpty(key) end

--- (已废弃)获取异步table值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param func function
function CloudService:GetTableOrEmptyAsync(key, func) end

--- (已废弃)同步移除key
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
function CloudService:RemoveKey(key) end

--- (已废弃)异步移除 key
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param key string
---@param func function
function CloudService:RemoveKeyAsync(key, func) end

--- (已废弃)存储带表名name得kv
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param value LuaArguments
---@return number
function CloudService:SetDataListByKey(name, key, value) end

--- (已废弃)存储带表名name得kv
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param value LuaArguments
---@param func function
---@return number
function CloudService:SetDataListByKeyAsync(name, key, value, func) end

--- (已废弃)获取表名name，键值k存储得值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@return number
function CloudService:GetDataListByKey(name, key) end

--- (已废弃)获取表名name，键值k存储得值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param func function
---@return number
function CloudService:GetDataListByKeyAsync(name, key, func) end

--- (已废弃)移除表名name，键值k存储得值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@return number
function CloudService:RemoveDataListByKey(name, key) end

--- (已废弃)移除表名name，键值k存储得值
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/CloudService.html
---@param name string
---@param key string
---@param func function
---@return number
function CloudService:RemoveDataListByKeyAsync(name, key, func) end

return CloudService
