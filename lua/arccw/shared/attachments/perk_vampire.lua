att.PrintName = "Health Recycling"
att.Icon = Material("entities/acwatt_perk_vampire.png")
att.Description = "Successful hits heal shooter, at the cost of dealing significantly less damage."
att.Ignore = true
att.Desc_Pros = {
    "+ Health steal"
}
att.Desc_Cons = {
    "- Reduced damage",
}
att.Slot = "perk"

att.Mult_Damage = 0.5
att.Mult_DamageMin = 0.5

att.Hook_BulletHit = function(wep, data)
    if !data.tr.Entity then return end

    if data.tr.HitWorld then return end

    if data.tr.Entity:Health() <= 0 then return end

    if wep.Owner:Health() > wep.Owner:GetMaxHealth() then return end

    wep.Owner:SetHealth(math.Clamp(wep.Owner:Health() + (data.damage * 0.1), 0, wep.Owner:GetMaxHealth()))
end