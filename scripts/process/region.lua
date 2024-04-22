local process = Process("region")

function process:onStart()
    
    local r = Region("中心判断区", "square", 0, 0, 500, 500)
    ---@param enterData evtOnRegionEnterData
    r:onEvent(eventKind.regionEnter, function(enterData)
        print("Enter")
        print(enterData.triggerRegion:name())
        print(enterData.triggerUnit:name())
    end)
    ---@param enterData evtOnRegionLeaveData
    r:onEvent(eventKind.regionLeave, function(enterData)
        print("Leave")
        print(enterData.triggerRegion:name())
        print(enterData.triggerUnit:name())
    end)
    
    Player(1):unit(TPL_UNIT.HeroFlameLord, 0, 0, 270)

end