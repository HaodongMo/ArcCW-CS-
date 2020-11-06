local function ScreenScaleMulti(input)
    return ScreenScale(input) * GetConVar("arccw_hud_size"):GetFloat()
end

local t = ArcCW.GetTranslation

local function CSPContentCheck()
    -- If we have a warning, don't do it
    if file.Exists("arccw_csp", "DATA") then return end

    -- If mounted we are okay
    local mounted = IsMounted("cstrike")
    if mounted then return end

    -- Look for CSS Retexture
    local addons = engine.GetAddons()
    for _, addon in pairs(addons) do
        if tostring(addon.wsid) == "549615438" and addon.mounted then return end
    end

    local startTime = CurTime()

    local window = vgui.Create( "DFrame" )
    window:SetSize( ScrW() * 0.6, ScrH() * 0.6)
    window:Center()
    window:SetTitle("")
    window:SetDraggable(false)
    window:SetVisible(true)
    window:ShowCloseButton(false)
    window:MakePopup()
    window.Paint = function(self, w, h)
        surface.SetDrawColor(0, 0, 0, 200)
        surface.DrawRect(0, 0, w, h)
    end

    local title = vgui.Create("DLabel", window)
    title:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(26))
    title:Dock(TOP)
    title:SetFont("ArcCW_24")
    title:SetText(t("csp.title"))
    title:DockMargin(ScreenScaleMulti(16), 0, ScreenScaleMulti(16), ScreenScaleMulti(8))

    local desc = vgui.Create("DLabel", window)
    desc:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(12))
    desc:Dock(TOP)
    desc:DockMargin(ScreenScaleMulti(4), 0, ScreenScaleMulti(4), 0)
    desc:SetFont("ArcCW_12")
    desc:SetText(t("csp.line1"))
    desc:SetContentAlignment(5)

    local desc2 = vgui.Create("DLabel", window)
    desc2:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(12))
    desc2:Dock(TOP)
    desc2:DockMargin(ScreenScaleMulti(4), 0, ScreenScaleMulti(4), ScreenScaleMulti(4))
    desc2:SetFont("ArcCW_12")
    desc2:SetText(t("csp.line2"))
    desc2:SetContentAlignment(5)

    local accept = vgui.Create("DButton", window)
    accept:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(20))
    accept:SetText("")
    accept:Dock(BOTTOM)
    accept:DockMargin(ScreenScaleMulti(48), ScreenScaleMulti(2), ScreenScaleMulti(48), ScreenScaleMulti(2))
    accept.OnMousePressed = function(spaa, kc)
        if CurTime() > startTime + 5 then
            window:Close()
            window:Remove()
            --file.Write("arccw_csp.txt", "checked")
            --chat.AddText(Color(255,0,0), t("csp.confirm"))
        end
    end
    accept.Paint = function(spaa, w, h)
        local Bfg_col = Color(255, 255, 255, 255)
        local Bbg_col = Color(0, 0, 0, 200)

        if CurTime() > startTime + 5 and spaa:IsHovered() then
            Bbg_col = Color(255, 255, 255, 100)
            Bfg_col = Color(0, 0, 0, 255)
        end

        surface.SetDrawColor(Bbg_col)
        surface.DrawRect(0, 0, w, h)

        local txt = t("incompatible.confirm") .. ((CurTime() > startTime + 5) and "" or (" - " .. t("incompatible.wait", {time = math.ceil(startTime + 5 - CurTime())})))
        surface.SetTextColor(Bfg_col)
        surface.SetTextPos(ScreenScaleMulti(8), ScreenScaleMulti(2))
        surface.SetFont("ArcCW_12")
        surface.DrawText(txt)
    end

    local neverAgain = vgui.Create("DButton", window)
    neverAgain:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(20))
    neverAgain:SetText("")
    neverAgain:Dock(BOTTOM)
    neverAgain:DockMargin(ScreenScaleMulti(48), ScreenScaleMulti(2), ScreenScaleMulti(48), ScreenScaleMulti(2))
    neverAgain.OnMousePressed = function(spaa, kc)
        if CurTime() > startTime + 10 then
            file.Write("arccw_csp.txt", "done goof'd")
            window:Close()
            window:Remove()
            chat.AddText(Color(255,0,0), t("csp.never"))
        end
    end
    neverAgain.Paint = function(spaa, w, h)
        local Bfg_col = Color(255, 255, 255, 255)
        local Bbg_col = Color(0, 0, 0, 200)

        if CurTime() > startTime + 10 and spaa:IsHovered() then
            Bbg_col = Color(255, 100, 100, 100)
            Bfg_col = Color(255, 255, 255, 255)
        end

        surface.SetDrawColor(Bbg_col)
        surface.DrawRect(0, 0, w, h)

        local txt = (CurTime() > startTime + 10) and (spaa:IsHovered() and t("incompatible.never.hover") or t("incompatible.never")) or t("incompatible.wait", {time = math.ceil(startTime + 10 - CurTime())})
        surface.SetTextColor(Bfg_col)
        surface.SetTextPos(ScreenScaleMulti(8), ScreenScaleMulti(2))
        surface.SetFont("ArcCW_12")
        surface.DrawText(txt)
    end

    local mount = vgui.Create("DButton", window)
    mount:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(20))
    mount:DockMargin(ScreenScaleMulti(64), ScreenScaleMulti(2), ScreenScaleMulti(64), ScreenScaleMulti(2))
    mount:SetText("")
    mount:Dock(TOP)
    mount.Paint = function(spaa, w, h)
        local Bfg_col = Color(255, 255, 255, 255)
        local Bbg_col = Color(0, 0, 0, 200)

        if CurTime() > startTime + 5 and spaa:IsHovered() then
            Bbg_col = Color(255, 255, 255, 100)
            Bfg_col = Color(0, 0, 0, 255)
        end

        surface.SetDrawColor(Bbg_col)
        surface.DrawRect(0, 0, w, h)

        local txt = t("csp.mount")
        surface.SetTextColor(Bfg_col)
        surface.SetTextPos(ScreenScaleMulti(8), ScreenScaleMulti(2))
        surface.SetFont("ArcCW_12")
        surface.DrawText(txt)
    end
    mount.OnMousePressed = function(spaa, kc)
        gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=1282064537")
    end

    local addon = vgui.Create("DButton", window)
    addon:SetSize(ScreenScaleMulti(256), ScreenScaleMulti(20))
    addon:DockMargin(ScreenScaleMulti(64), ScreenScaleMulti(2), ScreenScaleMulti(64), ScreenScaleMulti(2))
    addon:SetText("")
    addon:Dock(TOP)
    addon.Paint = function(spaa, w, h)
        local Bfg_col = Color(255, 255, 255, 255)
        local Bbg_col = Color(0, 0, 0, 200)

        if CurTime() > startTime + 5 and spaa:IsHovered() then
            Bbg_col = Color(255, 255, 255, 100)
            Bfg_col = Color(0, 0, 0, 255)
        end

        surface.SetDrawColor(Bbg_col)
        surface.DrawRect(0, 0, w, h)

        local txt = t("csp.texture")
        surface.SetTextColor(Bfg_col)
        surface.SetTextPos(ScreenScaleMulti(8), ScreenScaleMulti(2))
        surface.SetFont("ArcCW_12")
        surface.DrawText(txt)
    end
    addon.OnMousePressed = function(spaa, kc)
        gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=549615438")
    end
end
hook.Add("InitPostEntity", "ArcCW_CSP_MountCheck", CSPContentCheck)