att.PrintName = "Integral Ring (HOLO)"
att.Icon = Material("entities/acwatt_optic_p90_ring.png")
att.Description = "Integrated scope designed specifically for a single weapon. Superior ergonomics compared to modular scopes."

att.SortOrder = 0.75

att.Desc_Pros = {
    "+ Precision sight picture",
    "+ No sight time penalty"
}
att.Desc_Cons = {
    "- Bulky sight picture"
}
att.Slot = "optic_p90_ring"

att.Model = "models/weapons/arccw/atts/p90_ringsight.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.1, 0, -7.45),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/p90ring.png")
att.HolosightNoFlare = true
att.HolosightSize = 1.5
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1