local process = Process("uiBarState")

function process:onStart()
    
    local bubble = self:bubble()
    
    --- 原生状态条（或者叫血条）
    bubble.u1 = Unit(Player(1), TPL_UNIT.DarkRanger, -1000, -300, 270)
    bubble.u1:barStateDisplay(0) -- 默认0
    
    --- 智能显示LK状态条，模式1
    bubble.u2 = Unit(Player(1), TPL_UNIT.DarkRanger, -600, -300, 270)
    bubble.u2:barStateDisplay(1)
    
    --- 一直显示LK状态条，模式1
    bubble.u3 = Unit(Player(1), TPL_UNIT.DarkRanger, -300, -300, 270)
    bubble.u3:barStateDisplay(2)
    bubble.u3:barStateMode(1)-- 默认1
    
    --- 一直显示LK状态条，模式2
    bubble.u4 = Unit(Player(1), TPL_UNIT.DarkRanger, 0, -300, 270)
    bubble.u4:barStateDisplay(2)
    bubble.u4:barStateMode(2)
    
    --- 一直显示LK状态条，模式3
    bubble.u5 = Unit(Player(1), TPL_UNIT.DarkRanger, 300, -300, 270)
    bubble.u5:barStateDisplay(2)
    bubble.u5:barStateMode(3)
    
    --- 一直显示LK状态条，模式4
    bubble.u6 = Unit(Player(1), TPL_UNIT.DarkRanger, 600, -300, 270)
    bubble.u6:barStateDisplay(2)
    bubble.u6:barStateMode(4)
    
    --- 一直显示LK状态条，模式4，带黑线
    bubble.u7 = Unit(Player(1), TPL_UNIT.DarkRanger, 1000, -300, 270)
    bubble.u7:barStateDisplay(2)
    bubble.u7:barStateMode(4)
    bubble.u7:barStateMarker(200)

end