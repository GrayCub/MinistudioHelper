---@meta

--- 视频图像组件。用于在UI中播放视频内容，支持MP4等视频格式
--- @see https://studio.mini1.cn/wiki/Api/Classes/Scene/UIVideoImage.html
---@class UIVideoImage : UIComponent
---@field FileName string @视频文件路径设置
---@field Loop number @循环播放次数设置。设置为大于1的值时会循环播放指定次数，否则不循环播放。默认值为99
---@field Play boolean @视频播放控制。设置为true开始播放，false停止播放，默认值为false
local UIVideoImage = {}

return UIVideoImage
