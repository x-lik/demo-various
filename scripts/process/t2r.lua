local process = Process("t2r")

function process:onStart()
    
    local bubble = self:bubble()
    
    --japi.SetBlackBorders(0, 0.13)
    local u1 = Unit(TPL_UNIT.HeroFlameLord, Player(1), 0, 0, 0)
    bubble.u1 = u1
    
    local t2rFrame = UIBackdrop("t2r", UIGame)
        :relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_LEFT_BOTTOM, 0, 0)
        :size(0.04, 0.004)
        :texture(TEAM_COLOR_BLP_PURPLE)
    bubble.t2rFrame = t2rFrame
    
    japi.AsyncRefresh("testT2R", function()
        local rx, ry = japi.ConvertWorldPosition(u1:x(), u1:y(), 130 + u1:stature() + u1:h())
        if (rx == -1 or ry == -1) then
            t2rFrame:show(false)
            return
        end
        print("屏幕xy=", rx, ry)
        t2rFrame:relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_LEFT_BOTTOM, rx, ry):show(true)
    end)

end

function process:onOver()
    japi.AsyncRefresh("testT2R", nil)
end