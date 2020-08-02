att.PrintName = "Blue Laser"
att.Icon = Material("entities/acwatt_tac_pointer.png")
att.Description = "Blue-colored laser pointer. Bright blue dot improves accuracy while moving."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"tac_pistol", "tac"}

att.Model = "models/weapons/arccw/atts/laser_pointer.mdl"

att.Laser = true
att.LaserStrength = 1
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(50, 50, 255)}

att.Mult_HipDispersion = 0.9
att.Mult_MoveDispersion = 0.5
att.Mult_SightTime = 0.9