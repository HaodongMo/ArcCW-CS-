SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AG63"
SWEP.TrueName = "G3A3"
SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = "Heavy 7.62mm battle rifle. Fully automatic, with punishing recoil. Effective at long range. Slow fire rate."
SWEP.Trivia_Manufacturer = "Nordland"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Norway"
SWEP.Trivia_Year = 1963

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
    SWEP.Trivia_Country = "Germany"
 end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ag63.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_ag63.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "0000000000"

SWEP.Damage = 60
SWEP.DamageMin = 29 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1800 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.65
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 450 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 750 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "ag63" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/g3sg1/g3sg1_02.wav"
SWEP.ShootSound = "weapons/arccw/g3sg1/g3sg1_01.wav"
SWEP.DistantShootSound = "weapons/arccw/g3sg1/g3sg1_distant_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellPitch = 90
SWEP.ShellRotate = 180
SWEP.ShellScale = 2.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.5

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.161, -7.804, 3.164),
    Ang = Angle(0.214, 0.07, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
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
    ["nofs"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    }
}

SWEP.ExtraSightDist = 6

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.g3sg1_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(-90, 0, -90),
            wpos = Vector(4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset
            vmin = Vector(0.04, -6.493, -0.520),
            vmax = Vector(0.04, -6.493, -6.437),
            wmin = Vector(4.762, 0.832, -5.402),
            wmax = Vector(9.09, 0.832, -6.179),
        },
        InstalledEles = {"nofs"}
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.g3sg1_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.04, -6.393, -12.520),
            vang = Angle(-90, 0, -90),
            wpos = Vector(4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        KeepBaseIrons = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.g3sg1_Parent",
        Offset = {
            vpos = Vector(0.04, -4.908, -22.104),
            vang = Angle(-90, 0, -90),
            wpos = Vector(27, 0.847, -8.75),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.g3sg1_Parent",
        Offset = {
            vang = Angle(-90, 0, -90),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, -3.83, -9.848),
            vmax = Vector(0, -4.43, -14.561),
            wmin = Vector(14, 0.832, -4.402),
            wmax = Vector(14, 0.832, -4.179),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.g3sg1_Parent",
        Offset = {
            vpos = Vector(1, -4.286, -12.787), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 180),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
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
        Bone = "v_weapon.g3sg1_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.6, -5, -3),
            vang = Angle(-90, 0, -90),
            wpos = Vector(6, 1.4, -4),
            wang = Angle(-10.393, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "draw",
        Time = 1,
        SoundTable = {{s = "weapons/arccw/ak47/ak47_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 39},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 4.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {37, 58, 75, 92, 119, 124},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}