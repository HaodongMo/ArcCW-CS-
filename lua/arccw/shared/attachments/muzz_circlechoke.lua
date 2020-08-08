att.PrintName = "Concentric Choke"
att.Icon = Material("entities/acwatt_muzz_circlechoke.png")
att.Description = "Shotgun choke producing a circular pattern which is hollow in the middle."
att.Desc_Pros = {
    "pro.muzz_circlechoke",
}
att.Desc_Cons = {
    "con.muzz_circlechoke"
}
att.AutoStats = false
att.Slot = {"choke", "muzzle_shotgun"}

att.SortOrder = 20

att.Mult_AccuracyMOA = 0.25

att.Override_ShotgunSpreadPattern = true
att.Override_ShotgunSpreadDispersion = false

att.Hook_ShotgunSpreadOffset = function(wep, data)
    local a1 = Angle(0, math.Rand(-360, 360), 0)
    local v1 = a1:Forward() * 2.5
    data.ang = Angle(v1.x, v1.y, 0)

    return data
end