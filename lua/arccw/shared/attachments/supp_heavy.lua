att.PrintName = "Colossal Suppressor"
att.Icon = Material("entities/acwatt_supp_heavy.png")
att.Description = "Large sound suppressor with ballistic-enhancing qualities. Extremely cumbersome."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "- May obstruct sights"
}
att.AutoStats = true
att.Slot = "muzzle"

att.Model = "models/weapons/arccw/atts/supp_heavy.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 0.9
att.Mult_ShootVol = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Mult_SightTime = 1.4
att.Mult_HipDispersion = 1.5

att.Add_BarrelLength = 24