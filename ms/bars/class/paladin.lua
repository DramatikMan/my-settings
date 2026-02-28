MS.ActionBarSetters[MS.ClassID.PALADIN] = function()
    MS.PutSpellInSlot("Hand of Reckoning", 38)
    MS.PutActiveRacialInSlot(146)

    MS.PutSpellInSlot("Crusader Strike", 1)
    MS.PutSpellInSlot("Judgment", 2)

    if MS.MySpecName == "Holy" then
        MS.PutSpellInSlot("Shield of the Righteous", 3)
    elseif MS.MySpecName == "Retribution" then
        MS.PutSpellInSlot("Final Verdict", 3)
    elseif MS.MySpecName == "Protection" then
        MS.PutSpellInSlot("Shield of the Righteous", 3)
    end

    MS.PutSpellInSlot("Devotion Aura", 9)
    MS.PutSpellInSlot("Crusader Aura", 10)
    MS.PutSpellInSlot("Concentration Aura", 11)
    MS.PutSpellInSlot(MS.MySpecName == "Holy" and "Absolution" or "Redemption", 12)
end
