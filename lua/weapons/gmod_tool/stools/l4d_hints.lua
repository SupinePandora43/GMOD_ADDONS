TOOL.Category = "Supine"
TOOL.Name = "#tool.l4d_hints.name"
if SERVER then util.AddNetworkString("l4d_hint_remove") end
if CLIENT then
    TOOL.Information = {
        -- {name = "info"},
        {name = "left"}
    }
    language.Add("tool.l4d_hints.name", "L4D Hint")
    language.Add("tool.l4d_hints.desc", "Creates L4D-styled hints")
    language.Add("tool.l4d_hints.left", "Create Hint")
	net.Receive("l4d_hint_remove", function()
		hook.Remove("HUDPaint", "L4DGIHINT_"..net.ReadString())
	end)
end
TOOL.ClientConVar["id"] = ""
TOOL.ClientConVar["type"] = "exclamation"
TOOL.ClientConVar["text"] = "No Text Input"
TOOL.ClientConVar["time"] = "0"
-- TOOL.ClientConVar["sound"] = "l4dgi/beepclear.wav"
TOOL.ClientConVar["shouldmove"] = "1"
TOOL.ClientConVar["color_r"] = "255"
TOOL.ClientConVar["color_g"] = "255"
TOOL.ClientConVar["color_b"] = "255"
TOOL.ClientConVar["key"] = "F"

function TOOL:LeftClick(trace)
    local ply = self:GetOwner()
    if (CLIENT) then return true end
    -- local hinttype = hinttable.Type or "exclamation"
    -- local hinttext = hinttable.Text or "No Text Input"
    -- local hintPos = trace.HitPos or Vector(0, 0, 0)
    -- local hinttime = hinttable.Time or nil
    -- local hintsound = hinttable.Sound or "l4dgi/beepclear.wav"
    -- local shouldmove = hinttable.ShouldMove or false
    -- local textcolor = hinttable.Color or Vector(255, 255, 255)
    -- local hintoffset = hinttable.Offset or Vector(0, 0, 0)
    -- local hintid = hinttable.Identifier or ""
    -- local hinttexture = hinttable.Texture or nil
    local time = self:GetClientInfo("time")
    if tonumber(time) == 0 then time = nil end
    local Type = self:GetClientInfo("type")
    if Type == "key" then Type = Type .. " " .. self:GetClientInfo("key") end
    local hinttable = {
        Identifier = self:GetClientInfo("id"),
        Type = Type,
        Pos = trace.HitPos,
        Text = self:GetClientInfo("text"),
        Time = time,
        -- Sound = self:GetClientInfo("sound"),
        ShouldMove = tobool(self:GetClientInfo("shouldmove")),
        Color = Vector(self:GetClientInfo("color_r"),
                       self:GetClientInfo("color_g"),
                       self:GetClientInfo("color_b"))
    }
    -- PrintTable(hinttable)
    l4dgi_hintall(hinttable)
    undo.Create("L4D_Hint")
    undo.SetCustomUndoText("Undo L4D Hint")
    undo.AddFunction(function(Identifier)
		net.Start("l4d_hint_remove")
		net.WriteString(Identifier["Functions"][1][2][1])
		net.Broadcast()
	end, self:GetClientInfo("id"))
    undo.SetPlayer(ply)
    undo.Finish()
    return true
end
if CLIENT then
    local mode = TOOL.Mode
    function TOOL.BuildCPanel(CPanel)
        CPanel:AddControl("combobox", {
            Label = "Type",
            MenuButton = true,
            Options = { -- mode.."_type"
                ["Default"] = {
                    [mode .. "_id"] = "",
                    [mode .. "_type"] = "exclamation",
                    [mode .. "_text"] = "No Text Input",
                    [mode .. "_time"] = "0",
                    [mode .. "_shouldmove"] = "1",
                    [mode .. "_color_r"] = "255",
                    [mode .. "_color_g"] = "255",
                    [mode .. "_color_b"] = "255",
                    [mode .. "_key"] = "F"
                }
            },
            CVars = {
                mode .. "_type", mode .. "_id", mode .. "_type",
                mode .. "_text", mode .. "_time", mode .. "_shouldmove",
                mode .. "_color_r", mode .. "_color_g", mode .. "_color_b",
                mode .. "_key"
                -- Command = TOOL.Mode..""
            }
        })

        local ident = vgui.Create("DTextEntry", CPanel)
        ident:SetText("")
        ident:SetTooltip("ID")
        ident:SetConVar("l4d_hints_id")
        CPanel:AddItem(ident)

        local combobox = vgui.Create("DComboBox", CPanel)
        local types = {
            "button", "crossedcircle", "door", "exclamation", "exclamationred",
            "exclamationwhite", "info", "key", "lightbulb", "lmb", "medkit",
            "mmb", "partner", "pickup", "rmb", "run", "scrolldown", "scrollup",
            "shield", "skull", "spacebar"
        }
        for _, value in pairs(types) do combobox:AddChoice(value) end
        combobox:SetValue("exclamation")
        local key = vgui.Create("DTextEntry", CPanel)
        key:SetText("F")
        key:SetConVar("l4d_hints_key")
        key:Hide()
        local typecon = GetConVar("l4d_hints_type")
        combobox.OnSelect = function(self, index, value)
            typecon:SetString(value)
            if value == "key" then
                key:Show()
            else
                key:Hide()
            end
        end
        CPanel:AddItem(combobox)
        CPanel:AddItem(key)
        local text = vgui.Create("DTextEntry", CPanel)
        text:SetConVar("l4d_hints_text")
        CPanel:AddItem(text)

        local slider = vgui.Create("DNumSlider", CPanel)
        slider:SetConVar("l4d_hints_time")
        slider:SetText("Time")
        slider:SetMin(0)
        slider:SetMax(100)
        slider:SetTooltip("0 for infinity")
        CPanel:AddItem(slider)

        -- local soundf = vgui.Create("DTextEntry", CPanel)
        -- soundf:SetText("")
        -- soundf:SetTooltip("sound file path ex. l4dgi/beepclear.wav")
        -- soundf:SetConVar("l4d_hints_sound")
        -- CPanel:AddItem(soundf)

        local shouldmove = vgui.Create("DCheckBoxLabel", CPanel)
        shouldmove:SetConVar("l4d_hints_shouldmove")
        shouldmove:SetText("Should Move")
        shouldmove:SetValue(true)
        shouldmove:SizeToContents()
        CPanel:AddItem(shouldmove)

        local Mixer = vgui.Create("DColorMixer", CPanel)
        Mixer:SetPalette(true)
        Mixer:SetAlphaBar(false)
        Mixer:SetWangs(true)
        Mixer:SetConVarR("l4d_hints_color_r")
        Mixer:SetConVarG("l4d_hints_color_g")
        Mixer:SetConVarB("l4d_hints_color_b")
        Mixer:SetColor(Color(255, 255, 255))
        CPanel:AddItem(Mixer)
    end
end

-- function TOOL:Think() end
