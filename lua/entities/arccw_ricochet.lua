AddCSLuaFile()

-- Ugly way to get around some engine limitations
ENT.PrintName = "Ricochet"
ENT.Spawnable = false
ENT.Type = "anim"


if CLIENT then
    function ENT:Draw()

    end
    return
end

function ENT:Initialize()
    self:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
    self:DrawShadow(false)
    self:SetNoDraw(true)
end

function ENT:Think()
    if self.FireTime < CurTime() then
        self:FireBullets({
            Attacker = self.Owner,
            Damage = self.Damage,
            Force = 0,
            Distance = 2000,
            Num = 1,
            Tracer = 1,
            TracerName = "AR2Tracer",
            Dir = self.Direction,
            Spread = Vector(0,0,0),
            Src = self:GetPos(),
            IgnoreEntity = self.Owner,
            Callback = function(attacker, tr, dmginfo)
                dmginfo:SetInflictor(self.Inflictor)
            end
        })
        self:EmitSound("weapons/fx/rics/ric" .. math.random(1,5) .. ".wav", 70, 100)
        self:Remove()
    end
end