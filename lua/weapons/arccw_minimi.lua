SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "M2000-G"
SWEP.TrueName = "Minimi Para"
SWEP.Trivia_Class = "Machine Gun"
SWEP.Trivia_Desc = "Air-cooled, belt-fed fully automatic squad assault weapon. Capable of laying down sustained suppressive fire. Depleting a belt fully negates the need to remove it before inserting a new one, meaning that reloading when the weapon is totally empty is actually faster."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Actuated Open Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1984

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_m2000g.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_m2000g.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000000"
SWEP.DefaultWMBodygroups = "00000000"

SWEP.Damage = 36
SWEP.DamageMin = 23 -- damage done at maximum range
SWEP.Range = 145 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 900 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 100 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 150
SWEP.ReducedClipSize = 40

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.15
SWEP.RecoilRise = 0.75

SWEP.Delay = 60 / 700 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_shotgun"}
SWEP.NPCWeight = 25

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "m200b" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/negev/negev-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/negev/negev-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_minimi"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.65
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.5

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [10] = "v_weapon.bullet1",
    [9] = "v_weapon.bullet2",
    [8] = "v_weapon.bullet3",
    [7] = "v_weapon.bullet4",
    [6] = "v_weapon.bullet5",
    [5] = "v_weapon.bullet6",
    [4] = "v_weapon.bullet7",
    [3] = "v_weapon.bullet8",
    [2] = "v_weapon.bullet9",
    [1] = "v_weapon.bullet10",
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-5.942, -4.693, 2.341),
    Ang = Angle(0, 0, 0),
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
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 3, bg = 1},
            {ind = 4, bg = 1}
        },
        WMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 2, bg = 1},
        },
    },
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 2},},
    }
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() != wep.ReducedClipSize then return end

    if anim == "reload" then
        return "reload_para"
    elseif anim == "reload_empty" then
        return "reload_para_empty"
    end
end

SWEP.ExtraSightDist = 2

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.receiver", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-7.421, 0.07, -0.223), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -177.76),
            wpos = Vector(5.36, 0.9, -7.4),
            wang = Angle(-9.738, -1, 180)
        },
        InstalledEles = {"nors"},
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "backup", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.m249", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.115, -2.5, 16),
            vang = Angle(90, 0, -90),
            wpos = Vector(29, 0.825, -10.6),
            wang = Angle(-9.738, -1, 180)
        },
        KeepBaseIrons = true,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.m249",
        Offset = {
            vpos = Vector(0.115, -1.346, 29.485),
            vang = Angle(90, 0, -90),
            wpos = Vector(29, 0.825, -10.6),
            wang = Angle(-9.738, -1, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "v_weapon.m249",
        Offset = {
            vpos = Vector(0, 1.667, 14.738),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.m249",
        Offset = {
            vpos = Vector(0.75, 0, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
            wpos = Vector(17, 2, -7),
            wang = Angle(-10.393, 0, -90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
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
        Bone = "v_weapon.m249",
        Offset = {
            vpos = Vector(0.75, -1, 3), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(9, 1.5, -4.5),
            wang = Angle(0, -4.211, 180)
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
        Time = 1,
        SoundTable = {{s = "weapons/arccw/m249/m249_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 2,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "shoot",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {30, 56, 107, 142, 169},
        FrameRate = 30,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {23, 51, 79, 106, 134},
        FrameRate = 30,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_para"] = {
        Source = "reload_para",
        Time = 3.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {31, 73, 110},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_para_empty"] = {
        Source = "reload_para_empty",
        Time = 4,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {31, 73, 110},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}