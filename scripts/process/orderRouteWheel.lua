local process = Process("orderRouteWheel")

function process:onStart()
    
    local bubble = self:bubble()
    
    local path = {
        {
            -500, -1000,
            ---@param orderUnit Unit
            function(orderUnit)
                effector.unit("HCancelDeath", orderUnit, 0)
                orderUnit:orderRouteResume()
            end
        },
        { 500, -1000, },
        { 500, -2000, },
        { -500, -2000 },
    }
    local routes = {}
    for i = 1, #path do
        routes[i] = table.wheel(path, 1 * (i - 1))
    end
    
    for i = 1, #routes do
        local r = routes[i]
        local u = Unit(Player(i), TPL_UNIT.HeroFlameLord, r[1][1], r[1][2], 0)
        bubble["u" .. i] = u
        u:orderRoute(true, r)
        u:period(5)
        time.setInterval(3, function(curTimer)
            ability.stun({
                targetUnit = u,
                duration = 1,
            })
        end)
    end

end