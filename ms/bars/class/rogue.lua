MS.ActionBarSetters[MS.ClassID.ROGUE] = function()
    MS.PutSpellInSlot("Stealth", 38)
    MS.PutActiveRacialInSlot(146)

    MS.PutSpellInSlot("Pick Lock", 11, 119)

    MS.PutMacroInSlot("Rogue_b1", 1)
    MS.PutMacroInSlot("Rogue_b2", 2, 110)
    MS.PutMacroInSlot("Rogue_b3", 3, 111)

    -- stealth
    MS.PutSpellInSlot("Ambush", 109)
    MS.PutSpellInSlot("Sap", 112)
    MS.PutSpellInSlot("Distract", 113)
    MS.PutSpellInSlot("Pick Pocket", 114)

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Poisons" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 12, 120)
        end
    end
end
