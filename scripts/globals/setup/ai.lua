--- AI配置

--- [游荡进攻型AI]
--- 每隔5秒选择攻击到附近350范围内随机坐标
AI("wander", {
    period = 5,
    action = function(linkUnit)
        local x, y = vector2.polar(linkUnit:x(), linkUnit:y(), math.rand(50, 350), math.rand(0, 359))
        linkUnit:orderAttack(x, y)
    end
})

--- [游荡移动型AI]
--- 每隔5秒选择移动到附近350范围内随机坐标
AI("loiter", {
    period = 5,
    action = function(linkUnit)
        local x, y = vector2.polar(linkUnit:x(), linkUnit:y(), math.rand(50, 350), math.rand(0, 359))
        linkUnit:orderAIMove(x, y)
    end
})