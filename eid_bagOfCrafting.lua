local pickupValues = {
  0x00000000, -- 0 None
  -- Hearts
  0x00000001, -- 1 Red Heart
  0x00000004, -- 2 Soul Heart
  0x00000005, -- 3 Black Heart
  0x00000005, -- 4 Eternal Heart
  0x00000005, -- 5 Gold Heart
  0x00000005, -- 6 Bone Heart
  0x00000001, -- 7 Rotten Heart
  -- Pennies
  0x00000001, -- 8 Penny
  0x00000003, -- 9 Nickel
  0x00000005, -- 10 Dime
  0x00000008, -- 11 Lucky Penny
  -- Keys
  0x00000002, -- 12 Key
  0x00000007, -- 13 Golden Key
  0x00000005, -- 14 Charged Key
  -- Bombs
  0x00000002, -- 15 Bomb
  0x00000007, -- 16 Golden Bomb
  0x0000000a, -- 17 Giga Bomb
  -- Batteries
  0x00000002, -- 18 Micro Battery
  0x00000004, -- 19 Lil' Battery
  0x00000008, -- 20 Mega Battery
  -- Usables
  0x00000002, -- 21 Card
  0x00000002, -- 22 Pill
  0x00000004, -- 23 Rune
  0x00000004, -- 24 Dice Shard
  0x00000002, -- 25 Cracked Key
  -- Added in Update
  0x00000007, -- 26 Golden Penny
  0x00000007, -- 27 Golden Pill
  0x00000007, -- 28 Golden Battery
  0x00000000, -- 29 Tainted ??? Poop
  
  0x00000001,
}
local pickupIDLookup = {
	["10.1"] = {1}, -- Red heart
	["10.2"] = {1}, -- half heart
	["10.3"] = {2}, -- soul heart
	["10.4"] = {4}, -- eternal heart
	["10.5"] = {1, 1}, -- double heart
	["10.6"] = {3}, -- black heart
	["10.7"] = {5}, -- gold heart
	["10.8"] = {2}, -- half soul heart
	["10.9"] = {1}, -- scared red heart
	["10.10"] = {1, 2}, -- blended heart
	["10.11"] = {6}, -- Bone heart
	["10.12"] = {7}, -- Rotten heart
	["20.1"] = {8}, -- Penny
	["20.2"] = {9}, -- Nickel
	["20.3"] = {10}, -- Dime
	["20.4"] = {8, 8}, -- Double penny
	["20.5"] = {11}, -- Lucky Penny
	["20.6"] = {9}, -- Sticky Nickel
	["20.7"] = {26}, -- Golden Penny
	["30.1"] = {12}, -- Key
	["30.2"] = {13}, -- golden Key
	["30.3"] = {12,12}, -- Key Ring
	["30.4"] = {14}, -- charged Key
	["40.1"] = {15}, -- bomb
	["40.2"] = {15,15}, -- double bomb
	["40.4"] = {16}, -- golden bomb
	["40.7"] = {17}, -- giga bomb
	["42.0"] = {29}, -- poop nugget
	["42.1"] = {29}, -- big poop nugget
	["70.14"] = {27}, -- golden pill
	["70.2062"] = {27}, -- golden horse pill
	["90.1"] = {19}, -- Lil Battery
	["90.2"] = {18}, -- Micro Battery
	["90.3"] = {20}, -- Mega Battery
	["90.4"] = {28}, -- Golden Battery
	["300.49"] = {24}, -- Dice shard
	["300.50"] = {21}, -- Emergency Contact
	["300.78"] = {25}, -- Cracked key
}

local function IsTaintedCain()
	--no clue how the display works for co-op, as far as I can tell we're only caring about player 1
	--this check is necessary for some ingredient tracking now that Bag of Crafting is usable by everyone
	return Game():GetPlayer(0):GetPlayerType() == 23
end

local componentShifts = {
	{0x00000001, 0x00000005, 0x00000010},
	{0x00000001, 0x00000005, 0x00000013},
	{0x00000001, 0x00000009, 0x0000001D},
	{0x00000001, 0x0000000B, 0x00000006},
	{0x00000001, 0x0000000B, 0x00000010},
	{0x00000001, 0x00000013, 0x00000003},
	{0x00000001, 0x00000015, 0x00000014},
	{0x00000001, 0x0000001B, 0x0000001B},
	{0x00000002, 0x00000005, 0x0000000F},
	{0x00000002, 0x00000005, 0x00000015},
	{0x00000002, 0x00000007, 0x00000007},
	{0x00000002, 0x00000007, 0x00000009},
	{0x00000002, 0x00000007, 0x00000019},
	{0x00000002, 0x00000009, 0x0000000F},
	{0x00000002, 0x0000000F, 0x00000011},
	{0x00000002, 0x0000000F, 0x00000019},
	{0x00000002, 0x00000015, 0x00000009},
	{0x00000003, 0x00000001, 0x0000000E},
	{0x00000003, 0x00000003, 0x0000001A},
	{0x00000003, 0x00000003, 0x0000001C},
	{0x00000003, 0x00000003, 0x0000001D},
	{0x00000003, 0x00000005, 0x00000014},
	{0x00000003, 0x00000005, 0x00000016},
	{0x00000003, 0x00000005, 0x00000019},
	{0x00000003, 0x00000007, 0x0000001D},
	{0x00000003, 0x0000000D, 0x00000007},
	{0x00000003, 0x00000017, 0x00000019},
	{0x00000003, 0x00000019, 0x00000018},
	{0x00000003, 0x0000001B, 0x0000000B},
	{0x00000004, 0x00000003, 0x00000011},
	{0x00000004, 0x00000003, 0x0000001B},
	{0x00000004, 0x00000005, 0x0000000F},
	{0x00000005, 0x00000003, 0x00000015},
	{0x00000005, 0x00000007, 0x00000016},
	{0x00000005, 0x00000009, 0x00000007},
	{0x00000005, 0x00000009, 0x0000001C},
	{0x00000005, 0x00000009, 0x0000001F},
	{0x00000005, 0x0000000D, 0x00000006},
	{0x00000005, 0x0000000F, 0x00000011},
	{0x00000005, 0x00000011, 0x0000000D},
	{0x00000005, 0x00000015, 0x0000000C},
	{0x00000005, 0x0000001B, 0x00000008},
	{0x00000005, 0x0000001B, 0x00000015},
	{0x00000005, 0x0000001B, 0x00000019},
	{0x00000005, 0x0000001B, 0x0000001C},
	{0x00000006, 0x00000001, 0x0000000B},
	{0x00000006, 0x00000003, 0x00000011},
	{0x00000006, 0x00000011, 0x00000009},
	{0x00000006, 0x00000015, 0x00000007},
	{0x00000006, 0x00000015, 0x0000000D},
	{0x00000007, 0x00000001, 0x00000009},
	{0x00000007, 0x00000001, 0x00000012},
	{0x00000007, 0x00000001, 0x00000019},
	{0x00000007, 0x0000000D, 0x00000019},
	{0x00000007, 0x00000011, 0x00000015},
	{0x00000007, 0x00000019, 0x0000000C},
	{0x00000007, 0x00000019, 0x00000014},
	{0x00000008, 0x00000007, 0x00000017},
	{0x00000008, 0x00000009, 0x00000017},
	{0x00000009, 0x00000005, 0x0000000E},
	{0x00000009, 0x00000005, 0x00000019},
	{0x00000009, 0x0000000B, 0x00000013},
	{0x00000009, 0x00000015, 0x00000010},
	{0x0000000A, 0x00000009, 0x00000015},
	{0x0000000A, 0x00000009, 0x00000019},
	{0x0000000B, 0x00000007, 0x0000000C},
	{0x0000000B, 0x00000007, 0x00000010},
	{0x0000000B, 0x00000011, 0x0000000D},
	{0x0000000B, 0x00000015, 0x0000000D},
	{0x0000000C, 0x00000009, 0x00000017},
	{0x0000000D, 0x00000003, 0x00000011},
	{0x0000000D, 0x00000003, 0x0000001B},
	{0x0000000D, 0x00000005, 0x00000013},
	{0x0000000D, 0x00000011, 0x0000000F},
	{0x0000000E, 0x00000001, 0x0000000F},
	{0x0000000E, 0x0000000D, 0x0000000F},
	{0x0000000F, 0x00000001, 0x0000001D},
	{0x00000011, 0x0000000F, 0x00000014},
	{0x00000011, 0x0000000F, 0x00000017},
	{0x00000011, 0x0000000F, 0x0000001A}
}

--These are recipes that have already been calculated, plus the contents of recipes.xml
local calculatedRecipes = {}
--Backup recipes in case of potential achievement lock
local lockedRecipes = {}
--If the seed changes, the above two tables will be wiped
local lastSeedUsed = 0

local customRNGSeed = 0x77777770
local customRNGShift = {0,0,0}

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

function EID:getBagOfCraftingID(Variant, SubType)
	local entry = pickupIDLookup[""..Variant.."."..SubType]
	if entry ~= nil then
		return entry
	elseif Variant == 300 then
		if SubType > 80 or (SubType >= 32 and SubType <= 41) or SubType == 55 then -- runes
			return {23}
		else -- cards
			return {21}
		end 
	elseif Variant == 70 then -- pills
		return {22}
	end
	return nil
end

function EID:calculateBagOfCrafting(componentsTable)
	local components = {table.unpack(componentsTable)}
	if components == nil or #components ~= 8 then
		return 0
	end

	customRNGSeed = Game():GetSeeds():GetStartSeed()
	table.sort(components)

	--Check the fixed recipes. Currently, the fixed recipes ignore item unlock status
	local cacheResult = EID.XMLRecipes[table.concat(components, ",")]
	if cacheResult ~= nil then
		return cacheResult, cacheResult
	end
	
	cacheResult = calculatedRecipes[table.concat(components, ",")]
	local lockedResult = lockedRecipes[table.concat(components, ",")]

	if cacheResult ~= nil then
		return cacheResult, lockedResult
	end
	local compTotalWeight = 0
	local compCounts = {}
	for i = 1, #componentShifts do
		compCounts[i] = 0
	end
	for _, compId in ipairs(components) do
		compCounts[compId + 1] = compCounts[compId + 1] + 1
		compTotalWeight = compTotalWeight + pickupValues[compId + 1]
		customRNGShift = componentShifts[compId + 1]
		RNGNext()
	end
	customRNGShift = componentShifts[7]
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

	local maxItemID = EID.XMLMaxItemID
	for i = 1, maxItemID do
		itemWeights[i] = 0
	end

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
			elseif n > 30 then
				qualityMin = 3
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
			local pool = EID.XMLItemPools[poolWeight.idx + 1]
			
			for _, item in ipairs(pool) do
				local quality = EID.XMLItemQualities[item[1]]
				if quality >= qualityMin and quality <= qualityMax  then
					local w = item[2] * poolWeight.weight
					itemWeights[item[1]] = itemWeights[item[1]] + w
					totalWeight = totalWeight + w
				end
			end
		end
	end
	if totalWeight <= 0 then
		return 25, 25
	end
	--When the first crafting result is an achievement locked item, this process gets repeated a second time to choose a new result
	--That 2nd pick could also be achievement locked but we're ignoring that...
	local firstOption = nil
	while true do
		local t = nextFloat()
		local target = t * totalWeight
		for k,v in pairs(itemWeights) do
			target = target - v
			if target < 0 then
				if firstOption then
					calculatedRecipes[table.concat(components, ",")] = firstOption
					lockedRecipes[table.concat(components, ",")] = k
					return firstOption, k
				else
					--Don't do the 2nd pass if this item is definitely unlocked
					if EID:isCollectibleUnlockedAnyPool(k) then
						return k, k
					else
						firstOption = k
						break
					end
				end
			end
		end
	end
end

------------------------------------------
------------------------------------------
-----------Bag content detection ---------
------------------------------------------
------------------------------------------


local pickupsOnInit = {}

EID:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, function(_, pickup,collider,_)
	if collider.Type ~= EntityType.ENTITY_PLAYER then
		return
	end
	-- Remove pickups picked up normally
	local pickupsOnInitCorrected = {}
	for _,e in ipairs (pickupsOnInit) do
		if GetPtrHash(pickup) ~= GetPtrHash(e) then
			table.insert(pickupsOnInitCorrected, e)
		end
	end
	pickupsOnInit = pickupsOnInitCorrected
end)

EID:AddCallback(ModCallbacks.MC_POST_KNIFE_INIT, function(_, entity)
	if entity.Variant ~= 4 then
		return
	end
	pickupsOnInit = {}
	for _,e in ipairs (Isaac.FindByType(EntityType.ENTITY_PICKUP, -1, -1, false, false)) do
		if e:GetSprite():GetAnimation() ~= "Collect" then
			table.insert(pickupsOnInit, e)
		end
	end
end, 4)

EID:AddCallback(ModCallbacks.MC_POST_ENTITY_REMOVE, function(_, bag)
	if bag.Variant ~= 4 or bag.SubType ~= 4 then
		return
	end
	
	table.sort(pickupsOnInit, function (a,b)
		return
			 a:GetSprite():GetFrame() > b:GetSprite():GetFrame() or
			(a:GetSprite():GetFrame() == b:GetSprite():GetFrame() and a.Index < b.Index)
	end)
	
	for _,e in ipairs (pickupsOnInit) do
		if e:GetSprite():GetAnimation() == "Collect" then
			local craftingIDs = EID:getBagOfCraftingID(e.Variant, e.SubType)
			if craftingIDs ~= nil then
				for _,v in ipairs(craftingIDs) do
					if #EID.BagItems >= 8 then
						local newContent = {}
						for i=2,#EID.BagItems do
							table.insert(newContent, EID.BagItems[i])
						end
						EID.BagItems = newContent
					end
					table.insert(EID.BagItems, v)
				end
			end
		end
	end
end, EntityType.ENTITY_KNIFE)

--Tainted Cain "hold to craft" check
local holdCounter = 0
local function trackBagHolding()
	if not IsTaintedCain() then return end
	local isCardHold = Input.IsActionPressed(ButtonAction.ACTION_PILLCARD, EID.player.ControllerIndex)
	local animationName = EID.player:GetSprite():GetAnimation()
	if isCardHold and string.match(animationName, "PickupWalk") and #EID.BagItems>=8 then
		holdCounter = holdCounter + 1
		if holdCounter < 30 then
			EID.icount = EID.player:GetCollectibleCount()
		end
	else
		if isCardHold and holdCounter >= 30 and (string.match(animationName, "Walk") and not string.match(animationName, "Pickup") or (EID.player:GetCollectibleCount() ~= EID.icount)) then
			EID.BagItems = {}
		else
			holdCounter = 0
		end
	end
end

local function trackBagActivated()
	if IsTaintedCain() then return end
	if Input.IsActionTriggered(ButtonAction.ACTION_ITEM, EID.player.ControllerIndex) and #EID.BagItems >= 8 then
		EID.BagItems = {}
		-- SCHOOLBAG BREAKS THIS!!! but it's better than nothing
		-- and, technically, if the active item bag has 8 items, it's impossible to fill it without first emptying it, and then we're synced again
	end
end

local function shiftBagContent()
	local newContent = {}
	for i=2,#EID.BagItems do
		table.insert(newContent, EID.BagItems[i])
	end
	table.insert(newContent, EID.BagItems[1])
	EID.BagItems = newContent
end

-- only Tainted Cain's consumable slot bag can have its ingredients shifted... probably?
local function detectBagContentShift()
	if Input.IsActionTriggered(ButtonAction.ACTION_DROP, EID.player.ControllerIndex) and IsTaintedCain() then
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

EID.bagOfCraftingOffset = 0
EID.bagOfCraftingCurPickupCount = -1
EID.bagOfCraftingRoomQueries = {}
EID.bagOfCraftingFloorQuery = {}
EID.BagItems = {}
EID.icount = 0

EID.lockedResults = nil
EID.refreshNextTick = false
EID.refreshPosition = 0
EID.bagOfCraftingRefreshes = 0
EID.downHeld = 0
EID.upHeld = 0

local maxItemID = nil

local function detectModdedItems()
	if maxItemID == nil then
		maxItemID = EID:GetMaxCollectibleID()
	end
	if maxItemID > EID.XMLMaxItemID then
		local customDescObj = EID:getDescriptionObj(5, 100, 710)
		customDescObj.Description = EID.descriptions["en_us"].CraftingBagModError
		EID:printDescription(customDescObj)
		return true
	end
	return false
end

local function calcFloorItems()
	EID.bagOfCraftingFloorQuery = {}
	for _,v in pairs(EID.bagOfCraftingRoomQueries) do
		for _,v1 in ipairs(v) do
			table.insert(EID.bagOfCraftingFloorQuery, v1)
		end
	end
end

function EID:handleBagOfCraftingRendering()
	trackBagHolding()
	trackBagActivated()
	detectBagContentShift()
	
	if EID.isHidden then
		return
	elseif EID.Config["BagOfCraftingHideInBattle"] then
		if Isaac.CountBosses() > 0 or Isaac.CountEnemies() > 0 then
			return
		end
	end

	if EID.Config["DisplayBagOfCrafting"] == "never" then
		return false
	end
	if EID.Config["DisplayBagOfCrafting"] == "hold" and not string.find(EID.player:GetSprite():GetAnimation(), "PickupWalk") then
		return false
	end
	if detectModdedItems() or Game():GetRoom():GetFrameCount ()<2 then
		return false
	end
	
	local curSeed = Game():GetSeeds():GetStartSeed()
	--reset our calculated recipes when the game seed changes
	if (curSeed ~= lastSeedUsed) then
		calculatedRecipes = {}
		lockedRecipes = {}
		calcResultCache = {}
		randResultCache = {}
	end
	lastSeedUsed = curSeed
	
	local curRoomIndex = Game():GetLevel():GetCurrentRoomDesc().SafeGridIndex
	
	local results = {}
	local roomItems = {}
	local pickups = Isaac.FindByType(5, -1, -1, true, false)

	if EID.bagOfCraftingCurPickupCount ~= #pickups then
		for i, entity in ipairs(pickups) do
			local craftingIDs = EID:getBagOfCraftingID(entity.Variant, entity.SubType)
			if craftingIDs ~= nil and not entity:ToPickup():IsShopItem() then
				for _,v in ipairs(craftingIDs) do
					table.insert(roomItems, v)
				end
			end
		end
		EID.bagOfCraftingRoomQueries[curRoomIndex..""] = roomItems
		EID.bagOfCraftingCurPickupCount = #pickups
		calcFloorItems()
	else
		roomItems = EID.bagOfCraftingRoomQueries[curRoomIndex..""] or {}
	end
	
	local itemQuery = {}
	local itemCount = {}
	
	--max 8 copies of a single item in our list, to avoid repeat recipes
	for i, v in ipairs(EID.bagOfCraftingFloorQuery) do
		if (not itemCount[v] or itemCount[v] < 8) then
			table.insert(itemQuery, v)
			if (not itemCount[v]) then itemCount[v] = 1
			else itemCount[v] = itemCount[v] + 1 end
		end
	end
	
	for i, v in ipairs(EID.BagItems) do
		if (not itemCount[v] or itemCount[v] < 8) then
			table.insert(itemQuery, v)
			if (not itemCount[v]) then itemCount[v] = 1
			else itemCount[v] = itemCount[v] + 1 end
		end
	end
	
	-- Calculate result from pickups on floor
	if #itemQuery < 8 then
		return false
	end
	
	local function qualitySort(a, b)
		if (pickupValues[a+1] == pickupValues[b+1]) then
			return a > b
		else
			return pickupValues[a+1] > pickupValues[b+1]
		end
	end
	
	--sort by ingredient quality
	table.sort(itemQuery, qualitySort)

	local queryString = table.concat(itemQuery,",")
	if EID.lockedResults ~= nil then
		results = calcResultCache[EID.lockedResults]
	elseif calcResultCache[queryString] == nil or EID.refreshNextTick then
		--build on top of our previous recipe lists, if possible
		local randResults = randResultCache[queryString] or {}
		local skipRandom = false
		--check every single possible recipe for our highest value pickups
		--limit it in the options, since the number of total combinations quickly grows (nCr):
		--12 = 495, 13 = 1287, 14 = 3003, 15 = 6435, 16 = 12870
		local mostValuable = {}
		
		--shift our thorough check forward one ingredient each refresh (it will find duplicates, but spamming refresh will get a lot of variety)
		if (EID.refreshNextTick) then
			EID.bagOfCraftingRefreshes = EID.bagOfCraftingRefreshes + 1
			if (#itemQuery >= EID.Config["BagOfCraftingCombinationMax"] + EID.bagOfCraftingRefreshes) then
				for i=1,EID.Config["BagOfCraftingCombinationMax"] do
					mostValuable[i] = itemQuery[i+EID.bagOfCraftingRefreshes]
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
		--this combination algorithm was adopted from this Java code: https://stackoverflow.com/a/16256122
		--note that it will run into duplicates, for example if you have eight pennies and a key, it can't tell the difference between
		--PPPPPPPK (pennies 1-7) and PPPPPPPK (pennies 2-8) and PPPPPPPK (pennies 1-4,6-8) etc..., I don't know of a way to prevent that
		local function combinations(arr, length, startPos, tempResult)
		  local length = length or 8
		  local startPos = startPos or 1
		  local tempResult = tempResult or {}
		  if (length == 0) then
			randResults[table.concat(tempResult,",")] = {table.unpack(tempResult)}
			return
		  end
		  for i = startPos, #arr-length+1 do
			tempResult[8-length+1] = arr[i]
			combinations(arr,length-1,i+1,tempResult)
		  end
		end
		if (#mostValuable >= 8) then combinations(mostValuable) end
		
		--do random pulls for some more recipe choices
		if (not skipRandom) then
			for i = 0, EID.Config["BagOfCraftingRandomResults"] do
				local newTable = {}
				local tableCopy = {table.unpack(itemQuery)}
				for k = 1, 8 do
					local pos = math.random(1, #tableCopy)
					table.insert(newTable, tableCopy[pos])
					table.remove(tableCopy, pos)
				end
				table.sort(newTable, qualitySort)
				randResults[table.concat(newTable,",")] = newTable
			end
		end

		local calcResults = {}
		for k, v in pairs(randResults) do
			local resultID, lockedAchievementID = EID:calculateBagOfCrafting(v)
			if resultID ~= lockedAchievementID then
				table.insert(calcResults, {v, resultID, lockedAchievementID})
			else
				table.insert(calcResults, {v, resultID})
			end
		end
		calcResultCache[queryString] = calcResults
		randResultCache[queryString] = randResults
		results = calcResults
		--sort our final results by quality, then alphabetical item name
		table.sort(results, function(a, b)
			if EID.XMLItemQualities[a[2]] == EID.XMLItemQualities[b[2]] then
				return (EID:getObjectName(5, 100, a[2]) < EID:getObjectName(5, 100, b[2]))
			else
				return (EID.XMLItemQualities[a[2]] > EID.XMLItemQualities[b[2]])
			end
		end)
		
		if not EID.refreshNextTick then
			EID.bagOfCraftingOffset = 0
			EID.bagOfCraftingRefreshes = 0
		--jump to the item we were looking at before, so you can more easily refresh for variants of recipes
		elseif EID.bagOfCraftingOffset > 0 then
			for k,v in ipairs(results) do
				if (v[2] == EID.refreshPosition) then
					EID.bagOfCraftingOffset = k-1
					break
				end
			end
		end
		EID.refreshNextTick = false
	else
		results = calcResultCache[queryString]
	end
	
	if #results == 0 then
		EID.bagOfCraftingOffset = 0
		return false
	end
	
	local customDescObj = EID:getDescriptionObj(5, 100, 710)
	customDescObj.Description = ""
	
	if #EID.BagItems >0 then
		if #EID.BagItems >= 8 then
			local recipe = EID:calculateBagOfCrafting(EID.BagItems)
			EID:appendToDescription(customDescObj, "{{Collectible"..recipe.."}} ")
		end
		local bagDesc = EID:getDescriptionEntry("CraftingBagContent").."(Beta)"
		EID:appendToDescription(customDescObj, bagDesc..EID:tableToCraftingIconsMerged(EID.BagItems).."#")
	end
	if #roomItems >0 then
		if #roomItems == 8 then
			local recipe = EID:calculateBagOfCrafting(roomItems)
			EID:appendToDescription(customDescObj, "{{Collectible"..recipe.."}} ")
		end
		local roomDesc = EID:getDescriptionEntry("CraftingRoomContent")
		EID:appendToDescription(customDescObj, roomDesc..EID:tableToCraftingIconsMerged(roomItems).."#")
	end
	if #EID.bagOfCraftingFloorQuery >0 and #roomItems ~= #EID.bagOfCraftingFloorQuery then
		if #EID.bagOfCraftingFloorQuery == 8 then
			local recipe = EID:calculateBagOfCrafting(EID.bagOfCraftingFloorQuery)
			EID:appendToDescription(customDescObj, "{{Collectible"..recipe.."}} ")
		end
		local floorDesc = EID:getDescriptionEntry("CraftingFloorContent")
		EID:appendToDescription(customDescObj, floorDesc..EID:tableToCraftingIconsMerged(EID.bagOfCraftingFloorQuery).."#")
	end
	
	local resultDesc = EID:getDescriptionEntry("CraftingResults")
	EID:appendToDescription(customDescObj, resultDesc)
	if Input.IsActionPressed(EID.Config["BagOfCraftingToggleKey"], EID.player.ControllerIndex) then
		EID.player:SetShootingCooldown(2)
		if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, EID.player.ControllerIndex) then
			EID.bagOfCraftingOffset = math.min(#results-(#results%EID.Config["BagOfCraftingResults"]), EID.bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			EID.downHeld = Isaac.GetTime()
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, EID.player.ControllerIndex) then
			EID.bagOfCraftingOffset = math.max(0, EID.bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			EID.upHeld = Isaac.GetTime()
		--lock the current results so you can actually do a recipe that you've scrolled down to without losing it
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTLEFT, EID.player.ControllerIndex) then
			if (EID.lockedResults == nil) then EID.lockedResults = queryString
			else EID.lockedResults = nil end
		--refresh the recipes
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTRIGHT, EID.player.ControllerIndex) then
			if (EID.lockedResults == nil) then
				EID.refreshNextTick = true
				if (results[EID.bagOfCraftingOffset+1]) then EID.refreshPosition = results[EID.bagOfCraftingOffset+1][2] end
			end
		end
		--scroll pages quickly if the button is held
		if Input.IsActionPressed(ButtonAction.ACTION_SHOOTDOWN, EID.player.ControllerIndex) and Isaac.GetTime() - EID.downHeld > 750 then
			EID.bagOfCraftingOffset = math.min(#results-(#results%EID.Config["BagOfCraftingResults"]), EID.bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			EID.downHeld = Isaac.GetTime() - 700
		elseif Input.IsActionPressed(ButtonAction.ACTION_SHOOTUP, EID.player.ControllerIndex) and Isaac.GetTime() - EID.upHeld > 750 then
			EID.bagOfCraftingOffset = math.max(0, EID.bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			EID.upHeld = Isaac.GetTime() - 700
		end
	end
	--fix bug with being allowed to go to an empty page if recipe count = multiple of page size (or if we refresh on last page)
	if (EID.bagOfCraftingOffset >= #results) then EID.bagOfCraftingOffset = EID.bagOfCraftingOffset - EID.Config["BagOfCraftingResults"] end
	
	local prevItem = 0
	
	local qualities = { [0] = "{{ColorSilver}}", "{{ColorLime}}", "{{ColorPastelBlue}}", "{{ColorLavender}}", "{{ColorLightOrange}}" }
	local prefix = "#{{Blank}} "
	if (EID.lockedResults) then
		prefix = "#{{Trinket159}} "
	end
	
	--results is now sorted by quality and item name, and doesn't iterate over the entire table, instead starting at the page offset
	if (EID.bagOfCraftingOffset > 0) then
		customDescObj.Description = customDescObj.Description.. prefix .. "...+"..EID.bagOfCraftingOffset.." more"
	end
	for i=EID.bagOfCraftingOffset+1,EID.bagOfCraftingOffset+EID.Config["BagOfCraftingResults"] do
		local v = results[i]
		if not v then break end
		
		if not EID.Config["BagOfCraftingDisplayNames"] then
			customDescObj.Description = customDescObj.Description.."# {{Collectible"..v[2].."}} "
			--tack on the secondary recipe image to achievement-locked recipes
			if v[3] then customDescObj.Description = customDescObj.Description.."({{Collectible" .. v[3] .. "}})" end
			--color the equals sign with the item quality, so the order of the list can make sense
			customDescObj.Description = customDescObj.Description.. qualities[EID.XMLItemQualities[v[2]]] .. "={{CR}}"
		--only display the item name if it's the first occurrence
		else
			if prevItem ~= v[2] then
				--substring the first 18 characters of the item name so it fits on one line; is there a way to get around desc line length limits?
				customDescObj.Description = customDescObj.Description.."# {{Collectible"..v[2].."}} ".. qualities[EID.XMLItemQualities[v[2]]] ..
				string.sub(EID:getObjectName(5, 100, v[2]),1,18).."#"
			else
				customDescObj.Description = customDescObj.Description.."#"
			end
			--replace recipe bulletpoint with the secondary recipe on achievement-locked recipes
			if v[3] then customDescObj.Description = customDescObj.Description.." {{Collectible" .. v[3] .. "}} " end
		end
		
		customDescObj.Description = customDescObj.Description..EID:tableToCraftingIconsMerged(v[1])
		prevItem = v[2]
	end
	if (EID.bagOfCraftingOffset + EID.Config["BagOfCraftingResults"] < #results) then
		customDescObj.Description = customDescObj.Description.. prefix .. "...+"..(#results-EID.Config["BagOfCraftingResults"]-EID.bagOfCraftingOffset).." more"
	end

	EID:printDescription(customDescObj)
	return true
end
