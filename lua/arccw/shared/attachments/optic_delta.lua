att.PrintName = "Delta (LP)"
att.Icon = Material("entities/acwatt_optic_delta.png")
att.Description = "Low-profile red dot sight for pistols, with dot reticle."

att.SortOrder = -0.5

att.Desc_Pros = {
    "+ Precision sight picture",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_lp"

att.Model = "models/weapons/arccw/atts/delta.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.7),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.75
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true