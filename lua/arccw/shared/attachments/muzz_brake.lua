att.PrintName = "Muzzle Brake"
att.Icon = Material("entities/acwatt_muzz_brake.png")
att.Description = "Muzzle device that aggressively fights recoil by sending exhaust gases upward to combat muzzle rise. Improves vertical recoil, but makes recoil less stable. Also increases weapon report."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"muzzle", "muzzle_shotgun"}

att.Model = "models/weapons/arccw/atts/muzz_brake.mdl"

att.Mult_ShootPitch = 0.95
att.Mult_ShootVol = 1.15

att.Mult_SightTime = 1.05

att.Add_BarrelLength = 2

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 1.5