local process = Process("uiBalloon")

function process:onStart()
    
    local bubble = self:bubble()
    
    --- conf
    uiBalloon.config(keyboard.code["F"], "war3_QuestLog", nil)
    
    --- lighter
    bubble.lighter = Unit(Player(1), TPL_UNIT.DarkRanger, 0, 0, 270)
    uiBalloon.lighterInsert(bubble.lighter)
    
    --- lanterns
    for i = 1, 10, 1 do
        local u = Unit(PlayerPassive, TPL_UNIT.Footman, math.rand(-2000, 2000), math.rand(-2000, 2000), 270)
        uiBalloon.lanternInsert(u, {
            interval = 2,
            content = {
                {
                    tips = { uiBalloon.callTips("挖掘") },
                    ---@param callbackData balloonCallBack
                    call = function(callbackData)
                        local eb = callbackData.lantern
                        digEffects[eb._handle] = nil
                        effector.destroy(eb)
                        local gd = self:GD()
                        local p = callbackData.lighter:owner()
                        local cv = gd.diff * 100 + 10 * math.rand(1, 200) + 2 * gd.erode
                        p:award({ copper = cv })
                        async.call(p, function()
                            UI_LooplorerInfo:info("info", 5, "挖出 " .. colour.hex(colour.orange, cv) .. " 铜币")
                        end)
                    end
                }
            }
        })
        bubble["lantern" .. i] = u
    end

end

function process:onOver()
    local bubble = self:bubble()
end