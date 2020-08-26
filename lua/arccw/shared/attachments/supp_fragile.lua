att.PrintName = "Fragile Suppressor"
att.Ignore = true
att.Icon = Material("entities/acwatt_supp_heavy.png")
att.Description = "Improvised suppressor with good sound dampening, which is very light, but breaks when used."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.obstruction",
    "con.fragile"
}
att.AutoStats = true
att.Slot = "muzzle"

att.Model = "models/weapons/arccw/atts/supp_heavy.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 0.95
att.Mult_ShootVol = 0.75

att.Add_BarrelLength = 24

att.DamageOnShoot = 1
att.Health = 5

att.Hook_AttDestroyed = function(wep, data)
    wep:EmitSound("weapons/arccw/supp_break.wav", 75, 100, 1, CHAN_STATIC)
end