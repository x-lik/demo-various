---@param whichItem Item|ItemTpl
---@param whichPlayer Player
---@return table
function tooltipsWarehouse(whichItem, whichPlayer)
    if (class.instanceof(whichItem, ItemTplClass) == false) then
        return nil
    end
    local icons = {
        { "lumber", "C49D5A", "木" },
        { "gold", "ECD104", "金" },
        { "silver", "E3E3E3", "银" },
        { "copper", "EC6700", "铜" }
    }
    local content = {
        tips = description.combine(whichItem, nil, "itemBase"),
        icons = {},
        bars = {},
        list = {},
    }
    if (isVast(whichPlayer, PlayerClass)) then
        local wor = whichItem:worth()
        local cale = worth.cale(wor, "*", whichPlayer:recoveryRatio() * 0.01)
        for _, c in ipairs(icons) do
            local key = c[1]
            local color = c[2]
            local uit = c[3]
            local val = math.floor(cale[key] or 0)
            if (val > 0) then
                if (uit ~= nil) then
                    val = val .. " " .. uit
                end
                table.insert(content.icons, {
                    texture = "Framework\\ui\\" .. key .. ".tga",
                    text = colour.hex(color, val),
                })
            end
        end
    end
    if (isVast(whichItem, ItemClass)) then
        local lv = whichItem:level()
        if (lv < whichItem:levelMax()) then
            if (whichItem:exp() > 0) then
                local cur = whichItem:exp() or 0
                local prev = game.itemExpNeeds(lv)
                local need = game.itemExpNeeds(lv + 1)
                local percent = math.trunc((cur - prev) / (need - prev), 3)
                if (percent ~= nil) then
                    table.insert(content.bars, {
                        texture = "Framework\\ui\\tile_white.tga",
                        text = colour.hex(colour.white, "经验：" .. math.floor(cur - prev) .. "/" .. math.ceil(need - prev)),
                        ratio = percent,
                        width = 0.10,
                        height = 0.001,
                    })
                end
            end
        end
    end
    return content
end