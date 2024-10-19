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
    
    -- unit
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 2000 do
    --        table.insert(data, Unit(Player(1), TPL_UNIT.Footman, 0, 0, 0))
    --    end
    --    for _, v in ipairs(data) do
    --        class.destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- item
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 2000 do
    --        table.insert(data, Item(TPL_ITEM.IT1))
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
    --    collectgarbage("collect")
    --    local u = Unit(Player(1), TPL_UNIT.Footman, 0, 0, 0)
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        local atk = u:attack()
    --        u:attack(atk + 1)
    --    end
    --    class.destroy(u)
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- attr
    --do
    --    collectgarbage("collect")
    --    local u = Unit(Player(1), TPL_UNIT.Footman, 0, 0, 0)
    --    u:level(1)
    --    u:levelMax(99999)
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        local exp = u:exp()
    --        u:exp(exp + 1)
    --    end
    --    class.destroy(u)
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end

end