att.PrintName = "Micro (2x)"
att.Icon = Material("entities/acwatt_optic_micro.png")
att.Description = "Miniature optic intended for low-magnification applications and close combat. Very lightweight."

att.SortOrder = 2

att.Desc_Pros = {
    "+ Precision sight picture",
    "+ Zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/micro.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.489),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/circle.png")
att.HolosightNoFlare = true
att.HolosightSize = 12
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/micro_hsp.mdl"

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.Mult_SightTime = 1.08
att.Mult_SightedSpeedMult = 0.94