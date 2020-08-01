SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Claymore"
SWEP.Trivia_Class = "Land Mine"
SWEP.Trivia_Desc = "Directional explosive mine with automatic proximity motion sensor fuse. Upon detonation, explosive fragments decimate any target on the receiving end. That includes you, so be careful! Blast is phenomenally devasting, but be warned - a mine will kill regardless of if you planted it or not. Mines are most effective on level ground with a clear blast field. Mines detonate automatically after 120 seconds."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Electronic Fuse"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1981

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_claymore.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_claymore.mdl"
SWEP.ViewModelFOV = 60

SWEP.Primary.Ammo = "slam"

SWEP.FuseTime = false

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 25
SWEP.ShootEntity = "arccw_thr_claymore"

SWEP.HoldtypeActive = "slam"

SWEP.PullPinTime = 0.5

SWEP.CustomizePos = Vector(9.824, 0, -4.897)
SWEP.CustomizeAng = Angle(36, 35, 0)

SWEP.Animations = {
    ["draw"] = {
        Source = "deploy",
        Time = 0.5,
        SoundTable = {{s = "weapons/arccw/hegrenade/he_draw.wav", t = 0}}
    },
    ["ready"] = {
        Source = "deploy",
        Time = 0.5,
    },
    ["pre_throw"] = {
        Source = "pullpin",
        Time = 0.75,
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
        type = "Mine",
        desc = "Deployable anti-personnel mine.\nDoes not discriminate.\nFront towards enemy!"
    }
    SWEP.Icon = "arccw/ttticons/arccw_nade_claymore.png"
end