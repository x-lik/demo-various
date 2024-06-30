local process = Process("guarantee")

function process:onStart()
    print("============================================================")
    local k1 = "k1"
    for i = 1, 15, 1 do
        local r = math.guarantee(k1, 0.02, 5, 1)
        print(k1, i, r)
    end
    print("============================================================")
    local k2 = "k2"
    for i = 1, 10, 1 do
        local r = math.guarantee(k2, 0.02, 10, 10)
        print(k2, i, r)
    end
    print("============================================================")
    local g = Guarantee("k3", 0.00062, 90, 0.014)
    for i = 1, 90, 1 do
        local r = g:simulate(1)
        print(k2, i, r)
    end
end