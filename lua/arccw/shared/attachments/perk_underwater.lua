att.PrintName = "Diver"
att.Icon = Material("entities/acwatt_perk_underwater.png")
att.Description = "Allows gun to shoot underwater."
att.Desc_Pros = {
    "+ Shoot underwater"
}
att.Desc_Cons = {
}
att.Slot = "perk"

att.Override_CanFireUnderwater = true

att.Hook_Compatible = function(wep)
    if wep.CanFireUnderwater then return false end
end