---@meta
---@diagnostic disable: missing-fields

---@class AIGenType : EnumValue<AIGenType>
---@field Value AIGenType
Enum.AIGenType = {
    ---@type AIGenType
    TEXT_TO_MSG = {}, -- Value = 0; 文本生成文本
    ---@type AIGenType
    TEXT_TO_MODEL = {}, -- Value = 1; 文本生成模型
    ---@type AIGenType
    TEXT_TO_IMAGE = {}, -- Value = 2; 文本生成贴图
    ---@type AIGenType
    IMAGE_TO_MODEL = {}, -- Value = 3; 贴图生成模型
}

