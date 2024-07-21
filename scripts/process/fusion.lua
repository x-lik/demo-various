local process = Process("fusion")

function process:onStart()
    
    local bubble = self:bubble()
    bubble.u1 = Unit(Player(1), TPL_UNIT.HeroFlameLord, 0, -200, 270)
    
    fusion.formula(TPL_ITEM.HC2, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1)
    fusion.formula(TPL_ITEM.HC4, TPL_ITEM.HC2, TPL_ITEM.HC3)
    fusion.formula(TPL_ITEM.HCR, TPL_ITEM.HC1, TPL_ITEM.HC4)
    
    dump({
        s2f = fusion._s2f,
        f2s = fusion._f2s,
        sqr = fusion._sqr,
    })
    
    print("conflate->unit->")
    local it1, it2, it3 = Item(TPL_ITEM.HC1), Item(TPL_ITEM.HC1), Item(TPL_ITEM.HC1)
    it1:position(-100, -200)
    it2:position(0, -200)
    it3:position(100, -200)
    time.setTimeout(3, function()
        local c = fusion.conflate(bubble.u1, it1, it2, it3)
        for _, v in ipairs(c) do
            print("##", v:name())
        end
    end)
    
    print("conflate->")
    local c = fusion.conflate(nil, TPL_ITEM.HC2, TPL_ITEM.HC3, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1)
    for _, v in ipairs(c) do
        print("##", v:name())
    end
    
    print("separate->", TPL_ITEM.HCR:name())
    local s = fusion.separate(nil, TPL_ITEM.HCR)
    for _, v in ipairs(s) do
        print("##", v:name())
    end
    
    print("separate-re->", TPL_ITEM.HCR:name())
    local s2 = fusion.separate(nil, TPL_ITEM.HCR, true)
    for _, v in ipairs(s2) do
        print("##", v:name())
    end
    
    print("conflate-unit")
    bubble.u = Unit(Player(1), TPL_UNIT.DarkRanger, 0, -500, 270)
    bubble.u:itemSlot():insert(TPL_ITEM.HC1)
    fusion.conflate(bubble.u, TPL_ITEM.HC2, TPL_ITEM.HC3)
    
    -- change formulas at any time
    fusion.formula(TPL_ITEM.HCR, TPL_ITEM.HC1, TPL_ITEM.HC3, TPL_ITEM.HC3, TPL_ITEM.HC4)
    
    time.setTimeout(5, function()
        print("separate-unit-new")
        local s3 = fusion.separate(bubble.u, TPL_ITEM.HCR, true)
        local x, y = bubble.u:x(), bubble.u:y()
        for _, v in ipairs(s3) do
            print("##", v:name())
            -- The logic used here: Items that exceed are created in the game map
            Item(v):position(x, y)
        end
    end)

end