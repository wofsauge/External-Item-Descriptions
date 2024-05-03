local game = Game()
local GLITCH_ITEM_FLAG = 4294967296
local currentBlacklist
local lastInputTime = 0
local lastScrollDirection = 1 -- used for automatic scroll feature, if no description is visible for a category
local lastAutoScrollPosition = -1 -- Stores last category before the automatic category skip. This prevents infinite loops, when the player has no items
local numAvailableDescriptionSlots = 0

EID.ItemReminderBlacklist = { ["5.100.714"] = true, ["5.100.715"] = true } -- Dont display these in the Item reminder view
EID.ItemReminderTempDescriptions = {} -- Temporary stores descriptions that will be displayed after everythng got evaluated
EID.ItemReminderSelectedCategory = 0 -- Currently selected category
EID.ItemReminderSelectedPlayer = 0 -- Currently selected player
EID.ItemReminderSelectedItem = 0 -- Currently selected Item
EID.InsideItemReminder = false -- Disable some modifiers, when building the Item Reminder description

-- TODO:
-- crooked penny cheats. 404/liberty cap/broken syringe/etc. "what item is it"
-- pandora's box? it shows the whole desc which is kinda useful but too big


-- Data Tables --

-- Format : Table of { id = "Category Name", entryGenerators = table of functions to generate descriptions }
-- Execution order is handles by the order of the table entries.
-- Category name is interpreted as a lookup for the "EID.descriptions.ItemReminder.CategoryNames" table. If no translation is found, use english or the lookup value
EID.ItemReminderCategories = {
	{ id = "Overview", entryGenerators = {} }, -- special handling for Overview category
	{ id = "Special", entryGenerators = { function(player) EID:ItemReminderHandlePoopSpells(player) end, } },
	{ id = "Actives", entryGenerators = { function(player) EID:ItemReminderHandleActiveItems(player) end, } },
	{ id = "Pockets", entryGenerators = {
		function(player) EID:ItemReminderHandleDiceBag(player) end,
		function(player) EID:ItemReminderHandlePocketActive(player) end,
		function(player) EID:ItemReminderHandlePocketItems(player) end } },
	{ id = "Trinkets", entryGenerators = {
		function(player) EID:ItemReminderHandleTrinkets(player) end,
		function(player) EID:ItemReminderHandleGulpedModelingClay(player) end } },
	{ id = "Passives", entryGenerators = {
		function(player) -- Passive item: Zodiac
			if EID.isRepentance and player:HasCollectible(392) and not EID:IsCategorySelected("Passives") then
				EID:ItemReminderAddDescription(player, 5, 100, 392)
			end
		end,
		function(player) -- Passive item: Echo Chamber
			if EID.isRepentance and player:HasCollectible(700) and not EID:IsCategorySelected("Passives") then
				EID:ItemReminderAddDescription(player, 5, 100, 700)
			end
		end,
		function(player) EID:ItemReminderHandleSelectedPassiveItem(player) end } },
}

-- Format: ItemID = table
-- 		modifierFunction = function that modifies the original description object of the item
-- 		isCheat = Only evaluate, if the "ItemReminderShowRNGCheats" config option is enabled
--		isHiddenInfo = Only evaluate, if the "ItemReminderShowHiddenInfo" config option is enabled
--		isRepentance = Only evaluate, if Repentance is installed
EID.ItemReminderDescriptionModifier = {
	---------------- Passive Items ----------------
	["5.100.392"] = { -- Zodiac
		isHiddenInfo = true,
		isRepentance = true,
		modifierFunction = function(descObj, player)
			local zodiacItem = player:GetZodiacEffect()
			if zodiacItem > 0 then
				local demoDescObj = EID:getDescriptionObj(5, 100, zodiacItem)
				EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
				descObj.Icon = demoDescObj.Icon
				descObj.Description = demoDescObj.Description
			end
		end
	},
	["5.100.700"] = { -- Echo Chamber
		isRepentance = true,
		modifierFunction = function(descObj, player)
			local playerID = EID:getPlayerID(player)
			local pickupHistory = EID.PlayerItemInteractions[playerID].pickupHistory
			-- Dead Tainted Lazarus exception
			if player:GetPlayerType() == 38 then
				pickupHistory = EID.PlayerItemInteractions[playerID].altPickupHistory or pickupHistory
			end
			if not pickupHistory then return end
			local pickupNames = ""
			local pickupsToPrint = 3
			for i = 1, #pickupHistory do
				if pickupHistory[i][4] then -- Echo chamber was owned before this card/pill was used and it's not a mimic usage
					if pickupHistory[i][1] == "pill" then
						local name = EID:getPillName(pickupHistory[i][3], false)
						if (pickupHistory[i][2] == 14) then name = EID:getPillName(9999, false) end
						pickupNames = pickupNames .. "{{Pill" .. pickupHistory[i][2] .. "}} " .. name .. "#"
						pickupsToPrint = pickupsToPrint - 1
					else
						local name = EID:getObjectName(5, 300, pickupHistory[i][3])
						pickupNames = pickupNames .. "{{Card" .. pickupHistory[i][3] .. "}} " .. name .. "#"
						pickupsToPrint = pickupsToPrint - 1
					end
					if (pickupsToPrint == 0) then break end
				end
			end
			if pickupNames ~= "" then
				EID:ItemReminderAddResultHeaderSuffix(descObj)
				descObj.Description = pickupNames
			end
		end
	},

	---------------- Active Items ----------------

	["5.100.44"] = { -- Teleport! location
		isCheat = true,
		isRepentance = true,
		-- The result preview changes as soon as we activate Teleport, which looks awkward, so try to not display the result while mid-teleport.
		-- Doesn't work perfectly and only in Rep
		modifierFunction = function(descObj, player)
			if player:GetSprite():GetAnimation() ~= "TeleportUp" then
				EID:ItemReminderAddResultHeaderSuffix(descObj)
				descObj.Description = EID:Teleport1Prediction(EID:GetItemSeed(player, 44))
			end
		end,
	},
	["5.100.419"] = { -- Teleport 2.0 location
		modifierFunction = function(descObj, _)
			EID:ItemReminderAddResultHeaderSuffix(descObj)
			descObj.Description = EID:Teleport2Prediction()
		end
	},
	["5.100.476"] = { -- D1
		isCheat = true,
		modifierFunction = function(descObj, player)
			EID:ItemReminderAddResultHeaderSuffix(descObj)
			descObj.Description = EID:D1Prediction(EID:GetItemSeed(player, 476))
		end
	},
	["5.100.477"] = { -- Void
		modifierFunction = function(descObj, player)
			local absorbedItems = EID.absorbedItems[tostring(EID:getPlayerID(player))]
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
					EID:ItemReminderAddResultHeaderSuffix(descObj)
					descObj.Description = descriptionText
				end
			end
		end
	},
	["5.100.488"] = { -- Metronome
		modifierFunction = function(descObj, player)
			local predictionItem = EID:MetronomePrediction(EID:GetItemSeed(player, 488))
			local demoDescObj = EID:getDescriptionObj(5, 100, predictionItem)
			EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
			descObj.Icon = demoDescObj.Icon
			descObj.Description = demoDescObj.Description
		end
	},
	["5.100.489"] = { -- D Infinity
		modifierFunction = function(descObj, player)
			local predictionItem = EID:CurrentDInfinity(EID:GetItemSeed(player, 489), player)
			local demoDescObj = EID:getDescriptionObj(5, 100, predictionItem)
			EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
			descObj.Icon = demoDescObj.Icon
			descObj.Description = demoDescObj.Description
		end
	},
	["5.100.710"] = { -- Bag of Crafting
		isRepentance = true,
		modifierFunction = function(descObj, _)
			local floorQuery = EID.BoC.FloorOverride or EID.BoC.FloorQuery
			local inventoryQuery = EID.BoC.InventoryOverride or EID.BoC.InventoryQuery
			local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
			local total = #floorQuery + #inventoryQuery + #bagItems
			local text = total .. " of 8 items available"
			if total < 8 then text = text .. "#{{Warning}} Needs at least 8 to show crafting recipes!" end
			descObj.Description = text
		end
	},

	---------------- TRINKETS ----------------

	["5.350.4"] = { -- Broken Remote has two possible effects depending on if its doubled
		modifierFunction = function(descObj, player)
			local originalName = descObj.Name
			if player:GetTrinketMultiplier(4) > 1 then
				-- Teleport 2.0
				local demoDescObj = EID:getDescriptionObj(5, 100, 419)
				EID.ItemReminderDescriptionModifier["5.100.419"].modifierFunction(descObj, player)
				descObj.Name = originalName
				EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
			elseif EID.Config["ItemReminderShowRNGCheats"] then
				-- Teleport
				local demoDescObj = EID:getDescriptionObj(5, 100, 44)
				EID.ItemReminderDescriptionModifier["5.100.44"].modifierFunction(descObj, player)
				descObj.Name = originalName
				EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
			end
		end
	},
	["5.350.64"] = { -- Rainbow Worm
		isHiddenInfo = true,
		modifierFunction = function(descObj, _)
			-- Rainbow Worm's trinket IDs it grants, in order
			local rainbowWormEffects = { [0] = 9, 11, 65, 27, 10, 12, 26, 66, 96, 144 }
			local trinketID = rainbowWormEffects[math.floor(game.TimeCounter / 30 / 3) % (EID.isRepentance and 10 or 8)]
			local demoDescObj = EID:getDescriptionObj(5, 350, trinketID)
			EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
			descObj.Icon = demoDescObj.Icon
			descObj.Description = demoDescObj.Description
		end
	},
	["5.350.75"] = {   -- 404 Error
		isHiddenInfo = true,
		isRepentance = true, -- HasTrinket can't differentiate between real and fake trinkets in AB+
		modifierFunction = function(descObj, player)
			-- Unfortunately, includes other temporary trinket givers, such as Glitched Items. We'd need to predict 404's result using RNG to actually know which it specifically is granting

			-- Don't display Mysterious Paper's 1-frame temporary trinket granting
			local hasPaper = player:HasTrinket(21)
			-- Mysterious Paper does not play well with displaying Error 404's effect
			local mysteriousPaperBlacklist = { [23] = true, [48] = true }
			for i = 1, TrinketType.NUM_TRINKETS - 1 do
				local tempTrinketFound = player:HasTrinket(i, true) ~= player:HasTrinket(i, false)
				if tempTrinketFound and (not mysteriousPaperBlacklist[i] or not hasPaper) then
					local demoDescObj = EID:getDescriptionObj(5, 350, i)
					EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
					descObj.Icon = demoDescObj.Icon
					descObj.Description = demoDescObj.Description
				end
			end
		end
	},
	["5.350.166"] = { -- Modeling Clay
		isRepentance = true,
		modifierFunction = function(descObj, player)
			local modelingClayItem = player:GetModelingClayEffect()
			if modelingClayItem > 0 then
				local demoDescObj = EID:getDescriptionObj(5, 100, modelingClayItem)
				EID:ItemReminderAddResultHeaderSuffix(descObj, demoDescObj.Name)
				descObj.Icon = "{{Collectible" .. modelingClayItem .. "}}"
				descObj.Description = demoDescObj.Description
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
	if newName then
		local iconString = EID:GetIconStringByDescriptionObject(descObj)
		descObj.Name = newName ..
			" (" .. iconString .. " " .. descObj.Name .. EID:getDescriptionEntry("ItemReminder", "ResultHeader") .. ")"
	else
		descObj.Name = descObj.Name .. EID:getDescriptionEntry("ItemReminder", "ResultHeader")
	end
end

-- Add item description for a given entity to the reminder. Also tries to apply special modifiers if present
function EID:ItemReminderAddDescription(player, entityType, variant, subType, extraIcon)
	local objectID = entityType .. "." .. variant .. "." .. subType
	if currentBlacklist[objectID] then return true end

	local descObj = EID:getDescriptionObj(entityType, variant, subType)

	local specialDesc = EID.ItemReminderDescriptionModifier[objectID]
	if specialDesc and type(specialDesc.modifierFunction) == "function" then
		-- dont add, if description modifier is a cheat and cheats are disabled
		local evalShowCheat = not (specialDesc.isCheat and not EID.Config["ItemReminderShowRNGCheats"])
		local evalShowHidden = not (specialDesc.isHidden and not EID.Config["ItemReminderShowHiddenInfo"])
		if evalShowCheat or evalShowHidden then
			specialDesc.modifierFunction(descObj, player)
		end
	end

	currentBlacklist[objectID] = true
	local iconString = extraIcon or EID:GetIconStringByDescriptionObject(descObj)
	return EID:ItemReminderAddTempDescriptionEntry(iconString, descObj.Name, descObj.Description)
end

-- Recently Acquired Item Descriptions
function EID:ItemReminderHandleSelectedPassiveItem(player)
	local playerNum = EID:getPlayerID(player)
	if EID.RecentlyTouchedItems[playerNum] and #EID.RecentlyTouchedItems[playerNum] > 0 then
		local index = EID:IsCategorySelected("Passives") and EID.ItemReminderSelectedItem % #EID.RecentlyTouchedItems[playerNum] or 0
		local recentID = EID.RecentlyTouchedItems[playerNum][#EID.RecentlyTouchedItems[playerNum] - index] % GLITCH_ITEM_FLAG
		EID:ItemReminderAddDescription(player, 5, 100, recentID)
	end
end

-- Active Item Descriptions
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

-- pocket active
function EID:ItemReminderHandlePocketActive(player)
	if not EID.isRepentance or not EID:ItemReminderCanAddMoreToView() then return end
	local pocketActive = player:GetActiveItem(2) or 0
	if pocketActive > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, pocketActive)
	end
end

-- dice bag
function EID:ItemReminderHandleDiceBag(player)
	if not EID.isRepentance or not EID:ItemReminderCanAddMoreToView()  then return end

	local diceBag = player:GetActiveItem(3) or 0
	if diceBag > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, diceBag, "{{Trinket154}}")
	end
end

-- Pocket Item Descriptions
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

-- Trinket Descriptions
function EID:ItemReminderHandleTrinkets(player)
	for t = 0, 1 do
		if not EID:ItemReminderCanAddMoreToView() then return end
		-- account for Golden Trinket IDs
		local heldTrinketTrue = player:GetTrinket(t)
		local heldTrinket = heldTrinketTrue
		if EID.isRepentance then heldTrinket = heldTrinketTrue & TrinketType.TRINKET_ID_MASK end
		if heldTrinket > 0 then
			EID:ItemReminderAddDescription(player, 5, 350, heldTrinketTrue)
		end
	end
end

-- Gulped/unslotted Modeling Clay
-- (Hidden information, because Modeling Clay does not visually show its item when gulped)
function EID:ItemReminderHandleGulpedModelingClay(player)
	if EID.isRepentance and EID.Config["ItemReminderShowHiddenInfo"] and player:GetModelingClayEffect() > 0 and EID:ItemReminderCanAddMoreToView() then
		EID:ItemReminderAddDescription(player, 5, 350, 166)
	end
end

-- Tainted ??? Poop Descriptions
function EID:ItemReminderHandlePoopSpells(player)
	if EID.isRepentance and player:GetPlayerType() == 25 and EID:ItemReminderCanAddMoreToView() then
		local poopInfo = EID:getDescriptionEntry("poopSpells")
		for i = 0, 3 do
			local nextPoop = player:GetPoopSpell(i)
			EID:ItemReminderAddTempDescriptionEntry("{{PoopSpell" .. nextPoop .. "}}", poopInfo[nextPoop][1],
				poopInfo[nextPoop][2])
		end
	end
end

-- Handle scroll inputs
function EID:ItemReminderHandleInputs()
	if EID.Config["ItemReminderEnabled"] and EID.Config["ItemReminderDisplayMode"] ~= "Classic" and EID.holdTabCounter >= 30 and EID.TabDescThisFrame == false and EID.holdTabPlayer ~= nil then
		if EID.Config["ItemReminderDisableInputs"] then EID.holdTabPlayer.ControlsCooldown = 2 end

		if Input.IsActionTriggered(EID.Config["ItemReminderNavigateLeftButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory - 1) % #EID.ItemReminderCategories
			if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then
				EID.ItemReminderSelectedCategory = #EID.ItemReminderCategories
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
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateDownButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			if not EID:IsCategorySelected("Passives") then
				EID.ItemReminderSelectedPlayer = (EID.ItemReminderSelectedPlayer - 1) % #EID.coopAllPlayers
			else
				EID.ItemReminderSelectedItem = EID.ItemReminderSelectedItem - 1 -- clamp later
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateUpButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			if not EID:IsCategorySelected("Passives") then
				EID.ItemReminderSelectedPlayer = (EID.ItemReminderSelectedPlayer + 1) % #EID.coopAllPlayers
			else
				EID.ItemReminderSelectedItem = EID.ItemReminderSelectedItem + 1 -- clamp later
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
		end
	end
end

function EID:IsCategorySelected(categoryID)
	return EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1].id == categoryID
end

function EID:ItemReminderHandleInitHoldTab()
	local oldDisplayPlayer = EID.ItemReminderSelectedPlayer

	-- set currently displayed player to the one who is now holding tab
	for i = 1, #EID.coopAllPlayers do
		if EID.coopAllPlayers[i] == EID.holdTabPlayer then
			EID.ItemReminderSelectedPlayer = i - 1
			break
		end
	end

	local updatedPlayers = EID:UpdateAllPlayerPassiveItems()
	if updatedPlayers[EID.ItemReminderSelectedPlayer + 1] or oldDisplayPlayer ~= EID.ItemReminderSelectedPlayer then
		EID.ItemReminderSelectedItem = 0
	end
end

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
	if #EID.coopAllPlayers > 1 then
		local curPlayerID = EID.ItemReminderSelectedPlayer + 1
		local currentPlayer = EID.coopAllPlayers[curPlayerID]
		local playerIcon = EID:GetPlayerIcon(currentPlayer:GetPlayerType(), "P" .. curPlayerID )

		local playerSelectWidget = playerIcon .. " "
		if not EID:IsCategorySelected("Passives") and EID.Config["ItemReminderDisplayMode"] ~= "Classic" then
			playerSelectWidget = EID.ButtonToIconMap[EID.Config["ItemReminderNavigateDownButton"]] ..
				playerIcon .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateUpButton"]] .. "|"
		end
		combinedText = "{{ColorText}}" .. playerSelectWidget .. combinedText
	end
	return combinedText
end

function EID:ItemReminderGetDescription()
	EID.InsideItemReminder = true
	EID.ItemReminderTempDescriptions = {}
	-- empty blacklist and fill with default values
	currentBlacklist = {}
	for key, _ in pairs(EID.ItemReminderBlacklist) do currentBlacklist[key] = true end

	local player = EID.coopAllPlayers[EID.ItemReminderSelectedPlayer + 1]

	if EID.ItemReminderSelectedCategory == 0 or EID.Config["ItemReminderDisplayMode"] == "Classic" then
		-- execute all functions defined per category
		for _, category in ipairs(EID.ItemReminderCategories) do
			numAvailableDescriptionSlots = 1 -- limit to one description per category in overview mode
			for _, func in ipairs(category.entryGenerators) do
				func(player)
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
		if lastAutoScrollPosition == -1 then
			-- auto scroll was started. store last valid category. skip overview if its disabled
			if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then
				lastAutoScrollPosition = lastScrollDirection % #EID.ItemReminderCategories
			else
				lastAutoScrollPosition = EID.ItemReminderSelectedCategory
			end
		end

		EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + lastScrollDirection) %
			#EID.ItemReminderCategories
		if EID.Config["ItemReminderDisplayMode"] == "NoOverview" and EID.ItemReminderSelectedCategory == 0 then
			EID.ItemReminderSelectedCategory = #EID.ItemReminderCategories
		end

		if lastAutoScrollPosition ~= EID.ItemReminderSelectedCategory then
			-- new category found. try to display text
			local newCategoryText = EID:ItemReminderGetDescription()
			if newCategoryText ~= "" then
				return newCategoryText
			end
		end
		-- auto scroll was stopped. reset scroll value
		lastAutoScrollPosition = -1
		EID.InsideItemReminder = false
		return "{{Blank}}#{{Blank}} " .. EID:getDescriptionEntry("ItemReminder", "InventoryEmpty")
	end
	lastAutoScrollPosition = -1

	local finalHoldMapDesc = "{{Blank}}#"

	local playerNum = EID:getPlayerID(player)
	local numPassives = EID.RecentlyTouchedItems[playerNum] and #EID.RecentlyTouchedItems[playerNum] or 0

	if EID:IsCategorySelected("Passives") and numPassives > 1 then
		-- handle Scrollable passives list
		finalHoldMapDesc = "{{Blank}} " .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateDownButton"]]

		EID.ItemReminderSelectedItem = EID.ItemReminderSelectedItem % numPassives -- clamp selection
		-- render icons
		local startIndex = numPassives - EID.ItemReminderSelectedItem       -- start from end of list
		local stopIndex = startIndex - 3

		for i = startIndex, stopIndex, -1 do
			local index = ((i - 1) % numPassives) + 1
			local recentID = EID.RecentlyTouchedItems[playerNum][index] % GLITCH_ITEM_FLAG

			if i < 1 and index == startIndex then
				-- prevent display of copies of the same icon, when less than 4 passive items were collected
				break
			end
			finalHoldMapDesc = finalHoldMapDesc .. "{{Collectible" .. recentID .. "}} "
		end
		finalHoldMapDesc = finalHoldMapDesc .. "(" .. (EID.ItemReminderSelectedItem + 1) .. "/" .. numPassives .. ") "

		finalHoldMapDesc = finalHoldMapDesc .. EID.ButtonToIconMap[EID.Config["ItemReminderNavigateUpButton"]] .. "#"
	end

	-- Default: put all descriptions into one long description
	for _, entry in ipairs(EID.ItemReminderTempDescriptions) do
		finalHoldMapDesc = finalHoldMapDesc .. entry[1] .. " {{ColorEIDObjName}}" .. entry[2] .. "#" .. entry[3] .. "#"
	end

	EID.InsideItemReminder = false
	return finalHoldMapDesc
end
