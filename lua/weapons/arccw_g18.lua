SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "PP-A9"
SWEP.TrueName = "Glock 18"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "9mm fully automatic police machine pistol. Low damage, but a sophisticated recoil control system allows for excellent automatic performance."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1989

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Glock Ges.m.b.H."
    SWEP.Trivia_Country = "Germany"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ppa.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 27
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 17 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 32
SWEP.ReducedClipSize = 12

SWEP.Recoil = 1
SWEP.RecoilSide = 0.275
SWEP.RecoilRise = 1.25

SWEP.Delay = 60 / 800 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 110

SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "ppa" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/glock18/glock_02.wav"
SWEP.ShootSound = "weapons/arccw/glock18/glock_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/glock18/glock18-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

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
    Pos = Vector(-5.801, -8.829, 2.726),
    Ang = Angle(0.88, -0.079, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2, -7.145, -11.561)
SWEP.HolsterAng = Angle(36.533, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "v_weapon.Glock_Parent",
                Offset = {
                    pos = Vector(1, 2, -0.35),
                    ang = Angle(180 - 3, 15, -100)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(0, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    },
    ["fcg_semi"] = {
        TrueNameChange = "Glock 17",
        NameChange = "PP-S9",
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.Glock_Slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.24, -0.375, -0.163), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -102),
            wpos = Vector(4.129, 1.476, -4.116),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.Glock_Parent",
        Offset = {
            vpos = Vector(-4.441, -4.436, 0.759),
            vang = Angle(180 - 3, 16, -100),
            wpos = Vector(10.229, 2.075, -3.928),
            wang = Angle(0, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "v_weapon.Glock_Parent",
        Offset = {
            vpos = Vector(-1.801, -2.306, 0.531),
            vang = Angle(180 - 3, 16, -100),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "v_weapon.Glock_Parent",
        Offset = {
            vang = Angle(180 - 3, 16, -100),
            wang = Angle(0, -4.211, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(-3.727, -3.128, 0.521),
            vmax = Vector(-3.187, -2.967, 0.508),
            wmin = Vector(9.311, 1.987, -2.764),
            wmax = Vector(9.311, 1.987, -2.764),
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
        Bone = "v_weapon.Glock_Slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(6, 0.5, -0.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -102),
            wpos = Vector(8, 2.3, -3.5),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
}


SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Time = 1.5
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        }
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        }
    },
    ["fire"] = {
        Source = "fire",
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
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 35,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 35,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}