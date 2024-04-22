local process = Process("camera")

function process:onStart()
    
    async.call(Player(1), function()
        camera.shake(10, 0.2, 10)
        camera.quake(10, 5)
        
        print(camera.isShaking()) -- true
        print(camera.isQuaking()) -- true
        
        time.setTimeout(7.5, function()
            print(camera.isShaking())  -- true
            print(camera.isQuaking())  -- false
        end)
    end)

end

