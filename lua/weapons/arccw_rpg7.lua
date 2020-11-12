SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "RPG"
SWEP.TrueName = "RPG-7"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "A rocket launcher with 4 different payload options; HE, HEAT, Tandem, and Smoke. HE rockets have high splash but low immediate damage. HEAT rounds have good damage and splash. Tandem rounds have very little splash, but massive damage. Smoke rounds do no damage, but create an obscuring smokescreen."
SWEP.Trivia_Manufacturer = "Kremen Oruzhiye"
SWEP.Trivia_Calibre = "64mm Rocket"
SWEP.Trivia_Mechanism = "Single-Action"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 1961

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Degtyarev Plant"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_rpg7.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_rpg7.mdl"
SWEP.ViewModelFOV = 60

SWEP.ShootEntity = "arccw_rpg7_heat" -- entity to fire, if any
SWEP.MuzzleVelocity = 100000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Recoil = 2
SWEP.RecoilSide = 0.175
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_rpg"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "RPG_Round" -- what ammo type the gun uses
SWEP.MagID = "rpg7" -- the magazine pool this gun draws from

SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/rpg7/rpg7_fp.wav"
SWEP.DistantShootSound = "weapons/arccw/rpg7/rpg7_dist.wav"

SWEP.MuzzleEffect = "muzzleflash_m79"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on

SWEP.SightTime = 0.35

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.29, 5, -1),
    Ang = Angle(1.5, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(1, 12, -2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 4, -14)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 15

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["nogrip"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ammo_rpg7_he"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["ammo_rpg7_smoke"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["ammo_rpg7_tandem"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -3, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(9.36, 0, -5.301),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -1, 6),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nogrip"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.75, -2, 2),
            vang = Angle(90, 0, 0),
            wpos = Vector(25.625, -0.253, -8.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "HEAT",
        Slot = "ammo_rpg7_rocket"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.9, -2, 4), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(11, 1.25, -4.5),
            wang = Angle(0, -4.211, 180)
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
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 1.5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1.5,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.5,
    },
    ["reload"] = {
        Source = "reload",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {20, 26, 40},
        FrameRate = 30,
        LHIK = false,
    },
}