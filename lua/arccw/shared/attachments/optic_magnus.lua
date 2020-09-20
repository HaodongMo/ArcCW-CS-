att.PrintName = "Magnus (3-6x)"
att.Icon = Material("entities/acwatt_optic_magnus.png")
att.Description = "Sniper rifle optic with the ability to be adjusted between long and medium range magnification options."

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic_sniper"

att.Model = "models/weapons/arccw/atts/magnus.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 15, -1.489),
        Ang = Angle(0, 0, 0),
        Magnification = 1.8,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/rangefinder.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 15
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/magnus_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 3
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 6

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.85
att.Mult_SpeedMult = 0.94