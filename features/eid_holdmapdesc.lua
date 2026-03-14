local game = Game()
local GLITCH_ITEM_FLAG = 4294967296
local currentBlacklist
local lastInputTime = 0
local lastScrollDirection = 1 -- used for automatic scroll feature, if no description is visible for a category
local autoScrollTriesLeft = math.mininteger -- Stores how many tries the automatic category skip has left to do. This prevents infinite loops, when the player has no items
local numAvailableDescriptionSlots = 0

EID.ItemReminderBlacklist = { ["5.100.714"] = true, ["5.100.715"] = true } -- Dont display these in the Item reminder view
EID.ItemReminderTempDescriptions = {} -- Temporary stores descriptions that will be displayed after everythng got evaluated
EID.ItemReminderSelectedCategory = 0 -- Currently selected category
EID.ItemReminderSelectedPlayer = 0 -- Currently selected player
EID.ItemReminderSelectedItems = {} -- Currently selected Item per category
EID.ItemReminderDisplayingScrollbar = false -- For if the scrollbar is currently being drawn
EID.InsideItemReminder = false -- Disable some modifiers, when building the Item Reminder description
EID.ItemReminderPlayerEntity = nil -- for description modifiers to reference


-- Data Tables --

-- Format : Table of { 	id = "Category Name", 
--						entryGenerators = table of functions to generate descriptions, 
--						isScrollable = only shows one entry at a time but is scrollable, 
--						hideInOverview = if true, dont show category content in overview. can be function or boolean 
--					 }
-- Execution order is handles by the order of the table entries.
-- Category name is interpreted as a lookup for the "EID.descriptions.ItemReminder.CategoryNames" table. If no translation is found, use english or the lookup value
EID.ItemReminderCategories = {
	{ id = "Overview", entryGenerators = {} }, -- special handling for Overview category
	{ id = "Character",
		entryGenerators = {
			function(player) EID:ItemReminderHandleCharacterInfo(player) end
		},
		hideInOverview = function(_) -- hide character description from overview, if player is not in the starting room
			return game:GetLevel():GetStartingRoomIndex() ~= game:GetLevel():GetCurrentRoomIndex()
		end
	},
	{ id = "Special", entryGenerators = { function(player) EID:ItemReminderHandlePoopSpells(player) end, } },
	{ id = "Wisps",
		isScrollable = true,
		entryGenerators = { function(player) EID:ItemReminderHandleLemegetonWisps(player) end, },
		scrollbarGenerator = function(player)
			local playerNum = EID:getPlayerID(player, true)
			return EID:ItemReminderHandleItemScrollbarFeature(EID.WispsPerPlayer[playerNum], 100, false)
		end
	},
	{ id = "Actives", entryGenerators = { function(player) EID:ItemReminderHandleActiveItems(player) end, } },
	{ id = "Pockets",
		entryGenerators = {
			function(player) EID:ItemReminderHandleDiceBag(player) end,
			function(player) EID:ItemReminderHandlePocketActive(player) end,
			function(player) EID:ItemReminderHandlePocketItems(player) end }
	},
	{ id = "Trinkets",
		isScrollable = true,
		entryGenerators = { function(player) EID:ItemReminderHandleTrinkets(player) end },
		scrollbarGenerator = function(player)
			return EID:ItemReminderHandleItemScrollbarFeature(EID:ItemReminderHeldPlusGulped(player), 350, true)
		end
	},
	{ id = "Passives",
		isScrollable = true,
		entryGenerators = { function(player) EID:ItemReminderHandleSelectedPassiveItem(player) end },
		scrollbarGenerator = function(player)
			local playerNum = EID:getPlayerID(player, true)
			return EID:ItemReminderHandleItemScrollbarFeature(EID.RecentlyTouchedItems[playerNum], 100, true)
		end
	},
}

-- simple function to reset the selected items in the scrollbars. can specify a category name like "Passives"
function EID:ResetItemReminderSelectedItems(categoryName)
	if not categoryName then
		for i=0,#EID.ItemReminderCategories-1 do EID.ItemReminderSelectedItems[i] = 0 end
	else
		for i,category in ipairs(EID.ItemReminderCategories) do
			if category.id == categoryName then EID.ItemReminderSelectedItems[i-1] = 0 return end
		end
	end
end
EID:ResetItemReminderSelectedItems()

-- This table is for items that should have a special modifier applied to them when viewed in the item reminder
-- Format: ItemID = table
-- 		modifierFunction = function that modifies the original description object of the item
-- 		isCheat = Only evaluate, if the "ItemReminderShowRNGCheats" config option is enabled
--		isHiddenInfo = Only evaluate, if the "ItemReminderShowHiddenInfo" config option is enabled
--		isRepentance = Only evaluate, if Repentance is installed
--      noOverview = If true, this modifier doesn't have special priority in the Overview category (most do)
-- Make sure to return true if the description was modified, so the overview knows
EID.ItemReminderDescriptionModifier = {
	---------------- Passive Items ----------------
	["5.100.392"] = { -- Zodiac
		isHiddenInfo = true,
		modifierFunction = function(descObj, player)
			local zodiacItem = player:GetZodiacEffect()
			if zodiacItem > 0 then
				descObj = EID:ItemReminderReplaceWithResult(descObj, zodiacItem)
				return true
			end
		end
	},
	["5.100.700"] = { -- Echo Chamber
		isRepentance = true,
		modifierFunction = function(descObj, player, inOverview)
			local playerID = EID:getPlayerID(player, true)
			local pickupHistory = EID.PlayerItemInteractions[playerID].pickupHistory
			if not pickupHistory then return end
			local pickupNames = ""
			local pickupsToPrint = 3
			for i = 1, #pickupHistory do
				if pickupHistory[i][4] then -- Echo chamber was owned before this card/pill was used and it's not a mimic usage
					if pickupHistory[i][1] == "pill" then
						local name = EID:getPillName(pickupHistory[i][3], false)
						if (pickupHistory[i][2] % 2048 == 14) then name = EID:getPillName(9999, false) end
						pickupNames = pickupNames .. "{{Pill" .. pickupHistory[i][2] .. "}} {{ColorPill}}" .. name .. "#"
					else
						local name = EID:getObjectName(5, 300, pickupHistory[i][3])
						pickupNames = pickupNames .. "{{Card" .. pickupHistory[i][3] .. "}} {{ColorCard}}" .. name .. "#"
					end
					pickupsToPrint = pickupsToPrint - 1
					if (pickupsToPrint == 0) then break end
				end
			end
			if pickupNames ~= "" then
				EID:ItemReminderAddResult(descObj, pickupNames, inOverview)
				return true
			end
		end
	},
	["5.100.464"] = { -- Glyph of Balance
		modifierFunction = function(descObj, player, inOverview)
			local result = EID:GlyphOfBalancePrediction(player)
			EID:ItemReminderAddResult(descObj, result, inOverview)
			return true
		end
	},

	---------------- Active Items ----------------

	["5.100.44"] = { -- Teleport! location
		isCheat = true,
		modifierFunction = function(descObj, player, inOverview)
			-- The result preview changes as soon as we activate Teleport, which looks awkward, so try to not display the result while mid-teleport.
			-- Doesn't work perfectly and only in Rep
			if not EID.isRepentance or player:GetSprite():GetAnimation() ~= "TeleportUp" then
				EID:ItemReminderAddResult(descObj, EID:Teleport1Prediction(EID:GetItemSeed(player, 44)), inOverview)
				return true
			end
		end,
	},
	["5.100.297"] = { -- Pandora's Box shortened description for overview
		modifierFunction = function(descObj, player, inOverview)
			if inOverview then
				-- Crystal Key interaction takes priority
				if EID.isRepentance and player:HasTrinket(175) then
					local result = "{{Trinket175}} " .. EID:getDescriptionEntry("PandorasBoxStrangeKeyEffect")
					EID:ItemReminderAddResult(descObj, result, inOverview)
					return true
				end
				-- remove spaces after semicolons
				descObj.Description = string.gsub(descObj.Description, "; ", ";")
				descObj.Description = string.gsub(descObj.Description, "{{ColorBagComplete}} ", "{{ColorBagComplete}}")
				-- find the highlighted text
				local startLoc = string.find(descObj.Description, "{{ColorBagComplete}}")
				if startLoc then
					-- display the current result and the next floor's result; this is a bit complicated if you want to be truly accurate
					local count = 2
					local skip = 0
					
					local level = game:GetLevel()
					local stageNum = level:GetAbsoluteStage()
					local inAscent = EID.isRepentance and (level:IsAscent() or level:IsPreAscent())
					local final = not level:IsNextStageAvailable()
					
					if game:IsGreedMode() then
						skip = 1
						if stageNum == 5 then skip = 0 -- Depths 2 -> Womb 1
						elseif stageNum == 7 or stageNum == 10 then skip = 2
						elseif stageNum == 0 then count = 1 end -- Womb 1 -> Sheol, Sheol -> Chest
					else
						if final or stageNum == 12 then count = 1 -- Dark Room/Chest/The Void/Home/Corpse 2 doesn't display any more
						elseif game:IsGreedMode() then count = 2 -- prevent Greed Mode Sheol from behaving weird
						elseif stageNum == 8 then count = 3; skip = 1 -- Womb 2 displays Sheol and Cathe
						elseif stageNum == 9 then count = 3 -- ??? displays Sheol and Cathe
						elseif stageNum == 10 then skip = 1 end -- Sheol/Cathe skip one to display Dark Room/Chest
					end
					
					local newDesc = ""
					if inAscent then
						-- Go through the description, copying the current line, until we find the highlighted line, appending the previous line to it
						-- Exception: Basement 1 wants to append the final line (Home) so just keep iterating
						local highlightLine = ""
						local secondLine = ""
						for w in string.gmatch(descObj.Description, "([^#;]+)") do
							if string.find(w, "{{ColorBagComplete}}") then
								highlightLine = w
								if stageNum ~= 1 then break end
							else
								secondLine = w
							end
						end
						newDesc = highlightLine .. "#" .. secondLine
					else
						local truncated = string.sub(descObj.Description, startLoc)
						for w in string.gmatch(truncated, "([^#;]+)") do
							-- skip lines after adding the highlighted line
							if newDesc ~= "" and skip > 0 then
								skip = skip - 1
							else
								newDesc = newDesc .. w
								count = count - 1
								if count == 0 then break
								else newDesc = newDesc .. "#" end
							end
						end
					end
					EID:ItemReminderAddResult(descObj, newDesc, inOverview)
					return true
				end
			end
		end
	},
	["5.100.407"] = { -- Purity current stat boost
		modifierFunction = function(descObj, player, inOverview)
			local statBoost = player:GetCollectibleRNG(407):GetSeed() % 4
			EID:ItemReminderAddResult(descObj, EID:getDescriptionEntry("PurityBoosts", statBoost), inOverview)
			return true
		end
	},
	["5.100.419"] = { -- Teleport 2.0 location
		modifierFunction = function(descObj, _, inOverview)
			EID:ItemReminderAddResult(descObj, EID:Teleport2Prediction(), inOverview)
			return true
		end
	},
	["5.100.476"] = { -- D1
		isCheat = true,
		modifierFunction = function(descObj, player, inOverview)
			EID:ItemReminderAddResult(descObj, EID:D1Prediction(EID:GetItemSeed(player, 476)), inOverview)
			return true
		end
	},
	["5.100.477"] = { -- Void
		modifierFunction = function(descObj, player, inOverview)
			local absorbedItems = EID.absorbedItems[tostring(EID:getPlayerID(player, true))]
			if absorbedItems then
				local descriptionText = ""
				local countItems = 0
				for _, _ in pairs(absorbedItems) do
					countItems = countItems + 1
				end
				if countItems > 0 then
					if countItems > 5 then
						descriptionText = "{{Blank}} "
					end
					for k, _ in pairs(absorbedItems) do
						descriptionText = descriptionText .. "{{Collectible" .. k .. "}} "
						if countItems <= 5 then
							descriptionText = descriptionText .. EID:getObjectName(5, 100, tonumber(k)) .. "#"
						end
					end
					EID:ItemReminderAddResult(descObj, descriptionText, inOverview)
					return true
				end
			end
		end
	},
	["5.100.485"] = { -- Crooked Penny
		isCheat = true,
		modifierFunction = function(descObj, player, inOverview)
			EID:ItemReminderAddResult(descObj, EID:CrookedPennyPrediction(EID:GetItemSeed(player, 485), player:HasCollectible(356)), inOverview)
			return true
		end
	},
	["5.100.488"] = { -- Metronome
		isCheat = true,
		modifierFunction = function(descObj, player)
			local predictionItem = EID:MetronomePrediction(EID:GetItemSeed(player, 488))
			descObj = EID:ItemReminderReplaceWithResult(descObj, predictionItem)
			return true
		end
	},
	["5.100.489"] = { -- D Infinity
		modifierFunction = function(descObj, player)
			local predictionItem = EID:CurrentDInfinity(EID:GetItemSeed(player, 489), player)
			descObj = EID:ItemReminderReplaceWithResult(descObj, predictionItem)
			return true
		end
	},
	["5.100.710"] = { -- Bag of Crafting
		isRepentance = true,
		modifierFunction = function(descObj, _, inOverview)
			local floorQuery = EID.BoC.FloorOverride or EID.BoC.FloorQuery
			local inventoryQuery = EID.BoC.InventoryOverride or EID.BoC.InventoryQuery
			local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
			local total = #floorQuery + #inventoryQuery + #bagItems
			local text = EID:ReplaceVariableStr(EID:getDescriptionEntry("CraftingNumAvailableItems"), 1, total)
			if total < 8 then text = text .. "#{{Warning}} ".. EID:getDescriptionEntry("CraftingWarningAvailableItems") end
			
			if EID.CraftingIsHidden then
				local controllerEnabled = EID.bagPlayer.ControllerIndex > 0
				local hideKey = EID.KeyboardToString[EID.Config["CraftingHideKey"]]
				local hideButton = controllerEnabled and EID.ButtonToIconMap[EID.Config["CraftingHideButton"]]
				text = text .. "#!!! ".. EID:ReplaceVariableStr(EID:getDescriptionEntry("CraftingIsHidden"), 1, (hideKey or hideButton))
			end
			if inOverview then
				descObj.Description = text
			else
				descObj.Description = descObj.Description .. "#" .. text
			end
			return true
		end
	},
	---------------- CARDS ----------------
	["5.300.73"] = { -- give The Stars? priority in the reminder
		isRepentance = true,
		modifierFunction = function(descObj, _, inOverview)
			-- handled by The Stars? modifier
			return true
		end
	},
	
	---------------- TRINKETS ----------------

	["5.350.4"] = { -- Broken Remote has two possible effects depending on if its doubled
		modifierFunction = function(descObj, player, inOverview)
			local originalName = descObj.Name
			if player:GetTrinketMultiplier(4) > 1 then
				-- Teleport 2.0
				local demoDescObj = EID:getDescriptionObj(5, 100, 419)
				EID.ItemReminderDescriptionModifier["5.100.419"].modifierFunction(descObj, player, inOverview)
				descObj.Name = originalName
				if inOverview then EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name) end
				return true
			elseif EID.Config["ItemReminderShowRNGCheats"] then
				-- Teleport
				local demoDescObj = EID:getDescriptionObj(5, 100, 44)
				EID.ItemReminderDescriptionModifier["5.100.44"].modifierFunction(descObj, player, inOverview)
				descObj.Name = originalName
				if inOverview then EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name) end
				return true
			end
		end
	},
	["5.350.32"] = { -- Liberty Cap
		isHiddenInfo = true,
		modifierFunction = function(descObj, player)
			local result = EID:LibertyCapPrediction(player)
			if result then
				descObj = EID:ItemReminderReplaceWithResult(descObj, result)
				return true
			end
		end
	},
	["5.350.64"] = { -- Rainbow Worm
		isHiddenInfo = true,
		modifierFunction = function(descObj, _)
			-- Rainbow Worm's trinket IDs it grants, in order
			local rainbowWormEffects = { [0] = 9, 11, 65, 27, 10, 12, 26, 66, 96, 144 }
			local trinketID = rainbowWormEffects[math.floor(game.TimeCounter / 30 / 3) % (EID.isRepentance and 10 or 8)]
			descObj = EID:ItemReminderReplaceWithResult(descObj, trinketID, 350)
			return true
		end
	},
	["5.350.75"] = {   -- 404 Error
		isHiddenInfo = true,
		modifierFunction = function(descObj, _)
			local seed = game:GetLevel():GetCurrentRoom():GetSpawnSeed()
			local result = EID:RNGNext(seed, 2, 7, 25) % (EID.isRepentance and 189 or 128) + 1
			descObj = EID:ItemReminderReplaceWithResult(descObj, result, 350)
			return true
		end
	},
	["5.350.132"] = { -- Broken Syringe
		isHiddenInfo = true,
		modifierFunction = function(descObj, player)
			local result = EID:BrokenSyringePrediction(player)
			if result then
				descObj = EID:ItemReminderReplaceWithResult(descObj, result)
				return true
			end
		end
	},
	["5.350.153"] = { -- Mom's Lock
		isHiddenInfo = true,
		modifierFunction = function(descObj, player)
			local result = EID:MomsLockPrediction(player)
			if result then
				descObj = EID:ItemReminderReplaceWithResult(descObj, result)
				return true
			end
		end
	},
	["5.350.166"] = { -- Modeling Clay
		isRepentance = true,
		modifierFunction = function(descObj, player)
			-- When gulped, Modeling Clay's current item becomes Hidden Information
			if EID.Config["ItemReminderShowHiddenInfo"] or player:GetTrinket(0) == 166 or player:GetTrinket(1) == 166 then
				local modelingClayItem = player:GetModelingClayEffect()
				if modelingClayItem > 0 then
					descObj = EID:ItemReminderReplaceWithResult(descObj, modelingClayItem)
					return true
				end
			end
		end
	},
}



-- Simple function to help with adding properly formatted sections to the reminder description
-- returns false, when no further descriptions should be added
function EID:ItemReminderAddTempDescriptionEntry(icon, title, newDesc)
	table.insert(EID.ItemReminderTempDescriptions, { icon or "{{Blank}}", title, newDesc })
	numAvailableDescriptionSlots = numAvailableDescriptionSlots - 1
	return EID:ItemReminderCanAddMoreToView()
end

-- returns true, if its possible for the currently evaluated view to have more descriptions added to it
function EID:ItemReminderCanAddMoreToView()
	return numAvailableDescriptionSlots > 0
end

-- Adds a formatted "Result" text to the item name 
function EID:ItemReminderAddResultHeaderSuffix(descObj, newName)
	local resultHeader = EID:getDescriptionEntry("ItemReminder", "ResultHeader")
	if not string.find(resultHeader, "{1}") then resultHeader = "{1}" .. resultHeader end
	if newName then
		local iconString = EID:GetIconStringByDescriptionObject(descObj)
		descObj.Name = newName ..
			" (" .. iconString .. " " .. EID:ReplaceVariableStr(resultHeader, descObj.Name) .. ")"
	else
		descObj.Name = EID:ReplaceVariableStr(resultHeader, descObj.Name)
	end
end
-- Adds a formatted "Result" text appended to the item description
function EID:ItemReminderAddResultAppend(descObj, newText)
	local iconString = EID:GetIconStringByDescriptionObject(descObj)
	local resultHeader = EID:getDescriptionEntry("ItemReminder", "ResultHeader")
	if not string.find(resultHeader, "{1}") then resultHeader = "{1}" .. resultHeader end
	descObj.Description = descObj.Description .. "#" .. iconString .. " {{ColorObjName}}" .. EID:ReplaceVariableStr(resultHeader, descObj.Name) .. "#" .. newText
end
-- Helper function for modifiers that want to replace the description in the overview, but append to the description otherwise
function EID:ItemReminderAddResult(descObj, newText, inOverview)
	if inOverview then
		EID:ItemReminderAddResultHeaderSuffix(descObj)
		descObj.Description = newText
	else
		EID:ItemReminderAddResultAppend(descObj, newText)
	end
end
-- Helper function for modifiers like Modeling Clay / Liberty Cap that replace their description with the temporary item's description
function EID:ItemReminderReplaceWithResult(descObj, result, resultVariant)
	local demoDescObj = EID:getDescriptionObj(5, resultVariant or 100, result)
	EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
	descObj.Icon = "{{" .. EID:GetIconNameByVariant(resultVariant or 100) .. result .. "}}"
	descObj.Description = demoDescObj.Description
	return true
end

-- Add item description for a given entity to the reminder. Also tries to apply special modifiers if present
function EID:ItemReminderAddDescription(player, entityType, variant, subType, extraIcon)
	-- If given an item ID string, split it into type/variant/subtype
	if type(entityType) == "string" then entityType, variant, subType = EID:SplitTVS(entityType) end
	local objectID = entityType .. "." .. variant .. "." .. subType
	if currentBlacklist[objectID] then return true end

	local descObj = EID:getDescriptionObj(entityType, variant, subType)

	local specialDesc = EID.ItemReminderDescriptionModifier[objectID]
	if specialDesc and type(specialDesc.modifierFunction) == "function" then
		-- don't add, if description modifier is a cheat and cheats are disabled
		local evaluateFunction = true
		if (specialDesc.isCheat and not EID.Config["ItemReminderShowRNGCheats"]) then evaluateFunction = false end
		if (specialDesc.isHiddenInfo and not EID.Config["ItemReminderShowHiddenInfo"]) then evaluateFunction = false end
		if (specialDesc.isRepentance and not EID.isRepentance) then evaluateFunction = false end
		if evaluateFunction then
			specialDesc.modifierFunction(descObj, player)
		end
	end

	currentBlacklist[objectID] = true
	local iconString = extraIcon or EID:GetIconStringByDescriptionObject(descObj)
	return EID:ItemReminderAddTempDescriptionEntry(iconString, descObj.Name, descObj.Description)
end

-- In the overview category, check for special descriptions
function EID:ItemReminderAddSpecialDescriptions(player)
	for objectID,specialDesc in pairs(EID.ItemReminderDescriptionModifier) do
		local evaluateFunction = true
		if (not EID:PlayerHasItem(player, objectID)) then evaluateFunction = false end
		if (specialDesc.isCheat and not EID.Config["ItemReminderShowRNGCheats"]) then evaluateFunction = false end
		if (specialDesc.isHiddenInfo and not EID.Config["ItemReminderShowHiddenInfo"]) then evaluateFunction = false end
		if (specialDesc.isRepentance and not EID.isRepentance) then evaluateFunction = false end
		if evaluateFunction then
			local Type, Var, Sub = EID:SplitTVS(objectID)
			local descObj = EID:getDescriptionObj(Type, Var, Sub)
			if specialDesc.modifierFunction(descObj, player, true) then
				currentBlacklist[objectID] = true
				local iconString = EID:GetIconStringByDescriptionObject(descObj)
				EID:ItemReminderAddTempDescriptionEntry(iconString, descObj.Name, descObj.Description)
			end
		end
		if not EID:ItemReminderCanAddMoreToView() then return end
	end
end

-- Item Reminder function: Information about the player character's traits
---@param player EntityPlayer
function EID:ItemReminderHandleCharacterInfo(player)
	local playerType = player:GetPlayerType()
	local playerDesc = EID:getDescriptionEntry("CharacterInfo")[playerType]
	if playerDesc and playerDesc[2] ~= "" then
		EID:ItemReminderAddTempDescriptionEntry(EID:GetPlayerIcon(playerType), playerDesc[1], playerDesc[2])
	end
end

-- Item Reminder function: Passive Item Descriptions
---@param player EntityPlayer
function EID:ItemReminderHandleSelectedPassiveItem(player)
	local playerNum = EID:getPlayerID(player, true)
	if EID.RecentlyTouchedItems[playerNum] and #EID.RecentlyTouchedItems[playerNum] > 0 then
		EID:ItemReminderHandleItemPrinting(player, EID.RecentlyTouchedItems[playerNum], 100, true)
	end
end

-- Item Reminder function: Active Item Descriptions
---@param player EntityPlayer
function EID:ItemReminderHandleActiveItems(player)
	-- limit number of active item descriptions to 2, since Slot 3 and 4 are handled seperately
	for i = 0, 1 do
		if not EID:ItemReminderCanAddMoreToView() then return end
		-- the modulo is to convert negative IDs (glitched items) to positive IDs
		local heldActive = player:GetActiveItem(i) % GLITCH_ITEM_FLAG
		if heldActive > 0 then
			EID:ItemReminderAddDescription(player, 5, 100, heldActive)
		end
	end
end

-- Item Reminder function: pocket actives
---@param player EntityPlayer
function EID:ItemReminderHandlePocketActive(player)
	if not EID.isRepentance or not EID:ItemReminderCanAddMoreToView() then return end
	local pocketActive = player:GetActiveItem(2) or 0
	if pocketActive > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, pocketActive)
	end
end

-- Item Reminder function: dice bag
---@param player EntityPlayer
function EID:ItemReminderHandleDiceBag(player)
	if not EID.isRepentance or not EID:ItemReminderCanAddMoreToView()  then return end

	local diceBag = player:GetActiveItem(3) or 0
	if diceBag > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, diceBag, "{{Trinket154}}")
	end
end

-- Item Reminder function: Pocket Item Descriptions
---@param player EntityPlayer
function EID:ItemReminderHandlePocketItems(player)
	for i = 0, 2 do
		if not EID:ItemReminderCanAddMoreToView() then return end
		local heldCard = player:GetCard(i)
		local heldPill = player:GetPill(i)
		if heldCard > 0 then
			EID:ItemReminderAddDescription(player, 5, 300, heldCard)
		elseif heldPill > 0 then
			-- Check if our held pill is identified
			EID.pillPlayer = player
			local identified = game:GetItemPool():IsPillIdentified(heldPill)
			if EID.isRepentance and heldPill % PillColor.PILL_GIANT_FLAG == PillColor.PILL_GOLD then identified = true end
			if (identified or EID.Config["ShowUnidentifiedPillDescriptions"]) then
				EID:ItemReminderAddDescription(player, 5, 70, heldPill)
			end
			EID.pillPlayer = nil
		end
	end
end

-- Item Reminder function: Held trinkets are added at the end of the table; use this table in descending order
---@param player EntityPlayer
---@diagnostic disable-next-line: duplicate-set-field
function EID:ItemReminderHeldPlusGulped(player)
	local playerNum = EID:getPlayerID(player, true)
	local newTable = {}
	if EID.GulpedTrinkets[playerNum] then newTable = {table.unpack(EID.GulpedTrinkets[playerNum])} end
	for i=0, 1 do
		local trinket = player:GetTrinket(i)
		if trinket > 0 then table.insert(newTable, trinket) end
	end
	return newTable
end
-- Item Reminder function: Trinket Descriptions
---@param player EntityPlayer
function EID:ItemReminderHandleTrinkets(player)
	EID:ItemReminderHandleItemPrinting(player, EID:ItemReminderHeldPlusGulped(player), 350, true)
end

-- Item Reminder function: Tainted ??? Poop Descriptions
---@param player EntityPlayer
function EID:ItemReminderHandlePoopSpells(player)
	if EID.isRepentance and player:GetPlayerType() == 25 and EID:ItemReminderCanAddMoreToView() then
		local poopInfo = EID:getDescriptionEntry("poopSpells")
		local displayedPoopTypes = { [0] = true }
		local descsAvailableToRender = numAvailableDescriptionSlots
		for i = 0, 5 do -- max 6 poop spell slots
			local nextPoop = player:GetPoopSpell(i)

			--Custom Poop support
			if CustomPoopAPI then
				local poopSaveData = CustomPoopAPI.GetPersistentPlayerData(player)
				local poopKey = poopSaveData.Poops[i + 1]
				if poopKey == "DIARREAH" then poopKey = "DIARRHEA" end --Typo from Custom Poop API's side

				nextPoop = PoopSpellType["SPELL_"..poopKey] --Yes, this works LOL

				if nextPoop == nil then
					nextPoop = PoopSpellType.SPELL_NONE --Prevent from rendering normally
					local customPoop = EID:getDescriptionEntry("poopSpells")[poopKey]

					local ignoreExisting = false
					if customPoop == nil then --If the poop still doesn't exist, use the unkown one instead
						customPoop = EID:getDescriptionEntry("poopSpells")["Unknown"] or EID.descriptions[EID.DefaultLanguageCode]["poopSpells"]["Unknown"]
						ignoreExisting = true
					end

					if ignoreExisting or not displayedPoopTypes[customPoop] then
						local poopName = customPoop[2]
						if customPoop[4] then
							poopName = poopName .. EID:getModNameString({ ["ModName"] = customPoop[4] })
						end
						EID:ItemReminderAddTempDescriptionEntry(customPoop[1], poopName, customPoop[3])

						displayedPoopTypes[customPoop] = true
						descsAvailableToRender = descsAvailableToRender - 1
					end
				end
			end
			--End of custom poop support

			if not displayedPoopTypes[nextPoop] then
				EID:ItemReminderAddTempDescriptionEntry("{{PoopSpell" .. nextPoop .. "}}", poopInfo[nextPoop][1],
					poopInfo[nextPoop][2])
				displayedPoopTypes[nextPoop] = true
				descsAvailableToRender = descsAvailableToRender - 1
			end
			if descsAvailableToRender <= 0 then
				return
			end
		end
	end
end

-- Item Reminder function: Lemegeton wisp descriptions
---@param player EntityPlayer
function EID:ItemReminderHandleLemegetonWisps(player)
	local playerNum = EID:getPlayerID(player, true)
	EID:ItemReminderHandleItemPrinting(player, EID.WispsPerPlayer[playerNum], 100, false)
end

-- Item Reminder function: Handle scroll inputs
function EID:ItemReminderHandleInputs()
	if EID.Config["ItemReminderEnabled"] and EID.Config["ItemReminderDisplayMode"] ~= "Classic" and EID.holdTabCounter >= 30 and EID.TabDescThisFrame == false and EID.holdTabPlayer ~= nil then
		if EID.Config["ItemReminderDisableInputs"] then EID.holdTabPlayer.ControlsCooldown = 2 end

		if Input.IsActionTriggered(EID.Config["ItemReminderNavigateLeftButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory - 1) % #EID.ItemReminderCategories
			if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then
				EID.ItemReminderSelectedCategory = #EID.ItemReminderCategories - 1
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
			lastScrollDirection = -1
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateRightButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + 1) % #EID.ItemReminderCategories
			if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then EID.ItemReminderSelectedCategory = 1 end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
			lastScrollDirection = 1
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateUpButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			if not EID.ItemReminderDisplayingScrollbar then
				EID.ItemReminderSelectedPlayer = (EID.ItemReminderSelectedPlayer - 1) % #EID:ItemReminderGetAllPlayers()
			else
				EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] = EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] - 1 -- clamp later
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateDownButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			if not EID.ItemReminderDisplayingScrollbar then
				EID.ItemReminderSelectedPlayer = (EID.ItemReminderSelectedPlayer + 1) % #EID:ItemReminderGetAllPlayers()
			else
				EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] = EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] + 1 -- clamp later
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
		end
	end
end

-- Item Reminder function: special list of all players, ignoring tainted forgotten ghost and coop babies
function EID:ItemReminderGetAllPlayers()
	local filteredPlayerList = {}
	for _, player in ipairs(EID.coopAllPlayers) do
		if not (EID.isRepentance and player:GetPlayerType() == PlayerType.PLAYER_THESOUL_B) and player:GetBabySkin() == -1 then
			table.insert(filteredPlayerList, player)		
		end
	end
	return filteredPlayerList
end

-- Item Reminder function: check if the currently selected category is scrollable
---@return boolean
function EID:IsScrollableCategorySelected()
	return EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1].isScrollable
end

-- Item Reminder function: check if the given category is currently selected
---@param categoryID integer
---@return boolean
function EID:IsCategorySelected(categoryID)
	return EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1].id == categoryID
end

-- Item Reminder function: Resets data when initializing holding TAB
function EID:ItemReminderHandleInitHoldTab()
	local oldDisplayPlayer = EID.ItemReminderSelectedPlayer

	-- set currently displayed player to the one who is now holding tab
	local playerList = EID:ItemReminderGetAllPlayers()
	for i = 1, #playerList do
		if playerList[i] == EID.holdTabPlayer then
			EID.ItemReminderSelectedPlayer = i - 1
			break
		end
	end
	
	EID:UpdateAllPlayerLemegetonWisps()
	EID:UpdateAllPlayerTrinkets()
	local updatedPlayers = EID:UpdateAllPlayerPassiveItems()
	if updatedPlayers[EID.ItemReminderSelectedPlayer + 1] or oldDisplayPlayer ~= EID.ItemReminderSelectedPlayer then
		EID:ResetItemReminderSelectedItems("Passives")
	end
end

--- Returns the title of the currently selected Item Reminder category.
---@return string
function EID:ItemReminderGetTitle()
	local category = EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1]

	local translatedTitle = EID:getDescriptionEntry("ItemReminder", "CategoryNames")
	local translatedTitleEnglish = EID:getDescriptionEntryEnglish("ItemReminder", "CategoryNames")
	local title = translatedTitle and translatedTitle[category.id] or
		translatedTitleEnglish and translatedTitleEnglish[category.id] or category.id

	local combinedText = title

	-- add nav buttons
	if EID.Config["ItemReminderDisplayMode"] ~= "Classic" then
		combinedText = EID.ButtonToIconMap[EID.Config["ItemReminderNavigateLeftButton"]] ..
			combinedText .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateRightButton"]]
	end

	-- add player toggle when more than 1 player is present
	local playerList = EID:ItemReminderGetAllPlayers()
	if #playerList > 1 then
		local curPlayerID = EID.ItemReminderSelectedPlayer + 1
		local currentPlayer = playerList[curPlayerID]
		local playerIcon = EID:GetPlayerIcon(currentPlayer:GetPlayerType(), "P" .. curPlayerID )

		local playerSelectWidget = playerIcon .. " "
		if not EID.ItemReminderDisplayingScrollbar and EID.Config["ItemReminderDisplayMode"] ~= "Classic" then
			playerSelectWidget = EID.ButtonToIconMap[EID.Config["ItemReminderNavigateUpButton"]] ..
				playerIcon .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateDownButton"]] .. "|"
		end
		combinedText = "{{ColorText}}" .. playerSelectWidget .. combinedText
	end
	return combinedText
end

-- trim all entries to make them shorter, by removing bullet points
function EID:ItemReminderTrimBulletPoints(description)
	local trimmedDescription = ""
	local bulletPointsToPrint = EID.Config["ItemReminderOverviewHideAfterRows"]
	for bulletPoint in string.gmatch(description, "[^#]+") do
		if bulletPointsToPrint <= 0 or bulletPoint == "" then
			trimmedDescription = trimmedDescription .. "..." .. "#"
			break
		end
		trimmedDescription = trimmedDescription .. bulletPoint .. "#"
		bulletPointsToPrint = bulletPointsToPrint - 1
	end
	return trimmedDescription
end

-- takes a list of item ids and an item variant to automatically generate a scrollable list of item icons.
function EID:ItemReminderHandleItemScrollbarFeature(entryTable, itemVariant, descending)
	if entryTable == nil or #entryTable <= EID.Config["ItemReminderMaxEntriesCount"] then return nil end
	
	-- handle Scrollable passives list
	local newDescription = "{{Blank}} {{NoLB}}" .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateUpButton"]]
	local selectedItem = EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory]

	selectedItem = selectedItem % #entryTable -- clamp selection

	-- render icons
	if descending then
		local startIndex = #entryTable - selectedItem -- start from end of list
		local stopIndex = startIndex - (EID.Config["ItemReminderMaxEntriesCount"] + 1)

		for i = startIndex, stopIndex, -1 do
			local index = ((i - 1) % #entryTable) + 1
			local recentID = entryTable[index] % GLITCH_ITEM_FLAG

			if i < 1 and index == startIndex then
				-- prevent display of copies of the same icon, when less than 4 items were collected
				break
			end
			newDescription = newDescription .. "{{" .. EID:GetIconNameByVariant(itemVariant) .. recentID .. "}} "
		end
	else
		local startIndex = selectedItem -- start from end of list
		local stopIndex = startIndex + (EID.Config["ItemReminderMaxEntriesCount"] + 1)
		for i = startIndex, stopIndex do
			local index = (i % #entryTable) + 1
			local recentID = entryTable[index] % GLITCH_ITEM_FLAG

			if i >= #entryTable and index == startIndex + 1 then
				-- prevent display of copies of the same icon, when less than 4 items were collected
				break
			end
			newDescription = newDescription .. "{{" .. EID:GetIconNameByVariant(itemVariant) .. recentID .. "}} "
		end
	end
	-- add counter
	newDescription = newDescription .. "(" .. (selectedItem + 1) .. "/" .. #entryTable .. ")"

	return newDescription .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateDownButton"]] .. "#"
end

-- takes a list of item ids and an item variant to automatically print the correct amount of descriptions
function EID:ItemReminderHandleItemPrinting(player, entryTable, itemVariant, descending)
	if not EID:ItemReminderCanAddMoreToView() or entryTable == nil or #entryTable == 0 then return end
	
	local descsToDisplay = numAvailableDescriptionSlots
	if #entryTable < descsToDisplay then descsToDisplay = #entryTable end
	
	if descending then
		local startIndex = (#entryTable - EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] - 1) % #entryTable
		for _ = 1, descsToDisplay do
			EID:ItemReminderAddDescription(player, 5, itemVariant, entryTable[startIndex+1] % GLITCH_ITEM_FLAG)
			startIndex = (startIndex - 1) % #entryTable
		end
	else
		local startIndex = EID.ItemReminderSelectedItems[EID.ItemReminderSelectedCategory] % #entryTable
		for _ = 1, descsToDisplay do
			EID:ItemReminderAddDescription(player, 5, itemVariant, entryTable[startIndex+1] % GLITCH_ITEM_FLAG)
			startIndex = (startIndex + 1) % #entryTable
		end
	end
end

--- Generates the description for the Item Reminder, based on the currently selected category and player.
---@return string
function EID:ItemReminderGetDescription()
	EID.InsideItemReminder = true
	EID.ItemReminderTempDescriptions = {}
	-- empty blacklist and fill with default values
	currentBlacklist = {}
	for key, _ in pairs(EID.ItemReminderBlacklist) do currentBlacklist[key] = true end

	local player = EID:ItemReminderGetAllPlayers()[EID.ItemReminderSelectedPlayer + 1] or EID.player -- use main player as fallback
	EID.ItemReminderPlayerEntity = player -- for description modifiers to reference

	if EID.ItemReminderSelectedCategory == 0 or EID.Config["ItemReminderDisplayMode"] == "Classic" then
		-- execute special previews / item results while in the overview
		numAvailableDescriptionSlots = EID.Config["ItemReminderMaxEntriesCount"]
		EID.InsideSpecialDescriptions = true -- for modifiers to replace the desc rather than append if they so wish
		EID:ItemReminderAddSpecialDescriptions(player)
		EID.InsideSpecialDescriptions = false
		-- execute all functions defined per category
		for _, category in ipairs(EID.ItemReminderCategories) do
			local hideInOverview = type(category.hideInOverview) == "function" and category.hideInOverview(player)
					or type(category.hideInOverview) == "boolean" and category.hideInOverview
			if not hideInOverview then
				numAvailableDescriptionSlots = 1 -- limit to one description per category in overview mode
				for _, func in ipairs(category.entryGenerators) do
					func(player)
				end
			end
		end
	else
		local category = EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1]
		numAvailableDescriptionSlots = EID.Config["ItemReminderMaxEntriesCount"]
		for _, func in ipairs(category.entryGenerators) do
			func(player)
		end
	end

	-- Skip category if nothing is in it
	if #EID.ItemReminderTempDescriptions == 0 then
		if autoScrollTriesLeft == math.mininteger then
			-- auto scroll was started
			autoScrollTriesLeft = #EID.ItemReminderCategories - 1
		end

		EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + lastScrollDirection) %
			#EID.ItemReminderCategories
		if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + lastScrollDirection) %
				#EID.ItemReminderCategories
			autoScrollTriesLeft = autoScrollTriesLeft - 1
		end

		if autoScrollTriesLeft > 0 then
			autoScrollTriesLeft = autoScrollTriesLeft - 1
			-- new category found. try to display text
			local newCategoryText = EID:ItemReminderGetDescription()
			if newCategoryText ~= "" then
				return newCategoryText
			end
		end
		-- auto scroll was stopped. reset scroll value
		autoScrollTriesLeft = math.mininteger
		EID.InsideItemReminder = false
		return "{{Blank}}#{{Blank}} " .. EID:getDescriptionEntry("ItemReminder", "InventoryEmpty")
	end
	autoScrollTriesLeft = math.mininteger

	local finalHoldMapDesc = ""
	EID.ItemReminderDisplayingScrollbar = false

	local category = EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1]
	if EID:IsScrollableCategorySelected() then
		local scrollbar = category.scrollbarGenerator(player)
		if scrollbar then
			finalHoldMapDesc = scrollbar
			EID.ItemReminderDisplayingScrollbar = true
		end
	end
	-- roughly estimate space the descriptions would occupy. trim descriptions if nessesary
	local tryTrim = EID.ItemReminderSelectedCategory == 0
	if tryTrim then
		local countText = 0
		local countLines = 0
		for _, entry in ipairs(EID.ItemReminderTempDescriptions) do
			countText = countText + #entry[3]
			local _, numLinebreaks = entry[3]:gsub("#","")
			countLines = countLines + numLinebreaks + 2 -- one for the item name, one for initial line
		end
		countLines = countLines + math.ceil(countText/EID.Config["TextboxWidth"])
		local allowedLines = (EID:getScreenSize().Y - EID.Config["YPosition"]) / 14 -- approximate the available screen space
		if countLines < allowedLines then
			tryTrim = false -- dont trim if screen is not filled with a lot of text
		end
	end

	-- Default: put all descriptions into one long description
	for _, entry in ipairs(EID.ItemReminderTempDescriptions) do
		if EID.Config["ShowItemIcon"] then
			finalHoldMapDesc = finalHoldMapDesc .. entry[1] .. " "
		end
		if EID.Config["ShowItemName"] then
			finalHoldMapDesc = finalHoldMapDesc .. "{{ColorEIDObjName}}" .. entry[2]
		end
		local description = entry[3] .. "#"

		if tryTrim then
			description = EID:ItemReminderTrimBulletPoints(description)
		end
		finalHoldMapDesc = finalHoldMapDesc .. "#" .. description
	end

	EID.InsideItemReminder = false
	return finalHoldMapDesc
end
