local process = Process("timerAsync")

function process:onStart()
    
    async.call(Player(1), function()
        local t1 = time.setInterval(1, function(curTimer)
            print("t1")
        end)
        -- 异步bubble必须异步调用，同异步交互调用应当禁止
        self:bubble().t1 = t1
    end)
    
    async.call(Player(2), function()
        local t2 = time.setInterval(1, function(curTimer)
            print("t2")
        end)
        self:bubble().t2 = t2
    end)

end

function process:onOver()
    async.call(Player(1), function()
        -- 异步bubble数据需手动划域清理
        BuffClear(self)
    end)
    async.call(Player(2), function()
        BuffClear(self)
    end)
end

