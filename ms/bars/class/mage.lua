MS.ActionBarSetters[MS.ClassID.MAGE] = function()
    MS.PutActiveRacialInSlot(146)
    MS.PutMacroInSlot("bl", 38)

    MS.PutMacroInSlot("Mage_b1", 1)
    MS.PutMacroInSlot("Mage_b2", 2)
    MS.PutMacroInSlot("Mage_b3", 3)
    MS.PutMacroInSlot("Mage_b4", 4)

    MS.PutSpellInSlot("Illusion", 9)
    MS.PutSpellInSlot("Conjure Refreshment", 10)

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Teleport" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 11)
        elseif name == "Portal" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 12)
        end
    end
end
