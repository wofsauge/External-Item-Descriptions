local game = Game()

EID.DescriptionConditions = {}
-- table of collectible IDs to periodically check if the players own. used by eid_modifiers.lua
EID.collectiblesToCheck = {}

require("features.eid_conditionals_funcs")


--[[ The general meaning of the arguments when adding a conditional are as follows:

Argument 1: ID of the item we're looking at the description of (assumed to be a collectible ID if it's just a number)
Argument 2: Function that needs to be true for us to change the description (or ID of the collectible/character that we need to have)
Argument 3: Optional text for finding the correct string in the localization file (can also be a function, which is passed descObj, that returns the location)
Argument 4: Optional table that can define a variety of different settings

]]

-- General conditions
-- Tarot Cloth (AB+ and Rep) (fallback to English because most are just find+replace)
if not EID.isRepentance then
	EID:AddCollectibleConditional("5.300", 451, nil, {locTable = "tarotClothBuffsAB", replaceColor = "ColorShinyPurple", noFallback = false})
else EID:AddCollectibleConditional("5.300", 451, nil, {locTable = "tarotClothBuffs", replaceColor = "ColorShinyPurple", noFallback = false}) end
EID:AddCollectibleConditional("5.100", 356, EID.CheckForCarBattery, {locTable = "carBattery", replaceColor = "BlinkYellowGreen", noFallback = false}) -- Car Battery

-- IV Bag conditions (need to be applied in a specific order)
EID:AddCollectibleConditional(135, 75, "PHD") -- PHD improves IV Bag
EID:AddPlayerConditional(135, 14, "Keeper 0-1") -- Keeper gets 0-1 coins
if EID.isRepentance then EID:AddConditional(135, EID.IsHardMode, "Hard Mode") end -- Hard Mode pays out less

-- Greed Mode
EID:AddConditional({241, "5.300.15"}, function() return game:IsGreedMode() end) -- Contract From Below, Temperance
EID:AddConditional("5.300.15", function() return game:IsGreedMode() and EID:PlayersHaveCollectible(451) end, "Tarot") -- Temperance + Greed + Tarot

-- Different effect for No Red Health players
EID:AddConditional({442, "5.350.107", "5.350.119"}, function() return EID:CheckForNoRedHealthPlayer() end, "No Red") -- Dark Prince's Crown, Crow Heart, Stem Cell
EID:AddConditional(81, function() return EID:CheckForNoRedHealthPlayer() end) -- Dead Cat

-- Achievement checks (these always return true without REPENTOGON)
EID:AddConditional("5.350.23", function() return EID:HaveNotUnlockedAchievement(82) end) -- Sacrifice Poster unlocks The Lost

-- Specific character synergies/changes
EID:AddPlayerConditional(549, { 10, 14 })       -- Keeper/Lost + Brittle Bones
EID:AddPlayerConditional(108, 14, "No Effect")  -- Keeper + The Wafer
EID:AddPlayerConditional(227, 14, "Keeper 0-1") -- Keeper + Piggy Bank
EID:AddPlayerConditional(501, 14)               -- Keeper + Greed's Gullet
EID:AddPlayerConditional(230, 14, "Keeper")     -- Keeper + Abaddon

-- Item Synergies
EID:AddSynergyConditional(7, 34)                                                 -- Martyr + Book of Belial/The Devil
EID:AddCollectibleConditional("5.300.16", 7)                                     -- Martyr + Book of Belial/The Devil
EID:AddSynergyConditional(316, 260)                                              -- Black Candle + Cursed Eye
EID:AddCollectibleConditional("5.300.48", 286, nil, { lineColor = "ColorSilver" }) -- Blank Card + ? Card

-- 9 Volt + 1 Room/Timed Charges
-- This got a bit complicated, since it looks at a trait of every collectible + you having another, but hey, it's compact
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(1) end, "1 Room", { useResult = true })
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(nil, 1) end, "Timed", { useResult = true })
EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, 1) end, "1 Room", { bulletpoint = "Collectible116" })
EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 1) end, "Timed", { bulletpoint = "Collectible116" })

-- Overridden by Brimstone
-- Haven't done it yet but I'm sure preparing the system for it
-- Remember most of these will be AB+ only (not EID.isRepentance)

-- AB+ only conditionals
if not EID.isRepentance then
	EID:AddCollectibleConditional(205, {116, 276}, "No Effect") -- Sharp Plug + 9 Volt, Isaac's Heart
	EID:AddCollectibleConditional(205, 108, "Wafer") -- Sharp Plug + The Wafer
	EID:AddSynergyConditional(205, 441, "Can't Charge", "Can't Be Charged") -- Sharp Plug + Mega Blast
	
	EID:AddConditional(208, function() return EID:IsHardMode() end) -- Champion Belt
end

if EID.isRepentance then
	-- General conditions
	EID:AddCollectibleConditional("5.100", 706, nil, { locTable = "abyssSynergies", lineColor = "ColorRed" }, false) -- Abyss (no item reminder)
	EID:AddCollectibleConditional("5.100", 59, nil, { locTable = "bookOfBelialBuffs" })                         -- Belial Birthright
	EID:AddCollectibleConditional("5.100", 664, nil, { locTable = "bingeEaterBuffs" })                          -- Binge Eater

	-- Co-op friendly items
	-- todo: which? (extension cord)
	EID:AddConditional(45, function() return EID:MultiplePlayerCharacters() end) -- Yum Heart
	
	-- No red health
	EID:AddConditional({569, 671, 676}, function() return EID:CheckForNoRedHealthPlayer() end, "No Red") -- Blood Oath, Candy Heart, Empty Heart
	EID:AddPlayerConditional({671, 676}, 14, "No Effect") -- Candy Heart / Empty Heart + Keeper
	EID:AddPlayerConditional(676, 16, "No Effect", nil, false) -- Empty Heart + Forgotten (not Tainted)
	
	-- Tainted characters reviving as themselves
	EID:AddPlayerConditional({ 161, "5.350.28" }, 25, "Tainted Revive") -- Ankh, Broken Ankh
	EID:AddPlayerConditional(311, 24, "Tainted Revive")            -- Judas's Shadow
	EID:AddPlayerConditional(332, { 29, 38 }, "Tainted Revive")    -- Lazarus's Rags
	EID:AddPlayerConditional("5.350.23", 31, "Tainted Revive")     -- Sacrifice Poster

	-- Specific character synergies/changes
	EID:AddPlayerConditional("5.350.1", 14, "Keeper 0-1") -- Keeper + Swallowed Penny
	EID:AddPlayerConditional(188, 2)                      -- Cain + Abel
	EID:AddPlayerConditional(360, 13)                     -- Incubus + Lilith
	EID:AddPlayerConditional({ 240, 644 }, 21)            -- Tainted Isaac + Experimental Treatment, Consolation Prize
	EID:AddPlayerConditional({ 642, 694 }, 10)            -- Lost + Magic Skin, Heartbreak
	EID:AddPlayerConditional("5.350.156", 14)             -- Keeper + Mother's Kiss
	EID:AddPlayerConditional(230, 18, "Bethany", nil, false) -- Bethany + Abaddon
	EID:AddPlayerConditional(230, 36, "Tainted Bethany")  -- Tainted Bethany + Abaddon
	EID:AddPlayerConditional(245, 14, "Keeper")           -- 20/20 + Keeper
	EID:AddPlayerConditional(705, { 12, 24 })             -- Dark Arts + Dark/Tainted Judas
	EID:AddPlayerConditional(205, 22, "Tainted Magdalene")-- Tainted Magdalene + Sharp Plug

	-- Item Synergies
	EID:AddCollectibleConditional(201, 147)                     -- Iron Bar refills Notched Axe
	EID:AddCollectibleConditional("5.350.172", 260)             -- Black Candle + Cursed Penny
	EID:AddCollectibleConditional(501, 416)                     -- Greed's Gullet + Deep Pockets
	EID:AddSynergyConditional(245, { 2, 153, 169 }, nil, "20/20") -- 20/20 + The Inner Eye, Mutant Spider, Polyphemus
	EID:AddSynergyConditional(330, 561, "Overridden", "Overrides") -- Soy Milk + Almond Milk
	
	--TODO: SYNERGY CONDITIONAL DOESN'T WORK WITH TRINKETS YET, nothing I have works with trinkets yet really. need to detect trinket strings and handle them properly, and make a ConditionalTrinketCheck or something
	--EID:AddSynergyConditional(596, {"5.350.118", 704, 62, "5.350.60", 520, 411, 621, "5.350.58", "5.350.189", 657}, "Ice Tears") -- Uranus + On Kill Effects
	EID:AddSynergyConditional(596, {704, 62, 520, 411, 621, 657}, "Ice Tears") -- Uranus + On Kill Effects
	EID:AddPlayerConditional(596, 27, "Ice Tears") -- Uranus + Tainted Samson
	
	-- 9 Volt, Sharp Plug + Special Charge Actives
	EID:AddConditional({116, 205}, function() return EID:CheckPlayersForActiveChargeType(nil, 2) end, "Can't Charge", { useResult = true })
	EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2) end, "Can't Be Charged", { bulletpoint = "Collectible116", variableText = "{{NameOnlyC116}}" })
	EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(205) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2) end, "Can't Be Charged", { bulletpoint = "Collectible205", variableText = "{{NameOnlyC205}}" })
end


--[[
TODO STUFF:

new config options for spoiler-heavy descriptions if we make any (chaos card and plan C?)
CO-OP BENEFIT ITEMS! tech zero / extension cord in co-op? yum heart and such
Items that override other items (brimstone, mom's knife, epic fetus stuff)
BFFs / the fly booster + Tainted Apollyon, Tainted Eve; melody trinket + Tainted Eve; these are insane synergies that deserve attention
TODO: Make some of these coll/char IDs be from the enum for readability? or just keep it to comments
TODO: A find/replace pair for some Keeper descriptions that talk about Red hearts but work for him, Red -> Coin or Red/Coin; Could be good for Dead Cat. or just leave it be
-- hey what if all these Luck addons that I kinda don't like instead showed an accurate percentage of what they do at your current luck (although this is Modifier territory, with a per character display) (might be annoying though)
-- todo: TrinketConditional, use it for the crystal key + pandora's box or whichever key it is, and Black Feather items maybe (leave the damage calc to modifiers, but we can append text to black feather items)
-- todo: Vibrant/Dim Bulb + doesn't work with pocket consumables
-- todo: idk about the BFFs synergy stuff but I noticed that Brown Nugget is incorrectly dealt with, it gained double damage in rep
-- hive mind and BFFs synergy has a lot of overlap also, need a data list of hivemind familiars
-- brown nugget + sacrificial altar in AB+?!
-- ? Card + single use actives in Repentance? Alabaster Box. is there a way to detect an active is a single-use active or do we need a hardcode list?
-- unrelated to conditionals: Glyph of Balance prediction in Item Reminder?
-- Jacob's Ladder synergies with other battery items (I didn't even know about this)
-- Bean actives synegies with ghost pepper/bird's eye
-- todo: head of krampus damage (needs rep version), shoop da whoop damage / tick count (differs by 1 in repentance lol ok), head of krampus car battery, rep car battery
-- Greed Mode useless World card, Moon warps to super secret, Glyph of Balance very bad in AB+ (removed from Greed in rep), Blanket bad, Deep Pockets bad
car battery "no effect" items (also apply this as a synergy where car battery has no effect text, and other bad synergies, based on your active)
-- overall todo: remove "tick" language from all descriptions; Lil brimstone, black powder, black hole
Cain + items that close his eyes? mostly AB+ only?
Pandora's Box achievement check if moving box is unlocked find replace that with "nothing"
]]


----- Apply Conditionals -----

-- thing to fix find/replace pairs with hyphens (like "1-2") breaking because hyphen is a special char
-- https://stackoverflow.com/questions/29072601/lua-string-gsub-with-a-hyphen
local function replace(str, what, with, count)
	what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
	with = string.gsub(with, "[%%]", "%%%%")                       -- escape replacement
	return string.gsub(str, what, with, count)
end
-- super simple table concatenation: https://www.tutorialspoint.com/concatenation-of-tables-in-lua-programming
local function TableConcat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

function EID:applyConditionals(descObj)
	EID:CheckPlayersCollectibles()

	local typeVar = descObj.ObjType.."."..descObj.ObjVariant -- for general conditions (Tarot Cloth, Book of Virtues)
	local typeVarSub = descObj.fullItemString -- for specific conditions
	-- Combine general+specific conditions into one table
	local conds = {}
	if EID.DescriptionConditions[typeVar] then TableConcat(conds, EID.DescriptionConditions[typeVar]) end
	if EID.DescriptionConditions[typeVarSub] then TableConcat(conds, EID.DescriptionConditions[typeVarSub]) end
	-- Check every condition we need to check for this item
	for _, cond in ipairs(conds) do
		-- Search for the localization string; "S" (for generals) or "T.V.S" or "T.V.S (Modifier)" or "Modifier"
		local locTable = cond.locTable or "ConditionalDescs"
		local text = nil
		local modifierText = type(cond.modifierText) == "function" and cond.modifierText(descObj) or cond.modifierText
		
		-- Find our string in the base localization table
		if cond.noTable then
			text = EID:getDescriptionEntry(modifierText, nil, cond.noFallback)
		-- Find our string as either "Type.Var.Sub (Mod Text)" or "Mod Text"
		elseif modifierText then
			text = EID:getDescriptionEntry(locTable, typeVarSub .. " (" .. modifierText .. ")", cond.noFallback)
			if text == nil then text = EID:getDescriptionEntry(locTable, modifierText, cond.noFallback) end
		-- Find our string as either "Type.Var.Sub" or just the Subtype
		else
			text = EID:getDescriptionEntry(locTable, typeVarSub, cond.noFallback)
			if text == nil then text = EID:getDescriptionEntry(locTable, descObj.ObjSubType, cond.noFallback) end
		end

		-- If we find the localization string for this condition, and it passes the test, modify the description text
		local result = cond.func(descObj)
		if text ~= nil and result then
			local variableText, bulletpoint
			if cond.useResult then
				variableText = "{{NameOnlyC"..result.."}}"
				bulletpoint = "Collectible"..result
			else
				variableText = type(cond.variableText) == "function" and cond.variableText(descObj) or cond.variableText
				bulletpoint = cond.bulletpoint
			end

			-- String = append
			if type(text) == "string" then
				text = EID:ReplaceVariableStr(text, 1, variableText)
				local iconStr = "#"
				if bulletpoint then iconStr = iconStr .. "{{" .. bulletpoint .. "}} " end
				if cond.lineColor then iconStr = iconStr .. "{{" .. cond.lineColor .. "}}" end
				EID:appendToDescription(descObj, iconStr .. text:gsub("#", iconStr))

				-- Table with 1 entry = replace
			elseif #text == 1 then
				descObj.Description = EID:ReplaceVariableStr(text[1], 1, variableText)

				-- Table with 2+ entries = find and replace pairs
				-- Entry 1 is replaced with entry 2, entry 3 is replaced with entry 4, etc.
			else
				local pos = 1
				while pos < #text do
					local toFind = text[pos]
					local replaceWith = EID:ReplaceVariableStr(text[pos + 1], 1, variableText)
					if cond.replaceColor then replaceWith = "{{" .. cond.replaceColor .. "}}" .. replaceWith .. "{{CR}}" end
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

	return descObj
end
