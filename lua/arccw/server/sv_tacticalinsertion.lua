local function TacInsert(ply, ttt)
    for i, k in pairs(ents.FindByClass("arccw_thr_flare")) do
        if k.Owner == ply then
            local pos = k:GetPos()

            local pb = 8

            local tr = util.TraceHull({
                start = pos + Vector(0, 0, 72),
                endpos = pos + Vector(0, 0, 2),
                filter = {k, ply},
                maxs = Vector(pb, pb, 1),
                mins = Vector(-pb, pb, 0)
            })

            local tr2 = util.TraceHull({
                start = pos + Vector(0, 0, 2),
                endpos = pos + Vector(0, 0, 72),
                filter = {k, ply},
                maxs = Vector(pb, pb, 1),
                mins = Vector(-pb, pb, 0)
            })

            k:Remove()

            if !tr.Hit and !tr.StartSolid and !tr2.Hit and !tr2.StartSolid then
                if ttt then
                    ply:UnSpectate()
                    ply:SetTeam(TEAM_TERROR)
                    ply:StripAll()
                    ply:Spawn()
                    ply:PrintMessage(HUD_PRINTCENTER, "You respawned at your Insertion Flare")
                end
                ply:SetPos(pos)
                ply:SetEyeAngles(Angle(0, math.Rand(-180, 180), 0))
                return k
            else
                ply:PrintMessage(HUD_PRINTCENTER, "Insertion Flare Blocked")
            end
        end
    end
end
if engine.ActiveGamemode() ~= "terrortown" then
    hook.Add("PlayerSpawn", "ArcCW_TacInsert", function(ply, transition)
        TacInsert(ply, false)
    end)

    hook.Add("PlayerSelectSpawn", "ArcCW_TacInsert", function(ply)
        return TacInsert(ply, false)
    end)
else
    hook.Add("PlayerDeath", "ArcCW_TacInsert", function(ply)
        timer.Simple(3, function()
            TacInsert(ply, true)
        end)
    end)
end