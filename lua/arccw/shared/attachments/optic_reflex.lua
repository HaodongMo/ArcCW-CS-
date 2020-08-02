att.PrintName = "Reflex (RDS)"
att.Icon = Material("entities/acwatt_optic_reflex.png")
att.Description = "Lightweight reflex sight for rifles. Small frame allows for high ergonomics."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/reflex.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.208),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.025

att.Colorable = true