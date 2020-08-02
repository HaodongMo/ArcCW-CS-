att.PrintName = "Cornerfragger"
att.Icon = Material("entities/acwatt_ammo_ricochet.png")
att.Description = "Bullets ricochet off surfaces once, and gain increased damage when doing so. Specialized bullet head reduces damage and makes penetration impossible. More of a revolver technique."
att.Desc_Pros = {
    "pro.ammo_ricochet"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ammo_bullet"

att.NotForNPC = true

att.Mult_Damage = 0.8
att.Mult_Penetration = 0
-- att.Mult_Recoil = 1.15
-- att.Mult_SpeedMult = 0.9

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or wep.ShootEntity ~= nil then return false end
end

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if not data.tr.HitNonWorld and data.tr.HitPos then
        local dir = data.tr.Normal - 2 * (data.tr.Normal:Dot(data.tr.HitNormal)) * data.tr.HitNormal
        local r = ents.Create("arccw_ricochet")
        r.FireTime = CurTime() + 0.01
        r.Owner = wep.Owner
        r.Damage = math.ceil(data.damage * 1.5)
        r.Direction = dir
        r.Inflictor = wep
        r:SetPos(data.tr.HitPos)
        r:Spawn()
        return false
    end

end