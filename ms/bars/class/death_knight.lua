MS.ActionBarSetters[MS.ClassID.DEATHKNIGHT] = function()
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot("Dark Command", 39, 147)
    MS.PutSpellInSlot("Raise Dead", 38)
    
    MS.PutMacroInSlot("DK_b1", 1)
    MS.PutMacroInSlot("DK_b2", 2)
    MS.PutMacroInSlot("DK_b3", 3)
    MS.PutMacroInSlot("DK_b4", 4)

    MS.PutSpellInSlot("Death Gate", 12)

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Runeforging" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 11)
        end
    end

    if MS.MySpecName == "Frost" then
        MS.PutSpellInSlot("Frost Strike", 1)
        MS.PutSpellInSlot("Obliterate", 2)
        MS.PutSpellInSlot("Frostscythe", 3)
    else
        MS.PutSpellInSlot("Rune Strike", 1)
    end
end
