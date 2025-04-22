local game = Game()

EID.DescriptionConditions = {}
-- table of collectible IDs to periodically check if the players own. used by eid_modifiers.lua too
EID.collectiblesToCheck = {}
-- co-op players that have a substantially different effect than the closest player are tracked in this table, to append "Different effect for X"
-- added to and applied by eid_modifiers.lua
EID.DifferentEffectPlayers = {}

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
EID:AddConditional(356, EID.CheckActivesForCarBattery, nil, {locTable = "carBattery", useResult = true, layer = 2}) -- Effect text for Car Battery pedestal
EID:AddConditional(356, EID.CheckActivesForNoCarBattery, "No Effect", {layer = 1}) -- "No effect" text for Car Battery pedestal


-- BFFS! / Hive Mind / Forgotten Lullaby
EID:AddItemConditional({"5.100","5.350.54","5.350.57"}, 247, EID.CheckForBFFS, {locTable = "BFFSSynergies", replaceColor = "BlinkPink", noFallback = false, uniqueID = "BFFS"})
EID:AddConditional(247, EID.CheckFamiliarsForBFFS, nil, {locTable = "BFFSSynergies", useResult = true, layer = 2}) -- Effect text for BFFS pedestal
EID:AddPlayerConditional(247, 13, "Lilith", {locTable = "BFFSSynergies", layer = 3}, false) -- Lilith's Incubus
EID:AddConditional(247, EID.CheckFamiliarsForNoBFFS, "No Effect", {layer = 1}) -- No effect text for BFFS pedestal
if EID.isRepentance then
	EID:AddItemConditional({"5.300.96", "5.350.142", "5.350.176", "5.350.182", "5.350.186"}, 247, EID.CheckForBFFS, {locTable = "BFFSSynergies", replaceColor = "BlinkPink", noFallback = false}) -- BFFS! Repentance soulstone/trinkets
	EID:AddPlayerConditional(247, 32, "Tainted Lilith", {locTable = "BFFSSynergies", layer = 3}) -- Tainted Lilith's Gello
	EID:AddItemConditional("5.100", 248, EID.CheckForHiveMind, {locTable = "BFFSSynergies", replaceColor = "BlinkBlue", noFallback = false, uniqueID = "BFFS"}) -- Hive Mind
	EID:AddSynergyConditional(247, 248, "No Effect (Familiars)", nil, {layer = 5}) -- Already having Hive Mind / BFFS!
	EID:AddConditional(248, EID.CheckFamiliarsForHiveMind, nil, {locTable = "BFFSSynergies", useResult = true, layer = 2}) -- Effect text for Hive Mind pedestal
	
	EID:AddSynergyConditional({584, 685, 702, 728}, "5.350.141", "No Effect From", "No Effect") -- Forgotten Lullaby no effect familiars (wisps, Gello)
	EID:AddPlayerConditional("5.350.141", 32, "No Effect", {bulletpoint = "Collectible728", variableText = "{{NameOnlyC728}}"}) -- Forgotten Lullaby no effect on Tainted Lilith's Gello
	EID:AddPlayerConditional("5.350.141", 13, "Lullaby Incubus", nil, false) -- Forgotten Lullaby effect for Incubus
	EID:AddItemConditional("5.350.141", {713, "5.350.176"}, "Lullaby Clots") -- Forgotten Lullaby effect for clots
end

-- Abyss, Birthright Book of Belial, Binge Eater
if EID.isRepentance then
	EID:AddItemConditional("5.100", 59, nil, { locTable = "bookOfBelialBuffs" })                         -- Belial Birthright
	EID:AddItemConditional("5.100", 664, nil, { locTable = "bingeEaterBuffs" })                          -- Binge Eater
	EID:AddItemConditional({22, 23, 24, 25, 26, 346, 456, 707}, 664, "Binge Eater Healing") -- Binge Eater (Heals 2 hearts)
end


------ GREED MODE ------
-- "No effect" append
EID:AddConditional({134, 241, 464, "5.300.22", "5.350.59", "5.350.83", "5.350.84", "5.350.85", "5.350.102", "5.350.110", "5.350.111", "5.350.124", 21, 54, 249, 376, 437}, EID.IsGreedMode, "No Effect (Greed)") -- Guppy's Tail, Contract from Below, Glyph of Balance, The World, Cain's Eye, Store Key, Rib of Greed, Karma, Fragmented Card, Silver Dollar, Bloody Crown, Door Stop, Treasure Map, Compass, There's Options, Restock, D7
-- Not bothering with Repentance no effect items because they're all tagged nogreed

-- change the word "room" to "wave"
EID:AddConditional({266, "5.350.46", 385}, EID.IsGreedMode, "Room to Wave")

-- append/overwrite some descriptions
EID:AddConditional({535, "5.300.15", "5.300.19", "5.300.20", 246, 333, "5.350.120", "5.350.34", "5.350.36", "5.350.41", "5.350.44", "5.350.45", "5.350.72", 514 }, EID.IsGreedMode) -- Mama Mega, Blanket, Temperance, The Moon, The Sun, Blue Map, The Mind, Hairpin, some nogreed trinkets, Broken Modem
EID:AddConditional({"5.350.5", 208}, EID.IsGreedMode, "No Champion Drops") -- Champion Belt, Purple Heart
EID:AddConditional({297, 483}, EID.IsGreedMode, "Greed") -- Pandora's Box

if EID.isRepentance then
	EID:AddConditional({567, 693, "5.350.163", "5.350.167", }, EID.IsGreedMode, "Room to Wave")
	EID:AddConditional({344, 416, "5.300.74", 566, 580, "5.300.83", "5.350.162"}, EID.IsGreedMode) -- Match Book, Deep Pockets, The Moon?, Dream Catcher, Red Key, Soul of Cain, Azazel's Stump
end


------ ACHIEVEMENT CHECKS ------
-- Achievement functions always return true without REPENTOGON, so use them how you need to have non-ogon players see what they should.
EID:AddConditional("5.350.23", function() return EID:HaveNotUnlockedAchievement(82) end) -- Sacrifice Poster unlocks The Lost
EID:AddConditional(297, function() return not EID:HaveNotUnlockedAchievement(366) end) -- Pandora's Box unlocking Moving Box


local SoulBlackChars = EID:ConcatTables(EID.SpecialHeartPlayers["Soul"],EID.SpecialHeartPlayers["Black"])
------ NO RED HEALTH PLAYERS ------
EID:AddConditional(81, EID.CheckForNoRedHealthPlayer) -- Dead Cat

EID:AddClosestPlayerConditional({133, 442, 487, "5.350.46", "5.350.107", "5.350.119"}, SoulBlackChars, "No Effect Replace", {layer = 5000}, false) -- Dark Prince's Crown, Crow Heart, Stem Cell, Isaac's Fork, Guppy's Paw, Potato Peeler
if EID.isRepentance then
	EID:AddClosestPlayerConditional({569, 671, 676}, SoulBlackChars, "No Effect Replace", {layer = 5000}, false) -- Blood Oath, Candy Heart, Empty Heart
	EID:AddClosestPlayerConditional(676, 16, "No Effect Replace", {layer = 5000}, false) -- Empty Heart + Forgotten (not Tainted)
	
	EID:AddClosestPlayerConditional("5.350.156", 14, "Mother's Kiss Coin") -- Mother's Kiss + Keeper
	EID:AddClosestPlayerConditional("5.350.156", SoulBlackChars, "Mother's Kiss Soul", nil, false) -- Mother's Kiss + Soul/Black (both give a Soul Heart)
	EID:AddClosestPlayerConditional("5.350.156", {16, 17}, "Mother's Kiss Bone", {layer = -1}, false) -- Mother's Kiss + Forgotten (including The Soul)
end

EID:AddClosestPlayerConditional(92, EID.SpecialHeartPlayers["Soul"], "Super Bandage Soul", nil, false)
EID:AddClosestPlayerConditional(92, EID.SpecialHeartPlayers["Black"], "Super Bandage Black", nil, false)
EID:AddClosestPlayerConditional(226, EID.SpecialHeartPlayers["Soul"], "Black Lotus Soul", nil, false)
EID:AddClosestPlayerConditional(226, EID.SpecialHeartPlayers["Black"], "Black Lotus Black", nil, false)

if EID.isRepentance then
	for itemID,charges in pairs(EID.BloodUpData) do
		EID:AddPlayerConditional(itemID, 36, "Health Up Blood Charges", {variableText = charges})
	end
	-- todo: some blood ups (cards with tarot cloth) should be increased
end


------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
-- Note that passing "false" as a 5th variable to AddPlayerConditional will make it so the Tainted version of the char doesn't count, otherwise it does
EID:AddClosestPlayerConditional(549, { 10, 14 })       -- Keeper/Lost + Brittle Bones

EID:AddPlayerConditional(227, 14, "Keeper 0-1") -- Keeper + Piggy Bank
EID:AddPlayerConditional(501, 14)               -- Keeper + Greed's Gullet
EID:AddPlayerConditional(230, 14, "Keeper")     -- Keeper + Abaddon
EID:AddPlayerConditional(152, 2, "Technology 2 One Eye") -- Cain + Technology 2
EID:AddPlayerConditional(122, 5, nil, nil, false) -- Eve + Whore of Babylon

EID:AddClosestPlayerConditional({20, 45, 60, 92, 108, 133, 142, 146, 159, 173, 179, 184, 185, 205, 226, 296, 301, 312, 428, 442, 448, 487, 493, 501, "5.350.14", "5.350.46", "5.350.55", "5.350.56", "5.350.107", "5.350.128"}, 10, "No Effect Replace", {layer = 10000}) -- Useless Lost items replace
EID:AddPlayerConditional({126, 135, 186}, 10, "Dies on Use", {layer = 10000}) -- Lethal Lost items warning
EID:AddClosestPlayerConditional({108, 122, 296}, 14, "No Effect Replace")  -- Useless Keeper items (The Wafer, Converter, Whore) replace
if EID.isRepentance then
	EID:AddClosestPlayerConditional({569, 639, 671, 676, 707, "5.350.156", "5.350.168"}, 10, "No Effect Replace", {layer = 10000}) -- Useless Lost items replace
	EID:AddPlayerConditional({713}, 10, "Dies on Use", {layer = 10000}) -- Lethal Lost items warning
	EID:AddClosestPlayerConditional({671, 676, 686}, 14, "No Effect Replace") -- Useless Keeper items (Candy Heart, Empty Heart, Soul Locket) replace
end

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
	EID:AddClosestPlayerConditional(642, 10)              -- Lost + Magic Skin
	EID:AddPlayerConditional(694, 10, nil, {layer=1})                     -- Lost + Heartbreak
	EID:AddClosestPlayerConditional(694, 14, "Keeper", nil, false) -- Keeper + Heartbreak
	EID:AddClosestPlayerConditional(694, 33, "Tainted Keeper")   -- Tainted Keeper + Heartbreak
	EID:AddPlayerConditional(230, 18, "Bethany", nil, false) -- Bethany + Abaddon
	EID:AddPlayerConditional(230, 36, "Tainted Bethany")  -- Tainted Bethany + Abaddon
	EID:AddClosestPlayerConditional(245, 14, "Keeper")           -- 20/20 + Keeper
	EID:AddPlayerConditional(705, { 12, 24 })             -- Dark Arts + Dark/Tainted Judas
	EID:AddPlayerConditional(205, 22, "Tainted Magdalene")-- Tainted Magdalene + Sharp Plug
	EID:AddPlayerConditional({"5.350.100", "5.350.101"}, 18, "Bethany", nil, false) -- Bethany + Vibrant/Dim Bulb
	EID:AddPlayerConditional({"5.350.100", "5.350.101"}, 36, "Tainted Bethany") -- Tainted Bethany + Vibrant/Dim Bulb
	EID:AddPlayerConditional("5.300.26", 36, "2 of Hearts Blood Charges") -- Tainted Bethany + 2 of Hearts
	EID:AddClosestPlayerConditional(62, 36, "Vampire Blood Charges")
	EID:AddClosestPlayerConditional("5.350.46", 36, "Fork Blood Charges")
	EID:AddClosestPlayerConditional("5.350.119", 36, "Stem Cell Blood Charges")
	
	EID:AddClosestPlayerConditional(722, 37) -- TJacob Anima Sola
	EID:AddClosestPlayerConditional(713, 26) -- TEve Sumptorium
	EID:AddPlayerConditional(711, 29) -- TLaz Flip
	EID:AddClosestPlayerConditional(710, 23) -- Tcain Bag of Crafting
	EID:AddPlayerConditional({"5.350.34", "5.350.36", "5.350.41", "5.350.44", "5.350.45"}, 23, "Salvaging Bonus") -- Tcain Safety Cap et al. bonus pickup chance
	EID:AddPlayerConditional("5.350.42", 23, "Salvaging Lucky Toe") -- Tcain Lucky Toe bonus pickup chance
end


------ DUPLICATE COPIES OF ITEMS ------
-- Items that have no effect from multiple copies (AddSelfConditional adds it when holding Diplopia / Crooked Penny automatically)
-- This list is mostly taken from Diplopia's wiki page, there's a lot more with no effect out there I'm sure
EID:AddSelfConditional({7, 55, 63, 69, 87, 104, 106, 108, 109, 116, 122, 132, 139, 149, 152, 156, 162, 169, 191, 200, 203, 214, 221, 225, 231, 233, 238, 239, 243, 244, 247, 248, 249, 261, 276, 299, 300, 313, 316, 330, 350, 356, 366, 368, 371, 374, 379, 400, 401, 408, 411, 412, 414, 416, 423, 429, 444, 446, 447, 450, 451, 458, 494, 495, 496, 501, 524, 525, 529, 532, 533, 534, 540, 546, }, "No Effect (Copies)")
-- Items that have an interesting effect from multiple copies
EID:AddSelfConditional({2, 64, 118, 153, 245, 358}, "Copies")
-- Items that can't be duplicated by Diplopia
EID:AddItemConditional(347, 347, "Can't Be Duplicated", nil, false) -- Diplopia
if not EID.isRepentance then
	EID:AddSelfConditional({115, 222, 224, 228, 531}, "No Effect (Copies)")
	EID:AddSelfConditional({440}, "Copies")
end
if EID.isRepentance then
	EID:AddSelfConditional({399, 440, 554, 561, 577, 586, 600, 612, 616, 634, 651, 656, 670, 671, 674, 678, 686, 701}, "No Effect (Copies)")
	EID:AddSelfConditional({531}, "Copies")
	EID:AddItemConditional({"5.350", "5.300.33"}, 347, "Can't Be Duplicated", nil, false) -- Trinkets, Jera
end


------ OVERRIDES / OVERRIDDEN BY -----
-- TODO: Check Azazel and Forgotten's effects with these items, especially Brimstone overrides
-- Monstro's Lung might be worthy of this list too?
-- Is the layer order correct here? Would I be better off making a new function for adding these overrides that has its own pre-defined layer numbers for the problematic items, to clean up this mess some?
EID:AddSynergyConditional({52, 69, 104, 132, 222, 224, 233, 316, 329, 369, 379, 397, 401, 410, 440, 444, 453, 459, 461, 462, 494, 524, 532, 533, 540, }, 168, "Overridden", "Overrides", {layer = 900, checkLayers = true}) -- Epic Fetus
EID:AddOneSidedSynergyConditional(168, 118, "Epic Fetus Brimstone", {layer = 900, checkLayers = true})
EID:AddOneSidedSynergyConditional(168, 114, "Epic Fetus Mom's Knife", {layer = 900, checkLayers = true})
EID:AddOneSidedSynergyConditional(168, 330, "Epic Fetus Soy Milk", {layer = 900, checkLayers = true})
EID:AddPlayerConditional(168, 7, "Overrides", {layer = 890, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Epic Fetus overrides Azazel

EID:AddSynergyConditional({69, 132, 222, 316, 369, 379, 410, 440, 453, 459, 461, 494, 524, 532, 533, }, 52, "Overridden", "Overrides", {layer = 800, checkLayers = true}) -- Dr. Fetus
EID:AddSynergyConditional(462, 52, "Eye of Belial Dr. Fetus", nil, {layer = 800, checkLayers = true})
EID:AddPlayerConditional(52, 7, "Overrides", {layer = 790, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Dr. Fetus overrides Azazel

EID:AddSynergyConditional({5, 69, 132, 221, 224, 316, 379, 401, 410, 459, 461, 462, 529, 532, 533, }, 114, "Overridden", "Overrides", {layer = 700, checkLayers = true}) -- Mom's Knife
EID:AddOneSidedSynergyConditional(114, 118, "Brimstone Mom's Knife", {layer = 700, checkLayers = true})
EID:AddPlayerConditional(114, 7, "Overrides", {layer = 690, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Mom's Knife overrides Azazel

EID:AddOneSidedSynergyConditional(531, 118, "Haemolacria Brimstone", {layer = 675, checkLayers = true})
EID:AddPlayerConditional(531, 7, "Overrides", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Haemolacria overrides Azazel

EID:AddSynergyConditional({316, 379, 410, 440, 453, 461, 462, 524, 533, 540, }, 118, "Overridden", "Overrides", {layer = 666, checkLayers = true}) -- Brimstone
EID:AddSynergyConditional(118, 149, "Brimstone Ipecac", nil, {layer = 666, checkLayers = true})
EID:AddPlayerConditional(149, 7, "Brimstone Ipecac", nil, {layer = 656, checkLayers = true})
EID:AddSynergyConditional(118, 261, "Brimstone Proptosis", nil, {layer = 666, checkLayers = true})
EID:AddPlayerConditional(261, 7, "Brimstone Proptosis", nil, {layer = 656, checkLayers = true})
EID:AddPlayerConditional({316, 379, 410, 440, 453, 461, 462, 524, 533, 540, }, 7, "Overridden", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Azazel overrides the same stuff

EID:AddSynergyConditional({5, 69, 104, 233, 316, 329, 379, 397, 410, 453, 461, 524, 529, 532, 533, 540, "5.350.26"}, 395, "Overridden", "Overrides", {layer = 600, checkLayers = true}) -- Tech X
EID:AddSynergyConditional(149, 395, "Technology Ipecac", nil, {layer = 600, checkLayers = true}) -- Tech X + Ipecac

EID:AddSynergyConditional({410, 462, 524, 533, 540}, 68, "Overridden", "Overrides", {layer = 400, checkLayers = true}) -- Technology
EID:AddSynergyConditional(149, 68, "Technology Ipecac", nil, {layer = 400, checkLayers = true}) -- Technology + Ipecac

EID:AddSynergyConditional({69, 222, 224, 316, 394, 397, 410, 532}, 329, "Overridden", "Overrides", {layer = 300, checkLayers = true}) -- Ludovico
EID:AddSynergyConditional(149, 329, "Ludovico Ipecac", nil, {layer = 300, checkLayers = true}) -- Ludovico + Ipecac

if not EID.isRepentance then
	-- AB+ exclusive overrides
	EID:AddSynergyConditional({374, 429, }, 168, "Overridden", "Overrides", {layer = 900, checkLayers = true}) -- Epic Fetus
	EID:AddSynergyConditional({374, 401, 429, 444, 461}, 52, "Overridden", "Overrides", {layer = 800, checkLayers = true}) -- Dr. Fetus
	EID:AddSynergyConditional({104, 150, 374, 394, 443, 453, 463, 494, 496, 503, }, 114, "Overridden", "Overrides", {layer = 700, checkLayers = true}) -- Mom's Knife
	EID:AddSynergyConditional({104, 224, 369, 374, 394, 401, 429, 444, 459, 463, 494, 532, }, 118, "Overridden", "Overrides", {layer = 666, checkLayers = true}) -- Brimstone
	EID:AddPlayerConditional({104, 224, 369, 374, 394, 401, 429, 444, 459, 463, 494, 532, }, 7, "Overridden", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Azazel overrides the same stuff
	EID:AddSynergyConditional({55, 87, 150, 221, 374, 394, 401, 429, 443, 444, 463, 494, 496, 503, "5.350.96"}, 395, "Overridden", "Overrides", {layer = 600, checkLayers = true}) -- Tech X
	EID:AddSynergyConditional({69, 104, 222, 224, 245, 316, 369, 374, 394, 429, 494, }, 68, "Overridden", "Overrides", {layer = 400, checkLayers = true}) -- Technology
	
	EID:AddSynergyConditional({52, 68, 114, 118, 168, 329, 395}, 69, "Chocolate Milk Overrides", nil, {uniqueID = "choccy"}) -- Chocolate Milk providing fire rate (the override/overridden line happens too)
end

if EID.isRepentance then
	EID:AddOneSidedSynergyConditional(678, 579, "Spirit Sword C Section", {layer = 1001, checkLayers = true}) -- C Section + Spirit Sword
	EID:AddSynergyConditional({52, 69, 118, 168, 229, 316, 329, 379, 394, 395, 397, 440, 556, 597, }, 579, "Overridden", "Overrides", {layer = 1000, checkLayers = true}) -- Spirit Sword
	EID:AddOneSidedSynergyConditional(579, 114, "Spirit Sword Mom's Knife", {layer = 1000, checkLayers = true}) -- Spirit Sword + Mom's Knife
	EID:AddOneSidedSynergyConditional(579, 68, "Spirit Sword Technology", {layer = 1000, checkLayers = true}) -- Spirit Sword + Technology
	EID:AddOneSidedSynergyConditional(579, 149, "Spirit Sword Ipecac", {layer = 1000, checkLayers = true}) -- Spirit Sword + Ipecac
	EID:AddPlayerConditional(579, 7, "Overrides", {layer = 990, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Spirit Sword overrides Azazel
	
	EID:AddSynergyConditional({553, 572, 678, "5.350.144"}, 168, "Overridden", "Overrides", {layer = 900, checkLayers = true}) -- Epic Fetus
	EID:AddOneSidedSynergyConditional(561, 168, "Epic Fetus Soy Milk", {layer = 900, checkLayers = true}) -- Epic Fetus + Almond Milk
	EID:AddSynergyConditional({69, 229, 316, 329, 397, 410, 533, 572, 597, }, 678, "Overridden", "Overrides", {layer = 850, checkLayers = true}) -- C Section
	EID:AddSynergyConditional({68, 118, 572, 597, 637, "5.350.144"}, 52, "Overridden", "Overrides", {layer = 800, checkLayers = true}) -- Dr. Fetus
	EID:AddSynergyConditional({52, 572, 597}, 114, "Overridden", "Overrides", {layer = 700, checkLayers = true}) -- Mom's Knife
	EID:AddSynergyConditional({597}, 118, "Overridden", "Overrides", {layer = 666, checkLayers = true}) -- Brimstone overrides
	EID:AddPlayerConditional({597}, 7, "Overridden", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC118}}"}) -- Azazel overrides the same stuff
	EID:AddOneSidedSynergyConditional({529, 532}, 118, "Brimstone Pop!", {layer = 666, checkLayers = true}) -- Brimstone + Pop!/Lachryphagy
	EID:AddPlayerConditional(529, 7, "Brimstone Pop!", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC529}}"}) -- Azazel + Pop/Lachryphagy
	EID:AddPlayerConditional(532, 7, "Brimstone Pop!", {layer = 656, checkLayers = true, variableText = "{{NameOnlyC532}}"}) -- Azazel + Pop/Lachryphagy
	EID:AddSynergyConditional(572, 118, "Eye of the Occult Beam", nil, {layer = 666}) -- Brimstone + Eye of the Occult
	EID:AddPlayerConditional(572, 7, "Eye of the Occult Beam", {layer = 656, checkLayers = true, bulletpoint = "Collectible118"}) -- Azazel + Eye of the Occult
	EID:AddSynergyConditional({572, 597, "5.350.144"}, 395, "Overridden", "Overrides", {layer = 600, checkLayers = true}) -- Tech X
	EID:AddSynergyConditional({597}, 68, "Overridden", "Overrides", {layer = 400, checkLayers = true}) -- Technology
	EID:AddSynergyConditional(572, 68, "Eye of the Occult Beam", nil, {layer = 400}) -- Technology + Eye of the Occult
	
	EID:AddSynergyConditional(330, 561, "Overridden", "Overrides") -- Soy Milk + Almond Milk
end


----- MISC. ITEM CONDITIONS ------
-- IV Bag conditions (need to be applied in a specific order)
EID:AddItemConditional(135, 75, "PHD", {layer = 3}) -- PHD improves IV Bag
EID:AddPlayerConditional(135, 14, "Keeper 0-1", {layer = 2}) -- Keeper gets 0-1 coins
if EID.isRepentance then EID:AddConditional(135, EID.IsHardMode, "Hard Mode", {layer = 1}) end -- Hard Mode pays out less

-- Suicide item interactions
EID:AddSynergyConditional({475, "5.300.46"}, {210, 276, 313}, "Suicide 1", "Suicide 2") -- Plan C, Suicide King + Isaac's Heart, Holy Mantle, Gnawed Leaf
if EID.isRepentance then
	EID:AddSynergyConditional({577, 656}, {276, 313}, "Suicide 1", "Suicide 2") -- Damocles + Isaac's Heart, Holy Mantle
	EID:AddSynergyConditional({577, 656, 475, "5.300.46"}, {674, 694}, "Suicide 1", "Suicide 2") -- Damocles, Plan C, Suicide King + Spirit Shackles, Heartbreak
end

-- Actives with certain charge types interactions
-- 9 Volt + 1 Room/Timed
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(1, 0) end, "1 Room")
EID:AddConditional(116, function() return EID:CheckPlayersForActiveChargeType(nil, 1) end, "Timed")
EID:AddConditional("5.100", function(EID, descObj) return EID:CheckActiveChargeType(descObj.ObjSubType, 1, 0, 116) end, "9 Volt 1 Room", { bulletpoint = "Collectible116" })
EID:AddConditional("5.100", function(EID, descObj) return EID:CheckActiveChargeType(descObj.ObjSubType, nil, 1, 116) end, "9 Volt Timed", { bulletpoint = "Collectible116" })
-- Vibrant/Dim Bulb
EID:AddConditional({"5.350.100", "5.350.101"}, EID.CheckForMultipleActives, "Bulb Multiple") -- Vibrant/Dim Bulb + Having multiple actives
EID:AddConditional({"5.350.100", "5.350.101"}, function() return EID:CheckPlayersForActiveChargeType(0, nil, false) end, "Bulb Zero") -- Vibrant/Dim Bulb + Having a 0-charge active
EID:AddConditional("5.350.101", function() return EID:CheckPlayersForActiveChargeType(nil, 1, false) end, "Timed") -- Dim Bulb + Having a timed active
if not EID.isRepentance then
	-- AB+ Sharp Plug oddities
	EID:AddItemConditional(205, {116, 276}, "No Effect") -- Sharp Plug + 9 Volt, Isaac's Heart
	EID:AddItemConditional(205, 108, "Wafer") -- Sharp Plug + The Wafer
	EID:AddSynergyConditional(205, 441, "Can't Charge", "Can't Be Charged") -- Sharp Plug + Mega Blast
end
if EID.isRepentance then
	-- 9 Volt, Sharp Plug + Special Charge Actives
	EID:AddConditional({116, 205}, function() return EID:CheckPlayersForActiveChargeType(nil, 2) end, "Can't Charge")
	EID:AddConditional("5.100", function(EID, descObj) return EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2, 116) end, "Can't Be Charged", { bulletpoint = "Collectible116", variableText = "{{NameOnlyC116}}" })
	EID:AddConditional("5.100", function(EID, descObj) return EID:CheckActiveChargeType(descObj.ObjSubType, nil, 2, 205) end, "Can't Be Charged", { bulletpoint = "Collectible205", variableText = "{{NameOnlyC205}}" })
	-- 4.5 Volt interactions
	EID:AddConditional(647, function() return EID:CheckPlayersForActiveChargeType(nil, 1) end, "4.5 Volt Timed") -- 4.5 Volt + Having a timed active
	EID:AddConditional("5.100", function(EID, descObj) return EID:CheckActiveChargeType(descObj.ObjSubType, nil, 1, 647) end, "4.5 Volt Timed", { bulletpoint = "Collectible647"})
	EID:AddItemConditional(534, 647, "4.5 Volt Multiple") -- Schoolbag + 4.5 Volt
	EID:AddConditional(647, EID.CheckForMultipleChargeableActives, "4.5 Volt Multiple")-- 4.5 Volt + Schoolbag/Pocket Actives
end

-- Sacrificial Altar interactions
EID:AddSynergyConditional(504, 536, "Sacrificial Nugget") -- Sacrificial Altar + Brown Nugget
EID:AddOneSidedSynergyConditional({112, 363, 390}, 536, "Sacrificial Angels") -- Sacrificial Altar + Angel Familiars
EID:AddOneSidedSynergyConditional({412, 413}, 536, "Sacrificial Conception") -- Sacrificial Altar + Cambion/Immaculate Conception
if not EID.isRepentance then
	EID:AddSynergyConditional(477, 536, "Sacrificial Void") -- Sacrificial Altar + Void (AB+ only)
end
if EID.isRepentance then
	EID:AddSynergyConditional(712, 536, "Sacrificial Item Wisps") -- Sacrificial Altar + Lemegeton
	EID:AddSynergyConditional(650, 536, "Sacrificial Plum") -- Sacrificial Altar + Plum Flute
	EID:AddSynergyConditional(661, 536, "Sacrificial Quints") -- Sacrificial Altar + Quints
	EID:AddSynergyConditional(706, 536, "Sacrificial Abyss") -- Sacrificial Altar + Abyss Locusts
	EID:AddSynergyConditional(651, 536, "Sacrificial Star") -- Sacrificial Altar + Star of Bethlehem
	EID:AddSynergyConditional(713, 536, "Sacrificial Clots") -- Sacrificial Altar + Sumptorium
end

-- Miscellaneous Item Synergies
EID:AddSynergyConditional(7, {34, "5.300.16"})                                   -- Martyr + Book of Belial/The Devil
EID:AddSynergyConditional(316, 260)                                              -- Black Candle + Cursed Eye
EID:AddItemConditional("5.300.48", 286, nil, { lineColor = "ColorSilver" })      -- Blank Card + ? Card
EID:AddItemConditional(286, "5.300.48", "? + Blank Pedestal")      -- ? Card + Blank Card
EID:AddSynergyConditional(368, {69, 118, 316, 229, 395, 114, 329}, "Almost No Effect") -- Epiphora + Charge Shots / Ludovico

EID:AddSynergyConditional({127, 297, 347, 475, 483, 490, 515}, 477, "Void Single Use") -- Void + Single Use Actives
if EID.isRepentance then EID:AddSynergyConditional({536, 577, 585, 628, 636}, 477, "Void Single Use") end -- Void + Single Use Actives
EID:AddSynergyConditional({127, 297, 347, 475, 483, 490, 515, 536}, "5.300.48", "? Card Single Use") -- ? Card + Single Use Actives
if EID.isRepentance then EID:AddSynergyConditional({577, 585, 628, 636}, "5.300.48", "? Card Single Use") end -- ? Card + Single Use Actives

EID:AddConditional(521, EID.PlayersHaveRestock) -- Coupon + Restock/Greed
for k,_ in pairs(EID.blackFeatherItems) do EID:AddItemConditional(k, "5.350.80", "Black Feather", {lineColor="BlinkGray"}) end -- Black Feather
for k,_ in pairs(EID.blackFeatherTrinkets) do EID:AddItemConditional("5.350." .. k, "5.350.80", "Black Feather", {lineColor="BlinkGray"}) end -- Black Feather
EID:AddItemConditional("5.70.28", 358) -- Wizard pill + The Wiz
EID:AddItemConditional(523, 477) -- Moving Box is a passive to Void
EID:AddItemConditional({8, 113, 163, 167, 99, 100, 174, 95, 268, 67}, 322, "Mongo Babies") -- Mongo Baby + Copiable familiars
if EID.isRepentance then EID:AddItemConditional(608, 322, "Mongo Babies") end
EID:AddSynergyConditional(261, 222, "Proptosis Anti-Gravity")
EID:AddSynergyConditional(394, 69, "Chocolate Milk Marked")
EID:AddConditional("5.300.5", EID.InStageVoid) -- The Emperor random boss room
EID:AddConditional("5.300.10", EID.InStageNoTreasureRoom) -- The Hermit possibly no shop
EID:AddConditional("5.300.18", EID.InStageNoTreasureRoom, nil, {layer = 3}) -- The Stars possibly no treasure room
EID:AddConditional("5.300.18", EID.IsGreedMode, "Greed", {layer = 2}) -- The Stars random treasure room
EID:AddConditional("5.300.18", EID.InStageTheShop, "Late Greed", {layer = 1}) -- The Stars no treasure room (I probably went too high detail on this)

-- Ghost Pepper / Bird's Eye + farting (The Poop, Kidney Bean, The Bean, The Black Bean, Butter Bean, Wait What?, Mega Bean, No. 2, IBS)
EID:AddSynergyConditional(495, {36, 421, 111, 180, 294, 484, 351, 378}, "Ghost Pepper Fart", nil, {uniqueID = "pepperfart"})
if EID.isRepentance then
	EID:AddSynergyConditional(495, 725, "Ghost Pepper Fart", nil, {uniqueID = "pepperfart"})
	EID:AddSynergyConditional(616, {36, 421, 111, 180, 294, 484, 351, 378, 725}, "Ghost Pepper Fart", nil, {uniqueID = "pepperfart"})
end

-- Damage multipliers not stacking (Cricket's Head, Magic Mushroom, Strength)
EID:AddSynergyConditional({4, 12, "5.300.12"}, {4, 12, "5.300.12"}, "Damage Multiplier Stack", nil, {uniqueID = "multstack"})
-- Poop synergies: The Poop, Re-Lax, Card Against Humanity + Midas' Touch, Hallowed Ground
EID:AddSynergyConditional(36, 543, "White Poop")
EID:AddSynergyConditional({"5.70.31", "5.300.45"}, 543, "White Poop Chance")
EID:AddSynergyConditional({36, "5.70.31", "5.300.45"}, 202, "Golden Poop Chance")
if EID.isRepentance then
	EID:AddSynergyConditional(720, 543, "White Poop Jar")
	EID:AddSynergyConditional(720, 202, "Golden Poop Jar")
end
EID:AddConditional(483, EID.PlayersHaveGoldenBomb)

-- AB+ only misc conditionals
if not EID.isRepentance then
	EID:AddConditional(208, EID.IsHardMode, nil, {noFallback = false}) -- Champion Belt (AB+ Hard Mode)
	
end

-- Rep only misc conditionals
if EID.isRepentance then
	-- Co-op friendly items
	EID:AddConditional({45, "5.350.125"}, EID.MultiplePlayerCharacters) -- Yum Heart, Extension Cord
	EID:AddConditional({"1000.76.1", "1000.76.6"}, EID.MultiplePlayerCharacters) -- Dice Room 1 and 6
	
	-- Item Synergies
	EID:AddItemConditional(201, 147)                     -- Iron Bar refills Notched Axe
	EID:AddItemConditional("5.350.172", 260)             -- Black Candle + Cursed Penny
	EID:AddItemConditional(260, "5.350.172")             -- Cursed Penny + Black Candle
	EID:AddItemConditional(501, 416)                     -- Greed's Gullet + Deep Pockets
	EID:AddSynergyConditional(245, { 2, 153, 169 }, nil, "20/20") -- 20/20 + The Inner Eye, Mutant Spider, Polyphemus
	EID:AddSynergyConditional(596, {"5.350.118", 704, 62, "5.350.60", 520, 411, 621, "5.350.58", "5.350.189", 657}, "Ice Tears") -- Uranus + On Kill Effects
	EID:AddPlayerConditional(596, 27, "Ice Tears") -- Uranus + Tainted Samson
	EID:AddSynergyConditional(495, 616, "Both Peppers") -- Ghost Pepper + Bird's Eye
	EID:AddSynergyConditional(726, {408, 646, 293, 679, 275, 399, 680, 441, 49, 533}, "Hemoptysis") -- Hemoptysis + Brimstone effects
	
	-- eye drops + chargeable passives like brimstone could go here but there's a lot of them
	EID:AddPlayerConditional(600, {2, 7, 13, 16}) -- Eye Drops + Cain, Azazel, Lilith, Forgotten
	EID:AddSynergyConditional(152, {708, 444}, "Technology 2 One Eye") -- Technology 2 + Stapler, Lead Pencil
	EID:AddConditional(482, EID.CheckForTaintedPlayer)
	EID:AddItemConditional(297, "5.350.175", "PandorasBoxStrangeKeyEffect", {noTable = true})
	
	-- Jacob's Ladder / 120 Volt battery synergies
	EID:AddSynergyConditional({494, 559}, {205, 356}, "Sparks Damage")
	EID:AddSynergyConditional({494, 559}, {116, "5.350.72", "5.350.120"}, "Sparks Arc Length")
	EID:AddSynergyConditional({494, 559}, {63, 520, "5.350.3"}, "Sparks Arc Count")
	EID:AddSynergyConditional({494, 559}, {"5.350.143"}, "Sparks Arc Back")
end
