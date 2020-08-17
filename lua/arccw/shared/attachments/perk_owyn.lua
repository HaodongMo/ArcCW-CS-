att.PrintName = "Make It Count"
att.Icon = Material("entities/acwatt_perk_owyn.png")
att.Description = "The last bullet in your magazine does up to double bonus damage based on capacity."
att.Desc_Pros = {
    "pro.perk_owyn"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.perk_owyn"
}
att.AutoStats = true
att.Slot = "perk"

att.NotForNPC = true

--att.Mult_AccuracyMOA = 1.2
--att.Mult_ReloadTime = 1.1

att.Hook_Compatible = function(wep)
    if wep.RegularClipSize <= 2 or wep.ShotgunReload or wep.Num > 1 then return false end
end

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if wep:Clip1() == 1 then
        data.damage = data.damage * (1 + math.Clamp(wep:GetCapacity() / 60, 0.2, 1))
        wep.Owner:EmitSound("ambient/alarms/warningbell1.wav", 60, 110)
    end
end