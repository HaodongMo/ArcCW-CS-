att.PrintName = "Integral Schalldämpfer"
att.Icon = Material("entities/acwatt_muzz_mp5sd.png")
att.Description = "Integrated sound dampener which reduces bullets to subsonic velocity. Slows down fire rate due to quieter internal parts, but is otherwise a more egronomic Colossal Suppressor."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true

att.SortOrder = 100

att.ActivateElements = {"mp5sd"}

att.Slot = "mp5sd"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Mult_ShootPitch = 0.9
att.Mult_ShootVol = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Mult_SightTime = 1.15
att.Mult_HipDispersion = 1.3

att.Add_BarrelLength = 24

att.Mult_RPM = 0.8