local process = Process("team")

function process:onStart()
    
    local bubble = self:bubble()
    
    local eat = Team("吃饭大队", 2, true, true)
        :members({ 2, 3, 4, 5, 6 })
    
    bubble.t1 = eat
    
    time.setTimeout(3, function()
        eat:setColor(PLAYER_COLOR_GREEN)
    end)
    
    for i = 1, 20 do
        local u = Unit(eat, TPL_UNIT.Footman, 0, 0)
        bubble["u" .. i] = u
    end

end