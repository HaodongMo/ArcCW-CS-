att.PrintName = "RPG-7 Smokescreen"
att.Icon = Material("entities/acwatt_ammo_rpg7_smoke.png")
att.Description = "Smoke rockets that produce a wide smokescreen on impact. Also does light damage."
att.Desc_Pros = {
    "pro.rpg.smoke"
}
att.Desc_Cons = {
    "con.rpg.smoke",
}
att.AutoStats = true
att.Slot = "ammo_rpg7_rocket"

att.Mult_SightTime = 0.9
att.Mult_MoveSpeed = 1.15

att.Override_ShootEntity = "arccw_rpg7_smoke"