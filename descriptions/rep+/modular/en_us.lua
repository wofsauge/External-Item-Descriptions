---------- Collectibles ----------
local C_ID = "5.100."
local additionalCollectibleInformations = {
	-- Change: added "Creep persists until you exit the room"
	[C_ID .. 56] = "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room", -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[C_ID .. 117] = "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts", -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[C_ID .. 141] = "Spawns a random penny trinket", -- Pageant Boy
	-- Change: Complete rewrite
	[C_ID .. 351] = "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks" , -- Mega Bean
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[C_ID .. 420] = "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished" , -- Black Powder
	-- Change: Complete rewrite
	[C_ID .. 436] = "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor" , -- Milk!
	-- Change: Complete rewrite
	[C_ID .. 447] = "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it" , -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[C_ID .. 470] = "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears" , -- Hushy
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[C_ID .. 475] = "{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother" , -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[C_ID .. 481] = "{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room" , -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[C_ID .. 482] = "Changes your character to a random character#50% chance of removing the most recent item collected" , -- Clicker
	-- Change: Complete rewrite
	[C_ID .. 510] = "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time", -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[C_ID .. 560] = "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact", -- It Hurts
	-- Change: Added ring of fire on impact description
	[C_ID .. 593] = "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact", -- Mars
	-- Change: Complete rewrite
	[C_ID .. 632] = "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep", -- Evil Charm
	-- Change: Added Shop as a new destination
	[C_ID .. 660] = "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop", -- Card Reading
	-- Change: Complete rewrite
	[C_ID .. 681] = "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run", -- Lil Portal
	-- Change: Added into for first usage
	[C_ID .. 685] = "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12", -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[C_ID .. 706] = "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x", -- Abyss

	
}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)


local T_ID = "5.350."
local additionalTrinketInformations = {
	-- Change: Added champion loot information
	[T_ID .. 5] = "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot", -- Purple Heart
-- Change: Added info about devil deals
	[T_ID .. 7] = "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries#Forces {{DevilChance}}Devil Deals to be {{AngelChance}}Angel Deals", -- Rosary Bead
-- Change: added info about dropping the item
	[T_ID .. 16] = "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location", -- Mom's Toenail
-- Change: added Super Secret Room info
	[T_ID .. 23] = "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor", -- Missing Poster
-- Change: added ", {{Trinket135}} A Lighter"
	[T_ID .. 53] = "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping", -- Tick
-- Change: Complete rewrite
	[T_ID .. 70] = "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear", -- Louse
-- Change: Added more loot information
	[T_ID .. 76] = "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool", -- Poker Chip
-- Change: Added additional effects
	[T_ID .. 85] = "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines", -- Karma
-- Change: Added damage up information
	[T_ID .. 89] = "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage", -- Child Leash
-- Change: 33% chance, Spawns blue fly on new room
	[T_ID .. 93] = "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room", -- Used Diaper
-- Change: now affected by luck
	[T_ID .. 99] = "{VAR:LUCKCHANCE}% chance to shoot bouncing tears", -- Super Ball
-- Change: Added +2 Tears
	[T_ID .. 103] = "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups", -- Equality!
-- Change: added "Bombs deal 15% more damage"
	[T_ID .. 133] = "Isaac's bombs explode faster#Bombs deal 15% more damage", -- Short Fuse
-- Change: added "Removes Tick"
	[T_ID .. 135] = "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick", -- A Lighter
-- Change: Added coin type based information
	[T_ID .. 172] = "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type", -- Cursed Penny
}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
-- Change: Added "1% chance for it to be a Crane Game"
[Card_ID .. 11] = "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game", -- X - Wheel of Fortune
-- Change: Added stone enemies and shields
[Card_ID .. 32] = "Destroy all rocks and stone enemies in the room", -- Hagalaz
-- Change: Complete rewrite
[Card_ID .. 38] = "{{Collectible706}} Summons 3 Abyss locusts for the room", -- Berkano
}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------
local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG

local additionalPillInformations = {
    ---------- Horse Pills ----------
	-- Change: Teleports to a special room instead of a random room
	[Pill_ID .. (HorseID + 20)] = "Teleports Isaac to a special room", -- Telepills
	-- Change: Forgets all previously identified pills
	[Pill_ID .. (HorseID + 26)] = "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills", -- Amnesia
	-- Change: Added additional curses information
	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses", -- ???
	-- Change: affects whole floor
	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Slows Isaac and all enemies for the whole floor", -- I'm Drowsy...
	-- Change: affects whole floor
	[Pill_ID .. (HorseID + 43)] = "Speeds up Isaac and all enemies for the whole floor", --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[Pill_ID .. (HorseID + 44)] = "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently", -- Gulp!
}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)