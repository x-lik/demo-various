local process = Process("uiButton")

function process:onStart()
    
    local bubble = self:bubble()
    
    local button = UIButton("myButton", UIGame, {
        _hasBorder = false,
        _hasMark = true,
    })
    
    button:adaptive(true)
    button:relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_CENTER, 0, 0)
    button:size(0.1, 0.1)
    button:texture("icon/ability/CleavingAttack")
    button:maskAlpha(160)
    
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
        "interfaces/maskRotate00.blp",
        "interfaces/maskRotate01.blp",
        "interfaces/maskRotate02.blp",
        "interfaces/maskRotate03.blp",
        "interfaces/maskRotate04.blp",
        "interfaces/maskRotate05.blp",
        "interfaces/maskRotate06.blp",
        "interfaces/maskRotate07.blp",
        "interfaces/maskRotate08.blp",
        "interfaces/maskRotate09.blp",
        "interfaces/maskRotate10.blp",
        "interfaces/maskRotate11.blp",
        "interfaces/maskRotate12.blp",
        "interfaces/maskRotate13.blp",
        "interfaces/maskRotate14.blp",
        "interfaces/maskRotate15.blp",
        "interfaces/maskRotate16.blp",
        "interfaces/maskRotate17.blp",
        "interfaces/maskRotate18.blp",
        "interfaces/maskRotate19.blp",
        "interfaces/maskRotate20.blp",
        "interfaces/maskRotate21.blp",
        "interfaces/maskRotate22.blp",
        "interfaces/maskRotate23.blp",
        "interfaces/maskRotate24.blp",
        "interfaces/maskRotate25.blp",
        "interfaces/maskRotate26.blp",
        "interfaces/maskRotate27.blp",
        "interfaces/maskRotate28.blp",
        "interfaces/maskRotate29.blp",
        "interfaces/maskRotate30.blp",
        "interfaces/maskRotate31.blp",
        "interfaces/maskRotate32.blp",
        "interfaces/maskRotate33.blp",
        "interfaces/maskRotate34.blp",
        "interfaces/maskRotate35.blp",
        "interfaces/maskRotate36.blp",
        "interfaces/maskRotate37.blp",
        "interfaces/maskRotate38.blp",
        "interfaces/maskRotate39.blp",
        "interfaces/maskRotate40.blp",
        "interfaces/maskRotate41.blp",
        "interfaces/maskRotate42.blp",
        "interfaces/maskRotate43.blp",
        "interfaces/maskRotate44.blp",
        "interfaces/maskRotate45.blp",
        "interfaces/maskRotate46.blp",
        "interfaces/maskRotate47.blp",
        "interfaces/maskRotate48.blp",
        "interfaces/maskRotate49.blp",
        "interfaces/maskRotate50.blp",
        "interfaces/maskRotate51.blp",
        "interfaces/maskRotate52.blp",
        "interfaces/maskRotate53.blp",
        "interfaces/maskRotate54.blp",
        "interfaces/maskRotate55.blp",
        "interfaces/maskRotate56.blp",
        "interfaces/maskRotate57.blp",
        "interfaces/maskRotate58.blp",
        "interfaces/maskRotate59.blp",
    })
    
    local r = 0
    bubble.t1 = time.setInterval(0.03, function(cutTimer)
        r = r + 0.5
        if (r > 100) then
            class.destroy(cutTimer)
            bubble.t1 = nil
            button:maskRatio(0)
            return
        end
        button:maskRatio(0.01 * r)
    end)
    
    bubble.ui = button
end

function process:onOver()

end