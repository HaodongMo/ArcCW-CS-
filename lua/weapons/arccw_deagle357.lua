SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Millennium Hawk"
SWEP.TrueName = "Desert Eagle .357"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = ".357 Magnum heavy automatic pistol, designed for self-defense against large wild animals such as grizzly bears. A rotating-bolt gas-operated design makes it able to handle the huge round, resembling an assault rifle more than a handgun. Lighter, higher-capacity version of the Century Eagle."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = ".357 Magnum"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA/Israel"
SWEP.Trivia_Year = 1991

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Israeli Military Industries"
end

SWEP.ViewModel = "models/weapons/arccw/c_gce.mdl"
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"

SWEP.DefaultSkin = 0

SWEP.Damage = 55
SWEP.DamageMin = 35 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 500 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 9 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 15
SWEP.ReducedClipSize = 7

SWEP.Recoil = 3
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = 2

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "gce" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 105 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/deagle/deagle_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/deagle/deagle-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2
SWEP.ShellPitch = 90

SWEP.Delay = 60 / 500 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 75

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.225

SWEP.SpeedMult = 0.975
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
    Pos = Vector(-6.356, -9.935, 2.066),
    Ang = Angle(0.416, -0.015, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2, -7.145, -11.561)
SWEP.HolsterAng = Angle(36.533, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 15

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "v_weapon.Deagle_Parent",
                Offset = {
                    pos = Vector(0.1, 2, -0.35),
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

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.Deagle_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.032, -4.529, -3.604), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(8.873, 1.927, -4.648),
            wang = Angle(0, -4.211, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0.032, -4.529, -3.604),
            vmax = Vector(0.032, -4.529, -6.109),
            wmin = Vector(8.873, 1.927, -4.648),
            wmax = Vector(10.869, 2.089, -4.648),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.Deagle_Parent",
        Offset = {
            vpos = Vector(0.029, -4.269, -7.755),
            vang = Angle(-90, 0, -90),
            wpos = Vector(12.829, 2.275, -4.428),
            wang = Angle(0, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "v_weapon.Deagle_Parent",
        Offset = {
            vpos = Vector(-0.087, -2.287, -1.505),
            vang = Angle(-90, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "v_weapon.Deagle_Parent",
        Offset = {
            vpos = Vector(0.03, -2.774, -3.579), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(11.711, 2.187, -3.064),
            wang = Angle(0, -4.211, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0.03, -2.774, -3.579),
            vmax = Vector(0.03, -2.774, -6.196),
            wmin = Vector(8.873, 1.927, -3.029),
            wmax = Vector(9.406, 2.003, -3.029),
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
        Bone = "v_weapon.Deagle_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.5, -3.5, -6.75), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(12, 2.5, -4),
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
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        }
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        }
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 39, 47},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.9,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 39, 47},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.9,
    },
}