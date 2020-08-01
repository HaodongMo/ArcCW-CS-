att.PrintName = "Never Stop Shooting"
att.Icon = Material("entities/acwatt_perk_refund.png")
att.Description = "Shots which successfully hit have a 50% chance to be refunded to your reserve ammo."
att.Desc_Pros = {
    "+ Chance to refund shots"
}
att.Desc_Cons = {
}
att.Slot = "perk"

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if math.Rand(0, 100) > 50 then return end

    local ent = data.tr.Entity

    if ent then
        if wep.Owner:IsNPC() then
            wep:SetClip1(wep:Clip1() + 1)
            return
        end

        if ent.Health and ent:Health() > 0 then
            wep.Owner:GiveAmmo(1, wep.Primary.Ammo, true)
        end
    end
end