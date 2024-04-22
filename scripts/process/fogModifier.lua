local process = Process("fogModifier")

function process:onStart()
    
    local fog = fog.createModifier(Player(1), 0, 0, 500, FOG_OF_WAR_VISIBLE)
    fog.start(fog)
    time.setTimeout(3, function()
        fog.stop(fog)
    end)
    
end