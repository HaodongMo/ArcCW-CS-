att.PrintName = "ACOGGERS (2.5-3x)"
att.Icon = Material("entities/acwatt_acoggers.png")
att.Description = "Some sort of magnified optic with a person's face on it. He is making a peculiar gesture."
att.Ignore = true

att.SortOrder = 2.75

att.Desc_Pros = {
    "+ POGGERS",
}
att.Desc_Cons = {
}
att.Slot = "optic"

att.Model = "models/weapons/arccw/atts/acog.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.469),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        IgnoreExtra = true
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/poggers.png")
att.HolosightNoFlare = true
att.HolosightSize = 12
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/acog_hsp.mdl"

att.HolosightMagnification = 1.1
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 1.1
att.HolosightMagnificationMax = 1.5

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.9