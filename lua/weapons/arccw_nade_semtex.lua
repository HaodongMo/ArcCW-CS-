SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Semtex"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Plastic explosive grenade coated in glue. Adheres to the first thing it touches. Fuse and glue are activated upon throwing."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Electronic Fuse"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1997

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_semtex.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_semtex.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = false

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_thr_semtex"

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
        type = "Weapon",
        desc = "Sticky grenade with 5 second timed fuse.\nComes in a pack of 3."
    }
    SWEP.Icon = "arccw/ttticons/arccw_nade_semtex.png"

    -- Forcefully create ammo type since this is buyable
    game.AddAmmoType({
        name = "arccw_nade_semtex",
    })
    if CLIENT then
        language.Add("arccw_nade_semtex_ammo", SWEP.PrintName)
        LANG.AddToLanguage("English", "ammo_arccw_nade_semtex", SWEP.PrintName)
    end
    SWEP.Primary.Ammo = "arccw_nade_semtex"
    SWEP.ForceDefaultClip = 3
end