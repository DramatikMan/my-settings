MS.ActionBarSetters[MS.ClassID.ROGUE] = function()
    MS.PutSpellInSlot("Stealth", 38)
    MS.PutActiveRacialInSlot(146)

    MS.PutSpellInSlot("Pick Lock", 11, 119)

    if MS.MySpecName == "Outlaw" then
        MS.PutMacroInSlot("Saber Slash", 1)
        MS.PutMacroInSlot("Dispatch", 2, 110)
    elseif MS.MySpecName == "Assassination" then
        MS.PutSpellInSlot("Mutilate", 1)
        MS.PutSpellInSlot("Envenom", 2, 110)
    elseif MS.MySpecName == "Subtlety" then
        MS.PutSpellInSlot("Backstab", 1)
        MS.PutMacroInSlot("Eviscerate", 2, 110)
        MS.PutSpellInSlot("Black Powder", 3, 111)
    end

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
