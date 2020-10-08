SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "CAS-VBR"
SWEP.TrueName = "M14"
SWEP.Trivia_Class = "DMR"
SWEP.Trivia_Desc = "Semi-automatic DMR. Well-rounded performance supplemented by railed polymer furniture, which offers superior handling characteristics. 7.62 NATO round overpenetrates at close range."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Gas-operated rotating bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1959

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Troy Industries"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_m14.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_m14.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000"

SWEP.Damage = 35
SWEP.DamageMin = 70 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1800 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 15 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.65
SWEP.RecoilRise = 1
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 750 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "m14" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 110 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/m14/m14_fire.wav"
SWEP.DistantShootSound = "weapons/arccw/scar20/scar20_distant_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"

SWEP.MuzzleEffect = "muzzleflash_m14"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellPitch = 90
SWEP.ShellRotate = 180
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.89
SWEP.SightedSpeedMult = 0.65

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "bullet.bmp",
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.054, -1.637, 2.48),
    Ang = Angle(0.064, 0.002, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(1, 12, -2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3.5, 2, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
    ["nobrake"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    }
}

SWEP.ShellRotateAngle = Angle(180, 180, 0)

SWEP.ExtraSightDist = 6

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun lol01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(0, -90, 0),
            wpos = Vector(-4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset
            vmin = Vector(0.4, -3, 4.15),
            vmax = Vector(0.4, 3, 4.15),
            wmin = Vector(13, 0.832, -8.4),
            wmax = Vector(26, 0.832, -10.5),
        },
        CorrectiveAng = Angle(0, 180, 0),
        VMScale = Vector(1.4, 1.4, 1.4),
        WMScale = Vector(1, 1, 1)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "gun lol01",
        Offset = {
            vpos = Vector(0.35, 16, 2.6),
            vang = Angle(0, -90, 0),
            wpos = Vector(33, 1.4, -10.161),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"nobrake"}
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "gun lol01",
        Offset = {
            vang = Angle(0, -90, 0),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0.35, -1, 0.75),
            vmax = Vector(0.35, 12, 0.75),
            wmin = Vector(20, 1.5, -6),
            wmax = Vector(20, 1.5, -6),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun lol01",
        Offset = {
            vpos = Vector(1.25, 9, 3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 90),
            wpos = Vector(21.625, 2, -8.298),
            wang = Angle(-10, -0.556, -90)
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
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
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
        Bone = "gun lol01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.25, 6, 2),
            vang = Angle(0, -90, 0),
            wpos = Vector(-4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        VMScale = Vector(1.4, 1.4, 1.4),
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 60},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 60, 102},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 1,
    },
}