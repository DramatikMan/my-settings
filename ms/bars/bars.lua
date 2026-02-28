local function SetMainBarsStrata()
    for i = 1, 12 do
        _G["BT4Button" .. i]:SetFrameStrata("HIGH")
    end

    for i = 61, 72 do
        _G["BT4Button" .. i]:SetFrameStrata("HIGH")
    end
end

local function SetActionBars()
    -- clear bars
    MS.ClearSlots(1, 12)
    MS.ClearSlots(14, 25)
    MS.ClearSlots(37, 48)
    MS.ClearSlots(145, 156)
    --- moonkin / stealth
    MS.ClearSlots(109, 120)
    -- cat form / prowl
    MS.ClearSlots(73, 96)

    -- skyriding
    MS.ClearSlots(121, 132)
    MS.PutSpellInSlot("Surge Forward", 121)
    MS.PutSpellInSlot("Skyward Ascent", 122)
    MS.PutMacroInSlot("Whirling Surge", 123)
    MS.PutSpellInSlot("Aerial Halt", 124)
    MS.PutSpellInSlot("Second Wind", 125)
    MS.PutSpellInSlot("Bronze Timelock", 126)

    -- bar 2
    MS.PutMacroInSlot("bar_2_01", 61)

    if MS.MySpecIndex == 5 then
        MS.PutMacroInSlot("chauffeur", 62)
    end

    for i = 4, 12 do
        local suffix = i < 10 and string.format("0%d", i) or tostring(i)
        MS.PutMacroInSlot(string.format("bar_2_%s", suffix), 60 + i)
    end

    -- right bar
    for i = 1, 12 do
        local suffix = i < 10 and string.format("0%d", i) or tostring(i)
        MS.PutMacroInSlot(string.format("right_bar_%s", suffix), 61 - i)
    end

    MS.PutMacroInSlot("right_big_button", 13)
    MS.PutMacroInSlot("slot 13", 37)
    MS.PutMacroInSlot("slot 14", 145)
    MS.PutCombarResInSlot(56, 41)

    -- middle bars
    MS.PutMacroInSlot("right_bar_02", 43)
    MS.PutMacroInSlot("right_bar_03", 42)
    MS.PutMacroInSlot("right_bar_06", 149)
    MS.PutMacroInSlot("mana potion", 150)
    MS.PutMacroInSlot("right_bar_07", 151)

    MS.ActionBarSetters[MS.MyClassID]()
end

MS.SetupBars = function()
    SetMainBarsStrata()
    SetActionBars()
    _G.ClearCursor()
    -- MS.Print("action bars done.")
end

MS.ActionBarSetters = {}
