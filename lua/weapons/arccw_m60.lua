SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false
SWEP.PrintName = "Avenger MG-06"
SWEP.TrueName = "M60"
SWEP.Trivia_Class = "Machine Gun"
SWEP.Trivia_Desc = "General purpose machine gun firing full length cartridges. Nicknamed \"The Pig\" for its bulky shape, it is nevertheless a capable beast, and a favorite among action heroes."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Gas-Actuated Open Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1957

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Saco Defense"
end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/c_m60.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_m60.mdl"
SWEP.ViewModelFOV = 60
SWEP.DefaultBodygroups = "0000000"

SWEP.Damage = 50
SWEP.DamageMin = 29 -- damage done at maximum range
SWEP.Range = 250 -- in METRES
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1800 -- projectile or phys bullet muzzle velocity
-- IN M/S


SWEP.ChamberSize = 0 -- how many rounds can be chambered.

SWEP.Primary.ClipSize = 80 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 110
SWEP.ReducedClipSize = 35

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 0.8
SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 2
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_shotgun"}
SWEP.NPCWeight = 50

SWEP.AccuracyMOA = 12 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "m60" -- the magazine pool this gun draws from
SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 90 -- pitch of shoot sound
SWEP.ShootSound = "weapons/arccw/negev/negev_03.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/negev/negev-1-distant.wav" --weapons/arccw/m249/m249-1-distant.wav

SWEP.MuzzleEffect = "muzzleflash_minimi"

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 2.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.SpeedMult = 0.6
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.55

-- the bone that represents bullets in gun/mag
SWEP.BulletBones = {
    [1] = "Magazine.Bullets.1",
    [2] = "Magazine.Bullets.2",
    [3] = "Magazine.Bullets.3",
    [4] = "Magazine.Bullets.4",
    [5] = "Magazine.Bullets.5",
    [6] = "Magazine.Bullets"
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-8.771, -4, 4.75),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "" -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(12, -3, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 34

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
        VMBodygroups = {
            {ind = 2, bg = 1},
            {ind = 3, bg = 1},
        },
    },
    ["nobrake"] = {
        VMBodygroups = {
            {ind = 6, bg = 1},
        },
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "M60.Cover",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, 4, 0.65),
                    ang = Angle(0, 90, 0)
                }
            }
        },
    }
}
SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() == wep.ReducedClipSize then return anim .. "_small" end
end

SWEP.ShellRotateAngle = Angle(0, -90, 0)

SWEP.ExtraSightDist = 8

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "M60.Cover", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 4, 0.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 0),
            wpos = Vector(3.5, 2, -7.101),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"nors", "mount"},
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "M60.Body",
        Offset = {
            vpos = Vector(0, -21, 1.9),
            vang = Angle(0, 90, 0),
            wpos = Vector(33.5, 1.5, -8.3),
            wang = Angle(-6, 0, 180)
        },
        InstalledEles = {"nobrake"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "M60.Body",
        Offset = {
            vpos = Vector(0, 0, -1),
            vang = Angle(0, 90, 0),
            wpos = Vector(14.329, 1.5, -3.453),
            wang = Angle(-6, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "M60.Body",
        Offset = {
            vpos = Vector(-1, -5, 1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 90),
            wpos = Vector(12, 0.5, -5),
            wang = Angle(-6, 0, 90)
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
        Bone = "M60.Body", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.25, 2, 1),
            vang = Angle(0, 90, 0),
            wpos = Vector(11, 2.4, -3.75),
            wang = Angle(-6, 0, 180)
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
        SoundTable = {
            {
                s = "weapons/arccw/m249/m249_draw.wav",
                t = 0
            }
        },
        Time = 1.5
    },
    ["ready"] = {
        Source = "deploy",
        Time = 2.5
    },
    ["fire"] = {
        Source = {"fire1"},
        Time = 1,
        ShellEjectAt = 0
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 1,
        ShellEjectAt = 0
    },
    ["reload"] = {
        Source = "reload",
        Time = 7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 60, 80, 145, 170},
        FrameRate = 30,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {23, 51, 79, 106, 134},
        FrameRate = 30,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_small"] = {
        Source = "reload_small",
        Time = 7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 60, 80, 145, 170},
        FrameRate = 30,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_empty_small"] = {
        Source = "reload_empty_small",
        Time = 6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {23, 51, 79, 106, 134},
        FrameRate = 30,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    }
}

sound.Add({
    name = "Weapon_M60.Single",
    channel = CHAN_USER_BASE + 10,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60-1.wav"
})

sound.Add({
    name = "Weapon_M60.Coverup",
    channel = CHAN_ITEM,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60_coverup.mp3"
})

sound.Add({
    name = "Weapon_M60.Boxout",
    channel = CHAN_ITEM,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60_boxout.mp3"
})

sound.Add({
    name = "Weapon_M60.Boxin",
    channel = CHAN_ITEM,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60_boxin.mp3"
})

sound.Add({
    name = "Weapon_M60.Chain",
    channel = CHAN_ITEM,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60_chain.mp3"
})

sound.Add({
    name = "Weapon_M60.Coverdown",
    channel = CHAN_ITEM,
    volume = 1.0,
    sound = "weapons/arccw/m60/m60_coverdown.mp3"
})

sound.Add({
    name = "Weapon_M60.Bolt",
    channel = CHAN_ITEM,
    volumel = 1.0,
    pitch = 90,
    sound = "weapons/arccw/m249/m249_pump.wav"
})