att.PrintName = "Match Ammo"
att.Icon = Material("entities/acwatt_ammo_match.png")
att.Description = "High-quality competition-grade ammunition. Consistent power loads allow for greater accuracy. Custom-tooled bullets cut rifling more smoothly and keep energy for longer. Such bullets cannot be used in bulk."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "- Magazine capacity",
}
att.AutoStats = true
att.Slot = "ammo_bullet"

att.Mult_DamageMin = 1.15
att.Mult_SightTime = 0.9
att.Mult_Precision = 0.25
att.Mult_Recoil = 0.85

att.MagReducer = true

att.ActivateElements = {"reducedmag"}