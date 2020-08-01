att.PrintName = "Fire and Brimstone"
att.Icon = Material("entities/acwatt_ammo_api.png")
att.Description = "Load weapon with armor-piercing incendiary ammo, which deals extra damage, ignites targets within its effective range, and has superior penetration. However, due to reliability issues, reduced-capacity magazines are used."
att.Desc_Pros = {
    "pro.ignite"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ammo_bullet"

att.Mult_Damage = 1.1
att.Mult_DamageMin = 1.2
att.Mult_Penetration = 2
att.Mult_Recoil = 1.15

att.Override_DamageType = DMG_BURN

att.MagReducer = true

att.ActivateElements = {"reducedmag"}