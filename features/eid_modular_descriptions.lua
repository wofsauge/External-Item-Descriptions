-- List of available stats in order of priority. Higher priority stats are listed first in the description.
-- Arrow indicates if an up/down arrow should be shown for positive/negative values.
-- Icon indicates what icon should be shown before the stat.
-- IsMultiplier indicates if the stat is a multiplier (e.g. TearsMultiplier) and should be formatted with "x" instead of "+".
-- HideSign indicates if the sign (+/-/x) should be hidden for the stat value
EID.StatisticsData = {
    -- Player Stats
    { ID = "Tears",               Arrow = true,                 Icon = "{{Tears}}" },
    { ID = "TearsMultiplier",     Arrow = true,                 Icon = "{{Tears}}",     IsMultiplier = true },
    { ID = "TearHeight",          Arrow = true },
    { ID = "TearSize",            Arrow = true,                 Icon = "{{Tearsize}}",  IsMultiplier = true },
    { ID = "TearDelay",           Arrow = true,                 Icon = "{{Tears}}" },
    { ID = "FireRateMultiplier",     Arrow = true,                 Icon = "{{Tears}}",     IsMultiplier = true },
    { ID = "Damage",              Arrow = true,                 Icon = "{{Damage}}" },
    { ID = "DamageMultiplier",    Arrow = true,                 Icon = "{{Damage}}",    IsMultiplier = true },
    { ID = "BombDamage",    Arrow = true,                 Icon = "{{Bomb}}",    IsMultiplier = true },
    { ID = "Speed",               Arrow = true,                 Icon = "{{Speed}}" },
    { ID = "Range",               Arrow = true,                 Icon = "{{Range}}" },
    { ID = "RangeMultiplier",     Arrow = true,                 Icon = "{{Range}}",     IsMultiplier = true },
    { ID = "ShotSpeed",           Arrow = true,                 Icon = "{{Shotspeed}}" },
    { ID = "ShotSpeedMultiplier", Arrow = true,                 Icon = "{{Shotspeed}}", IsMultiplier = true },
    { ID = "Luck",                Arrow = true,                 Icon = "{{Luck}}" },
    { ID = "Life",                Arrow = true },
    { ID = "SizeUp",              Arrow = true },
    { ID = "SizeDown",            Arrow = true },
    { ID = "Flight", },

    -- Health related
    { ID = "RedHeart",            Arrow = true,                 Icon = "{{Heart}}" },
    { ID = "FullHealth",          Icon = "{{HealingRed}}",      HideSign = true },
    { ID = "HealingRed",          Icon = "{{HealingRed}}",      HideSign = true },
    { ID = "SoulHeart",           Icon = "{{SoulHeart}}" },
    { ID = "BlackHeart",          Icon = "{{BlackHeart}}" },
    { ID = "BoneHeart",           Icon = "{{EmptyBoneHeart}}" },
    { ID = "EternalHeart",        Icon = "{{EternalHeart}}" },
    { ID = "GoldenHeart",         Icon = "{{GoldenHeart}}" },
    { ID = "EmptyHeart",        Icon = "{{EmptyHeart}}" },

    -- Pickups / Spawns
    { ID = "Coin",                Icon = "{{Coin}}" },
    { ID = "Bomb",                Icon = "{{Bomb}}" },
    { ID = "Key",                 Icon = "{{Key}}" },
    { ID = "CoinBombKey",},
    { ID = "Card",                Icon = "{{Card}}",      HideSign = true  }, -- TODO: Make more specific for spawned/held
    { ID = "Pill",                Icon = "{{Pill}}",            HideSign = true }, -- TODO: Make more specific for spawned/held
    { ID = "Battery",             Icon = "{{Battery}}",         HideSign = true }, -- TODO: Make more specific for spawned/held

    -- Room chances
    { ID = "AngelDevilChance",    Icon = "{{AngelDevilChance}}" },
    { ID = "DevilChance",         Icon = "{{DevilChance}}" },
    { ID = "AngelChance",         Icon = "{{AngelChance}}" },
    { ID = "PlanetariumChance",   Icon = "{{PlanetariumChance}}" },

    -- Familiars
    { ID = "Flies", },
    { ID = "Orbital", },
    { ID = "BlockProjectiles", HideSign = true },
    { ID = "DamagePerTear", HideSign = true },
    { ID = "DamagePerShot", HideSign = true },
    { ID = "ContactDamagePerSecond", HideSign = true },

    -- Dynamic Spawns
    {
        ID = "Spawns",
        IsSubCategory = true,
        HideSign = true,
        Icon = {
            RandomHeart = "{{UnknownHeart}}",
            RandomCoin = "{{Coin}}",
            Card = "{{Card}}",
            Pill = "{{Pill}}",
            Battery = "{{Battery}}",
        }
    },
}

-- DEBUG: Validate Stat table entry existance
function EID:ValidateItemStatEntries()
    for itemID, itemStatsEntry in pairs(EID.ItemStats) do
        for key, _ in pairs(itemStatsEntry) do
            local found = false
            for _, statDataEntry in ipairs(EID.StatisticsData) do
                if statDataEntry.ID == key then
                    found = true
                end
            end
            if not found then
                print("[ERROR] Unknown item stat key '"..key.."' in entry :", itemID)
            end
        end
    end
end

-- Tries to generate a description for an item based on its stats defined in EID.ItemStats
-- Returns an empty string if no stats are defined for the item
function EID:GenerateDescription(itemID)
    local itemStatsTable = EID.ItemStats[itemID]
    if not itemStatsTable then return "" end

    -- sort stats of selected Item by priority
    local sortedStats = {}
    for _, statDataEntry in ipairs(EID.StatisticsData) do
        if itemStatsTable[statDataEntry.ID] then
            table.insert(sortedStats, statDataEntry)
        end
    end

    local description = ""
    -- Iterate over stats and generate description
    for _, statDataEntry in ipairs(sortedStats) do
        -- append to descriptions
        local value = itemStatsTable[statDataEntry.ID]
        local textFragment = EID:getDescriptionEntry("ModularDescriptions", statDataEntry.ID)
        if statDataEntry.IsSubCategory then
            if type(textFragment) == "table" and textFragment.BASE_TEXT then
                textFragment = textFragment.BASE_TEXT
            end
            for subStatID, subValue in pairs(itemStatsTable[statDataEntry.ID]) do
                local subTextFragment = EID:getDescriptionEntry("ModularDescriptions", statDataEntry.ID)[subStatID]
                local subTextEntry = EID:GenerateStatDescriptionText(statDataEntry, subValue, subTextFragment)

                -- add icon of subentry to the beginning of the text
                local iconString = ""
                if statDataEntry.Icon and type(statDataEntry.Icon) == "table" and statDataEntry.Icon[subStatID] then
                    iconString = statDataEntry.Icon[subStatID] .. " "
                end
                description = description .. iconString .. textFragment:gsub("{value}", subTextEntry)
            end
        else
            description = description .. EID:GenerateStatDescriptionText(statDataEntry, value, textFragment)
        end
    end

    -- remove trailing #
    description = description:gsub("#$", "")
    return description
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

function EID:CompareGeneralizedDescriptions(type, variant, subtype)
    local original = EID:getDescriptionObj(type, variant, subtype)
    local generated = EID:GenerateDescription(type .. "." .. variant .. "." .. subtype)
    if original.Description == generated then
        successCounter = successCounter + 1
        return true
    end
    -- Append additional informations
    local additionalInfo = EID:getDescriptionEntry("AdditionalInformations", type .. "." .. variant .. "." .. subtype)
    if additionalInfo then
        if generated ~= "" then
            generated = generated .. "#" .. additionalInfo
        else
            generated = additionalInfo
        end
    end

    if original.Description == generated then
        partialCounter = partialCounter + 1
        return true
    elseif generated == "" then
        if original.Name:find("5.") then
            successCounter = successCounter + 1
            return true
        end
        print("No generated description for item " .. type .. "." .. variant .. "." .. subtype .. " ("..original.Name..")")
        missingCounter = missingCounter + 1
        return false
    else
        local orig = original.Description
        local replacedOriginal,count = orig:gsub(generated, "")
        if count > 0 then
            print("Partial match for item " .. type .. "." .. variant .. "." .. subtype)
            print(replacedOriginal)
            print("")
            partialCounter = partialCounter + 1
        else
            print("Description mismatch for item " .. type .. "." .. variant .. "." .. subtype .. " ("..original.Name..")")
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