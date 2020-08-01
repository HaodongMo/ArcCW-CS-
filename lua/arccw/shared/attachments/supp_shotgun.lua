att.PrintName = "Colossal Suppressor"
att.Icon = Material("entities/acwatt_supp_heavy.png")
att.Description = "Sound suppressor with large bore intended for shotguns. Reduces weapon sound, at the cost of heavy bulk."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "- May obstruct sights"
}
att.AutoStats = true
att.Slot = "muzzle_shotgun"

att.InvAtt = "supp_heavy"

att.Model = "models/weapons/arccw/atts/supp_heavy.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 0.9
att.Mult_ShootVol = 0.75

att.Mult_SightTime = 1.4
att.Mult_HipDispersion = 1.5

att.Add_BarrelLength = 24