local process = Process("unit")

function process:onStart()
    
    local bubble = self:bubble()
    
    -- 步兵一个
    local u = Unit(Player(1), TPL_UNIT.Footman, 0, -200, 270)
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u1 = u
    
    -- 带头像步兵一个
    u = Unit(Player(2), TPL_UNIT.FootmanAvatar, 0, -300, 270)
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u2 = u
    
    -- 步兵一个，后续换成带头像
    u = Unit(Player(2), TPL_UNIT.Footman, 0, -400, 270)
    u:speechExtra("avatar")
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u3 = u
    
    -- 步兵一个，后续换成不能移动
    u = Unit(Player(1), TPL_UNIT.Footman, 0, -500, 270)
    u:speechExtra("immovable")
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable())
    bubble.u4 = u
    
    -- 建筑形态步兵一个
    u = Unit(Player(1), TPL_UNIT.FootmanBuilding, 0, -600, 270)
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u5 = u
    
    -- 步兵一个，后续换成建筑形态
    u = Unit(Player(1), TPL_UNIT.Footman, 0, -700, 270)
    u:speechExtra("building")
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u6 = u
    
    -- 可移动建筑形态步兵一个
    u = Unit(Player(1), TPL_UNIT.FootmanBuildingMove, 0, -800, 270)
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u7 = u

end