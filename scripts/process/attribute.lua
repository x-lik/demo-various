local process = Process("attribute")

function process:onStart()
    
    local bubble = self:bubble()
    
    bubble.DarkRanger = Unit(TPL_UNIT.DarkRanger, Player(1), 0, -1000, 270)
    
    local it = Item(TPL_ITEM.IT3)
    it:level(1)
    bubble.DarkRanger:itemSlot():insert(it)
    
    time.setTimeout(5, function()
        it:level(4)
        print(it:level())
        time.setTimeout(5, function()
            it:level(1)
            print(it:level())
        end)
    end)

end