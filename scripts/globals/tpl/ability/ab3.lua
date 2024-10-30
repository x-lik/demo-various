---@param effectiveData eventOnAbilityEffective
TPL_ABILITY.AB3 = AbilityTpl()
    :name("技能3")
    :targetType(ability.targetType.loc)
    :icon("AB3")
    :coolDownAdv(5, 0)
    :mpCostAdv(10, 5)
    :castDistanceAdv(1000, 0)
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        ability.leap({
            model = "WarStompCaster",
            sourceUnit = effectiveData.triggerUnit,
            targetVec = { effectiveData.targetX, effectiveData.targetY },
            speed = 500,
            animate = "attack",
            acceleration = 0,
            height = 100,
            onMove = function()
                print("move")
            end,
            onEnd = function()
                print("end")
            end,
        })
    end)