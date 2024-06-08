local process = Process("reborn")

function process:onStart()
    
    local bubble = self:bubble()
    
    for i = 1, 5 do
        local u1 = Unit(Player(1), TPL_UNIT.Footman, 0, -1000, 66.6):reborn(2)
        u1:period(5)
        bubble["u" .. i] = u1
    end

end