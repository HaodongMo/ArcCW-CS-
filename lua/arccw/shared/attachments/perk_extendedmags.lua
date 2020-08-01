att.PrintName = "American Action Hero"
att.Icon = Material("entities/acwatt_perk_extendedmags.png")
att.Description = "High-capacity magazines allow for more time before needing to reload, but slow down reloading and add weight."
att.Desc_Pros = {
    "+ More ammo",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ammo_shotgun", "ammo_bullet"}

att.Mult_ReloadTime = 1.25
att.MagExtender = true

att.ActivateElements = {"extendedmag"}

att.Mult_SightTime = 1.15

att.Mult_HipDispersion = 1.25

att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == wep.ExtendedClipSize then return false end
end