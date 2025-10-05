-- List of available stats in order of priority. Higher priority stats are listed first in the description.
-- Arrow indicates if an up/down arrow should be shown for positive/negative values.
-- Icon indicates what icon should be shown before the stat.
-- IsMultiplier indicates if the stat is a multiplier (e.g. TearsMultiplier) and should be formatted with "x" instead of "+".
-- HideSign indicates if the sign (+/-/x) should be hidden for the stat value
EID.StatisticsData = {
    -- Player Stats
    ["TearsMultiplier"] = { Priority = 9990, Arrow = true, Icon = "{{Tears}}", IsMultiplier = true },
    ["Tears"] = { Priority = 9980, Arrow = true, Icon = "{{Tears}}" },
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

    -- Dynamic Spawns
    ["Spawns"] = {
        Priority = 5500,
        IsSubCategory = true,
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
        }
    },
    ["LuckChance"] = {
        Priority = -9940,
        BehaviorFunc = function(_, itemStatsTableEntry, description)
            -- build max luck information line
            local maxLuckText = EID:getDescriptionEntry("ModularDescriptions", "MaxLuck")
            local maxLuckPercent = string.format("%.2f", (itemStatsTableEntry.Maximum or 1) * 100):gsub("%.?0+$", "")
            maxLuckText = maxLuckText:gsub("{max}", maxLuckPercent)
            maxLuckText = maxLuckText:gsub("{value}", EID:CalculateChanceWithLuck(itemStatsTableEntry, true))
            -- append max luck info after the affected line
            local _, chanceVarPos = string.find(description, "{VAR:LUCKCHANCE}", 1, true)
            local nextLineStart = string.find(description, "#", chanceVarPos or 1, true)
            description = string.sub(description, 0 , nextLineStart) .. maxLuckText .. string.sub(description, nextLineStart or 0)
            -- replace variable with calculated chance
            description = description:gsub("{VAR:LUCKCHANCE}", EID:CalculateChanceWithLuck(itemStatsTableEntry, false))
            return description
        end
    },
    -- Variable-like entries that require special handling
    ["Variables"] = {
        Priority = -9900,
        BehaviorFunc = function(_, itemStatsTableEntry, description)
            -- Function to replace VAR markup with their specific content from the variables table
            description = description:gsub("{VAR:(.-)}", function(matchString)
                -- Try to capture main text and optional trailing numbers used to add multiple variables of the same type
                local variableName, number = matchString:match("^(.-)(%d*)$")
                -- if the variablename is a number, use generic handler
                local handlerName = variableName == "" and "FORMATTED" or variableName
                -- if a function for the given variable exists, use it and return its value
                local variableData = itemStatsTableEntry[variableName] or
                    itemStatsTableEntry[tonumber(number)] or itemStatsTableEntry[matchString]
                if EID.DynamicVariableHandlers[handlerName] and variableData then
                    return EID.DynamicVariableHandlers[handlerName](variableData)
                else
                    if not EID.DynamicVariableHandlers[handlerName] then
                        print("[ERROR] No handler found for variable '"..tostring(handlerName).."'")
                    elseif not variableData then
                        print("[ERROR] No data-entry found for variable '"..tostring(variableName).."'")
                    end
                end
                -- return nil if no function was found, to not replace the Variable string
            end)
            return description
        end
    },
    ["RoomEffect"] = {
        Priority = -9900,
        BehaviorFunc = function(_, itemStatsTableEntry, description)
            return EID:ApplyModularNestedDescription(itemStatsTableEntry, description, "RoomEffect")
        end
    },
    ["TimedEffect"] = {
        Priority = -9900,
        BehaviorFunc = function(_, itemStatsTableEntry, description)
            return EID:ApplyModularNestedDescription(itemStatsTableEntry, description, "TimedEffect", "Duration")
        end
    },
}
-- add name value to EID.StatisticsData table
for k,v in pairs(EID.StatisticsData) do v.Name = k end

function EID:CalculateChanceWithLuck(variableData, useMax)
    local luckValue = 0
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
        return result
    end
end

EID.DynamicVariableHandlers = {
    FORMATTED = function(variableData)
        if type(variableData) == "table" then return tostring(variableData[1]) .. "-" .. tostring(variableData[2]) -- interpret a table as a range of numbers
        elseif type(variableData) == "number" then return string.format("%.2f", variableData):gsub("%.?0+$", "") -- format numbers to look better
        else return tostring(variableData) end -- return string otherwise
    end,
    RANGE = function(variableData) return tostring(variableData[1]) .. "-" .. tostring(variableData[2]) end,
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

-- DEBUG: Validate Stat table entry existance
function EID:ValidateItemStatEntry(statID, additionalInfo)
    if not EID.StatisticsData[statID] then
        print("[ERROR] Unknown item stat '"..statID.."'", additionalInfo)
        return false
    end
    return true
end

function EID:CollectSimilarDescriptions(tableToCheck)
    local uniqueDescriptions = {}
    for _, description in pairs(tableToCheck) do
        for line in string.gmatch(description, "[^#]+") do
            line = line:gsub("([%+%-x]?[%d%.]+)", "XXX"):gsub("↑", ""):gsub("↓", ""):gsub("^%s+", "")
            if uniqueDescriptions[line] then
                uniqueDescriptions[line] = uniqueDescriptions[line] + 1
            else
                uniqueDescriptions[line] = 1
            end
        end
    end
    
    for k, v in pairs(uniqueDescriptions) do
        if v ~= 1 then
            print(v,k)
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

function EID:HandleStatEntry(statDataEntry, itemStatsTableEntry, description)
    if not statDataEntry or not itemStatsTableEntry then
        print("[ERROR] (EID:HandleStatEntry) Missing stat data entry or item stats table entry!", statDataEntry, itemStatsTableEntry, description)
        return description
    end
    if type(statDataEntry.BehaviorFunc) == "function" then
        return statDataEntry.BehaviorFunc(statDataEntry, itemStatsTableEntry, description)
    end
    -- default behavior
    return EID:GenerateTextFromStatEntry(statDataEntry, itemStatsTableEntry, description)
end

-- Applies a modular description for a nested stat entry (e.g. TimedEffect or RoomEffect)
-- If the statName is given, it will try to replace {VAR:statName}
-- If applyValueWithName is given, it will replace {value} in the stat description with the value of the given name
function EID:ApplyModularNestedDescription(itemStatsTableEntry, description, statName, applyValueWithName)
    -- Get base text fragment for the stat
    local statText = EID:getDescriptionEntry("ModularDescriptions", statName)
    local textFragment = statText and (statText .. "#") or ""

    -- replace value if a specific value name is given
    if applyValueWithName then
        local value = string.format("%.2f", itemStatsTableEntry[applyValueWithName] or "UNDEFINED"):gsub("%.?0+$", "")
        textFragment = textFragment:gsub("{value}", value)
    end
    -- add subdata entries
    local sortedStats = EID:GetSortedModularDescriptionEntries(itemStatsTableEntry, true)
    for _, statDataEntry in ipairs(sortedStats) do
        local statID = statDataEntry.Name
        if EID:ValidateItemStatEntry(statID, "located in a '"..statName.."' element") then
            if not (applyValueWithName and statID == applyValueWithName) then
                textFragment = EID:HandleStatEntry(EID.StatisticsData[statID], itemStatsTableEntry[statID], textFragment)  
            end
        end
    end
    -- Try replace inline variable
    local numReplaced = 0
    description, numReplaced = description:gsub("{VAR:"..string.upper(statName).."}", textFragment)
    if numReplaced == 0 then
        return description .. textFragment
    end
    return description
end

function EID:GetSortedModularDescriptionEntries(itemStatsTable, combineTables, validateEntries, debugInfo)
    -- sort stats of selected Item by priority
    local sortedStatsPositivePrio = {}
    local sortedStatsNegativePrio = {}
    for statID, _ in pairs(itemStatsTable) do
        if validateEntries and EID:ValidateItemStatEntry(statID, "in "..debugInfo) or EID.StatisticsData[statID] then
            if EID.StatisticsData[statID].Priority > 0 then
                table.insert(sortedStatsPositivePrio, EID.StatisticsData[statID])
            else
                table.insert(sortedStatsNegativePrio, EID.StatisticsData[statID])
            end
        end
    end
    table.sort(sortedStatsPositivePrio, function(a, b) return a.Priority > b.Priority end)
    table.sort(sortedStatsNegativePrio, function(a, b) return a.Priority > b.Priority end)
    if combineTables then
        return EID:ConcatTables(sortedStatsPositivePrio, sortedStatsNegativePrio)
    end
    return sortedStatsPositivePrio, sortedStatsNegativePrio
end

-- Tries to generate a description for an item based on its stats defined in EID.ItemStats
-- Returns an empty string if no stats are defined for the item
function EID:GenerateDescription(itemID)
    local itemStatsTable = EID.ItemStats[itemID]
    local additionalInfo = EID:getDescriptionEntry("AdditionalInformations", itemID)
    -- return empty string or additionalInfo, if no ItemStats are defined
    if not itemStatsTable then
        return additionalInfo or "", ""
    end

    local sortedStatsPositivePrio, sortedStatsNegativePrio = EID:GetSortedModularDescriptionEntries(itemStatsTable, false, true, itemID)

    local description = ""

    -- Add stat information with positive priority
    for _, statDataEntry in ipairs(sortedStatsPositivePrio) do
        description = EID:HandleStatEntry(statDataEntry, itemStatsTable[statDataEntry.Name], description)
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
    -- add linebreak between additional information and negative priority stats
    if not string.find(description, "#$") then
        description = description .. "#"
    end

    -- Add stat information with negative priority
    for _, statDataEntry in ipairs(sortedStatsNegativePrio) do
        description = EID:HandleStatEntry(statDataEntry, itemStatsTable[statDataEntry.Name], description)
    end
    -- remove leading/trailing # and multiple # in a row. Makes translation more readable in some places, if a # is explicitly added
    description = description:gsub("#$", ""):gsub("^#", ""):gsub("#+", "#")

    return description, additionalInfo
end

function EID:GenerateTextFromStatEntry(statDataEntry, itemStatValue, description)
    local statID = statDataEntry.Name
    local textFragment = EID:getDescriptionEntry("ModularDescriptions", statID)
    local statDescription = ""
    if statDataEntry.IsSubCategory then
        for subStatID, subValue in pairs(itemStatValue) do
            local subTextFragment = EID:getDescriptionEntry("ModularDescriptions", statID)[subStatID]
            if not subTextFragment then
                print("[ERROR] Sub-Category translation not found!", subStatID)
            end
            local subTextEntry = EID:GenerateStatDescriptionText(statDataEntry, subValue, subTextFragment)
            -- add icon of subentry to the beginning of the text
            local iconString = ""
            if statDataEntry.Icon and type(statDataEntry.Icon) == "table" and statDataEntry.Icon[subStatID] then
                iconString = statDataEntry.Icon[subStatID] .. " "
            end
            statDescription = statDescription .. iconString .. subTextEntry
        end
    else
        statDescription = EID:GenerateStatDescriptionText(statDataEntry, itemStatValue, textFragment)
    end
    if statDescription then
        return description .. statDescription
    end
end

-- Generates the text fragment for a single stat entry
function EID:GenerateStatDescriptionText(statDataEntry, value, textFragment)
    local isMultiplier = statDataEntry.IsMultiplier

    if textFragment then
        -- if the value is a table, we handle it as a range of values
        if  type(value) == "table" then
            local rangeValue = tostring(value[1]) .. "-" .. tostring(value[2])
            textFragment = textFragment:gsub("{value}", rangeValue)
            value = value[2] -- for pluralization, take the maximum value
        else
            -- If value is not of type number, we assume 1
            if type(value) ~= "number" then
                value = 1
            end
            -- formated and without trailing zeros
            local formattedValue = string.format("%.2f", value):gsub("%.?0+$", "")

            -- Handle sign
            if not statDataEntry.HideSign then
                local sign = isMultiplier and "x" or value > 0 and "+" or ""
                formattedValue = sign .. formattedValue
            end
            -- Put formatted value into text fragment
            textFragment = textFragment:gsub("{value}", formattedValue)
        end
    end

    -- arrow up/down and icon decoration
    local decoration = ""
    if statDataEntry.Arrow then
        -- multipliers smaller 1 are a negative effect
        if isMultiplier then
            decoration = value >= 1 and "↑ " or "↓ "
        else
            decoration = value >= 0 and "↑ " or "↓ "
        end
    end
    if statDataEntry.Icon and type(statDataEntry.Icon) ~= "table" then
        decoration = decoration .. statDataEntry.Icon
    end

    local text = (decoration or "") .. " " .. (textFragment or "") .. "#"
    -- try pluralize
    text = EID:TryPluralizeString(text, value)
    -- remove leading and double spaces
    text = text:gsub("  +", " "):gsub("^%s+", "")

    return text
end

-- DEBUG FUNCTION
-- Compare generated description with original description for an item
local successCounter = 0
local partialCounter = 0

-- DEBUG ignore entries list, which are automated correctly, but maybe have different order of lines
local ignoreList = {
    ["5.100.4"] = true,
    ["5.100.5"] = true,
    ["5.100.6"] = true,
    ["5.100.12"] = true,
    ["5.100.34"] = true,
    ["5.100.40"] = true,
    ["5.100.58"] = true,
    ["5.100.59"] = true,
    ["5.100.70"] = true,
    ["5.100.78"] = true,
    ["5.100.83"] = true, -- +0.5 Black heart looks weird

    ["5.100.101"] = true,
    ["5.100.106"] = true,
    ["5.100.112"] = true,
    ["5.100.117"] = true,
    ["5.100.119"] = true,
    ["5.100.120"] = true,
    ["5.100.121"] = true,
    ["5.100.129"] = true,
    ["5.100.138"] = true,
    ["5.100.149"] = true,
    ["5.100.159"] = true,
    ["5.100.169"] = true,
    ["5.100.172"] = true,
    ["5.100.176"] = true,
    ["5.100.179"] = true,
    ["5.100.182"] = true,
    ["5.100.184"] = true,
    ["5.100.185"] = true,
    ["5.100.194"] = true,

    ["5.100.215"] = true,
    ["5.100.219"] = true,
    ["5.100.230"] = true,
    ["5.100.237"] = true,
    ["5.100.238"] = true,
    ["5.100.239"] = true,
    ["5.100.251"] = true,
    ["5.100.252"] = true,
    ["5.100.253"] = true,
    ["5.100.259"] = true,
    ["5.100.260"] = true,
    ["5.100.263"] = true,
    ["5.100.267"] = true,
    ["5.100.281"] = true,

    ["5.100.302"] = true,
    ["5.100.307"] = true,
    ["5.100.310"] = true,
    ["5.100.314"] = true,
    ["5.100.330"] = true,
    ["5.100.331"] = true,
    ["5.100.340"] = true,
    ["5.100.342"] = true,
    ["5.100.354"] = true,
    ["5.100.363"] = true,
    ["5.100.365"] = true,
    
    ["5.100.402"] = true,
    ["5.100.404"] = true,
    ["5.100.433"] = true,
    ["5.100.439"] = true,
    ["5.100.443"] = true,
    ["5.100.445"] = true,
    ["5.100.451"] = true,
    ["5.100.458"] = true,
    ["5.100.461"] = true,
    ["5.100.468"] = true,
    ["5.100.470"] = true,
    ["5.100.473"] = true,
    ["5.100.481"] = true,
    ["5.100.495"] = true,
    ["5.100.499"] = true,

    ["5.100.511"] = true,
    ["5.100.531"] = true,
    ["5.100.541"] = true,
    ["5.100.548"] = true,
    -- Repentance
    ["5.100.554"] = true,
    ["5.100.555"] = true,
    ["5.100.561"] = true,
    ["5.100.573"] = true,
    ["5.100.584"] = true,
    ["5.100.594"] = true, -- TODO (Jupiter): Heals 0.5 Heart looks weird

    ["5.100.605"] = true,
    ["5.100.607"] = true,
    ["5.100.616"] = true,
    ["5.100.617"] = true,
    ["5.100.618"] = true,
    ["5.100.624"] = true,
    ["5.100.633"] = true,
    ["5.100.645"] = true,
    ["5.100.659"] = true,
    ["5.100.669"] = true,
    ["5.100.686"] = true,
    ["5.100.688"] = true,
    ["5.100.693"] = true,
    ["5.100.694"] = true,
    
    ["5.100.716"] = true,

    ---------- CARDS --------
    ["5.300.4"] = true,
    ["5.300.12"] = true,
    ["5.300.13"] = true,
    ["5.300.39"] = true,
    ["5.300.52"] = true,
    ["5.300.53"] = true,
    ["5.300.59"] = true,
    ["5.300.93"] = true,

    ---------- Pills --------
    ["5.70.4"] = true,
    ["5.70.6"] = true,
    ["5.70.7"] = true,
    ["5.70.8"] = true,
    ["5.70.21"] = true,
    ["5.70.22"] = true,
    ["5.70.33"] = true,
    ["5.70.34"] = true,

    ["5.70.2054"] = true,
    ["5.70.2055"] = true,
    ["5.70.2056"] = true,
    ["5.70.2065"] = true,
    ["5.70.2069"] = true,
    ["5.70.2070"] = true,
}

function EID:CompareGeneralizedDescriptions(type, variant, subtype)
    local itemTypeString = type .. "." .. variant .. "." .. subtype
    local original = EID:getDescriptionObj(type, variant, subtype, null, false)
    local originalEntry = EID:getDescriptionEntry(EID:getTableName(type, variant, subtype), subtype % PillColor.PILL_GIANT_FLAG)
    local generated, additional = EID:GenerateDescription(itemTypeString)
    if ignoreList[itemTypeString] then
        successCounter = successCounter + 1
        return true
    end

    if originalEntry[3] == generated then
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
        print("No generated description for item " .. itemTypeString .. " (" .. originalEntry[2] .. ")")
        return false
    else
        local orig = originalEntry[3]
        local replacedOriginal,count = orig:gsub(generated, "")
        if count > 0 then
            print("Partial match for item " .. itemTypeString .. " (" .. originalEntry[2] .. ")")
            print(replacedOriginal)
            print("ORG: " .. orig)
            print("GEN: " .. generated)
            print("")
            partialCounter = partialCounter + 1
        else
            print("Description mismatch for item " .. itemTypeString .. " ("..originalEntry[2]..")")
            print("ORG: " .. orig)
            print("GEN: " .. generated)
            print("")
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
    print("["..tostring(DLCName).."] Fully Automated:", successCounter, "| Partially:", partialCounter, "| Total:", (endID - startID + 1))
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
        {5,70,46+PillColor.PILL_GIANT_FLAG,PillEffect.NUM_PILL_EFFECTS-1+PillColor.PILL_GIANT_FLAG,"Horsepills 46-max"}
        --{5,350,1,TrinketType.NUM_TRINKETS-1,"Trinkets"}, -- Trinkets are not yet supported
    }

    for _, params in ipairs(todo) do
        local success, partial, total = EID:CompareGeneralizedDescriptionsMulti(params[1], params[2], params[3],
            params[4], params[5])
        totalsuccess = totalsuccess + success
        totalpartial = totalpartial + partial
        totaltotal = totaltotal + total
    end
    print("TOTAL: Fully Automated:", totalsuccess, "| Partially:", totalpartial, "| Total:", totaltotal)
    end