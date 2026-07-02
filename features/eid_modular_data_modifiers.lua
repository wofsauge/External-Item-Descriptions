-- Special behavior functions that alter the data of modular descriptions 
local function HealthUpCondition(_, descObj)
	if not EID.Config["DynamicHealthUps"] then return descObj end
    
	local closestPlayer = EID:ClosestPlayerTo(descObj.Entity)
	local playerType = closestPlayer:GetPlayerType()
	local heartType = EID.CharacterToHeartType[playerType] or "Red"
    return heartType ~= "Red"
end


-- Replaces the data entry defined as the key, with the one defined as the value. If the new data entry exists already, its value gets added to the old one
local healthTypeReplacements = {
    Soul = { RedHeart = "SoulHeart", FullHealth = "", HealingRed = "", EmptyHeart = "SoulHeart", RottenHeart = "" },
    Black = { RedHeart = "BlackHeart", FullHealth = "", HealingRed = "", EmptyHeart = "BlackHeart", RottenHeart = "" },
    -- TODO: Potato Peeler and Abaddon do remove coin hearts in rep+. Maybe hide CoinHeart data, if max is reached?
    Coin = { RedHeart = "CoinHeart", HealingRed = "HealingCoin", EmptyHeart = "EmptyCoinHeart", SoulHeart = "", BlackHeart = "" },
    None = {
        RedHeart = "",
        CoinHeart = "",
        FullHealth = "",
        HealingRed = "",
        HealingCoin = "",
        SoulHeart = "",
        BlackHeart = "",
        BoneHeart = "",
        EternalHeart = "",
        GoldenHeart = "",
        RottenHeart = "",
        BrokenHeart = "",
        EmptyHeart = "",
        EmptyCoinHeart = "",
    },
}

local function HealthUpCallback(itemDataTable, descObj)
	local closestPlayer = EID:ClosestPlayerTo(descObj.Entity)
	local playerType = closestPlayer:GetPlayerType()
	local heartType = EID.CharacterToHeartType[playerType] or "Red"
    if not healthTypeReplacements[heartType] then return itemDataTable end
    for oldDataName, newDataName in pairs(healthTypeReplacements[heartType]) do
        local oldValue = itemDataTable[oldDataName]
        itemDataTable[oldDataName] = nil -- remove old data entry
        if oldValue and newDataName ~= "" then
            local existingValue = type(itemDataTable[newDataName]) == "number" and tonumber(itemDataTable[newDataName]) or 0
            itemDataTable[newDataName] = oldValue + existingValue
        end
    end

    -- TODO: Highlight changes in text with player icon
    return itemDataTable
end

EID:addModularDataModifier("HealthToX", HealthUpCondition, HealthUpCallback)
