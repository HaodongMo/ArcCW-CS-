att.PrintName = "Sputter"
att.Icon = Material("entities/acwatt_fcg_sputter.png")
att.Description = "Firemode conversion designed to circumvent early machine gun regulations by making the gun fire continuously until empty."
att.Desc_Pros = {
    "pro.sputter",
}
att.Desc_Cons = {
    "con.sputter",
    "con.sputter2",
}
att.AutoStats = true
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = -1000,
        RunawayBurst = true,
        PrintName = "SPUT"
    }
}

att.Mult_RPM = 1.25