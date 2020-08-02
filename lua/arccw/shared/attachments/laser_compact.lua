att.PrintName = "Compact Laser"
att.Icon = Material("entities/acwatt_laser_compact.png")
att.Description = "Small lightweight laser for pistols. Red beam assists with aiming from the hip. Not as powerful as a bright laser."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"tac_pistol", "tac"}

att.Model = "models/weapons/arccw/atts/laser_compact.mdl"

att.Laser = true
att.LaserStrength = 0.5
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 50, 50)}

att.Mult_SightTime = 1.1

att.Mult_HipDispersion = 0.75