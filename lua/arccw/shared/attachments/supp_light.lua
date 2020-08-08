att.PrintName = "Light Suppressor"
att.Icon = Material("entities/acwatt_supp_light.png")
att.Description = "Lightweight weapon suppressor. Negatively impacts ballistic performance."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "muzzle"

att.SortOrder = 10

att.Model = "models/weapons/arccw/atts/supp_light.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 1.1
att.Mult_ShootVol = 0.75

att.Mult_HipDispersion = 1.15
att.Mult_Range = 0.8

att.Add_BarrelLength = 8