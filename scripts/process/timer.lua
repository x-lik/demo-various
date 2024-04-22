local process = Process("timer")

function process:onStart()
    
    local bubble = self:bubble()
    
    local t1 = time.setTimeout(100, function(curTimer)
        class.destroy(curTimer)
    end)
    bubble.t1 = t1
    
    local tt = UIText("timer-test", UIGame)
        :relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_CENTER, 0, 0)
        :textAlign(TEXT_ALIGN_CENTER)
        :fontSize(10)
    bubble.tt = tt
    
    local t2 = time.setInterval(0.2, function(curTimer)
        if (class.isDestroy(t1)) then
            class.destroy(curTimer)
            tt:text("Destroyed")
            return
        end
        tt:text(t1:remain() .. '/' .. t1:period())
        if (t1:remain() == 110) then
            t1:setRemain(100)
            t1:pause()
            time.setTimeout(3, function()
                t1:resume()
            end)
        end
        if (t1:remain() == 95) then
            t1:setRemain(120)
            t1:setPeriod(125)
        end
        if (t1:remain() == 50) then
            t1:setRemain(20)
            t1:setPeriod(30)
        end
        if (t1:remain() == 5) then
            t1:setRemain(1)
        end
    end)
    
    bubble.t2 = t2

end