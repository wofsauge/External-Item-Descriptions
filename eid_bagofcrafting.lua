local game = Game()

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
	["10.10"] = {2, 1}, -- blended heart
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
	-- this check is necessary for tracking Bag usage since Tainted Cain's pocket bag works differently than everyone else's
	return EID.player:GetPlayerType() == 23
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

-- The icon each item pool will use in the No Recipes display
local poolToIcon = { [0]="{{TreasureRoom}}",[1]="{{Shop}}",[2]="{{BossRoom}}",[3]="{{DevilRoom}}",[4]="{{AngelRoom}}",
[5]="{{SecretRoom}}",[7]="{{PoopRoomIcon}}",[8]="{{GoldenChestRoomIcon}}",[9]="{{RedChestRoomIcon}}",[12]="{{CursedRoom}}",[26]="{{Planetarium}}" }

-- local copies of our XML data in case it's slightly faster
local CraftingMaxItemID = EID.XMLMaxItemID
local CraftingFixedRecipes = EID.XMLRecipes
local CraftingItemPools = EID.XMLItemPools
local CraftingItemQualities = EID.XMLItemQualities

--These are recipes that have already been calculated, plus the contents of recipes.xml
local calculatedRecipes = {}
--Backup recipes in case of potential achievement lock
local lockedRecipes = {}
--If the seed changes, the above two tables will be wiped
local lastSeedUsed = 0

--A list of item IDs, sorted by quality, then by name, to help with sorting our recipe list faster
local sortedIDs = {}

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
		if CraftingItemQualities[a] == CraftingItemQualities[b] then
			return (objectNames[a] < objectNames[b])
		else
			return (CraftingItemQualities[a] > CraftingItemQualities[b])
		end
	end)
end
-- delay the initial sort until needed, in case of modded items
local sortNeeded = true
local recheckPickups = false

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

-- Convert a pickup's ID into what ingredient it counts as
function EID:getBagOfCraftingID(Variant, SubType)
	local entry = pickupIDLookup[Variant.."."..SubType]
	if entry ~= nil then
		return entry
	elseif Variant == 300 then
		if SubType == 0 then -- player:GetCard() returned 0
			return nil
		elseif SubType > 80 or (SubType >= 32 and SubType <= 41) or SubType == 55 then -- runes
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

-- NO RECIPES MODE: Get percentages of what quality / item pool a given set of 8 ingredients can yield
function EID:simulateBagOfCrafting(componentsTable)
	local components = componentsTable
	local compTotalWeight = 0
	local compCounts = {}
	for i = 1, #componentShifts do
		compCounts[i] = 0
	end
	for _, compId in ipairs(components) do
		if (_ > 8) then break end
		compCounts[compId + 1] = compCounts[compId + 1] + 1
		compTotalWeight = compTotalWeight + pickupValues[compId + 1]
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
			poolString = poolString .. poolToIcon[v.idx] .. ":" .. math.floor(v.totalWeight/totalWeight*100+0.5) .. "%,"
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

-- The main function that takes 8 ingredients and tells you what collectible you will get in return
-- Only pass in a table with 8 valid ingredients!!!
function EID:calculateBagOfCrafting(componentsTable)
	-- ingredients must be sorted by ID for the RNG shifting to be accurate, so make a local copy
	local components = {table.unpack(componentsTable)}
	table.sort(components)
	local componentsAsString = table.concat(components, ",")

	-- Check the fixed recipes. Currently, the fixed recipes ignore item unlock status
	local cacheResult = CraftingFixedRecipes[componentsAsString]
	if cacheResult ~= nil then
		return cacheResult, cacheResult
	end
	-- Check the recipes already calculated for this seed
	cacheResult = calculatedRecipes[componentsAsString]
	local lockedResult = lockedRecipes[componentsAsString]
	if cacheResult ~= nil then
		return cacheResult, lockedResult
	end
	
	-- Count up the ingredients, and shift the RNG based on the components in the bag
	customRNGSeed = lastSeedUsed
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
				if quality >= qualityMin and quality <= qualityMax  then
					local w = item[2] * poolWeight.weight
					itemWeights[item[1]] = itemWeights[item[1]] + w
					totalWeight = totalWeight + w
				end
			end
		end
	end
	--unsure if this emergency Breakfast would ever occur, without massively modified item pools at least, but it's in the game's code
	if totalWeight <= 0 then
		return 25, 25
	end
	--When the first crafting result is an achievement locked item, this process gets repeated a second time to choose a new result
	--That 2nd pick could also be achievement locked but we're ignoring that...
	local firstOption = nil
	while true do
		local t = nextFloat() -- number between 0 and 1
		local target = t * totalWeight -- number between 0 and total weight of possible results
		for k,v in ipairs(itemWeights) do
			target = target - v
			if target < 0 then
				if firstOption then
					calculatedRecipes[componentsAsString] = firstOption
					lockedRecipes[componentsAsString] = k
					return firstOption, k
				else
					--Don't do the 2nd pass if this item is definitely unlocked
					if EID:isCollectibleUnlockedAnyPool(k) then
						calculatedRecipes[componentsAsString] = k
						lockedRecipes[componentsAsString] = k
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

local function calcHeldItems()
	EID.bagOfCraftingInventoryQuery = {}
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		for j = 0, 3 do
			local card = EID:getBagOfCraftingID(300, player:GetCard(j))
			local pill = EID:getBagOfCraftingID(70, player:GetPill(j))
			-- assume the card/pill is only 1 ingredient
			if card then table.insert(EID.bagOfCraftingInventoryQuery, card[1]) end
			if pill then table.insert(EID.bagOfCraftingInventoryQuery, pill[1]) end
		end
	end
end
local function calcFloorItems()
	EID.bagOfCraftingFloorQuery = {}
	for _,v in pairs(EID.bagOfCraftingRoomQueries) do
		for _,v1 in ipairs(v) do
			table.insert(EID.bagOfCraftingFloorQuery, v1)
		end
	end
end
local function qualitySort(a, b)
	if (pickupValues[a+1] == pickupValues[b+1]) then
		return a > b
	else
		return pickupValues[a+1] > pickupValues[b+1]
	end
end

local moddedCrafting = false
-- Check for modded items past the known max item ID on game start (can also support game updates)
-- Only works if the new items are at Weight 1.0 in their item pools, but better than nothing
local function GameStartCrafting()
	if EID.Config["BagOfCraftingModdedRecipes"] and not EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER) and EID.itemConfig:GetCollectible(EID.XMLMaxItemID+1) ~= nil then
		dofile("eid_xmldata")
		-- Items past max ID detected
		CraftingMaxItemID = EID.XMLMaxItemID -- XMLMaxItemID is never modified
		-- Add new item qualities
		local coll = EID.itemConfig:GetCollectible(CraftingMaxItemID+1)
		while coll ~= nil do
			CraftingMaxItemID = CraftingMaxItemID + 1
			CraftingItemQualities[coll.ID] = coll.Quality
			coll = EID.itemConfig:GetCollectible(CraftingMaxItemID+1)
		end
		local itemPool = game:GetItemPool()
		-- Add new items to the crafting item pools, assuming Weight 1.0
		for poolNum,_ in pairs(poolToIcon) do
			for i=1,EID.XMLMaxItemID do itemPool:AddRoomBlacklist(i) end
			
			local collID = itemPool:GetCollectible(poolNum, false, 1, 25)
			while collID ~= 25 and collID > 0 do
				table.insert(CraftingItemPools[poolNum+1], {collID, 1.0})
				itemPool:AddRoomBlacklist(collID)
				collID = itemPool:GetCollectible(poolNum, false, 1, 25)
			end
			
			itemPool:ResetRoomBlacklist()
		end
		moddedCrafting = true
		sortNeeded = true
	elseif moddedCrafting then
		-- we had modded items; they have since been disabled
		dofile("eid_xmldata")
		moddedCrafting = false
		sortNeeded = true
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
local function checkForPickups()
	for _,pickup in ipairs(Isaac.FindByType(EntityType.ENTITY_PICKUP, -1, -1, false, false)) do
		if pickup:GetSprite():GetAnimation() == "Collect" and not pickupsCollected[pickup.Index] then
			pickupsCollected[pickup.Index] = true
			if not pickupsJustTouched[pickup.Index] then
				local craftingIDs = EID:getBagOfCraftingID(pickup.Variant, pickup.SubType)
				if craftingIDs ~= nil then
					recheckPickups = true
					for _,v in ipairs(craftingIDs) do
						if #EID.BagItems >= 8 then table.remove(EID.BagItems, 1) end
						table.insert(EID.BagItems, v)
					end
				end
			end
		end
		pickupsJustTouched[pickup.Index] = nil
	end
end

EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, function(_)
	-- We're using the pickup indexes for quick checking, which reset on each new room
	pickupsCollected = {}
end)

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
local function trackBagHolding()
	if not IsTaintedCain() then return end
	local isCardHold = Input.IsActionPressed(ButtonAction.ACTION_PILLCARD, EID.player.ControllerIndex)
	local animationName = EID.player:GetSprite():GetAnimation()
	if isCardHold and string.match(animationName, "PickupWalk") and #EID.BagItems>=8 then
		holdCounter = holdCounter + 1
		if holdCounter < 30 then
			icount = EID.player:GetCollectibleCount()
		end
	else
		if isCardHold and holdCounter >= 30 and (string.match(animationName, "Walk") and not string.match(animationName, "Pickup") or (EID.player:GetCollectibleCount() ~= icount)) then
			EID.BagItems = {}
		else
			holdCounter = 0
		end
	end
end

--Active slot "press to craft" check
EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, function(_, _, _, _, _, slot)
	if slot ~= 0 or #EID.BagItems < 8 then return end
	EID.BagItems = {}
end, CollectibleType.COLLECTIBLE_BAG_OF_CRAFTING)

local function shiftBagContent()
	local newContent = {}
	for i=2,#EID.BagItems do
		table.insert(newContent, EID.BagItems[i])
	end
	table.insert(newContent, EID.BagItems[1])
	EID.BagItems = newContent
end
-- only Tainted Cain's consumable slot bag can have its ingredients shifted
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
local numResults = 0

--these aren't local so that they can be saved and reloaded, or cleared in the Mod Config Menu
EID.bagOfCraftingCurPickupCount = -1
EID.bagOfCraftingRoomQueries = {}
EID.bagOfCraftingInventoryQuery = {}
EID.bagOfCraftingFloorQuery = {}
EID.BagItems = {}

local bagOfCraftingOffset = 0
local lockedResults = nil
local refreshNextTick = false
local refreshPosition = 0
local bagOfCraftingRefreshes = 0
local downHeld = 0
local upHeld = 0
local resetBagCounter = 0

local craftingIsHidden = false
local showCraftingResult = false

local prevDesc = ""
EID.RefreshBagTextbox = false

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
	local length = length or 8
	local startPos = startPos or 1
	local tempResult = tempResult or {}
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
--code from InputHelper in MCM
local HotkeyToString = {}
for key,num in pairs(Keyboard) do
	local keyString = key
	local keyStart, keyEnd = string.find(keyString, "KEY_")
	keyString = string.sub(keyString, keyEnd+1, string.len(keyString))
	keyString = string.gsub(keyString, "_", " ")
	HotkeyToString[num] = keyString
end
--convert controller enum to buttons
local ControllerToString = { [0] = "{{ButtonDLeft}}", "{{ButtonDRight}}", "{{ButtonDUp}}", "{{ButtonDDown}}",
"{{ButtonA}}", "{{ButtonB}}", "{{ButtonX}}", "{{ButtonY}}", "{{ButtonLB}}", "{{ButtonLT}}", "{{ButtonLStick}}", 
"{{ButtonRB}}", "{{ButtonRT}}", "{{ButtonRStick}}", "{{ButtonSelect}}", "{{ButtonMenu}}" }

local function getHotkeyString()
	local hotkeyString = ""
	local hideDesc = EID:getDescriptionEntry("CraftingHideKey")
	local previewDesc = EID:getDescriptionEntry("CraftingPreviewKey")
	
	local controllerEnabled = EID.player.ControllerIndex > 0
	local hideKey = HotkeyToString[EID.Config["CraftingHideKey"]]
	local hideButton = controllerEnabled and ControllerToString[EID.Config["CraftingHideButton"]]
	local previewKey = HotkeyToString[EID.Config["CraftingResultKey"]]
	local previewButton = controllerEnabled and ControllerToString[EID.Config["CraftingResultButton"]]
	
	if hideKey or hideButton then hotkeyString = hideDesc .. " " end
	if hideKey and hideButton then
		hotkeyString = hotkeyString .. hideKey .. "/" .. hideButton
	else
		hotkeyString = hotkeyString .. (hideKey or hideButton)
	end
	
	if #EID.BagItems >= 8 and EID.Config["BagOfCraftingDisplayMode"] ~= "Preview Only" then
		if previewKey or previewButton then hotkeyString = hotkeyString .. ", " .. previewDesc .. " " end
		if previewKey and previewButton then
			hotkeyString = hotkeyString .. previewKey .. "/" .. previewButton
		else
			hotkeyString = hotkeyString .. (previewKey or previewButton)
		end
	end
	if hotkeyString ~= "" then
		hotkeyString = "!!! " .. hotkeyString .. "#"
	end
	
	return hotkeyString
end

local function getFloorItemsString(showPreviews, roomItems)
	local floorString = ""
	if #EID.BagItems >0 then
		if showPreviews and #EID.BagItems == 8 then
			local recipe = EID:calculateBagOfCrafting(EID.BagItems)
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local bagDesc = EID:getDescriptionEntry("CraftingBagContent")
		floorString = floorString .. bagDesc.. EID:tableToCraftingIconsMerged(EID.BagItems).."#"
	end
	if #roomItems >0 then
		if showPreviews and #roomItems == 8 then
			local recipe = EID:calculateBagOfCrafting(roomItems)
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local roomDesc = EID:getDescriptionEntry("CraftingRoomContent")
		floorString = floorString .. roomDesc..EID:tableToCraftingIconsMerged(roomItems).."#"
	end
	if #EID.bagOfCraftingFloorQuery >0 and #roomItems ~= #EID.bagOfCraftingFloorQuery then
		if showPreviews and #EID.bagOfCraftingFloorQuery == 8 then
			local recipe = EID:calculateBagOfCrafting(EID.bagOfCraftingFloorQuery)
			floorString = floorString .. "{{Collectible"..recipe.."}} "
		end
		local floorDesc = EID:getDescriptionEntry("CraftingFloorContent")
		floorString = floorString .. floorDesc..EID:tableToCraftingIconsMerged(EID.bagOfCraftingFloorQuery)
	end
	if #EID.bagOfCraftingInventoryQuery > 0 then
		floorString = floorString .. "(+" .. EID:tableToCraftingIconsMerged(EID.bagOfCraftingInventoryQuery) .. ")#"
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
		local resultID, lockedAchievementID = EID:calculateBagOfCrafting(v)
		if resultID ~= lockedAchievementID then
			table.insert(sortedResults[resultID], {v, resultID, lockedAchievementID})
		else
			table.insert(sortedResults[resultID], {v, resultID})
		end
	end
	calcResultCache[queryString] = sortedResults
	randResultCache[queryString] = randResults
	currentRecipesList = sortedResults
	
	numResults = 0
	for _,v in ipairs(sortedIDs) do
		if (isRefresh and bagOfCraftingOffset > 0 and v == refreshPosition) then
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

function EID:handleBagOfCraftingRendering()
	-- reset our calculated recipes when the game seed changes
	local curSeed = game:GetSeeds():GetStartSeed()
	if (curSeed ~= lastSeedUsed) then
		calculatedRecipes = {}
		lockedRecipes = {}
		calcResultCache = {}
		randResultCache = {}
		lockedResults = nil
	end
	lastSeedUsed = curSeed
	
	-- watch for holding the Craft button, and pressing the ingredient shift button
	trackBagHolding()
	detectBagContentShift()
	if EID.GameRenderCount % 2 == 0 then checkForPickups() end
	
	-- load the function we need for Show Recipes as Groups / 8 Icons
	local tableToCraftingIconsFunc = EID.tableToCraftingIconsMerged
	if EID.Config["BagOfCraftingDisplayIcons"] then tableToCraftingIconsFunc = EID.tableToCraftingIconsFull end
	
	-- Check for Hide/Preview hotkeys; prevent them from triggering while in MCM
	if not ModConfigMenu or not ModConfigMenu.IsVisible then
		if Input.IsButtonTriggered(EID.Config["CraftingHideKey"], 0) or Input.IsButtonTriggered(EID.Config["CraftingHideButton"], EID.player.ControllerIndex) then
			craftingIsHidden = not craftingIsHidden
		end
		
		if Input.IsButtonTriggered(EID.Config["CraftingResultKey"], 0) or Input.IsButtonTriggered(EID.Config["CraftingResultButton"], EID.player.ControllerIndex) then
			showCraftingResult = not showCraftingResult
		end
	end
	
	-- Determine if we should display anything at all
	if ((EID.isHidden or craftingIsHidden) and EID.MCMCompat_isDisplayingEIDTab ~= "Crafting") or game.Challenge == Challenge.CHALLENGE_CANTRIPPED then
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
	if game:GetRoom():GetFrameCount() < 2 then
		return false
	end
	
	-- Display the result of the 8 items in our bag if applicable
	if (showCraftingResult or EID.Config["BagOfCraftingDisplayMode"] == "Preview Only") and #EID.BagItems == 8 then
		local craftingResult, backupResult = EID:calculateBagOfCrafting(EID.BagItems)
		if (backupResult ~= craftingResult) then EID.TabPreviewID = backupResult end
		local descriptionObj = EID:getDescriptionObj(5, 100, craftingResult)
		-- prepend the Hide/Preview hotkeys to the description
		descriptionObj.Description = getHotkeyString() .. descriptionObj.Description
		if (backupResult ~= craftingResult and descriptionObj.ObjSubType == craftingResult) then
			local backupDesc = EID:getDescriptionEntry("CraftingPreviewBackup")
			local backupObjName = EID:getObjectName(5, 100, backupResult)
			local tabText = EID:getDescriptionEntry("FlipItemToggleInfo")
			EID:appendToDescription(descriptionObj,"#" .. backupDesc .. "#{{Collectible" .. backupResult .. "}} " ..
			backupObjName .. "#{{Blank}} " .. tabText)
		end
		EID:printDescription(descriptionObj)
		return true
	end
	-- if we're in Preview Only mode, then we have nothing more to do
	if (EID.Config["BagOfCraftingDisplayMode"] == "Preview Only") then return false end
	
	-- Check what pickups are available in this room
	local curRoomIndex = game:GetLevel():GetCurrentRoomDesc().SafeGridIndex
	local roomItems = {}
	local pickups = Isaac.FindByType(5, -1, -1, true, false)

	if EID.bagOfCraftingCurPickupCount ~= #pickups or recheckPickups then
		recheckPickups = false
		for _, entity in ipairs(pickups) do
			local craftingIDs = EID:getBagOfCraftingID(entity.Variant, entity.SubType)
			if craftingIDs ~= nil and not entity:ToPickup():IsShopItem() and entity:GetSprite():GetAnimation() ~= "Collect" then
				for _,v in ipairs(craftingIDs) do
					table.insert(roomItems, v)
				end
			end
		end
		EID.bagOfCraftingRoomQueries[curRoomIndex..""] = roomItems
		EID.bagOfCraftingCurPickupCount = #pickups
		calcHeldItems()
		calcFloorItems()
		EID.RefreshBagTextbox = true
	else
		roomItems = EID.bagOfCraftingRoomQueries[curRoomIndex..""] or {}
	end
	
	itemQuery = {}
	local itemCount = {}
	
	-- Merge our list of the floor's pickups, held cards/pills, and our bag's pickups
	-- max 8 copies of a single item in our list, to avoid repeat recipes
	local tablesToMerge = { EID.bagOfCraftingFloorQuery, EID.bagOfCraftingInventoryQuery, EID.BagItems }
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
	
	-- Pickups Only / No Recipes Mode display
	if EID.Config["BagOfCraftingDisplayMode"] == "Pickups Only" then
		EID:appendToDescription(customDescObj, getHotkeyString())
		EID:appendToDescription(customDescObj, getFloorItemsString(false, roomItems))
		EID:printDescription(customDescObj)
		return true
	elseif EID.Config["BagOfCraftingDisplayMode"] == "No Recipes" then
		if not EID.RefreshBagTextbox and prevDesc ~= "" and not EID.OptionChanged then
			EID:appendToDescription(customDescObj, prevDesc)
			EID:printDescription(customDescObj)
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
		local bagQuality, bagResult = EID:simulateBagOfCrafting(EID.BagItems)
		local bestQuality, bestResult = EID:simulateBagOfCrafting(mostValuableBag)
		local bagQualityDesc = EID:getDescriptionEntry("CraftingBagQuality")
		local bestQualityDesc = EID:getDescriptionEntry("CraftingBestQuality")
		
		if (#EID.BagItems > 0) then prevDesc = prevDesc .. bagQualityDesc .. " " .. bagQuality .. "#" .. bagResult .. "#" end
		if (bestQuality > bagQuality) then prevDesc = prevDesc .. bestQualityDesc .. " " .. bestQuality .. "#{{Blank}} " .. tableToCraftingIconsFunc(self,mostValuableBag, true) .. "#" .. bestResult .. "#" end
		
		EID:appendToDescription(customDescObj, prevDesc)
		EID:printDescription(customDescObj)
		return true
	end
	
	-- Recipe List display
	if sortNeeded then
		sortAllItems()
		sortNeeded = false
	end
	
	if lockedResults ~= nil then
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
	
	local prevOffset = bagOfCraftingOffset
	if Input.IsActionPressed(EID.Config["BagOfCraftingToggleKey"], EID.player.ControllerIndex) then
		EID.player.ControlsCooldown = 2
		if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, EID.player.ControllerIndex) then
			bagOfCraftingOffset = math.min(numResults-(numResults%EID.Config["BagOfCraftingResults"]), bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			downHeld = Isaac.GetTime()
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, EID.player.ControllerIndex) then
			bagOfCraftingOffset = math.max(0, bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			upHeld = Isaac.GetTime()
		--lock the current results so you can actually do a recipe that you've scrolled down to without losing it
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTLEFT, EID.player.ControllerIndex) then
			EID.RefreshBagTextbox = true
			if (lockedResults == nil) then lockedResults = queryString
			else lockedResults = nil end
		--refresh the recipes
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTRIGHT, EID.player.ControllerIndex) then
			if (lockedResults == nil) then
				refreshNextTick = true
			end
		end
		--scroll pages quickly if the button is held
		if Input.IsActionPressed(ButtonAction.ACTION_SHOOTDOWN, EID.player.ControllerIndex) and Isaac.GetTime() - downHeld > 750 then
			bagOfCraftingOffset = math.min(numResults-(numResults%EID.Config["BagOfCraftingResults"]), bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
			downHeld = Isaac.GetTime() - 700
		elseif Input.IsActionPressed(ButtonAction.ACTION_SHOOTUP, EID.player.ControllerIndex) and Isaac.GetTime() - upHeld > 750 then
			bagOfCraftingOffset = math.max(0, bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
			upHeld = Isaac.GetTime() - 700
		end
		--reset bag contents when holding Use Pill/Card
		if Input.IsActionPressed(ButtonAction.ACTION_PILLCARD, EID.player.ControllerIndex) then
			resetBagCounter = resetBagCounter + 1
			if resetBagCounter > 120 then
				EID.BagItems = {}
				recheckPickups = true
				resetBagCounter = 0
			end
		else
			resetBagCounter = 0
		end
	end
	--fix bug with being allowed to go to an empty page if recipe count = multiple of page size (or if we refresh on last page)
	if (bagOfCraftingOffset >= numResults) then bagOfCraftingOffset = bagOfCraftingOffset - EID.Config["BagOfCraftingResults"] end
	
	if not EID.RefreshBagTextbox and prevDesc ~= "" and bagOfCraftingOffset == prevOffset and not EID.OptionChanged then
		EID:appendToDescription(customDescObj, prevDesc)
		EID:printDescription(customDescObj)
		return true
	end
	
	prevDesc = ""
	EID.RefreshBagTextbox = false
	
	prevDesc = prevDesc .. getHotkeyString()
	prevDesc = prevDesc .. getFloorItemsString(true, roomItems)
	local resultDesc = EID:getDescriptionEntry("CraftingResults")
	prevDesc = prevDesc .. resultDesc
	
	local prevItem = 0
	
	local qualities = { [0] = "{{ColorSilver}}", "{{ColorLime}}", "{{ColorPastelBlue}}", "{{ColorLavender}}", "{{ColorLightOrange}}" }
	local prefix = "#{{Blank}} "
	if (lockedResults) then
		prefix = "#{{Trinket159}} "
	end
	
	--currentRecipesList is now a table of tables for each item, so we have to iterate over the table using sortedIDs
	if (bagOfCraftingOffset > 0) then
		prevDesc = prevDesc .. prefix .. "...+"..bagOfCraftingOffset.." more"
	end
	local curOffset = 0
	refreshPosition = -1
	for _,id in ipairs(sortedIDs) do
		if (curOffset + #currentRecipesList[id] <= bagOfCraftingOffset) then curOffset = curOffset + #currentRecipesList[id]
		else
			if (refreshPosition == -1) then refreshPosition = id end
			for _, v in ipairs(currentRecipesList[id]) do
				curOffset = curOffset + 1
				if (curOffset > bagOfCraftingOffset+EID.Config["BagOfCraftingResults"]) then break end
				if not v then break end
				if (curOffset > bagOfCraftingOffset) then
					if not EID.Config["BagOfCraftingDisplayNames"] then
						prevDesc = prevDesc .."#{{Collectible"..v[2].."}} "
						--tack on the secondary recipe image to achievement-locked recipes
						if v[3] then prevDesc = prevDesc .."({{Collectible" .. v[3] .. "}})" end
						--color the equals sign with the item quality, so the order of the list can make sense
						prevDesc = prevDesc .. qualities[CraftingItemQualities[v[2]]] .. "={{CR}}"
					--only display the item name if it's the first occurrence
					else
						if prevItem ~= v[2] then
							--substring the first 18 characters of the item name so it fits on one line; is there a way to get around desc line length limits?
							prevDesc = prevDesc .."#{{Collectible"..v[2].."}} ".. qualities[CraftingItemQualities[v[2]]] ..
							string.sub(EID:getObjectName(5, 100, v[2]),1,18).."#"
						else
							prevDesc = prevDesc .."#"
						end
						--replace recipe bulletpoint with the secondary recipe on achievement-locked recipes
						if v[3] then prevDesc = prevDesc .."{{Collectible" .. v[3] .. "}} " end
					end
					
					prevDesc = prevDesc .. tableToCraftingIconsFunc(self, v[1], true)
					prevItem = v[2]
				end
			end
		end
	end
	if (bagOfCraftingOffset + EID.Config["BagOfCraftingResults"] < numResults) then
		prevDesc = prevDesc .. prefix .. "...+"..(numResults-EID.Config["BagOfCraftingResults"]-bagOfCraftingOffset).." more"
	end

	EID:appendToDescription(customDescObj, prevDesc)
	EID:printDescription(customDescObj)
	return true
end
