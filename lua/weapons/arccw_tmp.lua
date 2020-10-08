SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "MPC-9"
SWEP.TrueName = "MP9"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "A machine pistol with extremely high fire rate. In order to control this, it has been limited to three-round burst mode."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1992

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_tmp.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_tmp.mdl"
SWEP.ViewModelFOV = 55

SWEP.Damage = 25
SWEP.DamageMin = 9 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 24 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 12

SWEP.Recoil = 0.33
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.9

SWEP.Delay = 60 / 1200 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = -3,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "tmp" -- the magazine pool this gun draws from

SWEP.ShootVol = 90 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/tec9/tec9_02.wav"
SWEP.ShootSound = "weapons/arccw/tec9/tec9-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"
SWEP.DistantShootSound = "weapons/arccw/mp9/mp9-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.9

SWEP.BarrelLength = 24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.975, -6, 2.9),
    Ang = Angle(0.6, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(-0.5, 0, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["nofg"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "v_weapon.TMP_Parent",
                Offset = {
                    pos = Vector(0, 1.5, 4),
                    ang = Angle(-90, 0, -90),
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(3, 1, 3),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.ExtraSightDist = 12

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.TMP_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(-90, 0, -90),
            wpos = Vector(5.36, 0.739, -6.801),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0, -4.6, -1.5),
            vmax = Vector(0, -4.6, 3),
            wmin = Vector(5.36, 0.889, -5.301),
            wmax = Vector(5.36, 0.889, -5.301),
        }
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.TMP_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4.6, -3),
            vang = Angle(-90, 0, -90),
            wpos = Vector(5.36, 0.739, -6.801),
            wang = Angle(-9.738, 0, 180)
        },
        KeepBaseIrons = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.TMP_Parent",
        Offset = {
            vpos = Vector(0, -3.35, -6),
            vang = Angle(-90, 0, -90),
            wpos = Vector(12, 0.847, -4.761),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "v_weapon.TMP_Parent",
        Offset = {
            vpos = Vector(0, -2, -3),
            vang = Angle(-90, 0, -90),
            wpos = Vector(10, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nofg"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.TMP_Parent",
        Offset = {
            vpos = Vector(-0.4, -3, -4), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, -0.4, 0),
            wpos = Vector(8.152, 1.386, -4.666),
            wang = Angle(-10.393, 0, -90)
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
        Bone = "v_weapon.TMP_Parent",
        Offset = {
            vpos = Vector(-0.5, -3.75, 4.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(1, 1.5, -3),
            wang = Angle(0, -4.211, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle1",
        Time = 3,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
    },
    ["fire"] = {
        Source = "fire3",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "idle1",
        Time = 0.25,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.25,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}