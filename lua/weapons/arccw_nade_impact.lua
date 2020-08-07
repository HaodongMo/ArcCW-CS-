SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Impact Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Fragmentation grenade that explodes on impact."
SWEP.Trivia_Manufacturer = "Day & Zimmermann"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Impact fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1941

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_impact.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_impact.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = false

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1250
SWEP.ShootEntity = "arccw_thr_impact"

SWEP.Animations = {
    ["draw"] = {
        Source = "deploy",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "deploy",
        Time = 0.5,
    },
    ["pre_throw"] = {
        Source = {"pullpin", "pullpin2", "pullpin3", "pullpin4"},
        Time = 0.5,
    },
    ["throw"] = {
        Source = "throw",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
    }
}

if engine.ActiveGamemode() == "terrortown" then
    SWEP.Kind = WEAPON_EQUIP2
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
    SWEP.AutoSpawnable = false
    SWEP.EquipMenuData = {
        type = "Grenade",
        desc = "Impact detonated explosive grenade.\nComes in a pack of 5."
    }
    SWEP.Icon = "arccw/ttticons/arccw_nade_impact.png"

    -- Forcefully create ammo type since this is buyable
    game.AddAmmoType({
        name = "arccw_nade_impact",
    })
    if CLIENT then
        language.Add("arccw_nade_impact_ammo", SWEP.PrintName)
        LANG.AddToLanguage("English", "ammo_arccw_nade_impact", SWEP.PrintName)
    end
    SWEP.Primary.Ammo = "arccw_nade_impact"
    SWEP.ForceDefaultClip = 5
end