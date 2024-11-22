-- 事件反应
---@param u Unit
local function _z(u, offset)
    return u:h() + 130 + offset
end

---@param evtData eventOnUnitKill
event.syncRegister(UnitClass, eventKind.unitKill, function(evtData)
    local owner = evtData.targetUnit:owner()
    if (owner:selection() == evtData.targetUnit) then
        owner:select(evtData.triggerUnit)
    end
end)
---@param evtData eventOnUnitCrit
event.syncRegister(UnitClass, "unitCrit", function(evtData)
    effector.attach(evtData.targetUnit, "lk_crit", "origin", 0.5)
end)
---@param evtData eventOnUnitCritAbility
event.syncRegister(UnitClass, "unitCritAbility", function(evtData)
    effector.attach(evtData.targetUnit, "lk_crit_ability", "origin", 0.5)
    mtg.model({
        model = "lk_ttg_crit",
        size = 1.4,
        x = evtData.targetUnit:x(),
        y = evtData.targetUnit:y(),
        z = _z(evtData.targetUnit, -24),
        height = 50,
        speed = 0.5,
        duration = 0.8,
    })
end)
---@param evtData eventOnUnitAvoid
event.syncRegister(UnitClass, "unitAvoid", function(evtData)
    effector.attach(evtData.triggerUnit, "lk_ttg_avoid", "overhead", 0.3)
end)
---@param evtData eventOnUnitImmuneInvincible
event.syncRegister(UnitClass, eventKind.unitImmuneInvincible, function(evtData)
    effector.attach(evtData.triggerUnit, "DivineShieldTarget", "origin", 1)
    mtg.model({
        model = "lk_ttg_immune_invincible",
        size = 1.2,
        x = evtData.triggerUnit:x(),
        y = evtData.triggerUnit:y(),
        z = _z(evtData.triggerUnit, -44),
        height = 100,
        duration = 1,
    })
end)
---@param evtData eventOnUnitImmuneDefend
event.syncRegister(UnitClass, eventKind.unitImmuneDefend, function(evtData)
    mtg.model({
        model = "lk_ttg_immune_damage",
        size = 0.7,
        x = evtData.triggerUnit:x(),
        y = evtData.triggerUnit:y(),
        z = _z(evtData.triggerUnit, -44),
        height = 100,
        duration = 1,
    })
end)
---@param evtData eventOnUnitImmuneReduction
event.syncRegister(UnitClass, "unitImmuneReduction", function(evtData)
    mtg.model({
        model = "lk_ttg_immune_damage",
        size = 0.7,
        x = evtData.triggerUnit:x(),
        y = evtData.triggerUnit:y(),
        z = _z(evtData.triggerUnit, -44),
        height = 100,
        duration = 1,
    })
end)
---@param evtData eventOnUnitImmuneEnchant
event.syncRegister(UnitClass, eventKind.unitImmuneEnchant, function(evtData)
    mtg.model({
        model = "lk_ttg_immune_enchant",
        size = 0.7,
        x = evtData.triggerUnit:x(),
        y = evtData.triggerUnit:y(),
        z = _z(evtData.triggerUnit, -44),
        height = 100,
        duration = 1,
    })
end)
---@param evtData eventOnUnitHPSuckAttack
event.syncRegister(UnitClass, "unitHPSuckAttack", function(evtData)
    effector.attach(evtData.triggerUnit, "HealTarget2", "origin", 0.5)
end)
---@param evtData eventOnUnitHPSuckAbility
event.syncRegister(UnitClass, "unitHPSuckAbility", function(evtData)
    effector.attach(evtData.triggerUnit, "HealTarget2", "origin", 0.5)
end)
---@param evtData eventOnUnitMPSuckAttack
event.syncRegister(UnitClass, "unitMPSuckAttack", function(evtData)
    effector.attach(evtData.triggerUnit, "AImaTarget", "origin", 0.5)
end)
---@param evtData eventOnUnitMPSuckAbility
event.syncRegister(UnitClass, "unitMPSuckAbility", function(evtData)
    effector.attach(evtData.triggerUnit, "AImaTarget", "origin", 0.5)
end)
---@param evtData eventOnUnitBeStun
event.syncRegister(UnitClass, "unitBeStun", function(evtData)
    effector.attach(evtData.triggerUnit, "ThunderclapTarget", "overhead", evtData.duration)
end)
---@param evtData eventOnUnitBeSplit
event.syncRegister(UnitClass, "unitBeSplit", function(evtData)
    effector.unit("SpellBreakerAttack", evtData.triggerUnit, 0)
end)
---@param evtData eventOnUnitBeSplitSpread
event.syncRegister(UnitClass, "unitBeSplitSpread", function(evtData)
    effector.unit("CleaveDamageTarget", evtData.triggerUnit, 0)
end)
---@param evtData eventOnUnitBeShield
event.syncRegister(UnitClass, "unitBeShield", function(evtData)
    local u = evtData.triggerUnit
    mtg.word({
        style = "default",
        str = math.format(evtData.value, 0),
        width = 7.5,
        size = 0.45,
        x = u:x(),
        y = u:y(),
        z = _z(u, 0),
        height = 150,
        duration = 0.6,
    })
end)
---@param evtData eventOnUnitHurt
event.syncRegister(UnitClass, eventKind.unitHurt, function(evtData)
    local str = math.format(evtData.damage, 0)
    local height = -50
    if (evtData.crit == true) then
        str = 'C' .. str
        height = 300
    end
    local u = evtData.triggerUnit
    mtg.word({
        style = "default",
        str = str,
        width = 12,
        size = 0.7,
        x = u:x(),
        y = u:y(),
        z = _z(u, 0),
        height = height,
        duration = 0.7,
    })
end)
---@param evtData eventOnUnitEnchant
event.syncRegister(UnitClass, eventKind.unitEnchant, function(evtData)
    local m = {
        [injury.damageType.fire.value] = "lk_ttg_e_fire",
        [injury.damageType.water.value] = "lk_ttg_e_water",
        [injury.damageType.ice.value] = "lk_ttg_e_ice",
        [injury.damageType.rock.value] = "lk_ttg_e_rock",
        [injury.damageType.wind.value] = "lk_ttg_e_wind",
        [injury.damageType.light.value] = "lk_ttg_e_light",
        [injury.damageType.dark.value] = "lk_ttg_e_dark",
        [injury.damageType.grass.value] = "lk_ttg_e_grass",
        [injury.damageType.thunder.value] = "lk_ttg_e_thunder",
        [injury.damageType.poison.value] = "lk_ttg_e_poison",
        [injury.damageType.steel.value] = "lk_ttg_e_steel",
    }
    if (m[evtData.enchantType.value] ~= nil) then
        local u = evtData.triggerUnit
        mtg.model({
            model = m[evtData.enchantType.value],
            size = 1.2,
            x = u:x() - math.rand(30, -30),
            y = u:y(),
            z = _z(u, -u:stature() * 2),
            height = 160,
            speed = 0.4,
            duration = 1,
        })
    end
end)