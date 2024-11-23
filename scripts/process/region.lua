local process = Process("region")

function process:onStart()
    
    local r = Region("中心判断区", "square", 0, 0, 500, 500)
    r:splat(BLP_COLOR_BLUE, 200)
    r:onEnter(function(evtData)
        print("Enter")
        print(evtData.triggerUnit:name() .. "进入了" .. evtData.triggerRegion:name())
    end)
    r:onLeave(function(evtData)
        print("Leave")
        print(evtData.triggerUnit:name() .. "离开了" .. evtData.triggerRegion:name())
    end)
    
    Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, 0, 270)

end