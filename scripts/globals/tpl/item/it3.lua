local a = AbilityTpl()
    :targetType(ability.targetType.pas)
    :attributes({ { "defend", 10, 2 } })

TPL_ITEM.IT3 = ItemTpl()
    :name("物品3")
    :icon(BLP_COLOR_BROWN)
    :levelMax(5)
    :bindAbilityTpl(a)