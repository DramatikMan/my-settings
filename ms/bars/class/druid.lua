-- druid stances reminder:
-- [stance:1] = Bear Form
-- [stance:2] = Cat Form
-- [stance:3] = Travel Form
-- [stance:4] = Moonkin Form / Tree of Life

MS.ActionBarSetters[MS.ClassID.DRUID] = function()
    MS.PutMacroInSlot("Druid_b1", 1, 73, 85, 97, 109)
    MS.PutMacroInSlot("Druid_b2", 2, 74, 86, 98, 110)
    MS.PutMacroInSlot("Druid_b3", 3, 75, 87, 99, 111)
    MS.PutMacroInSlot("Druid_b4", 4, 76, 88, 100, 112)

    MS.PutSpellInSlot("Mangle", 39)
    MS.PutSpellInSlot("Thrash", 38)
    MS.PutActiveRacialInSlot(146)
    MS.PutSpellInSlot("Growl", 147)

    MS.PutSpellInSlot(MS.MySpecName == "Restoration" and "Revitalize" or "Revive", 11, 119, 83, 95, 107)
    MS.PutSpellInSlot("Dreamwalk", 12, 120, 84, 96, 108)
end
