SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Gas Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Stick-based grenade which produces a large cloud of irritant gas. Used for riot control, though it can be fatal in large doses."
SWEP.Trivia_Manufacturer = "Reichsbewaffnung"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "CS Gas"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1940

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_gas.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_gas.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = 5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_thr_gas"

SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 75

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
        Source = "pullpin",
        Time = 0.5,
    },
    ["throw"] = {
        Source = "throw",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
    }
}