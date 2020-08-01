SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = true
SWEP.PrintName = "Minigun"
SWEP.TrueName = "M134"
SWEP.Trivia_Class = "Rotary Machine Gun"
SWEP.Trivia_Desc = "A heavy machine gun capable of firing at an extremely fast fire rate due to its electric fire control system. The ultimate weapon. Carrying it will reduce your movement speed to a halt, and you can forget about sprinting with it. In return, up to 2400 RPM of 7.62 Real Fuckin' NATO is in your hands, if you can control them. Wield it with care."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Electronic Trigger"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1957

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "General Electric"
end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/c_minigun.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_minigun.mdl"
SWEP.ViewModelFOV = 60
SWEP.DefaultBodygroups = "0000000"

SWEP.Damage = 65
SWEP.DamageMin = 29 -- damage done at maximum range
SWEP.Range = 250 -- in METRES
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1800 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3
SWEP.ChamberSize = 0 -- how many rounds can be chambered.

SWEP.Primary.ClipSize = 350 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 600
SWEP.ReducedClipSize = 100

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.75
SWEP.Delay = 60 / 2400 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.BobMult = 2

SWEP.Firemodes = {
    {
        Mode = 2,
        PrintName = "2400RPM"
    },
    {
        Mode = 2,
        Mult_RPM = 1200 / 2400,
        PrintName = "1200RPM"
    },
    {
        Mode = 2,
        Mult_RPM = 600 / 2400,
        PrintName = "600RPM"
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_shotgun"}
SWEP.NPCWeight = 1

SWEP.AccuracyMOA = 50 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "minigun" -- the magazine pool this gun draws from
SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "weapons/arccw/minigun/minigun.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/negev/negev-1-distant.wav" --weapons/arccw/m249/m249-1-distant.wav

SWEP.MuzzleEffect = "muzzleflash_minimi"

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 2.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.SpeedMult = 0.5
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 1

SWEP.IronSightStruct = {
    Pos = Vector(0, -5, -2),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    CrosshairInSights = true
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, -4)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(12, -3, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(3, -6, -16)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(5, 0, -10)
SWEP.BarrelOffsetHip = Vector(4, 0, -6)

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

SWEP.ShellRotateAngle = Angle(0, -90, 0)

SWEP.ExtraSightDist = 8

SWEP.Attachments = {
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
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
    ["fire"] = {
        Source = {"fire_1", "fire_2", "fire_3"},
        Time = 0.2,
        ShellEjectAt = 0
    },
    ["reload"] = {
        Source = "reload",
        Time = 4,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 60, 80, 145, 170},
        FrameRate = 30,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
}

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