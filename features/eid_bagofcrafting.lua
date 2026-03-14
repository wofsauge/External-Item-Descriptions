local game = Game()

require("features.eid_bagofcrafting_search")

--these aren't local so that they can be saved and reloaded, or cleared in the Mod Config Menu
-- EID.BoC is defined in eid_data.lua
EID.BoC.CurrentPickupCount = -1
EID.BoC.BagItems = {}
EID.BoC.BagItemsOverride = nil
EID.BoC.RoomQueries = {}
EID.BoC.RoomOverride = nil -- Override items displayed for current room's content
EID.BoC.InventoryQuery = {}
EID.BoC.InventoryOverride = nil -- Override items the player has in its inventory (Cards, pills, etc.)
EID.BoC.FloorQuery = {}
EID.BoC.FloorOverride = nil -- Override total items displayed to be as floor content
EID.BoC.LearnedRecipes = {} --These are recipes that we've learned during this run
EID.BoC.IsDisplayingDescription = false

EID.RefreshBagTextbox = false

-- The id of the itempools the bag of crafting is using
local bagOfCraftingPoolIDs = { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 26 } -- Treasure, Shop, Boss, Devil, Angel, Secret, Shell game, Golden chest, Red Chest, Cursed room, Planetarium
-- Color used for item qualities
local qualities = { [0] = "{{ColorSilver}}", "{{ColorLime}}", "{{ColorPastelBlue}}", "{{ColorLavender}}", "{{ColorLightOrange}}" }

-- local copies of our XML data in case it's slightly faster
local CraftingMaxItemID = EID.XMLMaxItemID
local CraftingFixedRecipes = EID.XMLRecipes
local CraftingItemPools = EID.XMLItemPools

local CraftingItemQualities = {}
local CraftingItemAllowed = {}

--These are recipes that have already been calculated, plus the contents of recipes.xml
local calculatedRecipes = {}
local newRecipeLearned = true -- set to true to reevaluate learned recipe list
--If the seed changes, the above two tables will be wiped
local lastSeedUsed = 0
-- Test a few specific items' availability for if we should wipe our cached recipes due to availability change
-- Currently accounts for TLost/LostBR with Guppy's Paw, Sacred Orb with Lemon Mishap, and NoKeeper with A Pound of Flesh
-- Use non-achievement-locked items that fulfill specific tag/quality criteria
-- Currently checks Guppy's Paw, Lemon Mishap, A Pound of Flesh
local lastItemStatus = { [133] = true, [56] = true, [672] = true }

--A list of item IDs, sorted by quality, then by name, to help with sorting our recipe list faster
local sortedIDs = {}

local function IsTaintedCain()
	-- this check is necessary for tracking Bag usage since Tainted Cain's pocket bag works differently than everyone else's
	return EID.bagPlayer:GetPlayerType() == 23
end

local function sortAllItems()
	sortedIDs = {}
	local objectNames = {}
	
	for i = 1, CraftingMaxItemID do
		if CraftingItemQualities[i] ~= nil then
			table.insert(sortedIDs, i)
			objectNames[i] = EID:getObjectName(5, 100, i)
		end
	end

	table.sort(sortedIDs, function(a, b)
		if EID.Config["BagOfCraftingSortOrder"] == "Name" or CraftingItemQualities[a] == CraftingItemQualities[b] then
			return (objectNames[a] < objectNames[b])
		else
			return (CraftingItemQualities[a] > CraftingItemQualities[b])
		end
	end)
end
-- delay the initial sort until needed, in case of modded items, or changing sorting order
EID.BoC.SortNeeded = true
local recheckPickups = false

local customRNGSeed = 0x77777770
local customRNGShift = {0,0,0}

-- Use local RNG functions to possibly reduce processing time a little bit
local function RNGNext()
	local num = customRNGSeed
	num = num ~ ((num >> customRNGShift[1]) & 4294967295)
	num = num ~ ((num << customRNGShift[2]) & 4294967295)
	num = num ~ ((num >> customRNGShift[3]) & 4294967295)
	customRNGSeed = num >> 0;
	return customRNGSeed;
end

local function nextFloat()
	local multi = 2.3283061589829401E-10;
	return RNGNext() * multi;
end

-- Convert a pickup's ID into what ingredient it counts as
function EID:getBagOfCraftingID(Variant, SubType)
	local entry = EID.BoC.PickupIDLookup[Variant.."."..SubType]
	if entry ~= nil then
		return entry
	elseif Variant == 300 then
		if SubType == 0 then -- player:GetCard() returned 0
			return nil
		elseif EID.itemConfig:GetCard(SubType):IsRune() then -- runes
			return {23}
		else -- cards
			return {21}
		end
	elseif Variant == 70 then -- pills
		if SubType == 0 then -- player:GetPill() returned 0
			return nil
		else
			return {22}
		end
	end
	return nil
end

-- "Item Probability" MODE: Get percentages of what quality / item pool a given set of 8 ingredients can yield
function EID:simulateBagOfCrafting(componentsTable)
	local components = componentsTable
	local compTotalWeight = 0
	local compCounts = {}
	for i = 1, #EID.BoC.ComponentShifts do
		compCounts[i] = 0
	end
	for _, compId in ipairs(components) do
		if (_ > 8) then break end
		compCounts[compId + 1] = compCounts[compId + 1] + 1
		compTotalWeight = compTotalWeight + EID.BoC.PickupValues[compId + 1]
	end

	local poolWeights = {
		{idx = 0, weight = 1, totalWeight = 0},
		{idx = 1, weight = 2, totalWeight = 0},
		{idx = 2, weight = 2, totalWeight = 0},
		{idx = 3, weight = compCounts[4] * 10, totalWeight = 0},
		{idx = 4, weight = compCounts[5] * 10, totalWeight = 0},
		{idx = 5, weight = compCounts[7] * 5, totalWeight = 0},
		{idx = 7, weight = compCounts[30] * 10, totalWeight = 0},
		{idx = 8, weight = compCounts[6] * 10, totalWeight = 0},
		{idx = 9, weight = compCounts[26] * 10, totalWeight = 0},
		{idx = 12, weight = compCounts[8] * 10, totalWeight = 0},
	}
	if compCounts[9] + compCounts[2] + compCounts[13] + compCounts[16] == 0 then
		table.insert(poolWeights, {idx = 26, weight = compCounts[24] * 10, totalWeight = 0})
	end

	local totalWeight = 0

	local qualityWeights = {[0] = 0, 0, 0, 0, 0}

	for _, poolWeight in ipairs(poolWeights) do
		if poolWeight.weight > 0 then
			local qualityMin = 0
			local qualityMax = 1
			local n = compTotalWeight
			if (poolWeight.idx >= 3) and (poolWeight.idx <= 5) then
				n = n - 5
			end
			if n > 34 then
				qualityMin = 4
				qualityMax = 4
			elseif n > 26 then
				qualityMin = 3
				qualityMax = 4
			elseif n > 22 then
				qualityMin = 2
				qualityMax = 4
			elseif n > 18 then
				qualityMin = 2
				qualityMax = 3
			elseif n > 14 then
				qualityMin = 1
				qualityMax = 2
			elseif n > 8 then
				qualityMin = 0
				qualityMax = 2
			end
			local pool = CraftingItemPools[poolWeight.idx + 1]

			for _, item in ipairs(pool) do
				local quality = CraftingItemQualities[item[1]]
				if quality >= qualityMin and quality <= qualityMax  then
					local w = item[2] * poolWeight.weight
					poolWeight.totalWeight = poolWeight.totalWeight + w
					qualityWeights[quality] = qualityWeights[quality] + w
					totalWeight = totalWeight + w
				end
			end
		end
	end

	local poolString = ""
	local firstAfterBoss = false
	for k,v in ipairs(poolWeights) do
		if (v.totalWeight > 0) then
			--line break after boss pool
			if (firstAfterBoss) then poolString = poolString .. " " end
			poolString = poolString .. EID.ItemPoolTypeToMarkup[v.idx] .. ":" .. math.floor(v.totalWeight/totalWeight*100+0.5) .. "%,"
			firstAfterBoss = (k == 3)
		end
	end
	poolString = string.sub(poolString,1,-2) .. "#"
	for i=0,4 do
		local v = qualityWeights[i]
		if (v > 0) then
			poolString = poolString .. "{{Quality" .. i .. "}}:" .. math.floor(v/totalWeight*100+0.5) .. "%,"
		end
	end
	poolString = string.sub(poolString,1,-2)

	return compTotalWeight, poolString
end

-- "Learned Recipes" MODE: Save the result of the 8 items inside our bag
function EID:learnBagOfCrafting(componentsTable)	
	-- ingredients must be sorted by ID to store in EID.BoC.LearnedRecipes
	local components = {table.unpack(componentsTable)}
	table.sort(components)
	local componentsAsString = table.concat(components, ",")
	
	local recipe = REPENTOGON and EID.bagPlayer:GetBagOfCraftingOutput() or EID:calculateBagOfCrafting(componentsTable)
	if REPENTOGON and recipe == 0 then recipe = EID:calculateBagOfCrafting(componentsTable) end
	
	if (EID.BoC.LearnedRecipes[componentsAsString] ~= recipe) then newRecipeLearned = true end
	EID.BoC.LearnedRecipes[componentsAsString] = recipe;
end

-- The main function that takes 8 ingredients and tells you what collectible you will get in return
-- Only pass in a table with 8 valid ingredients!!!
function EID:calculateBagOfCrafting(componentsTable)
	-- ingredients must be sorted by ID for the RNG shifting to be accurate, so make a local copy
	local components = {table.unpack(componentsTable)}
	table.sort(components)
	local componentsAsString = table.concat(components, ",")

	-- Check the fixed recipes
	local cacheResult = CraftingFixedRecipes[componentsAsString]
	if cacheResult ~= nil then
		if EID:isCollectibleAvailable(cacheResult) then
			return cacheResult
		end
	end
	-- Check the recipes already calculated for this seed
	cacheResult = calculatedRecipes[componentsAsString]
	if cacheResult ~= nil then
		return cacheResult
	end

	-- Count up the ingredients, and shift the RNG based on the components in the bag
	customRNGSeed = lastSeedUsed
	local compTotalWeight = 0
	local compCounts = {}
	for i = 1, #EID.BoC.ComponentShifts do
		compCounts[i] = 0
	end
	for _, compId in ipairs(components) do
		compCounts[compId + 1] = compCounts[compId + 1] + 1
		compTotalWeight = compTotalWeight + EID.BoC.PickupValues[compId + 1]
		customRNGShift = EID.BoC.ComponentShifts[compId + 1]
		RNGNext()
	end
	customRNGShift = EID.BoC.ComponentShifts[7]

	local poolWeights = {
		{idx = 0, weight = 1},
		{idx = 1, weight = 2},
		{idx = 2, weight = 2},
		{idx = 3, weight = compCounts[4] * 10},
		{idx = 4, weight = compCounts[5] * 10},
		{idx = 5, weight = compCounts[7] * 5},
		{idx = 7, weight = compCounts[30] * 10},
		{idx = 8, weight = compCounts[6] * 10},
		{idx = 9, weight = compCounts[26] * 10},
		{idx = 12, weight = compCounts[8] * 10},
	}
	if compCounts[9] + compCounts[2] + compCounts[13] + compCounts[16] == 0 then
		table.insert(poolWeights, {idx = 26, weight = compCounts[24] * 10})
	end

	local totalWeight = 0
	local itemWeights = {}
	for i = 1, CraftingMaxItemID do
		itemWeights[i] = 0
	end

	for _, poolWeight in ipairs(poolWeights) do
		if poolWeight.weight > 0 then
			local qualityMin = 0
			local qualityMax = 1
			local n = compTotalWeight
			-- Devil, Angel, and Secret Room Pools have a 5 point penalty
			if (poolWeight.idx >= 3) and (poolWeight.idx <= 5) then
				n = n - 5
			end
			if n > 34 then
				qualityMin = 4
				qualityMax = 4
			elseif n > 26 then
				qualityMin = 3
				qualityMax = 4
			elseif n > 22 then
				qualityMin = 2
				qualityMax = 4
			elseif n > 18 then
				qualityMin = 2
				qualityMax = 3
			elseif n > 14 then
				qualityMin = 1
				qualityMax = 2
			elseif n > 8 then
				qualityMin = 0
				qualityMax = 2
			end
			local pool = CraftingItemPools[poolWeight.idx + 1]

			for _, item in ipairs(pool) do
				local quality = CraftingItemQualities[item[1]]
				if CraftingItemAllowed[item[1]] and quality >= qualityMin and quality <= qualityMax then
					local w = item[2] * poolWeight.weight
					itemWeights[item[1]] = itemWeights[item[1]] + w
					totalWeight = totalWeight + w
				end
			end
		end
	end

	for i = 1, 20 do
		local t = nextFloat() -- random number between 0 and 1
		local target = t * totalWeight -- number between 0 and total weight of possible results
		for k, v in ipairs(itemWeights) do
			target = target - v
			if target < 0 then
				-- check item:IsAvailable, otherwise reroll
				if EID:isCollectibleAvailable(k) then
					calculatedRecipes[componentsAsString] = k
					return k
				else
					break
				end
			end
		end
	end
	return 25
end

local function calcHeldItems()
	EID.BoC.InventoryQuery = {}
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		for j = 0, 3 do
			local card = EID:getBagOfCraftingID(300, player:GetCard(j))
			local pill = EID:getBagOfCraftingID(70, player:GetPill(j))
			-- assume the card/pill is only 1 ingredient
			if card then table.insert(EID.BoC.InventoryQuery, card[1]) end
			if pill then table.insert(EID.BoC.InventoryQuery, pill[1]) end
		end
	end
end

local function calcFloorItems()
	EID.BoC.FloorQuery = {}
	for _,roomQuery in pairs(EID.BoC.RoomQueries) do
		for _,v1 in ipairs(roomQuery[1]) do
			table.insert(EID.BoC.FloorQuery, v1)
		end
	end
end

local function qualitySort(a, b)
	if (EID.BoC.PickupValues[a+1] == EID.BoC.PickupValues[b+1]) then
		return a > b
	else
		return EID.BoC.PickupValues[a+1] > EID.BoC.PickupValues[b+1]
	end
end

local function GameStartCrafting()
	for i=1, EID.XMLMaxItemID do
		local item = EID.itemConfig:GetCollectible(i)
		if item ~= nil then
			CraftingItemQualities[item.ID] = item.CraftingQuality or item.Quality
			CraftingItemAllowed[item.ID] = EID:isCollectibleAllowed(item.ID)
		end
	end

	newRecipeLearned = true

	-- Use REPENTOGON to support modded items / updating the XML item pools
	if REPENTOGON then
		-- Add modded items
		CraftingMaxItemID = EID.XMLMaxItemID
		local coll = EID.itemConfig:GetCollectible(CraftingMaxItemID+1)
		while coll ~= nil do
			CraftingMaxItemID = CraftingMaxItemID + 1
			CraftingItemQualities[coll.ID] = coll.CraftingQuality or coll.Quality
			CraftingItemAllowed[coll.ID] = true
			coll = EID.itemConfig:GetCollectible(CraftingMaxItemID+1)
		end
		-- Redo the entire item pool table, not just add modded items, in case of mods messing the vanilla ones up
		local itemPool = game:GetItemPool()
		for _, poolNum in ipairs(bagOfCraftingPoolIDs) do
			CraftingItemPools[poolNum+1] = {}
			local thePool = itemPool:GetCollectiblesFromPool(poolNum)
			for _,collTable in pairs(thePool) do
				table.insert(CraftingItemPools[poolNum+1], {collTable.itemID, collTable.weight})
			end
		end
		EID.BoC.SortNeeded = true
	end
end
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, GameStartCrafting)

------------------------------------------
------------------------------------------
-----------Bag content detection ---------
------------------------------------------
------------------------------------------

local pickupsCollected = {} -- table of collected pickup indexes, reset each room
local pickupsJustTouched = {} -- flags of pickups a player/pickup-collector has touched, so the bag doesn't think it collected it

EID:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, function(_, pickup,collider,_)
	if collider.Type == EntityType.ENTITY_PLAYER or collider.Type == EntityType.ENTITY_FAMILIAR or
		collider.Type == EntityType.ENTITY_BUMBINO or collider.Type == EntityType.ENTITY_ULTRA_GREED then
		pickupsJustTouched[pickup.Index] = true
	end
end)

-- Formerly a MC_POST_PICKUP_UPDATE, but moved to this so that it's only called when we own a bag
---@diagnostic disable-next-line: duplicate-set-field
function EID:BoCCheckForPickups()
	for _,pickup in ipairs(Isaac.FindByType(EntityType.ENTITY_PICKUP, -1, -1, false, false)) do
		if pickup:GetSprite():GetAnimation() == "Collect" and not pickupsCollected[pickup.Index] then
			pickupsCollected[pickup.Index] = true
			if not pickupsJustTouched[pickup.Index] then
				local craftingIDs = EID:getBagOfCraftingID(pickup.Variant, pickup.SubType)
				if craftingIDs ~= nil then
					recheckPickups = true
					for _,v in ipairs(craftingIDs) do
						if #EID.BoC.BagItems >= 8 then table.remove(EID.BoC.BagItems, 1) end
						table.insert(EID.BoC.BagItems, v)
					end
				end
			end
		end
		pickupsJustTouched[pickup.Index] = nil
	end
end

function EID:BoCOnNewRoom(_)
	-- We're using the pickup indexes for quick checking, which reset on each new room
	pickupsCollected = {}
	recheckPickups = true
end
EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.BoCOnNewRoom)

-- Using a Card/Pill will change our inventory craftable items, so force a refresh then
-- (Note: Items that directly add a card/pill to you, i.e. Bottle of Pills, also need a refresh, but aren't tracked for performance)
EID:AddCallback(ModCallbacks.MC_USE_CARD, function(_)
	recheckPickups = true
end)
EID:AddCallback(ModCallbacks.MC_USE_PILL, function(_)
	recheckPickups = true
end)

--Tainted Cain "hold to craft" check
local holdCounter = 0
local icount = 0
---@diagnostic disable-next-line: duplicate-set-field
function EID:BoCTrackBagHolding()
	if not IsTaintedCain() then return end
	local isCardHold = Input.IsActionPressed(ButtonAction.ACTION_PILLCARD, EID.bagPlayer.ControllerIndex)
	local animationName = EID.bagPlayer:GetSprite():GetAnimation()
	if isCardHold and string.match(animationName, "PickupWalk") and #EID.BoC.BagItems>=8 then
		holdCounter = holdCounter + 1
		if holdCounter < 30 then
			icount = EID.bagPlayer:GetCollectibleCount()
		end
	else
		if isCardHold and holdCounter >= 30 and (string.match(animationName, "Walk") and not string.match(animationName, "Pickup") or (EID.bagPlayer:GetCollectibleCount() ~= icount)) then
			holdCounter = 0
			EID:learnBagOfCrafting(EID.BoC.BagItems)
			EID.BoC.BagItems = {}
			EID:UpdateAllPlayerPassiveItems()
		else
			holdCounter = 0
		end
	end
end

--Active slot "press to craft" check
EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, function(_, _, _, _, _, slot)
	if slot ~= 0 or #EID.BoC.BagItems < 8 then return end
	EID.BoC.BagItems = {}
end, CollectibleType.COLLECTIBLE_BAG_OF_CRAFTING)

local function shiftBagContent()
	local newContent = {}
	for i=2,#EID.BoC.BagItems do
		table.insert(newContent, EID.BoC.BagItems[i])
	end
	table.insert(newContent, EID.BoC.BagItems[1])
	EID.BoC.BagItems = newContent
end
-- only Tainted Cain's consumable slot bag can have its ingredients shifted
---@diagnostic disable-next-line: duplicate-set-field
function EID:BoCDetectBagContentShift()
	if Input.IsActionTriggered(ButtonAction.ACTION_DROP, EID.bagPlayer.ControllerIndex) and IsTaintedCain() then
		shiftBagContent()
	end
end

-----------------------------
-----------------------------
-----------RENDERING---------
-----------------------------
-----------------------------

local randResultCache = {}
local calcResultCache = {}
local numResults = 0

local bagOfCraftingOffset = 0
local lockedResults = nil
local refreshNextTick = false
local refreshPosition = 0
local bagOfCraftingRefreshes = 0
local downHeld = 0
local upHeld = 0
local resetBagCounter = 0

EID.CraftingIsHidden = false
EID.ShowCraftingResult = false

local prevDesc = ""

--this combination algorithm was adopted from this Java code: https://stackoverflow.com/a/16256122
--note that it will run into duplicates, for example if you have eight pennies and a key, it can't tell the difference between
--PPPPPPPK (pennies 1-7) and PPPPPPPK (pennies 2-8) and PPPPPPPK (pennies 1-4,6-8) etc..., I don't know of a way to prevent that
local coTimer = 0
-- number of milliseconds we allow these to run without yielding (1/60th of a second = 16.66667 milliseconds)
local coTimerLength = 5
local function combinations(arr, length, startPos, tempResult, randResults, newResults)
	if Isaac.GetTime() > coTimer + coTimerLength then
		coroutine.yield()
		coTimer = Isaac.GetTime()
	end
	length = length or 8
	startPos = startPos or 1
	tempResult = tempResult or {}
	if (length == 0) then
		local resultString = table.concat(tempResult,",")
		if (randResults[resultString] == nil) then
			randResults[resultString] = {table.unpack(tempResult)}
			newResults[resultString] = {table.unpack(tempResult)}
		end
		return
	end
	for i = startPos, #arr-length+1 do
		tempResult[8-length+1] = arr[i]
		combinations(arr,length-1, i+1, tempResult, randResults, newResults)
	end
end

local function getHotkeyString()
	if (not EID.Config["BagOfCraftingShowControls"]) then return "" end
	local hotkeyString = ""
	local hideDesc = EID:getDescriptionEntry("CraftingHideKey")
	local previewDesc = EID:getDescriptionEntry("CraftingPreviewKey")

	local controllerEnabled = EID.bagPlayer.ControllerIndex > 0
	local hideKey = EID.KeyboardToString[EID.Config["CraftingHideKey"]]
	local hideButton = controllerEnabled and EID.ButtonToIconMap[EID.Config["CraftingHideButton"]]
	local previewKey = EID.KeyboardToString[EID.Config["CraftingResultKey"]]
	local previewButton = controllerEnabled and EID.ButtonToIconMap[EID.Config["CraftingResultButton"]]

	if hideKey or hideButton then hotkeyString = hideDesc .. " " end
	if hideKey and hideButton then
		hotkeyString = hotkeyString .. hideKey .. "/" .. hideButton
	else
		hotkeyString = hotkeyString .. (hideKey or hideButton)
	end

	if #EID.BoC.BagItems >= 8 and EID.Config["BagOfCraftingDisplayRecipesMode"] ~= "Preview Only" then
		if previewKey or previewButton then hotkeyString = hotkeyString .. ", " .. previewDesc .. " " end
		if previewKey and previewButton then
			hotkeyString = hotkeyString .. previewKey .. "/" .. previewButton
		else
			hotkeyString = hotkeyString .. (previewKey or previewButton)
		end
	end
	if hotkeyString ~= "" then
		hotkeyString = "!!! {{NoLineBreak}}" .. hotkeyString .. "#"
	end

	return hotkeyString
end

local function getFloorItemsString(showPreviews, roomItems)
	local floorString = ""
	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	if #bagItems >0 then
		-- Don't show an item preview in Learned Recipe List if Curse of the Blind is active
		if showPreviews and #bagItems == 8 and (EID.Config["BagOfCraftingDisplayRecipesMode"] == "Recipe List" or not EID:hasCurseBlind() or not EID.Config["DisableOnCurse"]) then
			local recipe = REPENTOGON and EID.bagPlayer:GetBagOfCraftingOutput() or EID:calculateBagOfCrafting(bagItems)
			-- when using REPENTOGON, MCM needs to think its bag is full
			if EID.BoC.BagItemsOverride then recipe = EID:calculateBagOfCrafting(bagItems) end
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local bagDesc = EID:getDescriptionEntry("CraftingBagContent")
		floorString = floorString .. bagDesc.. EID:tableToCraftingIconsMerged(bagItems).."#"
	end
	local curRoomItems = EID.BoC.RoomOverride or roomItems
	if #curRoomItems >0 then
		-- Don't show a room/floor item preview in Learned Recipe List mode
		if showPreviews and #curRoomItems == 8 and EID.Config["BagOfCraftingDisplayRecipesMode"] == "Recipe List" then
			local recipe = EID:calculateBagOfCrafting(curRoomItems)
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local roomDesc = EID:getDescriptionEntry("CraftingRoomContent")
		floorString = floorString .. roomDesc..EID:tableToCraftingIconsMerged(curRoomItems).."#"
	end
	local floorQuery = EID.BoC.FloorOverride or EID.BoC.FloorQuery
	if #floorQuery >0 and #curRoomItems ~= #floorQuery then
		-- Don't show a room/floor item preview in Learned Recipe List mode
		if showPreviews and #floorQuery == 8 and EID.Config["BagOfCraftingDisplayRecipesMode"] == "Recipe List" then
			local recipe = EID:calculateBagOfCrafting(floorQuery)
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local floorDesc = EID:getDescriptionEntry("CraftingFloorContent")
		floorString = floorString .. floorDesc..EID:tableToCraftingIconsMerged(floorQuery)
	end
	local inventoryQuery= EID.BoC.InventoryOverride or EID.BoC.InventoryQuery
	if #inventoryQuery > 0 then
		floorString = floorString .. "(+" .. EID:tableToCraftingIconsMerged(inventoryQuery) .. ")#"
	else
		floorString = floorString .. "#"
	end
	return floorString
end

-- This list will be modified once the coroutine finishes; until then it will have the last finished list
local currentRecipesList = {}

local itemQuery = {}
local mostValuable = {}
local randResults = {}
local newResults = {}
local skipRandom = false
local isRefresh = false
local queryString = ""
local displayingRecipeList = false

local function RecipeCrunchCoroutine()
	coTimer = Isaac.GetTime()

	-- Fill randResults/newResults with every possible combination of our most valuable ingredients
	-- The number is has an option to limit it in the config, since the number of total combinations quickly grows (nCr):
	-- 12 = 495, 13 = 1287, 14 = 3003, 15 = 6435, 16 = 12870
	combinations(mostValuable, nil, nil, nil, randResults, newResults)

	--do random pulls for some more recipe choices
	if (not skipRandom) then
		for i = 0, EID.Config["BagOfCraftingRandomResults"] do
			if Isaac.GetTime() > coTimer + coTimerLength then
				coroutine.yield()
				coTimer = Isaac.GetTime()
			end
			local newTable = {}
			local tableCopy = {table.unpack(itemQuery)}
			for k = 1, 8 do
				local pos = math.random(1, #tableCopy)
				table.insert(newTable, tableCopy[pos])
				table.remove(tableCopy, pos)
			end
			table.sort(newTable, qualitySort)
			local resultString = table.concat(newTable,",")
			if (randResults[resultString] == nil) then
				randResults[resultString] = {table.unpack(newTable)}
				newResults[resultString] = {table.unpack(newTable)}
			end
		end
	end

	local sortedResults = {}
	if (calcResultCache[queryString]) then
		sortedResults = calcResultCache[queryString]
	else
		for _, v in ipairs(sortedIDs) do
			sortedResults[v] = {}
		end
	end

	for _, v in pairs(newResults) do
		if Isaac.GetTime() > coTimer + coTimerLength then
			coroutine.yield()
			coTimer = Isaac.GetTime()
		end
		local resultID = EID:calculateBagOfCrafting(v)
		table.insert(sortedResults[resultID], {v, resultID})
	end
	calcResultCache[queryString] = sortedResults
	randResultCache[queryString] = randResults
	currentRecipesList = sortedResults

	numResults = 0
	for _,v in ipairs(sortedIDs) do
		-- keep our cursor position if we're not at the top of the list, and bag's contents don't matter for list size
		if (isRefresh and bagOfCraftingOffset > 0 and v == refreshPosition and (IsTaintedCain() or #EID.BoC.BagItems == 0)) then
			--jump to the item we were looking at before, so you can more easily refresh for variants of recipes
			bagOfCraftingOffset = numResults
		end
		numResults = numResults + #currentRecipesList[v]
	end

	if not isRefresh then
		bagOfCraftingOffset = 0
		bagOfCraftingRefreshes = 0
	end
	isRefresh = false
	EID.RefreshBagTextbox = true
end

-- Convert our learned recipes into a list per ID
local function LearnedRecipeList()
	if not newRecipeLearned or lockedResults then return end
	newRecipeLearned = false

	local sortedResults = {}
	for _, v in ipairs(sortedIDs) do
		sortedResults[v] = {}
	end

	for ingreds, resultID in pairs(EID.BoC.LearnedRecipes) do
		local ingredTable = {}
		-- split the recipe by comma
		for i in string.gmatch(ingreds, "[^,]+") do table.insert(ingredTable, tonumber(i)) end
		table.insert(sortedResults[resultID], {ingredTable, resultID})
	end

	currentRecipesList = sortedResults

	numResults = 0
	for _,v in ipairs(sortedIDs) do
		-- keep our cursor position if we're not at the top of the list, and bag's contents don't matter for list size
		if (isRefresh and bagOfCraftingOffset > 0 and v == refreshPosition and (IsTaintedCain() or #EID.BoC.BagItems == 0)) then
			--jump to the item we were looking at before, so you can more easily refresh for variants of recipes
			bagOfCraftingOffset = numResults
		end
		numResults = numResults + #currentRecipesList[v]
	end

	if not isRefresh then
		bagOfCraftingOffset = 0
		bagOfCraftingRefreshes = 0
	end
	isRefresh = false
	EID.RefreshBagTextbox = true
end

local function MCMLearnedRecipeList()
	local sortedResults = {}
	for _, v in ipairs(sortedIDs) do
		sortedResults[v] = {}
	end
	
	local recipe = EID:calculateBagOfCrafting({15,15,5,1,10,8,8,9})
	table.insert(sortedResults[recipe], {{15,15,5,1,10,8,8,9}, recipe})
	currentRecipesList = sortedResults
	numResults = 1
	bagOfCraftingOffset = 0
	bagOfCraftingRefreshes = 0
	isRefresh = false
	EID.RefreshBagTextbox = true
	newRecipeLearned = true -- make the list return to normal once MCM is closed
end

function EID:BOCHandleCurseOfMaze()
	-- switches tracked room contents when rooms are switched by curse of maze
	if game:GetLevel():GetCurses() & LevelCurse.CURSE_OF_MAZE ~= LevelCurse.CURSE_OF_MAZE then
		return
	end
	local rooms = game:GetLevel():GetRooms()
	local changedRooms = {}
	for i = 0, rooms.Size - 1 do
		local roomDesc = rooms:Get(i)
		if roomDesc and roomDesc.Data then
			local savedRoomContent = EID.BoC.RoomQueries[roomDesc.ListIndex .. ""]
			if not savedRoomContent then
				EID.BoC.RoomQueries[roomDesc.ListIndex .. ""] = { {}, roomDesc.Data.Variant }
			end
			if savedRoomContent and savedRoomContent[2] ~= roomDesc.Data.Variant then
				table.insert(changedRooms, roomDesc.ListIndex)
			end
		end
	end
	if #changedRooms >= 2 then
		local temp = EID.BoC.RoomQueries[changedRooms[2] .. ""]
		EID.BoC.RoomQueries[changedRooms[2] .. ""] = EID.BoC.RoomQueries[changedRooms[1] .. ""]
		EID.BoC.RoomQueries[changedRooms[1] .. ""] = temp
	end
end

local prevOffset = 0
-- Called 60 times a second so we can read input properly
function EID:handleBagOfCraftingUpdating()
	-- don't do any updating if on a Repentance version before v1.7.9b
	if (Isaac.RunCallback == nil) then return end
	-- reset our calculated recipes when the game seed changes, or certain item's availability changes
	local curSeed = game:GetSeeds():GetStartSeed()
	local updatedItemAvailability = false
	-- check the availability of our tracked items, for Sacred Orb / TLost/LostBR
	for k,v in pairs(lastItemStatus) do
		local curStatus = EID.itemConfig:GetCollectible(k):IsAvailable()
		if v ~= curStatus then updatedItemAvailability = true end
		lastItemStatus[k] = curStatus
	end
	if (curSeed ~= lastSeedUsed or updatedItemAvailability) then
		calculatedRecipes = {}
		calcResultCache = {}
		randResultCache = {}
		EID.itemAvailableStates = {}
		lockedResults = nil
	end
	lastSeedUsed = curSeed
	
	-- Use REPENTOGON to accurately know what's inside the bag
	if REPENTOGON then
		EID.BoC.BagItems = EID.bagPlayer:GetBagOfCraftingContent()
		for i=1,8 do
			if EID.BoC.BagItems[i] == 0 then EID.BoC.BagItems[i] = nil end
		end
	end
	-- Save the result of the 8 items in our bag
	if #EID.BoC.BagItems == 8 and (not EID:hasCurseBlind() or not EID.Config["DisableOnCurse"]) then
		EID:learnBagOfCrafting(EID.BoC.BagItems)
	end

	-- watch for holding the Craft button, and pressing the ingredient shift button
	EID:BoCTrackBagHolding()
	EID:BoCDetectBagContentShift()
	if EID.GameRenderCount % 2 == 0 then EID:BoCCheckForPickups() end

	-- Check for Hide/Preview hotkeys; prevent them from triggering while in MCM
	if not ModConfigMenu or not ModConfigMenu.IsVisible then
		if Input.IsButtonTriggered(EID.Config["CraftingHideKey"], 0) or Input.IsButtonTriggered(EID.Config["CraftingHideButton"], EID.bagPlayer.ControllerIndex) then
			EID.CraftingIsHidden = not EID.CraftingIsHidden
		end

		if Input.IsButtonTriggered(EID.Config["CraftingResultKey"], 0) or Input.IsButtonTriggered(EID.Config["CraftingResultButton"], EID.bagPlayer.ControllerIndex) then
			EID.ShowCraftingResult = not EID.ShowCraftingResult
		end
	end

	local oldSearchValue = EID:BoCSGetSearchValue()
	local oldSearchInputEnabled = EID:BoCSGetSearchInputEnabled()
	EID:BoCSHandleInput()
	if oldSearchValue ~= EID:BoCSGetSearchValue() or oldSearchInputEnabled ~= EID:BoCSGetSearchInputEnabled() then
		EID.RefreshBagTextbox = true
	end

	-- Check for Hold Tab key inputs
	if displayingRecipeList and Input.IsActionPressed(EID.Config["BagOfCraftingToggleKey"], EID.bagPlayer.ControllerIndex, true) then
		EID.TabDescThisFrame = true
		EID.bagPlayer.ControlsCooldown = 2
		if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, EID.bagPlayer.ControllerIndex) then
			bagOfCraftingOffset = math.min(numResults-(numResults%EID.Config["BagOfCraftingResults"]), bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			downHeld = Isaac.GetTime()
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, EID.bagPlayer.ControllerIndex) then
			bagOfCraftingOffset = math.max(0, bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			upHeld = Isaac.GetTime()
		--lock the current results so you can actually do a recipe that you've scrolled down to without losing it
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTLEFT, EID.bagPlayer.ControllerIndex, true) then
			EID.RefreshBagTextbox = true
			if (lockedResults == nil) then
				lockedResults = queryString
				EID:BoCSSetLocked(true)
			else
				lockedResults = nil
				EID:BoCSSetLocked(false)
			end
		--refresh the recipes
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTRIGHT, EID.bagPlayer.ControllerIndex) then
			if (lockedResults == nil) then
				refreshNextTick = true
			end
		end
		--scroll pages quickly if the button is held
		if Input.IsActionPressed(ButtonAction.ACTION_SHOOTDOWN, EID.bagPlayer.ControllerIndex) and Isaac.GetTime() - downHeld > 750 then
			bagOfCraftingOffset = math.min(numResults-(numResults%EID.Config["BagOfCraftingResults"]), bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			downHeld = Isaac.GetTime() - 700
		elseif Input.IsActionPressed(ButtonAction.ACTION_SHOOTUP, EID.bagPlayer.ControllerIndex) and Isaac.GetTime() - upHeld > 750 then
			bagOfCraftingOffset = math.max(0, bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			upHeld = Isaac.GetTime() - 700
		end
		--reset bag contents when holding Use Pill/Card
		if Input.IsActionPressed(ButtonAction.ACTION_PILLCARD, EID.bagPlayer.ControllerIndex) then
			resetBagCounter = resetBagCounter + 1
			if resetBagCounter > 120 then
				EID.BoC.BagItems = {}
				recheckPickups = true
				resetBagCounter = 0
			end
		else
			resetBagCounter = 0
		end
	end
	--fix bug with being allowed to go to an empty page if recipe count = multiple of page size (or if we refresh on last page)
	if (bagOfCraftingOffset >= numResults) then bagOfCraftingOffset = bagOfCraftingOffset - EID.Config["BagOfCraftingResults"] end
end

-- Check what pickups are available in this room
function EID:BoCGetRoomPickupList()
	local currentRoomDesc = game:GetLevel():GetCurrentRoomDesc()
	local curRoomIndex = currentRoomDesc.ListIndex
	local pickups = Isaac.FindByType(5, -1, -1, true, false)

	if EID.BoC.CurrentPickupCount ~= #pickups or recheckPickups then
		local roomItems = {}
		recheckPickups = false
		for _, entity in ipairs(pickups) do
			local craftingIDs = EID:getBagOfCraftingID(entity.Variant, entity.SubType)
			if craftingIDs ~= nil and not entity:ToPickup():IsShopItem() and entity:GetSprite():GetAnimation() ~= "Collect" then
				for _,v in ipairs(craftingIDs) do
					table.insert(roomItems, v)
				end
			end
		end
		EID.BoC.RoomQueries[curRoomIndex .. ""] = { roomItems, currentRoomDesc.Data.Variant }
		EID.BoC.CurrentPickupCount = #pickups
		calcHeldItems()
		calcFloorItems()
		EID.RefreshBagTextbox = true
		return roomItems
	else
		return EID.BoC.RoomQueries[curRoomIndex .. ""] and EID.BoC.RoomQueries[curRoomIndex .. ""][1] or {}
	end
end

-- Called when needed based on EID.Config["RefreshRate"]
function EID:handleBagOfCraftingRendering(ignoreRefreshRate)
	-- Determine if we should display anything at all
	if not EID:RefreshThisFrame() and not ignoreRefreshRate then
		return false
	end
	displayingRecipeList = false
	if ((EID.isHidden or EID.CraftingIsHidden) and EID.MCMCompat_isDisplayingEIDTab ~= "Crafting") or game.Challenge == Challenge.CHALLENGE_CANTRIPPED then
		return false
	elseif EID.Config["BagOfCraftingHideInBattle"] and (Isaac.CountBosses() > 0 or Isaac.CountEnemies() > 0) then
		return false
	elseif EID.Config["DisplayBagOfCrafting"] == "never" then
		return false
	elseif EID.Config["DisplayBagOfCrafting"] == "hold" and not string.find(EID.bagPlayer:GetSprite():GetAnimation(), "PickupWalk") then
		return false
	elseif game:GetRoom():GetFrameCount() < 2 then
		return false
	end

	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	-- Display the result of the 8 items in our bag if applicable
	if (EID.ShowCraftingResult or EID.Config["BagOfCraftingDisplayRecipesMode"] == "Preview Only") and #bagItems == 8 then
		if EID.Config["BagOfCraftingDisplayRecipesMode"] ~= "Recipe List" and EID:hasCurseBlind() and EID.Config["DisableOnCurse"] then
			EID.ShowCraftingResult = false
			return false
		end
		local craftingResult = REPENTOGON and EID.bagPlayer:GetBagOfCraftingOutput() or EID:calculateBagOfCrafting(bagItems)
		-- when using REPENTOGON, MCM needs to think its bag is full
		if EID.BoC.BagItemsOverride then craftingResult = EID:calculateBagOfCrafting(bagItems) end
		local descriptionObj = EID:getDescriptionObj(5, 100, craftingResult)
		-- prepend the Hide/Preview hotkeys to the description
		descriptionObj.Description = getHotkeyString() .. descriptionObj.Description
		EID:addDescriptionToPrint(descriptionObj)
		return true
	end
	-- if we're in Preview Only mode, then we have nothing more to do
	if (EID.Config["BagOfCraftingDisplayRecipesMode"] == "Preview Only") then return false end

	-- Check what pickups are available in this room
	local roomItems = EID:BoCGetRoomPickupList()

	itemQuery = {}
	local itemCount = {}

	-- Merge our list of the floor's pickups, held cards/pills, and our bag's pickups
	-- max 8 copies of a single item in our list, to avoid repeat recipes
	local floorQuery = EID.BoC.FloorOverride or EID.BoC.FloorQuery
	local inventoryQuery= EID.BoC.InventoryOverride or EID.BoC.InventoryQuery
	local tablesToMerge = { floorQuery, inventoryQuery, bagItems }
	for _, tbl in ipairs(tablesToMerge) do
		for _, v in ipairs(tbl) do
			if (not itemCount[v] or itemCount[v] < 8) then
					table.insert(itemQuery, v)
					if (not itemCount[v]) then itemCount[v] = 1
					else itemCount[v] = itemCount[v] + 1 end
			end
		end
	end

	-- Nothing to do if there's less than 8 pickups detected
	if #itemQuery < 8 then
		return false
	end
	-- sort by ingredient quality, as high quality recipes are more important to check
	table.sort(itemQuery, qualitySort)
	queryString = table.concat(itemQuery,",")

	----------------------------------------------

	local customDescObj = EID:getDescriptionObj(5, 100, 710)
	customDescObj.Description = ""

	-- load the function we need for Show Recipes as Groups / 8 Icons
	local tableToCraftingIconsFunc = EID.tableToCraftingIconsMerged
	if EID.Config["BagOfCraftingDisplayIcons"] then tableToCraftingIconsFunc = EID.tableToCraftingIconsFull end
	
	local mode = EID.Config["BagOfCraftingDisplayRecipesMode"]
	-- Pickups Only / Item Probability Mode display
	if mode == "Pickups Only" then
		EID:appendToDescription(customDescObj, getHotkeyString())
		EID:appendToDescription(customDescObj, getFloorItemsString(false, roomItems))
		EID:addDescriptionToPrint(customDescObj)
		return true
	elseif mode == "Item Probability" then
		if not EID.RefreshBagTextbox and prevDesc ~= "" and not EID.OptionChanged then
			EID:appendToDescription(customDescObj, prevDesc)
			EID:addDescriptionToPrint(customDescObj)
			return true
		end

		prevDesc = ""
		EID.RefreshBagTextbox = false

		prevDesc = prevDesc .. getHotkeyString()
		prevDesc = prevDesc .. getFloorItemsString(false, roomItems)

		local mostValuableBag = {}
		for i=1,8 do
			mostValuableBag[i] = itemQuery[i]
		end
		local bagQuality, bagResult = EID:simulateBagOfCrafting(bagItems)
		local bestQuality, bestResult = EID:simulateBagOfCrafting(mostValuableBag)
		local bagQualityDesc = EID:getDescriptionEntry("CraftingBagQuality")
		local bestQualityDesc = EID:getDescriptionEntry("CraftingBestQuality")

		if (#bagItems > 0) then prevDesc = prevDesc .. bagQualityDesc .. " " .. bagQuality .. "#" .. bagResult .. "#" end
		if (bestQuality > bagQuality) then prevDesc = prevDesc .. bestQualityDesc .. " " .. bestQuality .. "#{{Blank}} " .. tableToCraftingIconsFunc(self,mostValuableBag, true) .. "#" .. bestResult .. "#" end

		EID:appendToDescription(customDescObj, prevDesc)
		EID:addDescriptionToPrint(customDescObj)
		return true
	end

	-- Recipe List display
	displayingRecipeList = true
	if EID.BoC.SortNeeded then
		sortAllItems()
		EID.BoC.SortNeeded = false
	end

	if mode == "Learned Recipe List" then
		if ModConfigMenu and ModConfigMenu.IsVisible then
			MCMLearnedRecipeList()
		else
			LearnedRecipeList() --todo: do this less often
		end
	elseif lockedResults ~= nil then
		currentRecipesList = calcResultCache[lockedResults]
	elseif (calcResultCache[queryString] == nil or refreshNextTick) and EID.Coroutines["RecipeCrunch"] == nil then
		isRefresh = refreshNextTick
		--build on top of our previous recipe lists, if possible
		randResults = randResultCache[queryString] or {}
		newResults = {}
		skipRandom = false
		mostValuable = {}

		--shift our thorough check forward one ingredient each refresh (it will find duplicates, but spamming refresh will get a lot of variety)
		if (refreshNextTick) then
			bagOfCraftingRefreshes = bagOfCraftingRefreshes + 1
			if (#itemQuery >= EID.Config["BagOfCraftingCombinationMax"] + bagOfCraftingRefreshes) then
				for i=1,EID.Config["BagOfCraftingCombinationMax"] do
					mostValuable[i] = itemQuery[i+bagOfCraftingRefreshes]
				end
			end
		--we have less items than our threshold; every single recipe will be listed
		elseif (#itemQuery <= EID.Config["BagOfCraftingCombinationMax"]) then
			mostValuable = itemQuery
			skipRandom = true
		else
		--grab the X most valuable ingredients
			for i=1,EID.Config["BagOfCraftingCombinationMax"] do
				mostValuable[i] = itemQuery[i]
			end
		end

		EID:addCoroutine("RecipeCrunch", RecipeCrunchCoroutine)
		refreshNextTick = false
	else
		currentRecipesList = calcResultCache[queryString] or currentRecipesList
	end

	if numResults == 0 then
		bagOfCraftingOffset = 0
		return false
	end

	if not EID.RefreshBagTextbox and prevDesc ~= "" and bagOfCraftingOffset == prevOffset and not EID.OptionChanged then
		EID:appendToDescription(customDescObj, prevDesc)
		EID:addDescriptionToPrint(customDescObj)
		return true
	end

	prevOffset = bagOfCraftingOffset
	prevDesc = ""
	EID.RefreshBagTextbox = false

	local searchLine = EID:BoCSGetSearchLine()
	if searchLine ~= nil then
		prevDesc = prevDesc .. searchLine
	end

	prevDesc = prevDesc .. getHotkeyString()
	prevDesc = prevDesc .. getFloorItemsString(true, roomItems)
	if (EID.Config["BagOfCraftingShowControls"]) then
		local resultDesc = EID:getDescriptionEntry("CraftingResults")
		local searchButton = EID.KeyboardToString[EID.Config["CraftingSearchKey"]]
		resultDesc = EID:ReplaceVariableStr(resultDesc, 1, searchButton)
		prevDesc = prevDesc .. resultDesc
	end

	local prevItem = 0

	local prefix = "#{{Blank}} "
	if (lockedResults) then
		prefix = "#{{Padlock}} "
	end
	local moreDesc = EID:getDescriptionEntry("CraftingMore")
	
	-- Build the list of recipes that we will actually be displaying, dependent on bag contents (if not T.Cain) and active search
	local filteredRecipesList = {}
	local filteredNumResults = 0
	local tcain = IsTaintedCain()
	
	local IDsToCheck = {}
	if EID:BoCSGetSearchEnabled() then
		-- Filter out item names that don't match our search term
		for _,id in ipairs(sortedIDs) do
			local searchValid = #currentRecipesList[id] > 0 and EID:BoCSCheckItemName(EID:getObjectName(5, 100, id))
			if (searchValid) then table.insert(IDsToCheck, id) end
		end
		-- Nothing in our recipe list passed the test; try checking English names as a backup
		if #IDsToCheck == 0 then
			local curLang = EID:getLanguage()
			EID.Config["Language"] = EID.DefaultLanguageCode
			for _,id in ipairs(sortedIDs) do
				local searchValid = EID:BoCSCheckItemName(EID:getObjectName(5, 100, id))
				if (searchValid) then table.insert(IDsToCheck, id) end
			end
			EID.Config["Language"] = curLang
		end
	else IDsToCheck = sortedIDs end
	
	for _,id in ipairs(IDsToCheck) do
		filteredRecipesList[id] = {}
		-- If we aren't Tainted Cain, we should filter out recipes that don't use everything in our bag
		for _, v in ipairs(currentRecipesList[id]) do
			if (tcain or EID:bagContainsCount(v[1]) == #bagItems) then
				table.insert(filteredRecipesList[id], v)
				filteredNumResults = filteredNumResults + 1
			end
		end
	end

	-- Keeping the offset doesn't work at all with non-Tainted-Cain bag-filtered results;
	-- just reset us to 0 if we end up past the end of the list for now...
	if (bagOfCraftingOffset >= filteredNumResults) then bagOfCraftingOffset = 0 end
	
	--filteredRecipesList is a table of tables for each item, so we have to iterate over the table using sortedIDs
	if (bagOfCraftingOffset > 0) then
		prevDesc = prevDesc .. prefix .. EID:ReplaceVariableStr(moreDesc, 1, bagOfCraftingOffset)
	end
	local curOffset = 0
	refreshPosition = -1
	for _,id in ipairs(IDsToCheck) do
		if (curOffset + #filteredRecipesList[id] <= bagOfCraftingOffset) then curOffset = curOffset + #filteredRecipesList[id]
		else
			if (refreshPosition == -1) then refreshPosition = id end
			for _, v in ipairs(filteredRecipesList[id]) do
				curOffset = curOffset + 1
				if (curOffset > bagOfCraftingOffset+EID.Config["BagOfCraftingResults"]) then break end
				if not v then break end
				if (curOffset > bagOfCraftingOffset) then
					local itemName = EID:getObjectName(5, 100, v[2]);
					if not EID.Config["BagOfCraftingDisplayNames"] then
						prevDesc = prevDesc .."#{{Collectible"..v[2].."}} "
						--color the equals sign with the item quality, so the order of the list can make sense
						prevDesc = prevDesc .. qualities[CraftingItemQualities[v[2]]] .. "={{CR}}"
					--only display the item name if it's the first occurrence
					else
						if prevItem ~= v[2] then
							prevDesc = prevDesc .."#{{Collectible"..v[2].."}} ".. qualities[CraftingItemQualities[v[2]]] ..
							itemName.."{{NoLineBreak}}#"
						else
							prevDesc = prevDesc .."#"
						end
					end

					prevDesc = prevDesc .. tableToCraftingIconsFunc(self, v[1], true)
					prevItem = v[2]
				end
			end
		end
	end
	if (bagOfCraftingOffset + EID.Config["BagOfCraftingResults"] < filteredNumResults) then
		prevDesc = prevDesc .. prefix .. EID:ReplaceVariableStr(moreDesc, 1, (filteredNumResults-EID.Config["BagOfCraftingResults"]-bagOfCraftingOffset))
	elseif lockedResults then
		prevDesc = prevDesc .. prefix
	end

	EID:appendToDescription(customDescObj, prevDesc)
	EID:addDescriptionToPrint(customDescObj)
	return true
end
