local process = Process("missile")

function process:onStart()
    
    japi.CameraLockDistance(3000)
    
    local bubble = self:bubble()
    
    bubble.u = Unit(Player(1), TPL_UNIT.Footman, 0, -1000, 270)
    bubble.u:flyHeight(300)
    bubble.u:orderPatrol(700, -1000)
    
    local miss = "WyvernSpearMissile"
    local spd = 300
    bubble.t = time.setInterval(3, function()
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, -800, 300 },
        --    targetUnit = bubble.u,
        --    height = 500,
        --    speed = spd,
        --    acceleration = 0,
        --})
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, -900, 0 },
        --    targetUnit = bubble.u,
        --    height = 0,
        --    speed = spd,
        --    acceleration = 0,
        --})
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, -900, 1000 },
        --    targetUnit = bubble.u,
        --    height = 0,
        --    speed = spd,
        --    acceleration = 0,
        --})
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
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, 300, 500 },
        --    targetVec = { 1000, 300, 500 },
        --    height = 500,
        --    speed = spd,
        --    acceleration = 0,
        --})
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, 200, 500 },
        --    targetVec = { 1000, 200, 1000 },
        --    height = 500,
        --    speed = spd,
        --    acceleration = 0,
        --})
        --ability.missile({
        --    model = miss,
        --    sourceVec = { -1000, 100, 500 },
        --    targetVec = { 1000, 100, 0 },
        --    height = 500,
        --    speed = spd,
        --    acceleration = 0,
        --})
    end)

end