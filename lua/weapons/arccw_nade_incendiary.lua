SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Thermite Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "Grenade with thermite core. Thermite damages everything in a short radius and sets them on fire. Its long fuse and ease of avoidance make it a poor choice as an anti-personnel weapon, but it can be effective for area denial or anti-materiel use."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Thermite"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1944

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_incendiary.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_incendiary.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = 5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_thr_thermite"

SWEP.TTTWeaponType = "weapon_zm_molotov"
SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 100

SWEP.KillIconAlias = "arccw_nade_flash"

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