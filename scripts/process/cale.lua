local process = Process("cale")

function process:onStart()
    
    print(math.cale("*=0.7", 10))
    print(math.cale("/=0.7", 10))
    print(math.cale("+=0.7", 10))
    print(math.cale("-=0.7", 10))
    print(math.cale("*=1.7", 10))
    print(math.cale("/=1.7", 10))
    print(math.cale("*=-0.3", 10))
    print(math.cale("*=-8", 10))

end