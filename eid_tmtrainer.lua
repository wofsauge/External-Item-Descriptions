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

--currently english only
local attributeConversions = {
	--chain = "Then: ",
	chain = "",
	active = "On use:",
	pickup_collected = "When you collect a pickup:",
	enemy_kill = "On kill, chance to:",
	damage_taken = "When you take damage:",
	entity_spawned = "When a {{ColorGray}}{T1}{{ColorText}} is spawned, chance to:",
	tear_fire = "When you fire a tear, chance to:",
	enemy_hit = "On hitting an enemy, chance to:",
	room_clear = "On room clear:",
	
	area_damage = "Deal {1} damage in an area around you", 
	add_temporary_effect = "Gain {1} for the room",
	convert_entities = "Convert all {{ColorGray}}{1}{{ColorText}} in the room to {{ColorGray}}{2}{{ColorText}}",
	use_active_item = "Use {1}",
	spawn_entity = "Spawn a {{ColorGray}}{1}{{ColorText}}",
	fart = "Fart with size {1}",
}

--999.-1?
local genericEntityNames = {
	["4.-1"] = "lit Bombs",
	["5.-1"] = "pickups",
	["5.10"] = "Hearts",
	["5.20"] = "Coins",
	["5.30"] = "Keys",
	["5.40"] = "Bomb pickups",
	["5.70"] = "Pills",
	["5.300"] = "Cards",
	
	["9.-1"] = "projectiles",
	["1000.-1"] = "effects",
}

local lastEffectTrigger = "chain"

local function entityToName(e)
	--local name = ""
	local name = genericEntityNames[e] or EID.XMLEntityNames[e] or "NO NAME"
	if name == "NO NAME" then
		debugLog:write(e .. " (" .. name .. ")\n")
		debugLog:flush()
	end
	--if name == "" then return e end
	return genericEntityNames[e] or EID.XMLEntityNames[e] or name
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
		replacements[1] = entityToName(words[6])
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
