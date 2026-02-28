MS.ActionBarSetters[MS.ClassID.HUNTER] = function()
    MS.PutMacroInSlot("bl", 39)
    MS.PutMacroInSlot("Flare", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutMacroInSlot("Mend Pet", 147)

    MS.PutSpellInSlot("Tame Beast", 12)
    MS.PutSpellInSlot("Dismiss Pet", 11)
    MS.PutSpellInSlot("Beast Lore", 10)

    MS.PutSpellInSlot("Revive Pet", 4)

    if MS.MySpecName == "Survival" then
        MS.PutMacroInSlot("Kill Command", 1)
        MS.PutMacroInSlot("Raptor Strike", 2)
        MS.PutMacroInSlot("Wildfire Bomb", 3)
        MS.PutSpellInSlot("Eyes of the Beast", 9)
    elseif MS.MySpecName == "Marksmanship" then
        MS.PutMacroInSlot("Steady Shot", 1)
        MS.PutMacroInSlot("Arcane Shot", 2)
        MS.PutMacroInSlot("Aimed Shot", 3)
        MS.PutSpellInSlot("Eagle Eye", 9)
    else
        MS.PutMacroInSlot("Steady Shot", 1)
        MS.PutMacroInSlot("Arcane Shot", 2)
    end
end
