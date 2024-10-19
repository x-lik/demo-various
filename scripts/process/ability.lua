local process = Process("ability")

function process:onStart()
    local bubble = self:bubble()
    local u1 = Unit(Player(1), TPL_UNIT.DarkRanger, 0, 0, 270)
    bubble.u1 = u1
    
    --ability.crackFly({
    --    targetUnit = u1,
    --    frequency = 0.03, --[可选]刷新周期，默认0.03
    --    distance = 200, --[可选]击退距离，默认0
    --    height = 200, --[可选]飞跃高度，默认100
    --    duration = 1, --[必须]击飞过程持续时间，可选，默认0.5秒
    --    bounce = { qty = 3, height = 0.5 }
    --})
    --ability.leap({
    --    sourceUnit = u1,
    --    targetVec = { 1500, -600 },
    --    frequency = 0.03,
    --    speed = 100,
    --    height = 200,
    --    acceleration = 50,
    --})
    --ability.serpentine({
    --    sourceUnit = u1,
    --    model = "CrushingWaveMissile",
    --    targetVec = { 0, -1500 },
    --    frequency = 0.02,
    --    speed = 350,
    --    animate = 8,
    --    acceleration = 10,
    --    point1 = 0.3,
    --    offset1 = 300,
    --    point2 = 0.6,
    --    offset2 = 300,
    --})

end