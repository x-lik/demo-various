--- AI配置

--- [游荡进攻型AI]
--- 每隔5秒选择攻击到附近350范围内随机坐标
AI("wander"):behavior("idle", function(this, linkUnit)
    time.setTimeout(5, function()
        local x, y = vector2.polar(linkUnit:x(), linkUnit:y(), math.rand(50, 350), math.rand(0, 359))
        linkUnit:orderAttack(x, y)
    end)
end)