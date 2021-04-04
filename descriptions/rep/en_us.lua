------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
------------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
	["5.70.14"] = {"14", "Golden Pill", "Random pill effect#Destroys itself after a few uses"} -- golden Pill
}

local repCollectibles={
	[178] = {"178", "", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Leaves pool of creep at the thrown location"},
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Rerolls enemies and pickup it comes in contact with"},
	[9999] = {"", "Alabaster Box", "Gains charges through soul, black, and white hearts#After 6 full hearts are absorbed, it will spawn varying amounts of consumables and items from the Angel room pool"},
	[9999] = {"", "Black Mushroom", "Reduces tear delay but distorts the screen for a length of time#Can be used multiple times to stack the effect#Tear delay is reset on changing rooms; however, the distortion persists"},
	[9999] = {"", "Book Of Despair", "Increases tears for the current room"},
	[9999] = {"", "Book Of Virtues", "Summons a temporary flame familiar that fires spectral tears, deal contact damage to enemies and blocks enemy shots#Flames are consumed after taking a certain amount of damage or touching enemies#A maximum of 16 flames can be active at once: one inner ring of eight and an outer ring of eight"},
	[9999] = {"", "Bowl of Tears", "Fires a cluster of tears#Each tear shot by Isaac increases item charge by one"},
	[9999] = {"", "D12", "Re-rolls all rocks in the current room into other random objects, such as bomb rocks, metal blocks, TNT, or poop"},
	[9999] = {"", "Damocles", "Spawns a sword above Isaac's head#After taking damage at least once, the sword can fall at any time, instantly killing him#While he is alive, he receives bonus items from all sources"},
	[9999] = {"", "Eraser", "Prevents an enemy from appearing for the rest of the run"},
	[9999] = {"", "Eternal D6", "Rerolls items with chance of disappearing"},
	[9999] = {"", "Fortune Cookie", "Displays a random fortune, and has a chance to drop a soul heart, card, rune or trinket"},
	[9999] = {"", "Free Lemonade", "Creates a large puddle of lemonade that damages enemies"},
	[9999] = {"", "Magic Skin", "Generates one item from the current room's item pool and gives Isaac a broken heart, which permanently decreases the maximum health limit"},
	[9999] = {"", "Meat Cleaver", "Splits all enemies in a room into 2 smaller versions of themselves with lower health"},
	[9999] = {"", "Mega Mush", "Gigantifies Isaac for a short duration"},
	[9999] = {"", "Mom's Bracelet", "Allows the player to grab obstacles and throw them, damaging enemies"},
	[9999] = {"", "R Key", "Upon use, restarts the game to the first floor, keeping all previously collected items#Game timer does not restart#Allows angels rooms to be found even if the previous run included devil deals"},
	[9999] = {"", "Red Key", "Creates a red colored room on the map near Isaac's current position#The room can be anything from a regular encounter room to a Devil Room"},
	[9999] = {"", "The Scooper", "Summons a Peep familiar for the current room, which leaves a trail of red creep"},
	[9999] = {"", "Sharp Key", "Allows Isaac to consume keys and fire them at enemies#Adds 5 keys"},
	[9999] = {"", "Stitches", "Spawns a familiar that flies diagonally across the room, switching direction upon hitting walls#Activating the item swaps the positions of Isaac and Stitches"},
	[9999] = {"", "Sulfur", "Grants Brimstone for the current room"},
	[9999] = {"", "Voodoo Pin", "Hurts Isaac without actually damaging him, activating any items that would trigger upon taking damage"},
	[9999] = {"", "Yuck Heart", "Upon use, grants a rotten heart"},
	[9999] = {"", "120 Volt", "Whenever an enemy is shot, it will zap other enemies near them, dealing damage"},
	[9999] = {"", "2Spooky", "Enemies near Isaac will be inflicted with Fear, causing them to flee from him"},
	[9999] = {"", "A Bar Of Soap", "Increases tears and shot speed"},
	[9999] = {"", "Act Of Contrition", "Grants an Immortal Heart and increases tears"},
	[9999] = {"", "Akeldama", "Whenever Isaac fires a shot, a bloody tear will spawn behind him#Multiple tears will form a trail of tears that drags behind Isaac as he moves, bursting and dealing damage upon contact with enemies#Multiple trails can be formed"},
	[9999] = {"", "Almond Milk", "Upgrades fire rate immensely but significantly decreases damage, and tears are given random worm effects"},
	[9999] = {"", "Battery Pack", "Recharges Isaac's currently held active item and drops 2-4 batteries"},
	[9999] = {"", "Bird Cage", "Upon taking damage the first time in a room, the familiar leaps from Isaac's head, targets an enemy, and lands on them, dealing damage and releasing a rock wave#For the rest of the room, the familiar targets and attacks enemies similar to Dead Bird"},
	[9999] = {"", "Bird's Eye", "Adds a chance to spit a large fire whenever Isaac fires a tear"},
	[9999] = {"", "Birthright", "Grants different effects depending on which character you're playing as"},
	[9999] = {"", "Blood Bombs", "Grants 1 heart container#Bombs create puddles of damaging red creep upon exploding#If Isaac has no bombs, bomb can be placed at the cost of half a heart"},
	[9999] = {"", "Blood Oath", "Stabs Isaac at the beginning of each floor, draining all but half a heart of his heart containers#Increases damage and speed"},
	[9999] = {"", "Boiled Baby", "Grants a familiar similar to a Boil that periodically fires bursts of bullets"},
	[9999] = {"", "Booster Pack", "Spawns 3 tarot cards"},
	[9999] = {"", "Bot Fly", "Grants a familiar that fires shielded tears at incoming bullets"},
	[9999] = {"", "Consolation Prize", "Raises Isaac's current lowest stat#Can also drop a consumable for whichever Isaac has the least of"},
	[9999] = {"", "Dirty Mind", "Destroying poop spawns friendly Dips that follow the player and damage enemies#Destroying different types of poop spawns different Dips with special effects"},
	[9999] = {"", "Donkey Jawbone", "Whenever Isaac takes damage, a spin attack will damage enemies around him"},
	[9999] = {"", "Enigma Bombs", "Grants 5 bombs#Bombs explode with a random bomb effect"},
	[9999] = {"", "Evil Charm", "Grants +3 luck"},
	[9999] = {"", "Eye Drops", "Increases tears#Tears fire at different rates from each of Isaac's eyes"},
	[9999] = {"", "Eye Of The Occult", "Increases damage#Tears can be controlled mid-flight using the fire keys"},
	[9999] = {"", "Eye Sore", "Frequently fire tears in random directions in addition to regular tears#Can fire up to three extra tears"},
	[9999] = {"", "Freezer Baby", "Grants a familiar that fires shots that freeze enemies#Frozen enemies explode into ice shards when touched"},
	[9999] = {"", "Immaculate Heart", "Fire orbiting tears along with normal tears"},
	[9999] = {"", "The Intruder", "Isaac will now fire four slowing tears in addition to normal tears#Upon taking damage multiple times in one room, Isaac's head will pop, spawning friendly spiders and a familiar that leaps at enemies"},
	[9999] = {"", "It Hurts", "Taking damage causes Isaac to release a ring of bloody tears and increases fire rate for current room"},
	[9999] = {"", "Jacob's Ladder", "Generates a ladder in the starting room next floors, which leads to an Angel Room"},
	[9999] = {"", "Knife Piece 1", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	[9999] = {"", "Knife Piece 2", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	[9999] = {"", "Knife Piece 3", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	[9999] = {"", "Knockout Drops", "Adds a chance to fire fist tears, which have massive knockback and briefly stun enemies"},
	[9999] = {"", "Lil' Dumpy", "Grants a familiar that loosely follows the player#Farts when hit by enemy attacks"},
	[9999] = {"", "Lodestone", "Adds a chance to fire magnetizing tears#Magnetized enemies attract other enemies, Isaac's tears, and enemy shots including their own"},
	[9999] = {"", "Lost Soul", "Spawns a familiar version of The Lost that follows Isaac#Upon being hit, it instantly dies, regenerating on the next floor#If it survives an entire floor, it grants a random reward"},
	[9999] = {"", "Luna", "Adds one extra Secret Room and one Super Secret Room on each floor"},
	[9999] = {"", "Mars", "Gain the ability to charge by double-tapping in a direction#Isaac is invincible during the charge and deals significant damage#Can be used multiple times per room with a short recharge time"},
	[9999] = {"", "Member Card", "Opens a trapdoor with a ladder in every shop#The trapdoor leads to a special shop room, which sells multiple items or pickups for random prices#Sold collectibles don't have to be from the Shop pool"},
	[9999] = {"", "Menorah", "Spawns a menorah familiar that grants an extra tear per shot for each candle lit#The menorah starts with one candle lit, and each time Isaac is hit, another candle is lit, up to a maximum of 7 tears per shot#Being hit an additional time will release blue flames that damage enemies and reset the menorah"},
	[9999] = {"", "Mercurius", "Doors stay open after entering a room, even with enemies in it, allowing Isaac to leave any time#Increases speed"},
	[9999] = {"", "Monstrance", "Isaac emits an aura that damages nearby enemies"},
	[9999] = {"", "Mucormycosis", "Upon enemies' death, they release a cloud of gas that damages and poisons other enemies"},
	[9999] = {"", "Oculus Rift", "Adds a chance to fire tears that summon rifts wherever they land#Rifts attract enemies, enemy shots, Isaac's tears, and pickups#They also deal contact damage to enemies caught in them"},
	[9999] = {"", "Orphan Socks", "Isaac gains 2 spirit hearts and can walk on harmful floor effects"},
	[9999] = {"", "Paschal Candle", "Increases tears for each room completed without taking damage#Resets on taking damage"},
	[9999] = {"", "Playdoh Cookie", "Adds random effects to tears"},
	[9999] = {"", "Pluto", "Decreases Isaac's size to the point where many tears will fly over Isaac#Increases tears and speed, and decreases range"},
	[9999] = {"", "Psy Fly", "Catches enemy shots and flings them back at enemies as homing tears"},
	[9999] = {"", "Red Stew", "Restores all red heart containers#Grants an enormous damage boost that wears off over time"},
	[9999] = {"", "Revelation", "Adds 2 Immortal Hearts, grants flight, gives tears a Brain Worm-like homing effect, decreases range and increases shot speed"},
	[9999] = {"", "Rock Bottom", "All stats down#Prevents stats from being lowered the rest of the run"},
	[9999] = {"", "Rocket In A Jar", "Grants 5 bombs#Bombs become rockets that fly in the direction Isaac is currently looking"},
	[9999] = {"", "Rotten Tomato", "Tears have a chance to mark enemies#Marked enemies will be attacked by other enemies"},
	[9999] = {"", "Saturnus", "Isaac is surrounded by an aura which grants 7 orbiting tears when entering a new room and has a chance to absorb incoming enemy tears"},
	[9999] = {"", "Sausage", "All stats up"},
	[9999] = {"", "Schoolbag", "Grants an extra active item slot"},
	[9999] = {"", "Sol", "Activates the Sun tarot card and fully recharges Isaac's active item upon defeating a boss#Reveals the location of the Boss room on the map"},
	[9999] = {"", "Spirit Sword", "Replaces Isaac's tears with a sword he can swing in front of him#Holding an attack button charges a spin attack#If Isaac is at full health, it also shoots a projectile when swung#Only one projectile can be active at once"},
	[9999] = {"", "Stone Bombs", "Grants 5 bombs#Bombs release rock waves in the cardinal directions, which can damage enemies, destroy obstacles, and damage Isaac"},
	[9999] = {"", "Terra", "Isaac's tears become rocks#The tears can also destroy rocks"},
	[9999] = {"", "Tinytoma", "A large orbital that slowly orbits Isaac#Upon taking enough tear or contact damage, the orbital splits into two smaller ones that orbit opposite of each other#If the small orbitals take enough damage, they burst into a few blue spiders, and the large orbital respawns"},
	[9999] = {"", "Uranus", "Isaac shoots ice tears"},
	[9999] = {"", "Venus", "Enemies near Isaac will be inflicted with Charm that wears off quickly after enemies move away from Isaac, causing enemies to attack each other"},
	[9999] = {"", "Voodoo Head", "Additional curse rooms can spawn each floor"},
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["en_us"].collectibles, true)

---------- Trinkets ----------
local repTrinkets={
	[129] = {"", "Beth's Faith", "Spawns four Book Of Virtues orbitals around Isaac at the beginning of each floor"},
	[130] = {"", "Blessed Penny", "Chance to spawn half a soul heart when picking up a coin"},
	[131] = {"", "Brain Worm", "Missed tears will redirect themselves and travel sideways towards enemies"},
	[132] = {"", "Broken Padlock", "Explosions can open locked doors and chests"},
	[133] = {"", "Broken Syringe", "Adds a chance to gain a random syringe item effect each room"},
	[134] = {"", "Chewed Pen", "Tears have a chance to slow enemies"},
	[135] = {"", "Devil's Crown", "Treasure Rooms are replaced with unique Red Treasure Rooms, offering a Deal with the Devil in place of an item"},
	[136] = {"", "Electric Penny", "Has a chance to generate an active item charge on a coin pickup"},
	[137] = {"", "Exploded Firecracker", "Placed bombs explode almost instantly"},
	[138] = {"", "Giant Bean", "Farts produced by Isaac or familiars will be twice as large"},
	[139] = {"", "Jawbreaker", "Tears have a chance to become a tooth, dealing extra damage"},
	[140] = {"", "Lighter", "Chance for enemies to burn when entering a room#Also makes enemies who expel gas clouds explode"},
	[141] = {"", "'M", "Active items will be rerolled upon using"},
	[142] = {"", "Myosotis", "Pickups left on current floor will appear in the starting room of the next floor"},
	[143] = {"", "Old Capacitor", "Activated items don't charge, but batteries drop more frequently#The battery drop chance is dependent on the held item's rate of recharge"},
	[144] = {"", "Perfection", "+10 Luck while held, trinket is destroyed when damage is taken#Drops from a floor boss every three floors without taking damage"},
	[145] = {"", "Song of the Siren", "↑ Increases rate of fire of familiars"},
	[146] = {"", "Teardrop Charm", "Tear-based effects have an extra chance of occurring"},
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

