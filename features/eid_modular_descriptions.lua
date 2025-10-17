-- Table defining the construction bahavior of modular descriptions.
-- A modular description is constructed by looking up the EID.ItemData entry for the given item id (for example: 5.100.123).
-- Each item data coresponds to an entry in the "EID.ModuleBehaviors" table below, which defines how the description is constructed.
-- If no BehaviorFunc is defined, the default constructor is used, which takes the "EID.descriptions[<CurrentLanguage>].ModularDescriptions" entry with the 
-- same name as the ModuleBehavior, and tries to use the provided data from the ItemData entry to fill the {value} placeholder in the description module text 

---- Argument -----
-- The key is the name of the module. It should be the exact same as the data entry in EID.ItemData and the entry of the translation text to be used (in EID.descriptions["en_us"].ModularDescriptions)
-- Priority defines the order of which the modules are added to the description. Positive values get added before the "Additional Informations". Negative priority modules get added afterwards
-- Arrow indicates if an up/down arrow should be shown at the front of a description for positive/negative values.
-- InvertArrow inverts the Arrow direction, pointing up for negative values and down for positive.
-- Icon indicates what icon should be shown before the modular description.
-- IsMultiplier indicates if the modular description describes a multiplier (e.g. TearsMultiplier) and its value should be formatted with an "x" instead of "+/-".
-- HideSign indicates if the sign (+/-/x) should be hidden for the modular description value
-- BehaviorFunc can be used to define a custom behavior for building the modular description. its a function that takes 3 arguments and should return the altered description.
EID.ModuleBehaviors = {
    ["SingleUseInfo"] = { Priority = 11000, HideSign = true },
    -- Player Modules
    ["TearsMultiplier"] = { Priority = 9990, Arrow = true, Icon = "{{Tears}}", IsMultiplier = true },
    ["Tears"] = { Priority = 9980, Arrow = true, Icon = "{{Tears}}" },
    ["TearDelayMultiplier"] = { Priority = 9970, Arrow = true, Icon = "{{Tears}}", IsMultiplier = true, InvertArrow = true },
    ["TearDelay"] = { Priority = 9970, Arrow = true, Icon = "{{Tears}}" },
    ["FireRateMultiplier"] = { Priority = 9960, Arrow = true, Icon = "{{Tears}}", IsMultiplier = true },
    ["FireRate"] = { Priority = 9950, Arrow = true, Icon = "{{Tears}}" },
    ["TearHeight"] = { Priority = 9940, Arrow = true },
    ["TearSizeMultiplier"] = { Priority = 9930, Arrow = true, Icon = "{{Tearsize}}", IsMultiplier = true },
    ["TearSize"] = { Priority = 9920, Arrow = true, Icon = "{{Tearsize}}" },
    ["DamageMultiplier"] = { Priority = 9890, Arrow = true, Icon = "{{Damage}}", IsMultiplier = true },
    ["Damage"] = { Priority = 9880, Arrow = true, Icon = "{{Damage}}" },
    ["BombDamage"] = { Priority = 9870, Arrow = true, Icon = "{{Bomb}}", IsMultiplier = true },
    ["Speed"] = { Priority = 9790, Arrow = true, Icon = "{{Speed}}" },
    ["RangeMultiplier"] = { Priority = 9780, Arrow = true, Icon = "{{Range}}", IsMultiplier = true },
    ["Range"] = { Priority = 9770, Arrow = true, Icon = "{{Range}}" },
    ["ShotSpeedMultiplier"] = { Priority = 9690, Arrow = true, Icon = "{{Shotspeed}}", IsMultiplier = true },
    ["ShotSpeed"] = { Priority = 9680, Arrow = true, Icon = "{{Shotspeed}}" },
    ["Luck"] = { Priority = 9590, Arrow = true, Icon = "{{Luck}}" },
    ["Life"] = { Priority = 9580, Arrow = true },
    ["SizeUp"] = { Priority = 9570, Arrow = true },
    ["SizeDown"] = { Priority = 9560, Arrow = true },
    ["Flight"] = { Priority = 9550 },
    ["Invincibility"] = { Priority = 9540 },
    ["RandomStatUp"] = { Priority = 9530, HideSign = true },
    ["RandomStatDown"] = { Priority = 9520, HideSign = true },
    ["CantShoot"] = { Priority = 9510, HideSign = true },
    ["PlayerContactDamage"] = { Priority = 9500, HideSign = true },

    -- Health related
    ["RedHeart"] = { Priority = 8990, Arrow = true, Icon = "{{Heart}}" },
    ["FullHealth"] = { Priority = 8980, Icon = "{{HealingRed}}", HideSign = true },
    ["HealingRed"] = { Priority = 8970, Icon = "{{HealingRed}}", HideSign = true },
    ["SoulHeart"] = { Priority = 8960, Icon = "{{SoulHeart}}" },
    ["BlackHeart"] = { Priority = 8950, Icon = "{{BlackHeart}}" },
    ["BoneHeart"] = { Priority = 8940, Icon = "{{EmptyBoneHeart}}" },
    ["EternalHeart"] = { Priority = 8930, Icon = "{{EternalHeart}}" },
    ["GoldenHeart"] = { Priority = 8920, Icon = "{{GoldenHeart}}" },
    ["RottenHeart"] = { Priority = 8910, Icon = "{{RottenHeart}}" },
    ["BrokenHeart"] = { Priority = 8910, Icon = "{{BrokenHeart}}" },
    ["EmptyHeart"] = { Priority = 8900, Icon = "{{EmptyHeart}}" },

    -- Pickups / Spawns
    ["Coin"] = { Priority = 7990, Icon = "{{Coin}}" },
    ["Bomb"] = { Priority = 7980, Icon = "{{Bomb}}" },
    ["Key"] = { Priority = 7970, Icon = "{{Key}}" },
    ["CoinBombKey"] = { Priority = 7960, },

    -- Room chances
    ["AngelDevilChance"] = { Priority = 6990, Icon = "{{AngelDevilChance}}" },
    ["DevilChance"] = { Priority = 6980, Icon = "{{DevilChance}}" },
    ["AngelChance"] = { Priority = 6970, Icon = "{{AngelChance}}" },
    ["PlanetariumChance"] = { Priority = 6960, Icon = "{{PlanetariumChance}}" },

    -- Familiars
    ["Flies"] = { Priority = 5990, },
    ["Orbital"] = { Priority = 5980 },
    ["MimicMovement"] = { Priority = 5970, HideSign = true },
    ["BlockProjectiles"] = { Priority = -5950, HideSign = true },
    ["DamagePerTear"] = { Priority = -5960, HideSign = true },
    ["DamagePerShot"] = { Priority = -5970, HideSign = true },
    ["DamagePerSecond"] = { Priority = -5980, HideSign = true },
    ["ContactDamagePerSecond"] = { Priority = -5990, HideSign = true },
    -- Miscellaneous
    ["NoEffect"] = { Priority = 5000, HideSign = true },
    ["DamageToAllEnemies"] =  { Priority = 5010, HideSign = true },

    -- Dynamic Spawns
    ["Spawns"] = {
        Priority = 5500,
        HideSign = true,
        Icon = {
            RandomHeart = "{{UnknownHeart}}",
            RandomTrinket = "{{Trinket}}",
            RedHeart = "{{Heart}}",
            SoulHeart = "{{SoulHeart}}",
            BlackHeart = "{{BlackHeart}}",
            BoneHeart = "{{EmptyBoneHeart}}",
            EternalHeart = "{{EternalHeart}}",
            GoldenHeart = "{{GoldenHeart}}",
            EmptyHeart = "{{EmptyHeart}}",
            Bomb = "{{Bomb}}",
            Key = "{{Key}}",
            Coin = "{{Coin}}",
            RandomCoin = "{{Coin}}",
            Card = "{{Card}}",
            Pill = "{{Pill}}",
            Rune = "{{Rune}}",
            Battery = "{{Battery}}",
        },
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description)
            local moduleDescription = ""
            for subModuleID, subValue in pairs(itemDataTableEntry) do
                local subTextFragment = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)[subModuleID]
                if not subTextFragment then
                    print("[ERROR] Spawn translation not found!", subModuleID)
                end
                local subTextEntry = EID:FormatModuleDescription(moduleBehaviorEntry, subValue, subTextFragment)
                -- add icon of subentry to the beginning of the text
                local iconString = ""
                if moduleBehaviorEntry.Icon and type(moduleBehaviorEntry.Icon) == "table" and moduleBehaviorEntry.Icon[subModuleID] then
                    iconString = moduleBehaviorEntry.Icon[subModuleID] .. " "
                end
                moduleDescription = moduleDescription .. iconString .. subTextEntry
            end

            if moduleDescription ~= "" then
                description = description .. moduleDescription
            end
            return description
        end
    },
    ["TearEffect"] = {
        Priority = 5510,
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description)
            -- support single and multiple tear effects by turning single entries into a table
            if type(itemDataTableEntry) ~= "table" then
                itemDataTableEntry = {itemDataTableEntry}
            end
            local textFragment = ""
            for _, effect in ipairs(itemDataTableEntry) do
                local effectText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)[effect]
                if not effectText then
                    print("[ERROR] TearEffect translation not found!", effect)
                else
                    textFragment = textFragment .."#" .. effectText
                end
            end
            return description .. textFragment
        end
    },
    ["FullMapping"] = {
        Priority = 5520,
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description)
            local baseText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)["BaseDesc"]
            local valueText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)[itemDataTableEntry] or ""
            if not baseText then
                print("[ERROR] BaseDesc translation not found!", effect)
            else
                baseText = baseText:gsub("{exception}", valueText):gsub("%s+$", "")
                if not description:find("#$") then
                    return description .."#".. baseText
                end
                return description .. baseText
            end
            return description
        end
    },
    ["LuckChance"] = {
        Priority = -9950,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            -- build max luck information line
            local maxLuckText = EID:getDescriptionEntry("ModularDescriptions", "MaxLuck")
            local maxLuckPercent = string.format("%.2f", (itemDataTableEntry.Maximum or 1) * 100):gsub("%.?0+$", "")
            maxLuckText = maxLuckText:gsub("{max}", maxLuckPercent)
            maxLuckText = maxLuckText:gsub("{value}", EID:CalculateChanceWithLuck(itemDataTableEntry, true))
            -- append max luck info after the affected line
            local _, chanceVarPos = string.find(description, "{VAR:LUCKCHANCE}", 1, true)
            local nextLineStart = string.find(description, "#", chanceVarPos or 1, true)
            description = string.sub(description, 0 , nextLineStart) .. maxLuckText .. string.sub(description, nextLineStart or 0)
            -- replace variable with calculated chance
            description = description:gsub("{VAR:LUCKCHANCE}", EID:CalculateChanceWithLuck(itemDataTableEntry, false))
            return description
        end
    },
    ["EffectList"] = {
        -- Generic list of Effects to be placed inside the description, without any title text
        Priority = -9940,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "EffectList")
        end
    },
    ["RightEye"] = {
        Priority = 9500,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "RightEye")
        end
    },
    ["LeftEye"] = {
        Priority = 9500,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "LeftEye")
        end
    },
    ["RoomEffect"] = {
        Priority = -9930,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "RoomEffect")
        end
    },
    ["TimedEffect"] = {
        Priority = -9920,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "TimedEffect", "Duration")
        end
    },
    ["OnUseEffect"] = {
        Priority = -9910,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "OnUseEffect")
        end
    },
    ["HeldEffect"] = {
        Priority = -9900,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "HeldEffect")
        end
    },
    ["ItemDescription"] = {
        -- Adds the description of another item
        Priority = -9980,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            -- support single and multiple tear effects by turning single entries into a table
            if type(itemDataTableEntry) ~= "table" then
                itemDataTableEntry = {itemDataTableEntry}
            end
            for _, itemID in ipairs(itemDataTableEntry) do
                local itemDesc =  EID:GenerateDescription(itemID)
                if itemDesc and itemDesc ~= "" then
                    local numReplaced = 0
                    description, numReplaced = description:gsub("{VAR:ITEMDESCRIPTION}", itemDesc)
                    if numReplaced == 0 then
                        if not description:find("#$") then
                            description = description .."#".. itemDesc
                        else
                            description = description .. itemDesc
                        end
                    end
                end
            end
            return description
        end
    },
    -- Variable-like entries that require special handling
    ["Variables"] = {
        Priority = -9999,
        BehaviorFunc = function(_, itemDataTableEntry, description)
            -- Function to replace VAR markup with their specific content from the variables table
            description = description:gsub("{VAR:(.-)}", function(matchString)
                -- Try to capture main text and optional trailing numbers used to add multiple variables of the same type
                local variableName, number = matchString:match("^(.-)(%d*)$")
                -- if the variablename is a number, use generic handler
                local handlerName = variableName == "" and "FORMATTED" or variableName
                -- if a function for the given variable exists, use it and return its value
                local variableData = itemDataTableEntry[variableName] or
                    itemDataTableEntry[tonumber(number)] or itemDataTableEntry[matchString]
                if EID.DynamicVariableHandlers[handlerName] and variableData then
                    return EID.DynamicVariableHandlers[handlerName](variableData)
                else
                    if not EID.DynamicVariableHandlers[handlerName] then
                        print("[ERROR] No handler found for variable '"..tostring(handlerName).."' CurDescription:", description)
                    elseif not variableData then
                        print("[ERROR] No data-entry found for variable '"..tostring(variableName).."' CurDescription:", description)
                    end
                end
                -- return nil if no function was found, to not replace the Variable string
            end)
            return description
        end
    },
}
-- add name value to EID.ModuleBehaviors table
for k,v in pairs(EID.ModuleBehaviors) do v.Name = k end

function EID:CalculateChanceWithLuck(variableData, useMax)
    local luckValue = EID.player and EID.player.Luck or 0
    local top = variableData.Top or 1
    local bottom = variableData.Bottom or 1
    local multiplier = variableData.Multiplier or 1
    local maximum = variableData.Maximum or 1
    local luckFunc = variableData.Formula and EID.LuckFormulaPresets[variableData.Formula] or
    EID.LuckFormulaPresets.Default
    if useMax then
        local result = luckFunc.MaxFunc(top, bottom, multiplier, maximum)
        result = string.format("%.0f", result)
        return result
    else
        local result = math.min(luckFunc.ChanceFunc(luckValue, top, bottom, multiplier), maximum)
        -- if the luck value exceeds the maximum, it can produce negative values. we handle it as 100%
        result = result >= 0 and result or maximum
        result = string.format("%.2f", result * 100):gsub("%.?0+$", "")
        -- Colorize chance, if different than default
        return luckValue ~= 0 and "{{BlinkGreen}}"..result.."{{CR}}" or result
    end
end

EID.DynamicVariableHandlers = {
    FORMATTED = function(variableData)
        if type(variableData) == "table" then return tostring(variableData[1]) .. "-" .. tostring(variableData[2]) -- interpret a table as a range of numbers
        elseif type(variableData) == "number" then return string.format("%.2f", variableData):gsub("%.?0+$", "") -- format numbers to look better
        else return tostring(variableData) end -- return string otherwise
    end,
    RANGE = function(variableData) return tostring(variableData[1]) .. "-" .. tostring(variableData[2]) end,
    TEXT = function(variableData) return variableData end,
}


-- Formulas to calculate effect trigger change changes based on the player luck.
-- Each entry requires 2 functions. One calculates the chance based on the given luck. The second calculates the required luck to reach the maximum luck
EID.LuckFormulaPresets = {
    -- default calculation using most common calculation method. Example for Apple! = 1/(15-Luck) (6.66% at 0 Luck)  = top = 1, bottom = 15, multiplier = 1, maximum = 1
    Default = {
        -- source: Items listed in https://bindingofisaacrebirth.wiki.gg/wiki/Luck
        ChanceFunc = function(luckValue, top, bottom, multiplier)
            return top / (bottom - (luckValue * multiplier))
        end,
        -- created by solving top formula for Luck (L)
        -- T / (B - (L * M)) = MAX      | do * (B - (L * M))
        -- T = MAX * (B - (L * M))      | do * 1/MAX
        -- T / MAX = B - L * M          | do - B and * -1 and * 1/M
        -- (-T / MAX + B) / M = L
        MaxFunc = function(top, bottom, multiplier, maximum)
            return (-top / maximum + bottom) / multiplier
        end
    },
    Additive = {
        ChanceFunc = function(luckValue, top, bottom, multiplier)
            return top / bottom + (luckValue * multiplier)
        end,
        -- T/B + L*M = MAX | - T/B
        -- L*M = MAX - T/B | / M
        -- L = (MAX - T/B) / M
        MaxFunc = function(top, bottom, multiplier, maximum)
            return (maximum - top/bottom) / multiplier
        end
    }
}

-- DEBUG: Validate Module table entry existance
function EID:ValidateModuleEntry(ModuleID, additionalInfo)
    if not EID.ModuleBehaviors[ModuleID] then
        print("[ERROR] Unknown item Modul '"..ModuleID.."'", additionalInfo)
        return false
    end
    return true
end

-- DEBUG: Lists all similar description lines in AdditionalInformations to find potential duplicates
function EID:ListSimilarDescriptions(limit)
    local uniqueDescriptions = {}
    for _, description in pairs(EID.descriptions["en_us"].AdditionalInformations) do
        for line in string.gmatch(description, "[^#]+") do
            line = line:gsub("([%+%-x]?[%d%.]+)", "XXX"):gsub("↑", ""):gsub("{{.*}}", ""):gsub("{.*}", ""):gsub("↓", ""):gsub("^%s+", ""):gsub("%s+$", "")
            if line ~= "" then
                if uniqueDescriptions[line] then
                    uniqueDescriptions[line] = uniqueDescriptions[line] + 1
                else
                    uniqueDescriptions[line] = 1
                end
            end
        end
    end
    
    for k, v in pairs(uniqueDescriptions) do
        if v >= limit then
            print(v,k)
            Isaac.DebugString(v..";"..k)
        end
    end
end

-- DEBUG: Compares an update table of a newer DLC with the previous DLC entries, to find duplicates or redundancies
function EID:CompareWithPreviousDLC(newDLCTable, oldDLCTable, dlcName)
    for id, description in pairs(newDLCTable) do
        local equalLines = 0
        local lineCountNew = 0
        local lineCountOld = 0
        local uniqueLinesNew = {}
        for line in string.gmatch(description, "[^#]+") do
            line = line:gsub("([%+%-x]?[%d%.]+)", "XXX"):gsub("↑", ""):gsub("↓", ""):gsub("{{.*}}", ""):gsub("^%s+", "")
            uniqueLinesNew[line] = true
            lineCountNew = lineCountNew + 1
        end

        if oldDLCTable[id] then
            for line in string.gmatch(oldDLCTable[id], "[^#]+") do
                lineCountOld = lineCountOld + 1
                line = line:gsub("([%+%-x]?[%d%.]+)", "XXX"):gsub("↑", ""):gsub("↓", ""):gsub("{{.*}}", ""):gsub("^%s+", "")
                if uniqueLinesNew[line] then
                    equalLines = equalLines + 1
                end
            end
            if lineCountOld == lineCountNew and lineCountOld == equalLines then
                print(dlcName, "Identical entry for " .. id .. " is a duplicate of the old one!")
            elseif equalLines > 0 then
                --print("Partial match for " .. id .. ": " .. oldDLCTable[id] .. " |||| " .. description)
            end
        end
    end
end

-- Handles a modular description entry by calling its BehaviorFunc or the default generator
function EID:HandleModuleEntry(moduleBehaviorEntry, itemDataTableEntry, description)
    if not moduleBehaviorEntry or not itemDataTableEntry then
        print("[ERROR] (EID:HandleModuleEntry) Missing ModuleBehavior entry or ItemData table entry!", moduleBehaviorEntry, itemDataTableEntry, description)
        return description
    end
    if type(moduleBehaviorEntry.BehaviorFunc) == "function" then
        return moduleBehaviorEntry.BehaviorFunc(moduleBehaviorEntry, itemDataTableEntry, description)
    end
    -- default behavior
    return EID:GenerateDefaultModuleDescription(moduleBehaviorEntry, itemDataTableEntry, description)
end

-- Applies a modular description for a nested modular entry (e.g. TimedEffect or RoomEffect)
-- If the moduleName is given, it will try to replace {VAR:moduleName}
-- If applyValueWithName is given, it will replace {value} in the module description with the value of the given name
function EID:ApplyModularNestedDescription(itemDataTableEntry, description, moduleName, applyValueWithName)
    -- Get base text fragment for the module
    local moduleText = EID:getDescriptionEntry("ModularDescriptions", moduleName)
    local textFragment = moduleText and (moduleText .. "#") or ""

    -- replace value if a specific value name is given
    if applyValueWithName then
        local value = string.format("%.2f", itemDataTableEntry[applyValueWithName] or "UNDEFINED"):gsub("%.?0+$", "")
        textFragment = textFragment:gsub("{value}", value)
    end
    -- add subdata entries
    local sortedmodules = EID:GetSortedModularDescriptionEntries(itemDataTableEntry, true)
    for _, moduleBehaviorEntry in ipairs(sortedmodules) do
        local moduleID = moduleBehaviorEntry.Name
        if EID:ValidateModuleEntry(moduleID, "located in a '"..moduleName.."' element") then
            if not (applyValueWithName and moduleID == applyValueWithName) then
                textFragment = EID:HandleModuleEntry(EID.ModuleBehaviors[moduleID], itemDataTableEntry[moduleID], textFragment)
            end
        end
    end
    -- remove leading/trailing # and multiple # in a row. Makes translation more readable in some places, if a # is explicitly added
    textFragment = textFragment:gsub("#$", ""):gsub("^#", ""):gsub("#+", "#")
    -- Indent content by one
    textFragment = textFragment:gsub("#", "#{{IND}}"):gsub("%%", "%%%%")

    -- Try replace inline variable
    local numReplaced = 0
    description, numReplaced = description:gsub("{VAR:"..string.upper(moduleName).."}", textFragment)
    if numReplaced == 0 then
        if not description:find("#$") then
            return description .."#".. textFragment
        end
        return description .. textFragment
    end
    return description
end

function EID:GetSortedModularDescriptionEntries(itemDataTable, combineTables, validateEntries, debugInfo)
    -- sort modules of selected Item by priority
    local sortedModulesPositivePrio = {}
    local sortedModulesNegativePrio = {}
    for moduleID, _ in pairs(itemDataTable) do
        if validateEntries and EID:ValidateModuleEntry(moduleID, "in "..debugInfo) or EID.ModuleBehaviors[moduleID] then
            if EID.ModuleBehaviors[moduleID].Priority > 0 then
                table.insert(sortedModulesPositivePrio, EID.ModuleBehaviors[moduleID])
            else
                table.insert(sortedModulesNegativePrio, EID.ModuleBehaviors[moduleID])
            end
        end
    end
    table.sort(sortedModulesPositivePrio, function(a, b) return a.Priority > b.Priority end)
    table.sort(sortedModulesNegativePrio, function(a, b) return a.Priority > b.Priority end)
    if combineTables then
        return EID:ConcatTables(sortedModulesPositivePrio, sortedModulesNegativePrio)
    end
    return sortedModulesPositivePrio, sortedModulesNegativePrio
end

-- Tries to generate a description for an item based on its modules defined in EID.ItemData
-- Returns an empty string if no modules are defined for the item
function EID:GenerateDescription(itemID)
    local itemDataTable = EID.ItemData[itemID]
    local additionalInfo = EID:getDescriptionEntry("AdditionalInformations", itemID)
    -- return empty string or additionalInfo, if no ItemData are defined
    if not itemDataTable then
        return additionalInfo or "", ""
    end

    local sortedModulesPositivePrio, sortedModulesNegativePrio = EID:GetSortedModularDescriptionEntries(itemDataTable, false, true, itemID)

    local description = ""

    -- Add module information with positive priority
    for _, moduleBehaviorEntry in ipairs(sortedModulesPositivePrio) do
        description = EID:HandleModuleEntry(moduleBehaviorEntry, itemDataTable[moduleBehaviorEntry.Name], description)
    end

    -- remove trailing #
    description = description:gsub("#$", "")

    -- Append additional informations
    if additionalInfo then
        if description ~= "" then
            description = description .. "#" .. additionalInfo
        else
            description = additionalInfo
        end
    end
    -- add linebreak between additional information and negative priority modules
    if not string.find(description, "#$") then
        description = description .. "#"
    end

    -- Add module information with negative priority
    for _, moduleBehaviorEntry in ipairs(sortedModulesNegativePrio) do
        description = EID:HandleModuleEntry(moduleBehaviorEntry, itemDataTable[moduleBehaviorEntry.Name], description)
    end
    -- remove leading/trailing # and multiple # in a row. Makes translation more readable in some places, if a # is explicitly added
    description = description:gsub("#$", ""):gsub("^#", ""):gsub("#+", "#")

    return description, additionalInfo
end

-- Default modular description generator, used if no BehaviorFunc is defined
function EID:GenerateDefaultModuleDescription(moduleBehaviorEntry, itemDataValue, description)
    local moduleID = moduleBehaviorEntry.Name
    local textFragment = EID:getDescriptionEntry("ModularDescriptions", moduleID)
    local moduleDescription = EID:FormatModuleDescription(moduleBehaviorEntry, itemDataValue, textFragment)
    if moduleDescription then
        if not description:find("#$") then
            return description .."#".. moduleDescription
        else
            return description .. moduleDescription
        end
    end
end

-- Formats a modular description line based on the module behavior entry and the given value
function EID:FormatModuleDescription(moduleBehaviorEntry, value, textFragment)
    local isMultiplier = moduleBehaviorEntry.IsMultiplier

    if textFragment then
        -- if the value is a table, we handle it as a range of values
        if  type(value) == "table" then
            local rangeValue = tostring(value[1]) .. "-" .. tostring(value[2])
            textFragment = textFragment:gsub("{value}", rangeValue)
            value = value[2] -- for pluralization, take the maximum value
        else
            -- If value is not of type number, we assume 1
            if type(value) == "number" then
                -- formated and without trailing zeros
                local formattedValue = string.format("%.2f", value):gsub("%.?0+$", "")

                -- Handle sign
                if not moduleBehaviorEntry.HideSign then
                    local sign = isMultiplier and "x" or value > 0 and "+" or ""
                    formattedValue = sign .. formattedValue
                end
                -- Put formatted value into text fragment
                textFragment = textFragment:gsub("{value}", formattedValue)
            else
                textFragment = textFragment:gsub("{value}", tostring(value))
                value = 1 -- for further evaluations
            end
        end
    end

    -- arrow up/down and icon decoration
    local decoration = ""
    if moduleBehaviorEntry.Arrow then
        if moduleBehaviorEntry.InvertArrow then
            if isMultiplier then
                decoration = value >= 1 and "↓ " or "↑ "
            else
                decoration = value >= 0 and "↓ " or "↑ "
            end
        else
            if isMultiplier then
                -- multipliers smaller 1 are a negative effect
                decoration = value >= 1 and "↑ " or "↓ "
            else
                decoration = value >= 0 and "↑ " or "↓ "
            end
        end
    end
    if moduleBehaviorEntry.Icon and type(moduleBehaviorEntry.Icon) ~= "table" then
        decoration = decoration .. moduleBehaviorEntry.Icon
    end

    local text = (decoration or "") .. " " .. (textFragment or "") .. "#"
    -- try pluralize
    text = EID:TryPluralizeString(text, value)
    -- remove leading and double spaces
    text = text:gsub("  +", " "):gsub("^%s+", "")

    return text
end

-- DEBUG FUNCTION
-- DEBUG ignore entries list, which are automated correctly, but maybe have different order of lines
local ignoreList = {
    ["5.100.34"] = true,
    ["5.100.35"] = true,
    ["5.100.40"] = true,
    ["5.100.41"] = true,
    ["5.100.58"] = true,
    ["5.100.59"] = true,
    ["5.100.72"] = true,
    ["5.100.77"] = true,
    ["5.100.78"] = true,
    ["5.100.83"] = true, -- +0.5 Black heart looks weird
    ["5.100.93"] = true,

    ["5.100.106"] = true,
    ["5.100.112"] = true,
    ["5.100.117"] = true,
    ["5.100.154"] = true,
    ["5.100.155"] = true,
    ["5.100.158"] = true,
    ["5.100.172"] = true,
    ["5.100.186"] = true,

    ["5.100.219"] = true,
    ["5.100.251"] = true,
    ["5.100.252"] = true,
    ["5.100.254"] = true,
    ["5.100.263"] = true,
    ["5.100.281"] = true,
    ["5.100.287"] = true,
    ["5.100.288"] = true,
    ["5.100.298"] = true,

    ["5.100.336"] = true,
    ["5.100.340"] = true,
    ["5.100.354"] = true,
    
    ["5.100.404"] = true,
    ["5.100.433"] = true,
    ["5.100.439"] = true,
    ["5.100.451"] = true,
    ["5.100.458"] = true,
    ["5.100.468"] = true,
    ["5.100.471"] = true,
    ["5.100.473"] = true,
    ["5.100.481"] = true,
    ["5.100.487"] = true,
    ["5.100.499"] = true,

    ["5.100.503"] = true,
    ["5.100.504"] = true,
    ["5.100.511"] = true,
    ["5.100.548"] = true,
    -- Repentance
    ["5.100.555"] = true,
    ["5.100.556"] = true,
    ["5.100.584"] = true,
    ["5.100.588"] = true,
    ["5.100.594"] = true, -- TODO (Jupiter): Heals 0.5 Heart looks weird

    ["5.100.600"] = true,
    ["5.100.601"] = true,
    ["5.100.605"] = true,
    ["5.100.607"] = true,
    ["5.100.624"] = true,
    ["5.100.625"] = true,
    ["5.100.626"] = true,
    ["5.100.627"] = true,
    ["5.100.633"] = true,
    ["5.100.655"] = true,
    ["5.100.686"] = true,
    ["5.100.693"] = true,
    
    ["5.100.716"] = true,
    ["5.100.731"] = true,
    ---------- TRINKETS --------
    ["5.350.7"] = true, -- Line fix: Angel room chance
    ["5.350.8"] = true,
    ["5.350.21"] = true,
    ["5.350.33"] = true,
    ["5.350.67"] = true,
    ["5.350.96"] = true, -- Line fix: Homing tears
    ["5.350.145"] = true, -- Line fix: Luck up
    ["5.350.157"] = true,
    ["5.350.159"] = true, -- Line fix: Keys on Pickup
    ["5.350.175"] = true,
    ["5.350.183"] = true,

    ---------- CARDS --------
    ["5.300.8"] = true,
    ["5.300.13"] = true,
    ["5.300.14"] = true,
    ["5.300.39"] = true,
    ["5.300.53"] = true,
    ["5.300.93"] = true,

    ---------- Pills --------
    ["5.70.6"] = true,
    ["5.70.8"] = true,
    ["5.70.33"] = true,
    ["5.70.34"] = true,
    ["5.70.37"] = true,
    ["5.70.46"] = true,

    ["5.70.2056"] = true,
    ["5.70.2069"] = true,
    ["5.70.2072"] = true,
    ["5.70.2085"] = true,
    ["5.70.2094"] = true,
}


local oldWordCount = {}
function EID:DEBUGCountWordsOld(DLC, tablesTODO)
    oldWordCount[DLC] = 0
    for _, v in ipairs(tablesTODO) do
        for _, desc in pairs(v) do
            -- gather word count statistics
            local cleaned = desc[3]:gsub("#", " "):gsub("{{.-}}", ""):gsub("{.-}", ""):gsub("^%s+", ""):gsub("%s+$", "")
            local _, wordCount = cleaned:gsub("%S+", "")
            oldWordCount[DLC] = oldWordCount[DLC] + wordCount
        end
    end
end

local newWordCount = {}
function EID:DEBUGCountWordsNew(DLC, tablesTODO)
    newWordCount[DLC] = 0
    for _, v in ipairs(tablesTODO) do
        for _, desc in pairs(v) do
            if type(desc) == "string" then
            -- gather word count statistics
            local cleaned = desc:gsub("#", " "):gsub("{{.-}}", ""):gsub("{.-}", ""):gsub("^%s+", ""):gsub("%s+$", "")
            local _, wordCount = cleaned:gsub("%S+", "")
            newWordCount[DLC] = newWordCount[DLC] + wordCount
            else
                for _, desc2 in pairs(desc) do
                    if type(desc2) == "string" then
                        -- gather word count statistics
                        local cleaned = desc2:gsub("#", " "):gsub("{{.-}}", ""):gsub("{.-}", ""):gsub("^%s+", ""):gsub("%s+$", "")
                        local _, wordCount = cleaned:gsub("%S+", "")
                        newWordCount[DLC] = newWordCount[DLC] + wordCount
                    end
                end
            end
        end
    end
end

local function splitLines(s)
    local t = {}
    for line in string.gmatch(s or "", "[^#]+") do
        line = line:gsub("([%+%-x]?[%d%.]+)", "XXX"):gsub("↑", ""):gsub("↓", ""):gsub("{{.*}}", ""):gsub("^%s+", "")
        if line ~= "" then table.insert(t, line) end
    end
    return t
end

-- Compare generated description with original description for an item
local successCounter = 0
local partialCounter = 0
function EID:CompareGeneralizedDescriptions(type, variant, subtype)
    local itemTypeString = type .. "." .. variant .. "." .. subtype
    local original = EID:getDescriptionObj(type, variant, subtype, null, false)
    local originalEntry = EID:getDescriptionEntry(EID:getTableName(type, variant, subtype), subtype % PillColor.PILL_GIANT_FLAG)
    local origText = originalEntry[3]

    local generated, additional = EID:GenerateDescription(itemTypeString)

    -- Evaluate the completeness of the generated description compared to the original description
    if origText == generated then
        if not additional then
            successCounter = successCounter + 1
        else
            partialCounter = partialCounter + 1
        end
        return true
    elseif generated == "" then
        if original.Name:find("5.") then
            successCounter = successCounter + 1
            return true
        end
        print("[ERROR] No generated description for item " .. itemTypeString .. " (" .. originalEntry[2] .. ")")
        return false
    else
        if ignoreList[itemTypeString] then
            successCounter = successCounter + 1
            return true
        end

        local origLines = splitLines(origText)
        local generatedLines = splitLines(generated)
        local matchButNotSorted = true
        -- compare lines individually to find missing lines
        for _, origLine in pairs(origLines) do
            local hasMatch = false
            for _, genLine in pairs(generatedLines) do
                if origLine == genLine then
                    hasMatch = true
                    break
                end
            end
            if not hasMatch then
                print("[ERROR] Line not found in generated description '"..itemTypeString.."' (" .. originalEntry[2] .. "): " .. origLine)
                matchButNotSorted = false
            end
        end

        if matchButNotSorted then
            successCounter = successCounter + 1
            return true
        else
            print("Original:", origText)
            print("Generated:", generated)
            print() -- empty line
        end
        return false
    end
end

-- DEBUG FUNCTION
-- Compare generated description with original description for an item
function EID:CompareGeneralizedDescriptionsMulti(type, variant, startID, endID, DLCName)
    successCounter = 0
    partialCounter = 0
    for subtype = startID, endID do
        EID:CompareGeneralizedDescriptions(type, variant, subtype)
    end
    print("<"..tostring(DLCName).."> Fully Automated:", successCounter, "| Partially:", partialCounter, "| Total:", (endID - startID + 1))
    return successCounter, partialCounter, (endID - startID + 1)
end

function EID:MODULARTEST()
    local totalsuccess, totalpartial, totaltotal = 0, 0, 0
    local todo = {
        {5,100,1,CollectibleType.NUM_COLLECTIBLES-1,"Collectibles"},
        {5,300,1,Card.NUM_CARDS-1,"Cards"},
        {5,70,1,44,"Pills 1-44"},-- skip 45
        {5,70,46,PillEffect.NUM_PILL_EFFECTS-1,"Pills 46-max"},
        {5,70,1+PillColor.PILL_GIANT_FLAG, 44 + PillColor.PILL_GIANT_FLAG,"Horsepills 1-44"},-- skip 45
        {5,70,46+PillColor.PILL_GIANT_FLAG,PillEffect.NUM_PILL_EFFECTS-1+PillColor.PILL_GIANT_FLAG,"Horsepills 46-max"},
        {5,350,1,TrinketType.NUM_TRINKETS-1,"Trinkets"},
    }

    for _, params in ipairs(todo) do
        local success, partial, total = EID:CompareGeneralizedDescriptionsMulti(params[1], params[2], params[3],
            params[4], params[5])
        totalsuccess = totalsuccess + success
        totalpartial = totalpartial + partial
        totaltotal = totaltotal + total
    end

    print("TOTAL: Fully Automated:", totalsuccess, "| Partially:", totalpartial, "| Total:", totaltotal, "(".. string.format("%.2f", (totalsuccess / totaltotal) * 100).."%)")
    
    -- Get word counts
    local totalOrigWords = 0
    local totalAddWords = 0
    for dlc, val in pairs(oldWordCount) do
        totalOrigWords = totalOrigWords + val
        totalAddWords = totalAddWords + newWordCount[dlc]
        print("Word cound '"..dlc.."':", "old:",val, "new:",newWordCount[dlc])
    end
    print("TOTAL: Words before:", totalOrigWords, "| after:", totalAddWords, "| Diff:", string.format("%.2f%%", (totalAddWords/totalOrigWords-1) * 100))
    
end