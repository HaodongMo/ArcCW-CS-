att.PrintName = "OKP-7 (HOLO)"
att.Icon = Material("entities/acwatt_optic_okp.png")
att.Description = "Russian holographic sight with chevron reticle."

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/okp.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.867),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/okp7.png")
att.HolosightNoFlare = true
att.HolosightSize = 1.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true