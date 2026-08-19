---@meta

--- 开发者商店服务节点，专门用于处理游戏内虚拟商品交易。提供商品信息查询、商品购买、订单管理、库存操作等功能。支持开发者产品配置、玩家购买记录查询、迷你币支付、订单状态同步等特性，是游戏内购系统的核心服务节点
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@class DeveloperStoreService : Service
---@field OnDeveloperStoreGoods SBXSignal @仅服务端监听，用于通知购买结果
---@field RemoteBuyGoodsCallBack SBXSignal @通知服务器购买结果
local DeveloperStoreService = {}

--- 查询当前地图开发者商店列表
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
function DeveloperStoreService:GetDeveloperStoreItems() end

--- 查询指定商品(开发者商店中商品)的信息
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param productId number
---@return table
function DeveloperStoreService:GetProductInfo(productId) end

--- 打开Mini币充值弹窗
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
function DeveloperStoreService:MiniCoinRecharge() end

--- 购买开发者商店商品，调起购买弹窗，仅客机可调用
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param goodsId number
---@param goodsNum number
---@param extra string
---@param desc string
function DeveloperStoreService:BuyDeveloperStoreGoods(goodsId, goodsNum, extra, desc) end

--- 根据开发者自定义的商品ID购买开发者商店商品，调起购买弹窗。仅客机可调用，游戏版本需大于1.53
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param itemId number
---@param goodsNum number
---@param extra string
---@param desc string
function DeveloperStoreService:BuyDeveloperStoreGoodsByItemID(itemId, goodsNum, extra, desc) end

--- 根据开发者自定义的商品ID获取商品id。游戏版本需大于1.53
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param itemId number
---@return number
function DeveloperStoreService:GetGoodsIDByItemID(itemId) end

--- 查询并批量提取仓库物品，仅服务端执行，用于处理开发者添加的道具，或者购买不到账时重新触发，调用后会查询玩家仓库物品，并逐个触发 OnDeveloperStoreGoods 事件
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param uin UinType
function DeveloperStoreService:ApplyStoreItems(uin) end

--- 给指定玩家添加仓库物品，仅服务端执行，目标玩家可以不在线，须再次调用 ApplyStoreItems 来触发购买道具的回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param uin number
---@param goodsId number
---@param goodsNum number
---@param extra string
function DeveloperStoreService:AddStoreGoods(uin, goodsId, goodsNum, extra) end

--- 给指定玩家添加仓库物品，仅服务端执行，目标玩家可以不在线，须再次调用 ApplyStoreItems 来触发购买道具的回调
--- @see https://studio.mini1.cn/wiki/Api/Classes/Service/DeveloperStoreService.html
---@param uin number
---@param itemId number
---@param itemNum number
---@param extra string
function DeveloperStoreService:AddStoreItem(uin, itemId, itemNum, extra) end

return DeveloperStoreService
