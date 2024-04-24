local process = Process("orderRoute")

function process:onStart()
    
    local bubble = self:bubble()
    
    local u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, 0, 0)
    bubble.u1 = u1
    
    u1:orderRoute(true, {
        {
            -500, -500,
            ---@param orderUnit Unit
            function(orderUnit)
                effect.unit("HCancelDeath", orderUnit, 0)
                orderUnit:orderRouteResume()
            end
        },
        {
            500, -500,
            ---@param orderUnit Unit
            function(orderUnit)
                ability.leap({
                    sourceUnit = orderUnit,
                    targetVec = { 0, -1000, 0 },
                    speed = 3000,
                    height = 500,
                    reflex = 2,
                    onEnd = function(options)
                        options.sourceUnit:orderRouteResume()
                    end
                })
            end
        },
        {
            500, -1000,
            ---@param orderUnit Unit
            function(orderUnit)
                ability.crackFly({
                    targetUnit = orderUnit,
                    distance = 300,
                    height = 500,
                    bounce = { qty = 3 },
                    onEnd = function(options)
                        options.targetUnit:orderRouteResume()
                    end
                })
            end
        },
        { -500, -1000 },
    })
    
    time.setTimeout(3, function()
        print("第5段")
        u1:orderRouteSet(6, { 0, 0 })
        time.setTimeout(5, function()
            print("删除第5段")
            u1:orderRouteSet(5, nil)
        end)
    end)

end