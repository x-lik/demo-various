local process = Process("destructable")

function process:onStart()
    
    local bubble = self:bubble()
    
    ---@type number[]
    for i = 1, 10, 1 do
        local d = destructable.create("WTst", 0, -500 + i * 100, 0, 0, 1, 0)
        bubble["tree" .. i] = d
    end
    
    time.setTimeout(3, function()
        local g = Group("destructable"):catch({
            circle = { x = 0, y = -500, radius = 700, }
        })
        if (#g > 0) then
            for _, d in ipairs(g) do
                destructable.kill(d)
            end
            time.setTimeout(3, function()
                for _, d in ipairs(g) do
                    destructable.reborn(d, true)
                end
            end)
        end
    end)
    
    ---@param deadData evtOnDestructableDeadData
    event.reactRegister(eventKind.destructableDead, function(deadData)
        local handle = deadData.triggerDestructable
        local x = destructable.getX(handle)
        local y = destructable.getY(handle)
        local id = destructable.h2i(handle, true)
        print("DEAD:", handle, id, x, y)
    end)

end