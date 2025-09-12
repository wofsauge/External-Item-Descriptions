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
	[5] = {"5", "Purple Heart", "2x chance for champion enemies#Champion enemies drop more loot"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Rosary Bead", "{{AngelChance}} 50% higher Angel Room chance#{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries#Forces {{DevilChance}}Devil Deals to be {{AngelChance}}Angel Deals"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "Mom's Toenail", "Mom's Foot stomps a random spot in the room every 20 seconds#Dropping the trinket in combat will cause Mom's Foot to stomp its location"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Missing Poster", "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping" }, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "Lazy Worm", "↑ {{Damage}} +0.5 Damage#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = {"70", "Louse", "Spawns a blue spider on room clear"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "Poker Chip", "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "Karma", "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#Also affects Beggar donations and Restock machines"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "Child Leash", "Familiars stay closer to Isaac#{{Damage}} Familiars gain small damage multiplier"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Used Diaper", "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Tonsil", "Taking damage 6-12 times spawns a projectile blocking familiar#Caps at 2 familiars" }, -- Tonsil
	-- Change: Added +2 Tears
	[103] = {"103", "Equality!", "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"}, -- Equality!
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Short Fuse", "Isaac's bombs explode faster#Bombs deal 15% more damage" }, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = { "104", "Wish Bone", "5% chance to get destroyed and spawn a pedestal item when hit" }, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "Bag Lunch", "{{Collectible22}} 5% chance to get destroyed and spawn Lunch when hit" }, -- Bag Lunch
	-- Change: Added coin type based information
	[172] = {"172", "Cursed Penny", "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
		"{{HealingRed}} Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping",
		"{{HealingRed}} Heals {{ColorGold}}3{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

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
