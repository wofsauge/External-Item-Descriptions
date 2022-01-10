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
local newLogLocation = os.getenv("SYSTEMDRIVE") .. "/Users/" .. os.getenv("USERNAME") .. "/Documents/My Games/Binding of Isaac Repentance/log2.txt"
local secondaryLog = io.open(newLogLocation, "w+")
secondaryLog:write("[EID] For performance and accuracy reasons, reading glitched item descriptions from the log file requires wiping the log regularly, so while you have TMTRAINER, most of the log will be moved here\n")
--test using file:seek instead, to just move our cursor to the start of new text!

--currently english only
local attributeConversions = {
	chain = "",
	pickup_collected = "When you collect a pickup:",
	enemy_kill = "On enemy kill, chance to:",
	
	
	area_damage = "Deal {1} area damage", 
	add_temporary_effect = "Gain {1} for the room",
	convert_entities = "Convert all {1} in the room to {2}",
	
}

local function parseEffectLine(raw)
	local words = {}
	for w in string.gmatch(raw,"%S+") do table.insert(words, w) end
	-- words[1] = "[INFO]", words[2] = "-"
	local effectTrigger = words[3]
	-- words[4] = "->"
	local effectType = words[5]
	local fullEffect = ""
	for i=5,#words do fullEffect = fullEffect .. words[i] .. " " end
	
	local replacements = {}
	local extraText = ""
	-- switch statement for how to handle the words after the effect type
	if effectType == "add_temporary_effect" then
		-- remainder of line = collectible name that's granted for the room
		local name = ""
		for i=6,#words do
			name = name .. words[i]
			if (i ~= #words) then name = name .. " " end
		end
	elseif effectType == "convert_entities" then
		local replacements[1] = words[6]
		local replacements[2] = words[8]
	end
	
	local eidString = ""
	eidString = eidString .. (attributeConversions[effectTrigger] or effectTrigger) .. "#"
	eidString = eidString .. (attributeConversions[effectType] or fullEffect) .. extraText .. "#"
	for k,v in ipairs(replacements) do
		eidString = string.gsub(eidString, "{" .. k .. "}", v)
	end
end

--work on how resuming a game works (determine current id by checking if item ids exist)

local function GameStartTMTRAINER(_,isSave)
	if not isSave then spawnedItems = 0
	else
		--check what item ID we're on
	end
end
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, GameStartTMTRAINER)

--[[
EID:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, function(_, enttype, variant, subtype, pos, vel, spawner, seed)
	if (EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER) and enttype == 5 and variant == 100 and subtype == 0) then
		print("[EID] TMTRAINER SPAWNED " .. (maxNumber - spawnedItems - 1))
		Isaac.DebugString("[EID] TMTRAINER SPAWNED " .. (maxNumber - spawnedItems - 1))
		--print("PRE ENTITY SPAWN " .. enttype .. "." .. variant .. "." .. subtype .. ", " .. tostring(pos))
		--Isaac.DebugString("PRE ENTITY SPAWN " .. enttype .. "." .. variant .. "." .. subtype .. ", " .. tostring(pos))
	end
end)
]]

local function CheckLogForItems(_)
	if (game:GetFrameCount() % 5 ~= 0 or not EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)) then return end
	local logLines = io.lines(logLocation)
	local numEffects = 0
	local itemScore = 0
	local effects = {}
	local eidDesc = ""
	for line in io.lines(logLocation) do
		if string.find(line, "initialized with") then
			local count = 0
			spawnedItems = spawnedItems + 1
			-- find the number of effects, and the score given
			-- (this match gets every number in the line)
			for s in string.gmatch(line, "%d*%.?%d+") do
				if count == 0 then
					numEffects = tonumber(s)
					count = 1
				elseif count == 1 then
					itemScore = tonumber(s)
				end
			end
			eidDesc = "Score: " .. itemScore
		elseif numEffects > 0 then
			numEffects = numEffects - 1
			table.insert(effects, line)
			eidDesc = eidDesc .. "#" .. line
			if numEffects == 0 then
				print("adding " .. tostring(maxNumber - spawnedItems) .. ", " .. eidDesc)
				EID:addCollectible(maxNumber - spawnedItems, eidDesc)
			end
		end
		-- there are some lines that have a gigantic amount of white space and I don't know why, don't write those I guess...
		if (#line < 200) then secondaryLog:write("LINE: " .. #line .. ": " .. line .. "\n") end
	end
	secondaryLog:flush()
	-- wipe the log file
	io.open(logLocation, "w+")
end
EID:AddCallback(ModCallbacks.MC_POST_UPDATE, CheckLogForItems)