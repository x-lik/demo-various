local process = Process("region")

function process:onStart()
    
    local r = Region("中心判断区", "square", 0, 0, 500, 500)
    ---@param enterData eventOnRegionEnter
    r:onEnter(function(enterData)
        print("Enter")
        print(enterData.triggerRegion:name())
        print(enterData.triggerUnit:name())
    end)
    ---@param enterData eventOnRegionLeave
    r:onLeave(function(enterData)
        print("Leave")
        print(enterData.triggerRegion:name())
        print(enterData.triggerUnit:name())
    end)
    
    Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, 0, 270)

end