---@param effectiveData eventOnAbilityEffective
TPL_ABILITY. AB2 = AbilityTpl()
    :name("沉默一波")
    :targetType(ability.targetType.unit)
    :icon("AB2")
    :coolDownAdv(1, 0)
    :hpCostAdv(10, 5)
    :mpCostAdv(1, 7)
    :levelMax(9)
    :castTargetFilter(
    function(this, targetUnit)
        return targetUnit ~= nil and targetUnit:isAlive() and targetUnit:isEnemy(this:bindUnit():owner())
    end)
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        ability.silent({
            whichUnit = effectiveData.targetUnit,
            duration = 3,
            effect = "SilenceTarget",
            attach = "overhead"
        })
        ability.unArm({
            whichUnit = effectiveData.targetUnit,
            duration = 3,
            effect = "SilenceTarget",
            attach = "weapon"
        })
        ability.crackFly({
            model = "WarStompCaster",
            sourceUnit = effectiveData.triggerUnit,
            targetUnit = effectiveData.targetUnit,
            distance = 200,
            height = 1000,
            duration = 1,
            onMove = function()
                print("move")
            end,
            onEnd = function()
                print("end")
            end,
        })
    end)
