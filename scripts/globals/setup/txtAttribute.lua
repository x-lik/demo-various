--- attribute&buff 属性配置

--- 游戏规定的几率key
local odds = {
    "_hurtRebound",
    "_crit",
    "_stun"
}
--- 游戏规定的抗性key
local resistance = {
    "_hpSuckAttack",
    "_hpSuckAbility",
    "_mpSuckAttack",
    "_mpSuckAbility",
    "_hurtRebound",
    "_crit",
    "_stun",
    "_punish",
    "split",
    "silent",
    "unArm",
    "lightningChain",
    "crackFly",
}
--- 附魔元素对应图标路径
local elementIconPath = {
    dark = "ability/Nightswallow",
    fire = "ability/IncendiaryBonds",
    grass = "ability/SpellLfieblood",
    ice = "ability/Glacier",
    light = "ability/HolyBolt",
    poison = "ability/SummonDemonicGateway",
    rock = "item/MiscQirajiCrystal01",
    steel = "ability/FlameCrystal",
    thunder = "ability/SplitLightning",
    water = "ability/DeathknightFrozencenter",
    wind = "ability/Greenengulfingtornado",
}

local T = true
local F = false
attribute.conf(F, "_str", "力量", nil, "ability/Strength3")
attribute.conf(F, "_agi", "敏捷", nil, "ability/RogueQuickRecovery")
attribute.conf(F, "_int", "智力", nil, "ability/DeclarationofGod")
attribute.conf(F, "_aim", "命中", '%', "ability/DeadlyDoubleLine")
attribute.conf(F, "_animateScale", "动作", '%', "ability/LightWork")
attribute.conf(F, "_attack", "攻击", nil, "ability/CrystalSlash")
attribute.conf(F, "_attackRange", "攻击范围", nil, "ability/HunterLockAndLoad")
attribute.conf(F, "_attackRangeAcquire", "主动攻击范围", nil, "ability/HunterLockAndLoad")
attribute.conf(F, "_attackRipple", "攻击浮动")
attribute.conf(T, "_attackSpace", "攻击间隔", "击每秒", "ability/WarriorWeaponMastery")
attribute.conf(T, "_attackSpaceBase", "原始攻击间隔", "击每秒", "ability/WarriorWeaponMastery")
attribute.conf(F, "_attackSpeed", "攻击速度", '%', "ability/DemonhunterBladeDance")
attribute.conf(F, "_avoid", "回避", '%', "ability/Greenphantom")
attribute.conf(F, "_breakArmor", "破甲", nil, "ability/ShadowCurseOfSargeras")
attribute.conf(T, "_castChant", "吟唱时间", "秒", "ability/ShadowLastingAfflictions")
attribute.conf(T, "_castChantPercent", "吟唱时间", '%', "ability/ShadowLastingAfflictions")
attribute.conf(F, "_castDistance", "施法距离", nil, "ability/ShadowLastingAfflictions")
attribute.conf(F, "_castDistancePercent", "施法距离", '%', "ability/ShadowLastingAfflictions")
attribute.conf(T, "_castKeep", "施法持续时间", "秒", "ability/ShadowLastingAfflictions")
attribute.conf(T, "_castKeepPercent", "施法持续时间", '%', "ability/ShadowLastingAfflictions")
attribute.conf(F, "_castRange", "施法范围", nil, "ability/ShadowLastingAfflictions")
attribute.conf(F, "_castRangePercent", "施法范围", '%', "ability/ShadowLastingAfflictions")
attribute.conf(T, "_coolDown", "冷却时间", "秒", "ability/ShadowLastingAfflictions")
attribute.conf(T, "_coolDownPercent", "冷却时间", '%', "ability/ShadowLastingAfflictions")
attribute.conf(T, "_cost", "施法消耗", nil, "ability/ShadowLastingAfflictions")
attribute.conf(T, "_costPercent", "施法消耗", '%', "ability/ShadowLastingAfflictions")
attribute.conf(F, "_crit", "暴击", '%', "ability/ShockCut")
attribute.conf(F, "_cure", "治疗加成", '%', "ability/Heal")
attribute.conf(F, "_damageIncrease", "伤害增幅", '%', "ability/LingerSometimesConstantlyKnife")
attribute.conf(F, "_defend", "防御", nil, "ability/ThickFur")
attribute.conf(F, "_enchantMystery", "附魔精通", '%', "ability/ElementalSilk")
attribute.conf(F, "_freeze", "冻结", nil, "ability/HolyWrath")
attribute.conf(F, "_hp", "HP", nil, "ability/HPRecharge")
attribute.conf(F, "_hpCur", "当前HP", nil, "ability/HPRecharge")
attribute.conf(F, "_hpRegen", "HP恢复", "每秒", "ability/ReplenishHealth")
attribute.conf(F, "_hpSuckAbility", "技能吸血", '%', "ability/DrainLife")
attribute.conf(F, "_hpSuckAttack", "攻击吸血", '%', "ability/NatureHealingWay")
attribute.conf(T, "_hurtIncrease", "受伤加深", '%', "ability/IronmaidensBloodritual")
attribute.conf(F, "_hurtRebound", "反弹伤害", '%', "ability/MageMoltenArmor")
attribute.conf(F, "_hurtReduction", "受伤减轻", '%', "ability/HolyGreaterBlessingofSanctuary")
attribute.conf(F, "_move", "移动", nil, "ability/RogueFleetFooted")
attribute.conf(F, "_mp", "MP", nil, "ability/ManaRecharge2")
attribute.conf(F, "_mpCur", "当前MP", nil, "ability/ManaRecharge2")
attribute.conf(F, "_mpRegen", "MP恢复", "每秒", "ability/ReplenishMana")
attribute.conf(F, "_mpSuckAbility", "技能吸魔", '%', "ability/DrainMana")
attribute.conf(F, "_mpSuckAttack", "攻击吸魔", '%', "ability/ManaBurn2")
attribute.conf(F, "_nsight", "夜晚视野", nil, "ability/SigntNight")
attribute.conf(F, "_reborn", "复活时间", "秒", "ability/HolyHolyGuidance")
attribute.conf(F, "_rgba", "偏色", nil, "ability/HunterBeastWithin")
attribute.conf(F, "_punish", "硬直", nil, "ability/ValkyrieArmed")
attribute.conf(F, "_punishCur", "当前硬直", nil, "ability/ValkyrieArmed")
attribute.conf(F, "_punishRegen", "硬直恢复", "每秒", "ability/GodofWar")
attribute.conf(F, "_shield", "护盾", nil, "ability/HolyBlessingOfProtection")
attribute.conf(T, "_shieldBack", "护盾恢复需时", "秒", "ability/HolyBlessingOfProtection")
attribute.conf(F, "_sight", "白昼视野", nil, "ability/SigntDay")
attribute.conf(F, "_stun", "眩晕", '%', "ability/Stun")
attribute.conf(F, "_visible", "反隐范围", nil, "ability/MagicalSentry")
attribute.conf(F, "_weight", "负重", nil, "other/DustOfAppearance")
attribute.conf(F, "_weightCur", "当前负重", nil, "other/DustOfAppearance")
attribute.conf(F, "unArm", "缴械", nil, "ability/ShadowCurseOfMannoroth")
attribute.conf(F, "silent", "沉默", nil, "ability/Silence")
attribute.conf(F, "split", "分裂", nil, "ability/CleavingAttack")
attribute.conf(F, "invisible", "隐身", nil, "ability/Vanish")
attribute.conf(F, "invulnerable", "无敌", '%', "ability/Invulnerable")
attribute.conf(F, "lightningChain", "闪电链", nil, "ability/ChainLightning")
attribute.conf(F, "leap", "冲锋中", nil, "ability/Sprinter")
attribute.conf(F, "crackFly", "被击飞", nil, "ability/Jumpback")
attribute.conf(F, "sp", "额外特性")
--
for _, k in ipairs(enchant.keys) do
    local n = Enchant(k):name()
    local eip = elementIconPath[k]
    attribute.conf(F, k, n, nil, eip)
    attribute.conf(F, SYMBOL_E .. k, n .. "强化", '%', eip)
    attribute.conf(F, SYMBOL_E .. k .. "Weapon", n .. "武装", eip)
    attribute.conf(F, SYMBOL_E .. k .. "Append", n .. "附着", eip)
    attribute.conf(F, SYMBOL_EI .. k, n .. "免疫", eip)
    attribute.conf(F, SYMBOL_ODD .. SYMBOL_E .. k, n .. "几率", '%', eip)
    attribute.conf(F, SYMBOL_RES .. SYMBOL_E .. k, n .. "抗性", '%', eip)
end
for _, v in ipairs(odds) do
    attribute.conf(F, SYMBOL_ODD .. v, attribute.label(v) .. "几率", '%', attribute.icon(v))
end
for _, v in ipairs(resistance) do
    attribute.conf(F, SYMBOL_RES .. v, attribute.label(v) .. "抗性", '%', attribute.icon(v))
end

-- 定义智能属性描述体
-- [基础信息]
---@param this Ability|Item
---@param options {level:number}
description.define("attributes", function(this, options)
    local attributes = this:modify("attributes")
    if (type(attributes) ~= "table" or #attributes == 0) then
        return nil
    end
    local desc = {}
    local lv = math.floor(options.level or this:level())
    for _, a in ipairs(attributes) do
        local param = a[1]
        local m2 = a[2] or 0
        local d1
        local d2
        if (type(m2) == "number") then
            d1 = m2
            d2 = a[3] or d1
        elseif (type(m2) == "string") then
            param = param .. '_' .. m2
            d1 = a[3] or 0
            d2 = a[4] or d1
        end
        local label = attribute.label(param)
        if (label ~= nil) then
            local v = d1
            if (lv > 1) then
                v = v + (lv - 1) * d2
            end
            table.insert(desc, attribute.format(param, v))
        end
    end
    return desc
end)