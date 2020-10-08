SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Lior 556AR"
SWEP.TrueName = "Galil ARM"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Very low recoil assault rifle. Highly controllable. Has a bottle opener in the front handguard."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1972

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Israeli Military Industries"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_lior556.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_lior556.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000"

SWEP.Damage = 26
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 150 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1100 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.35
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 725 -- 60 / RPM.
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
SWEP.NPCWeight = 110

SWEP.AccuracyMOA = 11 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "type2" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/galilar/galil_04.wav"
SWEP.ShootSound = "weapons/arccw/galilar/galil_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/galilar/galil-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.36

SWEP.IronSightStruct = {
    Pos = Vector(-6.362, -9.209, 2.546),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
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
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["nofs"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["norsa"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["altirons"] = {
        Override_IronSightStruct = {
            Pos = Vector(-6.352, -9.209, 3),
            Ang = Angle(-0.9, 0.03, 0),
            Magnification = 1.5,
        }
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Bone = "v_weapon.galil",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(0, -2.2, 5),
                    ang = Angle(90, 0, -90),
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(5.714, 0.73, -6),
                    ang = Angle(171, 0, -1)
                }
            }
        },
    },
    ["mount2"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Bone = "v_weapon.galil",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(0, -2.2, 15),
                    ang = Angle(90, 0, -90),
                }
            }
        },
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.galil", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.2, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6.099, 0.699, -6.301),
            wang = Angle(171.817, 180-1.17, 0),
        },
        InstalledEles = {"mount", "nors", "nofs", "norsa"},
        MergeSlots = {11}
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.galil", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.2, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6.099, 0.699, -6.301),
            wang = Angle(171.817, 180-1.17, 0),
        },
        InstalledEles = {"mount2"},
        KeepBaseIrons = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.galil",
        Offset = {
            vpos = Vector(0.15, -0.2, 28),
            vang = Angle(90, 0, -90),
            wpos = Vector(31.687, 0.689, -8.101),
            wang = Angle(-9, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.galil",
        Offset = {
            vang = Angle(90, 0, -90),
            wang = Angle(-10, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, 1.5, 9.848),
            vmax = Vector(0, 1.5, 13.561),
            wmin = Vector(15, 0.832, -4.2),
            wmax = Vector(20, 0.832, -4.7),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.galil",
        Offset = {
            vpos = Vector(1, -0.75, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
            wpos = Vector(15.625, -0.1, -6.298),
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
        Slot = "irons_alt",
        InstalledEles = {"nors", "altirons"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "v_weapon.galil",
        Offset = {
            vpos = Vector(0.75, 0.25, 6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(9, 1.5, -4.5),
            wang = Angle(0, -4.211, 180)
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
        Time = 0.4,
        SoundTable = {{s = "weapons/arccw/galilar/galil_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1,
        SoundTable = {{s = "weapons/arccw/galilar/galil_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 47,
        Checkpoints = {19, 61},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 47,
        Checkpoints = {19, 61, 100},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}