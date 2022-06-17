-- This file is for various functions that are able to calculate the result effect that an item will have
local game = Game()

-- D Infinity --
local dinfinityList = { [0] = 105, 166, 284, 283, 285, 406, 386 }
-- Repentance's D Infinity order: D1, D4, D6, Eternal D6, D7, D8, D10, D12, D20, D100
if REPENTANCE then dinfinityList = { 476, 284, 105, 609, 437, 406, 285, 386, 166, 283 } end
-- Returns the item ID of D Infinity's current die
-- For Repentance, the Drop button is tracked, which is probably not 100% successful, and handled elsewhere
function EID:CurrentDInfinity(rng)
	if not REPENTANCE then
		rng = EID:RNGNext(rng, 0x1, 0x9, 0x1D) -- magic disassembled numbers!
        return dinfinityList[rng % 7]
	else
		-- track our current selected dinfinity dice! test if it is preserved between pickups of it
        -- TBA
        return 489
	end
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
	local itemConfig = Isaac.GetItemConfig()
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
		if itemConfig:GetCollectible(sel) ~= nil then
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