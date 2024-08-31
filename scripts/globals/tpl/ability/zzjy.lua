---@param hurtData evtOnUnitHurtData
---@param effectiveData evtOnAbilityEffectiveData
TPL_ABILITY.ZZJY = AbilityTpl()
    :name("自在极意被动")
    :targetType(ability.targetType.pas)
    :icon("ChaosBody")
    :coolDownAdv(5, 0)
    :mpCostAdv(50, 0)
    :levelMax(10)
    :levelUpNeedPoint(2)
    :onUnitEvent(eventKind.unitHurt,
    function(hurtData)
        hurtData.triggerAbility:spell()
    end)
    :onEvent(eventKind.abilityEffective,
    function(effectiveData)
        -- 技能被触发的效果
        local tu = effectiveData.triggerUnit
        effector.attach(tu, "DivineShieldTarget", "origin", 3)
        Buff({
            key = "自在极意被动",
            object = tu,
            icon = "ability/SunnyDoll",
            duration = 3,
            ---@param buffObj Unit
            purpose = function(buffObj)
                buffObj:hurtReduction("+=100"):hurtRebound("+=100"):odds("hurtRebound", "+=100")
            end,
            ---@param buffObj Unit
            rollback = function(buffObj)
                buffObj:hurtReduction("-=100"):hurtRebound("-=100"):odds("hurtRebound", "-=100")
            end,
        })
    end)