SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "NXS"
SWEP.TrueName = "Five-seveN"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "5.7mm self loading pistol, designed as a handgun counterpart to the "
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.7mm PDW"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1989

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
    SWEP.Trivia_Calibre = "5.7x28mm FN"
    SWEP.Trivia_Country = "Belgium"
    SWEP.Trivia_Desc = SWEP.Trivia_Desc .. "P90."
else
    SWEP.Trivia_Desc = SWEP.Trivia_Desc .. "PDW-57. 'NXS' stands for 'New eXperimental Sidearm'."
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_nxs.mdl"
SWEP.WorldModel = "models/weapons/w_pist_fiveseven.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 25
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 35
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.2
SWEP.VisualRecoilMult = 1
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 75

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "sp40" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/fiveseven/fiveseven-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/fiveseven/fiveseven-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_ak74"
SWEP.ShellModel = "models/shells/shell_57.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.9

SWEP.BarrelLength = 18

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.02, -9.155, 2.973),
    Ang = Angle(-0.456, 0.03, 0),
    Magnification = 1.1,
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

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "v_weapon.FIVESEVEN_PARENT",
                Offset = {
                    pos = Vector(0, 2, -0.35),
                    ang = Angle(-90, 0, -90)
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
    }
}
-- ["name"] = {ind = 1, bg = 1}
-- same as ACT3

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.FIVESEVEN_SLIDE", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0.639, -0.491), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 180),
            wpos = Vector(4.129, 1.476, -4.116),
            wang = Angle(-2.829, -4.902, 180)
        },
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.FIVESEVEN_PARENT",
        Offset = {
            vpos = Vector(0, -2.942, -9.121),
            vang = Angle(-90, 0, -90),
            wpos = Vector(10.329, 2.075, -3.928),
            wang = Angle(0, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "v_weapon.FIVESEVEN_PARENT",
        Offset = {
            vpos = Vector(0, -1.9, -5),
            vang = Angle(-90, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "v_weapon.FIVESEVEN_PARENT",
        Offset = {
            vpos = Vector(0, -2, -8), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(9.3, 1.9, -2.664),
            wang = Angle(0, -4.211, 180)
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
        Bone = "v_weapon.FIVESEVEN_PARENT", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.3, -2.75, -7.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(9, 2.25, -3.75),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/fiveseven/fiveseven_draw.wav",
            t = 0
            }
        },
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/fiveseven/fiveseven_draw.wav",
            t = 0
            }
        },
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot_1", "shoot_2"},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_empty",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {20, 26, 40, 60},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {20, 26, 40, 60, 80},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}