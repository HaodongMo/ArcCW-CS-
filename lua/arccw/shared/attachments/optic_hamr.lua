att.PrintName = "HAMR (2.7x)"
att.Icon = Material("entities/acwatt_optic_hamr.png")
att.Description = "Zoom scope with integrated red dot sight. Switch between them with 2x +USE. Quite heavy."

att.SortOrder = 2.7

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/hamr.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.525),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScopeMagnification = 2.7,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 2.7,
            HolosightReticle = Material("hud/scopes/hamr.png"),
            HolosightNoFlare = true,
            HolosightSize = 12,
            HolosightBlackbox = true,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/atts/hamr_hsp.mdl"
        },
        IgnoreExtra = true
    },
    {
        Pos = Vector(0, 7, -3.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("holosights/dot.png"),
            HolosightSize = 0.75,
            Colorable = true,
            HolosightNoHSP = true
        }
    },
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/atts/hamr_hsp.mdl"

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.8
att.Mult_SpeedMult = 0.96

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}