local process = Process("alert")

function process:onStart()
    
    time.setInterval(3, function()
        Player(1).alert(string.rand(10))
    end)

end