local process = Process("item")

function process:onStart()
    
    local bubble = self:bubble()
    
    local u1 = Player(1)
        :unit(TPL_UNIT.HeroFlameLord, 0, 0, 66.6)
        :level(1)
        :reborn(0.5)
        :hp(1500):hpRegen(10)
        :mp(100):mpRegen(-1)
        :move(522)
        :attackSpaceBase(1):attack(91):attackRange(1000):attackSpeed(100)
        :crit(10):odds("crit", 10)
        :hpSuckAttack("+=10")
        :mpSuckAttack("+=10")
    
    u1:onEvent(eventKind.unitDamage, function(_)
        u1:exp("+=10")
    end)
    
    bubble.u1 = u1
    
    local x1 = os.clock()
    for i = 1, 10 do
        local it = Item(TPL_ITEM.IT1):position(0, -300)
        bubble["it1" .. i] = it
    end
    for i = 1, 10 do
        local it = Item(TPL_ITEM.IT2):position(0, -300)
        bubble["it2" .. i] = it
    end
    
    local x2 = os.clock()
    print(string.format("run time: %.2f\n", x2 - x1))
end