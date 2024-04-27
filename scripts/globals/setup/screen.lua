-- 游戏初始化
game.onInit(function()
    
    screen._max[UIBarStateClass] = 30
    screen._max[UIBalloonClass] = BJ_MAX_PLAYERS
    screen._max[UIToastClass] = 20
    
    if (true == screen._hideInterface) then
        japi.DZ_FrameHideInterface()
        japi.SetBlackBorders(0, 0)
    end
    --- UI -吐司提示
    for i = 1, screen._max[UIToastClass] do
        UIToast(i)
    end
    --- UI - 血条
    for i = 1, screen._max[UIBarStateClass] do
        UIBarState(i)
    end
    --- UI - 气泡
    for i = 1, screen._max[UIBalloonClass] do
        UIBalloon(i)
    end
    --
    sync.receive("BALLOON", function(syncData)
        local uid = syncData.transferData[1]
        local mid = syncData.transferData[2]
        local contentIndex = tonumber(syncData.transferData[3])
        -----@type Unit
        local lighter = class.i2o(uid)
        -----@type Unit|Coordinate
        local balloonObj = class.i2o(mid)
        if (false == class.isObject(lighter, UnitClass)) then
            return
        end
        if (false == class.inObject(balloonObj, UnitClass, CoordinateClass)) then
            return
        end
        if (lighter:isInterrupt()) then
            return
        end
        -----@type Array
        local balloonConf = balloonObj:balloon()
        if (type(balloonConf) == "table" and type(balloonConf.message) == "table") then
            if (type(balloonConf.message[contentIndex]) == "table") then
                local call = balloonConf.message[contentIndex].call
                if (type(call) == "function") then
                    call({ triggerUnit = lighter, balloonObj = balloonObj })
                end
            end
        end
    end)
end)