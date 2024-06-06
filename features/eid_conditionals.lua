local game = Game()

--[[ Descs that need a variant:
	things that apply only to Lost/Tainted Lost (broken heart card?) (Heartbreak?)
	spoilers descs
	lachyphragy in co-op or is that obvious? tech zero / extension cord in co-op? yum heart and such
	black candle + cursed penny / cursed eye
	healing stuff for keeper? (what, what did this sentence mean)
	Items that have synergies with other specific items (duh)
	Items that override other items (brimstone, mom's knife, epic fetus stuff)
	BFFs / the fly one + Tainted Apollyon, Tainted Eve; melody trinket + Tainted Eve
	
	TODO: new config options for spoiler descs, and for hiding the "needed for collection" stuff
]]

--[[ 

Due to co-op, it's best for replacing text in descriptions to only be used for things like Greed/Hard Mode
Otherwise, appending is better so that players not affected by the change can still see what it will be for them
]]
EID.DescriptionConditions = {}

-- TODO: add a debugging command that tells you about missing expected strings / when two conditions share a string they shouldn't?
-- TODO: change the string reading to act like tarot cloth in regards to string, table, and find/replace table
-- TODO: chagen the modifier text in applyconditionals to work where it can either add to the id or replace it
-- new config options for spoiler descs
-- add color options? highlight good/bad conditions?
-- Temperance + Tarot Greed needs testing, and tarot cloth needs to not send the signal anymore in eid_modifiers
-- test if tarot cloth plays well with the item reminder; one limitation of our system here is a lack of knowing which player is getting the desc?
-- in general these maybe need to reference the player better; after we've picked up an item we don't need to hear things about other players' synergies/player IDs
-- should we be using the collectiblesOwned table like eid_modifiers?

EID:AddConditional({241, "5.300.15"}, function() return Game():IsGreedMode() end) -- Contract From Below, Temperance
EID:AddConditional("5.300.15", function() return Game():IsGreedMode() and EID:PlayersHaveCollectible(451) end, "Tarot") -- Temperance + Greed + Tarot

-- IV Bag conditions (need to be applied in a specific order)
EID:AddCollectibleConditional(135, 75, "PHD") -- PHD improves IV Bag
EID:AddPlayerConditional(135, 14, "Keeper") -- Keeper gets 0-1 coins
EID:AddConditional(135, function() return EID:IsHardMode() end, "Hard Mode") -- Hard Mode pays out less

EID:AddConditional({81, 442, 676}, function() return EID:CheckForNoRedHealthPlayer() end, "No Red") -- Dead Cat, Dark Prince's Crown, Empty Heart

-- Achievement checks (these always return true without REPENTOGON)
EID:AddConditional("5.350.23", function() return EID:HaveNotUnlockedAchievement(82) end) -- Sacrifice Poster unlocks The Lost

-- Tainted characters reviving as themselves
EID:AddPlayerConditional({161, "5.350.28"}, 25, "Tainted Revive") -- Ankh, Broken Ankh
EID:AddPlayerConditional(311, 24, "Tainted Revive") -- Judas's Shadow
EID:AddPlayerConditional(332, 29, "Tainted Revive") -- Lazarus's Rags
EID:AddPlayerConditional("5.350.23", 31, "Tainted Revive") -- Sacrifice Poster

-- Specific character synergies/changes
EID:AddPlayerConditional({240, 644}, 21, "Tainted Isaac") -- Tainted Isaac + Experimental Treatment, Consolation Prize
EID:AddPlayerConditional({549, 642}, 10, "Lost") -- Lost/Tainted Lost + Brittle Bones, Magic Skin
EID:AddPlayerConditional({549, "5.350.1"}, 14, "Keeper") -- Keeper/Tainted Keeper + Brittle Bones, Swallowed Penny

-- Item Synergies
-- should we have a function that applies a condition to both IDs, like AddSynergyConditional? it might be a frequent occurrence
EID:AddCollectibleConditional(201, 147) -- Iron Bar refills Notched Axe
EID:AddCollectibleConditional(7, 34); EID:AddCollectibleConditional({34, "5.300.16"}, 7) -- Martyr + Book of Belial
EID:AddCollectibleConditional(316, 260); EID:AddCollectibleConditional(260, 316); -- Black Candle + Cursed Eye (i didnt actually put it in the loc file yet)

-- Overridden by Brimstone


--[[
	Argument 1: The item ID
	For convenience, numbers are assumed to be a collectible ID; strings in Type.Var.Sub format can be used as well
	If you're adding a condition that applies to many items, you can pass in a table of IDs
	
	Argument 2: The function that will apply the condition if it returns true
	
	Argument 3 (optional): Additional text for finding the string in the localization file
	This allows you to apply multiple conditions to a single item, or use an unrelated string
	It will check for the string existing by itself, or appended to the ID
	For example, if you put "Overridden" here, modifying Tech X, it will look for ConditionalDescs["5.100.395 (Overridden)"] AND ConditionalDescs["Overridden"]
	
	Argument 4 (optional): Table with any additional rarely-needed info:
	abpOnly: Set to true if this condition shouldn't be ran in Repentance
	repOnly: Set to true if this condition shouldn't be ran in Afterbirth+ (unnecessary if the string isn't in the AB+ localization file to begin with)
	variableText: If there's a {1} in the desc, it will be replaced with this. Use a table if there's multiple values to replace
	collectibleText: Give this an item ID, and it replaces {1} with {{Collectible###}} Item Name
	playerText: Give this a player ID, and it replaces {1} with {{Player##}} Player Name
	locTable: Specify a different table to look for the localization string in (including the base table), rather than ConditionalDescs
]]
function EID:AddConditional(IDs, funcText, modText, extraTable)
	if type(IDs) ~= "table" then IDs = {IDs} end
	if modText == "" then modText = nil end
	extraTable = extraTable or {}
	extraTable.func = funcText;
	extraTable.modifierText = modText;
	for _, id in ipairs(IDs) do
		if type(id) ~= "string" then id = "5.100." .. id end
		EID.DescriptionConditions[id] = EID.DescriptionConditions[id] or {}
		table.insert(EID.DescriptionConditions[id], extraTable)
	end
end

-- These are easy to use functions for the most frequent conditionals: Having a specific collectible or having a specific player
-- They pass on the ID to the text, so the collectible/player icon/name can be inserted into the description if desired
-- This can also take a table for the owned IDs, so that for instance, Brimstone can easily have all of its "Overrides" assigned at once
function EID:AddCollectibleConditional(IDs, ownedIDs, modText, extraTable)
	if type(ownedIDs) ~= "table" then ownedIDs = {ownedIDs} end
	extraTable = extraTable or {}
	for _, ownedID in ipairs(ownedIDs) do
		
		extraTable.collectibleText = ownedID;
		EID:AddConditional(IDs, function() return EID:PlayersHaveCollectible(ownedID) end, modText, extraTable)
	end
end

-- By default, this checks for having the regular or tainted character, as all our conditionals so far apply to both
-- There is a fifth argument for it, or use AddNonTaintedPlayerConditional
function EID:AddPlayerConditional(IDs, charID, modText, extraTable, includeTainted)
	if charID == nil then return end
	includeTainted = includeTainted or true
	extraTable = extraTable or {}
	extraTable.playerText = charID;
	EID:AddConditional(IDs, function() return EID:PlayersHaveCharacter(charID,includeTainted) end, modText, extraTable)
end
function EID:AddNonTaintedPlayerConditional(IDs, charID, modText, extraTable)
	AddPlayerConditional(IDs, charID, modText, extraTable, false)
end

-- functions created for conditionals

function EID:IsGreedMode()
	return game:IsGreedMode()
end
function EID:IsHardMode()
	if game.Difficulty == 1 or game.Difficulty == 3 then return true
	else return false end
end

-- Check if we have any characters that can't have Red Health, to print additions to descs like Dead Cat
function EID:CheckForNoRedHealthPlayer()
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if EID.NoRedHeartsPlayerIDs[player:GetPlayerType()] then
			return true
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

-- thing to fix find/replace pairs with hyphens (like "1-2") breaking because hyphen is a special char
-- https://stackoverflow.com/questions/29072601/lua-string-gsub-with-a-hyphen
local function replace(str, what, with, count)
    what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
    with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
    return string.gsub(str, what, with, count)
end


function EID:applyConditionals(descObj)
	local typeVarSub = descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType
	
	local conds = EID.DescriptionConditions[typeVarSub]
	if not conds then return descObj end
	
	-- Check every condition we need to check for this item
	for _, cond in ipairs(conds) do
		-- Search for the localization string; "T.V.S" or "T.V.S (Modifier)" or "Modifier"
		local locTable = cond.locTable or "ConditionalDescs"
		local text
		if cond.modifierText then
			text = EID:getDescriptionEntry(locTable, typeVarSub .. " (" .. cond.modifierText .. ")", true)
			if text == nil then text = EID:getDescriptionEntry(locTable, cond.modifierText, true)
		else
			text = EID:getDescriptionEntry(locTable, typeVarSub, true)
		end
		if (text ~= nil) and (not cond.repOnly or REPENTANCE) and (not cond.abpOnly or not REPENTANCE) and cond.func() == true then
			if cond.variableText then
				if type(cond.variableText) ~= "table" then cond.variableText = {cond.variableText} end
				for i,v in ipairs(cond.variableText) do
					text = EID:ReplaceVariableStr(text, i, v)
				end
			end
			-- this has got to be improved, because I also want it to support card or trinket markups
			if cond.collectibleText then
				local itemName = EID:getObjectName(5, 100, cond.collectibleText)
				text = EID:ReplaceVariableStr(text, 1, "{{Collectible" .. cond.collectibleText .. "}} " .. itemName)
			end
			if cond.playerText then
				--todo: make getplayername function
				local playerName = EID:getPlayerName(cond.playerText)
				text = EID:ReplaceVariableStr(text, 1, "{{Player" .. cond.playerText .. "}} " .. playerName)
			end
			
			--note: the following block of "append/replace/findreplace" code is basically identical to tarot cloth's. this needs to be a more general function
			-- String = append
			if type(text) == "string" then
				descObj.Description = descObj.Description .. "#" .. text
			-- Table with 1 entry = replace
			elseif #text == 1 then
				descObj.Description = text
			-- Table with 2+ entries = find and replace
			-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
			else
				local pos = 1
				while pos < #text do
					local toFind = text[pos]
					local replaceWith = text[pos+1]
					
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
