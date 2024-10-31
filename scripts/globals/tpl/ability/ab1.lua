---@param effectiveData eventOnAbilityEffective
TPL_ABILITY.AB1 = AbilityTpl()
    :name("技能1")
    :targetType(ability.targetType.circle)
    :targetFilter(
    function(this, targetUnit)
        return targetUnit ~= nil and targetUnit:isEnemy(this:bindUnit():owner())
    end)
    :icon("AB1")
    :coolDownAdv(2.5, -0.05)
    :hpCostAdv(150, 5)
    :mpCostAdv(50, 7)
    :castChantAdv(2, -0.1)
    :castKeepAdv(10, 0.5)
    :castRadiusAdv(300, 50)
    :levelMax(9)
    :description(
    function(obj)
        return {
            "基础消耗：" .. colour.hex(colour.violet, obj:mpCost()),
            "对目标造成伤害：" .. colour.hex(colour.gold, "[攻击x100]")
        }
    end)
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        local ftp = 1
        time.setInterval(ftp, function(curTimer)
            if (false == effectiveData.triggerUnit:isCastKeeping()) then
                class.destroy(curTimer)
                return
            end
            effectiveData.triggerAbility:exp("+=10")
            effectiveData.triggerUnit:abilityPoint("+=1")
            effector.point("DoomDeath", effectiveData.targetX, effectiveData.targetY, effectiveData.targetZ, 0)
        end)
    end)