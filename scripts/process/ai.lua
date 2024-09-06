local process = Process("ai")

function process:onStart()
    
    local bubble = self:bubble()
    
    -- 步兵一个
    local u = Unit(Player(1), TPL_UNIT.Footman, 0, -200, 270)
    bubble.u1 = u
    
    AI("loiter"):link(u)
    
end