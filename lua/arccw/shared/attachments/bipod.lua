att.PrintName = "Bipod"
att.Icon = Material("entities/acwatt_bipod.png")
att.Description = "Bipod can be deployed by pressing +USE while in an eligible spot. While deployed, the user's aiming angle is limited and recoil is reduced to near-zero. Moving will release bipod. While not in use, the bipod negatively impacts weapon maneuverability."

att.SortOrder = 10

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "bipod"

att.LHIK = true
att.LHIK_Animation = true

att.MountPositionOverride = 1

att.Model = "models/weapons/arccw/atts/bipod.mdl"

att.Bipod = true
att.Mult_BipodRecoil = 0.25
att.Mult_BipodDispersion = 0.1

att.Mult_SightTime = 1.2
att.Mult_HipDispersion = 1.2
att.Mult_SpeedMult = 0.95

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" or anim == "in" or anim == "out" then
        if wep:InBipod() then
            return "idle_bipod"
        else
            return "idle"
        end
    end
end

att.Hook_Compatible = function(wep)
    if wep.Bipod_Integral then return false end
end