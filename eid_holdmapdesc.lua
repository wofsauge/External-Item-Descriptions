local game = Game()
local level
local currentRoom

local function append(icon, title, newDesc)
	return (icon or "{{Blank}}") .. " {{ColorEIDObjName}}" .. title .. "#" .. newDesc .. "#"
end

local function RNGNext(num, shift1, shift2, shift3)
	num = num ~ ((num >> shift1) & 4294967295)
	num = num ~ ((num << shift2) & 4294967295)
	num = num ~ ((num >> shift3) & 4294967295)
	return num >> 0;
end
local function SeedToFloat(seed)
	local multi = 2.3283061589829401E-10;
	return seed * multi;
end

-- Teleport 2 Destination Prediction --
local teleport2Order = { 1,5,8,2,4,13,21,12,10,6,11,18,19,9,20,24,7,666,14,3 }
local teleport2GreedOrder = { 1,5,2,4,10,23,8,14,3 }
local teleport2Icons = { "{{Room}}","{{BossRoom}}","{{SuperSecretRoom}}","{{Shop}}","{{TreasureRoom}}","{{SacrificeRoom}}","{{DiceRoom}}","{{Library}}","{{CursedRoom}}","{{MiniBoss}}","{{ChallengeRoom}}","{{IsaacsRoom}}","{{BarrenRoom}}","{{ArcadeRoom}}","{{ChestRoom}}","{{Planetarium}}","{{SecretRoom}}","{{RedRoom}}","{{AngelDevilChance}}","{{ErrorRoom}}" }
local teleport2GreedIcons = { "{{RoomLongVertical}}","{{BossRoom}}","{{Shop}}","{{TreasureRoom}}","{{CursedRoom}}","{{Room}}","{{SuperSecretRoom}}","{{AngelDevilChance}}","{{ErrorRoom}}" }

local function teleport2Prediction(holdMapDesc)
	local level = game:GetLevel()
	local rooms = level:GetRooms()
	--I AM ERROR Room always considered uncleared
	local unclearedTypes = {[3] = true}
	for i = 0, rooms.Size - 1 do
		local room = rooms:Get(i)
		
		if not room.Clear then
			if room.Data.Type ~= 1 and room.Flags & 1024 == 1024 then unclearedTypes[666] = true
			else unclearedTypes[room.Data.Type] = true end
		end
	end
	--Angel/Devil Room check (it lives off the map)
	if not level:GetRoomByIdx(-1).Clear then unclearedTypes[14] = true end
	
	local greed = game:IsGreedMode()
	local roomOrder = (greed and teleport2GreedOrder) or teleport2Order
	local roomIcons = (greed and teleport2GreedIcons) or teleport2Icons
	local roomNames = (greed and EID:getDescriptionEntry("Teleport2GreedRoomNames")) or EID:getDescriptionEntry("Teleport2RoomNames")
	
	for i,v in ipairs(roomOrder) do
		if unclearedTypes[v] then return append("{{Collectible419}}", EID:getObjectName(5, 100, 419) .. EID:getDescriptionEntry("HoldMapHeader"), roomIcons[i] .. " " .. roomNames[i]) end
	end
end
--

--order of checking: 15, 48, 58, 63, 65
--(pennies, damage, hearts, item, leviathan, nothing)
local sanguineResults = { { 0.15, 3 }, { 0.48, 2 }, { 0.58, 4 }, { 0.63, 5 }, { 0.65, 6 }, { 1, 1 } }

function EID:getHoldMapDescription(player, checkingTwin)
	local holdMapDesc = ""
	local activeBlacklist = {}
	level = game:GetLevel()
	currentRoom = level:GetCurrentRoom()
	
	-- TODO: "you just picked up" desc (great for curse of blind)
	-- D1, crooked penny cheats. 404/liberty cap/etc. "what item is it"
	-- pandora's box? it shows the whole desc which is kinda useful
	-- Void's absorbed items list
	-- Luna beam effect?
	-- D Infinity current dice; track our Drop presses and resync it each time D Infinity is used by watching for the next dice effect triggered (Predict its next dice in AB+?)
	
	
	-- test how this works in co-op when co-op baby holds map! they should be ignored!
	
	if REPENTANCE then
		-- Sanguine Bond reward reminder
		if player:HasCollectible(CollectibleType.COLLECTIBLE_SANGUINE_BOND) and game:GetRoom():GetType() == RoomType.ROOM_DEVIL then
			local spikes = currentRoom:GetGridEntity(67)
			local cheatResult = nil
			-- we haven't made the setting for this stuff yet
			if spikes and EID.Config["ItemReminderShowRNGCheats"] then
				local spikeSeed = currentRoom:GetGridEntity(67):GetRNG():GetSeed()
				spikeSeed = RNGNext(spikeSeed, 5, 9, 7)
				spikeSeed = RNGNext(spikeSeed, 1, 5, 0x13)
				
				for k,v in ipairs(sanguineResults) do
					if SeedToFloat(spikeSeed) < v[1] then cheatResult = v[2] break end
				end
			end
			
			local descObj = EID:getDescriptionObj(5, 100, 692)
			local resultsDesc = ""
			
			local lineCount = 0
			-- separate sanguine's description by # or semicolons
			for w in string.gmatch(descObj.Description, "([^#;]+)") do
				-- we only care about groups that contain a percent sign
				if string.find(w,"%%") then
					lineCount = lineCount + 1
					if cheatResult == lineCount then resultsDesc = resultsDesc .. "{{ColorGreen}}" end
					resultsDesc = resultsDesc .. w .. "#"
				end
			end
			
			holdMapDesc = holdMapDesc .. append("{{Collectible692}}", descObj.Name, resultsDesc)
		end
		
		-- Tainted ??? Poop Descriptions
		if EID.Config["ItemReminderShowPoopDesc"] > 0 and player:GetPlayerType() == 25 then
			activeBlacklist[715] = true --blacklist Hold
			for i = 0, EID.Config["ItemReminderShowPoopDesc"]-1 do
				local poopInfo = EID:getDescriptionEntry("poopSpells")
				local nextPoop = player:GetPoopSpell(i)
				holdMapDesc = holdMapDesc .. append("{{PoopSpell" .. nextPoop .. "}}", poopInfo[nextPoop][1], poopInfo[nextPoop][2])
			end
		end
	end
	
	-- Teleport 2.0 location
	if player:HasCollectible(CollectibleType.COLLECTIBLE_TELEPORT_2) and not EID.isMirrorRoom then
		holdMapDesc = holdMapDesc .. teleport2Prediction(holdMapDesc)
		activeBlacklist[CollectibleType.COLLECTIBLE_TELEPORT_2] = true
	end
	
	--TODO: RECENT ITEMS TRACKING (reset per room clear? or just use timestamps?)
	
	-- Active Item Descriptions
	if EID.Config["ItemReminderShowActiveDesc"] > 0 then
		for i = 0, EID.Config["ItemReminderShowActiveDesc"]-1 do
			local heldActive = player:GetActiveItem(i)
			if heldActive > 0 and not activeBlacklist[heldActive] then
				local demoDescObj = EID:getDescriptionObj(5, 100, heldActive)
				holdMapDesc = holdMapDesc .. append("{{Collectible"..heldActive.."}}", demoDescObj.Name, demoDescObj.Description)
			end
		end
	end
	
	-- Pocket Item Descriptions
	-- Annoying because there's no easy way to just get the info of a slot
	if EID.Config["ItemReminderShowPocketDesc"] > 0 then
		local numPrinted = 0
		-- I don't think we can actually know what slot the player is on, so, save these to display (if they exist) for when Card and Pill in a slot are both 0, to attempt to always show them in slot order
		local dicePrinted = false
		local diceBag = REPENTANCE and player:GetActiveItem(3) or 0
		local pocketPrinted = false
		local pocketActive = REPENTANCE and player:GetActiveItem(2) or 0
		for i = 0, EID.Config["ItemReminderShowPocketDesc"]-1 do
			local heldCard = player:GetCard(i)
			local heldPill = player:GetPill(i)
			if heldCard > 0 then
				-- Get the card desc
			elseif heldPill > 0 then
				-- Get the pill effect
			elseif diceBag > 0 and not activeBlacklist[diceBag] and not dicePrinted then
				dicePrinted = true
				local demoDescObj = EID:getDescriptionObj(5, 100, diceBag)
				holdMapDesc = holdMapDesc .. append("{{Trinket154}}", demoDescObj.Name, demoDescObj.Description)
			elseif pocketActive > 0 and not activeBlacklist[heldActive] and not pocketPrinted then
				pocketPrinted = true
				local demoDescObj = EID:getDescriptionObj(5, 100, pocketActive)
				holdMapDesc = holdMapDesc .. append("{{Collectible"..pocketActive.."}}", demoDescObj.Name, demoDescObj.Description)
				-- we'll have to add tainted char specific text for their actives with unique effects for that character!
			end
		end
	end
	
	-- Trinket Descriptions
	if EID.Config["ItemReminderShowTrinketDesc"] > 0 then
		for i = 0, EID.Config["ItemReminderShowTrinketDesc"]-1 do
			local heldActive = player:GetTrinket(i)
			if heldActive > 0 and not activeBlacklist[heldActive] then
				-- test this with golden trinkets / mom's box!!!
				local demoDescObj = EID:getDescriptionObj(5, 350, heldActive)
				holdMapDesc = holdMapDesc .. append("{{Trinket"..heldActive.."}}", demoDescObj.Name, demoDescObj.Description)
			end
		end
	end
	
	--
	
	-- Finally, check the twin player of this controller
	-- If both twins have a desc, show their player icon / name to separate the two descs
	if REPENTANCE and not checkingTwin then
		local twin = player:GetOtherTwin()
		local otherTwinDesc = ""
		if twin then otherTwinDesc = EID:getHoldMapDescription(twin, true) end
		if otherTwinDesc ~= "" then
			if holdMapDesc == "" then holdMapDesc = otherTwinDesc
			else
				holdMapDesc = (EID:getIcon("Player"..player:GetPlayerType()) ~= EID.InlineIcons["ERROR"] and "{{Player"..player:GetPlayerType().."}}" or "{{CustomTransformation}}") .. " {{ColorGray}}" .. player:GetName() .. "#" .. holdMapDesc .. "#"
				holdMapDesc = holdMapDesc .. (EID:getIcon("Player"..twin:GetPlayerType()) ~= EID.InlineIcons["ERROR"] and "{{Player"..twin:GetPlayerType().."}}" or "{{CustomTransformation}}") .. " {{ColorGray}}" .. twin:GetName() .. "#" .. otherTwinDesc
			end
		end
	end
	
	return holdMapDesc
end
