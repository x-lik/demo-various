local process = Process("server")

function process:onStart()
    
    local p = Player(1)
    server.save(p, "hello", 1)
    time.setTimeout(3, function()
        dump(server.load(p, "hello"))
        
        server.save(p, "hello", "you")
        time.setTimeout(3, function()
            dump(server.load(p, "hello"))
            
            server.save(p, "hello", true)
            time.setTimeout(3, function()
                dump(server.load(p, "hello"))
                server.clear(p, "hello")
                
                time.setTimeout(3, function()
                    dump(server.load(p, "hello"))
                end)
            end)
        end)
    end)

end

