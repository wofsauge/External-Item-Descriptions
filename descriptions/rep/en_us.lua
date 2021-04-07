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
	
	[555] = {"555", "", "Converts 5 coins into +1.2 Damage up for the current room"}, --  Golden Razor
	[556] = {"556", "", "Grants Brimstone {{Collectible118}} for the current room"}, --  Sulfur
	[557] = {"557", "", "Gives Isaac a fortune, soul heart, tarot card, or trinket"}, --  Fortune Cookie
	[577] = {"577", "", "{{Warning}} ONE TIME USAGE {{Warning}}#Spawns a sword above your head, which doubles all item pedestals and Beggar rewards#Kills you at a random time when taking damage and holding the sword up"}, --  Damocles
	[578] = {"578", "", "Creates a large pool of yellow creep"}, --  Free Lemonade
	[580] = {"580", "", "Creates a new room adjacent to a viable wall, indicated by a door outline of a door#Rooms can be special rooms# A room outside the 13x13 floor map will teleport you to the I AM ERROR room"}, --  Red Key
	[582] = {"582", "", "↑ +0.75 Fire rate#↓ -0.03 Speed down#Distorts screen#Effect can be stacked"}, --  Wavy Cap
	[584] = {"584", "", "Spawns an orbital Wisp familiar that fires spectral tears but can be destroyed#Can be combined with a second active Item to create themed wisps#Turns first Devil Room into an Angel Room"}, --  Book of Virtues
	[585] = {"585", "", "Spawns three soul hearts and two angel room items#Must be charged by picking up soul hearts"}, --  Alabaster Box
	[604] = {"604", "", "Allows to pick up and throw rocks, TNT, poops, Hosts, and other obstacles#Allows to carry them between rooms"}, --  Mom's Bracelet
	[605] = {"605", "", "Summons a Peeper familiar for the current room, which leaves a trail of red creep"}, --  The Scooper
	[609] = {"609", "", "Rerolls all items in the room#Items have a chance to disappear"}, --  Eternal D6
	[611] = {"611", "", "Makes you shout, damaging and pushing nearby enemies#Shout gets stronger the more charges the item has"}, --  Larynx
	[622] = {"622", "", "{{Warning}} ONE TIME USAGE {{Warning}}#Removes all of Isaac's items and pickups#Teleports you to a unique bedroom with pickups, chests and a trapdoor#For every item lost, Treasure Rooms {{TreasureRoom}} show a set of 3 items to choose from"}, --  Genesis
	[623] = {"623", "", "+5 keys#Throw your key to deal damage, destroy obstacles, or open doors"}, --  Sharp Key
	[625] = {"625", "", "Gigantifies you for 30 seconds#Increases damage and range#Grants invulnerability and ability to crush enemies and obstacles#Effect persists between rooms"}, --  Mega Mush
	[628] = {"628", "", "{{Warning}} ONE TIME USAGE {{Warning}}#Takes you to a floor containing every item in the game#After taking an item, return to the room you came from"}, --  Death Certificate
	[631] = {"631", "", "Splits enemies in the room into 2 smaller versions of themselves with much less health"}, --  Meat Cleaver
	[635] = {"635", "", "Passively spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and gains short invincibility#Teleporting onto things can damage or destroy them"}, --  Stitches
	[636] = {"636", "", "{{Warning}} ONE TIME USAGE {{Warning}}#Teleports you back to the first floor of a new run#Items and pickups stay intact"}, --  R Key
	[638] = {"638", "", "Throws an eraser that instantly kills an enemy#Prevents the enemy from spawning for the rest of the run#Can only be used once per floor"}, --  Eraser
	[639] = {"639", "", "Grants a Rotten Heart upon use"}, --  Yuck Heart
	[640] = {"640", "", "Spews a stream of flames#Gains charges each time an enemy dies"}, --  Urn of Souls
	[642] = {"642", "", "Consumes 1 heart container or 2 soul hearts to spawn an item of the current item pool#Also grants a broken heart container that can never be filled#{{Warning}} Single Use item for The Lost"}, --  Magic Skin
	[650] = {"650", "", "Summons friendly Baby Plum in the current room for 10 seconds"}, --  Plum Flute
	[653] = {"653", "", "While held, non-ghost enemies spawn small red ghosts on death#On use, causes the ghosts to explode"}, --  Vade Retro
	[655] = {"655", "", "Adds spinning top orbital that blocks enemy shots and deals contact damage#When used,↑ +0.5 speed and greatly increases the rotation speed of orbitals"}, --  Spin to Win
	[685] = {"685", "", "Spawns random wisps that shoot various tears, block shots, and deal contact damage#Number of wisps spawned increases the more its used"}, --  Jar of Wisps
	[687] = {"687", "", "Spawns a random friendly monster that mimics Isaac's movements and attacks"}, --  Friend Finder
	[703] = {"703", "", "Swaps between the current character and Esau Jr., who has 3 Black hearts, +2 damage and flight#Characters have independent items and health#{{Warning}} Dying as either character ends the run"}, --  Esau Jr.
	[704] = {"704", "", "Berserk mode for 5 seconds:#↑ +0.4 Speed up#↑ Tears up#↑ +3.0 Damage up#Restricts attacks to a melee weapon"}, --  Berserk!
	[705] = {"705", "", "When used, gain ↑ +1.0 speed and ability to walk through enemies/bullets for 1 second#Shortly increases damage by 1 for each enemy touched#Damages touched enemies with 3x your damage"}, --  Dark Arts
	[706] = {"706", "", "Destroys all items in the room and spawns an attack fly familiar for each#Effects of fly depends on the items"}, --  Abyss
	[709] = {"709", "", "Allows you to dash into and pick up enemies or bosses, then slam them into the ground#Slam can be controlled#Slam deals 50 damage ans spawns rock waves"}, --  Suplex!
	[710] = {"710", "", "Collects and holds up to 8 pickups#Holding the activate button crafts the pickups into an item#Quality of item is dependant on the quality of the pickups"}, --  Bag of Crafting
	[711] = {"711", "", "Switch characters between Tainted Lazarus and Dead Tainted Lazarus"}, --  Flip
	[712] = {"712", "", "Spawns destroyable orbital item ghost#Effect of item is applied to the player#Items are choosen from current rooms item pool"}, --  Lemegeton
	[713] = {"713", "", "Holding down the fire button converts half a heart into destroyable familiars every 2 seconds#Activating converts the familiars back into hearts#Type of hearts change familiar behavior"}, --  Sumptorium
	[714] = {"714", "", "Retrieves the Forgotten's body from any distance"}, --  Recall
	[715] = {"715", "", "Preserves one poop bomb inside that can be used later"}, --  Hold
	[719] = {"719", "", "Spawns a random shop item/pickup"}, --  Keeper's Box
	[720] = {"720", "", "Spawns certain pickups based on how many charges it has#If fully charged, it has a stronger random effect#Charge Rewards: 1:Poop 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[722] = {"722", "", "Chains down the nearest enemy for 5 seconds, preventing them from acting"}, --  Anima Sola
	[723] = {"723", "", "Transforms all items in the room by decreasing their internal ID number by one"}, --  Spindown Dice
	[728] = {"728", "", "Spawns a demon familiar that's attached to Isaac#Mimics Isaacs tears, stats and effects"}, --  Gello
	[729] = {"729", "", "Throws Isaac's head, while being able to fire tears at the spot it lands#Reactivating the item or stepping on the head reattaches it"}, --  Decap Attack
	--[[ CHECKED REPENTANCE ITEMS TO THIS POINT!!!
	[544] = {"544", "", "Spawns a bone familiar that hovers back and forth in front of Isaac, dealing damage equal to Isaac's damage"}, --  Pointy Rib
	[546] = {"546", "", "Creates a ring of light around Isaac that petrifies enemies in contact"}, --  Dad's Ring
	[547] = {"547", "", "Grants one Bone Heart, +0.7 tears, spawns a Mysterious Paper"}, --  Divorce Papers
	[548] = {"548", "", "Spawns a familiar that flies through the room while firing, dealing a flat 7 contact damage to enemies retrieving pickups"}, --  Jaw Bone
	[549] = {"549", "", "Replaces all Red Hearts with 6 empty Bone Hearts. Upon losing a Bone Heart, Isaac fires bones in 8 directions and permanently gains a tears up"}, --  Brittle Bones
	[551] = {"551", "", "One of two parts necessary to create Mom's Shovel"}, --  Broken Shovel
	[553] = {"553", "", "Gives Isaac the chance to fire spore tears that stick to enemies and blow up after a few seconds, dealing damage and poisoning nearby enemies and releasing more spores"}, --  Mucormycosis
	[554] = {"554", "", "Enemies near Isaac are afflicted with fear"}, --  2Spooky
	[558] = {"558", "", "Causes Isaac to occasionally extra fire tears in random directions while shooting"}, --  Eye Sore
	[559] = {"559", "", "Repeatedly zaps enemies that are close to Isaac"}, --  120 Volt
	[560] = {"560", "", "Releases a ring of tears and increases tears for the current room when Isaac takes damage"}, --  It Hurts
	[561] = {"561", "", "Quadruples fire rate, with x0.3 damage multiplier. Tears are given random worm trinket effects"}, --  Almond Milk
	[562] = {"562", "", "Sets all stats to their base value. Prevents stats from being lowered for the rest of the run"}, --  Rock Bottom
	[563] = {"563", "", "+5 bombs. Bombs explode with a random bomb effect"}, --  Nancy Bombs
	[564] = {"564", "", "+0.57 Tears, +0.2 Shot Speed"}, --  A Bar of Soap
	[565] = {"565", "", "Spawns a familiar that chases enemies. After killing enough enemies, it becomes more powerful but will also try to hurt Isaac. Attacking it returns it to normal"}, --  Blood Puppy
	[566] = {"566", "", "During the transition between floors, Isaac's nightmare shows the floor's Treasure Room item and boss. Grants half a soul heart when entering a new floor"}, --  Dream Catcher
	[567] = {"567", "", "Gives Isaac a tears bonus based on how many consecutive rooms he's cleared without taking damage"}, --  Paschal Candle
	[568] = {"568", "", "Double tapping a fire key creates a shield that pushes away enemies and reflects enemy projectiles and lasers"}, --  Divine Intervention
	[569] = {"569", "", "Stabs Isaac at the beginning of each floor, draining his red hearts. Increases damage and speed for the floor based on the amount drained"}, --  Blood Oath
	[570] = {"570", "", "Grants multicolored tears. Each color comes with a different status or tear effect"}, --  Playdough Cookie
	[571] = {"571", "", "Prevents creep and floor spikes from damaging Isaac. Also gives Isaac +0.3 speed and 2 soul hearts"}, --  Orphan Socks
	[572] = {"572", "", "Isaac's tears are now controlled mid-flight with tear controls. Also increases damage and range, but decreases shot speed"}, --  Eye of the Occult
	[573] = {"573", "", "Adds one Red Heart container and +1.2x damage. In addition to normal tears, Isaac will occasionally fire extra tears that orbit around him"}, --  Immaculate Heart
	[574] = {"574", "", "Isaac gains two circular auras that damage enemies. The inner aura deals more damage"}, --  Monstrance
	[575] = {"575", "", "A familiar burrows in Isaac's head, firing 4 slowing tears. Upon taking damage, there's a chance it will burst out of Isaac's head, spawning blue spiders and chasing enemies for the current room"}, --  The Intruder
	[576] = {"576", "", "Destroying poop spawns friendly Dips that follow Isaac and damage enemies. Destroying different types of poop spawns different Dips with special effects"}, --  Dirty Mind
	[579] = {"579", "", "Instead of tears, Isaac swings a sword. Charging does a spin attack and fires a projectile, and a projectile is sometimes fired with normal swings if Isaac has no empty red hearts"}, --  Spirit Sword
	[581] = {"581", "", "Spawns a fly orbital familiar that chases and deflects enemy shots and converts them into homing tears"}, --  Psy Fly
	[583] = {"583", "", "+5 bombs. If Isaac is currently moving, placing a bomb will instead shoot a fast-moving, explosive rocket in the direction he's facing"}, --  Rocket in a Jar
	[586] = {"586", "", "Generates a ladder at the start of every floor that leads to a unique Angel Room shop"}, --  The Stairway
	[588] = {"588", "", "Reveals the location of the Boss room. Upon defeating a boss, activates XIX - The Sun, fully recharges Isaac's active item, and grants bonus damage and luck for the rest of the floor"}, --  Sol
	[589] = {"589", "", "Adds an extra Secret Room and Super Secret Room to each floor. Secret Rooms contain a beam of light that increases tears for the current floor and give soul hearts"}, --  Luna
	[590] = {"590", "", "+0.4 speed. Doors stay open after entering a room, even in rooms with enemies"}, --  Mercurius
	[591] = {"591", "", "Adds one red Heart container. Enemies near Isaac become charmed"}, --  Venus
	[592] = {"592", "", "Replaces tears with rocks that deal variable damage, have increased knockback, and can destroy obstacles"}, --  Terra
	[593] = {"593", "", "Dash by double-tapping the movement key, becoming invulnerable and damaging enemies. There's a short cooldown before Isaac can dash again"}, --  Mars
	[594] = {"594", "", "+2 red Heart containers, -0.3 speed. Isaac charges up while standing still, and releases a poisoning gas cloud when he moves"}, --  Jupiter
	[595] = {"595", "", "Upon entering a room, a circle of tears orbits Isaac. Enemy tears have a chance to be caught in orbit, turning them friendly"}, --  Saturnus
	[596] = {"596", "", "Isaac shoots ice tears, which slow enemies and freeze monsters they kill. Frozen enemies slide away and explode into ice shards when touched"}, --  Uranus
	[597] = {"597", "", "While not firing, Isaac builds a massive tears bonus over 3 seconds. The tear bonus falls off rapidly as Isaac fires"}, --  Neptunus
	[598] = {"598", "", "Significantly shrinks Isaac, allowing him to squeeze between objects and makes some enemy shots pass over him. Also gives +0.7 tears"}, --  Pluto
	[599] = {"599", "", "Spawns an additional curse room on each floor"}, --  Voodoo Head
	[600] = {"600", "", "Lowers the tear delay in Isaac's left eye, causing his eyes to fire at different rates"}, --  Eye Drops
	[601] = {"601", "", "Increases tears and grants an Eternal Heart. Allows Angel Rooms to appear even if a Devil deal has been taken before"}, --  Act of Contrition
	[602] = {"602", "", "Adds a trapdoor to every shop that leads to a second shop with a unique stock and marked up prices"}, --  Member Card
	[603] = {"603", "", "Recharges Isaac's currently held active item and drops 2-4 batteries"}, --  Battery Pack
	[606] = {"606", "", "Gives Isaac the chance to fire tears that create rifts where they land, which damage nearby enemies and pull in enemies, pickups, and tears/shots from all sources"}, --  Ocular Rift
	[607] = {"607", "", "Gives Isaac a familiar that fires chaotic bursts of tears in all directions"}, --  Boiled Baby
	[608] = {"608", "", "Spawns a shooting familiar that has a chance to petrify enemies, and Freezes monsters upon killing them"}, --  Freezer Baby
	[610] = {"610", "", "The first time Isaac takes damage in a room, a familiar leaps on an enemy, dealing damage and releasing a rock wave. For the rest of the room, it chases enemies similar to  Dead Bird"}, --  Bird Cage
	[612] = {"612", "", "Gives Isaac a soul familiar that dies in one hit, respawning at the start of the next floor. If it survives an entire floor, it rewards Isaac with hearts or items"}, --  Lost Soul
	[614] = {"614", "", "Causes Isaac's bombs to leave behind damaging red creep and allows Isaac to place bombs at the cost of half a heart if he doesn't have any. Also gives Isaac a heart container and heals him for five hearts"}, --  Blood Bombs
	[615] = {"615", "", "Gives Isaac a Dumpy familiar that, when it takes damage, pushes/stuns/poisons nearby enemies and flies in a random direction"}, --  Lil Dumpy
	[616] = {"616", "", "Gives Isaac the chance to shoot fires alongside his regular tears that block enemy shots and deal damage to enemies that touch them"}, --  Bird's Eye
	[617] = {"617", "", "Gives Isaac the chance to fire tears that magnetize enemies they hit, causing them to attract nearby pickups and enemies, as well as tears/shots from all sources"}, --  Lodestone
	[618] = {"618", "", "Adds a chance to fire tears that Mark enemies. Marked enemies are attacked by other enemies"}, --  Rotten Tomato
	[619] = {"619", "", "Has a different effect for each character"}, --  Birthright
	[621] = {"621", "", "Refills all heart containers. Grants an enormous damage boost that wears off over time"}, --  Red Stew
	[624] = {"624", "", "Spawns 5 random cards"}, --  Booster Pack
	[626] = {"626", "", "Combined with  Knife Piece 2, creates a knife familiar that damages enemies and can open the door to the  Corpse"}, --  Knife Piece 1
	[627] = {"627", "", "Combined with  Knife Piece 1, creates a knife familiar that damages enemies and can open the door to the  Corpse"}, --  Knife Piece 2
	[629] = {"629", "", "Spawns an orbiting fly familiar that fires shielded tears at incoming enemy projectiles"}, --  Bot Fly
	[632] = {"632", "", "Increases luck by 2.0"}, --  Evil Charm
	[633] = {"633", "", "Grants flight and the  Holy Mantle effect. Automatically given to Isaac after defeating Dogma"}, --  Dogma
	[634] = {"634", "", "While in a room with enemies, spawns cracks on the ground. Walking over these cracks summon ghosts that launch themselves at enemies and explode"}, --  Purgatory
	[637] = {"637", "", "Adds a chance to shoot a fist tear that has extremely high knockback and confuses enemies"}, --  Knockout Drops
	[641] = {"641", "", "Creates a chain of tears behind Isaac while in combat"}, --  Akeldama
	[643] = {"643", "", "Allows Isaac to charge a holy laser by continuously firing for 2.5 seconds, then releasing the fire buttons. Also gives Isaac flight and 2 soul hearts"}, --  Revelation
	[644] = {"644", "", "Increases Isaac's lowest stat and drops either 3 coins, 1 bomb, or 1 key depending on what Isaac has the least of"}, --  Consolation Prize
	[645] = {"645", "", "Gives Isaac a Teratoma orbital that blocks shots, deals contact damage, and splits into smaller versions of itself upon taking damage. The smaller versions break into blue spiders"}, --  Tinytoma
	[646] = {"646", "", "+5 bombs. Bombs release a 4-way  Brimstone laser in cardinal directions upon exploding"}, --  Brimstone Bombs
	[647] = {"647", "", "Active items don't charge when clearing rooms. Instead, they're charged by dealing damage to enemies"}, --  4.5 Volt
	[649] = {"649", "", "Gives Isaac a miniature Baby Plum familiar that propels itself diagonally around the room, firing tears behind itself as it travels"}, --  Fruity Plum
	[651] = {"651", "", "Spawns a star familiar that slowly travels towards the Boss Room, giving an aura that increases damage and tears and grants homing"}, --  Star of Bethlehem
	[652] = {"652", "", "Spawns an ice cube familiar that slides around when walked into. It slows and deals contact damage, freezing monsters it kills"}, --  Cube Baby
	[654] = {"654", "", "Converts good pills into bad pills and identifies all pills. Bad pills now have secondary positive effects. Grants one Black Heart"}, --  False PHD
	[657] = {"657", "", "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"}, --  Vasculitis
	[658] = {"658", "", "Causes Isaac to spawn micro-Isaacs when he takes damage, which chase and shoot at nearby enemies"}, --  Giant Cell
	[659] = {"659", "", "+1.5 range, Increases tear size"}, --  Tropicamide
	[660] = {"660", "", "Spawns two portals that each lead to either the Boss Room, Secret Room, or Treasure Room at the beginning of each floor"}, --  Card Reading
	[661] = {"661", "", "Killing enemies spawns a stationary shooting familiar where they died for the current room"}, --  Quints
	[663] = {"663", "", "Isaac periodically turns into a spiked statue, briefly becoming invulnerable and dealing contact damage"}, --  Tooth and Nail
	[664] = {"664", "", "+1 Red Heart Container. Item pedestals periodically switch between any food item and the item they would otherwise contain. Picking up a food item grants a large temporary damage boost and small permanent stat boost"}, --  Binge Eater
	[665] = {"665", "", "Shows the contents of Chests, Sacks, and Fire Places before they're opened"}, --  Guppy's Eye
	[667] = {"667", "", "Spawns Keeper to fight enemies alongside Isaac. If Keeper dies, he spawns blue spiders and Strawman is removed from Isaac's inventory"}, --  Strawman
	[668] = {"668", "", "Begins the sequence to access Home"}, --  Dad's Note
	[669] = {"669", "", "+0.2 Speed, +1.33 Damage, +1.2 Shot Speed, +0.16 Range, +1 Luck"}, --  Sausage
	[670] = {"670", "", "If a room gives a reward when cleared, there will be two different rewards to chose from. Taking one causes the other to disappear"}, --  Options?
	[671] = {"671", "", "Gives permanent stat boosts when Isaac heals with red heart pickups"}, --  Candy Heart
	[672] = {"672", "", "Devil deals now cost coins, shop items now cost health, and consumables in shops are free but surrounded by spikes"}, --  A Pound of Flesh
	[673] = {"673", "", "Gives Isaac a soul heart and +1 damage if he ignores a devil room"}, --  Redemption
	[674] = {"674", "", "On death, Isaac's ghost is chained to his dead body and he can continue to fight with 1/2 of a heart, returning to life after 10 seconds. Must be recharged by picking up a soul heart"}, --  Spirit Shackles
	[675] = {"675", "", "Unlocks doors and reveals a random room on the map when Isaac takes damage"}, --  Cracked Orb
	[676] = {"676", "", "Gives Isaac an empty heart container at the start of every floor"}, --  Empty Heart
	[677] = {"677", "", "Causes Isaac to turn into a ghost if he gets hit while in a room with enemies, giving him flight and spectral tears and blocking the next hit he takes"}, --  Astral Projection
	[678] = {"678", "", ""}, --  C Section
	[679] = {"679", "", "Spawns a familiar that charges a miniature  Maw of the Void attack while Isaac shoots"}, --  Lil Abaddon
	[680] = {"680", "", "While firing, Isaac charges up a short-ranged  Brimstone-like diarrhea beam that shoots behind him"}, --  Montezuma's Revenge
	[681] = {"681", "", "A familiar that flies forward, consuming pickups in its path. Each one will increase its size and damage and spawn a Blue Fly. Every four pickups, it opens a portal that leads to an unexplored room"}, --  Lil Portal
	[682] = {"682", "", ""}, --  Worm Friend
	[683] = {"683", "", "Enemies spawn floating bones on death, which block shots and damage/repel enemies that touch them"}, --  Bone Spurs
	[684] = {"684", "", "Enemies have a chance to spawn ghosts on death, which chase and deal contact damage to enemies and explode after a short time"}, --  Hungry Soul
	[686] = {"686", "", "Gives Isaac a permanent stat boost whenever he picks up a soul heart"}, --  Soul Locket
	[688] = {"688", "", "Upon death, Isaac respawns in the current room with half a heart left, a massive size down, and +0.2 speed"}, --  Inner Child
	[689] = {"689", "", "Before being picked up, item pedestals cycle between 5 random items"}, --  Glitched Crown
	[690] = {"690", "", "Causes enemies to bounce off of Isaac, dealing damage to them if they hit and enemy or obstacle. Also gives Isaac the chance to deflect enemy shots"}, --  Belly Jelly
	[691] = {"691", "", "Prevents low-quality items from spawning, greatly increasing the quality of items received from all items pools"}, --  Sacred Orb
	[692] = {"692", "", "Spawns a special set of spikes in the Devil Room. Taking damage from the spikes has a chance to grant a reward"}, --  Sanguine Bond
	[693] = {"693", "", "Spawns nine orbital flies, which turn into Blue Flies after they block a shot. Each time a room is cleared, spawns another orbital fly"}, --  The Swarm
	[694] = {"694", "", "Grants 3 broken hearts and +0.25 damage for every broken heart Isaac has. Every otherwise fatal hit will add 2 more until Isaac has nothing but broken hearts"}, --  Heartbreak
	[695] = {"695", "", "When Isaac takes damage, he gains speed and tears for the rest of the floor"}, --  Bloody Gust
	[696] = {"696", "", "Gives Isaac a halo that summons beams of light on enemies inside it. The halo grows larger the more times Isaac has taken damage this floor"}, --  Salvation
	[697] = {"697", "", "Spawns a familiar that becomes a clone of the floor's boss when entering the boss room. Defeating it drops an extra item"}, --  Vanishing Twin
	[698] = {"698", "", "Gives Isaac two familiars that stand by Isaac's side and fire tears that use Isaac's tears, range, shot speed, and tear effects and scale with Isaac's damage"}, --  Twisted Pair
	[699] = {"699", "", "Isaac builds rage every time a room is cleared. After four rooms, fires a large  Brimstone laser when entering the next room"}, --  Azazel's Rage
	[700] = {"700", "", "When Isaac uses a card, pill, or rune, he also uses a copy of every card/pill/rune he used after picking up Echo Chamber"}, --  Echo Chamber
	[701] = {"701", "", "Spawns an Old Chest at the start of each floor"}, --  Isaac's Tomb
	[702] = {"702", "", "After taking damage, spawns an orbital wisp that lasts for the entire floor, up to a maximum of six. They fire tears but do not block shots"}, --  Vengeful Spirit
	[707] = {"707", "", "Grants one Red Heart container and heals for one extra heart"}, --  Supper
	[708] = {"708", "", "+1 damage. Prevents Isaac from firing tears from one eye, like Cain"}, --  Stapler
	[716] = {"716", "", "Gives range, speed, or damage when buying things from a shop. Also spawns three coins and a key on pickup"}, --  Keeper's Sack
	[717] = {"717", "", "Rocks and props spawn two blue spiders when destroyed"}, --  Keeper's Kin
	[721] = {"721", "", "Causes all future items to be "glitched", granting them completely random effects"}, --  TMTRAINER
	[724] = {"724", "", "After taking damage from an enemy, launches a half or full red heart from Isaac that despawns after 1.5 seconds"}, --  Hypercoagulation
	[725] = {"725", "", "Causes Isaac to throw poop, create buffing creep, and drop bombs while fighting enemies"}, --  IBS
	[726] = {"726", "", "Double-tapping a fire button causes Isaac to sneeze blood, dealing damage to enemies in front of him"}, --  Hemoptysis
	[727] = {"727", "", "Gives Isaac 5 bombs and causes his bombs to spawn ghosts that deal contact damage to enemies and explode after 10 seconds"}, --  Ghost Bombs
	]]--
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
	[119] = {"119", "", "Sets your red HP to 50% of your maximum upon entering the next floor#If your health is aboth that, it heals half a red heart"}, -- Stem Cell
    [128] = {"128", "", "5% chance to gain a Bone Heart when taking damage"}, -- Finger Bone
	
	[129] = {"129", "", "Chance to shoot tooth tears"}, --  Jawbreaker
	[130] = {"130", "", "Chance to shoot slowing tears"}, --  Chewed Pen
	[131] = {"131", "", "Chance to drop half soul hearts when collecting coins"}, --  Blessed Penny
	[132] = {"132", "", "Chance to gain a random syringe effect for current room"}, --  Broken Syringe
	[133] = {"133", "", "Bombs placed by Isaac explode more quickly"}, --  Short Fuse
	[134] = {"134", "", "Increases fart size"}, --  Gigante Bean
	[135] = {"135", "", "Chance to apply burn effect to enemies upon entering a room"}, --  A Lighter
	[136] = {"136", "", "Doors, key blocks and golden chests can be open with explosions#Can also open the Home door"}, --  Broken Padlock
	[137] = {"137", "", "When entering a new floor, up to 4 uncollected pickups from the previous floor spawn in the starting room"}, --  Myosotis
	[138] = {"138", "", "Using an active item rerolls it"}, --  'M
	[139] = {"139", "", "Luck-based tear effects occur more often"}, --  Teardrop Charm
	[140] = {"140", "", "Picking up red hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, --  Apple of Sodom
	[141] = {"141", "", "Increases fire rate of familiars"}, --  Forgotten Lullaby
	[142] = {"142", "", "At the beginning of each floor, spawns 4 Book of Virtues {{Collectible584}} wisps"}, --  Beth's Faith
	[143] = {"143", "", "Prevents active item from charging#Chance to spawn lil Battery when clearing a room"}, --  Old Capacitor
	[144] = {"144", "", "Tears turn 90 degrees to target enemies that they may have missed"}, --  Brain Worm
	[146] = {"146", "", "Treasure rooms {{TreasureRoom}} now contain devil deals"}, --  Devil's Crown
	[147] = {"147", "", "Picking up coins can charge the Active Item"}, --  Charged Penny
	[148] = {"148", "", "Causes familiars to circle around Isaac"}, --  Friendship Necklace
	[149] = {"149", "", "Activates your active item upon taking damage"}, --  Panic Button
	[150] = {"150", "", "Entering a room that requires a key brings you in a room resembling the Hush stage#Room acts as an in-between of the two rooms"}, --  Blue Key
	[151] = {"151", "", "Causes spikes to retract, making them harmless#Also affects Curse Rooms {{CursedRoom}} doors, mimics and any spike obstacle"}, --  Flat File
	[152] = {"152", "", "Makes it possible to spawn a second Planetarium#Planetariums can now spawn in the Womb"}, --  Telescope Lens
	[153] = {"153", "", "Each room, grants the effects of a random Mom item"}, --  Mom's Lock
	[154] = {"154", "", "When entering a new room, grants a temporary Dice consumable item#The Dice dissapears when leaving#Grants ability to hold two consumables"}, --  Dice Bag
	[155] = {"155", "", "Spawns a Treasure Room {{TreasureRoom}} in Cathedral"}, --  Holy Crown
	[156] = {"156", "", "Grants one heart container#Works for Keeper, too"}, --  Mother's Kiss
	[157] = {"157", "", "Every 15 shots, shoot an Ipecac {{Collectible149}} + My Reflection {{Collectible5}} tear with a very high range value"}, --  Torn Card
	[158] = {"158", "", "Upon hit, Isaac drops all of his Pickups#(Exception: Hearts, Cards, Pills, Runes)"}, --  Torn Pocket
	[159] = {"159", "", "Replaces all new chests, with Locked Chest#Excepttion: Mega Chest"}, --  Gilded Key
	[160] = {"160", "", "Spawns a Grab Bag upon traveling to the next floor"}, --  Lucky Sack
	[161] = {"161", "", "Spawns a Treasure Room {{TreasureRoom}} in Sheol"}, --  Wicked Crown
	[162] = {"162", "", "Chance to turn into Azazel when entering a new room"}, --  Azazel's Stump
	[163] = {"163", "", "Spawns 2 friendly Dips upon clearing a room"}, --  Dingle Berry
	[164] = {"164", "", "Spawns two extra bombs for each bomb placed"}, --  Ring Cap
	[165] = {"165", "", "On Womb and beyond, replaces all pickup spawns with a random pickup#Bombs and Hearts are most common"}, --  Nuh Uh!
	[166] = {"166", "", "Grants the effect of a random Passive Item each room"}, --  Modeling Clay
	[167] = {"167", "", "Chance to spawn a friendly Bony when clearing a room"}, --  Polished Bone
	[168] = {"168", "", "+1 bone heart container upon entering a new floor"}, --  Hollow Heart
	[169] = {"169", "", "While held, counts towards the Guppy transformation"}, --  Kid's Drawing
	[170] = {"170", "", "Grants the chance to automatically create Red Key rooms {{Collectible580}}"}, --  Crystal Key
	[171] = {"171", "", "Devil deals use coins instead of hearts"}, --  Keeper's Bargain
	[172] = {"172", "", "Teleport to a random room upon picking up a penny#Can teleport to secret rooms"}, --  Cursed Penny
	[173] = {"173", "", "{{Warning}} ONE TIME USAGE {{Warning}}#Can be used to pay for a Devil deal without losing hearts"}, --  Your Soul
	[174] = {"174", "", "+10% Deavil deal chance"}, --  Number Magnet
	[175] = {"175", "", "Unlocks the passageway to the Hush fight, regardless of the run duration#Using Pandora's Box {{Collectible297}} spawns 6 items from random pools"}, --  Strange Key
	[176] = {"176", "", "Spawns a blood clot familiar who mimics Isaacs movement, shoot direction and tear effects"}, --  Lil Clot
	[177] = {"177", "", "Spawns a chest after clearing a mob Challenge Room, or a collectible after clearing a boss Challenge Room"}, --  Temporary Tattoo
	[178] = {"178", "", "Player explodes upon taking damage"}, --  Swallowed M80
	[179] = {"179", "", "Familiars movement will be controlled by the same inputs as the player"}, --  RC Remote
	[180] = {"180", "", "Familiar that follows Isaac's exact movements and shoots spectral tears#Has same damage and tear effects as the player"}, --  Found Soul
	[181] = {"181", "", "Triggers a seperate random active item when using an active item"}, --  Expansion Pack
	[182] = {"182", "", "Once per floor, upon taking damage creates a wisp {{Collectible584}} and grants invincibility#Spawns 5 wisps upon entering an angel room#Creates a wisp when giving money to beggars"}, --  Beth's Essence
	[183] = {"183", "", "Each room:#With no followers: Chance to grant Brother Bobby {{Collectible8}} and/or Sister Maggy {{Collectible67}}# With followers: Chance to add a duplicate that follower"}, --  The Twins
	[184] = {"184", "", "Shops can sell familiars#Familiars will always be on discount"}, --  Adoption Papers
	[185] = {"185", "", "Chance to spawn a random locusts when killing an enemy"}, --  Cricket Leg
	[186] = {"186", "", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Grants 2 Familiar attack flies which he can aim and fire with"}, --  Apollyon's Best Friend
	[187] = {"187", "", "33% chance of adding an extra blind item in item rooms#Reveals the blind item in alt path"}, --  Broken Glasses
	[188] = {"188", "", "Adds a chance to petrify an enemy when entering the room#Killing the petrified enemy freezes it"}, --  Ice Cube
	[189] = {"189", "", "Activates a 1 second shield upon killing an enemy"}, --  Sigil of Baphomet
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

