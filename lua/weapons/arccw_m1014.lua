SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AS-1217"
SWEP.TrueName = "M1014"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "12 gauge automatic tube-fed shotgun. Excellent fire rate, but takes a long time to reload."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1994

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_as1217.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_as1217.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 12
SWEP.DamageMin = 6 -- damage done at maximum range
SWEP.Range = 25 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 150 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 4

SWEP.Recoil = 5
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 2

SWEP.ShotgunReload = true

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 18 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/xm1014/xm1014-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m590_suppressed_tp.wav"
SWEP.DistantShootSound = "weapons/arccw/xm1014/xm1014-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.3

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.886, -9.011, 2.683),
    Ang = Angle(-0.174, -0.802, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {},
    }
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.xm1014_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.03, -5.655, -4.597), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(8.36, 0.939, -5.201),
            wang = Angle(-9.738, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.xm1014_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.03, -5, -15), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(8.36, 0.939, -5.201),
            wang = Angle(-9.738, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        KeepBaseIrons = true
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle_shotgun",
        Bone = "v_weapon.xm1014_Parent",
        Offset = {
            vpos = Vector(0.071, -4.511, -26.901),
            vang = Angle(-90, 0, -90),
            wpos = Vector(30.648, 0.782, -8.342),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "v_weapon.xm1014_Parent",
        Offset = {
            vpos = Vector(0, -2.75, -14),
            vang = Angle(-90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.xm1014_Parent",
        Offset = {
            vpos = Vector(0.5, -4.286, -7.787), -- offset that the attachment will be relative to the bone
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
        Slot = "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "v_weapon.xm1014_Parent",
        Offset = {
            vpos = Vector(-0.3, -4.286, -1), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(4, 1.5, -3),
            wang = Angle(0, -4.211, 180)
        },
    },
}

-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt actions)
-- append _empty for empty variation

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.6,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/arccw/xm1014/xm1014_draw.wav", t = 0}},
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.6,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/arccw/xm1014/xm1014_draw.wav", t = 0}},
    },
    ["ready"] = {
        Source = "draw",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/arccw/xm1014/xm1014_draw.wav", t = 0}},
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.5,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_empty",
        Time = 0.5,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2"},
        Time = 0.5,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 0.5,
    },
    ["sgreload_start"] = {
        Source = "start_reload",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = "start_reload_empty",
        Time = 1.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert"] = {
        Source = "insert",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "after_reload",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
}

-- Apex Legends EVA-8 style spread
-- SWEP.ShotgunSpreadDispersion = true
-- SWEP.ShotgunSpreadPattern = {Angle(0, 0, 0), Angle(-1, 0, 0), Angle(1, 0, 0), Angle(-0.7, 1, 0), Angle(-0.7, -1, 0), Angle(0.8, 1, 0), Angle(0.8, -1, 0), Angle(0, 0.6, 0), Angle(0, -0.6, 0)}
-- SWEP.ShotgunSpreadPatternOverrun = {Angle(0, 0, 0)}
-- SWEP.AccuracyMOA = 1
-- SWEP.SightsDispersion = 25
-- SWEP.Num = 9

-- Apex Peacekeeper style spread
-- SWEP.ShotgunSpreadPattern = {
-- Angle(0, 0, 0),
-- Angle(0.5, 0.0, 0),
-- Angle(0.27, 0.421, 0),
-- Angle(-0.208, 0.455, 0),
-- Angle(-0.495, 0.071, 0),
-- Angle(-0.327, -0.378, 0),
-- Angle(0.142, -0.479, 0),
-- Angle(1.0, 0.0, 0),
-- Angle(0.54, 0.841, 0),
-- Angle(-0.416, 0.909, 0),
-- Angle(-0.99, 0.141, 0),
-- Angle(-0.654, -0.757, 0),
-- Angle(0.284, -0.959, 0),
-- }
-- SWEP.ShotgunSpreadDispersion = true
-- SWEP.ShotgunSpreadPatternOverrun = {Angle(0, 0, 0)}
-- SWEP.AccuracyMOA = 1
-- SWEP.HipDispersion = 500
-- SWEP.SightsDispersion = 25
-- SWEP.Num = 13