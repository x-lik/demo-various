local process = Process("assault")

function process:onStart()
    
    local bubble = self:bubble()
    
    bubble.DarkRanger = Unit(TPL_UNIT.DarkRanger, Player(1), 0, -1000, 270)
    bubble.DarkRanger:flyHeight(300)
    bubble.DarkRanger:weaponHeight(75)
    
    local a1 = Assault({ mode = "missile", model = "BlackArrowMissile", homing = true, height = 300, speed = 800 })
    local a2 = Assault({ mode = "missile", model = "BlackArrowMissile", homing = false, height = 0, speed = 800, shake = "rand" })
    local a3 = Assault({ mode = "lightning", model = lightning.type.thunderRed, focus = 10 })
    bubble.DarkRanger:assaultPush(a1)
    --bubble.DarkRanger:assaultPush(a2)
    --bubble.DarkRanger:assaultPush(a3)
    
    bubble.u0 = Unit(TPL_UNIT.Assault0, PlayerAggressive, -500, -500, 270)
    bubble.u1 = Unit(TPL_UNIT.Assault1, PlayerAggressive, 500, -500, 270)
    bubble.u2 = Unit(TPL_UNIT.Assault2, PlayerAggressive, -500, -1500, 270)
    bubble.u3 = Unit(TPL_UNIT.Assault3, PlayerAggressive, 500, -1500, 270)
    bubble.u4 = Unit(TPL_UNIT.Assault4, PlayerAggressive, 0, -500, 270)
    bubble.u5 = Unit(TPL_UNIT.Assault5, PlayerAggressive, 0, -1500, 270)

end