MS.ActionBarSetters[MS.ClassID.HUNTER] = function()
    MS.PutMacroInSlot("bl", 39)
    MS.PutMacroInSlot("Flare", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutMacroInSlot("Mend Pet", 147)

    MS.PutSpellInSlot("Tame Beast", 12)
    MS.PutSpellInSlot("Dismiss Pet", 11)
    MS.PutSpellInSlot("Beast Lore", 10)

    MS.PutMacroInSlot("Hunter_b1", 1)
    MS.PutMacroInSlot("Hunter_b2", 2)
    MS.PutMacroInSlot("Hunter_b3", 3)
    MS.PutMacroInSlot("Flare", 4)

    if MS.MySpecName == "Survival" then
        MS.PutSpellInSlot("Eyes of the Beast", 9)
    elseif MS.MySpecName == "Marksmanship" then
        MS.PutSpellInSlot("Eagle Eye", 9)
    end

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Call Pet" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 8)
        end
    end
end
