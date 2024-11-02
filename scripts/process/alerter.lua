local process = Process("alerter")

function process:onStart()
    
    time.setTimeout(1, function()
        alerter.message(Player(1), "hello")
        time.setTimeout(1, function()
            alerter.message(Player(1), "hello", colour.lawngreen)
            time.setTimeout(1, function()
                alerter.message(Player(1), "hello", colour.littlepink, false)
            end)
        end)
    end)

end