TPL_UNIT.Footman = UnitTpl("Footman")
    :preItem({ TPL_ITEM.IT1, TPL_ITEM.IT2 })
    :model("Footman")
    :icon("unit\\Footman")
    :weaponSound("metal_slice_medium")
    :elite(true)
    :reborn(5)
    :rebornHP(60)
    :rebornMP(40)
    :hp(1000):hpRegen(50)
    :mp(1000):mpRegen(10)
    :move(522)
    :attackSpaceBase(0.7)
    :attack(77)
    :attackRange(1000)
    :assault(Assault({ mode = "lightning", model = lightning.type.suckBlue, focus = 3, damageType = injury.damageType.thunder }))

TPL_UNIT.FootmanAvatar = UnitTpl("Footman", "avatar")
    :preNoAttack()
    :preItem({ TPL_ITEM.IT1, TPL_ITEM.IT2 })
    :model("Footman")
    :icon("unit\\Footman")
    :elite(true)
    :reborn(5)
    :rebornHP(60)
    :rebornMP(40)
    :hp(1000):hpRegen(50)
    :mp(1000):mpRegen(10)
    :move(522)
    :attackSpaceBase(0.7)
    :attack(77)
    :attackRange(1000)
    :assault(Assault({ mode = "lightning", model = lightning.type.suckBlue, focus = 3, damageType = injury.damageType.thunder }))

TPL_UNIT.FootmanBuilding = UnitTpl("Footman", "building")
    :preNoAttack()
    :preItem({ TPL_ITEM.IT1, TPL_ITEM.IT2 })
    :model("Footman")
    :icon("unit\\Footman")
    :elite(true)
    :reborn(5)
    :rebornHP(60)
    :rebornMP(40)
    :hp(1000):hpRegen(50)
    :mp(1000):mpRegen(10)
    :move(522)
    :attackSpaceBase(0.7)
    :attack(77)
    :attackRange(1000)
    :assault(Assault({ mode = "lightning", model = lightning.type.suckBlue, focus = 3, damageType = injury.damageType.thunder }))

TPL_UNIT.FootmanBuildingMove = UnitTpl("Footman", "buildingMove")
    :preNoAttack()
    :preItem({ TPL_ITEM.IT1, TPL_ITEM.IT2 })
    :model("Footman")
    :icon("unit\\Footman")
    :elite(true)
    :reborn(5)
    :rebornHP(60)
    :rebornMP(40)
    :hp(1000):hpRegen(50)
    :mp(1000):mpRegen(10)
    :move(522)
    :attackSpaceBase(0.7)
    :attack(77)
    :attackRange(1000)
    :assault(Assault({ mode = "lightning", model = lightning.type.suckBlue, focus = 3, damageType = injury.damageType.thunder }))