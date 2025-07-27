-- This file is for various functions that are able to calculate the result effect that an item will have
local game = Game()
local variantToName = { [70] = "Pill", [100] = "Collectible", [300] = "Card", [350] = "Trinket" }

-- XOR table used for RNG: https://www.jstatsoft.org/article/view/v008i14/xorshift.pdf
local xortable = {
[0]={ 1, 3,10},{ 1, 5,16},{ 1, 5,19},{ 1, 9,29},{ 1,11, 6},{ 1,11,16},{ 1,19, 3},{ 1,21,20},{ 1,27,27},
	{ 2, 5,15},{ 2, 5,21},{ 2, 7, 7},{ 2, 7, 9},{ 2, 7,25},{ 2, 9,15},{ 2,15,17},{ 2,15,25},{ 2,21, 9},
	{ 3, 1,14},{ 3, 3,26},{ 3, 3,28},{ 3, 3,29},{ 3, 5,20},{ 3, 5,22},{ 3, 5,25},{ 3, 7,29},{ 3,13, 7},
	{ 3,23,25},{ 3,25,24},{ 3,27,11},{ 4, 3,17},{ 4, 3,27},{ 4, 5,15},{ 5, 3,21},{ 5, 7,22},{ 5, 9,7 },
	{ 5, 9,28},{ 5, 9,31},{ 5,13, 6},{ 5,15,17},{ 5,17,13},{ 5,21,12},{ 5,27, 8},{ 5,27,21},{ 5,27,25},
	{ 5,27,28},{ 6, 1,11},{ 6, 3,17},{ 6,17, 9},{ 6,21, 7},{ 6,21,13},{ 7, 1, 9},{ 7, 1,18},{ 7, 1,25},
	{ 7,13,25},{ 7,17,21},{ 7,25,12},{ 7,25,20},{ 8, 7,23},{ 8,9,23 },{ 9, 5,1 },{ 9, 5,25},{ 9,11,19},
	{ 9,21,16},{10, 9,21},{10, 9,25},{11, 7,12},{11, 7,16},{11,17,13},{11,21,13},{12, 9,23},{13, 3,17},
	{13, 3,27},{13, 5,19},{13,17,15},{14, 1,15},{14,13,15},{15, 1,29},{17,15,20},{17,15,23},{17,15,26}
}

-- reimplementation of RNG:Next()
-- Default RNG shift values for many things are 5, 9, 7 (xor table #35)
function EID:RNGNext(rngNum, shift1, shift2, shift3)
	if shift1 and not shift2 then
		shift3 = xortable[shift1][3]
		shift2 = xortable[shift1][2]
		shift1 = xortable[shift1][1]
	end
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
if EID.isRepentance then dinfinityList = { [0] = 476, 284, 105, 609, 437, 406, 285, 386, 166, 283 } end
-- Returns the item ID of D Infinity's current die
-- For Repentance, the Drop button is tracked, which is probably not 100% successful, and handled elsewhere
function EID:CurrentDInfinity(rng, player)
	if not EID.isRepentance then
		rng = EID:RNGNext(rng, 0x1, 0x9, 0x1D) -- magic disassembled numbers!
        return dinfinityList[rng % 7]
	else
        local playerID = EID:getPlayerID(player, true)
        return dinfinityList[EID.DInfinityState[playerID]] or 476
	end
end
local justDidD = false
if EID.isRepentance then
    -- To help with Rep tracking, watch for D Infinity to get used and resync its current dice
	function EID:WatchForDInfinity()
		justDidD = true
	end
	EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.WatchForDInfinity, CollectibleType.COLLECTIBLE_D_INFINITY)
    function EID:WatchForDice(collectibleType, _, player)
        if not justDidD or collectibleType == 489 then return end
        justDidD = false
        local playerID = EID:getPlayerID(player, true)
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
if EID.isRepentance then metronomeBlacklist = {[488] = 1, [475] = 1, [422] = 1, [326] = 1, [482] = 1, [636] = 1, [628] = 0.85, [622] = 0.75 } end
-- TODO: Account for Car Battery
-- (If we have it, display multiple results? Also, if the result is Car Battery, it's immediately triggered again)
function EID:MetronomePrediction(rng)
	local numCollectibles = EID:GetMaxCollectibleID()
	local rerollChance = 0
	if EID.isRepentance then --Rep advances the RNG an extra time to use for its Death Cert/Genesis reroll
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
function EID:trimSanguineDesc(spikes, descObj)
	if not spikes then return "" end -- don't display anything if we can't find the spikes!
	local cheatResult = nil
	if spikes and EID.Config["PredictionSanguineBond"] then
		local spikeSeed = spikes:GetRNG():GetSeed()
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
		if room.GridIndex >= 0 and room.SafeGridIndex ~= currentRoomIndex and room.Data.Type ~= 29 and (not EID.isRepentance or room.Flags & 1024 ~= 1024) then
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
local teleport2Order = { 1,1024,5,8,2,4,13,21,12,10,6,11,18,19,9,20,24,7,1025,666,3 }
local teleport2GreedOrder = { 1,5,2,4,10,23,8,666,3 }
local teleport2Icons = { [1024] = "{{RedRoom}}", [1025] = "{{RedRoom}}", [666] = "{{AngelDevilChance}}" }

function EID:Teleport2Prediction()
	local level = game:GetLevel()
	local rooms = level:GetRooms()
	local curDimension = EID:GetDimension(level)
	--I AM ERROR Room always considered uncleared
	local unclearedTypes = {[3] = true}
	for i = 0, rooms.Size - 1 do
		local room = rooms:Get(i)

		local gridIndex = room.SafeGridIndex
		local roomDesc = level:GetRoomByIdx(gridIndex, curDimension)
		if roomDesc.ListIndex == i and not room.Clear then
			-- Check for Red Rooms and Special Red Rooms, which get ordered differently than their non-red version
			if EID.isRepentance and room.Flags & 1024 == 1024 then
				if room.Data.Type ~= 1 then unclearedTypes[1025] = true
				else unclearedTypes[1024] = true end
			else unclearedTypes[room.Data.Type] = true end
		end
	end
	--Angel/Devil Room check (it lives off the map)
	if not level:GetRoomByIdx(-1).Clear then unclearedTypes[666] = true end
	-- If in Pre-Ascent version (Dad's note) of Mausuleum/Gehenna, we dont teleport to I AM ERROR but Angel/Devil
	if EID.isRepentance and level:IsPreAscent() then unclearedTypes[666] = true; unclearedTypes[3] = false end

	local greed = game:IsGreedMode()
	local roomOrder = (greed and teleport2GreedOrder) or teleport2Order
	local roomNames = EID:getDescriptionEntry("RoomTypeNames")

    -- Return a string for the first uncleared room type that we find
	for _,v in ipairs(roomOrder) do
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
		if pickup and entity.SubType > 0 and not pickup:IsShopItem() and
		(not EID.isRepentance or pickup.OptionsPickupIndex == 0 or EID.VoidOptionIndexes[pickup.OptionsPickupIndex] == nil) then
			numRunable = numRunable + 1
			if EID.isRepentance then EID.VoidOptionIndexes[pickup.OptionsPickupIndex] = entity.SubType end
			-- Moving Box (523) is counted as a passive item
			if (EID.itemConfig:GetCollectible(entity.SubType).Type ~= ItemType.ITEM_ACTIVE or entity.SubType == 523) then
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
	if EID.isRepentance and not isRune then startRNG = EID:RNGNext(startRNG, 5, 9, 7) end
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
if not EID.isRepentance then D1blacklist[54] = true end -- Mimic Chest blacklist in AB+
-- These Variants all duplicate into a Chest in Repentance (and should have their SubType ignored in AB+)
local D1chests = { [50] = true, [51] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [60] = true, [360] = true }

-- These Card variants duplicate as themselves in Repentance
local specialCards = {[49] = true, [50] = true, [78] = true}

function EID:D1Prediction(rng)
	local poss = {}
	for _,v in ipairs(Isaac.FindByType(5,-1,-1)) do
		-- Check the blacklist, as well as Rune of Jera in AB+, and empty chests in Rep
		if not D1blacklist[v.Variant] and (EID.isRepentance or v.Variant ~= 300 or v.SubType ~= 33) and (not EID.isRepentance or v:ToPickup():CanReroll()) then
			table.insert(poss, v)
		end
	end
	if #poss == 0 then return EID:getDescriptionEntry("PickupNames")["5.0"] end
	rng = EID:RNGNext(rng)
	local sel = (rng % #poss) + 1
	local fullID = "5." .. poss[sel].Variant .. "." .. poss[sel].SubType
	if EID.isRepentance then
		-- in rep, we don't care about subtype...
		fullID = "5." .. poss[sel].Variant
		if poss[sel].Variant == 300 then
			if specialCards[poss[sel].SubType] then
				local objName = EID:getObjectName(5, poss[sel].Variant, poss[sel].SubType)
				return "{{" .. variantToName[poss[sel].Variant] .. poss[sel].SubType .. "}} " .. objName
			elseif EID.itemConfig:GetCard(poss[sel].SubType):IsRune() then
				fullID = "5.301"
			end
		end
		-- all Chest variants turn into a random Chest
		if D1chests[poss[sel].Variant] then fullID = "5.50" end
	else
		if D1chests[poss[sel].Variant] then fullID = "5." .. poss[sel].Variant
		-- display the item name for pills, cards, and trinkets in AB+
		elseif poss[sel].Variant == 70 or poss[sel].Variant == 300 or poss[sel].Variant == 350 then
			local objName = EID:getObjectName(5, poss[sel].Variant, poss[sel].SubType)
			-- don't display the name of unidentified pills!
			if poss[sel].Variant == 70 and not EID.Config["ShowUnidentifiedPillDescriptions"] and not game:GetItemPool():IsPillIdentified(poss[sel].SubType) then
				objName = EID:getDescriptionEntry("unidentifiedPill")
			end
			return "{{" .. variantToName[poss[sel].Variant] .. poss[sel].SubType .. "}} " .. objName
		end
	end

	local pickupNames = EID:getDescriptionEntry("PickupNames") or {}
	return pickupNames[fullID] or EID:GetEntityXMLNameByString(fullID) or fullID
end


-- Glyph of Balance --
function EID:GlyphOfBalancePrediction(player)
	local fullID = "5.0"
	
	local playerID = player:GetPlayerType()
	local skipHearts = EID.isRepentance and EID.NoRedHeartsPlayerIDs[playerID] -- Soul Heart characters can't get hearts in Repentance
	local skipSoulHearts = EID.isRepentance and (playerID == 18 or playerID == 14 or playerID == 33) -- Bethany and Keepers can't get Soul Hearts with 6 or less containers in Repentance
	local skipBombs = EID.isRepentance and playerID == 25 -- Tainted ??? (the only character that can't have Bombs)
	
	-- Soul Hearts: When Isaac has no Red Heart containers and less than 2 Soul Hearts.
	if not skipHearts and player:GetEffectiveMaxHearts() == 0 and player:GetSoulHearts() < 4 then
		fullID = "5.10.3"
	-- Full Red Hearts: While at 0.5 Red Hearts.
	-- In AB+, you seem to have to have at least one non-Bone container to trigger this condition
	elseif not skipHearts and player:CanPickRedHearts() and player:GetHearts() <= 1 and (EID.isRepentance or player:GetMaxHearts() > 0) then
		fullID = "5.10.1"
	-- Keys: When Isaac has no keys.
	elseif player:GetNumKeys() == 0 then
		fullID = "5.30.1"
	-- Bombs: When Isaac has no bombs.
	elseif not skipBombs and player:GetNumBombs() == 0 then
		fullID = "5.40.1"
	-- Big Poop Nugget: When Tainted ??? has no poops
	elseif skipBombs and player:GetPoopMana() == 0 then
		fullID = "5.42.1"
	-- Soul Hearts: When Bethany has no soul charges
	elseif EID.isRepentance and playerID == 18 and player:GetSoulCharge() == 0 then
		fullID = "5.10.3"
	-- Red Hearts: When Tainted Bethany has no blood charges
	elseif EID.isRepentance and playerID == 36 and player:GetBloodCharge() == 0 then
		fullID = "5.10.1"
	-- Full Red Hearts: When Isaac has at least half a Red Heart container empty.
	elseif not skipHearts and player:CanPickRedHearts() then
		fullID = "5.10.1"
	-- Pennies: While Isaac has less than 15 pennies.
	elseif player:GetNumCoins() < 15 then
		fullID = "5.20.1"
	-- Keys: When Isaac has less than 5 keys.
	elseif player:GetNumKeys() < 5 then
		fullID = "5.30.1"
	-- Bombs: When Isaac has less than 5 bombs.
	elseif not skipBombs and player:GetNumBombs() < 5 then
		fullID = "5.40.1"
	-- Trinkets: If Isaac has no trinkets and there are no trinkets on the ground in the room.
	elseif player:GetTrinket(0) == 0 and #Isaac.FindByType(5, 350) == 0 then
		fullID = "5.350"
	-- Big Poop Nugget: When Tainted ??? has less than 5 poops
	elseif skipBombs and player:GetPoopMana() < 5 then
		fullID = "5.42.1"
	-- Soul Hearts: When Bethany has less than 12 soul charges
	elseif EID.isRepentance and playerID == 18 and player:GetSoulCharge() < 12 then
		fullID = "5.10.3"
	-- Red Hearts: When Tainted Bethany has less than 12 blood charges
	elseif EID.isRepentance and playerID == 36 and player:GetBloodCharge() < 12 then
		fullID = "5.10.1"
	-- Soul Hearts: When Isaac has less than 6 total Heart containers of any kind.
	elseif not skipHearts and not skipSoulHearts and player:GetHearts() + player:GetSoulHearts() < 12 then
		fullID = "5.10.3"
	end
	
	--todo: in REPENTOGON, replace this whole function (in the eid_repentogon lua style)
	local pickupNames = EID:getDescriptionEntry("PickupNames") or {}
	return pickupNames[fullID] or EID:GetEntityXMLNameByString(fullID) or fullID
end

--- Crooked Penny ---
function EID:CrookedPennyPrediction(rng, carBattery)
	local rng = EID:RNGNext(rng)
	local seed = rng
	-- Repentance makes a new seed by XORing the room's decoration seed
	if EID.isRepentance then
		local roomSeed = game:GetLevel():GetCurrentRoom():GetDecorationSeed()
		seed = seed ~ roomSeed
		if seed == 0 then seed = 1 end
		seed = EID:RNGNext(seed, 4) -- xorshift #4
	end
	
	local result = ""
	if seed % 2 == 0 then
		result = EID:getDescriptionEntry("CrookedPennyHeads")
	else
		result = EID:getDescriptionEntry("CrookedPennyTails")
		-- failures advance crooked penny's RNG an additional time to give the pity penny a seed value
		rng = EID:RNGNext(rng)
	end
	
	if carBattery then return result .. "#{{Collectible356}} " .. EID:CrookedPennyPrediction(rng)
	else return result end
end

-- Liberty Cap, Broken Syringe, Mom's Lock (extremely similar, simple RNG modulos) --
local libertyItems = {[0] = 21, 71, 120, 121}
if EID.isRepentance then libertyItems = {[0] = 12, 71, 120, 121, 342, 398} end
local syringeItems = {[0] = 13, 14, 240, 70, 143, 345, 493, 496}
local momItems = {[0] = 29, 30, 31, 55, 110, 114, 199, 200, 217, 228, 355, 508, 732}

function EID:TemporaryEffectPrediction(player, rng, itemTable)
	local tempItem = itemTable[rng % (1 + #itemTable)] -- # operator doesnt account for values assigned to keys (e.g. "[0]=" entries)
	if player:GetEffects():HasCollectibleEffect(tempItem) then return tempItem else return false end
end

function EID:LibertyCapPrediction(player) return EID:TemporaryEffectPrediction(player, player:GetTrinketRNG(32):GetSeed(), libertyItems) end
function EID:BrokenSyringePrediction(player) return EID:TemporaryEffectPrediction(player, player:GetTrinketRNG(132):GetSeed(), syringeItems) end
function EID:MomsLockPrediction(player) return EID:TemporaryEffectPrediction(player, player:GetTrinketRNG(153):GetSeed(), momItems) end
-- dont forget to actually add these to hold map desc; remember these are Hidden Information
