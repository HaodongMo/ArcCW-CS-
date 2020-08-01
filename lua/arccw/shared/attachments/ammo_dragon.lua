att.PrintName = "Dragon's Breath"
att.Icon = Material("entities/acwatt_ammo_dragon.png")
att.Description = "Incendiary load shotgun shells deal extra damage at both close and long range, as well as igniting targets within its effective range. However, a reduced magazine is equipped."
att.Desc_Pros = {
    "pro.ignite"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ammo_shotgun"

att.Mult_PrecisionMOA = 2
att.Mult_ShootPitch = 0.85
att.Mult_Damage = 1.25
att.Mult_DamageMin = 1.25

att.Override_DamageType = DMG_BURN

att.MagReducer = true

att.ActivateElements = {"reducedmag"}