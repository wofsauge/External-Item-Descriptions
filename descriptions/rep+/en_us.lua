---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "en_us"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "Lemon Mishap", "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Dead Bird", "Taking damage spawns a bird that attacks enemies#The bird deals 4.3 contact damage per second#Persists between rooms if player is at 1/2 hearts" }, -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "Pageant Boy", "{{Coin}} Spawns 7 random coins#Spawns a random penny trinket" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "Blood Rights", "Deals 40 damage to every enemy#{{Tears}} +0.48 fire rate for current room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first" }, -- Blood Rights
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Punching Bag", "Decoy familiar#Enemies target him instead of Isaac#Blocks enemy tears" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "The Ludovico Technique", "↑ {{Shotspeed}} +0.2 Shot speed#Replaces Isaac's tears with one giant controllable tear" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Bean", "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks" }, -- Mega Bean
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[420] = { "420", "Black Powder", "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished" }, -- Black Powder
	-- Change: Complete rewrite
	[436] = { "436", "Milk!", "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor" }, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "Linger Bean", "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it" }, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Hushy", "Bounces around the room#Deals 30 contact damage per second#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears" }, -- Hushy
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[475] = { "475", "Plan C", "Deals 9,999,999 damage to all enemies#{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother" }, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Dataminer", "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Clicker", "Changes your character to a random character#50% chance of removing the most recent item collected" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirious", "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time" }, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "2Spooky", "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed#{{Fear}} Fears enemies in a small radius around Isaac" }, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "It Hurts", "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Jupiter", "↑ {{EmptyHeart}} +2 Empty heart containers#↓ {{Speed}} -0.3 Speed#{{HealingRed}} Heals 2 heart#{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity" }, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "Evil Charm", "↑ {{Luck}} +2 Luck#Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep" }, -- Evil Charm
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "Revelation", "Flight#{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears" }, -- Revelation
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Star of Bethlehem", "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#↑ {{Tears}} x2.5 Tears multiplier#↑ {{Damage}} x1.2 Damage multiplier#Homing tears#50% chance to ignore damage" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Card Reading", "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop" }, -- Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "Lil Portal", "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run" }, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Jar of Wisps", "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abyss", "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "Purple Heart", "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Rosary Bead", "{{AngelChance}} 50% higher Angel Room chance#{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries#Forces {{DevilChance}}Devil Deals to be {{AngelChance}}Angel Deals"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "Mom's Toenail", "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Missing Poster", "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping" }, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "Lazy Worm", "↑ {{Damage}} +0.5 Damage#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = {"70", "Louse", "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "Poker Chip", "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "Karma", "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "Child Leash", "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Used Diaper", "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Tonsil", "Taking damage 6-12 times spawns a projectile blocking familiar#Disappears after spawning 2 familiars" }, -- Tonsil
	-- Change: Added +2 Tears
	[103] = {"103", "Equality!", "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"}, -- Equality!
	-- Change: "2%" to "5%"
	[104] = { "104", "Wish Bone", "5% chance to get destroyed and spawn a pedestal item when hit" }, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "Bag Lunch", "{{Collectible22}} 5% chance to get destroyed and spawn Lunch when hit" }, -- Bag Lunch
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Short Fuse", "Isaac's bombs explode faster#Bombs deal 15% more damage" }, -- Short Fuse
	-- Change: added "Removes Tick"
	[135] = {"135", "A Lighter", "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"}, -- A Lighter
	-- Change: Added coin type based information
	[172] = {"172", "Cursed Penny", "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Purple Heart (find replace):
	[5] = { 2, 3, 4,  50, 66, 75 },
	-- Callus (append):
	[14] = { "{{SacrificeRoom}} Reduces the damage of sacrifice room spikes to half a heart", "{{Collectible108}} Reduces most damage taken to half a heart" },
	-- Mom's Toenail (find replace):
	[16] = {"location", "{{CR}}location {{ColorGold}}twice", "{{CR}}location {{ColorGold}}3 times"},
	-- Paper Clip (find replace):
	[19] = {"Gold chests", "{{CR}}Gold chests {{ColorGold}}and Locked Blocks", "{{CR}}Gold chests, {{ColorGold}}Locked Blocks and Locked Doors"},
	-- Mysterious Paper (find replace):
	[21] = {"the effect of", "{{ColorGold}}two{{CR}} of the following effects", "{{ColorGold}}two{{CR}} of the following effects"},
	-- Daemon's Tail (append):
	[22] = {"{{BlackHeart}} Blue and Purple Fireplaces will now drop black hearts"},
	-- Missing Poster (find replace):
	[23] = { 33, 66, 100 },
	-- Broken Ankh (find replace):
	[28] = { 22, 33, 50 },
	-- Pinky Eye (find replace):
	[30] = { 10, 20, 33 },
	-- Push Pin (find replace):
	[31] = { 10, 20, 33 },
	-- Umbilical Cord (find replace):
	[33] = {"half a Red Heart", "a heart", "one and a half hearts"},
	-- Child's Heart (find replace):
	[34] = { 10, 20, 50,  33, 66, 100 },
	-- Rusted Key (find replace):
	[36] = { 10, 20, 50,  33, 66, 100 },
	-- Mom's Pearl (find replace):
	[38] = { 10, 20, 20 },
	-- Red Patch (find replace):
	[40] = { 20, 33, 50 },
	-- Match Stick (find replace):
	[41] = { 10, 20, 50,  33, 66, 100 },
	-- Cursed Skull (replace):
	[43] = {
		"When damaged down to half a heart or less, Isaac is teleported to a {{ColorGold}}special{{CR}} room",
		"When damaged down to {{ColorGold}}one heart{{CR}} or less, Isaac is teleported to a {{ColorGold}}special{{CR}} room",
	},
	-- Safety Cap (find replace):
	[44] = { 10, 20, 50,  33, 66, 100 },
	-- Ace of Spades (find replace):
	[45] = { 10, 20, 50,  33, 66, 100 },
	-- Bloody Penny (find replace):
	[49] = { 25, 50, 75 },
	-- Burnt Penny (find replace):
	[50] = { 25, 50, 75 },
	-- Flat Penny (find replace):
	[51] = { 25, 50, 75 },
	-- Counterfeit Penny (find replace):
	[52] = {"another coin", "{{ColorGold}}2{{CR}} coins", "{{ColorGold}}3{{CR}} coins"},
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}} Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
		"{{HealingRed}} Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}} Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping",
		"{{HealingRed}} Heals {{ColorGold}}3{{CR}} hearts when entering a {{BossRoom}} Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
	},
	-- Isaac's Head (find replace):
	[54] = {"3.5 damage", "Isaac's damage", "1.5x Isaac's damage"},
	-- Judas' Tongue (replace):
	[56] = {
		"{{DevilRoom}} Reduces {{ColorGold}}all{{CR}} devil deal prices to 1 heart container",
		"{{DevilRoom}} Reduces {{ColorGold}}all{{CR}} devil deal prices to 1 heart container#{{ColorGold}}Forces sacrifice spike deals to pay out on the first attempt"
	},
	-- ???'s Soul (find replace):
	[57] = {"Familiar that bounces", "{{CR}}Grants {{ColorGold}}2 {{CR}}familiars that bounce", "{{CR}}Grants {{ColorGold}}3 {{CR}}familiars that bounce"},
	-- Samson's Lock (find replace):
	[58] = { 6.66, 13, 25 },
	-- Eve's Bird Foot (find replace):
	[60] = { 5, 10, 15 },
	-- The Left Hand (append):
	[61] = {
		"{{RedChest}} Red Chests will now contain extra loot",
		"{{RedChest}} Red Chests will now contain extra loot#{{ColorGold}}Red Chests will no longer spawn Red Spiders",
	},
	-- Shiny Rock (replace):
	[62] = {
		"Crawlspace rocks, tinted rocks {{ColorGold}}and secret/super secret room doors{{CR}} blink every 10 seconds",
		"Crawlspace rocks, tinted rocks {{ColorGold}}and secret/super secret room doors{{CR}} blink every {{ColorGold}}5{{CR}} seconds",
	},
	-- Safety Scissors (append):
	[63] = {
		"Reduces enemy explosion radius",
		"Greatly reduces enemy explosion radius",
	},
	-- Cracked Dice (find replace):
	[67] = { 50, 75, 100 },
	-- Super Magnet (find replace):
	[68] = {"pickups and enemies", "{{CR}}pickups, enemies, {{ColorGold}}sacks and trinkets", "{{CR}}pickups, enemies, {{ColorGold}}sacks, trinkets and chests"},
	-- Louse (find replace):
	[70] = {"a blue spider", "2{{CR}} blue spiders", "3{{CR}} blue spiders"},
	-- Bob's Bladder (appendix):
	[71] = {"Increased creep size", "Increased creep size and duration"},
	-- Poker Chip (append):
	[76] = {"{{Slotmachine}} Doubles payouts from gambling", "{{Slotmachine}} Triples payouts from gambling"},
	-- Endless Nameless (find replace):
	[79] = { 25, 33, 50 },
	-- Store Key (append):
	[83] = {"{{Shop}} Prevents shops from using low-quality layouts", "{{Shop}} Upgrades shop layouts"},
	-- Rib of Greed (append):
	[84] = {"{{Coin}} Increased chance of double pennies, nickels, dimes, lucky pennies, and golden pennies"},
	-- Karma (find replace):
	[85] = {"1 luck", "2{{CR}} luck", "3{{CR}} luck"},
	-- Mom's Locket (find replace):
	[87] = {"half a heart", "a heart", "one and a half hearts"},
	-- Child Leash (find replace):
	[89] = { 25, 50, 75 },
	-- Meconium (find replace):
	[91] = { 33, 66, 100,  5, 7, 10 },
	-- Used Diaper (find replace):
	[93] = {"1 blue fly", "2{{CR}} blue flies", "3{{CR}} blue flies"},
	-- Fish Tail (append):
	[94] = {"20% chance to spawn 3 blue flies / spiders", "20% chance to spawn 4 blue flies / spiders"},
	-- Black Tooth (find replace):
	[95] = { 3, 6, 9 },
	-- Tonsil (find replace):
	[97] = {"2 familiars", "3{{CR}} familiars", "4{{CR}} familiars"},
	-- Nose Goblin (replace):
	[98] = {
		"{{ColorGold}}20{{CR}}% chance to shoot a sticky tear#{{ColorGold}}75{{CR}}% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 10 seconds",
		"{{ColorGold}}30{{CR}}% chance to shoot a sticky {{ColorGold}}homing{{CR}} tear#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 10 seconds",
	},
	-- Super Ball (find replace):
	[99] = { 10, 20, 33 },
	-- Fragmented Card (append):
	[102] = {"{{SecretRoom}} Reveals the location of one secret room", "{{SecretRoom}} Reveals the location of both secret rooms"},
	-- Equality (find replace):
	[103] = { 2, 4, 6 },
	-- Wish Bone (find replace):
	[104] = { 5, 10, 15 },
	-- Bag Lunch (find replace):
	[105] = { 5, 10, 15 },
	-- Lost Cork
	[106] = {"Increases", "Greatly{{CR}} increases"},
	-- Crow Heart (append):
	[107] = {
		"{{AngelDevilChance}} 25% chance of not reducing Devil/Angel Room chance after taking Red Heart damage",
		"{{AngelDevilChance}} 50% chance of not reducing Devil/Angel Room chance after taking Red Heart damage",
	},
	-- Walnut (find replace):
	[108] = {
		"a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket",
		"2{{CR}} random {{UnknownHeart}} hearts, {{Coin}} coins, {{Key}} keys and {{Trinket}} trinkets",
		"3{{CR}} random {{UnknownHeart}} hearts, {{Coin}} coins, {{Key}} keys and {{Trinket}} trinkets",
	},
	-- Duct Tape (append):
	[109] = {"Tapping the drop button will cycle trough various familiar formations"},
	-- Silver Dollar (find replace):
	[110] = {"Shops", "Upgraded shops"},
	-- Bloody Crown (append):
	[111] = {"They will contain 2 Items for Isaac to choose from"},
	-- Pay To Win (append):
	[112] = {"{{RestockMachine}} Restock boxes are less likely to blow up"},
	-- Locust of War (find replace):
	[113] = {"an exploding attack fly", "2{{CR}} exploding attack flies", "3{{CR}} exploding attack flies"},
	-- Locust of Pestilence (find replace):
	[114] = {"a poison attack fly", "2{{CR}} poison attack flies", "3{{CR}} poison attack flies"},
	-- Locust of Famine (find replace):
	[115] = {"a slowing attack fly", "2{{CR}} slowing attack flies", "3{{CR}} slowing attack flies"},
	-- Locust of Death (find replace):
	[116] = {"an attack fly", "2{{CR}} attack flies", "3{{CR}} attack flies"},
	-- Locust of Conquest (full replace):
	[117] = {
		"{{CR}}Entering a hostile room spawns {{ColorGold}}2-5{{CR}} attack flies#Each fly deals 2x Isaac's damage",
		"{{CR}}Entering a hostile room spawns {{ColorGold}}3-7{{CR}} attack flies#Each fly deals 2x Isaac's damage",
	},
	-- Bat Wing (find replace):
	[118] = { 5, 10, 15 },
	-- Stem Cell (find replace):
	[119] = {"half", "all"},
	-- Hairpin (find replace):
	[120] = {"fully recharges", "overcharges"},
	-- Wooden Cross (find replace):
	[121] = {"a Holy shield", "2{{CR}} Holy shields"},
	-- Butter! (find replace):
	[122] = { 2, 4, 6},
	-- Filigree Feather (append):
	[123] = {"Angel bosses will also drop a half soul heart", "Angel bosses will also drop a soul heart"},
	-- Door Stop (append):
	[124] = {"Also keeps Boss Rush doors open", "Also keeps Boss Rush / Challenge Room doors open"},
	-- Extension Cord (find replace):
	[125] = { 6, 12, 18 },
	-- Rotten Penny (find replace):
	[126] = {"a blue fly", "2{{CR}} blue flies", "3{{CR}} blue flies"},
	-- Baby-Bender (append):
	[127] = {"Also grants them the {{Trinket144}} Brain Worm effect", "Also grants them the {{Trinket144}} Brain Worm and {{Trinket65}} Tape Worm effects"},
	-- Finger Bone (find replace):
	[128] = { 4, 8, 12 },
	-- Jawbreaker (find replace):
	[129] = { 10, 20, 30 },
	-- Chewed Pen (find replace):
	[130] = { 10, 20, 30 },
	-- Blessed Penny (find replace):
	[131] = { 17, 25, 30 },
	-- Short Fuse (find replace):
	[133] = { 15, 30, 50 },
	-- Gigante Bean (append)
	[134] = {"Increases fart knockback", "Increases fart knockback#{{ColorGold}}Farts confuses enemies for 3 seconds"},
	-- A Lighter (find replace):
	[135] = { 20, 33, 50 },
	-- Broken Padlock (find replace):
	[136] = {"Doors, key blocks and golden chests", "{{CR}}Doors, key blocks, golden chests, {{ColorGold}}Arcades and Challenge rooms", "{{CR}}Doors, key blocks, golden chests, {{ColorGold}}Arcades, Challenge and Boss rooms"},
	-- Myosotis (find replace):
	[137] = { 4, 6, 8 },
	-- 'M (append):
	[138] = {"10% chance of fully charging the rolled item", "20% chance of fully charging the rolled item"},
	-- Apple of Sodom (find replace):
	[140] = {"picked up Red Hearts", "any {{CR}}picked up Hearts"},
	-- Forgotten Lullaby (find replace):
	[141] = { 2, 2.5, 3 },
	-- Brain Worm (append):
	[144] = {"25% chance to shoot piercing tears", "50% chance to shoot piercing tears"},
	-- Devil’s Crown (append):
	[146] = {"{{Trinket174}} 25% chance for the Red Treasure room to be upgraded", "{{Trinket174}} 33% chance for the Red Treasure room to be upgraded"},
	-- Charged Penny (find replace):
	[147] = {"1 charge", "2{{CR}} charges", "3{{CR}} charges"},
	-- Friendship Necklace (append):
	[148] = {"Increases familiar orbit speed", "Greatly increases familiar orbit speed"},
	-- Panic Button (append):
	[149] = {"10% chance to use the active item for free", "20% chance to use the active item for free"},
	-- Blue Key (append):
	[150] = {"Doubles rewards from clearing blue rooms", "Triples rewards from clearing blue rooms"},
	-- Flat File (append):
	[151] = {"Also affects Bosses, Grudges, and Ball & Chain"},
	-- Telescope Lens (full replace):
	[152] = {
		"{{PlanetariumChance}} +18{{CR}}% Planetarium chance#Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse",
		"{{PlanetariumChance}} +33{{CR}}% Planetarium chance#Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb, Corpse, {{ColorGold}}Sheol and the Cathedral",
	},
	-- Holy Crown (full replace):
	[155] = {
		"{{CR}}Spawns a {{TreasureRoom}} Treasure Room and a {{ColorGold}}upgraded{{CR}} {{Shop}} Shop in Cathedral#{{ColorGold}}Cathedral treasure rooms will contain 2 Items for Isaac to choose from",
		"{{CR}}Spawns a {{TreasureRoom}} Treasure Room and a {{ColorGold}}upgraded{{CR}} {{Shop}} Shop in Cathedral#{{ColorGold}}Cathedral treasure rooms will contain 2 Items for Isaac to choose from#{{ColorGold}}Reveals the location of the Treasure Room and Shop in Cathedral",
	},
	-- Torn Card (find replace):
	[157] = { 15, 10, 5 },
	-- Torn Pocket (find replace):
	[158] = { 2, 3, 4 },
	-- Gilded Key (full replace copying the entire original description, because the Golden version doesn't give a key on pickup):
	[159] = {
		"{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets#{{GoldenChest}} {{ColorGold}}+10% chance to get a chest after clearing a room",
		"{{Key}} +1 Key on pickup#{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets#{{GoldenChest}} {{ColorGold}}+10% chance to get a chest after clearing a room",
		"{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets#{{GoldenChest}} {{ColorGold}}+20% chance to get a chest after clearing a room"
	},
	-- Wicked Crown (full replace):
	[161] = {
		"{{CR}}Spawns a {{TreasureRoom}} Treasure Room and a {{ColorGold}}upgraded{{CR}} {{Shop}} Shop in Sheol#{{ColorGold}}Sheol treasure rooms will contain 2 Items for Isaac to choose from",
		"{{CR}}Spawns a {{TreasureRoom}} Treasure Room and a {{ColorGold}}upgraded{{CR}} {{Shop}} Shop in Sheol#{{ColorGold}}Sheol treasure rooms will contain 2 Items for Isaac to choose from#{{ColorGold}}Reveals the location of the Treasure Room and Shop in Sheol",
	},
	-- Nuh Uh! (append):
	[165] = {"+10% chance for double pickups to spawn", "+20% chance for double pickups to spawn"},
	-- Polished Bone (find replace):
	[167] = { 25, 33, 50 },
	-- Keeper’s Bargain (full replace):
	[171] = {
		"{{DevilRoom}} 100{{CR}}% chance for devil deals to cost coins instead of hearts",
		"{{DevilRoom}} 100{{CR}}% chance for devil deals to cost coins instead of hearts#{{ColorGold}}Increases chance of Devil deals being on sale",
	},
	-- Cursed Penny (append):
	[172] = {"Increased chance of being teleported into a special room"},
	-- Your Soul (append):
	[173] = {"10% chance to not consume the trinket", "20% chance to not consume the trinket"},
	-- Number Magnet (find replace):
	[174] = { 10, 15, 20 },
	-- Strange Key (full replace):
	[175] = {
		"Opens the door to the Hush floor regardless of the timer#Using {{Collectible297}} Pandora's Box consumes the key and spawns {{ColorGold}}8{{CR}} items from random pools#{{ColorGold}}Allows to open all doors and chests on the Hush floor for free",
		"Opens the door to the Hush floor regardless of the timer#Using {{Collectible297}} Pandora's Box consumes the key and spawns {{ColorGold}}10{{CR}} items from random pools#{{ColorGold}}Allows to open all doors and chests on the Hush floor for free",
	},
	-- Temporary Tattoo (append):
	[177] = {"Permanently increases a random stat upon completing a Challenge room", "Permanently increases 2 random stats upon completing a Challenge room"},
	-- RC Remote (append):
	[179] = {"Familiars will deal 2 contact damage per tick", "Familiars will deal 5 contact damage per tick"},
	-- Found Soul (find replace):
	[180] = {50, 75, 100},
	-- Expansion Pack (full replace):
	[181] = {
		"Using an active item triggers the effect of {{ColorGold}}2{{CR}} additional 1-2 charge active items",
		"Using an active item triggers the effect of {{ColorGold}}2{{CR}} additional 1-2 charge active items#{{ColorGold}}Also triggers the effect of a 3 charge active item",
	},
	-- Beth’s Essence (append):
	[182] = {"50% chance for Angel room wisps to be special#{{ColorGold}}Beggars will spawn special wisps", "100% chance for Angel room wisps to be special#{{ColorGold}}Beggars will spawn special wisps"},
	-- Adoption Papers (append):
	[184] = {"Familiars will always be on sale", "Familiars will always be on sale#{{Card92}} {{ColorGold}}Shops will be able to sell \"Soul of Lilith\""},
	-- Ice Cube (find replace):
	[188] = { 20, 33, 50 },
	-- Sigil of Baphomet (find replace):
	[189] = { 1, 1.5, 2 },
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

----- Golden Trinkets Data -----

local goldenTrinketData = {
	[5] = {findReplace = true}, -- Purple Heart
	[14] = {append = true}, -- Callus
	[16] = {findReplace = true}, -- Mom's Toenail
	[19] = {findReplace = true}, -- Paper Clip
	[21] = {findReplace = true}, -- Mysterious Paper
	[22] = {append = true}, -- Daemon's Tail
	[23] = {findReplace = true}, -- Missing Poster
	[28] = {findReplace = true}, -- Broken Ankh
	[30] = {findReplace = true}, -- Pinky Eye
	[31] = {findReplace = true}, -- Push Pin
	[33] = {findReplace = true}, -- Umbilical Cord
	[34] = {findReplace = true}, -- Child's Heart
	[36] = {findReplace = true}, -- Rusted Key
	[38] = {findReplace = true}, -- Mom's Pearl
	[40] = {findReplace = true}, -- Red Patch
	[41] = {findReplace = true}, -- Match Stick
	[43] = {fullReplace = true}, -- Cursed Skull
	[44] = {findReplace = true}, -- Safety Cap
	[45] = {findReplace = true}, -- Ace of Spades
	[49] = {findReplace = true}, -- Bloddy Penny
	[50] = {findReplace = true}, -- Burnt Penny
	[51] = {findReplace = true}, -- Flat Penny
	[52] = {findReplace = true}, -- Counterfeit Penny
	[54] = {findReplace = true}, -- Isaac's Head
	[56] = {fullReplace = true}, -- Judas' Tongue
	[57] = {findReplace = true}, -- ???'s Soul
	[58] = {findReplace = true}, -- Samson's Lock
	[60] = {findReplace = true}, -- Eve's Bird Foot
	[61] = {append = true}, -- The Left Hand
	[62] = {fullReplace = true}, -- Shiny Rock
	[63] = {append = true}, -- Safety Scissors
	[67] = {findReplace = true}, -- Cracked Dice
	[68] = {findReplace = true}, -- Super Magnet
	[70] = {findReplace = true}, -- Louse
	[71] = {append = true}, -- Bob's Bladder
	[76] = {append = true}, -- Poker Chip
	[79] = {findReplace = true}, -- Endless Nameless
	[83] = {append = true}, -- Store Key
	[84] = {append = true}, -- Rib of Greed
	[85] = {findReplace = true}, -- Karma
	[87] = {findReplace = true}, -- Mom's Locket
	[89] = {findReplace = true}, -- Child Leash
	[91] = {findReplace = true}, -- Meconium
	[93] = {findReplace = true}, -- Used Diaper
	[94] = {append = true}, -- Fish Tail
	[95] = {findReplace = true}, -- Black Tooth
	[97] = {findReplace = true}, -- Tonsil
	[98] = {fullReplace = true}, -- Nose Goblin
	[99] = {findReplace = true}, -- Super Ball
	[102] = {append = true}, -- Fragmented Card
	[103] = {findReplace = true}, -- Equality!
	[104] = {findReplace = true}, -- Wish Bone
	[105] = {findReplace = true}, -- Bag Lunch
	[106] = {append = true}, -- Lost Cork
	[107] = {append = true}, -- Crow Heart
	[108] = {findReplace = true}, -- Wallnut
	[109] = {append = true}, -- Duct Tape
	[110] = {findReplace = true}, -- Silver Dollar
	[111] = {append = true}, -- Bloody Crown
	[112] = {append = true}, -- Pay To Win
	[113] = {findReplace = true}, -- Locust of War
	[114] = {findReplace = true}, -- Locust of Pestilence
	[115] = {findReplace = true}, -- Locust of Famine
	[116] = {findReplace = true}, -- Locust of Death
	[117] = {fullReplace = true}, -- Locust of Conquest
	[118] = {findReplace = true}, -- Bat Wing
	[119] = {findReplace = true}, -- Stem Cell
	[120] = {findReplace = true}, -- Hairpin
	[121] = {findReplace = true}, -- Wooden Cross
	[122] = {findReplace = true}, -- Butter!
	[123] = {append = true}, -- Filigree Feather
	[124] = {append = true}, -- Door Stop
	[125] = {findReplace = true}, -- Extension Cord
	[126] = {findReplace = true}, -- Rotten Penny
	[127] = {append = true}, -- Baby-Bender
	[128] = {findReplace = true}, -- Finger Bone
	[129] = {findReplace = true}, -- Jawbreaker
	[130] = {findReplace = true}, -- Chewed Pen
	[131] = {findReplace = true}, -- Blessed Penny
	[133] = {findReplace = true}, -- Short Fuse
	[134] = {append = true}, -- Gigante Bean
	[135] = {findReplace = true}, -- A Lighter
	[136] = {findReplace = true}, -- Broken Padlock
	[137] = {findReplace = true}, -- Myosotis
	[138] = {append = true}, -- 'M
	[140] = {findReplace = true}, -- Apple of Sodom
	[141] = {findReplace = true}, -- Forgotten Lullaby
	[144] = {append = true}, -- Brain Worm
	[146] = {append = true}, -- Devil’s Crown
	[147] = {findReplace = true}, -- Charged Penny
	[148] = {append = true}, -- Friendship Necklace
	[149] = {append = true}, -- Panic Button
	[150] = {append = true}, -- Blue Key
	[151] = {append = true}, -- Flat File
	[152] = {fullReplace = true}, -- Telescope Lens
	[155] = {fullReplace = true}, -- Holy Crown
	[157] = {findReplace = true}, -- Torn Card
	[158] = {findReplace = true}, -- Torn Pocket
	[159] = {fullReplace = true}, -- Gilded Key
	[161] = {fullReplace = true}, -- Wicked Crown
	[165] = {append = true}, -- Nuh Uh!
	[167] = {findReplace = true}, -- Polished Bone
	[171] = {fullReplace = true}, -- Keeper’s Bargain
	[172] = {append = true}, -- Cursed Penny
	[173] = {append = true}, -- Your Soul
	[174] = {findReplace = true}, -- Number Magnet
	[175] = {fullReplace = true}, -- Strange Key
	[177] = {append = true}, -- Temporary Tattoo
	[179] = {append = true}, -- RC Remote
	[180] = {findReplace = true}, -- Found Soul
	[181] = {fullReplace = true}, -- Expansion Pack
	[182] = {append = true}, -- Beth’s Essence
	[184] = {append = true}, -- Adoption Papers
	[188] = {findReplace = true}, -- Ice Cube
	[189] = {findReplace = true}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(goldenTrinketData, EID.descriptions[languageCode].goldenTrinketData)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - Wheel of Fortune", "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game" }, -- X - Wheel of Fortune
	-- Change: Added stone enemies and shields
	[32] = {"32", "Hagalaz", "Destroy all rocks and stone enemies in the room"}, -- Hagalaz
	-- Change: Complete rewrite
	[38] = { "38", "Berkano", "{{Collectible706}} Summons 3 Abyss locusts for the room" }, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = { " a Slot Machine", " 2 {{CR}}Slot Machines", " it ", " {{CR}}each ", " it ", " {{CR}}each " }, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	-- Change: Teleports to a special room instead of a random room
	[20] = {"19", "Telepills", "Teleports Isaac to a special room"}, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnesia", "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills" }, -- Amnesia
	-- Change: Added full heal information
	[29] = {"28", "Percs!", "{{HealingRed}} Full health#{{Timer}} Reduces all damage taken to half a heart for the room"}, -- Percs!
	-- Change: Added broken heart
	[30] = {"29", "Addicted!", "{{BrokenHeart}} +1 Broken Heart#{{Timer}} Increases all damage taken to a full heart for the room"}, -- Addicted!
	-- Change: Added additional curses information
	[32] = {"31", "???", "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"}, -- ???
	-- Change: affects whole floor
	[42] = {"41", "I'm Drowsy...", "{{Slow}} Slows Isaac and all enemies for the whole floor"}, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = {"42", "I'm Excited!!", "Speeds up Isaac and all enemies for the whole floor"}, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = {"43", "Gulp!", "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"}, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "Spawns 2 airstrikes", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "Spawns 2 flames", -- The Candle
	-- Added info regarding doubled attack
	[289] = "Spawns 2 flames", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {15, 23}, -- Mega Blast
	-- Added info regarding doubled familiar
	[728] = "Spawns 2 demon familiars", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Bleeding hearts only provide half the charge of a regular heart container", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} A Cube of Meat","{{Collectible207}} Ball of Bandages"}, -- Potato Peeler with Ball of Bandages
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Spawns 16 locusts with different colors and effects", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "Necromancer" -- Add Necromancer transformation


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
