SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "ROLAND SS-X"
SWEP.TrueName = "SG550-1"
SWEP.Trivia_Class = "DMR"
SWEP.Trivia_Desc = "Swiss police marksman rifle in 5.56. Designed for use at closer ranges than most sniper rifles."
SWEP.Trivia_Manufacturer = "ROLAND SIS"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Switzerland"
SWEP.Trivia_Year = 1992

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_sg550.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_sg550.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000"

SWEP.Damage = 25
SWEP.DamageMin = 35 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.75

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

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 25

SWEP.AccuracyMOA = 0.75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 800 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "stanag" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/scar20/scar20_03.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/scar20/scar20_distant_02.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.35
SWEP.SightTime = 0.42

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-7.52, -18.889, 2.016),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 24

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
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
}

SWEP.ExtraSightDist = 3

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_sniper", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.sg550_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(-90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(-10.393, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0.1, -6.3, -0.5),
            vmax = Vector(0.1, -6.3, -3),
            wmin = Vector(5, 0.899, -5),
            wmax = Vector(7, 0.899, -5),
        },
        Installed = "optic_magnus"
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.sg550_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.1, -6.3, -14),
            vang = Angle(-90, 0, -90),
            wpos = Vector(5, 0.899, -5),
            wang = Angle(-10.393, 0, 180)
        },
        ExcludeFlags = {"hugesight"}
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.sg550_Parent",
        Offset = {
            vpos = Vector(0.1, -4.7, -33),
            vang = Angle(-90, 0, -90),
            wpos = Vector(32.5, 0.8, -8.101),
            wang = Angle(-10, 0, 180)
        },
        InstalledEles = {"nobrake"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.sg550_Parent",
        Offset = {
            vpos = Vector(0, -4.149, -13.561),
            vang = Angle(-90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, -4.149, -10),
            vmax = Vector(0, -4.149, -15),
            wmin = Vector(15, 0.74, -4.301),
            wmax = Vector(15, 0.74, -4.301),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.sg550_Parent",
        Offset = {
            vpos = Vector(-0.69, -5.203, -16), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 0),
            wpos = Vector(15.625, -0.253, -5.9),
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
        Bone = "v_weapon.sg550_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.35, -4, -1), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(6.099, 1.35, -3.301),
            wang = Angle(171.817, 180-1.17, 0),
        },
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.6,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1.5,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot", "shoot2"},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55, 88},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}