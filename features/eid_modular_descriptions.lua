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
    ["Flight"] = { Priority = 9550, },

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
    ["Orbital"] = { Priority = 5990, },
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
}
-- add name value to EID.StatisticsData table
for k,v in pairs(EID.StatisticsData) do v.Name = k end



-- DEBUG: Validate Stat table entry existance
function EID:ValidateItemStatEntries()
    for itemID, itemStatsEntry in pairs(EID.ItemStats) do
        for key, _ in pairs(itemStatsEntry) do
            if not EID.StatisticsData[key] then
                print("[ERROR] Unknown item stat key '"..key.."' in entry :", itemID)
            end
        end
    end
end

-- DEBUG: Compares an update table of a newr DLC with the previous DLC entries, to find duplicates or redundancies
function EID:CompareWithPreviousDLC(newTable, oldTable)
	for k, newValue in pairs(newTable) do
		if oldTable[k] then
            if type(oldTable[k]) == "table" then
                local entriesEqual = true
	            for k2, v2 in pairs(oldTable[k]) do
                    if v2 ~= newValue[k2] then
                        entriesEqual = false
                    end
                end
                if entriesEqual then
                    print("Table entry '"..k.."' is a duplicate!")
                end
            elseif oldTable[k] == newValue then
                print("Table contains duplicate base-entry ("..k.."):", newValue)
            end
		end
	end
end

-- Tries to generate a description for an item based on its stats defined in EID.ItemStats
-- Returns an empty string if no stats are defined for the item
function EID:GenerateDescription(itemID)
    local itemStatsTable = EID.ItemStats[itemID]
    local additionalInfo = EID:getDescriptionEntry("AdditionalInformations", itemID)
    -- return empty string or additionalInfo, if no ItemStats are defined
    if not itemStatsTable then
        return additionalInfo or "" , ""
    end

    -- sort stats of selected Item by priority
    local sortedStatsPositivePrio = {}
    local sortedStatsNegativePrio = {}
    for statID, _ in pairs(itemStatsTable) do
        if EID.StatisticsData[statID] then
            if EID.StatisticsData[statID].Priority > 0 then
                table.insert(sortedStatsPositivePrio, EID.StatisticsData[statID])
            else
                table.insert(sortedStatsNegativePrio, EID.StatisticsData[statID])
            end
        end
    end
    table.sort(sortedStatsPositivePrio, function(a, b) return a.Priority > b.Priority end)
    table.sort(sortedStatsNegativePrio, function(a, b) return a.Priority > b.Priority end)


    local description = ""

    -- Add stat information with positive priority
    for _, statDataEntry in ipairs(sortedStatsPositivePrio) do
        local statDescription = EID:GenerateTextFromStatEntry(statDataEntry, itemStatsTable[statDataEntry.Name])
        if statDescription then
            description = description .. statDescription
        end
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
        local statDescription = EID:GenerateTextFromStatEntry(statDataEntry, itemStatsTable[statDataEntry.Name])
        if statDescription then
            description = description .. statDescription
        end
    end
    -- remove trailing #
    description = description:gsub("#$", "")

    return description, additionalInfo
end

function EID:GenerateTextFromStatEntry(statDataEntry, itemStatValue)
    local statID = statDataEntry.Name
    local textFragment = EID:getDescriptionEntry("ModularDescriptions", statID)
    if statDataEntry.IsSubCategory then
        local statDescription = ""
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
        return statDescription
    else
        return EID:GenerateStatDescriptionText(statDataEntry, itemStatValue, textFragment)
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
local missingCounter = 0
local partialCounter = 0
local mismatchCounter = 0

-- DEBUG ignore entries list, which are automated correctly, but maybe have different order of lines
local ignoreList = {
    ["5.100.4"] = true,
    ["5.100.5"] = true,
    ["5.100.6"] = true,
    ["5.100.12"] = true,
    ["5.100.59"] = true,
    ["5.100.70"] = true,
    ["5.100.78"] = true,

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
    ["5.100.445"] = true,
    ["5.100.451"] = true,
    ["5.100.458"] = true,
    ["5.100.470"] = true,
    ["5.100.473"] = true,
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
}

function EID:CompareGeneralizedDescriptions(type, variant, subtype)
    local itemTypeString = type .. "." .. variant .. "." .. subtype
    local original = EID:getDescriptionObj(type, variant, subtype, null, false)
    local generated, additional = EID:GenerateDescription(itemTypeString)
    if ignoreList[itemTypeString] then
        successCounter = successCounter + 1
        return true
    end

    if original.Description == generated then
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
        print("No generated description for item " .. itemTypeString .. " (" .. original.Name .. ")")
        missingCounter = missingCounter + 1
        return false
    else
        local orig = original.Description
        local replacedOriginal,count = orig:gsub(generated, "")
        if count > 0 then
            print("Partial match for item " .. itemTypeString .. " (" .. original.Name .. ")")
            print(replacedOriginal)
            print("ORG: " .. orig)
            print("GEN: " .. generated)
            print("")
            partialCounter = partialCounter + 1
        else
            print("Description mismatch for item " .. itemTypeString .. " ("..original.Name..")")
            print("ORG: " .. orig)
            print("GEN: " .. generated)
            print("")
            mismatchCounter = mismatchCounter + 1
        end
        return false
    end
end

-- DEBUG FUNCTION
-- Compare generated description with original description for an item
function EID:CompareGeneralizedDescriptionsMulti(type, variant, startID, endID)
    successCounter = 0
    missingCounter = 0
    partialCounter = 0
    mismatchCounter = 0
    for subtype = startID, endID do
        EID:CompareGeneralizedDescriptions(type, variant, subtype)
    end
    print("Fully Automated:", successCounter, "| Partially:", partialCounter, "| Mismatch:", mismatchCounter, "| Missing:", missingCounter, "| Total:", (endID - startID + 1))
end