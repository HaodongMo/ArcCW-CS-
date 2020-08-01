SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Other" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Fists"
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Desc = "Listen up son, 'cause I'm only gonna tell you this one time. A boy thinks his guns are all he needs to get out of a scrap. And maybe that's true. But you won't always have your gun. Guns get lost. Guns get stolen. Guns run out of ammo, they fail, they break. But if you can hold your own with just your two bare fists, boy, there ain't nothing the world can do to stop you."
SWEP.Trivia_Manufacturer = "Your Mother"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Applied Pugilism"
SWEP.Trivia_Country = "Earth"
SWEP.Trivia_Year = "6 Million BC"

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.WorldModel = ""
SWEP.ViewModelFOV = 60

SWEP.PrimaryBash = true
SWEP.CanBash = true

SWEP.MeleeDamage = 15
SWEP.MeleeRange = 26
SWEP.MeleeDamageType = DMG_CLUB

SWEP.Melee2 = true
SWEP.Melee2Damage = 15
SWEP.Melee2Range = 26

SWEP.MeleeSwingSound = "weapons/arccw/knife/knife_slash2.wav"
SWEP.MeleeHitSound = "physics/body/body_medium_impact_hard1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_impact_hard5.wav"

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
    },
}

SWEP.MeleeTime = 0.5
SWEP.Melee2Time = 0.5

SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST

SWEP.HoldtypeActive = "fist"
SWEP.HoldtypeHolstered = "normal"

SWEP.Primary.ClipSize = -1

-- 0	=	reference
-- 1	=	seq_admire
-- 2	=	fists_draw
-- 3	=	fists_right
-- 4	=	fists_left
-- 5	=	fists_uppercut
-- 6	=	fists_holster
-- 7	=	fists_idle_01
-- 8	=	fists_idle_02


SWEP.Animations = {
    ["idle"] = {
        Source = {"fists_idle_02", "fists_idle_01"},
        Time = 5
    },
    ["draw"] = {
        Source = "fists_draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "fists_draw",
        Time = 1,
    },
    ["holster"] = {
        Source = "fists_holster",
        Time = 0.5,
    },
    ["bash"] = {
        Source = {"fists_left"},
        Time = 0.75,
    },
    ["bash2"] = {
        Source = {"fists_right", "fists_uppercut"},
        Time = 0.75,
    }
}

SWEP.IronSightStruct = false

SWEP.CustomizePos = Vector(0, -5, -10)
SWEP.CustomizeAng = Angle(30, 0, 0)

SWEP.ActivePos = Vector(0, -5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 5, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(10, -10, 0)

SWEP.HolsterPos = Vector(0, -1, 2)
SWEP.HolsterAng = Angle(-15, 0, 0)