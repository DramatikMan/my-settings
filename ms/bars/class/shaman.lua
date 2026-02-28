MS.ActionBarSetters[MS.ClassID.SHAMAN] = function()
    MS.PutMacroInSlot("bl", 38)
    MS.PutActiveRacialInSlot(146)

    MS.PutMacroInSlot("Shaman_b1", 1)
    MS.PutMacroInSlot("Shaman_b2", 2)
    MS.PutMacroInSlot("Shaman_b3", 3)

    MS.PutSpellInSlot("Far Sight", 10)
    MS.PutSpellInSlot(MS.MySpecName == "Restoration" and "Ancestral Vision" or "Ancestral Spirit", 11)
    MS.PutSpellInSlot("Astral Recall", 12)
end
