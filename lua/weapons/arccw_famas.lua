SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "CANIN C6"
SWEP.TrueName = "FAMAS"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Bullpup 3 round burst assault rifle. Reliable, well-rounded option for medium to long range battle."
SWEP.Trivia_Manufacturer = "Arsenal Nationale"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "France"
SWEP.Trivia_Year = 1971

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_canin.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_canin.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "0"

SWEP.Damage = 36
SWEP.DamageMin = 25 -- damage done at maximum range
SWEP.Range = 130 -- in METRES
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.75

SWEP.Delay = 60 / 800 -- 60 / RPM.
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

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "stanag" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/famas/famas-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/famas/famas_distant_01.wav"

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.94
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.33

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.237, -8.547, 0.903),
    Ang = Angle(0.657, -0.143, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
}

SWEP.ExtraSightDist = 3

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.famas", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.1, -4.757, 15.404), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(4.762, 0.832, -8.402),
            wang = Angle(-10.393, 0, 180)
        },
        CorrectiveAng = Angle(-0.26, 0, 0)
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.famas", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.1, -4.2, 20), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(4.762, 0.832, -8.402),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.famas",
        Offset = {
            vpos = Vector(0.1, -0.75, 27.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(16.791, 0.847, -6.461),
            wang = Angle(-10.393, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.famas",
        Offset = {
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, 0.75, 16),
            vmax = Vector(0, 0.75, 23),
            wmin = Vector(4.762, 0.832, -6.402),
            wmax = Vector(9.09, 0.832, -7.179),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.famas",
        Offset = {
            vpos = Vector(0.1, -4.757, 15.404), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
            wpos = Vector(15.625, -0.253, -6.298),
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
        Bone = "v_weapon.famas",
        Offset = {
            vpos = Vector(0.5, -4.286, 10), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(12, 2.5, -4),
            wang = Angle(0, -4.211, 180)
        },
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.6,
        SoundTable = {{s = "weapons/arccw/m4a1/m4a1_draw.wav", t = 0}},
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
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {16, 30},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_full",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {16, 30, 55},
        FrameRate = 27,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}