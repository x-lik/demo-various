local process = Process("effect2")

function process:onStart()
    
    local bubble = self:bubble()
    local status = false
    local size = 1.0
    local v255 = 255
    async.call(Player(1), function()
        bubble.timer = async.setInterval(1, function()
            local model = nil
            if (status) then
                v255 = v255 + 2
                size = size - 0.03
                if (v255 >= 255) then
                    status = not status
                end
                model = "GlaiveMissile"
            else
                v255 = v255 - 2
                size = size + 0.03
                if (v255 <= 0) then
                    status = not status
                end
                model = "CannonTowerMissile"
            end
            japi.AsyncEffectShow(japi.DZ_GetMouseTerrainX(), japi.DZ_GetMouseTerrainY(), japi.DZ_GetMouseTerrainZ() + 100, model, size, v255)
        end)
    end)
end

function process:onOver()
    local bubble = self:bubble()
    async.call(Player(1), function()
        class.destroy(bubble.timer)
    end)
    japi.AsyncEffectHide()
end

