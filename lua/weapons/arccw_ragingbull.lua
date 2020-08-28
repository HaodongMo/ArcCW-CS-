SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Firearms" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Fury Magnum"
SWEP.TrueName = "Raging Bull"
SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = "Popular, reliable double-action revolver, able to switch to single-action for improved precision. While semi-automatics may hold more rounds and be no less reliable, a cylinder full of magnum rounds is still an intimidating sight. Did you fire six shots, or only five?"
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = ".44 Magnum"
SWEP.Trivia_Mechanism = "Double/Single Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1997

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Taurus International"
end


SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ragingbull_new.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_ragingbull.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultSkin = 1

SWEP.Damage = 75
SWEP.DamageMin = 45 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 4

SWEP.Recoil = 2.5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1.8
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 180 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "DACT",
        Mode = 1,
    },
    {
        PrintName = "SACT",
        Mode = 1,
        Override_ManualAction = true,
        Mult_AccuracyMOA = 0.3,
        Mult_HipDispersion = 0.7,
        Mult_RPM = 1 / 3,
    }
}

SWEP.NPCWeaponType = {"weapon_pistol", "weapon_357"}
SWEP.NPCWeight = 75

SWEP.AccuracyMOA = 7 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "ragingbull" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/revolver/revolver-1_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/revolver/revolver-1_distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 0 -- which attachment to put the case effect on

SWEP.RevolverReload = true

SWEP.SightTime = 0.28

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.BulletBones = {
    [1] = "1lead",
    [2] = "2lead",
    [3] = "3lead",
    [4] = "4lead",
    [5] = "5lead",
    [6] = "6lead",
}

SWEP.CaseBones = {
    [1] = "1",
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
}


SWEP.IronSightStruct = {
    Pos = Vector(-2.141, 0, -0.601),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(1, 4, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, 3, -5)

SWEP.HolsterPos = Vector(2, 0, -10)
SWEP.HolsterAng = Angle(45, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, 3.5, 4),
                    ang = Angle(-90, 0, -90),
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(2, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0.032, -4.029, -3.604),
            vang = Angle(-90, 0, -90),
            wpos = Vector(8.873, 1.927, -4.648),
            wang = Angle(0, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0.032, -2, -2),
            vmax = Vector(0.032, -2, -6),
            wmin = Vector(9, 1, -4.648),
            wmax = Vector(12, 1, -4.648),
        },
        CorrectiveAng = nil --Angle(90, 0, -90)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -1.4, -9.5),
            vang = Angle(-90, 0, -90),
            wpos = Vector(15.2, 1, -4.3),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.5, -6),
            vang = Angle(-90, 0, -90),
            wpos = Vector(11, 1, -3.4),
            wang = Angle(180, 0, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.5, -10.5),
            vang = Angle(-90, 0, -90),
            wpos = Vector(15, 1, -3.4),
            wang = Angle(0, 0, 180)
        }
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
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
    },
    {
        PrintName = "Perk",
        Slot = {"perk", "perk_revolver"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.2, -1.25, -4.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(10, 1.25, -4),
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

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCurrentFiremode().Override_ManualAction then
        return "reload_sact"
    end
end

--[[ Insert into sh_attach, line 100
if buff != "Override_Firemodes" then -- GetCurrentFiremode() calls ourselves. Don't cause infinite recursion!
    local cfm = self:GetCurrentFiremode()

    if cfm[buff] and level == 0 or (cfm[buff .. "_Priority"] and cfm[buff .. "_Priority"] > level) then
        current = cfm[buff]
        level = cfm[buff .. "_Priority"] or 1
        winningslot = -1 -- ???
    end
end
]]

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
        SoundTable = {
            {
            s = "weapons/arccw/usp/usp_draw.wav",
            t = 0
            }
        }
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.4,
        SoundTable = {
            {
            s = "weapons/arccw/ragingbull/draw.mp3",
            t = 0
            }
        }
    },
    ["fire"] = {
        Source = "shoot",
        Time = 1
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.7
    },
    ["reload"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        LastClip1OutTime = 1,
    },
    ["reload_sact"] = {
        Source = "reload_sact",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        LastClip1OutTime = 1,
    },
    ["bash"] = {
        Source = "bash",
        Time = 0.8
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 0.8,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
    ["1_to_2"] = {
        Source = "cycle",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
    ["2_to_1"] = {
        Source = "uncycle",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
}