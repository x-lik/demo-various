local process = Process("terrain")

function process:onStart()
    
    print(J.I2C(terrain.getKind(0, 0)))
    print(terrain.isKind(0, 0, terrain.kind.city_blackmarble))
    
    time.setTimeout(3, function()
        terrain.setKind(0, 0, terrain.kind.dalaran_bricktiles, 1024, 1, -1)
        print("terrain=", terrain.isKind(0, 0, terrain.kind.dalaran_bricktiles))
    end)

end