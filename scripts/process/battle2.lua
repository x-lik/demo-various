local process = Process("battle2")

function process:onStart()
    
    local bubble = self:bubble()
    
    for j = 1, 1 do
        local u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, -1000, 270)
        u1:abilitySlot():setTail(6)
        u1:hp(1000)
        u1:attack(100)
        u1:move(500)
        bubble["u1" .. j] = u1
    end
    
    ---@type Unit[]
    for j = 1, 1 do
        local u2 = Unit(Player(2), TPL_UNIT.Footman, 0, -2500, 90)
        u2:assaultPush(Assault({ mode = "missile", model = "DryadMissile", homing = true, height = 500, speed = 600 }))
        u2:hp(1000)
        u2:attackSpaceBase(0.1)
        u2:attack(14)
        u2:move(0)
        bubble["u2" .. j] = u2
    end

end