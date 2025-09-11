-- AB+ Modular Descriptions
-- Generates item descriptions based on stat changes defined in statValues
EID.ItemStats = {
    ["5.100.1"] = { Tears = 0.7 },  -- The Sad Onion
    ["5.100.2"] = { TearsMultiplier = 0.48, TearDelay = 3 }, -- The Inner Eye
    ["5.100.4"] = { Damage = 0.5, DamageMultiplier = 1.5 }, -- Cricket's Head
    ["5.100.5"] = { Range = 1.5, TearHeight = 1, ShotSpeed = 0.6 },  -- My Reflection
    ["5.100.6"] = { Tears = 1.5, TearHeight = 0.76, Range = -17.62 }, -- Number One
    ["5.100.7"] = { Damage = 1 }, -- Blood of the Martyr
    ["5.100.10"] = { Flies = 2 }, -- Halo of Flies
    ["5.100.11"] = { Life = 1 }, -- 1up!
    ["5.100.12"] = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 5.25, TearHeight = 0.5, Size = 1, FullHealth = 1 }, -- Magic Mushroom
    ["5.100.13"] = { Speed = -0.1 }, -- The Virus
    ["5.100.14"] = { Speed = 0.6, Range = 5.25, TearHeight = 0.5 }, -- Roid Rage
    ["5.100.15"] = { RedHeart = 1, FullHealth = 1 },  -- <3
    ["5.100.16"] = { RedHeart = 2, FullHealth = 1 }, -- Raw Liver
    ["5.100.17"] = { Key = 99 }, -- Skeleton Key
    ["5.100.18"] = { Coin = 99 }, -- A Dollar
    ["5.100.19"] = { Bomb = 10 }, -- Boom!
    ["5.100.20"] = { Flight = 1 }, -- Transcendence
    ["5.100.22"] = { RedHeart = 1 }, -- Lunch
    ["5.100.23"] = { RedHeart = 1 }, -- Dinner
    ["5.100.24"] = { RedHeart = 1 }, -- Dessert
    ["5.100.25"] = { RedHeart = 1 }, -- Breakfast
    ["5.100.26"] = { RedHeart = 1 }, -- Rotten Meat
    ["5.100.27"] = { Speed = 0.3 }, -- Wooden Spoon
    ["5.100.28"] = { Speed = 0.3 }, -- The Belt
    ["5.100.29"] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Underwear
    ["5.100.30"] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Heels
    ["5.100.31"] = { Range = 5.25, TearHeight = 0.5 }, -- Mom's Lipstick
    ["5.100.32"] = { Tears = 0.7 }, -- Wire Coat Hanger
    ["5.100.45"] = { HealingRed = 1 }, -- Yum Heart
    ["5.100.46"] = { Luck = 1 }, -- Lucky Foot
    ["5.100.50"] = { Damage = 1 }, -- Steven
    ["5.100.51"] = { Damage = 1, AngelDevilChance = 10 }, -- Pentagram
    ["5.100.52"] = { TearsMultiplier = 0.4 }, -- Dr. Fetus
    ["5.100.71"] = { Speed = 0.3, TearHeight = 1.5, Size = -1, Range = -4.25 }, -- Mini Mush
    ["5.100.72"] = { SoulHeart = 3 }, -- Rosary
    ["5.100.74"] = { Coin = 25 }, -- A Quarter
    ["5.100.75"] = { RedHeart = 2, HealingRed = 2, Pill = 1}, -- PHD
    ["5.100.78"] = { SoulHeart = 1, AngelDevilChance = 17.5 }, -- Book of Revelations
    ["5.100.79"] = { Speed = 0.2, Damage = 1, SoulHeart = 1 }, -- The Mark
    ["5.100.80"] = { Tears = 0.7, Damage = 0.5, SoulHeart = 2 }, -- The Pact
    ["5.100.81"] = { Life = 9 }, -- Dead Cat
    ["5.100.82"] = { Speed = 0.3, Flight = 1 }, -- Lord of the Pit
    ["5.100.85"] = { Card = 1 }, -- Deck of Cards
    ["5.100.90"] = { Tears = 0.2, Damage = 1, Speed = -0.2 }, -- The Small Rock
    ["5.100.92"] = { RedHeart = 1, HealingRed = 1, SoulHeart = 2 }, -- Super Bandage
    ["5.100.101"] = { RedHeart = 1, Speed = 0.3, Tears = 0.2, Damage = 0.3, Range = 0.25, TearHeight = 0.5 }, -- The Halo
    ["5.100.102"] = { Pill = 1 }, -- Mom's Bottle of Pills
}

local repentanceItemStats = {
    ["5.100.5"] = { Damage = 1.5, Range = 1.5, RangeMultiplier = 2, ShotSpeedMultiplier = 1.6, Luck = -1 },  -- My Reflection
    ["5.100.6"] = { Tears = 1.5, Range = -1.5, RangeMultiplier = 0.8 }, -- Number One
    ["5.100.12"] = { RedHeart = 1, Speed = 0.3, Damage = 0.3, DamageMultiplier = 1.5, Range = 2.5, Size = 1, FullHealth = 1 }, -- Magic Mushroom
    ["5.100.13"] = { Speed = 0.2 }, -- The Virus
    ["5.100.14"] = { Speed = 0.3, Range = 2.5 }, -- Roid Rage
    ["5.100.18"] = { Coin = 100 }, -- A Dollar
    ["5.100.22"] = { RedHeart = 1, HealingRed = 1 }, -- Lunch
    ["5.100.23"] = { RedHeart = 1, HealingRed = 1 }, -- Dinner
    ["5.100.24"] = { RedHeart = 1, HealingRed = 1 }, -- Dessert
    ["5.100.25"] = { RedHeart = 1, HealingRed = 1 }, -- Breakfast
    ["5.100.26"] = { RedHeart = 1, HealingRed = 1 }, -- Rotten Meat
    ["5.100.29"] = { Range = 2.5 }, -- Mom's Underwear
    ["5.100.30"] = { Range = 2.5 }, -- Mom's Heels
    ["5.100.31"] = { Range = 3.75 }, -- Mom's Lipstick
    ["5.100.79"] = { Speed = 0.2, Damage = 1, BlackHeart = 1 }, -- The Mark
    ["5.100.80"] = { Tears = 0.7, Damage = 0.5, BlackHeart = 2 }, -- The Pact
}
EID:updateDescriptionsViaTable(repentanceItemStats, EID.ItemStats)

-- List of available stats in order of priority. Higher priority stats are listed first in the description.
-- Arrow indicates if an up/down arrow should be shown for positive/negative values.
-- Icon indicates what icon should be shown before the stat.
-- IsMultiplier indicates if the stat is a multiplier (e.g. TearsMultiplier) and should be formatted with "x" instead of "+".
-- HideSign indicates if the sign (+/-/x) should be hidden for the stat value
EID.StatList = {
    { ID = "Tears",               Arrow = true,                 Icon = "{{Tears}}" },
    { ID = "TearsMultiplier",     Arrow = true,                 Icon = "{{Tears}}",       IsMultiplier = true },
    { ID = "TearHeight",          Arrow = true },
    { ID = "TearDelay",           Arrow = true,                 Icon = "{{Tears}}" },
    { ID = "Damage",              Arrow = true,                 Icon = "{{Damage}}" },
    { ID = "DamageMultiplier",    Arrow = true,                 Icon = "{{Damage}}",      IsMultiplier = true },
    { ID = "Speed",               Arrow = true,                 Icon = "{{Speed}}" },
    { ID = "Range",               Arrow = true,                 Icon = "{{Range}}" },
    { ID = "RangeMultiplier",     Arrow = true,                 Icon = "{{Range}}",       IsMultiplier = true },
    { ID = "ShotSpeed",           Arrow = true,                 Icon = "{{ShotSpeed}}" },
    { ID = "ShotSpeedMultiplier", Arrow = true,                 Icon = "{{ShotSpeed}}",   IsMultiplier = true },
    { ID = "Luck",                Arrow = true,                 Icon = "{{Luck}}" },
    { ID = "Life",                Arrow = true },
    { ID = "Size",                Arrow = true },
    { ID = "RedHeart",            Arrow = true,                 Icon = "{{Heart}}" },
    { ID = "FullHealth",          Icon = "{{HealingRed}}",      HideSign = true },
    { ID = "HealingRed",          Icon = "{{HealingRed}}",      HideSign = true },
    { ID = "SoulHeart",           Icon = "{{SoulHeart}}" },
    { ID = "BlackHeart",          Icon = "{{BlackHeart}}" },
    { ID = "BoneHeart",           Icon = "{{BoneHeart}}" },
    { ID = "EternalHeart",        Icon = "{{EternalHeart}}" },
    { ID = "GoldenHeart",         Icon = "{{GoldenHeart}}" },
    { ID = "Coin",                Icon = "{{Coin}}" },
    { ID = "Bomb",                Icon = "{{Bomb}}" },
    { ID = "Key",                 Icon = "{{Key}}" },
    { ID = "Card",                Icon = "{{Card}}",      HideSign = true  }, -- TODO: Make more specific for spawned/held
    { ID = "Pill",                Icon = "{{Pill}}",      HideSign = true  }, -- TODO: Make more specific for spawned/held
    { ID = "Battery",             Icon = "{{Battery}}",      HideSign = true  }, -- TODO: Make more specific for spawned/held
    { ID = "Flies",      HideSign = true  }, -- TODO: Blue Flies and Spiders need better support
    { ID = "Flight",      },
    { ID = "AngelDevilChance",    Icon = "{{AngelDevilChance}}" },
    { ID = "DevilChance",         Icon = "{{DevilChance}}" },
    { ID = "AngelChance",         Icon = "{{AngelChance}}" },
}

-- English text patterns for stats
-- TODO: Move into language files and add support for other languages
local statPatterns = {
    Tears = "{value} Tears",
    TearsMultiplier = "{value} Tears multiplier",
    TearHeight = "{value} Tear Height",
    TearDelay = "{value} Tear Delay",
    Damage = "{value} Damage",
    DamageMultiplier = "{value} Damage multiplier",
    Speed = "{value} Speed",
    Range = "{value} Range",
    RangeMultiplier = "{value} Range multiplier",
    Luck = "{value} Luck",
    ShotSpeed = "{value} Shot Speed",
    ShotSpeedMultiplier = "{value} Shot Speed multiplier",
    Life = "{value} Life",
    Size = "{value} Size",
    RedHeart = "{value} Health",
    SoulHeart = "{value} Soul Heart{pluralize}",
    BlackHeart = "{value} Black Heart{pluralize}",
    BoneHeart = "{value} Bone Heart{pluralize}",
    EternalHeart = "{value} Eternal Heart{pluralize}",
    GoldenHeart = "{value} Golden Heart{pluralize}",
    FullHealth = "Full health",
    HealingRed = "Heals {value} heart{pluralize}",
    Coin = "{value} Coin{pluralize}", -- TODO: Differentiate between spawned and held?
    Bomb = "{value} Bomb{pluralize}", -- TODO: Differentiate between spawned and held?
    Key = "{value} Key{pluralize}", -- TODO: Differentiate between spawned and held?
    Card = "Spawns {value} card{pluralize}", -- TODO: Differentiate between spawned and held?
    Pill = "Spawns {value} pill{pluralize}", -- TODO: Differentiate between spawned and held?
    Battery = "Spawns {value} battery{pluralize}", -- TODO: Differentiate between spawned and held?
    Flies = "{value} Fly orbital{pluralize}",
    Flight = "Flight",
    AngelDevilChance = "{value}% Devil/Angel Room chance",
    DevilChance = "{value}% Devil Room chance",
    AngelChance = "{value}% Angel Room chance",
}



-- Tries to generate a description for an item based on its stats defined in EID.ItemStats
-- Returns an empty string if no stats are defined for the item
function EID:GenerateDescription(itemID)
    if not EID.ItemStats[itemID] then return "" end

    -- sort stats of selected Item by priority
    local itemStatsTable = EID.ItemStats[itemID]
    local sortedStats = {}
    for _, statEntry in ipairs(EID.StatList) do
        if itemStatsTable[statEntry.ID] then
            table.insert(sortedStats, statEntry)
        end
    end

    -- Iterate over stats and generate description
    local description = ""
    for _, statEntry in ipairs(sortedStats) do
        local statName = statEntry.ID
        local value = itemStatsTable[statName]
        local isMultiplier = statEntry.IsMultiplier

        -- arrow up/down and icon decoration
        local decoration = ""
        if statEntry.Arrow then
            -- multipliers smaller 1 are a negative effect
            if isMultiplier then
                decoration = value >= 1 and "↑ " or "↓ "
            else
                decoration = value >= 0 and "↑ " or "↓ "
            end
        end
        if statEntry.Icon then
            decoration = decoration .. statEntry.Icon
        end

        local textFragment = statPatterns[statName]
        if textFragment then
            -- formated and without trailing zeros
            local formattedValue = string.format("%.2f", value):gsub("%.?0+$", "")

            -- Handle sign
            if not statEntry.HideSign then
                local sign = isMultiplier and "x" or value > 0 and "+" or ""
                formattedValue = sign .. formattedValue
            end
            -- Put formatted value into text fragment
            textFragment = textFragment:gsub("{value}", formattedValue)
        end

        local text = (decoration or "") .. " " .. (textFragment or "") .. "#"
        -- try pluralize
        text = EID:TryPluralizeString(text, value)
        -- remove leading and double spaces
        text = text:gsub("  +", " "):gsub("^%s+", "")

        -- append to descriptions
        description = description .. text
    end

    -- remove trailing #
    description = description:gsub("#$", "")

    return description
end

-- DEBUG FUNCTION
-- Compare generated description with original description for an item
function EID:CompareGeneralizedDescriptions(type, variant, subtype)
    local original = EID:getDescriptionObj(type, variant, subtype).Description
    local generated = EID:GenerateDescription(type .. "." .. variant .. "." .. subtype)
    if original == generated then
        return true
    elseif generated == "" then
        return false
    else
        print("Description mismatch for item " .. type .. "." .. variant .. "." .. subtype)
        print("ORG: " .. original)
        print("GEN: " .. generated)
        return false
    end
end

-- DEBUG FUNCTION
-- Compare generated description with original description for an item
function EID:CompareGeneralizedDescriptionsMulti(type, variant, startID, endID)
    local countSuccess = 0
    for subtype = startID, endID do
        local success = EID:CompareGeneralizedDescriptions(type, variant, subtype)
        if success then
            countSuccess = countSuccess + 1
        end
    end
    print("Successfully generated " .. countSuccess .. " out of " .. (endID - startID + 1) .. " descriptions.")
end