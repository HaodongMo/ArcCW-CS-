att.PrintName = "Canted Delta (RDS)"
att.Icon = Material("entities/acwatt_optic_delta.png")
att.Description = "Backup red dot sight on 45 degree mount for use in combination with magnified optics. Double-tap +USE to equip."
att.InvAtt = "optic_delta"

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "backup"

att.Model = "models/weapons/arccw/atts/backup.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0.2, 14, -1.45),
        Ang = Angle(0, 0, 45),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 0.75
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.1

att.Colorable = true