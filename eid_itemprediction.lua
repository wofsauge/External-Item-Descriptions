-- This file is for various functions that are able to calculate the result effect that an item will have
local game = Game()

local variantToName = { [70] = "Pill", [100] = "Collectible", [300] = "Card", [350] = "Trinket" }
-- reimplementation of RNG:Next()
-- Default RNG shift values for many things are 5, 9, 7
function EID:RNGNext(rngNum, shift1, shift2, shift3)
	rngNum = rngNum ~ ((rngNum >> (shift1 or 5)) & 4294967295)
	rngNum = rngNum ~ ((rngNum << (shift2 or 9)) & 4294967295)
	rngNum = rngNum ~ ((rngNum >> (shift3 or 7)) & 4294967295)
	return rngNum >> 0;
end

-- Convert a seed int into a float between 0 and 1
function EID:SeedToFloat(seed)
	local multi = 2.3283061589829401E-10;
	return seed * multi;
end

-- D Infinity --
local dinfinityList = { [0] = 105, 166, 284, 283, 285, 406, 386 }
-- Repentance's D Infinity order: D1, D4, D6, Eternal D6, D7, D8, D10, D12, D20, D100
if REPENTANCE then dinfinityList = { [0] = 476, 284, 105, 609, 437, 406, 285, 386, 166, 283 } end
-- Returns the item ID of D Infinity's current die
-- For Repentance, the Drop button is tracked, which is probably not 100% successful, and handled elsewhere
function EID:CurrentDInfinity(rng, player)
	if not REPENTANCE then
		rng = EID:RNGNext(rng, 0x1, 0x9, 0x1D) -- magic disassembled numbers!
        return dinfinityList[rng % 7]
	else
        local playerID = EID:getPlayerID(player)
        return dinfinityList[EID.DInfinityState[playerID]] or 476
	end
end
local justDidD = false
if REPENTANCE then
    -- To help with Rep tracking, watch for D Infinity to get used and resync its current dice
	function EID:WatchForDInfinity()
		justDidD = true
	end
	EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.WatchForDInfinity, CollectibleType.COLLECTIBLE_D_INFINITY)
    function EID:WatchForDice(collectibleType, rng, player)
        if not justDidD or collectibleType == 489 then return end
        justDidD = false
        local playerID = EID:getPlayerID(player)
        for i,v in ipairs(dinfinityList) do
            if v == collectibleType then EID.DInfinityState[playerID] = i end
        end
    end
    EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.WatchForDice)
end

-- Metronome --
-- Banned items: Metronome, Plan C, Glowing Hour Glass, Breath of Life, Clicker, R Key
-- Reduced chance: Death Certificate (15%), Genesis (25%)
-- I saw something in the code about rerolling Forget Me Now but not sure what the criteria was
local metronomeBlacklist = {[488] = 1, [475] = 1, [422] = 1} --AB+ can choose Clicker lol rip
if REPENTANCE then metronomeBlacklist = {[488] = 1, [475] = 1, [422] = 1, [326] = 1, [482] = 1, [636] = 1, [628] = 0.85, [622] = 0.75 } end
-- TODO: Account for Car Battery
-- (If we have it, display multiple results? Also, if the result is Car Battery, it's immediately triggered again)
function EID:MetronomePrediction(rng)
	local numCollectibles = EID:GetMaxCollectibleID()
	local rerollChance = 0
	if REPENTANCE then --Rep advances the RNG an extra time to use for its Death Cert/Genesis reroll
		rng = EID:RNGNext(rng)
		rerollChance = rng
	end
	local attempts = 15
	while attempts > 0 do
		attempts = attempts - 1
		rng = EID:RNGNext(rng)
		local sel = rng % numCollectibles + 1
		if EID.itemConfig:GetCollectible(sel) ~= nil then
			if metronomeBlacklist[sel] then
				-- A few items have a reroll chance in Repentance
				if metronomeBlacklist[sel] < 1 then
					rerollChance = EID:RNGNext(rerollChance, 0x02, 0x0F, 0x11)
					local rerollFloat = EID:SeedToFloat(rerollChance)
					if rerollFloat < 1 - metronomeBlacklist[sel] then
						-- We succeeded the reroll chance
						return sel
					end
				end
			else
				return sel
			end
		end
	end
	-- as the code puts it, [warn] No Collectible found for Metronome!
	return 488
end

-- Sanguine Bond --
--order of checking: 15% Pennies, 48% Damage, 58% Hearts, 63% Item, 65% Leviathan, 100% Nothing
local sanguineResults = { { 0.15, 3 }, { 0.48, 2 }, { 0.58, 4 }, { 0.63, 5 }, { 0.65, 6 }, { 1, 1 } }
-- This function both trims the desc to just a list of chances, and highlights the next result if allowed, since those two actions are very intertwined
function EID:trimSanguineDesc(descObj)
	local currentRoom = game:GetLevel():GetCurrentRoom()
	local spikes = currentRoom:GetGridEntity(67)
	if not spikes then return "" end -- don't display anything if we can't find the spikes!
	local cheatResult = nil
	if spikes and EID.Config["PredictionSanguineBond"] then
		local spikeSeed = currentRoom:GetGridEntity(67):GetRNG():GetSeed()
		spikeSeed = EID:RNGNext(spikeSeed, 5, 9, 7)
		spikeSeed = EID:RNGNext(spikeSeed, 0x01, 0x05, 0x13) -- magic disassembled numbers!
		local nextFloat = EID:SeedToFloat(spikeSeed)
		
		for _,v in ipairs(sanguineResults) do
			if nextFloat < v[1] then cheatResult = v[2] break end
		end
	end

	local resultsDesc = ""

	local lineCount = 0
	-- separate sanguine's description by # or semicolons
	for w in string.gmatch(descObj.Description, "([^#;]+)") do
		-- we only care about groups that contain a percent sign
		if string.find(w,"%%") then
			lineCount = lineCount + 1
			if cheatResult == lineCount then resultsDesc = resultsDesc .. "{{ColorBagComplete}}" end
			resultsDesc = resultsDesc .. w .. "#"
		end
	end
	return resultsDesc
end

-- Teleport! Destination Prediction --
-- Returns text like "{{RoomIcon}} Room Type Name#Up 3, Left 2"
function EID:Teleport1Prediction(rng)
	local level = game:GetLevel()
	local currentRoomIndex = level:GetCurrentRoomDesc().SafeGridIndex
	local possibleRooms = {}
    -- Search the 13x13 grid for valid teleport locations
    -- Currently, that's any room on the grid besides the one we're in, and Red Rooms or Ultra Secret Rooms
	for i = 0, 168 do
		local room = level:GetRoomByIdx(i)
		if room.GridIndex >= 0 and room.SafeGridIndex ~= currentRoomIndex and room.Data.Type ~= 29 and (not REPENTANCE or room.Flags & 1024 ~= 1024) then
			table.insert(possibleRooms, i)
		end
	end
	rng = EID:RNGNext(rng, 5, 9, 7)
	rng = EID:RNGNext(rng, 0x02, 0x0F, 0x19) -- magic disassembled numbers!
	
	local resultRoomIndex = possibleRooms[(rng % #possibleRooms) + 1]
	local resultRoom = level:GetRoomByIdx(resultRoomIndex)
	local resultSafeIndex = resultRoom.SafeGridIndex
	
	local roomIcon = EID.RoomTypeToMarkup[resultRoom.Data.Type]
	if resultRoom.Data.Type == 1 then roomIcon = EID.RoomShapeToMarkup[resultRoom.Data.Shape] end
	local roomNames = EID:getDescriptionEntry("RoomTypeNames")
	local roomName = roomNames[resultRoom.Data.Type]
	-- Find our X/Y difference from the target location, if we're on the map
	local d = ""
	if currentRoomIndex >= 0 then
		local myPos = Vector(currentRoomIndex % 13, math.floor(currentRoomIndex / 13))
		local newPos = Vector(resultSafeIndex % 13, math.floor(resultSafeIndex / 13))
		local diffX = math.floor(newPos.X - myPos.X)
		local diffY = math.floor(newPos.Y - myPos.Y)

		if diffY > 0 then d = d .. "{{ArrowGrayDown}} " .. diffY
		elseif diffY < 0 then d = d .. "{{ArrowGrayUp}} " .. math.abs(diffY) end
		if d ~= "" and diffX ~= 0 then d = d .. "," end
		if diffX > 0 then d = d .. "{{ArrowGrayRight}} " .. diffX
		elseif diffX < 0 then d = d .. "{{ArrowGrayLeft}} " .. math.abs(diffX) end
	end
	if d ~= "" then d = "#{{Blank}} " .. d end

	return roomIcon .. " " .. roomName .. d
end

-- Teleport 2 Destination Prediction --
local teleport2Order = { 1,5,8,2,4,13,21,12,10,6,11,18,19,9,20,24,7,1025,666,3 }
local teleport2GreedOrder = { 1,5,2,4,10,23,8,666,3 }
local teleport2Icons = { [1025] = "{{RedRoom}}", [666] = "{{AngelDevilChance}}" }

function EID:Teleport2Prediction()
	local level = game:GetLevel()
	local rooms = level:GetRooms()
	--I AM ERROR Room always considered uncleared
	local unclearedTypes = {[3] = true}
	for i = 0, rooms.Size - 1 do
		local room = rooms:Get(i)
		
		if not room.Clear then
			-- Check for Special Red Rooms, which get ordered differently than their non-red version
			if REPENTANCE and room.Data.Type ~= 1 and room.Flags & 1024 == 1024 then unclearedTypes[1025] = true
			else unclearedTypes[room.Data.Type] = true end
		end
	end
	--Angel/Devil Room check (it lives off the map)
	if not level:GetRoomByIdx(-1).Clear then unclearedTypes[666] = true end
	
	local greed = game:IsGreedMode()
	local roomOrder = (greed and teleport2GreedOrder) or teleport2Order
	local roomNames = EID:getDescriptionEntry("RoomTypeNames")
	
    -- Return a string for the first uncleared room type that we find
	for i,v in ipairs(roomOrder) do
		if unclearedTypes[v] then
			local descString = (teleport2Icons[v] or EID.RoomTypeToMarkup[v]) .. " " .. roomNames[v]
			-- Tall Vertical Main Greed Room exception, because why not, attention to detail
			if v == 1 and greed then descString = "{{RoomLongVertical}} " .. roomNames[v] end
			return descString
		end
	end
end

-- Void Stat Increases --
local numVoidable = 0
local numRunable = 0
local function GetTwoIncreases(rng, tbl)
	local statTable = {1,2,3,4,5,6}
	-- perform 5 random swaps of our stat table
	for i = 6, 2, -1 do
		rng = EID:RNGNext(rng, 5, 9, 7)
		local result = (rng % i) + 1
		local temp = statTable[i]
		statTable[i] = statTable[result]
		statTable[result] = temp
	end
	-- the first two entries in the stat table get increased
	tbl[statTable[1]] = tbl[statTable[1]] + 1
	tbl[statTable[2]] = tbl[statTable[2]] + 1
	return rng
end
-- Count the number of absorbable pedestals in the room
-- Returns a table of active items that will be absorbed
function EID:VoidRoomCheck()
	numVoidable = 0
	numRunable = 0
	EID.VoidOptionIndexes = {}
	local activesAbsorbed = {}
	for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
		local pickup = entity:ToPickup()
		-- Count this pedestal if it's not an active (or this is Black Rune), not a shop item, and (in Repentance) the first of its option index
		-- TEST IF VOID ALWAYS ABSORBS THE FIRST OF ITS OPTION INDEX
		if entity.SubType > 0 and not pickup:IsShopItem() and
		(not REPENTANCE or pickup.OptionsPickupIndex == 0 or EID.VoidOptionIndexes[pickup.OptionsPickupIndex] == nil) then
			numRunable = numRunable + 1
			if REPENTANCE then EID.VoidOptionIndexes[pickup.OptionsPickupIndex] = entity.SubType end
			if (EID.itemConfig:GetCollectible(entity.SubType).Type ~= ItemType.ITEM_ACTIVE) then
				numVoidable = numVoidable + 1
			else
				table.insert(activesAbsorbed, entity.SubType)
			end
		end
	end
	return activesAbsorbed
end
-- Determine what stats will be increased after 1 absorption, the whole room's absorption, and whole room + a purchased item above your head
function EID:VoidRNGCheck(player, isRune)
	local increases = {0, 0, 0, 0, 0, 0}
	
	local startRNG = (isRune and player:GetCardRNG(Card.RUNE_BLACK):GetSeed()) or player:GetCollectibleRNG(CollectibleType.COLLECTIBLE_VOID):GetSeed()
	local count = (isRune and numRunable) or numVoidable
	local eidTable = (isRune and EID.BlackRuneStatIncreases) or EID.VoidStatIncreases
	
	-- in Repentance, an additional RNG call is done before the 5 for stat ups when using Void
	if REPENTANCE and not isRune then startRNG = EID:RNGNext(startRNG, 5, 9, 7) end
	for i = 1, count do
		startRNG = GetTwoIncreases(startRNG, increases)
		if i == 1 then eidTable[3] = {table.unpack(increases)} end
	end
	eidTable[1] = {table.unpack(increases)}
	-- do an extra check for what you'd get if you Void with a shop item above your head
	GetTwoIncreases(startRNG, increases)
	eidTable[2] = {table.unpack(increases)}
	-- if there were no absorbable pedestals, the "single increase" stats are the same as the "one extra" stats
	if count == 0 then eidTable[3] = {table.unpack(increases)} end
end

-- D1 --

local D1blacklist = { [41] = true, [100] = true, [110] = true, [150] = true, [340] = true, [370] = true, [380] = true, [390] = true }
if not REPENTANCE then D1blacklist[54] = true end -- Mimic Chest blacklist in AB+
-- These Variants all duplicate into a Chest in Repentance (and should have their SubType ignored in AB+)
local D1chests = { [50] = true, [51] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [60] = true, [360] = true }

-- These Card variants duplicate as themselves in Repentance
local specialCards = {[49] = true, [50] = true, [78] = true}

function EID:D1Prediction(rng)
	local poss = {}
	for i,v in ipairs(Isaac.FindByType(5,-1,-1)) do
		-- Check the blacklist, as well as Rune of Jera in AB+, and empty chests in Rep
		if not D1blacklist[v.Variant] and (REPENTANCE or v.Variant ~= 300 or v.SubType ~= 33) and (not REPENTANCE or v:ToPickup():CanReroll()) then
			table.insert(poss, v)
		end
	end
	if #poss == 0 then return EID:getDescriptionEntry("PickupNames")["5.0"] end
	rng = EID:RNGNext(rng)
	local sel = (rng % #poss) + 1
	local fullID = "5." .. poss[sel].Variant .. "." .. poss[sel].SubType
	if REPENTANCE then
		-- in rep, we don't care about subtype...
		fullID = "5." .. poss[sel].Variant
		if poss[sel].Variant == 300 then
			if specialCards[poss[sel].SubType] then
				local objName = EID:getObjectName(5, poss[sel].Variant, poss[sel].SubType, poss[sel])
				return "{{" .. variantToName[poss[sel].Variant] .. poss[sel].SubType .. "}} " .. objName
			elseif EID.runeIDs[poss[sel].SubType] then
				fullID = "5.301"
			end
		end
		-- all Chest variants turn into a random Chest
		if D1chests[poss[sel].Variant] then fullID = "5.50" end
	else
		if D1chests[poss[sel].Variant] then fullID = "5." .. poss[sel].Variant
		-- display the item name for pills, cards, and trinkets in AB+
		elseif poss[sel].Variant == 70 or poss[sel].Variant == 300 or poss[sel].Variant == 350 then
			local objName = EID:getObjectName(5, poss[sel].Variant, poss[sel].SubType, poss[sel])
			-- don't display the name of unidentified pills!
			if poss[sel].Variant == 70 and not EID.Config["ShowUnidentifiedPillDescriptions"] and not game:GetItemPool():IsPillIdentified(poss[sel].SubType) then
				objName = EID:getDescriptionEntry("unidentifiedPill")
			end
			return "{{" .. variantToName[poss[sel].Variant] .. poss[sel].SubType .. "}} " .. objName
		end
	end
	
	local pickupNames = EID:getDescriptionEntry("PickupNames") or {}
	return pickupNames[fullID] or EID.XMLEntityNames[fullID] or fullID
end
