MS.ActionBarSetters[MS.ClassID.WARLOCK] = function()
    MS.PutMacroInSlot("Soulburn", 39)
    MS.PutSpellInSlot("Burning Rush", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot("Demonic Circle", 147)

    MS.PutMacroInSlot("Warlock_b1", 1)
    MS.PutMacroInSlot("Warlock_b2", 2)
    MS.PutMacroInSlot("Warlock_b3", 3)
    MS.PutMacroInSlot("Warlock_b4", 4)

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Summon Demon" then
            MS.PutSpellbookItemInSlot(spellBookItemSlotIndex, 6)
        end
    end

    MS.PutSpellInSlot("Subjugate Demon", 7)
    MS.PutSpellInSlot("Eye of Kilrogg", 8)
    MS.PutSpellInSlot("Create Healthstone", 9)
    MS.PutSpellInSlot("Create Soulwell", 10)
    MS.PutSpellInSlot("Ritual of Summoning", 11)
    MS.PutSpellInSlot("Ritual of Doom", 12)
end
