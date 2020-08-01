att.PrintName = "Kobra (HOLO)"
att.Icon = Material("entities/acwatt_optic_kobra.png")
att.Description = "Russian holographic sight with three-prong reticle."

att.SortOrder = 0.5

att.ModelOffset = Vector(0, 0, -0.1)

att.Desc_Pros = {
    "+ Precision sight picture",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/kobra.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.011),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/kobra.png")
att.HolosightFlare = Material("holosights/kobra_flare.png")
att.HolosightSize = 1.5
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true