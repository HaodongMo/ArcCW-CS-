att.PrintName = "Flash Hider"
att.Icon = Material("entities/acwatt_muzz_flashhider.png")
att.Description = "Muzzle device which hides muzzle flash while improving hip fire characteristics."
att.Desc_Pros = {
    "pro.flashhiding",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"muzzle", "muzzle_shotgun"}

att.Model = "models/weapons/arccw/atts/muzz_flashhider.mdl"

att.Override_MuzzleEffect = "muzzleflash_pistol"
att.FlashHider = true

att.Mult_HipDispersion = 0.75

att.Mult_ShootPitch = 1.05

att.Mult_SightTime = 1.07

att.Add_BarrelLength = 3

att.Mult_SightedMoveSpeed = 0.95