SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Frag Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "High explosive fragmentation hand grenade. Can be cooked."
SWEP.Trivia_Manufacturer = "Day & Zimmermann"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1968

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nade_frag.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_nade_frag.mdl"
SWEP.ViewModelFOV = 60

SWEP.FuseTime = 3.5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_thr_frag"

SWEP.TTTWeaponType = "weapon_ttt_confgrenade"
SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 50

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