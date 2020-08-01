att.PrintName = "Burst"
att.Icon = Material("entities/acwatt_fcg_burst.png")
att.Description = "Firemode conversion allowing for 3-round burst and semi-auto fire modes."
att.Desc_Pros = {
    "+ Burst-fire mode"
}
att.Desc_Cons = {
    "- Burst delay"
}
att.AutoStats = true
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = -3,
        PostBurstDelay = 0.1
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Hook_Compatible = function(wep)
    local auto = false
    for i, v in pairs(wep.Firemodes) do
        if v.Mode and v.Mode == -3 then
            auto = true
            break
        end
    end
    if auto then return false end
end

att.Mult_RPM = 1.1