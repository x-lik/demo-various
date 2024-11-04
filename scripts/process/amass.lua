local process = Process("amass")

function process:onStart()
    
    local bubble = self:bubble()
    
    local u1 = Unit(Player(1), TPL_UNIT.DarkRanger, 0, 0, 270)
    u1:barStateDisplay(2)
    u1:barStateMode(1)
    u1:hp(10000)
    u1:abilitySlot():insert(TPL_ABILITY.AB_Amass)
    bubble.u1 = u1
    
    --local u2 = Unit(Player(2), TPL_UNIT.Footman, 0, -300, 270)
    --bubble.u2 = u2

end