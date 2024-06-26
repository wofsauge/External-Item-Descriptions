local game = Game()

--[[
	Argument 1: The item ID
	For convenience, numbers are assumed to be a collectible ID; strings in Type.Var.Sub format can be used as well
	If you're adding a condition that applies to many items, you can pass in a table of IDs
	If you're adding a condition that applies to an entire type of item, pass in a string in Type.Var format
	
	Argument 2: The function that will apply the condition if it returns true; descObj will be passed into this function
	This function can return a collectible ID, which will be used for bulletpoints/variable text
	
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
	usePedestalName: If true, display the pedestal item's name in place of {1}
	
	Argument 5 (very optional): The position in the table to insert this new condition, in case mods want to insert modifiers before our base ones
]]
local function CopyTable(t1)
	local newTable = {}; for k, v in pairs(t1) do newTable[k] = v end
	return newTable
end
function EID:AddConditional(IDs, funcText, modText, extraTable, insertPoint)
	if type(IDs) ~= "table" then IDs = { IDs } end
	if modText == "" then modText = nil end
	extraTable = extraTable or {}
	if extraTable.noFallback == nil then extraTable.noFallback = true end
	for _, id in ipairs(IDs) do
		if type(id) ~= "string" then id = "5.100." .. id end
		EID.DescriptionConditions[id] = EID.DescriptionConditions[id] or {}
		
		local newTable = CopyTable(extraTable)
		newTable.func = funcText;
		newTable.modifierText = modText;
		if newTable.usePedestalName then
			newTable.variableText = "{{NameOnly" .. id .. "}}"
		end
		
		if insertPoint then
			table.insert(EID.DescriptionConditions[id], insertPoint, newTable)
		else
			table.insert(EID.DescriptionConditions[id], newTable)
		end
	end
end

-- Easy to use functions for conditionals that rely on having a specific item/character
-- By default, they'll have a bulletpoint for the item/char, and {1} becomes the item/char's name

-- checkInReminder is for if a synergy is no longer relevant once the item isn't obtainable (e.g. Abyss locusts) (true by default)

function EID:AddItemConditional(IDs, ownedIDs, modText, extraTable, checkInReminder)
	if type(ownedIDs) ~= "table" then ownedIDs = { ownedIDs } end
	if checkInReminder == nil then checkInReminder = true end
	extraTable = extraTable or {}
	for _, ownedID in ipairs(ownedIDs) do
		EID.collectiblesToCheck[ownedID] = true
		local newTable = CopyTable(extraTable)
		local tvs = ownedID; if type(ownedID) == "number" then tvs = "5.100." .. ownedID end
		
		if newTable.variableText == nil then newTable.variableText = "{{NameOnly" .. tvs .. "}}" end
		if newTable.bulletpoint == nil then newTable.bulletpoint = "Item" .. tvs end
		EID:AddConditional(IDs, function() return EID:ConditionalItemCheck(ownedID, checkInReminder) end, modText, newTable)
	end
end

-- For adding pairs of abilities to collectibles; you can define a different modifier text for each of them
-- example: EID:AddSynergyConditional({list of IDs overridden by Brimstone}, Brimstone, "Overridden", "Overrides")
function EID:AddSynergyConditional(IDs, ownedIDs, modText1, modText2, extraTable1, extraTable2, checkInReminder)
	EID:AddItemConditional(IDs, ownedIDs, modText1, extraTable1, checkInReminder)
	EID:AddItemConditional(ownedIDs, IDs, modText2 or modText1, extraTable2 or extraTable1, checkInReminder)
end
-- For adding a synergy pair where the same item name should be used for the descriptions of both sides of it
-- e.g. Sacrificial Altar synergies are displayed on both the Altar and the familiar, but only the familiar's name matters
function EID:AddOneSidedSynergyConditional(IDs, ownedIDs, modText, extraTable, checkInReminder)
	extraTable = extraTable or {}
	local newTable = CopyTable(extraTable)
	newTable.usePedestalName = true
	EID:AddItemConditional(IDs, ownedIDs, modText, newTable, checkInReminder)
	EID:AddItemConditional(ownedIDs, IDs, modText, extraTable, checkInReminder)
end

-- For adding a conditional that looks at owning itself; item reminder is of course disabled
-- Holding Diplopia or Crooked Penny should probably also trigger this type of conditional, so it's included by default
function EID:AddSelfConditional(ownedIDs, modText, extraTable, includeDiplopia)
	if type(ownedIDs) ~= "table" then ownedIDs = { ownedIDs } end
	if includeDiplopia == nil then includeDiplopia = true end
	for _, ownedID in ipairs(ownedIDs) do
		if includeDiplopia then EID:AddItemConditional(ownedID, {ownedID, 347, 485}, modText, extraTable, false)
		else EID:AddItemConditional(ownedID, ownedID, modText, extraTable, false) end
	end
end

-- includeTainted is for if you want to check the normal and tainted version of a character (true by default)
function EID:AddPlayerConditional(IDs, charIDs, modText, extraTable, includeTainted)
	if type(charIDs) ~= "table" then charIDs = { charIDs } end
	if includeTainted == nil then includeTainted = true end
	extraTable = extraTable or {}
	for _, charID in ipairs(charIDs) do
		local newTable = CopyTable(extraTable)
		if newTable.variableText == nil then newTable.variableText = "{{NameOnlyI" .. charID .. "}}" end
		if newTable.bulletpoint == nil then newTable.bulletpoint = "Player" .. charID end
		EID:AddConditional(IDs, function() return EID:ConditionalCharCheck(charID, includeTainted) end, modText, newTable)
	end
end


----- Evaluation Functions -----

function EID:ConditionalItemCheck(itemID, checkInReminder)
	if EID.InsideItemReminder then
		if not checkInReminder then return false end
		local player = EID.ItemReminderPlayerEntity
		if EID:PlayerHasItem(player, itemID) or EID:PlayerVoidedCollectible(player, itemID) then return true end
	elseif EID.collectiblesOwned[itemID] or EID.collectiblesAbsorbed[itemID] then
		return true
	end
end

function EID:ConditionalCharCheck(playerType, includeTainted)
	-- We don't want to display irrelevant item info inside the Item Reminder
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
		if player:GetPlayerType() == playerType then
			return true
		elseif includeTainted and EID.isRepentance and EID.TaintedToRegularID[player:GetPlayerType()] == playerType then
			return true
		end
	else
		return EID:PlayersHaveCharacter(playerType, includeTainted)
	end
end

function EID:IsGreedMode()
	return game:IsGreedMode()
end

function EID:IsGreedModePlusTarot()
	return game:IsGreedMode() and EID:ConditionalItemCheck(451, true)
end

function EID:PlayersHaveRestock()
	return EID:PlayersHaveCollectible(376) or EID:IsGreedMode()
end

function EID:IsHardMode()
	return game.Difficulty == 1 or game.Difficulty == 3
end

-- Check if we have any characters that can't have Red Health, to print additions to descs like Dead Cat
function EID:CheckForNoRedHealthPlayer()
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
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

-- Check if we have characters with Schoolbag or a pocket active item
function EID:CheckForMultipleActives(onlyChargeablePockets)
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
		if player:HasCollectible(534) then return true end
		local id = player:GetPlayerType()
		if EID.isRepentance and (EID.PocketActivePlayerIDs[id] == 0 or (not onlyChargeablePockets and EID.PocketActivePlayerIDs[id])) then return true end
	else
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(534) then return true end
			local id = player:GetPlayerType()
			if EID.isRepentance and (EID.PocketActivePlayerIDs[id] == 0 or (not onlyChargeablePockets and EID.PocketActivePlayerIDs[id])) then return true end
		end
	end
	return false
end
-- Check if we have characters with Schoolbag or a chargeable pocket active item (for 4.5 Volt)
function EID:CheckForMultipleChargeableActives()
	return EID:CheckForMultipleActives(true)
end

-- When we have Car Battery, change active pedestal descriptions
function EID:CheckForCarBattery(descObj)
	if EID.CarBatteryNoSynergy[descObj.ObjSubType] then return "No Effect" end
	return descObj.ObjSubType
end
-- When we're looking at a Car Battery pedestal, check our actives for having no effect
function EID:CheckActivesForCarBattery(descObj)
	if EID.InsideItemReminder then return false end
	for k,_ in pairs(EID.CarBatteryNoSynergy) do
		if EID:PlayersHaveCollectible(k) then return k end
	end
	return false
end

-- When we have BFFS/Hive Mind, change familiar pedestal descriptions
function EID:CheckForBFFS(descObj)
	if descObj.ObjVariant == 100 and EID.BFFSNoSynergy[descObj.ObjSubType] then return "No Effect" end
	return descObj.fullItemString
end
function EID:CheckForHiveMind(descObj)
	if EID.HiveMindFamiliars[descObj.ObjSubType] then return EID:CheckForBFFS(descObj) end
	return "N/A"
end

-- When we're looking at a BFFS pedestal, check our familiars for having no effect (only finds the earliest one, but whatever)
function EID:CheckFamiliarsForBFFS(descObj)
	if EID.InsideItemReminder then return false end
	for k,_ in pairs(EID.BFFSNoSynergy) do
		if EID:PlayersHaveCollectible(k) then return k end
	end
	return false
end

-- Check for a player having an active item with a specific quantity of charges, or charge type
-- 0 = normal, 1 = timed, 2 = special
function EID:CheckPlayersForActiveChargeType(maxCharge, chargeType, checkPockets)
	checkPockets = checkPockets or true
	local players = {}
	if EID.InsideItemReminder then
		players[1] = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
	else
		for i = 0, game:GetNumPlayers() - 1 do
			table.insert(players, Isaac.GetPlayer(i))
		end
	end
	local maxSlot = EID.isRepentance and 1 or 0
	if EID.isRepentance and checkPockets then maxSlot = 3 end
	for i = 1, #players do
		local player = players[i]
		for j = 0, maxSlot do
			local activeID = player:GetActiveItem(j)
			if EID:CheckActiveChargeType(activeID, maxCharge, chargeType) then return activeID end
		end
	end
	return false
end
-- Check the given item ID for the given max charge and/or charge type (as well as check if the players have the additional collectible ID provided)
function EID:CheckActiveChargeType(itemID, maxCharge, chargeType, requiredCollectible)
	if requiredCollectible == nil or EID:ConditionalItemCheck(requiredCollectible) then
		local active = EID.itemConfig:GetCollectible(itemID)
		if active and active.Type == ItemType.ITEM_ACTIVE then
			local result = true
			if maxCharge and active.MaxCharges ~= maxCharge then result = false end
			if EID.isRepentance then
				if chargeType and active.ChargeType ~= chargeType then result = false end
			else
				if chargeType == 1 and active.MaxCharges < 30 then result = false end
			end
			return result
		end
	end
	return false
end

-- Check for multiple players existing for items like Yum Heart and Extension Cord, includes J&E (but does it include Forgotten?)
function EID:MultiplePlayerCharacters()
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


----- Apply Conditionals -----

-- thing to fix find/replace pairs with hyphens (like "1-2") breaking because hyphen is a special char
-- https://stackoverflow.com/questions/29072601/lua-string-gsub-with-a-hyphen
local function replace(str, what, with, count)
	what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
	with = string.gsub(with, "[%%]", "%%%%")                       -- escape replacement
	return string.gsub(str, what, with, count)
end
-- super simple table concatenation: https://www.tutorialspoint.com/concatenation-of-tables-in-lua-programming
local function TableConcat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

function EID:applyConditionals(descObj)
	EID:CheckPlayersCollectibles()
	local adjustedSubtype = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
	local typeVar = descObj.ObjType.."."..descObj.ObjVariant -- for general conditions (Tarot Cloth, Book of Virtues)
	local typeVarSub = descObj.ObjType.."."..descObj.ObjVariant.."."..adjustedSubtype -- for specific conditions
	
	-- Combine specific+generic conditions into one table (in that order)
	local conds = {}
	if EID.DescriptionConditions[typeVarSub] then TableConcat(conds, EID.DescriptionConditions[typeVarSub]) end
	if EID.DescriptionConditions[typeVar] then TableConcat(conds, EID.DescriptionConditions[typeVar]) end
	-- Check every condition we need to check for this item
	for _, cond in ipairs(conds) do
		-- Search for the localization string; "S" (for generals) or "T.V.S" or "T.V.S (Modifier)" or "Modifier"
		local locTable = cond.locTable or "ConditionalDescs"
		local text = nil
		local modifierText = type(cond.modifierText) == "function" and cond.modifierText(EID, descObj) or cond.modifierText
		
		-- Find our string in the base localization table
		if cond.noTable then
			text = EID:getDescriptionEntry(modifierText, nil, cond.noFallback)
		-- Find our string as either "Type.Var.Sub (Mod Text)" or "Mod Text"
		elseif modifierText then
			text = EID:getDescriptionEntry(locTable, typeVarSub .. " (" .. modifierText .. ")", cond.noFallback)
			if text == nil then text = EID:getDescriptionEntry(locTable, modifierText, cond.noFallback) end
		-- Find our string as either "Type.Var.Sub" or just the Subtype
		else
			text = EID:getDescriptionEntry(locTable, typeVarSub, cond.noFallback)
			if text == nil then text = EID:getDescriptionEntry(locTable, descObj.ObjSubType, cond.noFallback) end
		end

		-- If we find the localization string for this condition, and it passes the test, modify the description text
		local result = cond.func(EID, descObj)
		if text ~= nil and result then
			local variableText, bulletpoint
			-- If the condition returned a value, use that value
			if result ~= true then
				-- For the time being, we assume the result was a collectible number (will support more soon)
				variableText = "{{NameOnlyC"..result.."}}"
				bulletpoint = "Collectible"..result
			else
				variableText = type(cond.variableText) == "function" and cond.variableText(EID, descObj) or cond.variableText
				bulletpoint = cond.bulletpoint
			end

			-- String = append
			if type(text) == "string" then
				text = EID:ReplaceVariableStr(text, 1, variableText)
				local iconStr = "#"
				if bulletpoint then iconStr = iconStr .. "{{" .. bulletpoint .. "}} " end
				if cond.lineColor then iconStr = iconStr .. "{{" .. cond.lineColor .. "}}" end
				EID:appendToDescription(descObj, iconStr .. text:gsub("#", iconStr))

				-- Table with 1 entry = replace
			elseif #text == 1 then
				descObj.Description = EID:ReplaceVariableStr(text[1], 1, variableText)

				-- Table with 2+ entries = find and replace pairs
				-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
				-- If there's an odd number of entries, the last one is appended
			else
				local pos = 1
				while pos < #text do
					local toFind = text[pos]
					if text[pos + 1] then
						local replaceWith = EID:ReplaceVariableStr(text[pos + 1], 1, variableText)
						if cond.replaceColor then replaceWith = "{{" .. cond.replaceColor .. "}}" .. replaceWith .. "{{CR}}" end
						--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
						if (type(toFind) == "number") then
							local count = 0
							descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
								if (s == tostring(toFind) and count == 0) then
									count = count + 1
									return replaceWith
								end
							end)
							-- Basic find+replace for non-numbers
						else
							descObj.Description = replace(descObj.Description, tostring(toFind), replaceWith, 1)
						end
					else
						toFind = EID:ReplaceVariableStr(toFind, 1, variableText)
						local iconStr = "#"
						if bulletpoint then iconStr = iconStr .. "{{" .. bulletpoint .. "}} " end
						if cond.lineColor then iconStr = iconStr .. "{{" .. cond.lineColor .. "}}" end
						EID:appendToDescription(descObj, iconStr .. toFind:gsub("#", iconStr))
					end
					pos = pos + 2
				end
			end
		end
	end

	return descObj
end
