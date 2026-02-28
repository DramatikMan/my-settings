local MSLoader = _G.CreateFrame("Frame")
MSLoader:RegisterEvent("PLAYER_ENTERING_WORLD")
-- MSLoader:RegisterEvent("ACTIVE_PLAYER_SPECIALIZATION_CHANGED")

local function main()
    local className, classFilename, classID = _G.UnitClass("player")
    MS.MyClassName = className
    MS.MyClassFilename = classFilename
    MS.MyClassID = classID
    MS.MySpecIndex = _G.C_SpecializationInfo.GetSpecialization()
    local _, specName, _, _, _, _, _, _, _, _ = _G.C_SpecializationInfo.GetSpecializationInfo(MS.MySpecIndex)
    MS.MySpecName = specName
    local classColor = _G.C_ClassColor.GetClassColor(MS.MyClassFilename)

    if classColor == nil then
        error("could not get class color")
    end

    MS.MyClassColor = classColor

    MS.SetCVars()
    MS.SetupBars()
    MS.SetCooldownViewerLayout()

    if _G.IsTitleKnown(50) and _G.GetCurrentTitle() ~= 50 then
        MS.Print("current title is not Arena Master :)")
    end

    local specString = MS.MySpecIndex == 5 and "" or (MS.MySpecName .. " ")
    MS.Print("loaded everything for " .. specString .. MS.MyClassName .. ".")
end

MSLoader:SetScript(
    "OnEvent",
    function(_, event, ...)
        if event == "PLAYER_ENTERING_WORLD" then
            ---@type boolean[]
            local args = { ... }
            local isLogin = args[1]
            local isReload = args[2]

            if isLogin or isReload then
                main()
            end
        -- elseif event == "ACTIVE_PLAYER_SPECIALIZATION_CHANGED" then
        --     main()
        end
    end
);
