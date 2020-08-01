att.PrintName = "Aimpoint (RDS)"
att.Icon = Material("entities/acwatt_optic_aimpoint.png")
att.Description = "Tube-based red dot sight for rifles."

att.SortOrder = 0

att.Desc_Pros = {
    "+ Precision sight picture",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/aimpoint.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.43107 * 0.75),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.4
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true