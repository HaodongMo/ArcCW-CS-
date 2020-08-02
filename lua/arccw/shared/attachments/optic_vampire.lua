att.PrintName = "Vampire (FLIR)"
att.Icon = Material("entities/acwatt_optic_vampire.png")
att.Description = "Heavy infrared thermal vision scope. Capable of highlighting targets in white. Complex electronics require bulky chassis."

att.SortOrder = 50

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/vampire.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 14, -1.55),
        Ang = Angle(0, 0, 0),
        Magnification = 1.75,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/thermal.png")
att.HolosightNoFlare = true
att.HolosightSize = 16
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/vampire_hsp.mdl"

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightConstDist = 42

att.HolosightMagnificationMin = 1.1
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.4
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.875