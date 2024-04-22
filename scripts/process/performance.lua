local process = Process("performance")

function process:onStart()
    
    collectgarbage("collect")
    local x1 = os.clock()
    local r1 = collectgarbage("count")
    
    for _ = 1, 1000 do
        class.destroy(Ability(TPL_ABILITY.AB1))
    end
    
    print(string.format("Time: %.6f", os.clock() - x1))
    print(string.format("Ram: %.6f MB", (collectgarbage("count") - r1) / 1024))

end