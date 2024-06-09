local game = Game()

EID.DescriptionConditions = {}
-- table of collectible IDs to periodically check if the players own. used by eid_modifiers.lua
EID.collectiblesToCheck = {}

--[[
	Argument 1: The item ID
	For convenience, numbers are assumed to be a collectible ID; strings in Type.Var.Sub format can be used as well
	If you're adding a condition that applies to many items, you can pass in a table of IDs
	If you're adding a condition that applies to an entire type of item, pass in a string in Type.Var format
	
	Argument 2: The function that will apply the condition if it returns true
	
	Argument 3 (optional): Additional text for finding the string in the localization file
	For example, if you put "Overridden" here, modifying Tech X, it will look for ConditionalDescs["5.100.395 (Overridden)"] AND ConditionalDescs["Overridden"]
	
	Argument 4 (optional): Table with any additional options, usually not needed:
	variableText: If there's a {1} in the desc, it will be replaced with this; can be a function for more dynamic text results, it will get descObj passed into it
	variableText2: If there's a {2} in the desc, it will be replaced with this; can be a function
	locTable: Specify a different table to look for the localization string in, rather than ConditionalDescs
	noTable: Set to true to look in the base localizations only (requires modText) (not used yet...)
	lineColor: Appended lines will be highlighted with this color
	replaceColor: Find/replace text will be highlighted with this color
	bulletpoint: Appended lines will begin with this bulletpoint
	noFallback: Don't fallback to English if this isn't localized; by default, conditionals don't fallback, to avoid printing English text in unupdated languages
	
	Argument 5 (very optional): The position in the table to insert this new condition, in case mods want to insert modifiers before our base ones
]]
function EID:AddConditional(IDs, funcText, modText, extraTable, insertPoint)
	if type(IDs) ~= "table" then IDs = {IDs} end
	if modText == "" then modText = nil end
	extraTable = extraTable or {}
	-- make a shallow copy of the passed-in table
	local newTable = {}; for k,v in pairs(extraTable) do newTable[k] = v end
	newTable.func = funcText;
	newTable.modifierText = modText;
	if newTable.noFallback == nil then newTable.noFallback = true end
	for _, id in ipairs(IDs) do
		if type(id) ~= "string" then id = "5.100." .. id end
		-- Check for only one period in the id string to mark it as being a general condition
		local _, count = string.gsub(id, "%.", "")
		if count == 1 then newTable.general = true end
		EID.DescriptionConditions[id] = EID.DescriptionConditions[id] or {}
		if insertPoint then table.insert(EID.DescriptionConditions[id], insertPoint, newTable)
		else table.insert(EID.DescriptionConditions[id], newTable) end
	end
end

-- Easy to use functions for conditionals that rely on having a specific collectible/character
-- By default, they'll have a bulletpoint for the coll/char, and {1} becomes the coll/char's name

-- checkInReminder is for if a synergy is no longer relevant once the item isn't obtainable (e.g. Abyss locusts) (true by default)
function EID:AddCollectibleConditional(IDs, ownedIDs, modText, extraTable, checkInReminder)
	if type(ownedIDs) ~= "table" then ownedIDs = {ownedIDs} end
	if checkInReminder == nil then checkInReminder = true end
	extraTable = extraTable or {}
	for _, ownedID in ipairs(ownedIDs) do
		EID.collectiblesToCheck[ownedID] = true
		if extraTable.variableText == nil then extraTable.variableText = "{{NameOnlyC" .. ownedID .. "}}" end
		if extraTable.bulletpoint == nil then extraTable.bulletpoint = "Collectible" .. ownedID end
		EID:AddConditional(IDs, function() return EID:ConditionalCollCheck(ownedID,checkInReminder) end, modText, extraTable)
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
	if type(charIDs) ~= "table" then charIDs = {charIDs} end
	if includeTainted == nil then includeTainted = true end
	extraTable = extraTable or {}
	for _, charID in ipairs(charIDs) do
		if extraTable.variableText == nil then extraTable.variableText = "{{NameOnlyI" .. charID .. "}}" end
		if extraTable.bulletpoint == nil then extraTable.bulletpoint = "Player" .. charID end
		EID:AddConditional(IDs, function() return EID:ConditionalCharCheck(charID,includeTainted) end, modText, extraTable)
	end
end

-- Adding our conditionals (should this be its own file away from the functions that add/print conditionals?)

--[[
TODO STUFF:

new config options for spoiler-heavy descriptions if we make any (chaos card and plan C?)
CO-OP BENEFIT ITEMS! tech zero / extension cord in co-op? yum heart and such
Items that override other items (brimstone, mom's knife, epic fetus stuff)
BFFs / the fly booster + Tainted Apollyon, Tainted Eve; melody trinket + Tainted Eve; these are insane synergies that deserve attention
TODO: Make some of these coll/char IDs be from the enum for readability? or just keep it to comments
TODO: A find/replace pair for some Keeper descriptions that talk about Red hearts but work for him, Red -> Coin or Red/Coin; Could be good for Dead Cat
TODO: AB+ tarot cloth buffs table?
-- hey what if all these Luck addons that I kinda don't like instead showed an accurate percentage of what they do at your current luck (although this is Modifier territory, with a per character display)
-- todo: TrinketConditional, use it for the crystal key + pandora's box or whichever key it is, and Black Feather items maybe
-- todo: Vibrant/Dim Bulb + doesn't work with pocket consumables. could be conditional actually if we have a list of char IDs with pocket actives
-- todo: idk about the BFFs synergy stuff but I noticed that Brown Nugget is incorrectly dealt with, it gained double damage in rep
-- hive mind and BFFs synergy has a lot of overlap also
-- brown nugget + sacrificial altar in AB+?!
-- ? Card + single use actives in Repentance? Alabaster Box
-- unrelated to conditionals: Glyph of Balance prediction in Item Reminder?

-- meta todo: Put a 100% save file for AB+ and for Rep on my flash drive

]]

-- General conditions
-- Tarot Cloth (AB+ and Rep) (fallback to English because most are just find+replace)
EID:AddCollectibleConditional("5.300", 451, nil, {locTable = "tarotClothBuffsAB", replaceColor = "ColorShinyPurple", noFallback = false})
if EID.isRepentance then EID:AddCollectibleConditional("5.300", 451, nil, {locTable = "tarotClothBuffs", replaceColor = "ColorShinyPurple", noFallback = false}) end
EID:AddCollectibleConditional("5.100", 356, nil, {locTable = "carBattery", replaceColor = "BlinkYellowGreen"}) -- Car Battery

-- IV Bag conditions (need to be applied in a specific order)
EID:AddCollectibleConditional(135, 75, "PHD") -- PHD improves IV Bag
EID:AddPlayerConditional(135, 14, "Keeper 0-1") -- Keeper gets 0-1 coins
if EID.isRepentance then EID:AddConditional(135, function() return EID:IsHardMode() end, "Hard Mode") end -- Hard Mode pays out less

-- Greed Mode
EID:AddConditional({241, "5.300.15"}, function() return game:IsGreedMode() end) -- Contract From Below, Temperance
EID:AddConditional("5.300.15", function() return game:IsGreedMode() and EID:PlayersHaveCollectible(451) end, "Tarot") -- Temperance + Greed + Tarot

-- Different effect for No Red Health players
-- TODO: separate this into a Rep-only part, and figure out what they do exactly with Keeper/Forgotten
EID:AddConditional({442, 676}, function() return EID:CheckForNoRedHealthPlayer() end, "No Red") -- Dark Prince's Crown, Empty Heart
EID:AddConditional(81, function() return EID:CheckForNoRedHealthPlayer() end) -- Dead Cat
--TODO: Keeper/Forgotten DON'T benefit from Empty Heart but DO benefit from Dark Prince's Crown? Nothing's consistent... does the Soul benefit while Forgotten does

-- Achievement checks (these always return true without REPENTOGON)
EID:AddConditional("5.350.23", function() return EID:HaveNotUnlockedAchievement(82) end) -- Sacrifice Poster unlocks The Lost

-- Specific character synergies/changes
EID:AddPlayerConditional(549, {10,14})-- Keeper/Lost + Brittle Bones
EID:AddPlayerConditional(108, 14, "No Effect") -- Keeper + The Wafer
EID:AddPlayerConditional(227, 14, "Keeper 0-1") -- Keeper + Piggy Bank
EID:AddPlayerConditional(501, 14) -- Keeper + Greed's Gullet
EID:AddPlayerConditional(230, 14, "Keeper") -- Keeper + Abaddon

-- Item Synergies
EID:AddSynergyConditional(7, 34); EID:AddCollectibleConditional("5.300.16", 7) -- Martyr + Book of Belial/The Devil
EID:AddSynergyConditional(316, 260) -- Black Candle + Cursed Eye
EID:AddCollectibleConditional("5.300.48", 286, nil, {lineColor = "ColorSilver"}) -- Blank Card + ? Card

-- Overridden by Brimstone
-- Haven't done it yet but I'm sure preparing the system for it
-- Remember most of these will be AB+ only (not EID.isRepentance)


if EID.isRepentance then
	-- General conditions
	EID:AddCollectibleConditional("5.100", 706, nil, {locTable = "abyssSynergies", lineColor = "ColorRed"}, false) -- Abyss (no item reminder)
	EID:AddCollectibleConditional("5.100", 59, nil, {locTable = "bookOfBelialBuffs"}) -- Belial Birthright
	EID:AddCollectibleConditional("5.100", 664, nil, {locTable = "bingeEaterBuffs"}) -- Binge Eater
	
	-- Co-op friendly items
	-- todo (yum heart, extension cord)
	
	-- Tainted characters reviving as themselves
	EID:AddPlayerConditional({161, "5.350.28"}, 25, "Tainted Revive") -- Ankh, Broken Ankh
	EID:AddPlayerConditional(311, 24, "Tainted Revive") -- Judas's Shadow
	EID:AddPlayerConditional(332, {29, 38}, "Tainted Revive") -- Lazarus's Rags
	EID:AddPlayerConditional("5.350.23", 31, "Tainted Revive") -- Sacrifice Poster

	-- Specific character synergies/changes
	EID:AddPlayerConditional("5.350.1", 14, "Keeper 0-1") -- Keeper + Swallowed Penny
	EID:AddPlayerConditional(188, 2) -- Cain + Abel
	EID:AddPlayerConditional(360, 13) -- Incubus + Lilith
	EID:AddPlayerConditional({240, 644}, 21) -- Tainted Isaac + Experimental Treatment, Consolation Prize
	EID:AddPlayerConditional({642, 694}, 10) -- Lost + Magic Skin, Heartbreak
	EID:AddPlayerConditional("5.350.156", 14) -- Keeper + Mother's Kiss
	EID:AddPlayerConditional(230, 18, "Bethany", nil, false) -- Bethany + Abaddon
	EID:AddPlayerConditional(230, 36, "Tainted Bethany") -- Tainted Bethany + Abaddon
	EID:AddPlayerConditional(245, 14, "Keeper") -- 20/20 + Keeper
	EID:AddPlayerConditional(705, {12, 24}) -- Dark Arts + Dark/Tainted Judas
	
	-- Item Synergies
	EID:AddCollectibleConditional(201, 147) -- Iron Bar refills Notched Axe
	EID:AddCollectibleConditional("5.350.172", 260) -- Black Candle + Cursed Penny
	EID:AddCollectibleConditional(501, 416) -- Greed's Gullet + Deep Pockets
	EID:AddSynergyConditional(245, {2, 153, 169}, nil, "20/20") -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	EID:AddSynergyConditional(330, 561, "Overridden", "Overrides") -- Soy+Almond Milk
end

----- Evaluation Functions -----

function EID:ConditionalCharCheck(playerType, includeTainted)
	-- We don't want to display irrelevant item info inside the Item Reminder
	if EID.InsideItemReminder then
		local player = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player
		if player:GetPlayerType() == playerType then return true
		elseif includeTainted and EID.isRepentance and Isaac.GetPlayerTypeByName(player:GetName()) == playerType then return true
		else return false end
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

function EID:IsGreedMode()
	return game:IsGreedMode()
end
function EID:IsHardMode()
	if game.Difficulty == 1 or game.Difficulty == 3 then return true
	else return false end
end

-- Check if we have any characters that can't have Red Health, to print additions to descs like Dead Cat
function EID:CheckForNoRedHealthPlayer()
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

-- Check for multiple players existing for items like Yum Heart and Extension Cord, includes J&E
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
    with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
    return string.gsub(str, what, with, count)
end
-- super simple table concatenation: https://www.tutorialspoint.com/concatenation-of-tables-in-lua-programming
local function TableConcat(t1,t2)
   for i=1,#t2 do
      t1[#t1+1] = t2[i]
   end
   return t1
end

function EID:applyConditionals(descObj)
	EID:CheckPlayersCollectibles()
	
	local typeVar = descObj.ObjType.."."..descObj.ObjVariant -- for general conditions (Tarot Cloth, Book of Virtues)
	local typeVarSub = descObj.fullItemString -- for specific conditions
	-- Combine general+specific conditions into one table
	local conds = {}
	if EID.DescriptionConditions[typeVar] then TableConcat(conds, EID.DescriptionConditions[typeVar]) end
	if EID.DescriptionConditions[typeVarSub] then TableConcat(conds, EID.DescriptionConditions[typeVarSub]) end	
	-- Check every condition we need to check for this item
	for _, cond in ipairs(conds) do
		-- Search for the localization string; "S" (for generals) or "T.V.S" or "T.V.S (Modifier)" or "Modifier"
		local locTable = cond.locTable or "ConditionalDescs"
		local text = nil
		
		if cond.noTable then
			text = EID:getDescriptionEntry(cond.modifierText, nil, cond.noFallback)
		elseif cond.general then
			text = EID:getDescriptionEntry(locTable, descObj.ObjSubType, cond.noFallback)
		elseif cond.modifierText then
			text = EID:getDescriptionEntry(locTable, typeVarSub .. " (" .. cond.modifierText .. ")", cond.noFallback)
			if text == nil then text = EID:getDescriptionEntry(locTable, cond.modifierText, cond.noFallback) end
		else
			text = EID:getDescriptionEntry(locTable, typeVarSub, cond.noFallback)
		end
		
		-- If we find the localization string for this condition, and it passes the test, modify the description text
		if text ~= nil and cond.func() then
			local variableText = type(cond.variableText) == "function" and cond.variableText(descObj) or cond.variableText
			local variableText2 = type(cond.variableText2) == "function" and cond.variableText2(descObj) or cond.variableText2
			
			-- String = append
			if type(text) == "string" then
				text = EID:ReplaceVariableStr(text, 1, variableText)
				text = EID:ReplaceVariableStr(text, 2, variableText2)
				local iconStr = "#"
				if cond.bulletpoint then iconStr = iconStr .. "{{" .. cond.bulletpoint .. "}} " end
				if cond.lineColor then iconStr = iconStr .. "{{" .. cond.lineColor .. "}}" end
				EID:appendToDescription(descObj, iconStr..text:gsub("#",iconStr))
				
			-- Table with 1 entry = replace
			elseif #text == 1 then
				descObj.Description = EID:ReplaceVariableStr(EID:ReplaceVariableStr(text[1], 1, variableText), 2, variableText2)
				
			-- Table with 2+ entries = find and replace pairs
			-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
			else
				local pos = 1
				while pos < #text do
					local toFind = text[pos]
					local replaceWith = EID:ReplaceVariableStr(text[pos+1], 1, variableText)
					replaceWith = EID:ReplaceVariableStr(replaceWith, 2, variableText2)
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
					pos = pos + 2
				end
			end
		end
	end

	
	return descObj
end
