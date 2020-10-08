SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "MP-K1"
SWEP.TrueName = "UMP-9"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1968

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mpk1.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_mpk1.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 26
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 65 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 15

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.OpenBolt = false -- gun fires at the end of 

SWEP.Recoil = 0.35
SWEP.RecoilSide = 0.2
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 850 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -2,
        RunawayBurst = true,
        Override_ShotRecoilTable = {
            [1] = 0.75
        }
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mpk1" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/mp7/mp7_02.wav"
SWEP.ShootSound = "weapons/arccw/mp7/mp7_04.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"
SWEP.DistantShootSound = "weapons/arccw/mp7/mp7-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.25

SWEP.SpeedMult = 0.97
SWEP.SightedSpeedMult = 0.75

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-8.728, -13.702, 4.014),
    Ang = Angle(-1.397, -0.341, -2.602),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    AnchorBone = "v_weapon.ump45_Parent"
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(-2, -4, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentBodygroups = {}
-- ["name"] = {ind = 1, bg = 1}
-- same as ACT3

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {},
    },
    ["nors"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {},
    },
    ["nofg"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {},
    }
}

SWEP.ExtraSightDist = 2

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.ump45_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.373, -8.193, -1.633), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -88.032),
            wpos = Vector(4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0.373, -8.393, -0.520),
            vmax = Vector(0.373, -8.393, -3.937),
            wmin = Vector(4.762, 0.832, -6.402),
            wmax = Vector(9.09, 0.832, -7.179),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.ump45_Parent",
        Offset = {
            vpos = Vector(0.156, -5.908, -16.004),
            vang = Angle(-90, 0, -90),
            wpos = Vector(16.791, 0.847, -6.461),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "style_pistol"},
        Bone = "v_weapon.ump45_Parent",
        Offset = {
            vpos = Vector(0, -5, -10),
            vang = Angle(-90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nofg"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.ump45_Parent",
        Offset = {
            vpos = Vector(-0.461, -5.827, -12.068), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 0),
            wpos = Vector(13.152, 1.386, -5.566),
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
        Bone = "v_weapon.ump45_Parent",
        Offset = {
            vpos = Vector(-0.3, -6.25, 1), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(4, 1.5, -4.5),
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
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/ump45/ump45_draw.wav",
            t = 0
            }
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/ump45/ump45_draw.wav",
            t = 0
            }
        }
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.25,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 0.25,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.25,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_empty",
        Time = 0.25,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {37},
        FrameRate = 33,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {37, 85},
        FrameRate = 33,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}