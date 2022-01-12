--[[

This file is only loaded when the game is launched with the "--luadebug" launch option.
This allows mods to have access to your computer's files, which is necessary to read glitched item info that's printed to the game's log file.

Having --luadebug on would allow malicious mods to delete your files, execute command prompt commands, and probably much more.
USE AT YOUR OWN RISK.

]]

local game = Game()

-- glitched items start at 4294967295
local maxNumber = 4294967296
local spawnedItems = 0

local logLocation = os.getenv("SYSTEMDRIVE") .. "/Users/" .. os.getenv("USERNAME") .. "/Documents/My Games/Binding of Isaac Repentance/log.txt"
local logFound = false
local logCursor = 0

local debugLogLocation = os.getenv("SYSTEMDRIVE") .. "/Users/" .. os.getenv("USERNAME") .. "/Documents/My Games/Binding of Isaac Repentance/tmtrainerlog.txt"
local debugLog = io.open(debugLogLocation, "w+")

-- all possible attributes
--local itemConfigItemAttributes = { "AchievementID", "AddBlackHearts", "AddBombs", "AddCoins", "AddHearts", "AddKeys", "AddMaxHearts", "AddSoulHearts", "CacheFlags", "ChargeType", "ClearEffectsOnRemove", "Costume", "Description", "DevilPrice", "Discharged", "GfxFileName", "Hidden", "ID", "InitCharge", "MaxCharges", "MaxCooldown", "Name", "PassiveCache", "PersistentEffect", "Quality", "ShopPrice", "Special", "Tags", "Type" }
-- the traits here will be listed in this order
local itemConfigItemAttributes = { "AddMaxHearts", "AddHearts", "AddSoulHearts", "AddBlackHearts", "AddBombs", "AddCoins", "AddKeys", "CacheFlags" }
local cacheFlagNames = { [0] = "Damage", "Fire Delay", "Shot Speed", "Range", "Speed", "Tear Effects", "Tear Color", "Flying", "Weapon", "Familiars", "Luck", "Size", "Color", "Pickup Vision", [16] = "All Stats" }

-- cache flags: math.pow(2, i) | flags ~= 0

--currently english only
local attributeConversions = {
	--chain = "Then: ",
	chain = "",
	active = "On use:",
	pickup_collected = "When you collect a pickup:", --chance to?
	enemy_kill = "On kill, chance to:",
	damage_taken = "When you take damage:", --chance to?
	entity_spawned = "When a {{ColorGray}}{T1}{{ColorText}} is spawned, chance to:",
	tear_fire = "When you fire a tear, chance to:",
	enemy_hit = "On hitting an enemy, chance to:",
	room_clear = "On room clear:", --chance to?
	
	area_damage = "Deal {1} damage in an area around you", 
	add_temporary_effect = "Gain {1} for the room",
	convert_entities = "Convert all {{ColorGray}}{1}{{ColorText}} in the room to {{ColorGray}}{2}{{ColorText}}",
	use_active_item = "Use {1}",
	spawn_entity = "Spawn a {{ColorGray}}{1}{{ColorText}}",
	fart = "Fart with size {1}",
	
	AddBlackHearts = "{1} Black Heart",
	AddBombs = "{1} Bomb",
	AddCoins = "{1} Coin",
	AddHearts = "Heals {1} Red Heart",
	AddKeys = "{1} Key",
	AddMaxHearts = "{1} Heart Container",
	AddSoulHearts = "{1} Soul Heart",
	
}

--999.-1?
--1000.50: Laser Impact? It couldn't find that?
local genericEntityNames = {
	["2.-1"] = "tear",
	["4.-1"] = "lit Bomb",
	["5.-1"] = "pickup",
	["5.10"] = "Heart",
	["5.20"] = "Coin",
	["5.30"] = "Key",
	["5.40"] = "Bomb pickup",
	["5.69"] = "Grab Bag",
	["5.70"] = "Pill",
	["5.300"] = "Card",
	
	["9.-1"] = "projectile",
	["999.-1"] = "grid-aligned object",
	["1000.0"] = "effect",
}

local lastEffectTrigger = "chain"

local function entityToName(e, plural)
	-- -1 is often used as an "any of this type", so converting it to 0 can help
	local eWithZero = string.gsub(e, "-1", "0")
	plural = plural or false
	local name = genericEntityNames[e] or EID.XMLEntityNames[e] or genericEntityNames[eWithZero] or EID.XMLEntityNames[eWithZero] or "NO NAME"
	if name == "NO NAME" then
		debugLog:write(e .. "\n")
		debugLog:flush()
		print(e)
	elseif plural then
		name = name .. "s"
	end
	if name == "NO NAME" then return e end
	return name
end

local function parseEffectLine(raw)
	local words = {}
	for w in string.gmatch(raw,"%S+") do table.insert(words, w) end
	
	local triggerReplacements = {}
	local replacements = {}
	local printEffect = true
	
	-- words[1] = "[INFO]", words[2] = "-"
	local effectTrigger = words[3]
	if (string.find(effectTrigger, "entity_spawned")) then
		effectTrigger = "entity_spawned"
		triggerReplacements[1] = entityToName(string.sub(words[3], 16, -2))
	end
	-- words[4] = "->"
	local effectType = words[5]
	local fullEffect = ""
	for i=5,#words do fullEffect = fullEffect .. words[i] .. " " end
	
	
	local extraText = ""
	-- switch statement for how to handle the words after the effect type
	if effectType == "add_temporary_effect" or effectType == "use_active_item" then
		-- remainder of line = collectible name that's granted for the room
		local name = ""
		for i=6,#words do
			name = name .. words[i]
			if (i ~= #words) then name = name .. " " end
		end
		
		replacements[1] = "{{Collectible" .. Isaac.GetItemIdByName(name) .. "}}" .. name
	elseif effectType == "convert_entities" then
		replacements[1] = entityToName(words[6], true)
		replacements[2] = entityToName(words[8])
	elseif effectType == "spawn_entity" then
		replacements[1] = entityToName(words[6])
	elseif effectType == "fart" then
		replacements[1] = words[6]
	elseif effectType == "area_damage" then
		--It also has flags in words[8] but they don't seem very useful, usually all zeroes
		replacements[1] = words[6]
		if words[6] == "0" then printEffect = false end
	end
	
	local eidString = ""
	if effectTrigger ~= lastEffectTrigger then eidString = eidString .. (attributeConversions[effectTrigger] or effectTrigger) .. "#" end
	if printEffect then eidString = eidString .. (attributeConversions[effectType] or fullEffect) .. extraText .. "#" end
	for k,v in ipairs(triggerReplacements) do eidString = string.gsub(eidString, "{T" .. k .. "}", v) end
	for k,v in ipairs(replacements) do eidString = string.gsub(eidString, "{" .. k .. "}", v) end
	
	if effectTrigger ~= "chain" then lastEffectTrigger = effectTrigger end
	return eidString
end

local function CheckLogForItems(_)
	if (not logFound or game:GetFrameCount() % 5 ~= 0 or not EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)) then return end
	
	local numEffects = 0
	local itemScore = 0
	local eidDesc = ""
	
	local theLog = io.open(logLocation, "r")
	theLog:seek("set", logCursor)
	
	local line = theLog:read()
	while line ~= nil do
		if string.find(line, "initialized with") then
			local count = 0
			spawnedItems = spawnedItems + 1
			lastEffectTrigger = "chain"
			eidDesc = ""
			-- find the number of effects to watch for
			for s in string.gmatch(line, "%d*%.?%d+") do
				numEffects = tonumber(s)
				break
			end
		elseif numEffects > 0 then
			numEffects = numEffects - 1
			eidDesc = eidDesc .. parseEffectLine(line)
			if numEffects == 0 then
				-- Glowing Hour Glass type effects will cause the game to reload all items, check if our desc is equal to the first one
				if (EID:getDescriptionObj(5, 100, maxNumber - 1).Description == eidDesc) then spawnedItems = 1 end
				
				-- check for the item's ItemConfig attributes
				local config = Isaac.GetItemConfig()
				local item = config:GetCollectible(maxNumber - spawnedItems)
				print(item)
				debugLog:write((maxNumber - spawnedItems) .. "\n")
				local attributes = ""
				for k,v in ipairs(itemConfigItemAttributes) do
					local attrib = item[v]
					if attrib ~= 0 then
						if (v == "CacheFlags") then
							local flagString = "Might affect "
							if attrib == CacheFlag.CACHE_ALL then
								flagString = flagString .. cacheFlagNames[16]
							else
								for i=0, 13 do
									if 2^i & attrib ~= 0 then
										flagString = flagString .. cacheFlagNames[i] .. ", "
									end
								end
								flagString = string.sub(flagString, 0, -3)
							end
							attributes = attributes .. flagString .. "#"
						else
							-- the Add Heart attributes count half a heart as 1, so divide the value in half
							if string.find(v, "Hearts") then attrib = attrib / 2 end
							-- the g flag removes .0 in numbers like 1.0 (caused by the hearts division)
							local s = string.format("%.4g",attrib)
							if attrib > 0 then s = "+" .. s end
							attributes = attributes .. string.gsub(attributeConversions[v], "{1}", s)
							--things like this don't localize well at all...
							if attrib > 1 or attrib < -1 then attributes = attributes .. "s" end
							attributes = attributes .. "#"
						end
					end
					debugLog:write(v .. ": " .. tostring(item[v]) .. "\n")
				end
				eidDesc = attributes .. eidDesc
				debugLog:flush()
				
				EID:addCollectible(maxNumber - spawnedItems, eidDesc)
				--print("adding " .. (maxNumber - spawnedItems))
			end
		end

		line = theLog:read()
	end
	
	logCursor = theLog:seek()
	theLog:close()
end
EID:AddCallback(ModCallbacks.MC_POST_UPDATE, CheckLogForItems)

local function GameStartTMTRAINER(_,isSave)
	local theLog = io.open(logLocation, "r")
	if (theLog == nil) then
		print("[EID] Could not find the log file at " .. logLocation .. "; glitched item descriptions won't work!")
		logFound = false
		return
	else
		logFound = true
	end
	
	spawnedItems = 0
end
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, GameStartTMTRAINER)
