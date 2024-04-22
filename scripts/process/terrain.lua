local process = Process("terrain")

function process:onStart()
    
    print(J.I2C(terrain.getType(0, 0)))
    print(terrain.isType(0, 0, terrain.type.city_blackmarble))
    
    time.setTimeout(3, function()
        terrain.setType(0, 0, terrain.type.dalaran_bricktiles, 1024, 1, -1)
        print("terrain=", terrain.isType(0, 0, terrain.type.dalaran_bricktiles))
    end)

end