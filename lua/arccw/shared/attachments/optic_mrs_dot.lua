att.PrintName = "MRS (RDS)"
att.Icon = Material("entities/acwatt_optic_mrs.png")
att.Description = "Holographic sight with dot reticle. Wide lens makes this sight optimal for close-range combat."

att.SortOrder = 0

att.ModelOffset = Vector(0, 0, -0.2)

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/mrs.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 4, -1.278),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.InvAtt = "optic_mrs"

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true