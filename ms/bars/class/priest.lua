MS.ActionBarSetters[MS.ClassID.PRIEST] = function()
    MS.PutActiveRacialInSlot(38, 146)

    MS.PutSpellInSlot("Smite", 1)

    if MS.MySpecName == "Holy" then
        MS.PutSpellInSlot("Holy Fire", 2)
        MS.PutMacroInSlot("Greater Heal", 3)
    elseif MS.MySpecName == "Shadow" then
        MS.PutSpellInSlot("Mind Blast", 2)
        MS.PutSpellInSlot("Shadow Word: Madness", 3)
        MS.PutSpellInSlot("Voidform", 4)
    elseif MS.MySpecName == "Discipline" then
        MS.PutSpellInSlot("Mind Blast", 2)
        MS.PutSpellInSlot("Penance", 2)
    end

    MS.PutSpellInSlot(MS.MySpecName == "Shadow" and "Resurrection" or "Mass Resurrection", 11)
    MS.PutSpellInSlot("Mind Vision", 12)
end
