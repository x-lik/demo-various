local process = Process("ui")

function process:onStart()
    
    UIModel("test")
        :relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_CENTER, 0, 0)
        :model("Echo")
    
    --async.loc(function()
    --    async.setInterval(20, function()
    --        UITooltips()
    --            :content(
    --            {
    --                tips = {
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    "中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人中国人不骗中国人",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"17310574857410985678648174-931748386431784703194713-94783149-318-4",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                    --"NIODHJIFPDEHQIPFHEQIOUFHEQIOFPHEQUHIOBHUHBUDHISAHDOPWHJODQWJDOPQWJ",
    --                }
    --            })
    --            :show(true)
    --    end)
    --end)

end