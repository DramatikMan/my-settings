MS.ActionBarSetters[MS.ClassID.MONK] = function()
    MS.PutSpellInSlot("Transcendence", 40)
    MS.PutSpellInSlot("Detox", 39)
    MS.PutSpellInSlot("Provoke", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot(MS.MySpecName == "Mistweaver" and "Detox Mist" or "Expel Harm", 147)
    MS.PutSpellInSlot("Transcendence: Transfer", 148)

    MS.PutMacroInSlot("Monk_b1", 1)
    MS.PutMacroInSlot("Monk_b2", 2)
    MS.PutMacroInSlot("Monk_b3", 3)

    if MS.MySpecName == "Windwalker" then
        MS.PutSpellInSlot("Flying Serpent Kick", 4)
    end

    MS.PutSpellInSlot("Zen Flight", 10)
    MS.PutSpellInSlot(MS.MySpecName == "Mistweaver" and "Reawaken" or "Resuscitate", 11)
    MS.PutSpellInSlot("Zen Pilgrimage", 12)
end
