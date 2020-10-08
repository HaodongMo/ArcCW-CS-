SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Target 2/22"
SWEP.TrueName = "Mk. 2"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "A small caliber plinking weapon. Its cartridge is hardly lethal, but sports high precision and minimal recoil."
SWEP.Trivia_Manufacturer = "ArmStrike USA"
SWEP.Trivia_Calibre = ".22 LR"
SWEP.Trivia_Mechanism = "Blowback"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = 2004

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Sturm, Ruger & Company"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ruger_new.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_ruger.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 15
SWEP.DamageMin = 5 -- damage done at maximum range
SWEP.Range = 25 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 200 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 12 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 8

SWEP.Recoil = 0.25
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.3

SWEP.Delay = 60 / 700 -- 60 / RPM.
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
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "ruger" -- the magazine pool this gun draws from

SWEP.ShootVol = 90 -- volume of shoot sound
SWEP.ShootPitch = 105 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/ruger/ruger-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "" --"weapons/arccw/hkp2000/hkp2000-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.12

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.85

SWEP.BarrelLength = 12

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.8, -1, 1.789),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 4, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(8, 3, -4)

SWEP.HolsterPos = Vector(0, 2, -4)
SWEP.HolsterAng = Angle(-5, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "smdimport",
                Offset = {
                    pos = Vector(0, -2, -2.5),
                    ang = Angle(0, -90, 0),
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

SWEP.ExtraSightDist = 7

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "smdimport", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -1.5, 1.1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(4.129, 1.476, -3.516),
            wang = Angle(-2.829, -4.902, 180)
        },
        InstalledEles = {"nors"},
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "smdimport",
        Offset = {
            vpos = Vector(0, 8.5, 0.8),
            vang = Angle(0, -90, 0),
            wpos = Vector(13.629, 2.375, -3.428),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "smdimport",
        Offset = {
            vpos = Vector(0, 5, 0),
            vang = Angle(0, -90, 0),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "smdimport",
        Offset = {
            vpos = Vector(-0.2, 6, 0.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, -90),
            wpos = Vector(11.711, 2.2, -3.064),
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
        Bone = "smdimport",
        Offset = {
            vpos = Vector(0.4, 4, 0.75), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(11, 2.5, -3.25),
            wang = Angle(0, -4.211, 180)
        },
        VMScale = Vector(0.5, 0.5, 0.5),
        WMScale = Vector(0.5, 0.5, 0.5)
    },
}

SWEP.Animations = {
    ["bash"] = {
        Source = "bash",
        Time = 0.7
    },
    ["bash_empty"] = {
        Source = "bash_empty",
        Time = 0.7
    },
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5
    },
    ["ready"] = {
        Source = "ready",
        Time = 1
    },
    ["fire"] = {
        Source = "shoot1",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_empty",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {13, 39, 59},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {13, 39},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
}


sound.Add({
    name = "Weapon_Ruger.Clipout",
    channel = CHAN_ITEM,
    volumel = 1.0,
    sound = "weapons/arccw/ruger/ruger_clipout.wav"
})

sound.Add({
    name = "Weapon_Ruger.Clipin",
    channel = CHAN_ITEM,
    volumel = 1.0,
    sound = "weapons/arccw/ruger/ruger_clipin.wav"
})

sound.Add({
    name = "Weapon_Ruger.Slidepull",
    channel = CHAN_ITEM,
    volumel = 1.0,
    sound = "weapons/arccw/ruger/ruger_slidepull.wav"
})

sound.Add({
    name = "Weapon_Ruger.Sliderelease",
    channel = CHAN_ITEM,
    volumel = 1.0,
    sound = "weapons/arccw/ruger/ruger_sliderelease.wav"
})