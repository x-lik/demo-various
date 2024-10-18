-- RSA算法是一种非对称加密算法，它依赖于两个大质数的乘积来生成公钥和私钥
local rsa = {
    -- RSA公钥计算参数
    
    --- e 是一个公开的加密指数，通常选择为65537（十六进制表示为 0x10001），因为它是一个质数，且与模数 n 互质。
    --- e 的选择必须满足以下条件：1 < e < φ(n)，其中 φ(n) 是 n 的欧拉函数值，即 φ(n) = (p-1)(q-1)，其中 p 和 q 是生成 n 的两个质数。
    _e = "010001",
    
    --- 模数 n 是两个大质数 p 和 q 的乘积，即 n = p * q。
    --- n 是公开的，用于加密和解密操作。
    _n = "A3743D87A856DEA104A32BA2D8DA10EC0D9ADE952D17ECF3B26CE24F45C991BC226F55530B4FC56720DCE0F8E5BF579D05601375537766443BA3D197BEF98C8A5ECB7E5E43C322C58D8E4C844A61AA19294705F1875343C9F2031ED502048EA991BDF3938B9F0D66742A684C6371F8D55F984C8FA672581D6384B8CE08E48F71",
    
    -- RSA私钥计算参数
    
    --- d 是私钥的一部分，它是 e 的模逆，即 d 满足 (e * d) ≡ 1 (mod φ(n))。
    --- d 的计算通常使用扩展欧几里得算法，确保 d 存在且唯一。
    _d = "7B2F4C7BE36B6CA72F2685E959C2A6843010AA7504A2066AF6EA467875E0DE9B49DC5C1294F0CE95D55781993314CC43C35C4FEDD9349FF7067784AAF73B7D254A89C0014208DDEC103A95D32161738499C597EB07A5DEAE477198B931E04D64E2E4E5083D2452E31EB4DD5EA3A2FF9F7E6EF8665F7DAD33A0FD328E74815EDD",
}

local _bin = J.BigNumBin
local _new = J.BigNumNew
local _sha1 = J.BigNumSha1

rsa._eB = _new(_bin(rsa._e))
rsa._nB = _new(_bin(rsa._n))
rsa._dB = _new(_bin(rsa._d))

--- rsa加密
---@param content string
---@return string
function rsa.encrypt(content)
    return tostring(_new(content):powmod(rsa._eB, rsa._nB))
end

--- rsa解密
---@param content string
---@return string
function rsa.decrypt(content)
    return tostring(_new(content):powmod(rsa._dB, rsa._nB))
end

-- 签名生成
---@param content string 明文
---@return string
function rsa.genSign(content)
    return rsa.decrypt(_sha1(content))
end

-- 签名验证
---@param content string 密文
---@param sign string 签名（上面生成的）
---@return string
function rsa.checkSign(content, sign)
    return _sha1(content) == rsa.encrypt(sign)
end

local process = Process("rsa")

function process:onStart()
    
    local sign = rsa.genSign("hello-world")
    print("sign = ", sign)
    
    print("check = ", rsa.checkSign("end-world", sign))
    print("check = ", rsa.checkSign("hello-world", sign))

end