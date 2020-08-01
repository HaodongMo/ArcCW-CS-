att.PrintName = "Integral Scope (1.5-3x)"
att.Icon = Material("entities/acwatt_optic_aug_scope.png")
att.Description = "Integrated scope designed specifically for a single weapon. Superior ergonomics compared to modular scopes. Includes a backup iron sight."

att.SortOrder = 2.5

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.togglesight"
}
att.AutoStats = true
att.Slot = "optic_aug_scope"

att.Model = "models/weapons/arccw/atts/augscope.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0.02, 10.064, -6.738),
        Ang = Angle(0, -2.842, -10.853),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/circle.png"),
            HolosightNoFlare = true,
            HolosightSize = 15,
            HolosightBlackbox = true,
            HolosightMagnification = 3,
            HolosightMagnificationMin = 1.5,
            HolosightMagnificationMax = 3,
            Colorable = true,
            HolosightPiece = true
        },
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0.05, 10.064, -7.4),
        Ang = Angle(0.5, -3.1, -10.853),
        Magnification = 1.1,
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/circle.png"),
            HolosightNoFlare = true,
            HolosightSize = 8,
            HolosightBlackbox = true,
            Colorable = true
        },
    },
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/atts/augscope_hsp.mdl"

att.Mult_SightTime = 1.05
att.Mult_SightedSpeedMult = 0.95
att.Mult_SpeedMult = 0.97