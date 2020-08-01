AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Insertion Flare"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/arccw/w_flare.mdl"
ENT.FuseTime = 3
ENT.ArmTime = 0
ENT.ImpactFuse = false

ENT.FireTime = 120

ENT.Armed = false

ENT.Ticks = 0

AddCSLuaFile()

function ENT:SetupDataTables()
    self:NetworkVar( "Bool", 0, "Armed" )

    if SERVER then
        self:SetArmed(false)
    end
end

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        self:SetHealth(5)
        self:SetMaxHealth(5)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        self:SetOwner(self.Owner)

        timer.Simple(0, function()
            if !IsValid(self) then SafeRemoveEntity(self) return end
            if !IsValid(self.Owner) then SafeRemoveEntity(self) return end

            local ang = Angle(90, math.Rand(-180, 180), 0)

            self:SetAngles(ang)
            self:SetMoveType(MOVETYPE_NONE)

            local tr = util.TraceLine({
                start = self.Owner:GetPos(),
                endpos = self.Owner:GetPos() - Vector(0, 0, 256),
                filter = self.Owner
            })

            if !tr.Hit then SafeRemoveEntity(self) return end

            self:SetPos(tr.HitPos)
        end)

        timer.Simple(GetConVar("arccw_equipmenttime"):GetInt(), function()
            SafeRemoveEntity(self)
        end)
    end
end

function ENT:OnTakeDamage(dmg)
    self:Remove()
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Think()
    if !self.SpawnTime then self.SpawnTime = CurTime() end

    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime and !self.Armed then
        self:Detonate()
        self:SetArmed(true)
    end

    if self:GetArmed() then

        if CLIENT then

            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end
            if !IsValid(emitter) then return end

            if self.Ticks % 5 == 0 then
                local fire = emitter:Add("particles/smokey", self:GetPos())
                fire:SetVelocity( (VectorRand() * 25) + (self:GetAngles():Right() * 100) )
                fire:SetGravity( Vector(0, 0, 2000) )
                fire:SetDieTime( math.Rand(0.5, 1) )
                fire:SetStartAlpha( 255 )
                fire:SetEndAlpha( 0 )
                fire:SetStartSize( 0 )
                fire:SetEndSize( 50 )
                fire:SetRoll( math.Rand(-180, 180) )
                fire:SetRollDelta( math.Rand(-0.2,0.2) )
                fire:SetColor( 255, 255, 255 )
                fire:SetAirResistance( 150 )
                fire:SetPos( self:GetPos() )
                fire:SetLighting( false )
                fire:SetCollide(true)
                fire:SetBounce(0.75)
                fire:SetNextThink( CurTime() + FrameTime() )
                fire:SetThinkFunction( function(pa)
                    if !pa then return end
                    local col1 = Color(0, 102, 255)
                    local col2 = Color(230, 245, 255)

                    local col3 = col1
                    local d = pa:GetLifeTime() / pa:GetDieTime()
                    col3.r = Lerp(d, col1.r, col2.r)
                    col3.g = Lerp(d, col1.g, col2.g)
                    col3.b = Lerp(d, col1.b, col2.b)

                    pa:SetColor(col3.r, col3.g, col3.b)
                    pa:SetNextThink( CurTime() + FrameTime() )
                end )
            end
            emitter:Finish()

            self.Ticks = self.Ticks + 1
        end

    end
end

function ENT:OnRemove()
    if !self.FireSound then return end
    self.FireSound:Stop()
end

function ENT:Detonate()
    if !self:IsValid() then return end

    self.Armed = true

    self.FireSound = CreateSound(self, "weapons/flaregun/burn.wav")
    self.FireSound:Play()

    self.FireSound:ChangeVolume(60, 0)
    self.FireSound:ChangePitch(80, self.FireTime)

    timer.Simple(self.FireTime - 1, function()
        if !IsValid(self) then return end

        self.FireSound:ChangeVolume(0, 1)
    end)

    timer.Simple(self.FireTime, function()
        if !IsValid(self) then return end

        self:Remove()
    end)
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end