---@param effectiveData eventOnAbilityEffective
TPL_ABILITY.AB4 = AbilityTpl()
    :name("技能4")
    :targetType(ability.targetType.square)
    :targetFilter(
    function(this, targetUnit)
        return targetUnit ~= nil and targetUnit:isEnemy(this:bindUnit():owner())
    end)
    :icon("AB4")
    :castPotTimes(3)
    :castPotType(2)
    :coolDownAdv(5, 0)
    :castWidthAdv(500, 0)
    :castHeightAdv(250, 0)
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        print("放")
    end)