local process = Process("worth2")

function process:onStart()
    
    local p = Player(1)
    p:worth("=", { copper = math.round(tonumber("79271347080")) })
    
    dump(p:worth())

end

