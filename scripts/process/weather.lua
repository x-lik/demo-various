local process = Process("weather")

function process:onStart()
    
    local bb = self:bubble()
    
    bb.region = Region("下雨区", "circle", 500, 500, 1000, 1000)
    
    -- case1
    do
        bb.region:weatherInsert(weather.kind.rainstorm)
        time.setTimeout(3, function()
            bb.region:weatherRemove(weather.kind.rainstorm)
        end)
    end
    
    -- case2
    do
        local w = weather.create(weather.kind.snowstorm, bb.region)
        time.setTimeout(5, function()
            weather.destroy(w)
        end)
    end

end
