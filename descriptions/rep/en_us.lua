------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
------------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning

local repCollectibles={
	{"", "Alabaster Box", "Gains charges through soul, black, and white hearts#After 6 full hearts are absorbed, it will spawn varying amounts of consumables and items from the Angel room pool"},
	{"", "Black Mushroom", "Reduces tear delay but distorts the screen for a length of time#Can be used multiple times to stack the effect#Tear delay is reset on changing rooms; however, the distortion persists"},
	{"", "Book Of Despair", "Increases tears for the current room"},
	{"", "Book Of Virtues", "Summons a temporary flame familiar that fires spectral tears, deal contact damage to enemies and blocks enemy shots#Flames are consumed after taking a certain amount of damage or touching enemies#A maximum of 16 flames can be active at once: one inner ring of eight and an outer ring of eight"},
	{"", "Bowl of Tears", "Fires a cluster of tears#Each tear shot by Isaac increases item charge by one"},
	{"", "D12", "Re-rolls all rocks in the current room into other random objects, such as bomb rocks, metal blocks, TNT, or poop"},
	{"", "Damocles", "Spawns a sword above Isaac's head#After taking damage at least once, the sword can fall at any time, instantly killing him#While he is alive, he receives bonus items from all sources"},
	{"", "Eraser", "Prevents an enemy from appearing for the rest of the run"},
	{"", "Eternal D6", "Rerolls items with chance of disappearing"},
	{"", "Fortune Cookie", "Displays a random fortune, and has a chance to drop a soul heart, card, rune or trinket"},
	{"", "Free Lemonade", "Creates a large puddle of lemonade that damages enemies"},
	{"", "Magic Skin", "Generates one item from the current room's item pool and gives Isaac a broken heart, which permanently decreases the maximum health limit"},
	{"", "Meat Cleaver", "Splits all enemies in a room into 2 smaller versions of themselves with lower health"},
	{"", "Mega Mush", "Gigantifies Isaac for a short duration"},
	{"", "Mom's Bracelet", "Allows the player to grab obstacles and throw them, damaging enemies"},
	{"", "R Key", "Upon use, restarts the game to the first floor, keeping all previously collected items#Game timer does not restart#Allows angels rooms to be found even if the previous run included devil deals"},
	{"", "Red Key", "Creates a red colored room on the map near Isaac's current position#The room can be anything from a regular encounter room to a Devil Room"},
	{"", "The Scooper", "Summons a Peep familiar for the current room, which leaves a trail of red creep"},
	{"", "Sharp Key", "Allows Isaac to consume keys and fire them at enemies#Adds 5 keys"},
	{"", "Stitches", "Spawns a familiar that flies diagonally across the room, switching direction upon hitting walls#Activating the item swaps the positions of Isaac and Stitches"},
	{"", "Sulfur", "Grants Brimstone for the current room"},
	{"", "Voodoo Pin", "Hurts Isaac without actually damaging him, activating any items that would trigger upon taking damage"},
	{"", "Yuck Heart", "Upon use, grants a rotten heart"},
	{"", "120 Volt", "Whenever an enemy is shot, it will zap other enemies near them, dealing damage"},
	{"", "2Spooky", "Enemies near Isaac will be inflicted with Fear, causing them to flee from him"},
	{"", "A Bar Of Soap", "Increases tears and shot speed"},
	{"", "Act Of Contrition", "Grants an Immortal Heart and increases tears"},
	{"", "Akeldama", "Whenever Isaac fires a shot, a bloody tear will spawn behind him#Multiple tears will form a trail of tears that drags behind Isaac as he moves, bursting and dealing damage upon contact with enemies#Multiple trails can be formed"},
	{"", "Almond Milk", "Upgrades fire rate immensely but significantly decreases damage, and tears are given random worm effects"},
	{"", "Battery Pack", "Recharges Isaac's currently held active item and drops 2-4 batteries"},
	{"", "Bird Cage", "Upon taking damage the first time in a room, the familiar leaps from Isaac's head, targets an enemy, and lands on them, dealing damage and releasing a rock wave#For the rest of the room, the familiar targets and attacks enemies similar to Dead Bird"},
	{"", "Bird's Eye", "Adds a chance to spit a large fire whenever Isaac fires a tear"},
	{"", "Birthright", "Grants different effects depending on which character you're playing as"},
	{"", "Blood Bombs", "Grants 1 heart container#Bombs create puddles of damaging red creep upon exploding#If Isaac has no bombs, bomb can be placed at the cost of half a heart"},
	{"", "Blood Oath", "Stabs Isaac at the beginning of each floor, draining all but half a heart of his heart containers#Increases damage and speed"},
	{"", "Boiled Baby", "Grants a familiar similar to a Boil that periodically fires bursts of bullets"},
	{"", "Booster Pack", "Spawns 3 tarot cards"},
	{"", "Bot Fly", "Grants a familiar that fires shielded tears at incoming bullets"},
	{"", "Consolation Prize", "Raises Isaac's current lowest stat#Can also drop a consumable for whichever Isaac has the least of"},
	{"", "Dirty Mind", "Destroying poop spawns friendly Dips that follow the player and damage enemies#Destroying different types of poop spawns different Dips with special effects"},
	{"", "Donkey Jawbone", "Whenever Isaac takes damage, a spin attack will damage enemies around him"},
	{"", "Enigma Bombs", "Grants 5 bombs#Bombs explode with a random bomb effect"},
	{"", "Evil Charm", "Grants +3 luck"},
	{"", "Eye Drops", "Increases tears#Tears fire at different rates from each of Isaac's eyes"},
	{"", "Eye Of The Occult", "Increases damage#Tears can be controlled mid-flight using the fire keys"},
	{"", "Eye Sore", "Frequently fire tears in random directions in addition to regular tears#Can fire up to three extra tears"},
	{"", "Freezer Baby", "Grants a familiar that fires shots that freeze enemies#Frozen enemies explode into ice shards when touched"},
	{"", "Immaculate Heart", "Fire orbiting tears along with normal tears"},
	{"", "The Intruder", "Isaac will now fire four slowing tears in addition to normal tears#Upon taking damage multiple times in one room, Isaac's head will pop, spawning friendly spiders and a familiar that leaps at enemies"},
	{"", "It Hurts", "Taking damage causes Isaac to release a ring of bloody tears and increases fire rate for current room"},
	{"", "Jacob's Ladder", "Generates a ladder in the starting room next floors, which leads to an Angel Room"},
	{"", "Knife Piece 1", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	{"", "Knife Piece 2", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	{"", "Knife Piece 3", "Has no effect on its own#Picking up all three pieces grants a knife familiar that damages enemies and grants access to the Corpse"},
	{"", "Knockout Drops", "Adds a chance to fire fist tears, which have massive knockback and briefly stun enemies"},
	{"", "Lil' Dumpy", "Grants a familiar that loosely follows the player#Farts when hit by enemy attacks"},
	{"", "Lodestone", "Adds a chance to fire magnetizing tears#Magnetized enemies attract other enemies, Isaac's tears, and enemy shots including their own"},
	{"", "Lost Soul", "Spawns a familiar version of The Lost that follows Isaac#Upon being hit, it instantly dies, regenerating on the next floor#If it survives an entire floor, it grants a random reward"},
	{"", "Luna", "Adds one extra Secret Room and one Super Secret Room on each floor"},
	{"", "Mars", "Gain the ability to charge by double-tapping in a direction#Isaac is invincible during the charge and deals significant damage#Can be used multiple times per room with a short recharge time"},
	{"", "Member Card", "Opens a trapdoor with a ladder in every shop#The trapdoor leads to a special shop room, which sells multiple items or pickups for random prices#Sold collectibles don't have to be from the Shop pool"},
	{"", "Menorah", "Spawns a menorah familiar that grants an extra tear per shot for each candle lit#The menorah starts with one candle lit, and each time Isaac is hit, another candle is lit, up to a maximum of 7 tears per shot#Being hit an additional time will release blue flames that damage enemies and reset the menorah"},
	{"", "Mercurius", "Doors stay open after entering a room, even with enemies in it, allowing Isaac to leave any time#Increases speed"},
	{"", "Monstrance", "Isaac emits an aura that damages nearby enemies"},
	{"", "Mucormycosis", "Upon enemies' death, they release a cloud of gas that damages and poisons other enemies"},
	{"", "Oculus Rift", "Adds a chance to fire tears that summon rifts wherever they land#Rifts attract enemies, enemy shots, Isaac's tears, and pickups#They also deal contact damage to enemies caught in them"},
	{"", "Orphan Socks", "Isaac gains 2 spirit hearts and can walk on harmful floor effects"},
	{"", "Paschal Candle", "Increases tears for each room completed without taking damage#Resets on taking damage"},
	{"", "Playdoh Cookie", "Adds random effects to tears"},
	{"", "Pluto", "Decreases Isaac's size to the point where many tears will fly over Isaac#Increases tears and speed, and decreases range"},
	{"", "Psy Fly", "Catches enemy shots and flings them back at enemies as homing tears"},
	{"", "Red Stew", "Restores all red heart containers#Grants an enormous damage boost that wears off over time"},
	{"", "Revelation", "Adds 2 Immortal Hearts, grants flight, gives tears a Brain Worm-like homing effect, decreases range and increases shot speed"},
	{"", "Rock Bottom", "All stats down#Prevents stats from being lowered the rest of the run"},
	{"", "Rocket In A Jar", "Grants 5 bombs#Bombs become rockets that fly in the direction Isaac is currently looking"},
	{"", "Rotten Tomato", "Tears have a chance to mark enemies#Marked enemies will be attacked by other enemies"},
	{"", "Saturnus", "Isaac is surrounded by an aura which grants 7 orbiting tears when entering a new room and has a chance to absorb incoming enemy tears"},
	{"", "Sausage", "All stats up"},
	{"", "Schoolbag", "Grants an extra active item slot"},
	{"", "Sol", "Activates the Sun tarot card and fully recharges Isaac's active item upon defeating a boss#Reveals the location of the Boss room on the map"},
	{"", "Spirit Sword", "Replaces Isaac's tears with a sword he can swing in front of him#Holding an attack button charges a spin attack#If Isaac is at full health, it also shoots a projectile when swung#Only one projectile can be active at once"},
	{"", "Stone Bombs", "Grants 5 bombs#Bombs release rock waves in the cardinal directions, which can damage enemies, destroy obstacles, and damage Isaac"},
	{"", "Terra", "Isaac's tears become rocks#The tears can also destroy rocks"},
	{"", "Tinytoma", "A large orbital that slowly orbits Isaac#Upon taking enough tear or contact damage, the orbital splits into two smaller ones that orbit opposite of each other#If the small orbitals take enough damage, they burst into a few blue spiders, and the large orbital respawns"},
	{"", "Uranus", "Isaac shoots ice tears"},
	{"", "Venus", "Enemies near Isaac will be inflicted with Charm that wears off quickly after enemies move away from Isaac, causing enemies to attack each other"},
	{"", "Voodoo Head", "Additional curse rooms can spawn each floor"},
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
	[55] = {"", "Rune of Gebo", "Interacts with any machine or beggar in the room#Donates 7 coins to donation machines, plays beggars 6 times, plays blood machines 4 times, plays other machines 5 times#Machines and beggars have an increased chance to pay out or explode, even paying out at only one play"},
	[56] = {"", "Rune of Kenaz", "Poisons all enemies in the room for 48 hits#Seems to do between 1.0 and 3.5 damage per hit, but never scales off of Isaac's damage stat"},
	[57] = {"", "Rune of Fehu", "Turns all pickups or items in the room into coins#Coins generated are equal to how much the item would be worth in a shop (Items give 15 cents, trinkets give 5 cents, black hearts give 6 cents, 1+1 bombs/keys give 10 cents)#Does not work on chests, open or closed, unless the chest has a pedestal item#Does not work with pickups or items not on the ground (Shop items, Devil deals)"},
	[58] = {"", "Rune of Othala", "Gives Isaac a random item that he already holds#Items interact like how they would if you had gotten them from a pedestal"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["en_us"].cards, true)

---------- Pills ----------

local repPills={
	[47] = {"", "Experimental Pill", "↑ Increases 1 random stat#↓ Decreases 1 random other stat#Will not decrease with PHD"},
	[48] = {"", "Shot Speed Down", "↓ Shot Speed down"},
	[49] = {"", "Shot Speed Up", "↑ Shot Speed up"},
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["en_us"].pills, true)

---------- Transformations ----------

local repTransformations={}
EID:updateDescriptionsViaTable(repTransformations, EID.descriptions["en_us"].transformations,false)

