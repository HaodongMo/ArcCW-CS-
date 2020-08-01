att.PrintName = "Double Stuff"
att.Icon = Material("entities/acwatt_fcg_double.png")
att.Description = "Fire system that can fit one extra round in the chamber at a time through esoteric mechanical magic."
att.Desc_Pros = {
    "+ +2",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "fcg"

att.Override_ChamberSize = 2

att.Mult_ReloadTime = 1.05

att.Hook_Compatible = function(wep, compat)
    if wep.ChamberSize == 1 then
        return
    else
        return false
    end
end