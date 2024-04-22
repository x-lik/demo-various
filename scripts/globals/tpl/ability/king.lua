---@param attackData evtOnUnitAttackData
TPL_ABILITY.King = AbilityTpl()
    :name("唯我独尊")
    :targetType(ability.targetType.pas)
    :icon("AB5")
    :levelMax(5)
    :levelUpNeedPoint(1)
    :attributes(
    {
        { "attack", 100, 50 },
        { "enchant", injury.damageType.thunder.value, 10, 1 },
    })
    :onUnitEvent(eventKind.unitAttack, "lightningChain",
    function(attackData)
        ability.lightningChain({
            qty = 3,
            sourceUnit = attackData.triggerUnit,
            targetUnit = attackData.targetUnit,
            damage = 100,
            damageSrc = injury.damageSrc.ability,
            damageType = { injury.damageType.thunder }
        })
    end)
    :modify("atk", 0)
    :onUnitEvent(eventKind.unitAttack,
    function(attackData)
        local atk = attackData.triggerAbility:modify("atk")
        local atkTarget = attackData.triggerAbility:modify("atkTarget")
        local atkTimer = attackData.triggerAbility:modify("atkTimer")
        if (isMeta(atkTimer, TimerClass)) then
            class.destroy(atkTimer)
        end
        local curAtk = 0
        if (nil == atkTarget) then
            curAtk = 1
        elseif (attackData.targetUnit:id() == atkTarget) then
            curAtk = atk + 1
        end
        local diff = curAtk - atk
        attackData.triggerAbility:modify("atk", curAtk)
        attackData.triggerAbility:modify("atkTarget", attackData.targetUnit:id())
        if (diff ~= 0) then
            if (diff > 0) then
                attackData.triggerUnit:crit("+=" .. (diff * 5))
                attackData.triggerUnit:odds("crit", "+=" .. (diff * 2.5))
            elseif (diff < 0) then
                attackData.triggerUnit:crit("-=" .. (-diff * 5))
                attackData.triggerUnit:odds("crit", "-=" .. (-diff * 2.5))
            end
            attackData.triggerAbility:modify("atkTimer", time.setTimeout(3, function()
                if (class.isDestroy(attackData.triggerAbility) == false) then
                    local a = attackData.triggerAbility:modify("atk")
                    if (a > 0) then
                        attackData.triggerUnit:crit("-=" .. (a * 5))
                        attackData.triggerUnit:odds("crit", "-=" .. (a * 2.5))
                    end
                    attackData.triggerAbility:clear("atkTimer")
                    attackData.triggerAbility:clear("atkTarget")
                    attackData.triggerAbility:modify("atk", 0)
                end
            end))
        end
    end)
