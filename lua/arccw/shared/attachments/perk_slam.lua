att.PrintName = "Slamfire"
att.Icon = Material("entities/acwatt_fcg_auto.png")
att.Description = "Modifications to the pump allows for an immediate followup shot after cycling while holding the trigger. Grants pesudo-automatic firing and increases cycle speed."
att.Desc_Pros = {
    "+ Slamfire",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ammo_shotgun"

att.Ignore = true

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "SLAM"
    },
    {
        Mode = 0
    }
}

att.Mult_RecoilSide = 1.5
att.Mult_ReloadTime = 1.3
att.Mult_CycleTime = 0.8

att.Hook_Compatible = function(wep)
    if not wep.ManualAction then return false end
end

att.Hook_SelectCycleAnimation = function(wep, anim)
    if wep.Animations["slam"] then return "slam" end
end

--[[ replace sh_think.lua line 10+ with the following
   if (self.Primary.Automatic or !self:GetOwner():KeyDown(IN_ATTACK)) and self:GetNWBool("cycle", false) and !self:GetNWBool("reloading", false) then
      local anim = "cycle"
      if self:GetNWInt("state") == ArcCW.STATE_SIGHTS and self.Animations.cycle_iron then
         anim = "cycle_iron"
      end
      anim = self:GetBuff_Hook("Hook_SelectCycleAnimation", anim) or anim
      local mult = self:GetBuff_Mult("Mult_CycleTime")
      self:PlayAnimation(anim, mult, false, 0, true)
      self:SetNWBool("cycle", false)
   end
]]