SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "PSRS"
SWEP.TrueName = "Scout"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "The Precision Sharpshooter Rifle System is a high-spec bolt-action rifle, tailored to the needs of Police snipers. It is also marketed to civilian competition shooters."
SWEP.Trivia_Manufacturer = "First Strike Tactical"
SWEP.Trivia_Calibre = ".308 Winchester"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1991

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Steyr Mannlicher"
    SWEP.Trivia_Country = "Austria"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_psrs.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_psrs.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 70
SWEP.DamageMin = 100 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 15
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 2500 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 10 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 15
SWEP.ReducedClipSize = 5

SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.85

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "BOLT",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 50

SWEP.ManualAction = true

SWEP.AccuracyMOA = 0.25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "psrs" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/ssg08/ssg08_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/ssg08/ssg08-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.90
SWEP.SightedSpeedMult = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.664, -10.915, 3.907),
    Ang = Angle(0.342, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 35
SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.scout_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(-90, 0, -90),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(-0.03, -4.086, -8.928),
            vmax = Vector(-0.03, -4.086, -14.885),
            wmin = Vector(10, 0.699, -5.801),
            wmax = Vector(18, 0.699, -7.301),
        },
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.scout_Parent",
        Offset = {
            vpos = Vector(0, -3.4, -27),
            vang = Angle(-90, 0, -90),
            wpos = Vector(32, 0.699, -8.832),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.scout_Parent",
        Offset = {
            vang = Angle(-90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
        },
        SlideAmount = {
            vmin = Vector(0, -1.75, -10),
            vmax = Vector(0, -1.75, -15),
            wmin = Vector(20.26, 0.699, -5.401),
            wmax = Vector(20.26, 0.699, -5.401),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.scout_Parent",
        Offset = {
            vpos = Vector(0.5, -3.25, -15), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 180),
            wpos = Vector(19.625, 0.053, -6.298),
            wang = Angle(-8.829, -0.556, 90)
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
        Bone = "v_weapon.scout_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.5, -2.5, -6), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(6.099, 1.1, -3.301),
            wang = Angle(171.817, 180-1.17, 0),
        },
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "shoot",
        Time = 1,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1,
        ShellEjectAt = 0.35,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}