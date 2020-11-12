SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Para-556"
SWEP.TrueName = "AUG A2"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Bullpup assault rifle, whose design puts the mechanism behind the grip, allowing for a longer barrel without extending the effective length of the weapon. Good magazine capacity, poor recoil characteristics."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1978

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Steyr Mannlicher"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_para.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_para.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000"

SWEP.Damage = 28
SWEP.DamageMin = 21 -- damage done at maximum range
SWEP.Range = 120 -- in METRES
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 36 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 62
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 0.75

SWEP.Delay = 60 / 700 -- 60 / RPM.
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
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "stanag" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/aug/aug_01.wav"
SWEP.ShootSound = "weapons/arccw/aug/aug_03.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/aug/aug-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.92
SWEP.SightedSpeedMult = 0.45
SWEP.SightTime = 0.36

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-7.843, -11.933, 1.738),
    Ang = Angle(4.2, -3.875, -10.58),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, 0, -2)
SWEP.ActiveAng = Angle(1.5, -3.3, -10.58)

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
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["nofg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {},
    },
    ["norail"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {},
    },
    ["optic_aug_scope"] = {
        TrueNameChange = "AUG A1"
    }
}

SWEP.ExtraSightDist = 3

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        MergeSlots = {10},
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.8, -5.103, -2.08), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(8, 1, -6),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(-0.123, -3.694, -15.587),
            vang = Angle(-93.5, -1, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(0, -2.5, -5.5),
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(14, 0.602, -4.8),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nofg"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(1.386, -2.286, -3.787), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, 90 + 100.628),
            wpos = Vector(10.625, 0.853, -4.298),
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
        Slot = "optic_aug_scope",
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        Hidden = true,
        NoWM = true,
        InstalledEles = {"norail", "nors"},
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.15, -3.75, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(3, 1.5, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.6,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {16, 30},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 4,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {16, 30, 55},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
}