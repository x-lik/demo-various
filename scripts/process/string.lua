local process = Process("string")

function process:onStart()
    
    local s1 = "这是五个字"
    local s2 = colour.hex(colour.red, "这是五个字")
    local s3 = colour.hex(colour.red, "这是 7 个字")
    local s4 = colour.hex(colour.red, "这是五个字") .. "Xuy431" .. colour.hex(colour.red, "结尾的八个中文字")
    local s5 = "What" .. colour.hex(colour.red, "这是五个字") .. "Xuy431" .. colour.hex(colour.red, "结尾的八个中文字") .. "???"
    local s6 = "WhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhatsWhats"
    
    print("这是五个字", vistring.len(s1))
    print("这是五个字", vistring.len(s2))
    print("这是 7 个字", vistring.len(s3))
    
    print("sub1", vistring.sub(s1, 1, 3))
    print("sub2", vistring.sub(s2, 1, 3))
    print("sub3", vistring.sub(s3, 1, 6))
    print("sub4", vistring.sub(s4, 4, 12))
    print("sub5", vistring.sub(s5, 3, 17))
    print("sub6", vistring.sub(s6, 6, 15))
    
    dump(vistring.split(s5 .. s4 .. s5, 11))

end