SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Competitor"
SWEP.TrueName = "G2 Contender"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Break action pistol in a full-sized rifle round. Offers incredible power, but at the cost of poor range due to an insufficiently sized barrel for the cartridge."
SWEP.Trivia_Manufacturer = "Jonathan/Kruger"
SWEP.Trivia_Calibre = ".308 Winchester"
SWEP.Trivia_Mechanism = "Break-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1967

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Thompson/Center"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_contender.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_contender.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 105
SWEP.DamageMin = 50 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 2000 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Recoil = 3
SWEP.RecoilSide = 0.85

SWEP.Delay = 60 / 90 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "SNGL",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 50

SWEP.ManualAction = false

SWEP.AccuracyMOA = 0.3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "contender" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 110 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/g2contender/scout-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/ssg08/ssg08-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.7

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.01, 5, 0.38),
    Ang = Angle(-0.5, 0, 0),
    Magnification = 1.2,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW

SWEP.ActivePos = Vector(1, 12, -2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3.5, 6, -2)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 20
SWEP.AttachmentElements = {
}

SWEP.ExtraSightDist = 5

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetBuff_Mult("Mult_ReloadTime") > 0.9 then return end

    if anim == "reload_empty" then return "reload_empty_fast" end
end

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Front", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1, -2, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(8, 0.739, -5.2),
            wang = Angle(-10, 0, 180)
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Front",
        Offset = {
            vpos = Vector(15, -1.3, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(23, 0.8, -7.25),
            wang = Angle(-10, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "style_pistol"},
        Bone = "Front",
        Offset = {
            vpos = Vector(2, 0.25, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(10, 1.84, -3.138),
            wang = Angle(-10, -3.3, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Front",
        Offset = {
            vpos = Vector(3, -0.75, 0.75), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 180),
            wpos = Vector(10.625, 0.053, -4.298),
            wang = Angle(-10, -0.556, 90)
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
        Bone = "Gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.5, -0.5, -0.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(6, 1.2, -3),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 1,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.7,
    },
    ["fire"] = {
        Source = "shoot",
        Time = 0.6,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_fast"] = {
        Source = "reload_fast",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    }
}