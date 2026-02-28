---@class C_ActionBar
---@field PutActionInSlot fun(slotID: number): nil

---@class C_QuestLog
---@field GetTitleForQuestID fun(questID: number): string
---@field IsQuestFlaggedCompleted fun(questID: number): boolean

---@class SkillLineInfo
---@field name string
---@field itemIndexOffset number
---@field numSpellBookItems number

---@class C_SpellBook
---@field PickupSpellBookItem fun(spellBookItemSlotIndex: number, spellBookItemSpellBank: number)
---@field GetSpellBookItemName fun(spellBookItemSlotIndex: number, spellBookItemSpellBank: number): string, string
---@field GetSpellBookSkillLineInfo fun(skillLineIndex: number): SkillLineInfo
---@field GetNumSpellBookSkillLines fun(): number

---@class C_Spell
---@field PickupSpell fun(spellIdentifier: string): nil

---@class C_CooldownViewer
---@field GetLayoutData fun(): string
---@field SetLayoutData fun(data: string): nil

---@class ClassColor
---@field WrapTextInColorCode fun(self: ClassColor, text: string): string

---@class C_ClassColor
---@field GetClassColor fun(className: string): ClassColor | nil

---@class UnitClass
---@field className string
---@field classFilename string
---@field classId ClassID

---@class SpecializationInfo
---@field specId number?
---@field name string?
---@field description string?
---@field icon string?
---@field role string?
---@field primaryStat number?
---@field pointsSpent number?
---@field background string?
---@field previewPointsSpent number?
---@field isUnlocked boolean?

---@class C_SpecializationInfo
---@field GetSpecialization fun(isInspect: boolean?, isPet: boolean?, specGroupIndex: number?): number
---@field GetSpecializationInfo fun(specializationIndex: number, isInspect: boolean?, isPet: boolean?, inspectTarget: string?, sex: number?, groupIndex: number?, classID: number?): SpecializationInfo

---@class Frame

---@class _G
---@field UIParent Frame
---@field SlashCmdList table
---@field UnitClass fun(unit: string): UnitClass
---@field GetCurrentBindingSet fun(): number
---@field LoadBindings fun(bindingSet: number): nil
---@field SetBinding fun(key: string, command: string?, mode: number?): boolean | nil
---@field SaveBindings fun(which: number): nil
---@field SetCVar fun(name: string, value: string|number?): boolean | nil
---@field ClearCursor fun(): nil
---@field PickupMacro fun(name: string): nil
---@field PickupAction fun(slot: number): nil
---@field C_SpecializationInfo C_SpecializationInfo
---@field C_CooldownViewer C_CooldownViewer
---@field C_ClassColor C_ClassColor
---@field C_ActionBar C_ActionBar
---@field C_Spell C_Spell
---@field C_SpellBook C_SpellBook
---@field C_QuestLog C_QuestLog
---@field CreateFrame fun(frameType: string, name: string?, parent: Frame?, template: string?, id: number?)
---@field GetCurrentTitle fun(): number
---@field IsTitleKnown fun(titleMaskID: number): boolean
---@field UnitFactionGroup fun(unit: string): string, string
