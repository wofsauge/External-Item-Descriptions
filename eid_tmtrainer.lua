--[[

This file is only loaded when the game is launched with the "--luadebug" launch option.
This allows mods to have access to your computer's files, which is necessary to read glitched item info that's printed to the game's log file.

Having --luadebug on would allow malicious mods to delete your files, execute command prompt commands, and probably much more. It also makes certain Lua functions behave differently, which breaks some other mods.
USE AT YOUR OWN RISK.

]]

local game = Game()

-- glitched items start at 4294967295
local maxNumber = 4294967296
local spawnedItems = 0
local lastEffectTrigger = "chain"
local descOne = ""

local logLocation = os.getenv("USERPROFILE") .. "/Documents/My Games/Binding of Isaac Repentance/log.txt"
local logFound = false
local logCursor = 0

local triggerColors = {
	chain = "{{ColorSilver}}",
	active = "{{ColorLime}}",
	pickup_collected = "{{ColorYellow}}",
	enemy_kill = "{{ColorRed}}",
	damage_taken = "{{ColorRed}}",
	entity_spawned = "",
	tear_fire = "{{ColorCyan}}",
	enemy_hit = "{{ColorEIDError}}",
	room_clear = "{{ColorOrange}}",
}

local function entityToName(e, plural)
	local localizedNames = EID:getDescriptionEntry("GlitchedItemText")
	-- -1 is often used as an "any of this type", even if there's only one of that type, so converting it to 0 can help find names
	local eWithZero = string.gsub(e, "-1", "0")
	plural = plural or false
	local name = localizedNames[e] or EID.XMLEntityNames[e] or localizedNames[eWithZero] or EID.XMLEntityNames[eWithZero] or e

	--print out entities with no name yet
	if name == e then Isaac.DebugString("No name found for " .. e .. " (could be modded)")
	elseif plural then name = name .. localizedNames["pluralize"] end

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
	-- the effects list is rarely interrupted by music loading log entries, just ignore it and have a slightly inaccurate desc
	if effectTrigger == "Queued" then return "" end
	if (string.find(effectTrigger, "entity_spawned")) then
		effectTrigger = "entity_spawned"
		triggerReplacements[1] = "{{ColorEIDObjName}}" .. entityToName(string.sub(words[3], 16, -2)) .. "{{CR}}"
	end
	-- words[4] = "->"
	local effectType = words[5]
	local fullEffect = ""
	for i=5,#words do fullEffect = fullEffect .. words[i] .. " " end

	if effectType == "add_temporary_effect" or effectType == "use_active_item" then
		-- remainder of line = collectible name that's granted for the room
		local name = ""
		for i=6,#words do
			name = name .. words[i]
			if (i ~= #words) then name = name .. " " end
		end

		replacements[1] = name
		if (Isaac.GetItemIdByName(name) > 0) then
			replacements[1] = "{{Collectible" .. Isaac.GetItemIdByName(name) .. "}} " .. name
		end
	elseif effectType == "convert_entities" then
		replacements[1] = "{{ColorGray}}" .. entityToName(words[6], true) .. "{{CR}}"
		replacements[2] = "{{ColorGray}}" .. entityToName(words[8])
	elseif effectType == "spawn_entity" then
		replacements[1] = "{{ColorGray}}" .. entityToName(words[6])
	elseif effectType == "fart" then
		replacements[1] = words[6]
	elseif effectType == "area_damage" then
		replacements[1] = words[6]
		-- display area_damage 0's because they still need to be done to chain to the next thing
		--if words[6] == "0" then printEffect = false end
	end

	local localizedNames = EID:getDescriptionEntry("GlitchedItemText")
	local eidString = ""
	if effectTrigger ~= lastEffectTrigger then eidString = eidString .. triggerColors[effectTrigger] .. (localizedNames[effectTrigger] or (effectTrigger .. "#")) end
	if printEffect then eidString = eidString .. (localizedNames[effectType] or fullEffect) .. "#" end
	for k,v in ipairs(triggerReplacements) do eidString = string.gsub(eidString, "{T" .. k .. "}", v) end
	for k,v in ipairs(replacements) do eidString = string.gsub(eidString, "{" .. k .. "}", v) end

	if effectTrigger ~= "chain" then lastEffectTrigger = effectTrigger end
	return eidString
end

local function CheckLogForItems(_)
	-- Check log.txt every 5 frames if there's a collectible we haven't read the data for yet
	-- (Should work well for Corrupted Data)
	if game:GetFrameCount() % 5 ~= 0 or not EID.Config["DisplayGlitchedItemInfo"] or not logFound or
		EID.itemConfig:GetCollectible(maxNumber - spawnedItems - 1) == nil then return end

	local numEffects = 0
	local eidDesc = ""

	local theLog = io.open(logLocation, "r")
	if theLog == nil then return end
	theLog:seek("set", logCursor)

	local line = theLog:read()
	while line ~= nil do
		if string.find(line, "initialized with") then
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
				eidDesc = EID:CheckGlitchedItemConfig(maxNumber - spawnedItems) .. eidDesc
				-- Glowing Hour Glass type effects cause the game to reload all items, check if our desc is equal to the first one
				if (descOne == eidDesc) then spawnedItems = 1 end

				EID:addCollectible(maxNumber - spawnedItems, eidDesc)
				if spawnedItems == 1 then descOne = eidDesc end
			end
		elseif string.find(line, "Game ended;") then
			spawnedItems = 0
			lastEffectTrigger = "chain"
			eidDesc = ""
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
		Isaac.DebugString("[EID] Could not find the log file at " .. logLocation .. "; glitched item descriptions won't work!")
		logFound = false
		return
	else
		logFound = true
	end

	-- luckily, when the game reloads, it also reloads all glitched items, so resuming works perfectly as long as we start at the beginning
	spawnedItems = 0
end
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, GameStartTMTRAINER)

local function GameEndTMTRAINER()
	-- Our cursor spot in the log gets wiped if mods are reloaded; can't think of a better way than this
	Isaac.DebugString("[EID] Game ended; ignore previous glitched items in the log!")
end
EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, GameEndTMTRAINER)


-- shh. it's a non-obtrusive april fools joke for the 1% of people with luadebug
-- https://www.youtube.com/watch?v=msDuNZyYAIQ
if (os.date("%m/%d") == "04/01") then
	EID.descriptions["en_us"].sacrifice[1][3] = "{{Coin}} 50% chance of winning 1 coin at Sacrifice#75% chance if you're a genetic freak#!!! If you add Kurt Angle to the mix, your chances of winning drastically go down"
end
