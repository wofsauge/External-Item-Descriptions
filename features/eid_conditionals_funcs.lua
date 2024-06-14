local game = Game()

--[[
	Argument 1: The item ID
	For convenience, numbers are assumed to be a collectible ID; strings in Type.Var.Sub format can be used as well
	If you're adding a condition that applies to many items, you can pass in a table of IDs
	If you're adding a condition that applies to an entire type of item, pass in a string in Type.Var format
	
	Argument 2: The function that will apply the condition if it returns true; descObj will be passed into this function
	
	Argument 3 (optional): Additional text for finding the string in the localization file
	For example, if you put "Overridden" here, modifying Tech X, it will look for ConditionalDescs["5.100.395 (Overridden)"] AND ConditionalDescs["Overridden"]
	Can also be a function for more dynamic deciding
	
	Argument 4 (optional): Table with any additional options, usually not needed:
	variableText: If there's a {1} in the desc, it will be replaced with this; can be a function for more dynamic text results, it will get descObj passed into it
	locTable: Specify a different table to look for the localization string in, rather than ConditionalDescs
	noTable: Set to true to look in the base localizations only (requires modText) (not used yet...)
	lineColor: Appended lines will be highlighted with this color
	replaceColor: Find/replace text will be highlighted with this color
	bulletpoint: Appended lines will begin with this bulletpoint
	noFallback: Don't fallback to English if this isn't localized; by default, conditionals don't fallback, to avoid printing English text in unupdated languages
	useResult: The condition function can return a collectible ID; if true, use that ID to generate bulletpoint/variable text. This is to be able to use specific collectible icons/names while using more general modded-item-friendly conditions
	
	Argument 5 (very optional): The position in the table to insert this new condition, in case mods want to insert modifiers before our base ones
]]
function EID:AddConditional(IDs, funcText, modText, extraTable, insertPoint)
	if type(IDs) ~= "table" then IDs = { IDs } end
	if modText == "" then modText = nil end
	extraTable = extraTable or {}
	-- make a shallow copy of the passed-in table
	local newTable = {}; for k, v in pairs(extraTable) do newTable[k] = v end
	newTable.func = funcText;
	newTable.modifierText = modText;
	if newTable.noFallback == nil then newTable.noFallback = true end
	for _, id in ipairs(IDs) do
		if type(id) ~= "string" then id = "5.100." .. id end
		EID.DescriptionConditions[id] = EID.DescriptionConditions[id] or {}
		if insertPoint then
			table.insert(EID.DescriptionConditions[id], insertPoint, newTable)
		else
			table.insert(EID.DescriptionConditions[id], newTable)
		end
	end
end

-- Easy to use functions for conditionals that rely on having a specific collectible/character
-- By default, they'll have a bulletpoint for the coll/char, and {1} becomes the coll/char's name

-- checkInReminder is for if a synergy is no longer relevant once the item isn't obtainable (e.g. Abyss locusts) (true by default)
function EID:AddCollectibleConditional(IDs, ownedIDs, modText, extraTable, checkInReminder)
	if type(ownedIDs) ~= "table" then ownedIDs = { ownedIDs } end
	if checkInReminder == nil then checkInReminder = true end
	extraTable = extraTable or {}
	for _, ownedID in ipairs(ownedIDs) do
		EID.collectiblesToCheck[ownedID] = true
		local newTable = {}; for k, v in pairs(extraTable) do newTable[k] = v end
		if newTable.variableText == nil then newTable.variableText = "{{NameOnlyC" .. ownedID .. "}}" end
		if newTable.bulletpoint == nil then newTable.bulletpoint = "Collectible" .. ownedID end
		EID:AddConditional(IDs, function() return EID:ConditionalCollCheck(ownedID, checkInReminder) end, modText, newTable)
	end
end

-- For adding pairs of abilities to collectibles; you can define a different modifier text for each of them
-- example: EID:AddSynergyConditional({list of IDs overridden by Brimstone}, Brimstone, "Overridden", "Overrides")
function EID:AddSynergyConditional(IDs, ownedIDs, modText1, modText2, extraTable1, extraTable2, checkInReminder)
	EID:AddCollectibleConditional(IDs, ownedIDs, modText1, extraTable1, checkInReminder)
	EID:AddCollectibleConditional(ownedIDs, IDs, modText2 or modText1, extraTable2 or extraTable1, checkInReminder)
end

-- includeTainted is for if you want to check the normal and tainted version of a character (true by default)
function EID:AddPlayerConditional(IDs, charIDs, modText, extraTable, includeTainted)
	if type(charIDs) ~= "table" then charIDs = { charIDs } end
	if includeTainted == nil then includeTainted = true end
	extraTable = extraTable or {}
	for _, charID in ipairs(charIDs) do
		local newTable = {}; for k, v in pairs(extraTable) do newTable[k] = v end
		if newTable.variableText == nil then newTable.variableText = "{{NameOnlyI" .. charID .. "}}" end
		if newTable.bulletpoint == nil then newTable.bulletpoint = "Player" .. charID end
		EID:AddConditional(IDs, function() return EID:ConditionalCharCheck(charID, includeTainted) end, modText, newTable)
	end
end


----- Evaluation Functions -----

function EID:ConditionalCharCheck(playerType, includeTainted)
	-- We don't want to display irrelevant item info inside the Item Reminder
	if EID.InsideItemReminder then
		local player = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
		if player:GetPlayerType() == playerType then
			return true
		elseif includeTainted and EID.isRepentance and EID.TaintedToRegularID[player:GetPlayerType()] == playerType then
			return true
		else
			return false
		end
	else
		return EID:PlayersHaveCharacter(playerType, includeTainted)
	end
end

function EID:ConditionalCollCheck(collectibleID, checkInReminder)
	-- We don't want to display irrelevant item info inside the Item Reminder
	if EID.InsideItemReminder then
		if not checkInReminder then return false end
		local player = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
		if player:HasCollectible(collectibleID) then return true end
		-- Check for the item being inside the Item Reminder player's Void (not sure if this is ever relevant...)
		if player:HasCollectible(477) then
			local playerID = EID:getPlayerID(player)
			if EID.absorbedItems[tostring(playerID)] and EID.absorbedItems[tostring(playerID)][tostring(collectibleID)] then
				return true
			end
		end
	else
		return EID.collectiblesOwned[collectibleID] or EID.collectiblesAbsorbed[collectibleID]
	end
	return false
end

function EID.IsGreedMode()
	return game:IsGreedMode()
end

function EID.IsHardMode()
	if game.Difficulty == 1 or game.Difficulty == 3 then
		return true
	else
		return false
	end
end

-- Check if we have any characters that can't have Red Health, to print additions to descs like Dead Cat
function EID.CheckForNoRedHealthPlayer()
	if EID.InsideItemReminder then
		local player = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
		return EID.NoRedHeartsPlayerIDs[player:GetPlayerType()]
	else
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if EID.NoRedHeartsPlayerIDs[player:GetPlayerType()] then
				return true
			end
		end
	end
	return false
end

function EID.CheckForCarBattery(descObj)
	if EID.CarBatteryNoSynergy[descObj.ObjSubType] then return "No Effect"
	else return descObj.ObjSubType end
end

-- Check for a player having an active item with a specific quantity of charges, or charge type
-- 0 = normal, 1 = timed, 2 = special
function EID:CheckPlayersForActiveChargeType(maxCharge, chargeType)
	local players = {}
	if EID.InsideItemReminder then
		players[1] = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
	else
		for i = 0, game:GetNumPlayers() - 1 do
			table.insert(players, Isaac.GetPlayer(i))
		end
	end
	
	for i = 1, #players do
		local player = players[i]
		for j = 0, EID.isRepentance and 3 or 0 do
			local activeID = player:GetActiveItem(j)
			if EID:CheckActiveChargeType(activeID, maxCharge, chargeType) then return activeID end
		end
	end
	return false
end
function EID:CheckActiveChargeType(itemID, maxCharge, chargeType)
	local active = EID.itemConfig:GetCollectible(itemID)
	if active then
		if active.MaxCharges == maxCharge and active.ChargeType ~= 2 then return true
		elseif EID.isRepentance and active.ChargeType == chargeType then return true
		elseif not EID.isRepentance and chargeType == 1 and active.MaxCharges >= 30 then return true end
	end
	return false
end

-- Check for multiple players existing for items like Yum Heart and Extension Cord, includes J&E (but does it include Forgotten?)
function EID.MultiplePlayerCharacters()
	return #EID.coopAllPlayers > 1
end

-- Check the bestiary/character list if we have REPENTOGON, to help avoid spoilers. Otherwise just return true
function EID:HaveEncountered(monsterType, monsterVariant)
	if not REPENTOGON then return true end
	return Isaac.GetPersistentGameData():GetBestiaryEncounterCount(monsterType, monsterVariant) > 0
end

function EID:HaveNotEncountered(monsterType, monsterVariant)
	if not REPENTOGON then return true end
	return not EID:HaveEncountered(monsterType, monsterVariant)
end

function EID:HaveUnlockedAchievement(achID)
	if not REPENTOGON then return true end
	return Isaac.GetPersistentGameData():Unlocked(achID)
end

function EID:HaveNotUnlockedAchievement(achID)
	if not REPENTOGON then return true end
	return not EID:HaveUnlockedAchievement(achID)
end