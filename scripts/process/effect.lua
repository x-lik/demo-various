local process = Process("effect")

function process:onStart()
    
    local bubble = self:bubble()
    
    local eff = effect.agile("GlaiveMissile", 0, 0, 100)
    bubble.eff = eff
    local status = false
    local size = 1.0
    local v255 = 255
    bubble.timer = time.setInterval(0, function()
        if (status) then
            v255 = v255 + 2
            size = size - 0.03
            if (v255 >= 255) then
                status = not status
            end
        else
            v255 = v255 - 2
            size = size + 0.03
            if (v255 <= 0) then
                status = not status
            end
        end
        effect.size(eff, size)
        effect.alpha(eff, v255)
        effect.color(eff, 255, 255, 255, v255)
        effect.position(eff, japi.DZ_GetMouseTerrainX(), japi.DZ_GetMouseTerrainY(), japi.DZ_GetMouseTerrainZ() + 100)
    end)
end

function process:onOver()
    local bubble = self:bubble()
    effect.destroy(bubble.timer)
    effect.destroy(bubble.eff)
end

