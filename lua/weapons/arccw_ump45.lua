SWEP.Base = "arccw_ump9"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "MP-S2"
SWEP.TrueName = "UMP-45"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = ".45 calibre version of the MP-K1. Packs a greater punch at short range, but has a worse fire rate."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1977

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    string.Replace(SWEP.Trivia_Desc, "MP-K1", "UMP-9")
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
    SWEP.Trivia_Country = "Germany"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mps2.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_mps2.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 33
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.Range = 75 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 300 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 12

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.OpenBolt = false -- gun fires at the end of 

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.2
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mpk1" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/ump45/ump45_04.wav"
SWEP.ShootSound = "weapons/arccw/ump45/ump45_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/ump45/ump45-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.75

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 200