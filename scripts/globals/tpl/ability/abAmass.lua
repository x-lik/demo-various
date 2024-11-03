---@param effectiveData eventOnAbilityEffective
TPL_ABILITY.AB_Amass = AbilityTpl()
    :name("蓄力加攻")
    :targetType(ability.targetType.square)
    :targetFilter(
    function(this, targetUnit)
        return targetUnit ~= nil and targetUnit:isAlive() and targetUnit:isEnemy(this:bindUnit():owner())
    end)
    :castRadiusAdv(500, 0)
    :castWidthAdv(300, 0)
    :castHeightAdv(300, 0)
    :icon("AB4")
    :coolDownAdv(8, 0)
    :amassAdv(100, 0) -- 蓄力最大蓄100帧
    :amassIncrease(2) -- 蓄力帧增幅效果5%
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        local u = effectiveData.triggerUnit
        local val = 100 -- 攻击效果增加
        local dur = 2 -- 攻击效果持续
        local increaseRatio = effectiveData.increaseRatio
        if (type(increaseRatio) == "number") then
            val = math.round(val * increaseRatio)
            dur = math.trunc(dur * increaseRatio, 1)
            print("蓄力实际效果比率", increaseRatio)
            print("蓄力后攻击力加成", val)
            print("蓄力后持续时间", dur)
        end
        Buff({
            object = u,
            key = "蓄力加攻",
            name = "蓄力加攻",
            signal = buffSignal.up,
            duration = dur,
            icon = "ReplaceableTextures\\CommandButtons\\BTNArcaniteMelee.blp",
            description = {
                colour.hex(colour.lawngreen, "攻击：+" .. val),
            },
            ---@param buffObj Unit
            purpose = function(buffObj)
                buffObj:attack("+=" .. val)
            end,
            ---@param buffObj Unit
            rollback = function(buffObj)
                buffObj:attack("-=" .. val)
            end
        })
    end)