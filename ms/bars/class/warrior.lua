MS.ActionBarSetters[MS.ClassID.WARRIOR] = function()
    MS.PutSpellInSlot("Defensive Stance", 39)
    MS.PutSpellInSlot("Taunt", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot("Battle Stance", 147)

    MS.PutMacroInSlot("Execute", 4)

    MS.PutSpellInSlot("Slam", 1)
    MS.PutMacroInSlot("Execute", 4)

    if MS.MySpecName == "Arms" then
        MS.PutSpellInSlot("Mortal Strike", 2)
        MS.PutSpellInSlot("Overpower", 3)
    end
end
