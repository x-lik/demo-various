local process = Process("t2r")

function process:onStart()
    
    local bubble = self:bubble()
    
    --japi.SetBlackBorders(0, 0.13)
    local u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, 0, 0)
    bubble.u1 = u1
    
    local t2rUI = UIBackdrop("t2r", UIGame)
        :relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_LEFT_BOTTOM, 0, 0)
        :size(0.04, 0.004)
        :texture(BLP_COLOR_PURPLE)
    bubble.t2rFrame = t2rUI
    
    local _do = function()
        local rx, ry = japi.ConvertWorldPosition(u1:x(), u1:y(), 130 + u1:stature() + u1:h())
        --print("屏幕xy=", rx, ry)
        if (rx == -1 or ry == -1) then
            t2rUI:show(false)
            return
        end
        t2rUI:relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_LEFT_BOTTOM, rx, ry):show(true)
    end
    local _do2 = function()
        japi.DZ_ConvertWorldPosition(u1:x(), u1:y(), 130 + u1:stature() + u1:h(), function()
            i = i + 1
            local rx, ry = japi.DZ_GetConvertWorldPositionX(), japi.DZ_GetConvertWorldPositionY()
            --print("屏幕xy=", rx, ry)
            if (rx == -1 or ry == -1) then
                t2rUI:show(false)
                return
            end
            t2rUI:relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_LEFT_BOTTOM, rx, ry):show(true)
        end)
    end
    
    japi.AsyncRefresh("testT2R", _do)
    --
end

function process:onOver()
    japi.AsyncRefresh("testT2R", nil)
end