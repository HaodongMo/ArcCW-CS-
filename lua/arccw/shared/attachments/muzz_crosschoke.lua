att.PrintName = "Cross Choke"
att.Icon = Material("entities/acwatt_muzz_crosschoke.png")
att.Description = "Shotgun choke producing a cross-shaped pattern."
att.Desc_Pros = {
    "pro.muzz_crosschoke",
}
att.Desc_Cons = {
    "con.situational"
}
att.AutoStats = false
att.Slot = {"choke", "muzzle_shotgun"}

att.Mult_AccuracyMOA = 0.2

att.Override_ShotgunSpreadPattern = true
att.Override_ShotgunSpreadDispersion = false

att.Hook_ShotgunSpreadOffset = function(wep, data)
    if math.random(0, 1) >= 0.5 then
        data.ang = Angle(0, math.Rand(-3, 3), 0)
    else
        data.ang = Angle(math.Rand(-3, 3), 0, 0)
    end

    return data
end