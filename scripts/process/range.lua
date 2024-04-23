local process = Process("range")

function process:onStart()
    
    local bubble = self:bubble()
    
    local u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, -2500, 66.6)
    u1:abilitySlot():setTail(6)
    
    ---@param damageData evtOnUnitDamageData
    u1:onEvent(eventKind.unitDamage, function(damageData)
        damageData.triggerUnit:exp("+=10")
    end)
    bubble.u1 = u1
    
    ---@type Unit[]
    for i = 1, 50 do
        local x1, y1 = math.rand(-500, 500), -500
        local u2 = Unit(Player(2), TPL_UNIT.Footman, x1, y1, 0)
        bubble["u2" .. i] = u2
    end

end
