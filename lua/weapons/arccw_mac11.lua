SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Mk. 201"
SWEP.TrueName = "MAC-11"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "An often handcrafted submachine gun. Known for its incredibly low price at the cost of almost all else. It shoots, and that's about the best thing going for it."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = ".380 ACP"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1972

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mk201.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_mk201.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 24
SWEP.DamageMin = 16 -- damage done at maximum range
SWEP.Range = 30 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 275 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 32 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 16

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.15
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 875 -- 60 / RPM.
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

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 120

SWEP.AccuracyMOA = 30 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mk201" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/mac10/mac10_01.wav"
SWEP.ShootSound = "weapons/arccw/mac10/mac10_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/mac10/mac10-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
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
    Pos = Vector(-8.69, -12.046, 2.829),
    Ang = Angle(0.3, -5.4, -7.301),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-3, -2, -1)
SWEP.ActiveAng = Angle(0, -5, -7.301)

SWEP.HolsterPos = Vector(-1.928, -3, -6.228)
SWEP.HolsterAng = Angle(25, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

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
    ["extendstock"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["nogrip"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Bone = "v_weapon.mac10_Parent",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(-0.1, -6.3, 3.7),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(2, 1.476, -4.8),
                    ang = Angle(171, 0, -1)
                }
            }
        },
    }
}

SWEP.ExtraSightDist = 6

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.mac10_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.1, -6.3, 3.7), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(2, 1.476, -4.8),
            wang = Angle(-2.829, -4.902, 180)
        },
        InstalledEles = {"mount"},
        CorrectiveAng = Angle(1, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.mac10_Parent",
        Offset = {
            vpos = Vector(-0.159, -3.972, -4.514),
            vang = Angle(-90, 0, -90),
            wpos = Vector(10, 1.6, -4.2),
            wang = Angle(-5, -4, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "v_weapon.mac10_Parent",
        Offset = {
            vpos = Vector(0, -2.6, -4),
            vang = Angle(-90, 0, -90),
            wpos = Vector(9.5, 1.5, -3),
            wang = Angle(-7, 0, 180)
        },
        InstalledEles = {"nogrip"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.mac10_Parent",
        Offset = {
            vpos = Vector(0.03, -2.774, -3.579), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 0),
            wang = Angle(-7, -4, -90)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(-1.185, -4.47, -1.982),
            vmax = Vector(-1.185, -4.47, 1.866),
            wmin = Vector(8.152, 1.986, -4.666),
            wmax = Vector(8.152, 1.986, -4.666),
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
        DefaultAttName = "Folded Stock",
        InstalledEles = {"extendstock"},
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
        Bone = "v_weapon.mac10_Parent",
        Offset = {
            vpos = Vector(-1, -4.286, 4.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(1, 1.5, -3),
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
        Source = "idle_empty",
        Time = 1,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 1,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        },
    },
    ["fire"] = {
        Source = {"fire1", "fire2", "fire3"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {36, 57, 77},
        FrameRate = 40,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {36, 57, 77, 88},
        FrameRate = 40,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.25,
    },
}