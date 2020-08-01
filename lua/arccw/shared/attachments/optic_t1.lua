att.PrintName = "T-1 (LP)"
att.Icon = Material("entities/acwatt_optic_t1.png")
att.Description = "Mid-profile red dot sight with round body."

att.SortOrder = -0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_lp"

att.Model = "models/weapons/arccw/atts/t1.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.594),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.HolosightMagnification = 1

att.Mult_SightTime = 1.06
att.Mult_SightedSpeedMult = 0.95

att.Colorable = true