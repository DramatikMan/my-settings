MS.ActionBarSetters[MS.ClassID.PALADIN] = function()
    MS.PutSpellInSlot("Hand of Reckoning", 38)
    MS.PutActiveRacialInSlot(146)

    MS.PutMacroInSlot("Paladin_b1", 1)
    MS.PutMacroInSlot("Paladin_b2", 2)
    MS.PutMacroInSlot("Paladin_b3", 3)

    MS.PutSpellInSlot("Devotion Aura", 9)
    MS.PutSpellInSlot("Crusader Aura", 10)
    MS.PutSpellInSlot("Concentration Aura", 11)
    MS.PutSpellInSlot(MS.MySpecName == "Holy" and "Absolution" or "Redemption", 12)
end
