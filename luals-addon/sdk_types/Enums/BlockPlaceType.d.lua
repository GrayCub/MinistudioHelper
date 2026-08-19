---@meta
---@diagnostic disable: missing-fields

---@class BlockPlaceType : EnumValue<BlockPlaceType>
---@field Value BlockPlaceType
Enum.BlockPlaceType = {
    ---@type BlockPlaceType
    COVER = {}, -- Value = 0; 覆盖：当前位置有方块，也会将方块替换掉（默认）
    ---@type BlockPlaceType
    AIR = {}, -- Value = 1; 空气：当前位置如果为空才会放置方块，若有则不放置
    ---@type BlockPlaceType
    NOT_SAME = {}, -- Value = 2; 若方块id相同不覆盖
    ---@type BlockPlaceType
    NOT_SAMEID = {}, -- Value = 3; 只当ID不同时覆盖，仅blockdata不同时不会覆盖
}

