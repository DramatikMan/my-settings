local function showCDMString()
    local f = _G.CreateFrame("Frame", "CDMStringFrame", _G.UIParent, "DialogBoxFrame")
    f:SetPoint("CENTER")
    f:SetSize(600, 500)

    f:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\PVPFrame\\UI-Character-PVP-Highlight",
        edgeSize = 16,
        insets = { left = 8, right = 6, top = 8, bottom = 8 },
    })

    f:SetBackdropBorderColor(0, .44, .87, 0.5)

    f:SetMovable(true)
    f:SetClampedToScreen(true)

    local sf = _G.CreateFrame("ScrollFrame", "CDMStringScrollFrame", f, "UIPanelScrollFrameTemplate")
    sf:SetPoint("CENTER")
    sf:SetPoint("LEFT", 16, 0)
    sf:SetPoint("RIGHT", -32, 0)
    sf:SetPoint("TOP", 0, -16)
    sf:SetPoint("BOTTOM", _G["CDMStringFrameButton"], "TOP", 0, 0)

    local eb = _G.CreateFrame("EditBox", "CDMStringEditBox", sf)
    eb:SetSize(sf:GetSize())
    eb:SetMultiLine(true)
    eb:SetAutoFocus(false)
    eb:SetFontObject("ChatFontNormal")
    eb:SetScript("OnEscapePressed", function() f:Hide() end)
    sf:SetScrollChild(eb)
    eb:SetText(_G.C_CooldownViewer.GetLayoutData())

    f:Show()
end

local function showZaralekRares()
    MS.Print("Zaralek Cavern rares completion.")

    MS.PrintQuestsCompletion({
        { 75353, 75364, 75358, 75349, 75360 },
        { 75271, 75326, 75334, 75366 },
        { 75285, 75276 },
        { 75274, 75269, 75322, 75267, 75298 },
        { 75476, 75296, 75336, 75340, 75292 }
    })
end

local function showTimewalking()
    local faction, _ = _G.UnitFactionGroup("player")
    MS.Print("Timewalking questss completion.")

    if faction == "Horde" then
        --- Cataclysm
        MS.PrintQuestsCompletion({ 40786 })
    elseif faction == "Alliance" then
        --- Cataclysm
        MS.PrintQuestsCompletion({ 40787 })
    end
end

---@param msg string
local function receiveCommand(msg)
    local cmd = {}

    for i in string.gmatch(msg, "%S+") do
        table.insert(cmd, i)
    end

    if #cmd == 0 then
        return
    elseif #cmd == 1 then
        if cmd[1] == "cdm" then
            showCDMString()
        end
    elseif #cmd == 2 then
        if cmd[1] == "show" then
            if cmd[2] == "zaralek" then
                showZaralekRares()
            elseif cmd[2] == "tw" then
                showTimewalking()
            end
        end
    end
end

SLASH_MYSETTINGS1 = "/ms"
SLASH_MYSETTINGS2 = "/mysettings"
_G.SlashCmdList.MYSETTINGS = receiveCommand
