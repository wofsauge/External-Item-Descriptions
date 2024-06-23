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

------ GENERAL CONDITIONS ------
-- Tarot Cloth
if not EID.isRepentance then
	EID:AddItemConditional("5.300", 451, nil, {locTable = "tarotClothBuffsAB", replaceColor = "ColorShinyPurple", noFallback = false})
else EID:AddItemConditional("5.300", 451, nil, {locTable = "tarotClothBuffs", replaceColor = "ColorShinyPurple", noFallback = false}) end

-- Car Battery
EID:AddItemConditional("5.100", 356, EID.CheckForCarBattery, {locTable = "carBattery", replaceColor = "BlinkYellowGreen", noFallback = false})
EID:AddConditional(356, EID.CheckActivesForCarBattery, "No Effect") -- "No effect" text for Car Battery pedestal

-- BFFS! / Hive Mind
EID:AddItemConditional({"5.100","5.350.54","5.350.57"}, 247, EID.CheckForBFFS, {locTable = "BFFSSynergies", replaceColor = "BlinkPink", noFallback = false})
EID:AddConditional(247, EID.CheckFamiliarsForBFFS, "No Effect") -- "No effect" text for BFFS pedestal
if EID.isRepentance then
	EID:AddItemConditional({"5.300.96", "5.350.142", "5.350.176", "5.350.182", "5.350.186"}, 247, EID.CheckForBFFS, {locTable = "BFFSSynergies", replaceColor = "BlinkPink", noFallback = false}) -- BFFS! Repentance soulstone/trinkets
	EID:AddItemConditional("5.100", 248, EID.CheckForHiveMind, {locTable = "BFFSSynergies", replaceColor = "BlinkBlue", noFallback = false}) -- Hive Mind
	EID:AddSynergyConditional(247, 248, "No Effect (Familiars)") -- Already having Hive Mind / BFFS!
end

-- Abyss, Birthright Book of Belial, Binge Eater
if EID.isRepentance then
	EID:AddItemConditional("5.100", 706, nil, { locTable = "abyssSynergies", lineColor = "ColorRed" }, false) -- Abyss (no item reminder)
	EID:AddItemConditional("5.100", 59, nil, { locTable = "bookOfBelialBuffs" })                         -- Belial Birthright
	EID:AddItemConditional("5.100", 664, nil, { locTable = "bingeEaterBuffs" })                          -- Binge Eater
end


------ GREED MODE ------
-- "No effect" append
EID:AddConditional({134, 241, 464, "5.300.22", "5.350.59", "5.350.83", "5.350.84", "5.350.85", "5.350.102", "5.350.110", "5.350.111", "5.350.124", 21, 54, 249, 376, 437}, EID.IsGreedMode, "No Effect (Greed)") -- Guppy's Tail, Contract from Below, Glyph of Balance, The World, Cain's Eye, Store Key, Rib of Greed, Karma, Fragmented Card, Silver Dollar, Bloody Crown, Door Stop, Treasure Map, Compass, There's Options, Restock, D7
-- Not bothering with Repentance no effect items because they're all tagged nogreed

-- change the word "room" to "wave"
EID:AddConditional({266, "5.350.46", 385}, EID.IsGreedMode, "Room to Wave")

-- append/overwrite some descriptions
EID:AddConditional({483, 535, "5.300.15", "5.300.19", "5.300.20", 246, 333, "5.350.120", "5.350.34", "5.350.36", "5.350.41", "5.350.44", "5.350.45", "5.350.72", 514 }, EID.IsGreedMode) -- Mama Mega, Blanket, Temperance, The Moon, The Sun, Blue Map, The Mind, Hairpin, some nogreed trinkets, Broken Modem
EID:AddConditional({"5.350.5", 208}, EID.IsGreedMode, "No Champion Drops")

if EID.isRepentance then
	EID:AddConditional({567, 693, "5.350.163", "5.350.167", }, EID.IsGreedMode, "Room to Wave")
	EID:AddConditional({344, 416, "5.300.74", 566, 580, "5.300.83", "5.350.162"}, EID.IsGreedMode) -- Match Book, Deep Pockets, The Moon?, Dream Catcher, Red Key, Soul of Cain, Azazel's Stump
end


------ ACHIEVEMENT CHECKS ------
-- These always return true without REPENTOGON. This section is a TODO
EID:AddConditional("5.350.23", function() return EID:HaveNotUnlockedAchievement(82) end) -- Sacrifice Poster unlocks The Lost


------ NO RED HEALTH PLAYERS ------
EID:AddConditional({442, "5.350.107", "5.350.119"}, EID.CheckForNoRedHealthPlayer, "No Red") -- Dark Prince's Crown, Crow Heart, Stem Cell
EID:AddConditional(81, EID.CheckForNoRedHealthPlayer) -- Dead Cat
if EID.isRepentance then
	EID:AddConditional({569, 671, 676}, EID.CheckForNoRedHealthPlayer, "No Red") -- Blood Oath, Candy Heart, Empty Heart
	EID:AddPlayerConditional({671, 676}, 14, "No Effect") -- Candy Heart / Empty Heart + Keeper
	EID:AddPlayerConditional(676, 16, "No Effect", nil, false) -- Empty Heart + Forgotten (not Tainted)
end


------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
-- Note that passing "false" as a 5th variable to AddPlayerConditional will make it so the Tainted version of the char doesn't count, otherwise it does
EID:AddPlayerConditional(549, { 10, 14 })       -- Keeper/Lost + Brittle Bones
EID:AddPlayerConditional(108, 14, "No Effect")  -- Keeper + The Wafer
EID:AddPlayerConditional(227, 14, "Keeper 0-1") -- Keeper + Piggy Bank
EID:AddPlayerConditional(501, 14)               -- Keeper + Greed's Gullet
EID:AddPlayerConditional(230, 14, "Keeper")     -- Keeper + Abaddon
if EID.isRepentance then
	-- Tainted characters reviving as themselves
	EID:AddPlayerConditional({ 161, "5.350.28" }, 25, "Tainted Revive") -- Ankh, Broken Ankh
	EID:AddPlayerConditional(311, 24, "Tainted Revive")            -- Judas's Shadow
	EID:AddPlayerConditional(332, { 29, 38 }, "Tainted Revive")    -- Lazarus's Rags
	EID:AddPlayerConditional("5.350.23", 31, "Tainted Revive")     -- Sacrifice Poster

	-- Specific character synergies/changes
	EID:AddPlayerConditional("5.350.1", 14, "Keeper 0-1") -- Keeper + Swallowed Penny
	EID:AddPlayerConditional(188, 2)                      -- Cain + Abel
	EID:AddPlayerConditional({ 360, 728 }, 13)            -- Incubus/Gello + Lilith
	EID:AddPlayerConditional({ 240, 644 }, 21)            -- Tainted Isaac + Experimental Treatment, Consolation Prize
	EID:AddPlayerConditional({ 642, 694 }, 10)            -- Lost + Magic Skin, Heartbreak
	EID:AddPlayerConditional(694, 14, "Keeper", nil, false) -- Keeper + Heartbreak
	EID:AddPlayerConditional(694, 33, "Tainted Keeper")   -- Tainted Keeper + Heartbreak
	EID:AddPlayerConditional("5.350.156", 14)             -- Keeper + Mother's Kiss
	EID:AddPlayerConditional(230, 18, "Bethany", nil, false) -- Bethany + Abaddon
	EID:AddPlayerConditional(230, 36, "Tainted Bethany")  -- Tainted Bethany + Abaddon
	EID:AddPlayerConditional(245, 14, "Keeper")           -- 20/20 + Keeper
	EID:AddPlayerConditional(705, { 12, 24 })             -- Dark Arts + Dark/Tainted Judas
	EID:AddPlayerConditional(205, 22, "Tainted Magdalene")-- Tainted Magdalene + Sharp Plug
end


------ DUPLICATE COPIES OF ITEMS ------
-- Items that have no effect from multiple copies (AddSelfConditional adds it when holding Diplopia automatically)
EID:AddSelfConditional({191, 247, 248}, "No Effect (Copies)")
-- Items that have an interesting effect from multiple copies
EID:AddSelfConditional({}, "Copied"
-- Items that can't be duplicated (Diplopia)
EID:AddItemConditional(347, 347, "Can't Be Duplicated", nil, false) -- Diplopia
if not EID.isRepentance then
	EID:AddSelfConditional({222}, "No Effect (Copies)")
end
if EID.isRepentance then
	EID:AddSelfConditional({554}, "No Effect (Copies)")
	-- Items that can't be duplicated (Trinkets, Jera)
	EID:AddItemConditional({"5.350", "5.300.33"}, 347, "Can't Be Duplicated", nil, false) -- Diplopia
end


------ OVERRIDES / OVERRIDDEN BY -----
-- huge TODO here, a lot of AB+ only ones too
if not EID.isRepentance then
end
if EID.isRepentance then
	EID:AddSynergyConditional(330, 561, "Overridden", "Overrides") -- Soy Milk + Almond Milk
end


----- MISC. ITEM CONDITIONS ------
-- IV Bag conditions (need to be applied in a specific order)
EID:AddItemConditional(135, 75, "PHD") -- PHD improves IV Bag
EID:AddPlayerConditional(135, 14, "Keeper 0-1") -- Keeper gets 0-1 coins
if EID.isRepentance then EID:AddConditional(135, EID.IsHardMode, "Hard Mode") end -- Hard Mode pays out less

-- Suicide item interactions
EID:AddSynergyConditional({475, "5.300.46"}, {210, 276, 313}, "Suicide 1", "Suicide 2") -- Plan C, Suicide King + Isaac's Heart, Holy Mantle, Gnawed Leaf
if EID.isRepentance then
	EID:AddSynergyConditional({577, 656}, {276, 313}, "Suicide 1", "Suicide 2") -- Damocles + Isaac's Heart, Holy Mantle
	EID:AddSynergyConditional({577, 656, 475, "5.300.46"}, {674, 694}, "Suicide 1", "Suicide 2") -- Damocles, Plan C, Suicide King + Spirit Shackles, Heartbreak
end

-- 9 Volt / Sharp Plug interactions
-- 9 Volt + 1 Room/Timed; This got a bit complicated, since it looks at a trait of every collectible + you having another, but hey, it's compact
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(1) end, "1 Room")
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(nil, 1) end, "Timed")
EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, 1) end, "1 Room", { bulletpoint = "Collectible116" })
EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 1) end, "Timed", { bulletpoint = "Collectible116" })
if not EID.isRepentance then
	-- AB+ Sharp Plug oddities
	EID:AddItemConditional(205, {116, 276}, "No Effect") -- Sharp Plug + 9 Volt, Isaac's Heart
	EID:AddItemConditional(205, 108, "Wafer") -- Sharp Plug + The Wafer
	EID:AddSynergyConditional(205, 441, "Can't Charge", "Can't Be Charged") -- Sharp Plug + Mega Blast
end
if EID.isRepentance then
	-- 9 Volt, Sharp Plug + Special Charge Actives
	EID:AddConditional({116, 205}, function() return EID:CheckPlayersForActiveChargeType(nil, 2) end, "Can't Charge")
	EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(116) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2) end, "Can't Be Charged", { bulletpoint = "Collectible116", variableText = "{{NameOnlyC116}}" })
	EID:AddConditional("5.100", function(descObj) return EID:PlayersHaveCollectible(205) and EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2) end, "Can't Be Charged", { bulletpoint = "Collectible205", variableText = "{{NameOnlyC205}}" })
end

-- Miscellaneous Item Synergies
EID:AddSynergyConditional(7, {34, "5.300.16"})                                   -- Martyr + Book of Belial/The Devil
EID:AddSynergyConditional(316, 260)                                              -- Black Candle + Cursed Eye
EID:AddItemConditional("5.300.48", 286, nil, { lineColor = "ColorSilver" })      -- Blank Card + ? Card

EID:AddSynergyConditional(368, {69, 118, 316, 229, 395, 114, 329}, "Almost No Effect") -- Epiphora + Charge Shots / Ludovico

EID:AddSynergyConditional({127, 297, 347, 490, 483, 515, 475, 536}, "5.300.48", "? Card Single Use") -- ? Card + Single Use Actives
if EID.isRepentance then EID:AddSynergyConditional({585, 577, 628, 636}, "5.300.48", "? Card Single Use") end -- ? Card + Single Use Actives

-- AB+ only misc conditionals
if not EID.isRepentance then
	EID:AddConditional(208, EID.IsHardMode, nil, {noFallback = false}) -- Champion Belt (AB+ Hard Mode)
end

-- Rep only misc conditionals
if EID.isRepentance then
	-- Co-op friendly items
	-- todo: what items have a cool co-op synergy?
	EID:AddConditional({45, "5.350.125"}, EID.MultiplePlayerCharacters) -- Yum Heart, Extension Cord
	
	-- Item Synergies
	EID:AddItemConditional(201, 147)                     -- Iron Bar refills Notched Axe
	EID:AddItemConditional("5.350.172", 260)             -- Black Candle + Cursed Penny
	EID:AddItemConditional(501, 416)                     -- Greed's Gullet + Deep Pockets
	EID:AddSynergyConditional(245, { 2, 153, 169 }, nil, "20/20") -- 20/20 + The Inner Eye, Mutant Spider, Polyphemus
	
	EID:AddSynergyConditional(596, {"5.350.118", 704, 62, "5.350.60", 520, 411, 621, "5.350.58", "5.350.189", 657}, "Ice Tears") -- Uranus + On Kill Effects
	EID:AddPlayerConditional(596, 27, "Ice Tears") -- Uranus + Tainted Samson

end


--[[
BUURAZU'S TODO STUFF:

Overridden / Overrides (Brimstone, Mom's Knife, Epic Fetus stuff)
Co-op benefit items (not sure what they are tbh)
Spoiler achievement descriptions (plus a config setting possibly, to always show the spoilers) (Chaos Card and Plan C?)
BFFs / Hive Mind + Tainted Apollyon, Tainted Eve, Tainted Lilith; melody trinket + Tainted Eve/Lilith; these are insane synergies that deserve attention
Maybe a find/replace pair for some Keeper descriptions that talk about Red hearts but work for him, Red -> Coin or Red/Coin; Could be good for Dead Cat. or just leave it be
Crystal Key + Pandora's Box should be moved here? Or leave it in modifiers
Are Blank Card + Placebo + Clear Rune ready to get moved to here now that I have good ways to return values?
Vibrant/Dim Bulb + Pocket Actives; any other pocket active interactions? 4.5 volt charges your main one first?
Black Feather items can mention they're a Black Feather evil up!
Brown Nugget + sacrificial altar in AB+
Jacob's Ladder synergies with other battery items (I didn't even know about this)
Bean synergies with ghost pepper/bird's eye
Car Battery / BFFS whitelist for showing certain lines on the car/bffs pedestal, not just "No effect"
AB+ Only: Cain + Items that close his eyes?
Pandora's Box achievement check if moving box is unlocked find replace that with "nothing"
Coupon + Restock/Greed: The free item doesn't restock
Implement a system where similar texts don't get shown multiple times in one apply conditionals function (hive minds/bffs)
Check the Incubus wiki page for cool synergies plus things its not affected by in AB+
Mongo Baby conditional for what babies you have that it copies
hallowed ground / midas touch + the poop / card against humanity / everything jar synergies
Finish No Effect (Copies) conditional
Right now I think character conditionals that apply to the tainted char don't say the tainted char's name; is that a bad thing? should/can it be fixed?
Add Void synergy information for some active items (which?) (warn on things like mom's box you don't get double trinket power?) (MOVING BOX BEING PASSIVE)


TODOs unrelated to conditionals:
Luck modifier that prints out a percentage for the effect based on your current luck stat
Glyph of Balance prediction in Item Reminder?
Purity's current stat boost, if possible
Implement the standardized colors for characters, items, map names, etc
Character info tab in item reminder
Make Glitched Crown type pedestals work better in EID (pause on one item and press tab to switch to the next item)
Don't show Void stat ups depending on what Void has absorbed (abyss absorbed = no void stat ups etc, reroll item = might become actives)
Wild Card vurp-like desc modifier

MAYBE SOME DAYS:
Bag of Crafting "sort by recipe nearest completion in bag" option
no recipes mode could suggest ingredient replacement (replace: {lowest}->{highest})
super bum shouldn't count duplicate progress
Add a background or something to overlapping local descs
Pre-cache an entity's description in some way before even looking at them using coroutines
Reorganize eid_api better, maybe split it in two, shouldn't the api only contain functions other modders would use?
Make api functions for conditionals/other new features I've made that might be difficult for modders to approach
"Add golden trinket / mom's box / is rune / is card / placebo recharge / false phd info for mods to add in EID:addCard/Pill?" - did most of these happen?
check the actual github wiki, i've never looked at that, maybe I should update that some time
As eid_modifiers' usefulness dwindles, maybe it should add conditionals like how external mods would add them

]]
