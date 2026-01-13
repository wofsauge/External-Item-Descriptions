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
    ["DamageTemp"] = { Priority = 9870, Arrow = true, Icon = "{{Timer}}" },
    ["BombDamage"] = { Priority = 9860, Arrow = true, Icon = "{{Bomb}}", IsMultiplier = true },
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
    ["CoinHeart"] = { Priority = 8990, Arrow = true, Icon = "{{CoinHeart}}" },
    ["FullHealth"] = { Priority = 8980, Icon = "{{HealingRed}}", HideSign = true },
    ["HealingRed"] = { Priority = 8970, Icon = "{{HealingRed}}", HideSign = true },
    ["HealingCoin"] = { Priority = 8970, Icon = "{{HealingCoin}}", HideSign = true },
    ["SoulHeart"] = { Priority = 8960, Icon = "{{SoulHeart}}" },
    ["BlackHeart"] = { Priority = 8950, Icon = "{{BlackHeart}}" },
    ["BoneHeart"] = { Priority = 8940, Icon = "{{EmptyBoneHeart}}" },
    ["EternalHeart"] = { Priority = 8930, Icon = "{{EternalHeart}}" },
    ["GoldenHeart"] = { Priority = 8920, Icon = "{{GoldenHeart}}" },
    ["RottenHeart"] = { Priority = 8910, Icon = "{{RottenHeart}}" },
    ["BrokenHeart"] = { Priority = 8910, Icon = "{{BrokenHeart}}" },
    ["EmptyHeart"] = { Priority = 8900, Icon = "{{EmptyHeart}}" },
    ["EmptyCoinHeart"] = { Priority = 8900, Icon = "{{EmptyCoinHeart}}" },

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
    ["FlyOrbital"] = { Priority = 5990 },
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
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description, indent)
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

            return EID:AddModularTextLineToDescription(description, moduleDescription, indent)
        end
    },
    ["TearEffect"] = {
        Priority = 5510,
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description)
            -- support single and multiple tear effects by turning single entries into a table
            if type(itemDataTableEntry) ~= "table" then
                itemDataTableEntry = {itemDataTableEntry}
            end
            for _, effect in ipairs(itemDataTableEntry) do
                local effectText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)[effect]
                description = EID:AddModularTextLineToDescription(description, effectText, indent)
            end
            return description
        end
    },
    ["FullMapping"] = {
        Priority = 5520,
        BehaviorFunc = function(moduleBehaviorEntry, itemDataTableEntry, description, indent)
            local baseText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)["BaseDesc"]
            local valueText = EID:getDescriptionEntry("ModularDescriptions", moduleBehaviorEntry.Name)[itemDataTableEntry] or ""
            if not baseText then
                print("[ERROR] BaseDesc translation not found!", effect)
            else
                baseText = baseText:gsub("{exception}", valueText):gsub("%s+$", "")
                return EID:AddModularTextLineToDescription(description, baseText, indent)
            end
            return description
        end
    },
    ["LuckChance"] = {
        Priority = -9950,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            -- build max luck information line
            local maxLuckText = EID:getDescriptionEntry("ModularDescriptions", "MaxLuck")
            local maxLuckPercent = EID:PrettyPrintValue((itemDataTableEntry.Maximum or 1) * 100)
            maxLuckText = maxLuckText:gsub("{max}", maxLuckPercent)
            local maxLuckVal = EID:CalculateChanceWithLuck(itemDataTableEntry, true)
            if EID.player and EID.player.Luck >= maxLuckVal then
                maxLuckText = "" -- dont show max luck info if player already has enough luck
            else
                maxLuckText = maxLuckText:gsub("{value}", maxLuckVal)
            end
            -- append max luck info after the affected line
            local _, chanceVarPos = string.find(description, "{VAR:LUCKCHANCE}", 1, true)
            local nextLineStart = string.find(description, "#", chanceVarPos or 1, true)
            -- add max Luck description line right after the affected line, then add the rest
            local newDesc = EID:AddModularTextLineToDescription(string.sub(description, 0 , nextLineStart), maxLuckText, indent)
            newDesc = newDesc .. string.sub(description, nextLineStart or 0)
            -- replace variable with calculated chance
            newDesc = newDesc:gsub("{VAR:LUCKCHANCE}", EID:CalculateChanceWithLuck(itemDataTableEntry, false))
            return newDesc
        end
    },
    ["EffectList"] = {
        -- Generic list of Effects to be placed inside the description, without any title text
        Priority = -9940,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "EffectList", nil, indent)
        end
    },
    ["RightEye"] = {
        Priority = 9500,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "RightEye", nil, indent)
        end
    },
    ["LeftEye"] = {
        Priority = 9500,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "LeftEye", nil, indent)
        end
    },
    ["RoomEffect"] = {
        Priority = -9930,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "RoomEffect", nil, indent)
        end
    },
    ["TimedEffect"] = {
        Priority = -9920,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "TimedEffect", "Duration", indent)
        end
    },
    ["OnUseEffect"] = {
        Priority = -9910,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "OnUseEffect", nil, indent)
        end
    },
    ["HeldEffect"] = {
        Priority = -9900,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            indent = indent or 0
            return EID:ApplyModularNestedDescription(itemDataTableEntry, description, "HeldEffect", nil, indent)
        end
    },
    ["ItemDescription"] = {
        -- Adds the description of another item
        Priority = -9980,
        BehaviorFunc = function(_, itemDataTableEntry, description, indent)
            -- support single and multiple tear effects by turning single entries into a table
            if type(itemDataTableEntry) ~= "table" then
                itemDataTableEntry = {itemDataTableEntry}
            end
            for _, itemID in ipairs(itemDataTableEntry) do
                local itemDesc =  EID:GenerateDescription({fullItemString = itemID})
                if itemDesc and itemDesc ~= "" then
                    local numReplaced = 0
                    description, numReplaced = description:gsub("{VAR:ITEMDESCRIPTION}", itemDesc)
                    if numReplaced == 0 then
                        description = EID:AddModularTextLineToDescription(description, itemDesc, indent)
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

-- Metatable to automatically set the Name field of ModuleBehaviors when a new entry is added
for k,v in pairs(EID.ModuleBehaviors) do v.Name = k end
setmetatable(EID.ModuleBehaviors, { __newindex = function(_, key, value)
    if type(value) == "table" then rawset(value, "Name", key) end
    rawset(self, key, value) end
})

EID.ModularDataModifiers = {}

-- Formats a number to a string, removing trailing zeros after the decimal point
function EID:PrettyPrintValue(value)
    return string.format("%.2f", value):gsub("%.?0+$", "")
end

-- Calculates a chance value based on the given luck and variable data
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
        return math.floor(result)
    else
        local result = math.min(luckFunc.ChanceFunc(luckValue, top, bottom, multiplier), maximum)
        -- if the luck value exceeds the maximum, it can produce negative values. we handle it as 100%
        result = result >= 0 and result or maximum
        -- Colorize chance, if different than default
        result = EID:PrettyPrintValue(result * 100)
        return luckValue ~= 0 and "{{BlinkGreen}}".. result .."{{CR}}" or result
    end
end

EID.DynamicVariableHandlers = {
    FORMATTED = function(variableData)
        if type(variableData) == "table" then return tostring(variableData[1]) .. "-" .. tostring(variableData[2]) -- interpret a table as a range of numbers
        elseif type(variableData) == "number" then return EID:PrettyPrintValue(variableData)
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

-- Handles a modular description entry by calling its BehaviorFunc or the default generator
function EID:GenerateTextFromModuleEntry(moduleBehaviorEntry, itemDataTableEntry, description, indent)
    if not moduleBehaviorEntry or not itemDataTableEntry then
        print("[ERROR] (EID:HandleModuleEntry) Missing ModuleBehavior entry or ItemData table entry!", moduleBehaviorEntry, itemDataTableEntry, description)
        return description
    end
    if type(moduleBehaviorEntry.BehaviorFunc) == "function" then
        local success, modifiedDescription = pcall(moduleBehaviorEntry.BehaviorFunc, moduleBehaviorEntry, itemDataTableEntry, description, indent)
        if not success then
            -- Make the error messages of BehaviorFuncs more verbose, by using pcall
            error("[ERROR] Error in BehaviorFunc of entry '" .. moduleBehaviorEntry.Name.."': ".. tostring(modifiedDescription))
        end
        return success and modifiedDescription or description
    end
    -- default behavior
    return EID:GenerateDefaultModuleDescription(moduleBehaviorEntry, itemDataTableEntry, description, indent)
end

-- Applies a modular description for a nested modular entry (e.g. TimedEffect or RoomEffect)
-- If the moduleName is given, it will try to replace {VAR:moduleName}
-- If applyValueWithName is given, it will replace {value} in the module description with the value of the given name
function EID:ApplyModularNestedDescription(itemDataTableEntry, description, moduleName, applyValueWithName, indent)
    -- Get base text fragment for the module
    local moduleText = EID:getDescriptionEntry("ModularDescriptions", moduleName)
    local textFragment = moduleText and (moduleText .. "#") or ""

    -- replace value if a specific value name is given
    if applyValueWithName then
        local value = EID:PrettyPrintValue(itemDataTableEntry[applyValueWithName] or "UNDEFINED")
        textFragment = textFragment:gsub("{value}", value)
        if tonumber(value) then
            textFragment = EID:TryPluralizeString(textFragment, tonumber(value))
        end
    end
    -- add subdata entries
    local sortedmodules = EID:GetSortedModularDescriptionEntries(itemDataTableEntry, true)
    for _, moduleBehaviorEntry in ipairs(sortedmodules) do
        local moduleID = moduleBehaviorEntry.Name
        if EID:ValidateModuleEntry(moduleID, "located in a '"..moduleName.."' element") then
            if not (applyValueWithName and moduleID == applyValueWithName) then
                textFragment = EID:GenerateTextFromModuleEntry(EID.ModuleBehaviors[moduleID], itemDataTableEntry[moduleID], textFragment, (indent or 0) + 1)
            end
        end
    end
    -- remove leading/trailing # and multiple # in a row. Makes translation more readable in some places, if a # is explicitly added
    textFragment = textFragment:gsub("#$", ""):gsub("^#", ""):gsub("#+", "#")
    -- Escape % signs in text, to prevent pattern-matching errors
    textFragment = textFragment:gsub("%%", "%%%%")

    -- Try replace inline variable
    local numReplaced = 0
    description, numReplaced = description:gsub("{VAR:"..string.upper(moduleName).."}", textFragment)
    if numReplaced == 0 then
        return EID:AddModularTextLineToDescription(description, textFragment, indent)
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

---Apply Description Modifier to a given description object
---@param itemDataTable table
---@param descObj EID_DescObj
---@return table
function EID:ApplyModularDataModifier(itemDataTable, descObj)
    local dataCopy = EID:CopyTable(itemDataTable)
	for _,modifier in ipairs(EID.ModularDataModifiers) do
		local result = modifier.condition(dataCopy, descObj)
		if type(result) == "table" then
			for _,callback in ipairs(result) do
				dataCopy = callback(dataCopy, descObj)
			end
		elseif result then
			dataCopy = modifier.callback(dataCopy, descObj)
		end
	end
	return dataCopy
end

-- Tries to generate a description for an item based on its modules defined in EID.ItemData
-- Returns an empty string if no modules are defined for the item
function EID:GenerateDescription(descriptionObj)
    local itemID = descriptionObj.fullItemString
    if not itemID then return nil end
    if EID.descriptions[EID:getLanguage()].DisableModularDescriptions then return nil end

    local itemDataTable = EID.ItemData[itemID]
    -- return empty string if no ItemData are defined
    if not itemDataTable then
        return ""
    end

    itemDataTable = EID:ApplyModularDataModifier(itemDataTable, descriptionObj)

    local sortedModulesPositivePrio, sortedModulesNegativePrio = EID:GetSortedModularDescriptionEntries(itemDataTable, false, true, itemID)

    local description = ""

    -- Add module information with positive priority
    for _, moduleBehaviorEntry in ipairs(sortedModulesPositivePrio) do
        description = EID:GenerateTextFromModuleEntry(moduleBehaviorEntry, itemDataTable[moduleBehaviorEntry.Name], description, 0)
    end

    -- add linebreak between additional information and negative priority modules
    if not string.find(description, "#$") then
        description = description .. "#"
    end

    -- Add module information with negative priority
    for _, moduleBehaviorEntry in ipairs(sortedModulesNegativePrio) do
        description = EID:GenerateTextFromModuleEntry(moduleBehaviorEntry, itemDataTable[moduleBehaviorEntry.Name], description, 0)
    end
    -- remove leading/trailing # and multiple # in a row. Makes translation more readable in some places, if a # is explicitly added
    description = description:gsub("#$", ""):gsub("^#", ""):gsub("#+", "#")

    return description
end

-- Default modular description generator, used if no BehaviorFunc is defined
function EID:GenerateDefaultModuleDescription(moduleBehaviorEntry, itemDataValue, description, indent)
    local moduleID = moduleBehaviorEntry.Name
    local textFragment = EID:getDescriptionEntry("ModularDescriptions", moduleID)
    local moduleDescription = EID:FormatModuleDescription(moduleBehaviorEntry, itemDataValue, textFragment)
    return EID:AddModularTextLineToDescription(description, moduleDescription, indent)
end

function EID:AddModularTextLineToDescription(description, textToAdd, indent)
    if textToAdd and textToAdd ~= "" then
        if indent and indent > 0 then
            textToAdd = string.rep("{{IND}}", indent) .. textToAdd
        end
        if not description:find("#$") then
            description = description .."#".. textToAdd
        else
            description = description .. textToAdd
        end
    end
    return description
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
                local formattedValue = EID:PrettyPrintValue(value)

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

-- DEBUG: Validate Module table entry existance
function EID:ValidateModuleEntry(ModuleID, additionalInfo)
    if not EID.ModuleBehaviors[ModuleID] then
        print("[ERROR] Unknown item Modul '"..ModuleID.."'", additionalInfo)
        return false
    end
    return true
end