local process = Process("assault")

function process:onStart()
    
    local bubble = self:bubble()
    
    bubble.DarkRanger = Unit(Player(1), TPL_UNIT.DarkRanger, 0, -1000, 270)
    bubble.DarkRanger:flyHeight(300)
    bubble.DarkRanger:weaponHeight(75)
    
    local a1 = Assault({ mode = "missile", model = "BlackArrowMissile", homing = true, height = 300, speed = 800 })
    local a2 = Assault({ mode = "missile", model = "BlackArrowMissile", homing = false, height = 0, speed = 800, twist = true })
    local a3 = Assault({ mode = "lightning", model = lightning.type.thunderRed, focus = 10 })
    bubble.DarkRanger:assaultPush(a1)
    --bubble.DarkRanger:assaultPush(a2)
    --bubble.DarkRanger:assaultPush(a3)
    
    bubble.u0 = Unit(PlayerAggressive, TPL_UNIT.Assault0, -500, -500, 270)
    bubble.u1 = Unit(PlayerAggressive, TPL_UNIT.Assault1, 500, -500, 270)
    bubble.u2 = Unit(PlayerAggressive, TPL_UNIT.Assault2, -500, -1500, 270)
    bubble.u3 = Unit(PlayerAggressive, TPL_UNIT.Assault3, 500, -1500, 270)
    bubble.u4 = Unit(PlayerAggressive, TPL_UNIT.Assault4, 0, -500, 270)
    bubble.u5 = Unit(PlayerAggressive, TPL_UNIT.Assault5, 0, -1500, 270)

end