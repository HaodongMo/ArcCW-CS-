SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Infiltrator"
SWEP.TrueName = "Welrod"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = ".45 caliber pistol designed to be as silent as absolutely possible. A bolt action allows it to reduce its report by eliminating bolt carrier noise."
SWEP.Trivia_Manufacturer = "Inter-Services Research Bureau"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Bolt Action"
SWEP.Trivia_Country = "Great Britain"
SWEP.Trivia_Year = 1942

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Birmingham Small Arms Company"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_welrod.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_welrod.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 55
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.Range = 10 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 120 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 5

SWEP.Recoil = 0.8
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 2

SWEP.ManualAction = true

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "BOLT"
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 10

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "welrod" -- the magazine pool this gun draws from

SWEP.ShootVol = 75 -- volume of shoot sound
SWEP.ShootPitch = 120 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/mp5/mp5_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.81, 5, 1.3),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(1, 8, -2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3.5, 6, -2)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentBodygroups = {}
-- ["name"] = {ind = 1, bg = 1}
-- same as ACT3

SWEP.ExtraSightDist = 9

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.25, 6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(1.829, 0.676, -2.916),
            wang = Angle(-9, 0, 180)
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "barrel",
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip_pistol",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -0.5, 5),
            vang = Angle(90, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -0.5, 12), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(11.711, 0.67, -2.864),
            wang = Angle(-9, 0, 180)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "No Stock",
        InstalledEles = {"stock"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Weapon_Bolt", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.225, -0.125, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(7.5, 1, -3.5),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/hkp2000/hkp2000_draw.wav",
            t = 0
            }
        }
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1,
        ShellEjectAt = 0.5,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
    },
    ["fire"] = {
        Source = "shoot",
        Time = 1,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 1,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.75,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.75,
    },
}