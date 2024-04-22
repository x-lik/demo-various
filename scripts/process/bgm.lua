local process = Process("bgm")

function process:onStart()
    
    async.call(Player(1), function()
        sound.bgm("Mysterious")
    end)

end