local process = Process("unit")

function process:onStart()
    
    local bubble = self:bubble()
    
    -- 步兵一个
    local u = Player(1):unit(TPL_UNIT.Footman, 0, -200, 270)
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u1 = u
    
    -- 带头像步兵一个
    u = Player(2):unit(TPL_UNIT.FootmanAvatar, 0, -300, 270)
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u2 = u
    
    -- 步兵一个，后续换成带头像
    u = Player(2):unit(TPL_UNIT.Footman, 0, -400, 270):speechExtra("avatar")
    print(u:slkId(), u:speech(), u:speechExtra())
    bubble.u3 = u
    
    -- 步兵一个，后续换成不能移动
    u = Player(1):unit(TPL_UNIT.Footman, 0, -500, 270):speechExtra("immovable")
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable())
    bubble.u4 = u
    
    -- 建筑形态步兵一个
    u = Player(1):unit(TPL_UNIT.FootmanBuilding, 0, -600, 270)
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u5 = u
    
    -- 步兵一个，后续换成建筑形态
    u = Player(1):unit(TPL_UNIT.Footman, 0, -700, 270):speechExtra("building")
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u6 = u
    
    -- 可移动建筑形态步兵一个
    u = Player(1):unit(TPL_UNIT.FootmanBuildingMove, 0, -800, 270)
    print(u:slkId(), u:speech(), u:speechExtra(), u:isImmovable(), u:isBuilding())
    bubble.u7 = u

end