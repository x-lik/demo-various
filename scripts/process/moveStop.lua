local process = Process("moveStop")

function process:onStart()
    
    local bubble = self:bubble()
    
    local u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, 0, 0)
    
    ---@param evtData eventOnUnitMoveStop
    u1:onEvent(eventKind.unitMoveStop, "test", function(evtData)
        print("途径距离", evtData.distance)
    end)
    
    bubble.u1 = u1

end