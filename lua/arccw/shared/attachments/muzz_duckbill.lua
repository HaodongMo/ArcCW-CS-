att.PrintName = "Duckbill Choke"
att.Icon = Material("entities/acwatt_muzz_duckbill.png")
att.Description = "Shotgun choke which produces a wide horizontal dispersion pattern. Potentially good for crowd control."
att.Desc_Pros = {
    "+ Produces short, wide spread",
}
att.Desc_Cons = {
    "- Poor at hitting single targets"
}
att.AutoStats = false
att.Slot = {"choke", "muzzle_shotgun"}

att.Mult_AccuracyMOA = 0.25

att.Override_ShotgunSpreadPattern = true
att.Override_ShotgunSpreadDispersion = false

att.Hook_ShotgunSpreadOffset = function(wep, data)
    data.ang = Angle(0, math.Rand(-5, 5), 0)

    return data
end