SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Insertion Flare"
SWEP.Trivia_Class = "Marker Flare"
SWEP.Trivia_Desc = "Flare that marks a spot to tactically insert the user upon returning. Will be destroyed upon use. Multiple flares can be deployed at once. Flare trail is very conspicuous, so beware of enemies who may destroy it."
SWEP.Trivia_Manufacturer = "Advanced Research Center"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "Australia/USA/UK"
SWEP.Trivia_Year = 1970

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_flare.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_flare.mdl"
SWEP.ViewModelFOV = 60

SWEP.Primary.Ammo = "none"

SWEP.FuseTime = 3

SWEP.Throwing = true
SWEP.Singleton = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 200
SWEP.ShootEntity = "arccw_thr_flare"

SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 0

SWEP.ActivePos = Vector(0, 5, 1)

SWEP.CustomizePos = Vector(6, 0, 3)
SWEP.CustomizeAng = Angle(0, 45, 0)

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 1,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1,
    },
    ["pre_throw"] = {
        Source = "cook",
        Time = 0.7,
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
        desc = "A flare that allows you to respawn after death.\nFlare makes noise and leaves a conspicious trail.\nAnyone can destroy the flare by hitting it."
    }
    SWEP.Icon = "arccw/ttticons/arccw_nade_flare.png"
end