local process = Process("asyncRand")

function process:onStart()
    
    local min = 9999
    local max = -9999
    local count = 0
    japi.AsyncRefresh("testAsyncRand", function()
        local a = japi.AsyncRand(-1000, 1000)
        if (a < min) then
            min = a
        end
        if (a > max) then
            max = a
        end
        count = count + 1
        print(a, count, min, max)
        if (count >= 2000) then
            japi.AsyncRefresh("testAsyncRand", nil)
        end
    end)

end