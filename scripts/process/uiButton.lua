local process = Process("uiButton")

function process:onStart()
    
    local bubble = self:bubble()
    
    local button = UIButton("myButton", UIGame, {
        _hasBorder = false,
        _hasMark = true,
    })
    
    button:adaptive(true)
    button:relation(UI_ALIGN_RIGHT_TOP, UIGame, UI_ALIGN_RIGHT_TOP, -0.05, -0.03)
    button:relation(UI_ALIGN_RIGHT_BOTTOM, UIGame, UI_ALIGN_RIGHT_BOTTOM, japi.UIDisAdaptive(-0.3), 0.05)
    button:size(0.08, 0.08)
    button:texture("icon/ability/CleavingAttack")
    button:maskAlpha(160)
    
    button:onEvent(eventKind.uiLeftClick, "x1", function()
        print("click1")
    end)
    button:onEvent(eventKind.uiLeftClick, "x2", function()
        print("click2")
    end)
    button:onEvent(eventKind.uiEnter, "x2", function()
        print("uiEnteruiEnteruiEnter")
    end)
    
    button:tooltips({
        tips = {
            "border/square_orangeRed/01",
            "border/square_orangeRed/02",
            "border/square_orangeRed/03",
            "border/square_orangeRed/04",
            "border/square_orangeRed/05",
            "border/square_orangeRed/06",
            "border/square_orangeRed/07",
            "border/square_orangeRed/08",
            "border/square_orangeRed/09",
            "border/square_orangeRed/10",
            "border/square_orangeRed/11",
        }
    })
    
    button:border({
        "border/square_orangeRed/01",
        "border/square_orangeRed/02",
        "border/square_orangeRed/03",
        "border/square_orangeRed/04",
        "border/square_orangeRed/05",
        "border/square_orangeRed/06",
        "border/square_orangeRed/07",
        "border/square_orangeRed/08",
        "border/square_orangeRed/09",
        "border/square_orangeRed/10",
        "border/square_orangeRed/11",
    }, 5)
    
    --button:mask("mask/rounded.blp")
    button:mask({
        "mask/roundedRotate/00.blp",
        "mask/roundedRotate/01.blp",
        "mask/roundedRotate/02.blp",
        "mask/roundedRotate/03.blp",
        "mask/roundedRotate/04.blp",
        "mask/roundedRotate/05.blp",
        "mask/roundedRotate/06.blp",
        "mask/roundedRotate/07.blp",
        "mask/roundedRotate/08.blp",
        "mask/roundedRotate/09.blp",
        "mask/roundedRotate/10.blp",
        "mask/roundedRotate/11.blp",
        "mask/roundedRotate/12.blp",
        "mask/roundedRotate/13.blp",
        "mask/roundedRotate/14.blp",
        "mask/roundedRotate/15.blp",
        "mask/roundedRotate/16.blp",
        "mask/roundedRotate/17.blp",
        "mask/roundedRotate/18.blp",
        "mask/roundedRotate/19.blp",
        "mask/roundedRotate/20.blp",
        "mask/roundedRotate/21.blp",
        "mask/roundedRotate/22.blp",
        "mask/roundedRotate/23.blp",
        "mask/roundedRotate/24.blp",
        "mask/roundedRotate/25.blp",
        "mask/roundedRotate/26.blp",
        "mask/roundedRotate/27.blp",
        "mask/roundedRotate/28.blp",
        "mask/roundedRotate/29.blp",
        "mask/roundedRotate/30.blp",
        "mask/roundedRotate/31.blp",
        "mask/roundedRotate/32.blp",
        "mask/roundedRotate/33.blp",
        "mask/roundedRotate/34.blp",
        "mask/roundedRotate/35.blp",
        "mask/roundedRotate/36.blp",
        "mask/roundedRotate/37.blp",
        "mask/roundedRotate/38.blp",
        "mask/roundedRotate/39.blp",
        "mask/roundedRotate/40.blp",
        "mask/roundedRotate/41.blp",
        "mask/roundedRotate/42.blp",
        "mask/roundedRotate/43.blp",
        "mask/roundedRotate/44.blp",
        "mask/roundedRotate/45.blp",
        "mask/roundedRotate/46.blp",
        "mask/roundedRotate/47.blp",
        "mask/roundedRotate/48.blp",
        "mask/roundedRotate/49.blp",
        "mask/roundedRotate/50.blp",
        "mask/roundedRotate/51.blp",
        "mask/roundedRotate/52.blp",
        "mask/roundedRotate/53.blp",
        "mask/roundedRotate/54.blp",
        "mask/roundedRotate/55.blp",
        "mask/roundedRotate/56.blp",
        "mask/roundedRotate/57.blp",
        "mask/roundedRotate/58.blp",
        "mask/roundedRotate/59.blp",
    })
    
    --local r = 0
    --bubble.t1 = time.setInterval(0.03, function(cutTimer)
    --    r = r + 0.5
    --    if (r > 100) then
    --        class.destroy(cutTimer)
    --        bubble.t1 = nil
    --        button:maskRatio(0)
    --        return
    --    end
    --    button:maskRatio(0.01 * r)
    --end)
    
    bubble.ui = button
end

function process:onOver()

end