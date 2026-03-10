-- CVars https://warcraft.wiki.gg/wiki/Console_variables

MS.SetCVars = function()
    _G.SetCVar("ResampleAlwaysSharpen", 1)
    _G.SetCVar("nameplateShowSelf", 1)
    _G.SetCVar("autoLootDefault", 1)
    _G.SetCVar("AutoPushSpellToActionBar", 0)
    _G.SetCVar("showTargetCastbar", 0)

    -- KEYBINDS
    local currentBindingSet = _G.GetCurrentBindingSet()

    if currentBindingSet ~= 1 then
        _G.LoadBindings(1)
    end

    _G.SetBinding("SHIFT+]", "FRIENDNAMEPLATES")
    _G.SaveBindings(1)

    -- NAMEPLATES
    _G.SetCVar("nameplateShowFriends", 0)
end
