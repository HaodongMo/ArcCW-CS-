SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Flashbang"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Grenade designed to produce a loud bang accompanied with bright flash, disorienting targets."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1979

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cstrike/c_eq_flashbang.mdl"
SWEP.WorldModel = "models/weapons/w_eq_flashbang.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = 2.5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.TTTWeaponType = "weapon_ttt_confgrenade"
SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 100

SWEP.MuzzleVelocity = 1100
SWEP.ShootEntity = "arccw_thr_flash"

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