local process = Process("uiSlider")

function process:onStart()
    
    local bubble = self:bubble()
    
    bubble.bar1 = UISlider("uiSliderTest1", UIGame, { _isAnti = false, _isVertical = false })
    bubble.bar2 = UISlider("uiSliderTest2", UIGame, { _isAnti = true, _isVertical = false })
    bubble.bar3 = UISlider("uiSliderTest3", UIGame, { _isAnti = false, _isVertical = true })
    bubble.bar4 = UISlider("uiSliderTest4", UIGame, { _isAnti = true, _isVertical = true })
    
    bubble.bar1:relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_CENTER, 0, 0.2)
    bubble.bar2:relation(UI_ALIGN_TOP, bubble.bar1, UI_ALIGN_BOTTOM, 0, -0.004)
    bubble.bar3:relation(UI_ALIGN_LEFT_TOP, bubble.bar2, UI_ALIGN_LEFT_BOTTOM, 0.004, -0.004)
    bubble.bar4:relation(UI_ALIGN_RIGHT_TOP, bubble.bar2, UI_ALIGN_RIGHT_BOTTOM, -0.004, -0.004)
    
    bubble.bar1:thumbScale(0.4, 0.8):size(0.22, 0.03)
    bubble.bar2:thumbScale(1.1, 0.8):size(0.24, 0.04):step(0.1)
    bubble.bar3:thumbScale(1.2, 0.5):size(0.03, 0.26)
    bubble.bar4:thumbScale(0.6, 1.1):size(0.05, 0.23):step(0.25)
    for i = 1, 4 do
        ---@type UISlider
        local b = bubble["bar" .. i]
        ---@param evtData eventOnUISlide
        b:padding(0.005, 0.005, 0.005, 0.005)
         :text('')
         :fontSize(13)
         :onEvent(eventKind.uiSlide, "txt", function(evtData)
            local v = math.floor(evtData.ratio * 100) .. '%'
            evtData.triggerUI:text(v)
        end)
    end
    
    --local v = 0
    --bubble.t = time.setInterval(0.08, function()
    --    for i = 1, 4 do
    --        ---@type UISlider
    --        local b = bubble["bar" .. i]
    --        b:ratio(v / 100)
    --         :text(v .. '%')
    --    end
    --    v = v + 1
    --    if (v > 100) then
    --        v = 0
    --    end
    --end)

end