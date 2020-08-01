att.PrintName = "Holographic (HOLO)"
att.Icon = Material("entities/acwatt_optic_holo.png")
att.Description = "Boxy holographic sight designed for rifles."

att.SortOrder = 0.5

att.Desc_Pros = {
    "+ Precision sight picture",
    "+ Focus"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/eotech.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.433),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/eotech.png")
att.HolosightFlare = Material("holosights/eotech_flare.png")
att.HolosightSize = 2
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.075