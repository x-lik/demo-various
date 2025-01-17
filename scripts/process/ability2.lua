local process = Process("ability2")

function process:onStart()
    
    japi.CameraLockDistance(3000)
    
    local bubble = self:bubble()
    
    bubble.u = Unit(Player(1), TPL_UNIT.Footman, 0, -1000, 270)
    bubble.u:flyHeight(200)
    --bubble.u:orderPatrol(700, -1000)
    
    bubble.u2 = Unit(Player(1), TPL_UNIT.Footman, 0, -1000, 270)
    bubble.u2:flyHeight(100)
    bubble.u2:orderPatrol(-700, 1000)
    
    do
        if (0 == 1) then
            bubble.t = time.setInterval(3, function()
                ability.leap({
                    sourceUnit = bubble.u,
                    --targetVec = { math.rand(-1000, 1000), -1000, 100 },
                    targetUnit = bubble.u2,
                    model = "PhoenixMissile", --[可选]冲锋单位origin特效
                    animate = "attack", --[可选]冲锋动作
                    animateScale = 1.00, --[可选]冲锋的动画速度
                    speed = 1000,
                    acceleration = 0,
                    height = 300,
                    reflex = 3,
                })
            end)
        end
    end
    
    do
        if (1 == 1) then
            bubble.t = time.setInterval(3, function()
                ability.paw({
                    sourceVec = { 0, -1500, 200 },
                    targetVec = { math.rand(-100, 100), math.rand(-100, 100), 300 },
                    --targetVec = { -100, -1500, 600 },
                    model = "ShadowHunterMissile",
                    speed = 500,
                    distance = 1000,
                    qty = math.rand(1, 10),
                    angle = 15,
                    stepLength = 400,
                })
            end)
        end
    end
    
    do
        if (0 == 1) then
            bubble.t = time.setInterval(3, function()
                ability.crackFly({
                    --sourceUnit = bubble.u,
                    targetUnit = bubble.u2,
                    model = "PhoenixMissile",
                    speed = 600,
                    height = 500,
                    duration = 1,
                    distance = 1000,
                    bounce = { qty = 3 }
                })
            end)
        end
    end
    
    do
        if (1 == 0) then
            local miss = "WyvernSpearMissile"
            local spd = 300
            bubble.t = time.setInterval(3, function()
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -800, 300 },
                    targetUnit = bubble.u,
                    height = 500,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -900, 0 },
                    targetUnit = bubble.u,
                    height = 0,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -900, 1000 },
                    targetUnit = bubble.u,
                    height = 0,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -300, 500 },
                    targetVec = { 1000, -300, 500 },
                    height = 0,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -200, 500 },
                    targetVec = { 1000, -200, 1000 },
                    height = 0,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, -100, 500 },
                    targetVec = { 1000, -100, 0 },
                    height = 0,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, 300, 500 },
                    targetVec = { 1000, 300, 500 },
                    height = 500,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, 200, 500 },
                    targetVec = { 1000, 200, 1000 },
                    height = 500,
                    speed = spd,
                    acceleration = 0,
                })
                ability.missile({
                    model = miss,
                    sourceVec = { -1000, 100, 500 },
                    targetVec = { 1000, 100, 0 },
                    height = 500,
                    speed = spd,
                    acceleration = 0,
                })
            end)
        end
    end

end