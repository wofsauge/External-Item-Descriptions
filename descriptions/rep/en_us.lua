------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
------------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
	["5.70.14"] = {"14", "Golden Pill", "Random pill effect#Destroys itself after a few uses"}, -- golden Pill
}

local repCollectibles={
	[13] = {"13", "", "Poison touch#↑ +0.2 Speed up"}, -- The Virus
	[14] = {"14", "", "↑ +0.3 Speed up#↑ +5.25 Range up#↑ +0.5 Shot Height"}, -- Roid Rage
	[22] = {"22", "", "↑ +1 Health up#Heals one heart"}, -- Lunch
	[23] = {"23", "", "↑ +1 Health up#Heals one heart"}, -- Dinner
	[24] = {"24", "", "↑ +1 Health up#Heals one heart"}, -- Dessert
	[25] = {"25", "", "↑ +1 Health up#Heals one heart"}, -- Breakfast
	[29] = {"29", "", "↑ +5.25 Range up#↑ +0.5 Tear Height#Spawns 3-6 Blue Flies"}, -- Moms Underwear
	[30] = {"30", "", "↑ +5.25 Range up#↑ +0.5 Tear Height#Touched enemies take 12 damage"}, -- Mom's Heels
	[31] = {"31", "", "↑ +5.25 Range up#↑ +0.5 Tear Height#Spawns 1 random heart"}, -- Mom's Lipstick
	[40] = {"40", "", "Causes a big explosion at the players location#Deals 185 damage"}, -- Kamikaze!
	[42] = {"42", "", "Throwable poison bomb#Deals 185 + you damage#Creates poison cloud"}, -- Bob's Rotten Head
	[44] = {"44", "", "Teleports Isaac into a random room except I AM ERROR rooms#Influence direction a bit by moving in desired direction"}, -- Teleport
	[45] = {"45", "", "Heal 1 red heart#Also heals other players for half a heart"}, -- Yum Heart
	[46] = {"46", "", "↑ +1.0 Luck up#Better chance to win while gambling#Increases room clearing drop chance#Turns some bad pills into good ones"}, -- Lucky Foot
	[55] = {"55", "", "Chance to shoot a tear backwards"}, -- Mom's Eye
	[62] = {"62", "", "↑ +0.3 Damage up#Heals half a heart every 13 enemies killed"}, -- Charm of the Vampire
	[64] = {"64", "", "-50% on shop items#Getting this item multiple times reduces the price further"}, -- Steam Sale
	[67] = {"67", "", "Normal tear familiar#Deals 5 Damage per tear"}, -- Sister Maggy
	[70] = {"70", "", "↑ +1.0 Damage up#↑ +0.2 Speed up"}, -- Growth Hormones
	[72] = {"72", "", "+3 Soul Hearts#↑ 0.5 Tears up#Bible is more common"}, -- Rosary
	[79] = {"79", "", "↑ +1.0 Damage up#↑ +0.2 Speed up#+1 Black Heart"}, -- The Mark
	[80] = {"80", "", "↑ +0.5 Damage up#↑ +0.7 Tears up#+2 Black Hearts"}, -- The Pact
	[83] = {"83", "", "+ Half Black heart#↑ +0.7 Damage up#↓ -0.18 Speed down#Deal contact Damage#Crush rocks"}, -- The Nail
	[106] = {"106", "", "↑ Bomb damage x1.85#+5 Bombs"}, -- Mr. Mega
	[121] = {"121", "", "↑ +1 Empty heart container#↑ +1.0 Damage up#↑ +0.25 Range up#↓ -0.2 Speed down#↑ +0.5 Tear Height"}, -- Odd Mushroom (Large)
	[123] = {"123", "", "Spawns random familiar#Lasts for current floor"}, -- Monster Manual
	[139] = {"139", "", "You can now hold 2 trinkets#Spawns 1 random trinket"}, -- Mom's Purse
	[140] = {"140", "", "Poison bombs#+5 bombs#Bombs leave a poison cloud"}, -- Bob's Curse
	[148] = {"148", "", "Spawn 2-6 flies when you get hit"}, -- Infestation
	[147] = {"147", "", "Break rocks and damage enemies on swing#Hitting with the axe reduces its charge#Charge refills on stage transition"}, -- Notched Axe
	[171] = {"171", "", "Slows down enemies for 4 seconds#10 Damage to all enemies#Enemies killed with it spawn blue spiders"}, -- Spider Butt
	[178] = {"178", "", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Leaves pool of creep at the thrown location"},
	[192] = {"192", "", "Homing tears for current room#↑ +3 Range up"}, -- Telepathy for Dummies
	[203] = {"203", "", "Chance to spawn the double version of pickups"}, -- Humbling Bundle
	[205] = {"205", "", "- half Heart = Charges one slot of your active item when pressing space"}, -- Sharp Plug
	[211] = {"211", "", "Spawn 3-5 spiders when getting hit"}, -- Spider Baby
	[230] = {"230", "", "↑ +1.5 Damage up#↑ +0.2 Speed up#Fear tears#Converts all red heart container into Black hearts#+2 Black hearts"}, -- Abaddon
	[232] = {"232", "", "Permanent slow effect for enemies#↑ +0.3 Speed up"}, -- Stop Watch
	[245] = {"245", "", "Doubles all your shots#↓ -25% Damage"}, -- 20/20
	[256] = {"256", "", "Burning bombs#+5 Bombs#Bombs deal contact damage"}, -- Hot Bombs
	--{"261", "", "↑ +100% Damage up#↓ Dealt damage decreases for traveled distance of the tear"}, -- Proptosis ... Wiki not updated yet
	[262] = {"262", "", "+1 black heart#When down to 1 Heart, damages all enemies in the room#Black hearts deal double damage"}, -- Missing Page 2
	 
	[263] = {"263", "", "Copies effects of held rune or soul stone#Drops 1 random rune on picked up"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "", "Throwable bomb familiar#The explosion deals 100 Damage#The Damage ignores armor"}, -- Bob's Brain
	[274] = {"274", "", "When getting hit, gain one midrange orbital#Orbital deals 150 damage per second"}, -- Best Bud
	[276] = {"276", "", "Gain an invulnerable body#!!! When the heart familiar gets hit you take damage#Familiar charges up when fireing, releasing a burst of tears when releasing"}, -- Isaac's Heart
	[278] = {"278", "", "!!! Converts:#1,5 Red hearts into 1 soul/black heart, a spider, a pill card or rune"}, -- Dark Bum
	[280] = {"280", "", "Randomly spawns blue spiders when in a hostile room#Charmes enemies it comes in contact with"}, -- Sissy Longlegs
	[283] = {"283", "", "Reroll all pedestals, stats, pickups and all your held passive items#Duplicates 1 random pickup in room#Restarts current room and respawns and rerolls its enemies#Rerolls rocks in room"}, -- D100
	[285] = {"285", "", "Reroll all enemies in the room#Tries to reroll them into enemies with similar max HP"}, -- D10
	[287] = {"287", "", "Reveals parts of the map#Only grants mapping effects you don't have already"}, -- Book of Secrets
	[288] = {"288", "", "Spawn 4-8 blue spiders"}, -- Box of Spiders
	[289] = {"289", "", "Throw red fire#The flame persists until it delt damage 5 times or after 10 seconds"}, -- Red Candle
	[291] = {"291", "", "!!! Insta kills Poop enemies & bosses!#Turns enemies into poop#Extinguishes fire places#Turns lava-filled pits into walkable ground"}, -- Flush!
	[292] = {"292", "", "+1 Black heart#When used before a boss fight, the boss room item will be a devil deal"}, -- Satanic Bible
	[294] = {"294", "", "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage#10% chance to turn into the stronger \"Wait What?\" when swapping it with a different active item and picking it up again"}, -- Butter Bean
	[295] = {"295", "", "Damages the whole room with 2x the player damage + 10 #Price: 1 coin"}, -- Magic Fingers
	[296] = {"296", "", "!!! Convert:#1 Soul/Black heart into 1 red heart"}, -- Converter
	[307] = {"307", "", "↑ +1 Health / Key / Bomb / Coin#↑ +0.93 Damage up#↑ +0.1 Speed up#↑ +0.75 Range up#Tears up"}, -- Capricorn
	[308] = {"308", "", "Leave trail of creep#Creep deals 6 damage per second#Creep synergizes with tear effects"}, -- Aquarius
	[328] = {"328", "", "↑ +1.0 Damage up#Damages all enemies in the room when getting hit and at half a red heart or none"}, -- The Negative
	[331] = {"331", "", "Homing tears#↑ +0.93 Damage up#↑ +0.5 Range up#↓ -0.6 Tears down#↓ -30% Shot Speed down#↑ +0.8 Tear Height"}, -- Godhead
	[336] = {"336", "", "Piercing + spectral tears↓ -1.5 Range up#↓ -0.4 Shot Speed down"}, -- Dead Onion
	[344] = {"344", "", "+1 Black Heart#Spawns 2-3 Bomb pickups#Spawns the Match Stick {{Trinket41}} Trinket"}, -- Match Book
	[346] = {"346", "", "↑ +1 Health up#Heals 2 hearts"}, -- A Snack
	[352] = {"352", "", "Fires one large piercing spectral tear ((DMG+1) X 10)#When you took damage, all damage to the player is increased by 2 hearts"}, -- Glass Canon
	[355] = {"355", "", "↑ +1.25 Range up#↑ +1 Luck up#+1 Soul Heart#↑ +0.5 Tear Height"}, -- Mom's Pearl
	[369] = {"369", "", "↑ +3.0 Range up#↑ +1.5 Tear Height#Tears travel through walls and appear out of the opposite wall"}, -- Continuum
	[372] = {"372", "", "Random chance to drop a micro battery or freeze all enemies in the room#Chance to add one charge to your spacebar item"}, -- Charged Baby
	[376] = {"376", "", "Spawns 3 random Pickups#Shops instantly restock their items when you buy them#Restocked items have decreased cost"}, -- Restock
	[382] = {"382", "", "Can be thrown at enemies to capture them#Next usage will respawn the same enemy as a friendly companion#Walking over the ball after capture will instantly recharge the item"}, -- Friendly Ball
	[395] = {"395", "", "Gain the ability to charge and fire a laser ring that travels across the room#Damage based on the charge progress#100% damage on full charge"}, -- Tech X
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Rerolls enemies and pickup it comes in contact with"}, -- GB Bug
	[416] = {"416", "", "Allows you to carry two cards/pills/runes#Spawns 1-3 coins if a room didnt yield a reward#Increases coin cap to 999"}, -- Deep Pockets
	[448] = {"448", "", "When taking damage, chance to get ↑ +5 Range, spew red tears and leave a trail of blood creep, or spawn a red heart"}, -- Shard of Glass
	[451] = {"451", "", "Drops a random card or rune on pickup#Doubles the effect of any card used#Some cards gain an extra effect"}, -- Tarot Cloth
	[464] = {"464", "", "+2 Soul Hearts#Champion enemies and room drops appear more frequently#Priority of spawned pickups depends on what the player is missing most of"}, -- Glyph of Balance
	[474] = {"474", "", "Turns into Glass Canon when used"}, -- broken Glass Canon
	[489] = {"489", "", "Random Dice-effect each usage#Press the Drop button to cycle through the dices"}, -- D Infinity
	[491] = {"491", "", "Drops a random pill every 7 rooms#Using a pill poisons all enemies in the room"}, -- Acid Baby
	[494] = {"494", "", "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half your damage#Sparks can jump between enemies"}, -- Jacobs Ladder
	[503] = {"503", "", "Chance to fire tears that summon a Big Horn hand#The hand kills enemies instantly and deals damage to bosses#Running into enemies will deal 3.5 damage to them"}, -- Little Horn
	[504] = {"504", "", "Spawns a fly turret that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[523] = {"523", "", "When used, stores up to 6 Pick-Ups from the current room#Using it again will put them back on the floor again#This allows you to move things between rooms"}, -- Moving Box
	[524] = {"524", "", "Tears will be connected with beams of electricity#Electricity damage equals 1/3 of your damage"}, -- Technology Zero
	[543] = {"543", "", "Spawn white poop when you get hit#(White poop has a ↑ Tears and Damage up aura, grants homing tears and can block damage)"}, -- Hallowed Ground
	

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["en_us"].collectibles, true)

---------- Trinkets ----------
local repTrinkets={
    [10] = {"10", "", "Tears move in waves#↑ +0.4 Tears up#Grants spectral tears"}, -- Wiggle Worm
    [11] = {"11", "", "Tears move in spirals with high speed#Grants spectral tears"}, -- Ring Worm
    [26] = {"26", "", "Tears move in angular patterns#↑ +10 Range#Grants spectral tears"}, -- Hook Worm
    [33] = {"33", "", "When down to half a heart, you get little Steven#High Chance to spawn a Gemini familar when taking damage"}, -- Umbilical Cord
    [49] = {"49", "", "25% chance to drop half a heart when picking up coins"}, -- Bloody Penny
    [50] = {"50", "", "25% chance to drop a bomb when picking up coins"}, -- Burnt Penny
    [51] = {"51", "", "25% chance to drop a key when picking up coins"}, -- Flat Penny
    [69] = {"69", "", "Camouflages the player randomly#Confuses enemies#Can be used to open the door to the \"Home\" floor"}, -- Faded Polaroid
    [92] = {"92", "", "↑ Stat increases of your items are 20% more effective#↑ +0.2 Tears up#↑ -1 Tear Delay"}, -- Cracked Crown
    [95] = {"95", "", "Randomly shoot poison Tooth tears#Enemies hit are attacked by a hand of Big Horn"}, -- Black tooth
    [111] = {"111", "", "Item rooms {{TreasureRoom}} now appear in the Womb and Corpse"}, -- Bloody Crown
	[119] = {"119","","Sets your red HP to 50% of your maximum upon entering the next floor#If your health is aboth that, it heals half a red heart"}, -- Stem Cell
    [128] = {"128", "", "5% chance to gain a Bone Heart when taking damage"}, -- Finger Bone
	
	[129] = {"129","","Chance to shoot tooth tears"}, --  Jawbreaker
	[130] = {"130","","Chance to shoot slowing tears"}, --  Chewed Pen
	[131] = {"131","","Chance to drop half soul hearts when collecting coins"}, --  Blessed Penny
	[132] = {"132","","Chance to gain a random syringe effect for current room"}, --  Broken Syringe
	[133] = {"133","","Bombs placed by Isaac explode more quickly"}, --  Short Fuse
	[134] = {"134","","Increases fart size"}, --  Gigante Bean
	[135] = {"135","","Chance to apply burn effect to enemies upon entering a room"}, --  A Lighter
	[136] = {"136","","Doors, key blocks and golden chests can be open with explosions#Can also open the Home door"}, --  Broken Padlock
	[137] = {"137","","When entering a new floor, up to 4 uncollected pickups from the previous floor spawn in the starting room"}, --  Myosotis
	[138] = {"138","","Using an active item rerolls it"}, --  'M
	[139] = {"139","","Luck-based tear effects occur more often"}, --  Teardrop Charm
	[140] = {"140","","Picking up red hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, --  Apple of Sodom
	[141] = {"141","","Increases fire rate of familiars"}, --  Forgotten Lullaby
	[142] = {"142","","At the beginning of each floor, spawns 4 Book of Virtues {{Collectible584}} wisps"}, --  Beth's Faith
	[143] = {"143","","Prevents active item from charging#Chance to spawn lil Battery when clearing a room"}, --  Old Capacitor
	[144] = {"144","","Tears turn 90 degrees to target enemies that they may have missed"}, --  Brain Worm
	[146] = {"146","","Treasure rooms {{TreasureRoom}} now contain devil deals"}, --  Devil's Crown
	[147] = {"147","","Picking up coins can charge the Active Item"}, --  Charged Penny
	[148] = {"148","","Causes familiars to circle around Isaac"}, --  Friendship Necklace
	[149] = {"149","","Activates your active item upon taking damage"}, --  Panic Button
	[150] = {"150","","Entering a room that requires a key brings you in a room resembling the Hush stage#Room acts as an in-between of the two rooms"}, --  Blue Key
	[151] = {"151","","Causes spikes to retract, making them harmless#Also affects Curse Rooms {{CursedRoom}} doors, mimics and any spike obstacle"}, --  Flat File
	[152] = {"152","","Makes it possible to spawn a second Planetarium#Planetariums can now spawn in the Womb"}, --  Telescope Lens
	[153] = {"153","","Each room, grants the effects of a random Mom item"}, --  Mom's Lock
	[154] = {"154","","When entering a new room, grants a temporary Dice consumable item#The Dice dissapears when leaving#Grants ability to hold two consumables"}, --  Dice Bag
	[155] = {"155","","Spawns a Treasure Room {{TreasureRoom}} in Cathedral"}, --  Holy Crown
	[156] = {"156","","Grants one heart container#Works for Keeper, too"}, --  Mother's Kiss
	[157] = {"157","","Every 15 shots, shoot an Ipecac {{Collectible149}} + My Reflection {{Collectible5}} tear with a very high range value"}, --  Torn Card
	[158] = {"158","","Upon hit, Isaac drops all of his Pickups#(Exception: Hearts, Cards, Pills, Runes)"}, --  Torn Pocket
	[159] = {"159","","Replaces all new chests, with Locked Chest#Excepttion: Mega Chest"}, --  Gilded Key
	[160] = {"160","","Spawns a Grab Bag upon traveling to the next floor"}, --  Lucky Sack
	[161] = {"161","","Spawns a Treasure Room {{TreasureRoom}} in Sheol"}, --  Wicked Crown
	[162] = {"162","","Chance to turn into Azazel when entering a new room"}, --  Azazel's Stump
	[163] = {"163","","Spawns 2 friendly Dips upon clearing a room"}, --  Dingle Berry
	[164] = {"164","","Spawns two extra bombs for each bomb placed"}, --  Ring Cap
	[165] = {"165","","On Womb and beyond, replaces all pickup spawns with a random pickup#Bombs and Hearts are most common"}, --  Nuh Uh!
	[166] = {"166","","Grants the effect of a random Passive Item each room"}, --  Modeling Clay
	[167] = {"167","","Chance to spawn a friendly Bony when clearing a room"}, --  Polished Bone
	[168] = {"168","","+1 bone heart container upon entering a new floor"}, --  Hollow Heart
	[169] = {"169","","While held, counts towards the Guppy transformation"}, --  Kid's Drawing
	[170] = {"170","","Grants the chance to automatically create Red Key rooms {{Collectible580}}"}, --  Crystal Key
	[171] = {"171","","Devil deals use coins instead of hearts"}, --  Keeper's Bargain
	[172] = {"172","","Teleport to a random room upon picking up a penny#Can teleport to secret rooms"}, --  Cursed Penny
	[173] = {"173","","{{Warning}} ONE TIME USAGE {{Warning}}#Can be used to pay for a Devil deal without losing hearts"}, --  Your Soul
	[174] = {"174","","+10% Deavil deal chance"}, --  Number Magnet
	[175] = {"175","","Unlocks the passageway to the Hush fight, regardless of the run duration#Using Pandora's Box {{Collectible297}} spawns 6 items from random pools"}, --  Strange Key
	[176] = {"176","","Spawns a blood clot familiar who mimics Isaacs movement, shoot direction and tear effects"}, --  Lil Clot
	[177] = {"177","","Spawns a chest after clearing a mob Challenge Room, or a collectible after clearing a boss Challenge Room"}, --  Temporary Tattoo
	[178] = {"178","","Player explodes upon taking damage"}, --  Swallowed M80
	[179] = {"179","","Familiars movement will be controlled by the same inputs as the player"}, --  RC Remote
	[180] = {"180","","Familiar that follows Isaac's exact movements and shoots spectral tears#Has same damage and tear effects as the player"}, --  Found Soul
	[181] = {"181","","Triggers a seperate random active item when using an active item"}, --  Expansion Pack
	[182] = {"182","","Once per floor, upon taking damage creates a wisp {{Collectible584}} and grants invincibility#Spawns 5 wisps upon entering an angel room#Creates a wisp when giving money to beggars"}, --  Beth's Essence
	[183] = {"183","","Each room:#With no followers: Chance to grant Brother Bobby {{Collectible8}} and/or Sister Maggy {{Collectible67}}# With followers: Chance to add a duplicate that follower"}, --  The Twins
	[184] = {"184","","Shops can sell familiars#Familiars will always be on discount"}, --  Adoption Papers
	[185] = {"185","","Chance to spawn a random locusts when killing an enemy"}, --  Cricket Leg
	[186] = {"186","","{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Grants 2 Familiar attack flies which he can aim and fire with"}, --  Apollyon's Best Friend
	[187] = {"187","","33% chance of adding an extra blind item in item rooms#Reveals the blind item in alt path"}, --  Broken Glasses
	[188] = {"188","","Adds a chance to petrify an enemy when entering the room#Killing the petrified enemy freezes it"}, --  Ice Cube
	[189] = {"189","","Activates a 1 second shield upon killing an enemy"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["en_us"].trinkets, true)

---------- Cards ----------
local repCards={
	[27] = {"27", "", "Turns all pickups, chests and non-boss enemies into bombs"},
	[28] = {"28", "", "Turns all pickups, chests and non-boss enemies into coins"},
	[29] = {"29", "", "Turns all pickups, chests and non-boss enemies into keys"},
	[30] = {"30", "", "Turns all pickups, chests and non-boss enemies into hearts"},
	[39] = {"39", "", "Invincibility for 20 seconds"},
	
	[55] = {"55", "", "Activates a random rune effect#The rune effect is weaker"},
	[56] = {"56", "", "Drops all your hearts and pickups on the floor#Only half a heart left afterwards#Pickups can spawn as {{Collectible74}} {{Collectible19}} collectibles if amount is sufficient"},
	[57] = {"57", "", "Grants big projectile and enemy repelling aura#Duration 1 minute"},
	[58] = {"58", "", "Mom's foot stomps down repeatedly for 1 minute"},
	[59] = {"59", "", "Temporary effect:#↑ +2 red hearts#↑ +1.35 Tears up"},
	[60] = {"60", "", "Teleports you to an extra Boss room with extra loot"},
	[61] = {"61", "", "Spawns 2 Bone Hearts"},
	[62] = {"62", "", "Spawns 1 item from current room's item pool#Turns 1 red heart Container or 2 Soul hearts into a broken heart"},
	[63] = {"63", "", "Turn into invincible immobile statue for 10 seconds#Extreme fire rate for duration"},
	[64] = {"64", "", "Spawns 2-4 golden chests"},
	[65] = {"65", "", "Turns pickups and items in the room into coins#Coin values are equal to their shop value"},
	[66] = {"66", "", "Random dice room effect"},
	[67] = {"67", "", "Enemies in room are weakened, slowed and take double damage"},
	[68] = {"68", "", "Turns player into the Keeper for 30 seconds#Grants triple shot and speed down#Killed enemies drop random coins"},
	[69] = {"69", "", "Invokes Book of the Dead effect {{Collectible545}}#(Spawns Bone entities for each enemy killed in room)"},
	[70] = {"70", "", "Applies 5 random pilleffects"},
	[71] = {"71", "", "Invokes the Bible effect {{Collectible33}}#Grants Seraphim familiar {{Collectible390}}# For 30 seconds"},
	[72] = {"72", "", "Spawns 6 clusters of random rocks and obstacles"},
	[73] = {"73", "", "Removes oldest passive item#Spawns 2 random items from current room's item pool"},
	[74] = {"74", "", "Teleports you to Ultra secret room#Pathway back will be made of red rooms"},
	[75] = {"75", "", "Gain Spirit of the Night {{Collectible159}}#↑ +1.5 Damage up# For the current level#Turns red hearts into bone hearts, but reverts once the effect ends#Applies Curse of Darkness"},
	[76] = {"76", "", "Spawns a Restock Machine"},
	[77] = {"77", "", "Spawns a trap door to a crawl space"},
	[78] = {"78", "", "One time use Red Key {{Collectible580}}"},
	[79] = {"79", "", "Spawns 1-12 red hearts"},
	[80] = {"80", "", "Copies the effect of the most recently used pill, card, rune, soul stone or activated item"},
	[81] = {"81", "", "Rerolls the items in the room#Cycle back to their original form after one second#Effect repeats"},
	[82] = {"82", "", "Surrounds Isaac with a bubbling red aura for the current room#Enemies killed drop red half hearts that disappear in 2 secs"},
	[83] = {"83", "", "Creates red rooms with Red Key {{Collectible580}} for every possible exit"},
	[84] = {"84", "", "Turns Isaac into a phantom that can pass through enemies to paralyze them#After a few seconds, will attack them all, gaining damage bonus per target"},
	[85] = {"85", "", "Causes 8 poison farts with brown creep#Then plants trail of 7 Butt Bombs#Standing in the creep gives ↑ +1.35 Tears and ↑ +1 Damage"},
	[86] = {"86", "", "14 Dead Bird familiars fly in and attack enemies# Lasts for current room"},
	[87] = {"87", "", "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Speed up#↑ Tears up#↑ +3 Damage up"},
	[88] = {"88", "", "Activates Mega Blast {{Collectible441}} for 7.5 secs"},
	[89] = {"89", "", "Die and immediately revive at half a heart with some invincibility time#Item is automatically used upon taking fatal damage (like an extra life)"},
	[90] = {"90", "", "Activates D6 {{Collectible105}} and D20 {{Collectible166}} effect#The rerolled items use random pools"},
	[91] = {"91", "", "Die and turn into The Lost for current room"},
	[92] = {"92", "", "Adds 1 random familiar"},
	[93] = {"93", "", "Spawns 3-25 random coins"},
	[94] = {"94", "", "Spawn 15 random locust flies"},
	[95] = {"95", "", "Spawns The Forgotten as a temporary secondary character for current room"},
	[96] = {"96", "", "Spawns 6 Book of Virtues {{Collectible584}} wisps with random properties"},
	[97] = {"97", "", "Spawns Esau as a temporary secondary character for current room"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["en_us"].cards, true)

---------- Pills ----------

local repPills={
	[4] = {"3", "", "Switches number of bombs with keys#Golden bombs and keys are also swapped"},
	[12] = {"11", "", "↓ -0.6 Range down"},
	[13] = {"12", "", "↑ +0.45 Range up"},
	[42] = {"41", "", "Slow all enemies and Isaac in the room"},
	[43] = {"42", "", "Speeds up all enemies and Isaac in the room#Triggers again after 30 and 60 seconds"},
	
	[48] = {"47", "", "↓ -0.15 Shot Speed down"},
	[49] = {"48", "", "↑ +0.15 Shot Speed up"},
	[50] = {"49", "", "↑ Increases 1 random stat#↓ Decreases 1 random other stat#Will not decrease with PHD"},
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["en_us"].pills, true)

EID.descriptions["en_us"].horsepills={
	{"0", "", "Poisons entire room"},
	{"1", "", "Deals 2 heart of damage to you"},
	{"2", "", "+4 Soul Hearts"},
	{"3", "", "Switches number of bombs with keys#Increases key and bomb count by 50%#Golden bombs and keys are also swapped"},
	{"4", "", "Spawns some mega homing troll bombs at your position"},
	{"5", "", "Full Health#+3 Soul Hearts"},
	{"6", "", "↓ -2 Health down"},
	{"7", "", "↑ +2 empty heart containers"},
	{"8", "", "No effect"},
	{"9", "", "No effect"}, -- Puberty
	{"10", "", "Adds 1 Big Fan fly orbital {{Collectible279}}#There is no upper limit"},
	{"11", "", "↓ -1.2 Range down"},
	{"12", "", "↑ +0.9 Range up"},
	{"13", "", "↓ -0.24 Speed down"},
	{"14", "", "↑ +0.3 Speed up"},
	{"15", "", "↓ -0.56 Tears down"},
	{"16", "", "↑ +0.70 Tears up"},
	{"17", "", "↓ -2 Luck down"},
	{"18", "", "↑ +2 Luck up"},
	{"19", "", "Teleport to random room"}, -- TODO
	{"20", "", "Recharges your active item#Drops batteries"}, -- TODO
	{"21", "", "Drains all but one heart container#Spawns red hearts"}, -- TODO
	{"22", "", "You can't move for 4 seconds"},
	{"23", "", "Opens secret room entrances on current floor#Grants full mapping"},
	{"24", "", "Turns every enemy in the room permanently friendly"},
	{"25", "", "Hides the floor map"}, --TODO
	{"26", "", "Spawns room filling puddle on the ground which damages enemies"},
	{"27", "", "Shoot diagonally for 60 seconds"},
	{"28", "", "Take only half the damage for current room"},  --TODO
	{"29", "", "Take full heart damage for current room"}, --TODO
	{"30", "", "Spawn poop while walking for 4 seconds"}, --TODO
	{"31", "", "Curse of the maze effect for current floor"}, --TODO
	{"32", "", "You grow a lot bigger#Doesn't affect your hitbox"},
	{"33", "", "You get a lot smaller#Your hitbox gets smaller"},
	{"34", "", "Spawn 2 blue spider per poop in room"},
	{"35", "", "Spawn 2 blue spider per enemy in room#Spawns 2-6 blue spiders when no enemy is in the room"},
	{"36", "", "Short invincibility effect#↑ #7 Damage up#↑ +3 Range up# persists for current room"},
	{"37", "", "Pixelates the screen for 90 seconds"},
	{"38", "", "Spawns 6 blue flies"},
	{"39", "", "Spawn pool of long lasting slippery creep"},
	{"40", "", "Spawn pool of long lasting slowing creep"},
	{"41", "", "Slow all enemies in room"}, --TODO
	{"42", "", "Speed up for all enemies in room"}, --TODO
	{"43", "", "Consume current trinket and gain its effect permanently"}, --TODO
	{"44", "", "Shoots a cluster of ipecac tears"},
	{"45", "", "Short invincibility#Fears all enemies# Two eaten enemies replenish half a heart"},
	{"46", "", "Spawns last used pill as a horse pill"},
	{"47", "", "↓ -0.3 Shot Speed down"},
	{"48", "", "↑ +0.3 Shot Speed up"},
	{"49", "", "↑ Increases 1 random stat two times#↓ Decreases 1 random other stat two times#Will not decrease with PHD"},
}

---------- Transformations ----------

local repTransformations={}
EID:updateDescriptionsViaTable(repTransformations, EID.descriptions["en_us"].transformations,false)

