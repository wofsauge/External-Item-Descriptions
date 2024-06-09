local game = Game()
local GLITCH_ITEM_FLAG = 4294967296
local currentBlacklist
local lastInputTime = 0
local lastScrollDirection = 1 -- used for automatic scroll feature, if no description is visible for a category

EID.ItemReminderBlacklist = { ["5.100.714"] = true, ["5.100.715"] = true } -- Dont display these in the Item reminder view
EID.ItemReminderTempDescriptions = {} -- Temporary stores descriptions that will be displayed after everythng got evaluated
EID.ItemReminderSelectedCategory = 0 -- Currently selected category
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
			if EID.isRepentance and player:HasCollectible(392) then
				EID:ItemReminderAddDescription(player, 5, 100, 392)
			end
		end,
		function(player) -- Passive item: Echo Chamber
			if EID.isRepentance and player:HasCollectible(700) then
				EID:ItemReminderAddDescription(player, 5, 100, 700)
			end
		end,
		function(player) EID:ItemReminderHandleRecentItems(player) end } },
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
function EID:ItemReminderAddTempDescriptionEntry(icon, title, newDesc)
	table.insert(EID.ItemReminderTempDescriptions, { icon or "{{Blank}}", title, newDesc })
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
	if currentBlacklist[objectID] then return end

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
	EID:ItemReminderAddTempDescriptionEntry(iconString, descObj.Name, descObj.Description)
end

-- Recently Acquired Item Descriptions
function EID:ItemReminderHandleRecentItems(player)
	if EID.Config["ItemReminderShowRecentItem"] > 0 then
		local printedItems = 0
		local playerNum = EID:getPlayerID(player)
		if EID.RecentlyTouchedItems[playerNum] then
			for i = #EID.RecentlyTouchedItems[playerNum], 1, -1 do
				if printedItems >= EID.Config["ItemReminderShowRecentItem"] then break end
				printedItems = printedItems + 1
				local recentID = EID.RecentlyTouchedItems[playerNum][i] % GLITCH_ITEM_FLAG
				EID:ItemReminderAddDescription(player, 5, 100, recentID)
			end
		end
	end
end

-- Active Item Descriptions
function EID:ItemReminderHandleActiveItems(player)
	-- limit number of active item descriptions to 2, since Slot 3 and 4 are handled seperately
	for i = 0, math.min(EID.Config["ItemReminderShowActiveDesc"], 2) - 1 do
		-- the modulo is to convert negative IDs (glitched items) to positive IDs
		local heldActive = player:GetActiveItem(i) % GLITCH_ITEM_FLAG
		if heldActive > 0 then
			EID:ItemReminderAddDescription(player, 5, 100, heldActive)
		end
	end
end

-- pocket active
function EID:ItemReminderHandlePocketActive(player)
	if not EID.isRepentance then return end

	local pocketActive = player:GetActiveItem(2) or 0
	if pocketActive > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, pocketActive)
	end
end

-- dice bag
function EID:ItemReminderHandleDiceBag(player)
	if not EID.isRepentance then return end

	local diceBag = player:GetActiveItem(3) or 0
	if diceBag > 0 then
		EID:ItemReminderAddDescription(player, 5, 100, diceBag, "{{Trinket154}}")
	end
end

-- Pocket Item Descriptions
function EID:ItemReminderHandlePocketItems(player)
	for i = 0, EID.Config["ItemReminderShowPocketDesc"] - 1 do
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
	for t = 0, EID.Config["ItemReminderShowTrinketDesc"] - 1 do
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
	if EID.isRepentance and EID.Config["ItemReminderShowHiddenInfo"] and player:GetModelingClayEffect() > 0 then
		EID:ItemReminderAddDescription(player, 5, 350, 166)
	end
end

-- Tainted ??? Poop Descriptions
function EID:ItemReminderHandlePoopSpells(player)
	if EID.isRepentance and EID.Config["ItemReminderShowPoopDesc"] > 0 and player:GetPlayerType() == 25 then
		local poopInfo = EID:getDescriptionEntry("poopSpells")
		for i = 0, EID.Config["ItemReminderShowPoopDesc"] - 1 do
			local nextPoop = player:GetPoopSpell(i)
			EID:ItemReminderAddTempDescriptionEntry("{{PoopSpell" .. nextPoop .. "}}", poopInfo[nextPoop][1],
				poopInfo[nextPoop][2])
		end
	end
end

-- Handle scroll inputs
function EID:ItemReminderHandleInputs()
	if EID.Config["ItemReminderEnabled"] and EID.holdTabCounter >= 30 and EID.TabDescThisFrame == false and EID.holdTabPlayer ~= nil then
		if EID.Config["ItemReminderDisableInputs"] then EID.holdTabPlayer.ControlsCooldown = 2 end

		if Input.IsActionTriggered(EID.Config["ItemReminderNavigateLeftButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory - 1) % #EID.ItemReminderCategories
			if not EID.Config["ItemReminderShowOverview"] and EID.ItemReminderSelectedCategory == 0 then
				EID.ItemReminderSelectedCategory = #EID.ItemReminderCategories
			end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
			lastScrollDirection = -1
		elseif Input.IsActionTriggered(EID.Config["ItemReminderNavigateRightButton"], EID.holdTabPlayer.ControllerIndex) and Isaac.GetTime() - lastInputTime > 50 then
			EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + 1) % #EID.ItemReminderCategories
			if not EID.Config["ItemReminderShowOverview"] and EID.ItemReminderSelectedCategory == 0 then EID.ItemReminderSelectedCategory = 1 end

			EID.ForceRefreshCache = true
			lastInputTime = Isaac.GetTime()
			lastScrollDirection = 1
		end
	end
end

function EID:ItemReminderGetTitle()
	local category = EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1]

	local translatedTitle = EID:getDescriptionEntry("ItemReminder", "CategoryNames")
	local translatedTitleEnglish = EID:getDescriptionEntryEnglish("ItemReminder", "CategoryNames")
	local title = translatedTitle and translatedTitle[category.id] or
		translatedTitleEnglish and translatedTitleEnglish[category.id] or category.id
	return "{{ButtonDLeft}}{{ColorText}} " .. title .. " {{CR}}{{ButtonDRight}}"
end

function EID:ItemReminderGetDescription(player, checkingTwin)
	EID.InsideItemReminder = true
	EID.ItemReminderTempDescriptions = {}
	-- empty blacklist and fill with default values
	currentBlacklist = {}
	for key, _ in pairs(EID.ItemReminderBlacklist) do currentBlacklist[key] = true end
	if EID.Config["ItemReminderShowOverview"] and EID.ItemReminderSelectedCategory == 0 then
		-- execute all functions defined per category
		for _, category in ipairs(EID.ItemReminderCategories) do
			for _, func in ipairs(category.entryGenerators) do
				func(player)
			end
		end
	else
		local category = EID.ItemReminderCategories[EID.ItemReminderSelectedCategory + 1]
		for _, func in ipairs(category.entryGenerators) do
			func(player)
		end
	end

	-- Skip category if nothing is in it
	if #EID.ItemReminderTempDescriptions == 0 and EID.ItemReminderSelectedCategory <= #EID.ItemReminderCategories then
		EID.ItemReminderSelectedCategory = (EID.ItemReminderSelectedCategory + lastScrollDirection) %
			#EID.ItemReminderCategories
		if not EID.Config["ItemReminderShowOverview"] and EID.ItemReminderSelectedCategory == 0 then
			EID.ItemReminderSelectedCategory = lastScrollDirection % #EID.ItemReminderCategories
		end
		return EID:ItemReminderGetDescription(player, checkingTwin)
	end
	-- put descriptions into one long description
	local finalHoldMapDesc = ""
	for _, entry in ipairs(EID.ItemReminderTempDescriptions) do
		finalHoldMapDesc = finalHoldMapDesc .. entry[1] .. " {{ColorEIDObjName}}" .. entry[2] .. "#" .. entry[3] .. "#"
	end

	-- Finally, check the twin player of this controller
	-- If both twins have a desc, show their player icon / name to separate the two descs
	if EID.isRepentance and not checkingTwin then
		local twin = player:GetOtherTwin()
		local mainTwinDesc = finalHoldMapDesc
		local otherTwinDesc = ""
		if twin then otherTwinDesc = EID:ItemReminderGetDescription(twin, true) end
		if otherTwinDesc ~= "" then
			-- Only the other twin had a desc
			if mainTwinDesc == "" then
				finalHoldMapDesc = otherTwinDesc
			else
				-- Both twins had a desc; merge them with player icon headers
				finalHoldMapDesc = (EID:getIcon("Player" .. player:GetPlayerType()) ~= EID.InlineIcons["ERROR"] and "{{Player" .. player:GetPlayerType() .. "}}" or "{{CustomTransformation}}") ..
					" {{ColorGray}}" .. player:GetName() .. "#" .. mainTwinDesc .. "#"
				finalHoldMapDesc = finalHoldMapDesc ..
					(EID:getIcon("Player" .. twin:GetPlayerType()) ~= EID.InlineIcons["ERROR"] and "{{Player" .. twin:GetPlayerType() .. "}}" or "{{CustomTransformation}}") ..
					" {{ColorGray}}" .. twin:GetName() .. "#" .. otherTwinDesc
			end
		else
			-- Only the main twin had a desc
			finalHoldMapDesc = mainTwinDesc
		end
	end
	finalHoldMapDesc = "{{Blank}}#" .. finalHoldMapDesc

	EID.InsideItemReminder = false
	return finalHoldMapDesc
end
