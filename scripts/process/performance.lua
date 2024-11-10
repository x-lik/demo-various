local process = Process("performance")

function process:onStart()
    
    -- missile
    --do
    --    local num = 2000
    --    for _ = 1, num do
    --        local x1, y1 = math.rand(-3000, -1500), math.rand(-2000, 2000)
    --        local x2, y2 = math.rand(1500, 3000), math.rand(-2000, 2000)
    --        local h = math.rand(800, 1000)
    --        ability.missile({
    --            model = "ProcMissile",
    --            sourceVec = { x1, y1 },
    --            targetVec = { x2, y2 },
    --            speed = 1000,
    --            height = h,
    --            acceleration = 0,
    --        })
    --    end
    --end
    
    -- array
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        table.insert(data, Array())
    --    end
    --    for _, v in ipairs(data) do
    --        class.destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- effect
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 10000 do
    --        table.insert(data, effector.agile("OrbVenomMissile", 0, 0, 0))
    --    end
    --    for _, v in ipairs(data) do
    --        effector.destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- obj
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 10000 do
    --        --table.insert(data, Unit(Player(1), TPL_UNIT.Footman, 0, 0, 0)) -- unit
    --        --table.insert(data, Item(TPL_ITEM.IT1)) -- item
    --        table.insert(data, Ability(TPL_ABILITY.AB1)) -- ability
    --    end
    --    for _, v in ipairs(data) do
    --        class.destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- timer
    --do
    --    collectgarbage("collect")
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        time.setTimeout(0.1, function()
    --            -- nothing
    --        end)
    --        time.setTimeout(0.5, function()
    --            -- nothing
    --        end)
    --        time.setTimeout(1.0, function()
    --            -- nothing
    --        end)
    --    end
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- attr
    --do
    --    local u = Unit(Player(1), TPL_UNIT.Footman, 0, 0, 0)
    --    u:level(1)
    --    u:levelMax(99999)
    --    collectgarbage("collect")
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        -- defend(not jasscall)
    --        --local def = u:defend()
    --        --u:defend(def + 1)
    --        -- attack(with jasscall)
    --        --local atk = u:attack()
    --        --u:attack(atk + 1)
    --        -- exp(with data cale)
    --        --local exp = u:exp()
    --        --u:exp(exp + 1)
    --        -- buff
    --        Buff({
    --            key = "test_buff",
    --            object = u,
    --            name = "测试buff",
    --            icon = "icon/ability/ChainLightning",
    --            description = "description",
    --            duration = 1,
    --            ---@param buffObj Unit
    --            purpose = function(buffObj)
    --                buffObj:str("+=1")
    --            end,
    --            ---@param buffObj Unit
    --            rollback = function(buffObj)
    --                buffObj:str("-=1")
    --            end
    --        })
    --        BuffClear(u, { key = "test_buff" })
    --    end
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --    class.destroy(u)
    --end
    
    -- orderRoute
    --do
    --    local path = {
    --        { -500, -1000, },
    --        { 500, -1000, },
    --        { 500, -2000, },
    --        { -500, -2000 },
    --    }
    --    local routes = {}
    --    for i = 1, #path do
    --        routes[i] = table.wheel(path, 1 * (i - 1))
    --    end
    --    local bubble = self:bubble()
    --    time.setInterval(1, function()
    --        for i = 1, #routes do
    --            local r = routes[i]
    --            local u = Unit(Player(i), TPL_UNIT.Footman, r[1][1], r[1][2], 0)
    --            superposition.plus(u, "locust")
    --            bubble[u:id()] = u
    --            u:orderRoute(true, r)
    --        end
    --    end)
    --end
    
    --- uiEventRegister
    do
        local bubble = self:bubble()
        local ui = UIButton("testUIForUIEventReg", UIGame)
        bubble.ui = ui
        collectgarbage("collect")
        local x1 = os.clock()
        for _ = 1, 100000 do
            --- reg
            ui:onEvent(eventKind.uiLeftClick, "xxx", function() end)
            ui:onEvent(eventKind.uiEnter, "xxx", function() end)
            --- modify
            ui:onEvent(eventKind.uiLeftClick, "xxx", function() end)
            ui:onEvent(eventKind.uiEnter, "xxx", nil)
            --- modify
            ui:onEvent(eventKind.uiLeftClick, "xxx", nil)
            ui:onEvent(eventKind.uiEnter, "xxx", function() end)
            --- unreg
            ui:onEvent(eventKind.uiEnter, "xxx", nil)
        end
        print(string.format("Time: %.3f", os.clock() - x1))
    end

end