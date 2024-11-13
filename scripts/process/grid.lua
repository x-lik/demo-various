local process = Process("grid")

function process:onStart()
    
    local bb = self:bubble()
    
    local g = Grid("my")
    g:size(256)
    
    local es = {
        { 0, 0 },
        { -100, 100 },
        { 200, 100 },
        { 300, 500 },
        { 300, 500 },
        { 400, 500 },
        { 450, 500 },
        { 500, 500 },
        { -200, 500 },
        { -250, 500 },
        { -300, 500 },
        { -350, 500 },
        { -400, 500 },
        { -450, 500 },
        { -500, 500 },
        { -550, 1600 },
    }
    for i, v in ipairs(es) do
        bb["e" .. i] = effector.agile("FaerieDragonMissile", v[1], v[2], 400)
        g:insert(bb["e" .. i])
    end
    
    local r = g:catch({
        square = {
            x = 0,
            y = 0,
            width = 5000,
            height = 5000,
        }
    })
    dump(r, "grid", 2)
    
    bb.grid = g

end