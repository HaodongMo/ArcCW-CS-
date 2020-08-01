att.PrintName = "RPG-7 High Explosive"
att.Icon = Material("entities/acwatt_ammo_rpg7_he.png")
att.Description = "Load high explosive rockets that have a greater splash radius but no HEAT jet, reducing impact damage."
att.Desc_Pros = {
    "+ Splash Damage"
}
att.Desc_Cons = {
    "- Direct Hit Damage",
}
att.AutoStats = true
att.Slot = "ammo_rpg7_rocket"

att.Mult_SightTime = 0.9
att.Mult_MoveSpeed = 1.15

att.Override_ShootEntity = "arccw_rpg7_he"