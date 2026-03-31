-- druid stances reminder:
-- [stance:1] = Bear Form
-- [stance:2] = Cat Form
-- [stance:3] = Travel Form
-- [stance:4] = Moonkin Form / Tree of Life

MS.ActionBarSetters[MS.ClassID.DRUID] = function()
    MS.PutSpellInSlot("Mangle", 39)
    MS.PutSpellInSlot("Thrash", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot("Growl", 147)

    if MS.MySpecName == "Restoration" or MS.MySpecName == "Balance" then
        MS.PutMacroInSlot("Wrath", 1)
        MS.PutMacroInSlot("Starfire", 2)
        MS.PutMacroInSlot("Starsurge", 3)
    elseif MS.MySpecName == "Feral" then
        MS.PutMacroInSlot("Shred", 1)
        MS.PutMacroInSlot("Ferocious Bite", 2)
        MS.PutMacroInSlot("Rip", 3)
    elseif MS.MySpecName == "Guardian" then
        MS.PutMacroInSlot("Mangle", 1)
        MS.PutMacroInSlot("Thrash", 2)
        MS.PutMacroInSlot("Maul", 3)
        MS.PutMacroInSlot("Ironfur", 4)
    end

    -- moonkin form
    MS.PutMacroInSlot("Wrath", 109)
    MS.PutMacroInSlot("Starfire", 110)
    MS.PutMacroInSlot("Starsurge", 111)

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Lunar Eclipse" or name == "Solar Eclipse" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 4, 112)
        end
    end

    -- cat form / prowl
    MS.PutMacroInSlot("Shred", 73, 85)
    MS.PutMacroInSlot("Ferocious Bite", 74, 86)
    MS.PutMacroInSlot("Rip", 75, 87)

    -- bear form
    MS.PutMacroInSlot("Mangle", 97)
    MS.PutMacroInSlot("Thrash", 98)
    MS.PutMacroInSlot("Maul", 99)
    MS.PutMacroInSlot("Ironfur", 100)

    MS.PutSpellInSlot(MS.MySpecName == "Restoration" and "Revitalize" or "Revive", 11, 119, 83, 95, 107)
    MS.PutSpellInSlot("Dreamwalk", 12, 120, 84, 96, 108)
end
