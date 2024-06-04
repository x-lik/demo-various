local process = Process("attr")

function process:onStart()
    
    local bubble = self:bubble()
    
    -- 步兵一个
    local u = Unit(Player(1), TPL_UNIT.Footman, 0, -200, 270)
    bubble.u1 = u
    
    print("hp1", u:hp(), u:ampl("hp"))
    u:hp("+=100")
    print("hp2", u:hp(), u:ampl("hp"))
    u:ampl("hp", "+=100")
    print("hp3", u:hp(), u:ampl("hp"))
    u:hp("+=100")
    print("hp4", u:hp(), u:ampl("hp"))
    u:ampl("hp", "+=100")
    print("hp5", u:hp(), u:ampl("hp"))
    u:raise("hp", "+=100")
    u:hp("+=333")
    print("hp6", u:hp(), u:raise("hp"))

end