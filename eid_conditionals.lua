local game = Game()

--[[ Descs that need a variant:
	respawn items that respawn you as the tainted version of yourself
	tainted isaac Consolation Prize, Experimental Treatment
	things that apply only to Lost/Tainted Lost (broken heart card, magic skin)
	spoilers descs
	lachyphragy in co-op? tech zero in co-op? yum heart and such obviously
	black candle + cursed penny / cursed eye
	healing stuff for keeper?
	iron bar + notched axe
	IV bag in hard mode
	IV bag for keeper (hmm, two different modifiers needed!)
	swallowed penny keeper
	experimental pill phd / false phd / phd + falsephd prints nothing
	iv bag also has interaction with PHD...
	Items that have synergies with other specific items
	Items that override other items (brimstone, mom's knife, epic fetus stuff)
	
	
	TODO: new config options for spoiler descs, and for hiding the "needed for collection" stuff
]]

-- silly function but I don't want to mess with Game() colon functions in the conditions table
function EID:IsGreedMode()
	return game:IsGreedMode()
end
function EID:IsHardMode()
	if game.Difficulty == 1 or game.Difficulty == 3 then return true
	else return false end
end

-- Check if we have any characters that can't have Red Health, to print additions to descs like Dead Cat
function EID:CheckForNoRedHealthPlayer()
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if EID.NoRedHeartsPlayerIDs[player:GetPlayerType()] then
			return true
		end
	end
	return false
end

-- Check for multiple players existing for items like Yum Heart and Extension Cord, includes J&E
function EID:MultiplePlayerCharacters()
	return #EID.coopAllPlayers > 1
end

-- Check the bestiary/character list if we have REPENTOGON, to help avoid spoilers. Otherwise just return true
function EID:HaveEncountered(monsterType, monsterVariant)
	if not REPENTOGON then return true end
	return Isaac.GetPersistentGameData():GetBestiaryEncounterCount(monsterType, monsterVariant) > 0
end
function EID:HaveNotEncountered(monsterType, monsterVariant)
	if not REPENTOGON then return true end
	return not EID:HaveEncountered(monsterType, monsterVariant)
end

function EID:HaveUnlockedAchievement(achID)
	if not REPENTOGON then return true end
	return Isaac.GetPersistentGameData():Unlocked(achID)
end

function EID:HaveNotUnlockedAchievement(achID)
	if not REPENTOGON then return true end
	return not EID:HaveUnlockedAchievement(achID)
end

--EID:PlayersHaveCharacter is already in the api to use for things like Swallowed Penny



--[[ (The conditions table has to be down here so that the functions exist)

func: The function that will be called to check if the condition is true
vars: A table of values that will be passed into func
type: A string denoting what kind of description change this is
	"append": Add new lines to the end of the description (default)
	"replaceAll": The entire description is replaced with a new one
	"findReplace": Find a phrase and replace it with a new one (the text in the localization file will be a table)
repOnly: Don't check this on Afterbirth+ (not always necessary, because AB+ won't have the text anyway)
abpOnly: Don't check this on Repentance
modifierText: Text to add to find a specific string in the localization file (for items with multiple modifiers)

Due to co-op, it's best for replacing text in descriptions to only be used for things like Greed/Hard Mode
Otherwise, appending is better so that players not affected by the change can still see what it will be for them
]]
EID.DescriptionConditions = {
	-- No Red HP
	["5.100.81"] = {func = EID.CheckForNoRedHealthPlayer}, -- Dead Cat
	["5.100.442"] = {func = EID.CheckForNoRedHealthPlayer}, -- Dark Prince's Crown
	["5.100.676"] = {func = EID.CheckForNoRedHealthPlayer}, -- Empty Heart
	
	-- Keeper
	["5.100.135"] = { -- IV Bag is complicated
		{func = EID.PlayersHaveCollectible, vars = {75}, modifierText = "PHD"},
		{func = EID.PlayersHaveCharacter, vars = {14, true}, modifierText = "Keeper"},
		{func = EID.IsHardMode, type = "findReplace", modifierText = "Hard Mode"}, },
	["5.350.1"] = {func = EID.PlayersHaveCharacter, vars = {14, true}}, -- Swallowed Penny
		
	-- Revives
	["5.100.161"] = {func = EID.PlayersHaveCharacter, vars = {25}}, -- Ankh
	["5.350.28"] = {func = EID.PlayersHaveCharacter, vars = {25}}, -- Broken Ankh
	["5.100.311"] = {func = EID.PlayersHaveCharacter, vars = {24}}, -- Judas's Shadow
	["5.100.332"] = {func = EID.PlayersHaveCharacter, vars = {29}}, -- Lazarus's Rags
	["5.350.23"] = { -- Missing Poster (revive, plus Unlock The Lost text)
		{func = EID.PlayersHaveCharacter, vars = {31}, modifierText = "Tainted Lost"},
		{func = EID.HaveNotUnlockedAchievement, vars = {Achievement.THE_LOST} } },
	
	-- Greed Mode
	["5.100.241"] = {func = EID.IsGreedMode}, -- Contract From Below
	["5.300.15"] = {func = EID.IsGreedMode, type = "replaceAll"}, -- Temperance: spawns beggar in greed mode
	["5.300.15 (Tarot)"] = {func = EID.IsGreedMode, type = "replaceAll"}, -- Temperance + Tarot Cloth + Greed Mode
	
}

-- thing to fix find/replace pairs with hyphens (like "1-2") breaking because hyphen is a special char
-- https://stackoverflow.com/questions/29072601/lua-string-gsub-with-a-hyphen
local function replace(str, what, with, count)
    what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
    with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
    return string.gsub(str, what, with, count)
end

function EID:applyConditionals(descObj, modifierText)
	local typeVarSub = descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType
	if modifierText then typeVarSub = typeVarSub .. " (" .. modifierText .. ")" end
	
	local conds = EID.DescriptionConditions[typeVarSub]
	if not conds then return descObj end
	
	-- Check every condition we need to check for this item (usually 1)
	if #conds == 0 then conds = { conds } end
	for _, cond in ipairs(conds) do
		local tvs = typeVarSub
		if cond.modifierText then tvs = tvs .. " (" .. cond.modifierText .. ")" end
		local text = EID:getDescriptionEntry("ConditionalDescs", tvs)
		if (text ~= nil) and (not repOnly or REPENTANCE) and (not abpOnly or not REPENTANCE) then
			-- is there a way to pass all a table's values into a function aside from this? it's fine for now...
			cond.vars = cond.vars or {}
			if cond.func(EID, cond.vars[1], cond.vars[2], cond.vars[3], cond.vars[4]) then
				if (cond.type == "append" or cond.type == nil) then
					descObj.Description = descObj.Description .. "#" .. text
				elseif (cond.type == "replaceAll") then
					descObj.Description = text
				elseif (cond.type == "findReplace") then
					-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
					local pos = 1
					while pos < #text do
						local toFind = text[pos]
						local replaceWith = text[pos+1]
						
						--"%d*%.?%d+" will grab every number group (1, 10, 0.5), this will allow us to not replace the "1" in "10" erroneously
						if (type(toFind) == "number") then
							local count = 0
							descObj.Description = string.gsub(descObj.Description, "%d*%.?%d+", function(s)
								if (s == tostring(toFind) and count == 0) then
									count = count + 1
									return replaceWith
								end
							end)
						-- Basic find+replace for non-numbers
						else
							descObj.Description = replace(descObj.Description, tostring(toFind), replaceWith, 1)
						end
						pos = pos + 2
					end
				end
			end
		end
	end

	
	return descObj
end
