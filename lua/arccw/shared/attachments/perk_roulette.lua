att.PrintName = "Russian Roulette"
att.Icon = Material("entities/acwatt_perk_roulette.png")
att.Description = "Simulate the most dangerous game. Load only one shot into your gun, with each shot having a 1/6 chance to actually go off. Cannot point at self."
att.Ignore = true
att.Desc_Pros = {
    "+ Thrilling Game of Chance"
}
att.Desc_Cons = {
    "- One round only",
    "- 1/6 chance to fire"
}
att.Free = true
att.Slot = "perk_revolver"

att.NotForNPC = true

att.Override_ChamberSize = 0

att.Hook_GetCapacity = function(wep, cap)
    return 1
end

att.Hook_FireBullets = function(wep, data)
    if math.random(1, 6) > 1 then
        wep:DryFire()
        data.Num = 0
    end

    return data
end