att.PrintName = "RPG-7 Tandem Warhead"
att.Icon = Material("entities/acwatt_ammo_rpg7_he.png")
att.Description = "Load tandem shaped charge warheads that have excellent direct hit damage but very poor splash damage."
att.Desc_Pros = {
    "+ Direct Hit Damage"
}
att.Desc_Cons = {
    "- Splash Damage",
}
att.AutoStats = true
att.Slot = "ammo_rpg7_rocket"

att.Mult_SightTime = 1.25
att.Mult_MoveSpeed = 0.8
att.Mult_ReloadTime = 1.2

att.Override_ShootEntity = "arccw_rpg7_tandem"