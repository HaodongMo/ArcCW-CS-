SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "PM(t) Klassika"
SWEP.TrueName = "Makarov"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Soviet self-loading pistol. Incredibly widespread in Ex-Soviet areas. Distributed to military officers and police units. Low damage, but low recoil and fast to reload."
SWEP.Trivia_Manufacturer = "Kremen Oruzhiye"
SWEP.Trivia_Calibre = "9x18mm Soviet"
SWEP.Trivia_Mechanism = "Recoil-Operated"
SWEP.Trivia_Country = "USSR"
SWEP.Trivia_Year = 1951

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Izhevsk Mechanical Plant"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_pmt.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_pmt.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 23
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 16
SWEP.ReducedClipSize = 4

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 2
SWEP.VisualRecoilMult = 1

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
SWEP.NPCWeight = 200

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "pmt" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/hkp2000/hkp2000-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/hkp2000/hkp2000-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.45

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
    Pos = Vector(-2.618, 0, 1.172),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(1, 4, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 2, -11.561)
SWEP.HolsterAng = Angle(36.533, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "Weapon_Main",
                Offset = {
                    pos = Vector(-0.05, 2, 0.25),
                    ang = Angle(90, 0, -90),
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
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Bolt", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -0.7, 1.1), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(3, 0.7, -3),
            wang = Angle(-10, 0, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -2.6, 7.599),
            vang = Angle(90, 0, -90),
            wpos = Vector(8.25, 0.7, -3.528),
            wang = Angle(-10, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.1, -1.358, 5.026),
            vang = Angle(90, 0, -90),
            wpos = Vector(7.238, 0.7, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -1.8, 6.6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(8, 0.7, -2.764),
            wang = Angle(-10, 0, 180)
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
        Bone = "Weapon_Bolt", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.4, 0, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(7.5, 1, -3.5),
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
        Source = "fire_empty",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_empty",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {23, 50, 70},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.3,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {23, 50, 70},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.3,
    },
}