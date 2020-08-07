SWEP.Base = "arccw_base"
SWEP.Spawnable = false -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "LAWS"
SWEP.TrueName = "M72 LAW"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "A single-shot lightweight disposable rocket launcher. Only one shot can be carried.\n\n\"I fought the LAW and the LAW won.\""
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "66mm"
SWEP.Trivia_Mechanism = "Point-Initiated Base-Detonated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1963

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_m72law.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_rpg7.mdl"
SWEP.ViewModelFOV = 60

SWEP.ShootEntity = "arccw_m72law_heat" -- entity to fire, if any
SWEP.MuzzleVelocity = 100000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.Singleton = true

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Recoil = 2
SWEP.RecoilSide = 0.175
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_rpg"
SWEP.NPCWeight = 250

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "RPG_Round" -- what ammo type the gun uses
SWEP.MagID = "rpg7" -- the magazine pool this gun draws from

SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/rpg7/rpg7_fp.wav"
SWEP.DistantShootSound = "weapons/arccw/rpg7/rpg7_dist.wav"

SWEP.MuzzleEffect = "muzzleflash_m79"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on

SWEP.SightTime = 0.35

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4, 2, -2.25),
    Ang = Angle(0, 0, -35),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = true
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, -3)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-1, 0, -2)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AutoReload = true
SWEP.Disposable = true

SWEP.Attachments = {
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "ValveBiped.weapon_bone",
        Offset = {
            vpos = Vector(1.35, -1, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 90),
            wpos = Vector(11, 1.25, -4.5),
            wang = Angle(0, -4.211, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1,
    },
    ["idle_empty"] = {
        Source = "idle",
        Time = 1,
    },
    ["draw_empty"] = {
        Source = "draw",
        Time = 1.5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1.5,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.75,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 26, 40},
        FrameRate = 30,
        LHIK = false,
    },
}