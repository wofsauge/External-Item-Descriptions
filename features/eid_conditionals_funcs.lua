local game = Game()
local modTextsAdded = 0
local function newModdedCondition(text, language)
	if text == nil then return nil end
	modTextsAdded = modTextsAdded + 1
	EID.descriptions[language].ConditionalDescs["Modded Conditional " .. modTextsAdded] = text
	return "Modded Conditional " .. modTextsAdded
end

------ FUNCTIONS FOR MODDERS TO ADD CONDITIONALS ------
-- You provide your own strings into these functions

-- Add text to a pedestal's description when you own a different item
-- ID and ownedID can be a collectible ID or a full item string (like "5.350.54")
-- ownedID can also be a function rather than just an ID; if it returns true, the text will be displayed
-- The text will be added as a new line, with the owned item's icon at the start
-- If you pass in replaceText, instead the text is found in the description and replaced with replaceText
-- For convenience, ID can be a table of IDs that will all get the condition applied
-- Optional parameters: replaceText, language, extraTable
-- Example usage: EID:addCondition(myDevilishItemID, EID.IsGreedMode, "{{GreedMode}} Reduces shop prices by 1 for each optional Nightmare wave completed")
function EID:addCondition(ID, ownedID, text, replaceText, language, extraTable)
	language = language or "en_us"
	if replaceText then text = {text, replaceText} end
	local modifierText = newModdedCondition(text, language)
	if type(ownedID) ~= "function" then
		EID:AddItemConditional(ID, ownedID, modifierText, extraTable)
	else
		EID:AddConditional(ID, ownedID, modifierText, extraTable)
	end
end

-- Shortcut function for when you have two items that have a synergy with each other
-- ID1 will have text1 added to its description if you own ID2
-- ID2 will have text2 (or text1, if text2 isn't given) added to its description if you own ID1
-- ID1 and ID2 can both be tables of IDs that will get the condition applied to each other
-- Optional parameters: text2, language, extraTable
-- Example usage: EID:addSynergyCondition(myHappyLittleItemID, {CollectibleType.COLLECTIBLE_BRIMSTONE, CollectibleType.COLLECTIBLE_SULFUR}, "Turns your laser into a smiley face that charms enemies")
function EID:addSynergyCondition(ID1, ID2, text1, text2, language, extraTable)
	language = language or "en_us"
	local modifierText1 = newModdedCondition(text1, language)
	local modifierText2 = newModdedCondition(text2, language)
	EID:AddSynergyConditional(ID1, ID2, modifierText1, modifierText2, extraTable)
end

-- Function for adding text to a pedestal's description when you're playing a specific character
-- The character's head icon will be at the start of appended lines
-- Optional parameters: replaceText, language, extraTable
-- Example usage: EID:addPlayerCondition(myAngstyItemID, PlayerType.PLAYER_EVE, "Gives Eve extra mascara (2x Damage multiplier)")
function EID:addPlayerCondition(ID, playerID, text, replaceText, language, extraTable)
	language = language or "en_us"
	if replaceText then text = {text, replaceText} end
	local modifierText = newModdedCondition(text, language)
	EID:AddPlayerConditional(ID, playerID, modifierText, extraTable)
end

-- Shortcut function for tarotClothBuffs, tarotClothBuffsAB, carBattery, abyssSynergies, bookOfBelialBuffs, bingeEaterBuffs
-- Because these are general conditions that only match one item type, it's super easy to add to them
-- The text will be appended; numberToDouble will be found in the description and doubled, as that's the most frequent use case
-- or, if you provide newNumber, it changes numberToDouble to that (technically, it's just a find/replace pair, any strings work)
-- Example usage: EID:addToGeneralCondition(myVeryHealthyItemID, "bingeEaterBuffs", "↑ {{Speed}} +0.15 Speed#↓ {{Tears}} -0.5 Tears#↓ {{Damage}} -0.5 Damage")
function EID:addToGeneralCondition(ID, locTable, text, numberToDouble, newNumber, language)
	language = language or "en_us"
	if numberToDouble then
		newNumber = newNumber or numberToDouble * 2
		text = { numberToDouble, newNumber, text }
	end
	EID.descriptions[language][locTable][ID] = text
end

-- Shortcut function for adding Repentance Tarot Cloth conditions
function EID:addTarotClothBuffsCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "tarotClothBuffs", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding Ab+ Tarot Cloth conditions
function EID:addTarotClothBuffsABCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "tarotClothBuffsAB", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding car battery conditions
function EID:addCarBatteryCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "carBattery", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding abyss synergies conditions
function EID:addAbyssSynergiesCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "abyssSynergies", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding book of belial conditions
function EID:addBookOfBelialBuffsCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "bookOfBelialBuffs", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding binge eater conditions
function EID:addBingeEaterBuffsCondition(ID, text, numberToDouble, newNumber, language)
	EID:addToGeneralCondition(ID, "bingeEaterBuffs", text, numberToDouble, newNumber, language)
end

-- Shortcut function for adding BFFS conditions; this is slightly more complex since it supports trinkets
-- Example usage: EID:addBFFSCondition(myBasicFamiliarID, nil, 3.5)
function EID:addBFFSCondition(ID, text, numberToDouble, newNumber, language)
	language = language or "en_us"
	if numberToDouble then
		newNumber = newNumber or numberToDouble * 2
		text = { numberToDouble, newNumber, text }
	end
	if type(ID) ~= "string" then ID = "5.100." .. ID
	else
		-- We don't have to add a new condition for collectibles, because they're checked with a "5.100" condition
		EID:AddItemConditional(ID, 247, EID.CheckForBFFS, {locTable = "BFFSSynergies", replaceColor = "BlinkPink", noFallback = false, uniqueID = "BFFS"})
	end
	EID.descriptions[language].BFFSSynergies[ID] = text
end

-- Shortcut function for adding Hive Mind conditions; by default, it will show with BFFS too, unless you pass in allowBFFS as false
function EID:addHiveMindCondition(ID, text, numberToDouble, newNumber, language, allowBFFS)
	language = language or "en_us"
	if allowBFFS == nil then allowBFFS = true end
	EID.HiveMindFamiliars[ID] = true
	if not allowBFFS then EID.BFFSIgnore[ID] = true end
	
	if numberToDouble then
		newNumber = newNumber or numberToDouble * 2
		text = {numberToDouble, newNumber, text}
	end
	if type(ID) ~= "string" then ID = "5.100." .. ID
	else
		-- We don't have to add a new condition for collectibles, because they're checked with a "5.100" condition
		EID:AddItemConditional(ID, 248, EID.CheckForHiveMind, {locTable = "BFFSSynergies", replaceColor = "BlinkBlue", noFallback = false, uniqueID = "BFFS"})
	end
	EID.descriptions[language].BFFSSynergies[ID] = text
end


------ FUNCTIONS FOR INTERNAL USE ------
-- These need to look up strings from the localization table, and are designed to reduce work needed by localizers. Of course, you can use these in mods if you want
-- They're simple to use in the simplest use case, while powerful enough to handle complicated needs

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
	noTable: Set to true to look in the base localizations only (requires modText)
	lineColor: Appended lines will be highlighted with this color
	replaceColor: Find/replace text will be highlighted with this color
	bulletpoint: Appended lines will begin with this bulletpoint
	noFallback: Don't fallback to English if this isn't localized; by default, conditionals don't fallback, to avoid printing English text in unupdated languages
	usePedestalName: If true, display the pedestal item's name in place of {1}
	useResult: If true, use the result from the conditional function to find the localization string
	layer: A number used in determining the order that conditionals should be checked in, default -1
	checkLayers: If true, don't print this condition if a higher layer condition was applied already
	uniqueID: Only one conditional with the given unique ID will be printed
]]
local function CopyTable(t1)
	local newTable = {}; for k, v in pairs(t1) do newTable[k] = v end
	return newTable
end
-- Every single add conditional function ends up calling this function eventually. This is THE place to define variables every condition MUST have.
function EID:AddConditional(IDs, funcText, modText, extraTable)
	if type(IDs) ~= "table" then IDs = { IDs } end
	if modText == "" then modText = nil end
	extraTable = extraTable or {}
	if extraTable.noFallback == nil then extraTable.noFallback = true end
	extraTable.layer = extraTable.layer or -1
	for _, id in ipairs(IDs) do
		if type(id) ~= "string" then id = "5.100." .. id end
		EID.DescriptionConditions[id] = EID.DescriptionConditions[id] or {}
		
		local newTable = CopyTable(extraTable)
		newTable.func = funcText;
		newTable.modifierText = modText;
		if newTable.usePedestalName then
			newTable.variableText = "{{NameOnly" .. id .. "}}"
		end
		table.insert(EID.DescriptionConditions[id], newTable)
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

-- For adding a conditional based on if a specific character is present
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


------ Evaluation Functions ------

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

function EID:InStageNum(stageNum)
	return game:GetLevel():GetAbsoluteStage() == stageNum
end
function EID:InStageVoid()
	return EID:InStageNum(12)
end
function EID:InStageNoTreasureRoom()
	return game:GetLevel():GetAbsoluteStage() > 6
end
function EID:InStageTheShop()
	return EID:IsGreedMode() and EID:InStageNum(0)
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

function EID:CheckForTaintedPlayer()
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
		return EID.TaintedIDs[player:GetPlayerType()]
	else
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if EID.TaintedIDs[player:GetPlayerType()] then
				return true
			end
		end
	end
	return false
end

-- Check if we have characters with Schoolbag or a pocket active item
function EID:CheckForMultipleActives(descObj, onlyChargeablePockets)
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
		if player:HasCollectible(534) then return 534 end
		local id = player:GetPlayerType()
		if EID.isRepentance and (EID.PocketActivePlayerIDs[id] == 0 or (not onlyChargeablePockets and EID.PocketActivePlayerIDs[id])) then return player:GetActiveItem(2) end
	else
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if player:HasCollectible(534) then return 534 end
			local id = player:GetPlayerType()
			if EID.isRepentance and (EID.PocketActivePlayerIDs[id] == 0 or (not onlyChargeablePockets and EID.PocketActivePlayerIDs[id])) then return player:GetActiveItem(2) end
		end
	end
	return false
end
-- Check if we have characters with Schoolbag or a chargeable pocket active item (for 4.5 Volt)
function EID:CheckForMultipleChargeableActives(descObj)
	return EID:CheckForMultipleActives(descObj, true)
end
-- Check if we have a character with a pocket active
function EID:CheckForPocketActives()
	if EID.InsideItemReminder then
		local player = EID.ItemReminderPlayerEntity
		return EID.PocketActivePlayerIDs[player:GetPlayerType()]
	else
		for i = 0, game:GetNumPlayers() - 1 do
			local player = Isaac.GetPlayer(i)
			if EID.PocketActivePlayerIDs[player:GetPlayerType()] then return true end
		end
	end
	return false
end

-- When we have Car Battery, change active pedestal descriptions
function EID:CheckForCarBattery(descObj)
	if EID.CarBatteryNoSynergy[descObj.ObjSubType] then return "No Effect" end
	return descObj.ObjSubType
end
-- When we're looking at a Car Battery pedestal, check our actives for having an effect or no effect
function EID:CheckActivesForCarBattery(descObj)
	if EID.InsideItemReminder then return false end
	for k,v in pairs(EID.CarBatteryPedestalWhitelist) do
		if v and EID:PlayersHaveCollectible(k) then return k end
	end
	return false
end
function EID:CheckActivesForNoCarBattery(descObj)
	if EID.InsideItemReminder then return false end
	for k,v in pairs(EID.CarBatteryNoSynergy) do
		if v and EID:PlayersHaveCollectible(k) then return k end
	end
	return false
end

-- When we have BFFS/Hive Mind, change familiar pedestal descriptions
function EID:CheckForBFFS(descObj, hiveMind)
	if EID.BFFSIgnore[descObj.ObjSubType] and not hiveMind then return "N/A" end
	if descObj.ObjVariant == 100 and EID.BFFSNoSynergy[descObj.ObjSubType] then return "No Effect" end
	local adjustedSubtype = EID:getAdjustedSubtype(descObj.ObjType, descObj.ObjVariant, descObj.ObjSubType)
	return descObj.ObjType.."."..descObj.ObjVariant.."."..adjustedSubtype
end
function EID:CheckForHiveMind(descObj)
	if EID.HiveMindFamiliars[descObj.ObjSubType] then return EID:CheckForBFFS(descObj, true) end
	return "N/A"
end

-- When we're looking at a BFFS pedestal, check our familiars for having an effect (only finds the earliest one)
function EID:CheckFamiliarsForBFFS(descObj)
	if EID.InsideItemReminder then return false end
	for k,v in pairs(EID.BFFSPedestalWhitelist) do
		if v and EID:PlayersHaveCollectible(k) then return "5.100." .. k end
	end
	return false
end
function EID:CheckFamiliarsForHiveMind(descObj)
	if EID.InsideItemReminder then return false end
	for k,v in pairs(EID.BFFSPedestalWhitelist) do
		if EID.HiveMindFamiliars[k] and v and EID:PlayersHaveCollectible(k) then return "5.100." .. k end
	end
	return false
end
function EID:CheckFamiliarsForNoBFFS(descObj)
	if EID.InsideItemReminder then return false end
	for k,v in pairs(EID.BFFSNoSynergy) do
		if v and EID:PlayersHaveCollectible(k) then return k end
	end
	return false
end

-- Check for a player having an active item with a specific quantity of charges, or charge type
-- 0 = normal, 1 = timed, 2 = special
function EID:CheckPlayersForActiveChargeType(maxCharge, chargeType, checkPockets)
	if checkPockets == nil then checkPockets = true end
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
	local highestLayer = -999
	local printedDescs = {}
	
	-- Combine specific+generic conditions into one table (in that order)
	local conds = {}
	if EID.DescriptionConditions[typeVarSub] then TableConcat(conds, EID.DescriptionConditions[typeVarSub]) end
	if EID.DescriptionConditions[typeVar] then TableConcat(conds, EID.DescriptionConditions[typeVar]) end
	table.sort(conds, function(a, b) return a.layer > b.layer end)
	-- Check every condition we need to check for this item
	for _, cond in ipairs(conds) do
		if not cond.checkLayers or highestLayer <= cond.layer then
			local result = cond.func(EID, descObj)
			if result then
				-- Search for the localization string; "S" (for generals) or "T.V.S" or "T.V.S (Modifier)" or "Modifier"
				local locTable = cond.locTable or "ConditionalDescs"
				local text = nil
				local modifierText = type(cond.modifierText) == "function" and cond.modifierText(EID, descObj) or cond.modifierText
				if cond.useResult then modifierText = result end
				
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

				-- If we find the localization string for this condition, it passed the condition's test, and the layer is ok, modify the description text
				if text ~= nil and (not cond.uniqueID or printedDescs[cond.uniqueID] == nil) then
					if cond.layer > highestLayer then highestLayer = cond.layer end
					if cond.uniqueID then printedDescs[cond.uniqueID] = true end
					local variableText, bulletpoint
					-- If the condition returned a value, use that value as an item ID for the bulletpoint/{1} replacement
					if result ~= true then
						if type(result) == "number" then result = "5.100." .. result end
						variableText = "{{NameOnly"..result.."}}"
						bulletpoint = "Item"..result
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
						while pos <= #text do
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
		end
	end

	return descObj
end
