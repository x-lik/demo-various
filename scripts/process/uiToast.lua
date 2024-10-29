local process = Process("uiToast")

function process:onStart()
    
    local bubble = self:bubble()
    
    -- test toast
    ---@type ItemTpl
    local tpl = setmetatable({}, { __index = TPL_ITEM.IT1 })
    tpl:toast("Str-" .. tpl:name())
    tpl:setNil("toast")
    --tpl:toast(function(this)
    --    return "Func-" .. this:name()
    --end)
    for i = 1, 30, 1 do
        bubble["xyz" .. i] = uiToast.insert(nil, {
            x = math.rand(-500, 500),
            y = math.rand(-500, 500),
            z = 150,
            content = i
        })
    end
    for i = 1, 10, 1 do
        local u = Unit(PlayerPassive, TPL_UNIT.Footman, math.rand(-300, 0), math.rand(0, 300), 270)
        uiToast.insert(u)
        bubble["unit" .. i] = u
    end
    for i = 1, 10, 1 do
        local it = Item(tpl)
        it:position(math.rand(-300, 0), math.rand(-300, 0))
        uiToast.insert(it, {
            content = { "嘻嘻", "哈哈" }
        })
        bubble["item" .. i] = it
    end
    for i = 1, 10, 1 do
        local e = effector.agile("BundleOfGifts", math.rand(0, 300), math.rand(0, -300))
        uiToast.insert(e, {
            content = "礼物" .. i
        })
        bubble["eff" .. i] = e
    end
    for i = 1, 10, 1 do
        local c = Coordinate(math.rand(0, 300), math.rand(0, 300), 300)
        uiToast.insert(c, {
            content = "coo" .. i
        })
        bubble["coo" .. i] = c
    end

end

function process:onOver()
    local bubble = self:bubble()
    for i = 1, 30, 1 do
        uiToast.remove(bubble["xyz" .. i])
    end
end