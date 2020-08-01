att.PrintName = "M203 (SMOKE)"
att.Icon = Material("entities/acwatt_ubgl_m203.png")
att.Description = "American-made underbarrel grenade launcher. Fires smoke shells, which produce a white smokescreen. Smoke can be seen through with thermal vision. Double tap +ZOOM to equip/dequip."
att.Desc_Pros = {
    "pro.ubgl",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ubgl"
att.InvAtt = "ubgl_m203"

att.LHIK = true
att.LHIK_Animation = true

att.ModelOffset = Vector(0, 0, 0.25)

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/atts/ubgl_m203.mdl"

att.UBGL = true

att.UBGL_PrintName = "UB (SMK)"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 300
att.UBGL_Recoil = 2.5
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.Hook_LHIK_TranslateAnimation = function(wep, key)
    if key == "idle" then
        if wep:GetNWBool("ubgl") then
            return "idle_ready"
        else
            return "idle"
        end
    end
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep:DoLHIKAnimation("fire", 0.5)

    wep:FireRocket("arccw_gl_smk", 30000)

    wep:EmitSound("weapons/grenade_launcher1.wav", 100)

    wep:SetClip2(wep:Clip2() - 1)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 1 then return end

    if Ammo(wep) <= 0 then return end

    wep:DoLHIKAnimation("reload", 2.5)

    wep:SetNextSecondaryFire(CurTime() + 2.5)

    wep:PlaySoundTable({
        {s = "weapons/arccw/m203/m203_dooropen.wav", t = 0.25},
        {s = "weapons/arccw/m203/m203_shellin.wav", t = 1.25},
        {s = "weapons/arccw/m203/m203_doorclose.wav", t = 2},
    })

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local clip = 1

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.8
att.Mult_SightedSpeedMult = 0.85