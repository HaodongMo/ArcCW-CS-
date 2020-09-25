att.PrintName = "Accelerator"
att.Icon = Material("entities/acwatt_fcg_accelerator.png")
att.Description = "Firemode conversion that increases fire rate the longer you shoot, up to 7 shots. Includes 14-round burst."
att.Desc_Pros = {
    "pro.fcg_accelerator",
}
att.Desc_Cons = {
    "con.fcg_accelerator",
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -14,
        PrintName = "14BR"
    },
    {
        Mode = 0
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(7, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 1.25)

    return delay / mult
end