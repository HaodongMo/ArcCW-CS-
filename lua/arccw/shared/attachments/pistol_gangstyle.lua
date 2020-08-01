att.Ignore = true

att.PrintName = "Bandit Style"
att.Icon = Material("entities/acwatt_gangstyle.png")
att.Description = "A sideways shooting style that allows for the muzzle climb of a pistol to sweep a room, coined for its use in the warlord era of China."
att.Desc_Pros = {
    "+ Sideways recoil",
}
att.Desc_Cons = {
    "- Recoil control",
    "- Recoil stability"
}
att.Slot = "style_pistol"
att.Free = true

att.LHIK = true
att.LHIKHide = true
att.Override_ActivePos = Vector(-2, 0, -4)
att.Override_ActiveAng = Angle(0, 0, -60)

att.Override_RecoilDirection = Angle(0, -1, 0)
att.Override_RecoilDirectionSide = Angle(1, 0, 0)

att.Override_AddSightRoll = -90

att.Mult_Recoil = 1.2
att.Mult_RecoilSide = 1.2