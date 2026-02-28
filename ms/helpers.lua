---@param msg string
MS.Print = function(msg)
    if msg then
        print(MS.MyClassColor:WrapTextInColorCode("My settings: " .. msg))
    end
end

---@param name string
---@param ... number
MS.PutMacroInSlot = function(name, ...)
    local args = { ... }

    for _, v in ipairs(args) do
        _G.PickupMacro(name)
        _G.C_ActionBar.PutActionInSlot(v)
        _G.ClearCursor()
    end
end

---@param name string
---@param ... number
MS.PutSpellInSlot = function(name, ...)
    local args = { ... }

    for _, v in ipairs(args) do
        _G.C_Spell.PickupSpell(name)
        _G.C_ActionBar.PutActionInSlot(v)
        _G.ClearCursor()
    end
end

---@param ... number
MS.PutCombarResInSlot = function(...)
    if MS.MyClassID == MS.ClassID.DRUID then
        MS.PutSpellInSlot("Rebirth", ...)
    elseif MS.MyClassID == MS.ClassID.DEATHKNIGHT then
        MS.PutSpellInSlot("Raise Ally", ...)
    elseif MS.MyClassID == MS.ClassID.PALADIN then
        MS.PutSpellInSlot("Intercession", ...)
    elseif MS.MyClassID == MS.ClassID.WARLOCK then
        MS.PutSpellInSlot("Soulstone", ...)
    else
        MS.PutMacroInSlot("cr", ...)
    end
end

---@param slotID number
MS.ClearSlot = function(slotID)
    _G.PickupAction(slotID)
    _G.ClearCursor()
end

---@param firstSlotID number
---@param lastSlotID number
MS.ClearSlots = function(firstSlotID, lastSlotID)
    for i = firstSlotID, lastSlotID do
        _G.PickupAction(i)
        _G.ClearCursor()
    end
end

MS.GetPlayerSpells = function()
    local function wrapped()
        for i = 1, _G.C_SpellBook.GetNumSpellBookSkillLines() do
            local skillLineInfo = _G.C_SpellBook.GetSpellBookSkillLineInfo(i)
            local offset, numSlots = skillLineInfo.itemIndexOffset, skillLineInfo.numSpellBookItems

            for j = offset + 1, offset + numSlots do
                local name, _ = _G.C_SpellBook.GetSpellBookItemName(j, 0)
                coroutine.yield(j, name)
            end
        end
    end

    return coroutine.wrap(wrapped)
end

---@param spellBookItemSlotIndex number
---@param ... number
MS.PutSpellbookItemInSlot = function(spellBookItemSlotIndex, ...)
    local args = { ... }

    for _, v in ipairs(args) do
        _G.C_SpellBook.PickupSpellBookItem(spellBookItemSlotIndex, 0)
        _G.C_ActionBar.PutActionInSlot(v)
        _G.ClearCursor()
    end
end

MS.SetCooldownViewerLayout = function()
    local data = MS.CDMString[MS.MyClassID]

    if data then
        _G.C_CooldownViewer.SetLayoutData(data)
    else
        MS.Print("cooldown manager layout skipped: data not found.")
    end
end

MS.PutActiveRacialInSlot = function(...)
    local racialIndex = nil

    for spellBookItemSlotIndex, name in MS.GetPlayerSpells() do
        if name == "Arcane Torrent" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Spatial Rift" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Shadowmeld" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Berserking" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Regeneratin'" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Arcane Pulse" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Gift of the Naaru" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Light's Judgment" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Blood Fury" then
            racialIndex = spellBookItemSlotIndex
            break
        elseif name == "Wing Buffet" then
            racialIndex = spellBookItemSlotIndex
            break
        end
    end

    if racialIndex ~= nil then
        MS.PutSpellbookItemInSlot(racialIndex, ...)
    end
end

---@param questIDs { [number]: number | { [number]: number }}
MS.PrintQuestsCompletion = function(questIDs)
    if type(questIDs) ~= "table" then
        error("table argument is required")
    end

    ---@param v number
    local function printQuestCompletion(v)
        print(string.format(
            "%s: %s",
            _G.C_QuestLog.GetTitleForQuestID(v),
            _G.C_QuestLog.IsQuestFlaggedCompleted(v) and "\124cFFFF0000Completed\124r" or
            "\124cFF00FF00Not Completed\124r"
        ))
    end

    for _, v in ipairs(questIDs) do
        if type(v) == "table" then
            print(string.rep("-", 50))

            for _, w in ipairs(v) do
                printQuestCompletion(w)
            end
        elseif type(v) == "number" then
            printQuestCompletion(v)
        end
    end
end
