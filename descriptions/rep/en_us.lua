---------------------------------------
----- Basic English descriptions -----
---------------------------------------

-- Last Update: 11.11.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning
local languageCode = "en_us"

local repCollectibles={
	[2] = {"2", "The Inner Eye", "Triple shot#↓ -49% Fire Rate down"},
	[5] = {"5", "My Reflection", "Gives tears a boomerang effect#↑ +1.5 Range up#↑ +60% additional Range up#↑ +0.6 Shot Speed up#"}, -- My Reflection
	[6] = {"6", "Number One", "↑ +1.5 Tears up#↓ -1.5 Range down#↓ -20% additional Range down"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ +1 Health up#Full health#↑ +0.3 Damage up#↑ +50% Damage Multiplier#↑ +1.5 Range up#↑ +0.3 Speed up#Size up"}, -- Magic Mushroom
	[13] = {"13", "The Virus", "Poison touch#↑ +0.2 Speed up"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ +0.3 Speed up#↑ +1.5 Range up"}, -- Roid Rage
	[18] = {"18", "A Dollar", "+100 coins"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ +1 Health up#Heals 1 Red Heart"}, -- Lunch
	[23] = {"23", "Dinner", "↑ +1 Health up#Heals 1 Red Heart"}, -- Dinner
	[24] = {"24", "Dessert", "↑ +1 Health up#Heals 1 Red Heart"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ +1 Health up#Heals 1 Red Heart"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ +1 Health up#Heals 1 Red Heart"}, -- Rotten Meat
	[29] = {"29", "Mom's Underwear", "↑ +1.5 Range up#Spawns 3-6 Blue Flies"}, -- Mom's Underwear
	[30] = {"30", "Mom's Heels", "↑ +1.5 Range up#Touched enemies take 12 damage"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ +2.25 Range up#Spawns 1 random heart"}, -- Mom's Lipstick
	[37] = {"37", "Mr. Boom", "Drops a large bomb below the player which deals 185 damage"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Causes a big explosion at the player's location#Deals 185 damage"}, -- Kamikaze!
	[42] = {"42", "Bob's Rotten Head", "Throwable poison bomb#Deals 185 + your damage#Creates poison cloud"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport", "Teleports Isaac into a random room except I AM ERROR rooms#Influence direction a bit by moving in desired direction"}, -- Teleport
	[45] = {"45", "Yum Heart", "Heal 1 Red Heart#Also heals other players for half a heart"}, -- Yum Heart
	[46] = {"46", "Lucky Foot", "↑ +1 Luck up#Better chance to win while gambling#Increases room clearing drop chance#Turns some bad pills into good ones"}, -- Lucky Foot
	[52] = {"52", "Dr. Fetus", "Bomb tears#Each bomb deals 10x your damage#If that results in over 60 damage, it instead deals 5x your damage + 30#↓ -60% Tears down"}, --Dr. Fetus
	[53] = {"53", "Magneto", "Magnetic attraction for pickups#Opens chests remotely, ignoring damage of spike chests"}, -- Magneto
	[55] = {"55", "Mom's Eye", "50% chance to shoot a tear backwards#100% chance at 5 Luck"}, -- Mom's Eye
	[59] = {"59", "The Book of Belial", "<Item not obtainable>"}, -- The Book of Belial (Judas's Birthright Version)
	[62] = {"62", "Charm of the Vampire", "↑ +0.3 Damage up#Heals half a heart for every 13 enemies killed"}, -- Charm of the Vampire
	[64] = {"64", "Steam Sale", "-50% on shop items#Getting this item multiple times reduces the price further"}, -- Steam Sale
	[67] = {"67", "Sister Maggy", "Normal tear familiar#Deals 6 damage per tear"}, -- Sister Maggy
	[70] = {"70", "Growth Hormones", "↑ +1 Damage up#↑ +0.2 Speed up"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ +0.3 Speed up#↑ +1.5 Range up#↑ Size down"}, -- Mini Mush
	[72] = {"72", "Rosary", "+3 Soul Hearts#↑ +0.5 Tears up#{{Collectible33}}The Bible is added to all item pools"}, -- Rosary
	[77] = {"77", "My Little Unicorn", "Invincibility#20 contact damage"}, -- My Little Unicorn
	[78] = {"78", "Book of Revelations", "+1 Soul Heart#A Horseman replaces the current floor's boss if used#↑ +17.5% {{DevilRoom}}Devil or {{AngelRoom}}Angel Room chance"}, -- Book of Revelations
	[79] = {"79", "The Mark", "↑ +1 Damage up#↑ +0.2 Speed up#+1 Black Heart"}, -- The Mark
	[80] = {"80", "The Pact", "↑ +0.5 Damage up#↑ +0.7 Tears up#+2 Black Hearts"}, -- The Pact
	[83] = {"83", "The Nail", "+ Half Black Heart#↑ +2 Damage up#↓ -0.18 Speed down#Deal contact damage#Destroy rocks when walking over them"}, -- The Nail
	[87] = {"87", "Loki's Horns", "25% chance to shoot in 4 directions#100% chance at 15 Luck"}, -- Loki's Horns
	[91] = {"91", "Spelunker Hat", "Reveals the room type of up to 2 adjacent rooms#Can also reveal Secret Rooms, Super Secret Rooms and Mini-Boss Rooms#Blocks projectiles falling from above"}, -- Spelunker Hat
	[98] = {"98", "The Relic", "Spawns 1 Soul Heart every 7-8 rooms"}, -- The Relic
	[101] = {"101", "The Halo", "↑ +1 Health up#↑ +0.3 Damage up#↑ +0.2 Tears up#↑ +0.38 Range up#↑ +0.3 Speed up#Heals 1 Red Heart"}, -- The Halo
	[106] = {"106", "Mr. Mega", "↑ Bomb damage x1.85#+5 Bombs"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "20% chance to shoot Freezing Tears#↑ +0.38 Range up"}, -- Mom's Contacts
	[118] = {"118", "Brimstone", "Charge a blood laser that deals constant damage#↓ -67% Fire Rate down"}, -- Brimstone
	[121] = {"121", "Odd Mushroom (Large)", "↑ +1 Health up#↑ +1 Damage up#↑ +0.38 Range up#↓ -0.2 Speed down"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "Spawns a random familiar#Lasts for current floor"}, -- Monster Manual
	[129] = {"129", "Bucket of Lard", "↑ +2 Health up#↓ -0.2 Speed down"}, -- Bucket of Lard
	[135] = {"135", "IV Bag", "Portable blood bank#Half a heart = 1-2 coins#1 coin on Hard Mode#0-1 coin as Keeper"}, -- IV Bag
	[138] = {"138", "Stigmata", "↑ +1 Health up#↑ +0.3 Damage up#Heals 1 Red Heart"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "You can now hold 2 trinkets#Spawns 1 random trinket"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "Poison bombs#+5 bombs#Bombs leave a poison cloud#Makes you immune to poison damage"}, -- Bob's Curse
	[147] = {"147", "Notched Axe", "Break rocks and damage enemies on swing#Hitting with the axe reduces its charge#Charge refills on stage transition"}, -- Notched Axe
	[148] = {"148", "Infestation", "Spawn 2-6 flies when you get hit"}, -- Infestation
	[149] = {"149", "Ipecac", "Explosive poison tears#↑ +40 Damage up#↓ -0.2 Shot Speed down#↓ -67% Fire Rate down#↓ Minor Range down"}, -- Ipecac
	[152] = {"152", "Technology 2", "Replaces the right eye tears with an unlimited range piercing laser which fires continuously#Laser deals 13% of your damage#↓ -33% Fire Rate down"}, -- Technology 2
	[153] = {"153", "Mutant Spider", "Quad shot!#↓ -58% Fire Rate down"}, -- Mutant Spider
	[155] = {"155", "The Peeper", "Floats around the room#Deals 17.1 contact damage per second#↑ Tears shot from Isaac's left eye deal 34% more damage"}, -- The Peeper
	[158] = {"158", "Crystal Ball", "Reveals the full map#Drops a Soul Heart or a random card or rune#While held:#↑ +15% {{Planetarium}}Planetarium chance#100% if a Treasure Room was skipped"}, -- Crystal Ball
	[169] =	{"169", "Polyphemus", "↑ +100% Damage up#↑ +4 additional Damage up#↓ -58% Fire Rate down#Tears keep going after killing an enemy"},
	[171] = {"171", "Spider Butt", "Slows down enemies for 4 seconds#10 damage to all enemies#Enemies killed with it spawn blue spiders"}, -- Spider Butt
	[172] = {"172", "Sacrificial Dagger", "Orbital knife#Blocks enemy shots#Deals 112.5 damage per second"}, -- Sacrificial Dagger
	[176] = {"176", "Stem Cells", "↑ +1 Health up#↑ +0.16 Shot Speed up#Heals 1 Red Heart"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} {{ColorOrange}}Throwable{{CR}}#Launches itself in the direction Isaac shoots#Breaks and deals 7 damage when touching an enemy#Leaves a pool of damaging creep that petrifies enemies"}, -- Holy Water
	[182] = {"182", "Sacred Heart", "↑ +1 Health up#Full health#↑ 230% + 1 Damage up#↓ -0.4 Tears down#↓ -0.25 Shot Speed down#Homing tears"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "Grants flight#↑ +1 Health up#Heals 1 Red Heart"}, -- Holy Grail
	[188] = {"188", "Abel", "Mirrors your movement#Shoots towards the player#Deals 3.5 damage per shot#Deals 7.5 damage as Cain"}, -- Abel
	[189] = {"189", "SMB Super Fan", "↑ +1 Health up#Full health#↑ +0.3 Damage up#↑ +0.2 Tears up#↑ +1.5 Range up#↑ +0.2 Speed up"}, -- SMB Super Fan
	[192] = {"192", "Telepathy for Dummies", "Homing tears and +3 Range for current room"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ +1 Health up#↑ +0.3 Damage up#Heals 1 Red Heart"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ +0.16 Shot Speed up#+1 card#+15% {{Planetarium}}Planetarium chance"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ +0.5 Damage up#↑ +0.38 Range up"}, -- Jesus Juice
	[203] = {"203", "Humbling Bundle", "Chance to spawn the double version of pickups"}, -- Humbling Bundle
	[205] = {"205", "Sharp Plug", "On use, fully recharges your active item at the cost of half a heart per charge#Prioritizes Red Hearts"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ +1 Damage up#↑ +0.5 Fire Rate up#Your head is now an orbital which doesn't take damage and deals 105 contact damage#You will still shoot from the head"}, -- Guillotine
	[211] = {"211", "Spiderbaby", "Spawn 3-5 Blue Spiders upon taking damage"}, -- Spiderbaby
	[214] = {"214", "Anemic", "↑ +1.5 Range up#Leave a trail of damaging creep upon taking damage"}, -- Anemic
	[218] = {"218", "Placenta", "↑ +1 Health up#Heals 1 Red Heart#Chance to heal half a heart every minute"}, -- Placenta
	[222] =	{"222", "Anti-Gravity", "Holding the fire buttons causes tears to hover in midair#When released, they will all shoot in the direction they were fired#↑ +2 Fire Rate up"}, -- Anti-Gravity
	[224] = {"224", "Cricket's Body", "Tears split in 4 on hit#Split tears deal half your damage#↑ +0.5 Fire Rate up#↓ -20% Range down"}, -- Cricket's Body
	[228] = {"228", "Mom's Perfume", "15% chance to shoot Fear tears#↑ +0.5 Fire Rate up"}, -- Mom's Perfume
	[230] = {"230", "Abaddon", "↑ +1.5 Damage up#↑ +0.2 Speed up#Fear tears#Converts all Red Heart Containers into Black Hearts#+2 Black Hearts"}, -- Abaddon
	[232] = {"232", "Stop Watch", "Permanent slow effect for enemies#↑ +0.3 Speed up"}, -- Stop Watch
	[233] = {"233", "Tiny Planet", "Tears orbit around you#↑ +6.5 Range up#Spectral tears"}, -- Tiny Planet
	[240] = {"240", "Experimental Treatment", "↑ Randomly increases 4 stats#↓ Randomly decreases 2 stats"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Doubles all your shots#↓ -25% Damage"}, -- 20/20
	[248] = {"248", "Hive Mind", "Blue Spiders/flies deal double damage#Spider/fly based familiars become stronger"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ +1 Health up#↑ +1 Luck up#Heals 1 Red Heart"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "!!! Applies only for the left eye#↑ +1 Damage up#↑ +1.5 Range up"}, -- Blood Clot
	[256] = {"256", "Hot Bombs", "Burning bombs#+5 Bombs#You can no longer take fire damage#Bombs deal contact damage"}, -- Hot Bombs
	[261] = {"261", "Proptosis", "↑ +0.5 Damage up#↓ Dealt damage decreases the longer the tear stays airborne#300% Damage at point blank range"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "+1 Black Heart#When down to 1 Heart, damages all enemies in the room#Black Hearts and Necronomicon effects deal double damage"}, -- Missing Page 2
	[263] = {"263", "Clear Rune", "Copies the effects of held rune or soul stone#Drops 1 random rune on pickup"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "Bob's Brain", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} bomb#The explosion deals 100 damage#The damage ignores armor"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "When getting hit, gain one midrange orbital#Orbital deals 150 damage per second"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "Shoots a brimstone laser#Shot deals 2 damage per tick, for a total of 20 damage"}, -- Lil Brimston
	[276] = {"276", "Isaac's Heart", "Gain an invulnerable body#!!! When the heart familiar gets hit you take damage#Familiar charges up when firing, releasing a burst of tears when releasing"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "Converts 1.5 Red Hearts into a Soul/Black Heart, spider, pill, card, or rune"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Randomly spawns blue spiders when in a hostile room#Charms enemies it comes in contact with"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Reroll all pedestals, stats, pickups and all your held passive items#Duplicates 1 random pickup in room#Restarts current room and respawns and rerolls its enemies#Rerolls rocks in room"}, -- D100
	[285] = {"285", "D10", "Reroll all enemies in the room#Tries to reroll them into enemies with similar max HP"}, -- D10
	[287] = {"287", "Book of Secrets", "Grants {{Collectible54}}Treasure Map, {{Collectible21}}Compass or {{Collectible246}}Blue Map for the current floor when used#Only grants mapping effects you don't have already#If all effects are active, grants {{Collectible76}}X-Ray Vision"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "Spawn 4-8 blue spiders"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Throw a red flame#The flame stays until it has dealt damage or blocked shots 5 times or after 10 seconds"}, -- Red Candle
	[291] = {"291", "Flush!", "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava-filled pits into walkable ground"}, -- Flush!
	[292] = {"292", "Satanic Bible", "+1 Black Heart#When used before a boss fight, the Boss Room item will be a Devil deal#!!! Taking that item locks you into Devil deals for the rest of the run"}, -- Satanic Bible
	[294] = {"294", "Butter Bean", "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Damages the whole room with 2x the player damage + 10 #Price: 1 coin"}, -- Magic Fingers
	[296] = {"296", "Converter", "Converts 1 Soul or Black Heart into 1 Red Heart Container"}, -- Converter
	--the SINGLE USE line isn't the standard format in order to save a line break
	[297] = {"297", "Pandora's Box", "{{Warning}} SINGLE USE, spawns items based on floor:#B1: 2 Soul Hearts#B2: 2 bombs and 2 keys#C1: 1 Boss item#C2: B1+C1#D1: 4 Soul Hearts#D2: 20 coins#W1: 2 Boss items#W2: {{Collectible33}}The Bible#???/Void: Nothing#Sheol: 1 Devil item + 1 Black Heart#Dark Room: Unlocks {{Collectible523}}Moving Box#Cat: 1 Angel item + 1 Eternal Heart#Chest: 1 coin#Home: {{Collectible580}}Red Key"}, -- Pandora's Box
	[300] = {"300", "Aries", "↑ +0.25 Speed up#Touching enemies hurts them#Running fast enough will prevent contact damage"}, -- Aries
	[307] = {"307", "Capricorn", "↑ +1 Health up#↑ +0.5 Damage up#↑ +0.1 Speed up#↑ +0.75 Range up#↑ +0.5 Fire Rate up#Gives one bomb, coin and key"}, -- Capricorn
	[308] = {"308", "Aquarius", "Leave a trail of creep#Creep deals 66% your damage per second#Creep synergizes with tear effects"}, -- Aquarius
	[309] =	{"309", "Pisces", "↑ +0.5 Fire Rate up#Increases tear knockback"},
	[310] =	{"310", "Eve's Mascara", "↑ 200% Damage up#↓ -33% Tears down#↓ -0.5 Shot Speed down"},
	[314] = {"314", "Thunder Thighs", "↑ +1 Health up#↓ -0.4 Speed down#Heals 1 Red Heart#Destroy rocks when walking over them"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Magnetic tears#Affects enemies, pickups and trinkets#Items will be attracted to where the tear lands"}, -- Strange Attractor
	[320] = {"320", "???'s Only Friend", "Controllable Fly#Deals 3.5 contact damage per tick"}, -- ???'s Only Friend
	[326] = {"326", "Breath of Life", "Hold down space until chargebar is empty for invincibility#Beams of light will strike enemies that touch you when invincible#!!! Don't hold it for too long!"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ +1 Damage up#Damages all enemies in the room when getting hit and at half a Red Heart or none"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ 5.5x Fire Rate up#↓ -80% Damage down#Drastically reduces knockback"}, -- Soy Milk
	[331] = {"331", "Godhead", "↑ +0.5 Damage up#↓ -0.3 Tears down#↓ -0.3 Shot Speed down#Tears gain a damaging aura which deals 2 damage per tick#Homing tears"}, -- Godhead
	[336] = {"336", "Dead Onion", "Piercing and spectral tears#↓ -1.5 Range down#↓ -0.4 Shot Speed down#↑ +50% Tear size"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ +1.5 Range up#↑ +0.16 Shot Speed up#+1 Black Heart"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ +1 Health up#↑ +0.7 Tears up#↓ -16% Shot Speed down#Heals 1 Red Heart"}, -- Blue Cap
	[344] = {"344", "Match Book", "+1 Black Heart#Spawns 2-3 Bombs and {{Trinket41}}Match Stick"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ +1 Damage up#↑ +1.5 Range up"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ +1 Health up#Heals 1 Red Heart"}, -- A Snack
	[350] = {"350", "Toxic Shock", "At the start of every room every enemy gets a poison effect#Killed enemies leave puddle of creep#Grants immunity for toxic clouds"}, -- Toxic Shock
	[352] = {"352", "Glass Cannon", "Fires one large piercing spectral tear ((DMG x 10) + 10)#!!! When you take damage:#↓ You will lose an extra 2 hearts of health#↑ +1.5 Range up and leave blood creep for the room#The extra damage can't kill you#Self-damage does not count"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ +1 Health up#Spawns random trinket on the floor#Heals 1 Red Heart"}, -- Crack Jacks
	[355] = {"355", "Mom's Pearls", "↑ +0.38 Range up#↑ +1 Luck up#+1 Soul Heart"}, -- Mom's Pearls
	[360] = {"360", "Incubus", "Gain a demonic familiar that shoots the same tears as Isaac#Deals 75% of your damage unless playing as Lilith"}, -- Incubus
	[366] = {"366", "Scatter Bombs", "+5 bombs#Causes your bombs to explode into 4-5 tiny bombs"}, -- Scatter Bombs
	[368] =	{"368", "Epiphora", "Shooting in one direction gradually increases your fire rate by up to 200%"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ +3 Range up#Spectral tears#Tears travel through walls and appear out of the opposite wall"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ +0.7 Tears up#↑ +1.5 Range up#Spawns 3 random hearts when picked up"}, -- Mr. Dolly
	[372] = {"372", "Charged Baby", "Random chance to drop a battery or freeze all enemies in the room#Chance to add one charge to your active item"}, -- Charged Baby
	[374] = {"374", "Holy Light", "10% chance to shoot Holy tears, which will spawn a beam of light on hit#The beam deals 3x your damage#50% chance at 9 Luck"}, -- Holy Light
	[375] = {"375", "Host Hat", "Grants explosion immunity#20% chance to block tears#Blocks projectiles falling from above"}, -- Host hat
	[376] = {"376", "Restock", "Shops instantly restock their items when you buy them#Restocked items slowly increase in price again"}, -- Restock
	[382] = {"382", "Friendly Ball", "Can be thrown at enemies to capture them#Next usage will respawn the same enemy as a friendly companion#Walking over the ball after capture will instantly recharge the item"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "Will launch and slide around the room#Deals 5-20 contact damage per hit depending on charge duration"}, -- Lil Gurdy
	[389] = {"389", "Rune Bag", "Drops a random rune every 7-8 rooms#Can also drop Soul Stones"}, -- Rune Bag
	[393] = {"393", "Serpent's Kiss", "15% chance to shoot poison tears#Poison enemies on contact#Enemies killed with contact poison have a 20% chance to drop a Black Heart"}, -- Serpent's Kiss
	[394] = {"394", "Marked", "Fire tears automatically directed at a red target on the ground which is controlled by the player#↑ +0.7 Tears up#↑ +3 Range up#Familiars shoot towards the target"}, -- Marked
	[395] = {"395", "Tech X", "Charge and fire a laser ring that travels across the room#Higher damage with longer charge#100% damage on full charge"}, -- Tech X
	[397] = {"397", "Tractor Beam", "Isaac's tears now travel directly forward following a beam of light, but will also move sideways based on your player movement#↑ +1 Fire Rate up#↑ +1.5 Range up#↑ +0.16 Shot Speed up"},
	[399] = {"399", "Maw of the Void", "After firing tears for 3 seconds, a red cross appears on Isaac's head. Upon releasing the fire button, creates a black brimstone ring"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% chance to fire sticky bomb tears#They explode after a few seconds and deal your damage + 60"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Blocks projectiles#If hit, it will fart, which will charms, poison or knockback enemies#The farts deal 5-6 damage"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Boosts one of your stats depending on the color of the aura around you#When you take damage and after you enter a new room, you will get a new aura:#{{ColorRed}}Red{{CR}} = +4 Damage up#{{ColorBlue}}Blue{{CR}} = +2 Fire Rate up#{{ColorYellow}}Yellow{{CR}} = +0.5 Speed up#{{ColorOrange}}Orange{{CR}} = +3 Range up"},
	[408] = {"408", "Athame", "When you take damage, a black brimstone ring will appear around Isaac"}, -- Athame
	[415] = {"415", "Crown Of Light", "+2 Soul Hearts#If you don't have any damaged Red Heart containers:#↑ +100% Damage up#↑ +1.5 Range up#↓ -0.3 Shot Speed down#Deactivates for the current room when damaged at all"}, -- Crown Of Light
	[416] = {"416", "Deep Pockets", "Spawns 1-3 coins if a room didn't yield a reward#Increases coin cap to 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bounces around the room with a damaging aura, dealing 7.5-10 damage every second#↑ +50% damage while standing in the aura"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Teleports you to another random room that has not been explored yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> Error-Room"}, -- Teleport 2.0
	[421] = {"421", "Kidney Bean", "Applies charm effect to any enemies in close range"}, -- Kidney Bean
	[426] = {"426", "Obsessed Fan", "Follows your exact movement on a 0.66 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Follows your movement pattern on a 0.66 second delay#Fires tears at nearby enemies that deal damage equal to your damage"}, -- Papa Fly
	[431] = {"431", "Multidimensional Baby", "Follows your movement pattern on a 0.66 second delay#Tears that pass through it will split up and gain a speed boost"},
	[437] = {"437", "D7", "Respawn all enemies of the room#Allows you to farm room clear rewards"}, -- D7
	[440] = {"440", "Kidney Stone", "Chance to charge up an attack while firing#Release the fire button to fire a kidney stone followed by a rapid spray of tears"}, -- Kidney Stone
	[442] = {"442", "Dark Prince's Crown", "!!! While at 1 full Red Heart:#↑ +2 Fire Rate up#↑ +1.5 Range up#↑ +0.2 Shot Speed up#Doesn't work with characters without Red Hearts"}, -- Dark Prince's Crown
	[444] = {"444", "Lead Pencil", "Every 15 tears fired, you fire a cluster of tears"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "Upon taking Red Heart damage, spew tears around you#Control direction with shooting buttons#Deals half a heart of damage every 20 seconds#Stop bleeding by healing Red Hearts#Chance to drop a Red Heart upon taking damage"}, -- Shard of Glass
	[451] = {"451", "Tarot Cloth", "Drops a random card or rune on pickup#Some cards gain an extra or doubled effect"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "↑ +0.38 Range up#Bone tears#Tears shatter into 1-3 smaller bone shards upon hitting anything"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ +0.38 Range up#Spawns a lucky penny"}, -- Dad's Lost Coin
	[456] = {"456", "Midnight Snack", "↑ +1 Health up#Heals 1 Red Heart"}, -- Midnight Snack
	[459] = {"459", "Sinus Infection", "20% chance to shoot sticky poison tears#Deals your damage each second#Sticks for 10 seconds"}, -- Sinus Infection
	[462] = {"462", "Eye of Belial", "↑ +1.5 Range up#Grants piercing tears#After hitting the first enemy, the tear deals double damage and gains a homing effect"}, -- Eye of Belial
	[464] = {"464", "Glyph of Balance", "+2 Soul Hearts#Champion enemies and room drops appear more frequently#Priority of spawned pickups depends on what the player is missing most of"}, -- Glyph of Balance
	[472] = {"472", "King Baby", "Other familiars follow it and shoot automatically at enemies#Stops moving when you are shooting#Will teleport back to you when you stop shooting"}, -- King Baby
	[474] = {"474", "Broken Glass Cannon", "Turns into Glass Cannon when used"}, -- Broken Glass Cannon
	[476] =	{"476", "D1", "Duplicates 1 random pickup in the current room#Duplicated pickups may not be identical to the original"}, -- D1
	[477] = {"477", "Void", "!!! When used, consumes all pedestal items in the room#Active item: Its effect will activate every future use of Void#↑ Passive item: Small stat upgrade to two random stats"},
	[489] = {"489", "D Infinity", "Acts as any die item except for {{Collectible723}}Spindown Dice#Change the current die with the drop key#Charge time varies based on the current die and updates when used"}, -- D Infinity
	[491] = {"491", "Acid Baby", "Drops a random pill every 7 rooms#Using a pill poisons all enemies in the room"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "↑ Damage up for every empty Red Heart container#Follows a formula, some examples are:#+0.3 at 1#+0.92 at 2#+1.76 at 3#+2.79 at 4#+3.98 at 5"}, -- Adrenaline
	[494] = {"494", "Jacob's Ladder", "Tears spawn a spark of electricity on impact#Sparks deal half your damage#Sparks can jump between enemies"}, -- Jacobs Ladder
	[495] = {"495", "Ghost Pepper", "8% chance to shoot a blue fire that blocks enemy shots and deals contact damage#50% chance at 10 Luck#The flame disappears after 2 seconds"}, -- Ghost Pepper
	[496] = {"496", "Euthanasia", "3.33% chance to shoot needles#50% chance at 15 Luck#Needles kill normal enemies instantly, bursting them into 10 tears#Needles deal 3x damage against bosses"}, -- Euthanasia
	[503] = {"503", "Little Horn", "5% chance to shoot tears that summon a Big Horn hand#The hand kills enemies instantly and deals damage to bosses#Running into enemies deals 3.5 damage to them"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Spawns a fly turret that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 1/3rd second when enemy is nearby#Deals 3.5 damage per tear#Deals 30 contact damage per second"}, -- Bloodshot Eye
	[517] = {"517", "Fast Bombs", "+7 Bombs#Allows you to rapidly place bombs on the ground#Bombs don't knockback each other"}, -- Fast Bombs
	[523] = {"523", "Moving Box", "When used, stores up to 10 pickups from the current room#Using it again will put them back on the floor again#This allows you to move things between rooms"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Tears will be connected with beams of electricity#Electricity deals 33% of your damage"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "Tears fly in an arc and burst into smaller tears on impact#↑ +1 Damage up#↑ +50% Damage Multiplier#↓ Tears down#↓ -20% Range down"}, -- Haemolacria
	[541] = {"541", "Marrow", "+1 Bone Heart#Spawns 3 Red Hearts"}, -- Marrow
	[543] = {"543", "Hallowed Ground", "Spawn white poop when you get hit#While inside the poop's aura:#↑ +25% Damage up#↑ +250% Fire Rate up#Homing tears#Chance to block damage"}, -- Hallowed Ground
	[549] =	{"549", "Brittle Bones", "Replaces all your Red Heart containers with 6 Bone Hearts#When a Bone Heart is lost:#Fires 8 bone tears in all directions#↑ +0.4 Fire Rate up permanently"}, -- Brittle Bones
	[553] = {"553", "Mucormycosis", "25% chance to shoot sticky spore tears#Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "Fears enemies in a small radius around you"}, -- 2Spooky
	[555] = {"555", "Golden Razor", "Converts 5 coins into +1.2 Damage up for the current room#Gain 5 coins on pickup"}, -- Golden Razor
	[556] = {"556", "Sulfur", "Grants {{Collectible118}}Brimstone for the current room"}, -- Sulfur
	[557] = {"557", "Fortune Cookie", "Gives Isaac a fortune, Soul Heart, tarot card, or trinket"}, -- Fortune Cookie
	[558] = {"558", "Eye Sore", "Chance to shoot 1-3 extra tears in random directions"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Repeatedly zaps close enemies#Electricity deals 75% of your damage"}, -- 120 Volt
	[560] = {"560", "It Hurts", "Release a ring of 10 tears which deal 10 damage and get tears up for the room when hit#↑ +1.2 Fire Rate up for first hit#↑ +0.4 for each additional hit"}, -- It Hurts
	[561] = {"561", "Almond Milk", "↑ 4x Fire Rate up#↓ -70% Damage down#Tears gain random worm trinket effects and some item effects"}, -- Almond Milk
	[562] = {"562", "Rock Bottom", "Prevents stats from being lowered for the rest of the run"}, -- Rock Bottom
	[563] = {"563", "Nancy Bombs", "+5 bombs#Bombs explode with a random bomb effect"}, -- Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ +0.5 Tears up#↑ +0.2 Shot Speed up"}, -- A Bar of Soap
	[565] = {"565", "Blood Puppy", "Familiar that chases enemies#After killing 15 enemies, it deals more damage, drops half a heart every 10 kills, but will also try to hurt you#After killing 40 enemies, it deals even more damage, drops full hearts, and can destroy rocks#Attacking it returns it to normal"}, -- Blood Puppy
	[566] = {"566", "Dream Catcher", "+1 half Soul Heart when entering a new floor#Displays upcoming Treasure Room item and boss in the stage transition nightmare"}, -- Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ +0.4 Fire Rate up for every room cleared without taking damage#Up to +2 Fire Rate possible"}, -- Paschal Candle
	[568] = {"568", "Divine Intervention", "Double tapping a fire key creates a shield#Shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"}, -- Divine Intervention
	[569] = {"569", "Blood Oath", "Stabs you at the beginning of each floor, draining all but half a Red Heart#Increases stats for the floor:#↑ Damage + 0.15 * HeartsLost^2#↑ Speed + 0.05*HeartsLost"}, -- Blood Oath
	[570] = {"570", "Playdough Cookie", "Grants multicolored tears with different status effects"}, -- Playdough Cookie
	[571] = {"571", "Orphan Socks", "Prevents damage from creep and floor spikes#↑ +0.3 Speed up#↑ +2 Soul Hearts"}, -- Orphan Socks
	[572] = {"572", "Eye of the Occult", "Controllable tears#↑ +1 Damage up#↑ +2 Range up#↓ -0.16 Shot Speed down"}, -- Eye of the Occult
	[573] = {"573", "Immaculate Heart", "↑ +1 Health up#Full health#↑ +20% Damage up#20% chance to shoot additional orbiting spectral tears"}, -- Immaculate Heart
	[574] = {"574", "Monstrance", "Gain two circular auras that damage enemies#The inner aura deals more damage"}, -- Monstrance
	[575] = {"575", "The Intruder", "A familiar buried inside your head, firing 4 slowing tears#Upon taking damage, can exit the head"}, -- The Intruder
	[576] = {"576", "Dirty Mind", "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poops"}, -- Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} SINGLE USE {{Warning}}#Spawns a sword above your head, which doubles all item pedestals#Does not double Shop, Chest, or Devil deal items#!!! Kills you at a random time after taking damage from an enemy"}, -- Damocles
	[578] = {"578", "Free Lemonade", "Creates a large pool of yellow creep"}, -- Free Lemonade
	[579] = {"579", "Spirit Sword", "Instead of tears, Isaac swings a sword#Deals 3x your damage#Does a spin attack + projectile shot on charge up#Fire projectiles with normal swings on full health"}, -- Spirit Sword
	[580] = {"580", "Red Key", "Creates a new room adjacent to a viable wall, indicated by an outline of a door#Rooms can be special rooms#A room outside the 13x13 floor map will teleport you to the I AM ERROR room"}, -- Red Key
	[581] = {"581", "Psy Fly", "Fly orbital familiar#Chases and deflects projectiles#Deals contact damage"}, -- Psy Fly
	[582] = {"582", "Wavy Cap", "↑ +0.75 Fire Rate up#↓ -0.03 Speed down#Distorts the screen#Effect can be stacked"}, -- Wavy Cap
	[583] = {"583", "Rocket in a Jar", "+5 bombs#If shooting, placed bombs turn into rockets that fire in the shooting direction"}, -- Rocket in a Jar
	[584] = {"584", "Book of Virtues", "Spawns an orbital wisp familiar that fires spectral tears but can be destroyed#Can be combined with a second active item to create themed wisps#Turns the first {{DevilRoom}}Devil Room into an {{AngelRoom}}Angel Room and increases the {{AngelRoom}}Angel Room chance#Allows both Devil and Angel deals to be taken"}, -- Book of Virtues
	[585] = {"585", "Alabaster Box", "Spawns three Soul Hearts and two Angel Room items#Must be charged by picking up Soul Hearts#Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"}, -- Alabaster Box
	[586] = {"586", "The Stairway", "Spawns a ladder at the start of every floor, leading to a unique Angel Room item shop"}, -- The Stairway
	[587] = {"587", "Menorah (Unused but scripted)", "<Item does not exist>"}, -- Menorah (Unused but scripted)
	[588] = {"588", "Sol", "Reveals the location of the {{BossRoom}}Boss Room#Upon defeating a boss:#Activates {{Card20}}The Sun#Fully recharges your active item#Removes any Curses#↑ +3 Damage and +1 Luck for the rest of the floor"}, -- Sol
	[589] = {"589", "Luna", "Adds an extra {{SecretRoom}}Secret Room and {{SuperSecretRoom}}Super Secret Room to each floor#Secret Rooms contain a beam of light that give tears up for the current floor and give half a Soul Heart#Reveals one {{SecretRoom}}Secret Room each floor"}, -- Luna
	[590] = {"590", "Mercurius", "↑ +0.4 Speed up#Doors stay open after entering a room"}, -- Mercurius
	[591] = {"591", "Venus", "↑ +1 Health up#Heals 1 Red Heart#Close enemies become charmed"}, -- Venus
	[592] = {"592", "Terra", "↑ +1 Damage up#Replaces tears with rocks#They deal variable damage#Can destroy obstacles#Increased knockback"}, -- Terra
	[593] = {"593", "Mars", "Dash by double-tapping a movement key, becoming invincible and dealing 4x your damage#3 seconds cooldown"}, -- Mars
	[594] = {"594", "Jupiter", "↑ +2 Health up#Heals half a Red Heart#↓ -0.3 Speed down#Makes you immune to poison damage#Build up to +0.5 Speed while standing still#Moving releases poison fart clouds behind you"}, -- Jupiter
	[595] = {"595", "Saturnus", "A circle surrounds you#Upon entering a room, 7 tears will orbit in it#Chance to catch enemy projectiles in orbit"}, -- Saturnus
	[596] = {"596", "Uranus", "Shoot ice tears, which slow enemies and freeze monsters they kill#Touching frozen enemies slide away and explode into 6 ice shards"}, -- Uranus
	[597] = {"597", "Neptunus", "Builds a massive tears bonus over 3 seconds while not firing#Shooting again will release stored tears#The tear bonus falls off as you fire"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ +0.7 Tears up#Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"}, -- Pluto
	[599] = {"599", "Voodoo Head", "Spawns an additional {{CursedRoom}}Curse Room each floor"}, -- Voodoo Head
	[600] = {"600", "Eye Drops", "!!! Applies only for the left eye#↑ +28% Fire Rate up#First shot in a while is always a double shot"}, -- Eye Drops
	[601] = {"601", "Act of Contrition", "↑ +0.7 Tears up#+1 Eternal Heart#Allows both Devil and Angel deals to be taken#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"}, -- Act of Contrition
	[602] = {"602", "Member Card", "Adds a trapdoor to every shop that leads to a second shop with a unique stock"}, -- Member Card
	[603] = {"603", "Battery Pack", "Spawns 2-4 batteries#Fully recharges your active item"}, -- Battery Pack
	[604] = {"604", "Mom's Bracelet", "Allows picking up and throwing rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"}, -- Mom's Bracelet
	[605] = {"605", "The Scooper", "Summons a Peeper familiar for the current room, which leaves a trail of red creep#↑ Tears shot from the right eye will deal 34% more damage"}, -- The Scooper
	[606] = {"606", "Ocular Rift", "5% chance to shoot tears that create rifts where they land#Rifts pull in nearby enemies, pickups, and projectiles"}, -- Ocular Rift
	[607] = {"607", "Boiled Baby", "Familiar that fires chaotic bursts of tears in all directions#Deals 3.5 or 5.3 damage per tear"}, -- Boiled Baby
	[608] = {"608", "Freezer Baby", "Familiar that shoots petrifying tears#Freezes monsters upon killing them"}, -- Freezer Baby
	[609] = {"609", "Eternal D6", "Rerolls pedestals in current room#Items have a 30% chance to disappear"}, -- Eternal D6
	[610] = {"610", "Bird Cage", "Familiar that leaps on an enemy on the first hit in the room#Deals 45 damage and releasing a rock wave#Chases enemies afterwards"}, -- Bird Cage
	[611] = {"611", "Larynx", "Makes you shout, damaging and pushing nearby enemies#Shout gets stronger the more charges the item has"}, -- Larynx
	[612] = {"612", "Lost Soul", "Soul familiar that dies in one hit, respawning at the start of the next floor#If it survives an entire floor, it spawns 3 Soul Hearts, 2 Eternal Hearts, or an item"}, -- Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Blood Bombs", "↑ +1 Health up#Heals 5 hearts#Bombs leave red creep#If the player has no bombs, one can be placed at the cost of half a heart"}, -- Blood Bombs
	[615] = {"615", "Lil Dumpy", "Dumpy familiar#When it takes damage, pushes, stuns or poisons nearby enemies"}, -- Lil Dumpy
	[616] = {"616", "Bird's Eye", "8% chance to shoot red fires that block enemy shots and deal contact damage#50% chance at 10 Luck#Fires can block up to 4 shots and/or deal damage 4 times before being destroyed, and last up to 10 seconds"}, -- Bird's Eye
	[617] = {"617", "Lodestone", "17% chance to shoot tears that magnetize enemies#100% chance at 5 Luck#Magnetized enemies attract nearby pickups, projectiles and enemies"}, -- Lodestone
	[618] = {"618", "Rotten Tomato", "17% chance to shoot tears that mark enemies#100% chance at 5 Luck#Marked enemies are attacked by other enemies"}, -- Rotten Tomato
	[619] = {"619", "Birthright", "Has a different effect for each character"}, -- Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "↑ +21.6 Damage up#Damage up wears off over the next 3 minutes#Killing enemies while effect is active extends the time#Full health"}, -- Red Stew
	[622] = {"622", "Genesis", "{{Warning}} SINGLE USE {{Warning}}#Removes all of Isaac's items and pickups#Teleports you to a unique bedroom with pickups, chests and a trapdoor#For every item lost, it shows a set of 3 items to choose from"}, -- Genesis
	[623] = {"623", "Sharp Key", "+5 keys#Throw your key to deal damage, destroy obstacles, or open doors#Enemies killed with it have a chance to spawn the content of a chest, including items"}, -- Sharp Key
	[624] = {"624", "Booster Pack", "Spawns 5 random cards"}, -- Booster Pack
	[625] = {"625", "Mega Mush", "Gigantifies you for 30 seconds#Increases damage and range#Grants invincibility and ability to crush enemies and obstacles#Effect persists between rooms"}, -- Mega Mush
	[626] = {"626", "Knife Piece 1", "First part of the knife familiar"}, -- Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Makes a knife familiar with {{Collectible626}}Knife Piece 1#Damages enemies#Can open a certain flesh door"}, -- Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} SINGLE USE {{Warning}}#Takes you to a floor containing every item in the game#After taking an item, return to the room you came from"}, -- Death Certificate
	[629] = {"629", "Bot Fly", "Orbital that fires shielded tears"}, -- Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Splits enemies in the room into 2 smaller versions of themselves with much less health"}, -- Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ +2 Luck up#Makes you immune to burn, confusion, fear, poison, and toxic gas"}, -- Evil Charm
	[633] = {"633", "Dogma", "Grants flight and one-time {{Collectible313}}Holy Mantle effect#↑ +2 Damage up#↑ +0.1 Speed up#If player has fewer than 6 hearts, heals him with combination of Red and Soul Hearts"}, -- Dogma
	[634] = {"634", "Purgatory", "While in a room with enemies, spawns cracks on the ground#Walking over these cracks summons exploding ghosts"}, -- Purgatory
	[635] = {"635", "Stitches", "Passively spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and gains short invincibility#Teleporting onto things can damage or destroy them"}, -- Stitches
	[636] = {"636", "R Key", "{{Warning}} SINGLE USE {{Warning}}#Brings you back to the first floor of a new run#Items, stat boosts and pickups stay intact"}, -- R Key
	[637] = {"637", "Knockout Drops", "10% chance to shoot a fist with extreme knockback and confusion effect#100% chance at 9 Luck"}, -- Knockout Drops
	[638] = {"638", "Eraser", "Throws an eraser that instantly kills an enemy#Prevents the enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"}, -- Eraser
	[639] = {"639", "Yuck Heart", "Grants a Rotten Heart upon use"}, -- Yuck Heart
	[640] = {"640", "Urn of Souls", "Spews a stream of flames#Gains charges each time an enemy dies"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "Creates a chain of tears behind you while in combat#The tears deal 3.5 damage"}, -- Akeldama
	[642] = {"642", "Magic Skin", "Turns 1 Heart Container or 2 Soul Hearts into a Broken Heart#Spawns an item from the current room's item pool#The more times it's used, the higher the chance it replaces future items if Isaac isn't holding it#33% after 1 use, 50% after 2, 100% after 3#Lower chance if Magic Skin is on a pedestal on the current floor#{{Warning}} Single use item for The Lost"}, -- Magic Skin
	[643] = {"643", "Revelation", "Grants flight and 2 Soul Hearts#Shooting for 2.5 seconds will fire a holy laser when fire button is released"}, -- Revelation
	[644] = {"644", "Consolation Prize", "Increases your lowest stat#Drops either 3 coins, 1 bomb or 1 key depending on what you have the least of"}, -- Consolation Prize
	[645] = {"645", "Tinytoma", "Teratoma orbital#Blocks shots#Deals contact damage#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after it's fully gone"}, -- Tinytoma
	[646] = {"646", "Brimstone Bombs", "+5 bombs#Bombs release 4 Brimstone lasers in the cardinal directions"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Active items don't charge when clearing rooms#They charge by dealing damage to enemies#Formula: 40 + 20 * stage"}, -- 4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Fruity Plum", "Mini Baby Plum familiar#Propels itself diagonally around the room, firing tears behind itself"}, -- Fruity Plum
	[650] = {"650", "Plum Flute", "Summons friendly Baby Plum in the current room for 10 seconds"}, -- Plum Flute
	[651] = {"651", "Star of Bethlehem", "Familiar that slowly travels towards the Boss Room#Emits aura that grants +20% + 1 damage up, tears up and homing"}, -- Star of Bethlehem
	[652] = {"652", "Cube Baby", "Familiar that slides around when walked into#It slows and deals contact damage, freezing monsters it kills"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "While held, non-ghost enemies spawn small red ghosts on death#On use, causes the ghosts to explode"}, -- Vade Retro
	[654] = {"654", "False PHD", "Identifies all pills#+1 Black Heart#Converts good pills into bad pills#↑ Stat down pills also grant damage up#Other pills drop Black Hearts on use"}, -- False PHD
	[655] = {"655", "Spin to Win", "Adds spinning top orbital that blocks enemy shots#Deals 10.5 contact damage per second#When used,↑ +0.5 speed and greatly increases the rotation speed of orbitals"}, -- Spin to Win
	[656] = {"656", "Damocles", "<Item not obtainable>"}, -- Damocles
	[657] = {"657", "Vasculitis", "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"}, -- Vasculitis
	[658] = {"658", "Giant Cell", "Spawn micro-Isaacs when taking damage#They chase and shoot at nearby enemies"}, -- Giant Cell
	[659] = {"659", "Tropicamide", "↑ +1.5 Range up#Increases tear size"}, -- Tropicamide
	[660] = {"660", "Card Reading", "Spawns two portals at the start of each floor#Portals disappear when leaving the room#{{ColorRed}}Red: {{CR}}{{BossRoom}}Boss Room#{{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}}Item Room#{{ColorBlue}}Blue: {{CR}}{{SecretRoom}}Secret Room"}, -- Card Reading
	[661] = {"661", "Quints", "Spawns a stationary shooting familiar at the location where an enemy died#Up to 5 familiars"}, -- Quints
	[662] = {"662", "Pacifist (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Tooth and Nail", "Turn invincible every 6 seconds for 1 second#Flashes right before transition"}, -- Tooth and Nail
	[664] = {"664", "Binge Eater", "↑ +1 Health up#Full health#Item pedestals periodically switch between food items and the item they would hold otherwise#Picking up a food item grants temporary +3.6 damage boost, 2 small permanent stat ups and a permanent -0.03 speed down#Food items heal 3 Red Hearts"}, -- Binge Eater
	[665] = {"665", "Guppy's Eye", "Shows the contents of Chests, Sacks, Shopkeepers, and Fire Places before they're opened"}, -- Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Strawman", "+1 Bomb#Spawns Keeper as a second character#If he dies, he spawns blue spiders#Item gets removed afterwards#Devil deals cost coins while he's alive#!!! He can pick up items, including Story items, removing them permanently on death"}, -- Strawman
	[668] = {"668", "Dad's Note", "Begins the sequence to access the Home floor#Trinkets left in previous {{TreasureRoom}}Treasure or {{BossRoom}}Boss Rooms turn into {{Card78}}Cracked Key"}, -- Dad's Note
	[669] = {"669", "Sausage", "↑ +1 Health up#Full health#↑ +0.5 Damage up#↑ +0.2 Speed up#↑ +1.2 Shot Speed up#↑ +0.16 Range up#↑ +1 Luck up#↑ +6.9% {{DevilRoom}}Devil or {{AngelRoom}}Angel Room chance#↑ +6.9% {{Planetarium}}Planetarium chance"}, -- Sausage
	[670] = {"670", "Options?", "If a room grants a clear reward, there will be two different rewards to choose from#Taking one causes the other to disappear"}, -- Options?
	[671] = {"671", "Candy Heart", "Gives random permanent stat boost when healing with Red Heart pickups"}, -- Candy Heart
	[672] = {"672", "A Pound of Flesh", "Devil deals now cost coins#Shop items now cost health#Consumables in shops are free but surrounded by spikes"}, -- A Pound of Flesh
	[673] = {"673", "Redemption", "Grants 1 Soul Heart and +1 Damage when entering a {{DevilRoom}}Devil Room and not taking any item/pickup"}, -- Redemption
	[674] = {"674", "Spirit Shackles", "On death, Isaac's ghost is chained to his dead body and he can continue to fight with half a heart#Return to life after 10 seconds#Must be recharged by picking up a Soul Heart"}, -- Spirit Shackles
	[675] = {"675", "Cracked Orb", "When you take damage:#Unlocks locked doors in the current room#Reveals a random room#Destroys all tinted and crawlspace rocks#Can open story doors#Can reveal the {{UltraSecretRoom}}Ultra Secret Room"}, -- Cracked Orb
	[676] = {"676", "Empty Heart", "When down to 1 Red Heart or less at the start of a new floor, grants an empty Heart Container#No effect for characters that can't have Red Hearts"}, -- Empty Heart
	[677] = {"677", "Astral Projection", "When getting hit, stops time for 3 seconds#Isaac becomes a ghost and leaves his body#In ghost form gain flight, spectral tears and also negate next hit taken"}, -- Astral Projection
	[678] = {"678", "C Section", "Gain a short delay charge attack that fires homing, spectral fetus tears"}, -- C Section
	[679] = {"679", "Lil Abaddon", "Familiar which shoots a mini {{Collectible399}}Maw of the Void attack"}, -- Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "While firing, charge up a short-ranged Brimstone#Shoots behind you"}, -- Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Deals contact damage and flies forward#Consumes pickups in its path#Each one will increase its size, damage, and spawn a Blue Fly#Every four pickups, it spawns a portal to an unexplored room"}, -- Lil Portal
	[682] = {"682", "Worm Friend", "Causes a tentacle to burst out of the ground and grab an enemy#Grabbed enemies take damage, are slowed and cannot move"}, -- Worm Friend
	[683] = {"683", "Bone Spurs", "Enemies spawn floating bones on death#Bones block projectiles and deal contact damage"}, -- Bone Spurs
	[684] = {"684", "Hungry Soul", "Chance to spawn ghosts when killing an enemy#Ghosts chase enemies and deal contact damage#After 5 seconds, the ghost explodes, dealing 7 damage to nearby enemies#You don't take damage from the explosion"}, -- Hungry Soul
	[685] = {"685", "Jar of Wisps", "Spawns random wisps that shoot various tears, block shots, and deal contact damage#Number of wisps spawned increases the more it's used"}, -- Jar of Wisps
	[686] = {"686", "Soul Locket", "Grants a permanent stat boost whenever you pick up a Soul Heart#Spawns a Soul Heart on pickup"}, -- Soul Locket
	[687] = {"687", "Friend Finder", "Spawns a random friendly monster that mimics Isaac's movements and attacks"}, -- Friend Finder
	[688] = {"688", "Inner Child", "+1 extra life#Respawn in current room with half a heart, massive size down, and +0.2 speed"}, -- Inner Child
	[689] = {"689", "Glitched Crown", "Item pedestals quickly cycle between 5 random items"}, -- Glitched Crown
	[690] = {"690", "Belly Jelly", "Causes enemies to bounce off of Isaac#Bouncing them against obstacles deals damage#50% chance that Isaac ignores contact damage#50% chance to deflect enemy projectiles"}, -- Belly Jelly
	[691] = {"691", "Sacred Orb", "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#33% chance to reroll items with Quality {{Quality2}}"}, -- Sacred Orb
	[692] = {"692", "Sanguine Bond", "Spawns a set of spikes in the {{DevilRoom}}Devil Room#Taking damage from the spikes can grant a reward:#35%: Nothing#33%: +0.5 Damage up#15%: 6 pennies#10%: 2 Black Hearts#5%: Random Devil item#2%: Leviathan transformation"}, -- Sanguine Bond //PERCENTAGES NOT CONFIRMED, updated in patch, taken from Wiki
	[693] = {"693", "The Swarm", "Grants 9 orbital flies which turn into Blue Flies after they block a shot#Spawns a new fly every room cleared"}, -- The Swarm
	[694] = {"694", "Heartbreak", "Grants 3 broken hearts#↑ +0.25 Damage for every broken heart#Every fatal hit will add 2 more broken hearts#You die at 12 broken hearts"}, -- Heartbreak
	[695] = {"695", "Bloody Gust", "When taking damage, gain speed and tears up for the current floor#Up to +1.02 Speed and +3 Fire Rate possible"}, -- Bloody Gust
	[696] = {"696", "Salvation", "Grants halo that spawns beams of light on enemies inside it#The halo grows larger the more damage you've taken this floor"}, -- Salvation
	[697] = {"697", "Vanishing Twin", "Familiar that becomes a clone of the boss when entering the boss room#Defeating it drops an extra item#Clone is slower and has 75% of the original boss health"}, -- Vanishing Twin
	[698] = {"698", "Twisted Pair", "Two familiars that stand by your side#Fire tears equal to yours, but with only 37.5% of your damage"}, -- Twisted Pair
	[699] = {"699", "Azazel's Rage", "Build rage every time a room is cleared#After 4 rooms, fires a large Brimstone laser when entering the next room"}, -- Azazel's Rage
	[700] = {"700", "Echo Chamber", "When Isaac uses a Card, Pill, or Rune, he also uses a copy of the last 3 Cards/Pills/Runes he used after picking up Echo Chamber"}, -- Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Spawns an Old Chest at the start of every floor which requires a key to unlock#Can contain Soul Hearts, trinkets or items#Items are from the {{AngelRoom}}Angel Room pool and Mom and Dad themed"}, -- Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "After taking damage, spawns an orbital wisp that lasts for the entire floor#Maximum of 6#They fire tears but do not block shots"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Swaps between the current character and Esau Jr., who has 3 Black Hearts, +2 Damage and flight#Characters have independent items and health#On first use, he gains random passive items equal to how many you have#{{Warning}} Dying as either character ends the run"}, -- Esau Jr.
	[704] = {"704", "Berserk!", "Berserk mode for 5 seconds:#↑ +0.4 Speed up#↑ Tears up#↑ +3 Damage up#Restricts attacks to a melee weapon"}, -- Berserk!
	[705] = {"705", "Dark Arts", "Gain +1 Speed and walk through enemies and bullets for 1 second#On touch, deal 2x your damage + 3.5 damage per touched enemy#Explosion on effect end that deals damage equal to how much you dealt"}, -- Dark Arts
	[706] = {"706", "Abyss", "Destroys all items in the room and spawns an attack fly familiar for each#Effects of fly depends on the items"}, -- Abyss
	[707] = {"707", "Supper", "↑ +1 Health up#Heals 1 Red Heart"}, -- Supper
	[708] = {"708", "Stapler", "↑ +1 Damage up#Prevents Isaac from firing tears from one eye"}, -- Stapler
	[709] = {"709", "Suplex!", "Allows you to dash into and pick up enemies or bosses, then slam them into the ground#Slam can be controlled#Slam deals 50 damage and spawns rock waves#Scales in damage and area of effect with the player's size"}, -- Suplex!
	[710] = {"710", "Bag of Crafting", "Collects and holds up to 8 pickups which cannot be dropped#Once 8 pickups are in the bag, using it will craft an item#Quality of the item is dependent on the quality of the pickups"}, -- Bag of Crafting
	[711] = {"711", "Flip", "When entering a room with an item pedestal, a second ghostly item will be shown#Upon use, flips the real and ghostly item#Both can be taken if Flip is used after taking the first item#!!! The ghostly item disappears if you take the first item and leave the room"}, -- Flip
	[712] = {"712", "Lemegeton", "Spawns an orbital wisp familiar that grants an item's effect but can be destroyed#The items have a 25% chance to be from the current room's item pool, or from the Treasure/Boss/Shop pools otherwise"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Removes half a heart and creates a Clot familiar#Each type of heart generates a Clot with different HP, damage and tear effect"}, -- Sumptorium
	[714] = {"714", "Recall", "Retrieves the Forgotten's body from any distance"}, -- Recall
	[715] = {"715", "Hold", "Preserves one poop bomb inside that can be used later"}, -- Hold
	[716] = {"716", "Keeper's Sack", "Gives range, speed, or damage up when buying things from shops#Spawns 3 coins and 1 key on pickup"}, -- Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Rocks and props spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders when in a hostile room"}, -- Keeper's Kin
	[718] = {"718", "Keeper's Robe (Cut item)", "<Item does not exist>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Keeper's Box", "Spawns a random shop item/pickup"}, -- Keeper's Box
	[720] = {"720", "Everything Jar", "Spawns certain pickups based on how many charges it has#If fully charged, it has a strong random effect#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Causes all future items to be 'glitched'#Grants them completely random effects"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Chains down the nearest enemy for 5 seconds, preventing them from acting"}, -- Anima Sola
	[723] = {"723", "Spindown Dice", "Transforms all items in the room by decreasing their internal ID number by one"}, -- Spindown Dice
	[724] = {"724", "Hypercoagulation", "Upon taking enemy damage, drop a half or full Red Heart#Spawned hearts launch out and despawn after 1.5 seconds"}, -- Hypercoagulation
	[725] = {"725", "IBS", "After dealing enough damage:#Throw poop#Create buffing creep#Fart#Drop 5 live bombs"}, -- IBS
	[726] = {"726", "Hemoptysis", "Double-tap a fire button to sneeze blood#Deals 150% your damage to enemies in front of you#1 second cooldown#Affected enemies take extra damage from Brimstone beams"}, -- Hemoptysis
	[727] = {"727", "Ghost Bombs", "+5 bombs#Bombs spawn ghosts that deal contact damage and explode after 10 seconds"}, -- Ghost Bombs
	[728] = {"728", "Gello", "Spawns a demon familiar that's attached to Isaac#Mimics Isaac's tears, stats and effects"}, -- Gello
	[729] = {"729", "Decap Attack", "Throws Isaac's head, dealing contact damage and shooting tears from where it lands#Reactivating the item or stepping on the head reattaches it"}, -- Decap Attack
	[730] = {"730", "Glass Eye", "↑ +0.75 Damage up#↑ +1 Luck up"}, -- Glass Eye
	[731] = {"731", "Stye", "!!! Applies only for the right eye#↑ +28% Damage up#↑ +7 Range up#↓ -0.3 Shot Speed down"}, -- Stye
	[732] = {"732", "Mom's Ring", "↑ +1 Damage up#Spawns a random rune or soul stone on pickup"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "All items cycle between two options"},
	{"Magdalene", "", "↑ +1 Health up#Maximum heart limit is raised to 18"},
	{"Cain", "", "↑ +1 Luck up#All floors will contain an upgraded Arcade Room except for Dark Room and Chest#Greatly increases {{Collectible46}}Lucky Foot's chances of winning effect"},
	{"Judas", "", "{{Collectible34}}The Book of Belial becomes a passive item similar to {{Collectible584}}Book of Virtues#Receive {{Collectible34}}The Book of Belial if you're not currently holding it#The damage boost received from it scales with the amount of charges the active item above it has#Grants special effects for certain active items"},
	{"???", "", "Soul Hearts gained from health upgrades are doubled"},
	{"Eve", "", "Whore of Babylon is active regardless of health#Dead Bird is active without taking damage"},
	{"Samson", "", "Bloody Lust can gain 4 more damage boosts at the same +0.2 intervals, for a new maximum total of +14"},
	{"Azazel", "", "Azazel's Brimstone beam becomes much wider, like Mega Blast#No effect on damage"},
	{"Lazarus", "", "No direct effect unless you die and become Lazarus Risen#Once revived, Lazarus Risen gains a slowly fading +21.6 damage bonus"},
	{"Eden", "", "Spawns 3 random items from random item pools#Only one can be taken"},
	{"The Lost", "", "Prevents items not beneficial to The Lost from spawning#Examples: items that only give health, flight, and/or spectral tears or activate upon taking damage"},
	{"Lazarus Risen", "", "Grants a slowly fading +21.6 damage bonus"},
	{"Black Judas", "", "{{Collectible34}}The Book of Belial becomes a passive item similar to {{Collectible584}}Book of Virtues#Receive {{Collectible34}}The Book of Belial if you're not currently holding it#The damage boost received from it scales with the amount of charges the active item above it has"},
	{"Lilith", "", "Familiars are positioned in front of Lilith's face"},
	{"Keeper", "", "↑ +1 Health up#Raises HP cap by 1"},
	{"Apollyon", "", "Using {{Collectible477}}Void has a chance to spawn an item that was previously voided#Stat bonuses are kept#The more items voided, the higher the chance for an item to spawn upon use"},
	{"The Forgotten", "", "The Soul is unchained and free to move"},
	{"The Forgotten Soul", "", "The Soul is unchained and free to move"},
	{"Bethany", "", "Activating an item using soul charges is sometimes free"},
	{"Jacob", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Esau", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Tainted Isaac", "", "Adds 4 more slots for passive items#Does not consume a slot itself"},
	{"Tainted Magdalene", "", "Adds 1 more Red Heart that doesn't drain"},
	{"Tainted Cain", "", "The amount of pickups spawned from collecting an item is doubled"},
	{"Tainted Judas", "", "Increases the range in which {{Collectible705}}Dark Arts hits enemies and tears"},
	{"Tainted ???", "", "Increases the maximum number of carried poops to 29"},
	{"Tainted Eve", "", "Red Heart clots spawn hearts on death that disappear after 2 seconds"},
	{"Tainted Samson", "", "The Berserk timer gains 3 seconds instead of 1 when Tainted Samson kills an enemy"},
	{"Tainted Azazel", "", "Doubles the size of Tainted Azazel's {{Collectible726}}Hemoptysis sneeze attack"},
	{"Tainted Lazarus", "", "The other version of T. Lazarus will be available as a ghost#He is immune to damage, but can fire tears#Both characters receive the Birthright effect"},
	{"Tainted Eden", "", "Passive and active items gained before Birthright will not be rerolled upon taking damage#Active items stop being protected if dropped"},
	{"Tainted Lost", "", "Grants an extra life that revives Tainted Lost in the same room and deals 200 damage to nearby enemies#Can hit the same enemy multiple times"},
	{"Tainted Lilith", "", "Familiars that normally follow Tainted Lilith will instead act like her {{Collectible728}}Gello#The melee attack does 3 more damage per familiar"},
	{"Tainted Keeper", "", "Strongly attracts the coins dropped by defeating enemies from a short distance#No effect on other coins"},
	{"Tainted Apollyon", "", "If the fire button is held, locusts will continuously damage enemies instead of returning"},
	{"Tainted Forgotten", "", "Tainted Soul gains the {{Collectible714}}Recall ability, to retrieve the Tainted Forgotten from a distance"},
	{"Tainted Bethany", "", "Spawns four random item wisps of Quality {{Quality3}} and {{Quality4}} with significantly higher HP than normal"},
	{"Tainted Jacob", "", "Dark Esau splits into two, creating a shadowy clone of itself#Both Esaus will always charge at the same time"},
	{"Dead Tainted Lazarus", "", "The other version of T. Lazarus will be available as a ghost#He is immune to damage, but can fire tears#Both characters receive the Birthright effect"},
	{"Tainted Jacob 2", "", "Dark Esau splits into two, creating a shadowy clone of itself#Both Esaus will always charge at the same time#Using {{Collectible722}} Anima Sola chains them both"},
	{"Tainted Forgotten Soul", "", "Tainted Soul gains the {{Collectible714}}Recall ability, to retrieve the Tainted Forgotten from a distance"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ +0.5 Tears up#↑ +1.5 Range up#↓ -0.03 Speed down", -- Lunch
	[23] = "↑ +0.5 Tears up#↑ +0.2 Shot Speed up#↓ -0.03 Speed down", -- Dinner
	[24] = "↑ +1 Damage up#↑ +0.2 Shot Speed up#↓ -0.03 Speed down", -- Dessert
	[25] = "↑ +0.2 Shot Speed up#↑ +1.5 Range up#↓ -0.03 Speed down", -- Breakfast
	[26] = "↑ +1 Damage up#↑ +1.5 Range up#↓ -0.03 Speed down", -- Rotten Meat
	[456] = "↑ +1 Damage up#↑ +1 Luck up#↓ -0.03 Speed down", -- Midnight Snack
	[346] = "↑ +0.2 Shot Speed up#↑ +1 Luck up#↓ -0.03 Speed down", -- A Snack
	[707] = "↑ +0.5 Tears up#↑+1 Luck up#↓ -0.03 Speed down", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Also invokes the effect of {{Collectible35}}Necronomicon", -- Kamikaze!
	[126] = "Also invokes the effect of {{Collectible35}}Necronomicon", -- Razor Blade
	[127] = "Grants a damage up for the entirety of the next floor", -- Forget me Now
	[133] = "Grants a permanent damage up", -- Guppy's Paw
	[135] = "Grants a damage up with each use", -- IV Bag
	[147] = "The axe has increased durability, knockback, can be used faster, sets enemies on fire and drops more pickups when destroying poops and obstacles", -- Notched Axe
	[186] = "Also invokes the effect of {{Collectible126}}Razor Blade", -- Blood Rights
	[282] = "Leaves a trail of fire that deals contact damage and sets enemies on fire", -- How to Jump
	[290] = "Expends one heart a time, grants a damage up and leaves red creep on the ground", -- The Jar
	[295] = "Has a chance to invoke the effect of {{Collectible555}}Golden Razor", -- Magic Fingers
	[297] = "Spawns a demonic familiar along with the floor-based drop", -- Pandora's Box
	[323] = "Launched tears have boosted damage", -- Isaac's Tears
	[352] = "Activates Book of Belial when broken - damage up persists until the cannon is fixed", -- Glass Cannon
	[475] = "Respawns you as Dark Judas if you have an extra life", -- Plan C
	[482] = "Replaces the most recently acquired item with {{Collectible51}}Pentagram", -- Clicker
	[487] = "Increased damage up", -- Potato Peeler
	[536] = "Grants +10.8 temporary damage up for every sacrificed familiar that slowly fades away similarly to {{Collectible621}}Red Stew", -- Sacrificial Altar
	[555] = "Damages everything in the room and applies the {{Collectible202}}Midas' Touch effect on them", -- Golden Razor
	[563] = "Ghosts will home in on enemies", -- Vade Retro
	[577] = "Grants a permanent damage up", -- Damocles
	[582] = "Grants an additional damage up for the rest of the floor based on the current amount of uses", -- Wavy Cap
	[585] = "Changes the payout to 2 Black Hearts and 1 Devil Deal item#Becomes 3 hearts and 2 items if a Devil Deal has been taken", -- Alabaster Box
	[622] = "Grants a free {{Collectible51}}Pentagram", -- Genesis
	[623] = "Also invokes the effect of {{Collectible126}}Razor Blade", -- Sharp Key
	[635] = "Creates a {{Collectible705}}Dark Arts line between you and Stitches", -- Stitches
	[640] = "Launches a {{Collectible118}}Brimstone beam instead", -- Urn of Souls
	[642] = "Grants a permanent damage up", -- Magic Skin
	[685] = "Grants {{Collectible292}}Satanic Bible wisps that boost Devil Deal chance", -- Jar of Wisps
	[705] = "Allows gain of temporary damage ups", -- Dark Arts
	[710] = "Picking up Red Hearts has a chance to replace them with a Black Heart", -- Bag of Crafting
	[729] = "Grants a huge damage and tears up when the head is detached", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Homing tears", -- The Bible
	[34] = "Double damage tears", -- The Book of Belial
	[35] = "3.5% chance for Fear tears#Necronomicon effect when destroyed", -- The Necronomicon
	[36] = "2.5% chance for Ecoli tears", -- The Poop
	[37] = "Spawns scatter bombs when destroyed", -- Mr. Boom
	[38] = "Rapid, inaccurate tears", -- Tammy's Head
	[39] = "5% chance for Petrify tears", -- Mom's Bra
	[40] = "Explosive tears#Explodes when destroyed", -- Kamikaze!
	[41] = "7.5% chance for Fear tears", -- Mom's Pad
	[42] = "7.5% chance for Ipecac tears", -- Bob's Rotten Head
	[44] = "10% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport!
	[45] = "20% chance for enemy to drop heart on kill", -- Yum Heart
	[47] = "Half damage tears#All Doctor's Remote wisps shoot 3 explosive tears towards the crosshair on use", -- Doctor's Remote
	[49] = "Cannot shoot tears#All Shoop da Whoop! wisps fire lasers on use", -- Shoop da Whoop!
	[56] = "Rapid, low range tears#Wisp drips yellow creep", -- Lemon Mishap
	[58] = "Immune to projectiles", -- Book of Shadows
	[65] = "Spawns a Troll Bomb when destroyed", -- Anarchist Cookbook
	[66] = "Slows enemies for 3 seconds when destroyed", -- The Hourglass
	[77] = "Extra contact damage", -- My Little Unicorn
	[78] = "Cannot shoot tears#Spawns a 7 Seals familiar for the room when destroyed", -- Book of Revelations
	[83] = "Knockback tears", -- The Nail
	[84] = "No special effect", -- We Need to Go Deeper!
	[85] = "Spawns a card when destroyed", -- Deck of Cards
	[86] = "Tooth tears", -- Monstro's Tooth
	[93] = "Anti-gravity tears#Chance for Fear tears", -- The Gamekid
	[97] = "Spawns 1 of 8 wisps: {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#Explosive effects are likely", -- The Book of Sin
	[102] = "Spawns 1 of 6 wisp colors with random effects each run#Chance for Poison, Petrify, Confusion, Burn, Troll Bomb tears, or spawning an enemy spider when destroyed#All 6 spawn a pill when destroyed", -- Mom's Bottle of Pills
	[105] = "Spawns an extra wisp per rerolled item", -- The D6
	[107] = "Piercing tears", -- The Pinking Shears
	[111] = "Poison fart when destroyed", -- The Bean
	[123] = "Random tears", -- Monster Manual
	[124] = "Spawns the wisp of what it mimics", -- Dead Sea Scrolls
	[126] = "High HP wisp", -- Razor Blade
	[127] = "Infinite HP wisp for the new floor", -- Forget Me Now
	[130] = "Cannot fire tears#Wisps charge in the direction you fire", -- A Pony
	[133] = "3 high HP wisps", -- Guppy's Paw
	[135] = "No special effect", -- IV Bag
	[136] = "7.5% chance for Mark tears#Marked enemies are attacked by other enemies", -- Best Friend
	[137] = "1 wisp per bomb detonated#Wisp's tears can also be remote detonated", -- Remote Detonator
	[145] = "Wisps are spawned instead of flies#Spawns a Blue Fly when destroyed", -- Guppy's Head
	[146] = "Homing tears", -- Prayer Card
	[147] = "Breaking rocks can randomly spawn 1 of 5 material wisps#Chance for coal, Confusion, coin, double damage, or laser tears", -- Notched Axe
	[158] = "Fast, aimed tears", -- Crystal Ball
	[160] = "Summons beams of light on contact", -- Crack the Sky
	[164] = "Single room wisp", -- The Candle
	[166] = "Destroys all pickups, with a chance to spawn a wisp for each", -- D20
	[171] = "7.5% chance for Slow tears", -- Spider Butt
	[175] = "Wisps open locked chests/doors on touch, including the Mega Satan, Ascent, and Corpse doors", -- Dad's Key
	[177] = "Spawns a wisp based on the reward you win", -- Portable Slot
	[181] = "10% chance for Holy Light tears", -- White Pony
	[186] = "High HP wisp", -- Blood Rights
	[192] = "Homing tears", -- Telepathy for Dummies
	[263] = "15% chance for enemy to drop rune on kill#Spawns a rune when destroyed", -- Clear Rune
	[282] = "Up to 6 stationary wisps", -- How to Jump
	[283] = "Rerolls your wisps, plus 1 random wisp#Doesn't reroll Book of Virtues", -- D100
	[284] = "Removes all wisps, and gives a random wisp per 2 items owned#Doesn't reroll Book of Virtues", -- D4
	[285] = "10% chance for D10 effect on hit", -- D10
	[286] = "15% chance for enemy to drop card on kill#Spawns a card when destroyed", -- Blank Card
	[287] = "Cracked Orb effect when destroyed", -- Book of Secrets
	[288] = "Wisps are spawned instead of spiders#Spawns a Blue Spider when destroyed", -- Box of Spiders
	[289] = "Single room wisp#Red flame tears", -- Red Candle
	[290] = "Creates a wisp per heart instead#Chance to spawn a half heart when destroyed", -- The Jar
	[291] = "Spawns an extra wisp per pooped enemy", -- Flush!
	[292] = "+10% {{DevilRoom}}Devil or {{AngelRoom}}Angel Room chance per Satanic Bible wisp", -- Satanic Bible
	[293] = "Fires 4-way laser when destroyed", -- Head of Krampus
	[294] = "Single room wisp#Cannot shoot tears#Butter Bean effect when destroyed", -- Butter Bean
	[295] = "Chance to drop a coin when destroyed", -- Magic Fingers
	[296] = "No special effect", -- Converter
	[297] = "No special effect", -- Pandora's Box
	[298] = "Cannot shoot tears#Immune to contact damage#Doesn't deal contact damage unless Unicorn Stump is active", -- Unicorn Stump
	[323] = "Spawns 6 wisps#3 second lifetime", -- Isaac's Tears
	[324] = "Playdough Cookie tears", -- Undefined
	[325] = "Arcing cluster tears", -- Scissors
	[326] = "Spawns wisp on taking damage", -- Breath of Life
	[338] = "Single room wisp#Boomerang tears", -- The Boomerang
	[347] = "20/20 tears#Doubles your other wisps", -- Diplopia
	[348] = "Spawns a pill when destroyed", -- Placebo
	[349] = "50% chance to spawn a coin when destroyed", -- Wooden Nickel
	[351] = "All Mega Bean wisps send a rock wave out on use#Petrify + poison fart when destroyed", -- Mega Bean
	[352] = "All Glass Cannon wisps are destroyed when one is destroyed#Persists between rooms", -- Glass Cannon
	[357] = "Duplicate your wisps for the current room", -- Box of Friends
	[382] = "Captured enemies spawn a normal, homing, explosive, or Brimstone wisp on death, depending on their moveset", -- Friendly Ball
	[383] = "Wisp's tears can be detonated, turning into 6 of Isaac's tears#Burst into Isaac's tears when destroyed#Persists between rooms", -- Tear Detonator
	[386] = "5% chance for tears to reroll grid objects (except Poop and TNT) on hit", -- D12
	[396] = "Cannot shoot tears#Each portal has 1 wisp", -- Ventricle Razor
	[406] = "Random damage and fire rate", -- D8
	[419] = "20% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport 2.0
	[421] = "Charm fart when destroyed", -- Kidney Bean
	[422] = "30% chance to shoot petrifying tears", -- Glowing Hour Glass
	[427] = "Bounces harmlessly around the room, exploding when shot by Isaac#Cannot shoot tears or deal contact damage", -- Mine Crafter
	[434] = "Wisps are spawned instead of flies#Up to 5 flies makes 1 wisp with increased health and damage", -- Jar of Flies
	[437] = "D7 effect when hit for the first time", -- D7
	[439] = "No special effect", -- Mom's Box
	[441] = "Lil Brimstone tears (requires releasing the fire button)#All Mega Blast wisps fire continuously during a Mega Blast", -- Mega Blast
	[475] = "8 high damage wisps", -- Plan C
	[476] = "Spawns a second wisp if no pickup was duplicated", -- D1
	[477] = "Spawns the wisps of all absorbed active items#Doesn't spawn a wisp itself", -- Void
	[478] = "Pauses all enemies and shots for 3 seconds when destroyed", -- Pause
	[479] = "Chance to spawn a trinket when destroyed", -- Smelter
	[480] = "Wisp's health increases the more pickups were destroyed", -- Compost
	[481] = "5% chance for tears to transform enemies into random wisps", -- Dataminer
	[482] = "Spawns a random wisp", -- Clicker
	[483] = "8 wisps that spawn a Golden Troll Bomb when destroyed", -- Mama Mega!
	[484] = "Single room wisp#Cannot shoot tears#Wait What? effect when destroyed", -- Wait What?
	[485] = "All Crooked Penny wisps are destroyed or duplicated when one is damaged", -- Crooked Penny
	[486] = "Cannot fire tears#Chance to negate Isaac taking damage", -- Dull Razor
	[487] = "Permanent wisp#Chases enemies to shoot them#Doesn't block shots or deal contact damage", -- Potato Peeler
	[488] = "Spawns the wisp of what it mimics (random if not an active item)", -- Metronome
	[489] = "Spawns a normal wisp in addition to the wisp effects of the mimicked dice", -- D Infinity
	[490] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Eden's Soul
	[504] = "Single room wisp#Rapid, aimed tears", -- Brown Nugget
	[507] = "Chance to spawn a wisp on kill", -- Sharp Straw
	[510] = "Monstro's Lung, Rotten Baby, Loki's Horns or Brimstone tears", -- Delirious
	[512] = "Magnet tears", -- Black Hole
	[515] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Mystery Gift
	[516] = "Tears fire in 8 directions like Sprinkler", -- Sprinkler
	[521] = "Triple shot#All Coupon tears are destroyed if you make a purchase", -- Coupon
	[522] = "Captured projectiles turn into wisps", -- Telekinesis
	[523] = "Wisp only spawns when dropping items#Spawns a random pickup when destroyed", -- Moving Box
	[527] = "Cannot fire tears#On room clear, wisps open chests/doors", -- Mr. ME!
	[536] = "Converts all wisps into Half Red Hearts#Spawns a strong wisp on sacrifice", -- Sacrificial Altar
	[545] = "Spawns a friendly Bony when destroyed", -- Book of the Dead
	[550] = "10% chance for tears to trigger a stomp on the enemy", -- Broken Shovel
	[552] = "10% chance for tears to trigger a stomp on the enemy#Also spawns a high HP wisp that cannot shoot tears", -- Mom's Shovel
	[555] = "15% chance for Midas' Touch tears", -- Golden Razor
	[556] = "Short range laser tears", -- Sulfur
	[557] = "+0.2 Luck per Fortune Cookie wisp", -- Fortune Cookie
	[577] = "No special effect", -- Damocles
	[578] = "Wisp drips yellow creep", -- Free Lemonade
	[580] = "Chance to create Red Doors when entering a new room", -- Red Key
	[582] = "Max 1 Wavy Cap wisp", -- Wavy Cap
	[584] = "No benefit from multiple copies", -- Book of Virtues
	[585] = "8 wisps", -- Alabaster Box
	[604] = "Single room wisp#3 wisps created where something lands#10% chance for Confusion tears", -- Mom's Bracelet
	[605] = "No special effect", -- The Scooper
	[609] = "Invincible wisp#50% chance for all Eternal D6 wisps to be destroyed on use", -- Eternal D6
	[611] = "Health and damage increases based on charges", -- Larynx
	[622] = "3 wisps#Removes all other wisps", -- Genesis
	[623] = "No special effect", -- Sharp Key
	[631] = "Splits your wisps in half (half health and damage)#Wisps are destroyed if split a third time", -- Meat Cleaver
	[635] = "Leaves a stationary wisp behind#Up to 6 stationary wisps", -- Stitches
	[636] = "No wisp", -- R Key
	[638] = "Erases non-boss enemies on contact", -- Eraser
	[639] = "Cannot shoot tears#Spawns a Blue Fly on room clear", -- Yuck Heart
	[640] = "Chance for blue flame tears", -- Urn of Souls
	[642] = "Poison tears", -- Magic Skin
	[650] = "When Baby Plum bounces diagonally, all Plum Flute wisps do so as well", -- Plum Flute
	[653] = "No wisps#Red ghosts can fire tears", -- Vade Retro
	[655] = "Temporary wisps during use", -- Spin to Win
	[685] = "Doubles the wisps spawned, plus 1", -- Jar of Wisps
	[687] = "Spawns a random wisp", -- Friend Finder
	[703] = "No special effect", -- Esau Jr.
	[704] = "High HP wisp#Cannot shoot tears", -- Berserk
	[705] = "Single room wisp per enemy killed", -- Dark Arts
	[706] = "High HP wisp#Cannot shoot tears", -- Abyss
	[709] = "Single room wisp#3 wisps created where you land", -- Suplex
	[710] = "Spawns a random wisp on craft", -- Bag of Crafting
	[711] = "No special effect", -- Flip
	[712] = "The item wisps can fire homing tears", -- Lemegeton
	[713] = "No wisp", -- Sumptorium
	[719] = "20% chance for enemy to drop coin on kill", -- Keeper's Box
	[720] = "Spawns a random wisp", -- Everything Jar
	[722] = "Orbits the chained enemy, shooting at them#Wisp dies when enemy dies", -- Anima Sola
	[723] = "Rerolls your wisps to the same type", -- Spindown Dice
	[728] = "All wisps will orbit Gello", -- Gello
	[729] = "Stationary wisp", -- Decap Attack
	
}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
	[2] = "Three normal locusts", -- The Inner Eye
	[3] = "Purple homing locust", -- Spoon Bender
	[4] = "Red large locust that deals triple damage", -- Cricket's Head
	[6] = "Yellow fast short range locust that deals damage more quickly", -- Number One
	[7] = "Red locust that deals double damage", -- Blood of the Martyr
	[10] = "Two gray locusts that deal half damage", -- Halo of Flies
	[13] = "Green locust that poisons enemies", -- The Virus
	[103] = "Green locust that poisons enemies", -- The Common Cold
	[118] = "Gray larger locust that is otherwise normal", -- Brimstone
	[149] = "Large, slow, green locust that deals x1.5 your damage and poisons enemies", -- Ipecac
	[153] = "Four normal locusts", -- Mutant Spider
	[257] = "Orange, burning locust that sets enemies on fire", -- Fire Mind
	[305] = "Green locust that poisons enemies", -- Scorpio
	[374] = "Cyan, glowing locust that can spawn beams of light that deal deal 3x your damage", -- Holy Light
	[494] = "Light blue locust with arcs of electricity that deals 0.1 damage per tick", -- Jacob's Ladder
	[559] = "Light blue locust with arcs of electricity that deals 0.1 damage per tick", -- 120 Volt
}


---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Swallowed Penny", "Spawns 1 coin when you get hit#0-1 as Keeper"}, -- Swallowed Penny
	[10] = {"10", "Wiggle Worm", "Tears move in waves#↑ +0.4 Tears up#Grants spectral tears"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "Tears move in spirals with high speed#↑ +0.4 Tears up#Grants spectral tears"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "33% chance to drop a coin when destroying rocks"},-- Lucky Rock
	[24] = {"24", "Butt Penny", "20% higher chance for coins to spawn from poop#Fart when picking up coins#The fart poisons and knocks back enemies and projectiles"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "Tears move in angular patterns#↑ +0.4 Tears up#↑ +1.5 Range up#Grants spectral tears"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "25% chance for a random mushroom effect per room"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "At half a Red Heart or less, you gain#{{Blank}} {{Collectible100}}Little Steven#High chance to spawn Gemini familiars for the room when taking damage"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ +1 Fire Rate up"},
	[48] = {"48", "A Missing Page", "When hit, 5% chance to deal 80 damage to all enemies in the room#Black Hearts and {{Collectible35}}Necronomicon-like effects deal 2x damage"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "25% chance to drop half a heart when picking up coins"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "25% chance to drop a bomb when picking up coins"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "25% chance to drop a key when picking up coins"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Range up"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Shot Speed down"}, -- Lazy Worm
	[69] = {"69", "Faded Polaroid", "Camouflages the player randomly#Confuses enemies#Can be used to open the door to the \"Home\" floor"}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ +0.5 Damage up for each evil item held"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ Stat increases of your items are 20% more effective"}, -- Cracked Crown
	[96] = {"96", "Ouroboros Worm", "Tears move quickly in a spiral pattern#↑ +0.4 Tears up#↑ +1.5 Range up#Grants spectral tears#Chance for homing tears"}, -- Ouroboros Worm
	[98] = {"98", "Nose Goblin", "10% chance to shoot homing sticky poison tears#Deals your damage each second#Sticks for 10 seconds"},
	[101] = {"101", "Dim Bulb", "!!! While holding a completely uncharged active item:#↑ +1.5 Damage#↑ +0.5 Speed#↑ +1.5 Range#↑ +0.5 Tears#↑ +0.3 Shot Speed#↑ +2 Luck"},
	[110] = {"110", "Silver Dollar", "{{Shop}}Shops will now appear in the Womb and Corpse"},
	[111] = {"111", "Bloody Crown", "{{TreasureRoom}}Treasure Rooms now appear in the Womb and Corpse"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "Heals half of your empty Red/Bone Hearts upon traveling to the next floor#Minimum half a heart healed"}, -- Stem Cell
	[128] = {"128", "Finger Bone", "4% chance to gain a Bone Heart when taking damage"}, -- Finger Bone
	[129] = {"129", "Jawbreaker", "10% chance to shoot teeth#Teeth deal 3.2x your damage#100% chance at 9 Luck"}, -- Jawbreaker
	[130] = {"130", "Chewed Pen", "10% chance to shoot slowing tears#100% chance at 18 Luck"}, -- Chewed Pen
	[131] = {"131", "Blessed Penny", "17% chance to drop Half Soul Hearts when picking up coins"}, -- Blessed Penny
	[132] = {"132", "Broken Syringe", "25% chance for a random syringe effect per room"}, -- Broken Syringe
	[133] = {"133", "Short Fuse", "Bombs placed by Isaac explode more quickly"}, -- Short Fuse
	[134] = {"134", "Gigante Bean", "Increases fart size"}, -- Gigante Bean
	[135] = {"135", "A Lighter", "20% chance to apply burn effect to enemies upon entering a room"}, -- A Lighter
	[136] = {"136", "Broken Padlock", "Doors, key blocks and golden chests can be opened with explosions#Can also open the Home door"}, -- Broken Padlock
	[137] = {"137", "Myosotis", "When entering a new floor, up to 4 uncollected pickups from the previous floor spawn in the starting room"}, -- Myosotis
	[138] = {"138", "'M", "Using an active item rerolls it"}, -- 'M
	[139] = {"139", "Teardrop Charm", "+3 Luck towards Luck-based tear effects"}, -- Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, -- Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Increases fire rate of familiars"}, -- Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "When entering a new floor, spawns 4 {{Collectible584}}Book of Virtues wisps"}, -- Beth's Faith
	[143] = {"143", "Old Capacitor", "Prevents active item from charging#20% chance to spawn a battery after clearing a room#33% chance at 5 Luck"}, -- Old Capacitor
	[144] = {"144", "Brain Worm", "Tears turn 90 degrees to target enemies that they may have missed"}, -- Brain Worm
	[145] = {"145", "Perfection", "↑ +10 Luck up#Destroys itself when you take damage"}, -- Perfection
	[146] = {"146", "Devil's Crown", "{{TreasureRoom}}Treasure Rooms now contain Devil deals"}, -- Devil's Crown
	[147] = {"147", "Charged Penny", "17% chance to add one charge to your active item when picking up coins"}, -- Charged Penny
	[148] = {"148", "Friendship Necklace", "Causes familiars to circle around Isaac"}, -- Friendship Necklace
	[149] = {"149", "Panic Button", "Activates your active item upon taking damage"}, -- Panic Button
	[150] = {"150", "Blue Key", "Entering a room that requires a key brings you in a room resembling the Hush stage#Room acts as an in-between of the two rooms"}, -- Blue Key
	[151] = {"151", "Flat File", "Causes spikes to retract, making them harmless#Also affects {{CursedRoom}}Curse Room doors, mimics and any spike obstacle"}, -- Flat File
	[152] = {"152", "Telescope Lens", "+24% {{Planetarium}}Planetarium chance if none have spawned#+9% if a Planetarium has already spawned#Planetariums can now spawn in the Womb and Corpse"}, -- Telescope Lens	
	[153] = {"153", "Mom's Lock", "25% chance for a random Mom item effect per room"}, -- Mom's Lock
	[154] = {"154", "Dice Bag", "50% chance per new room to grant a single use Dice consumable item#The Dice disappears when leaving#Does not take up a pill/card slot"}, -- Dice Bag
	[155] = {"155", "Holy Crown", "Spawns a {{TreasureRoom}}Treasure Room and {{Shop}}Shop in Cathedral"}, -- Holy Crown
	[156] = {"156", "Mother's Kiss", "Grants 1 heart container while held#Works for Keeper, too"}, -- Mother's Kiss
	[157] = {"157", "Torn Card", "Every 15 shots, shoot an {{Collectible149}}Ipecac + {{Collectible5}}My Reflection tear with a very high range value"}, -- Torn Card
	[158] = {"158", "Torn Pocket", "Upon hit, Isaac drops 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."}, -- Torn Pocket
	[159] = {"159", "Gilded Key", "+1 key when first picked up#Replaces all chests (except Old/Mega) with Golden Chests#Golden Chests can contain extra cards, pills or trinkets"}, -- Gilded Key
	[160] = {"160", "Lucky Sack", "When entering a new floor, spawns 1 Grab Bag"}, -- Lucky Sack
	[161] = {"161", "Wicked Crown", "Spawns a {{TreasureRoom}}Treasure Room and {{Shop}}Shop in Sheol"}, -- Wicked Crown
	[162] = {"162", "Azazel's Stump", "50% chance to turn into Azazel after clearing a room#Effect lasts until clearing and leaving another room"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "All Dip (small poop) enemies are friendly#Spawns 1 random Dip upon clearing a room"}, -- Dingle Berry
	[164] = {"164", "Ring Cap", "Spawns 1 extra bomb for each bomb placed"}, -- Ring Cap
	[165] = {"165", "Nuh Uh!", "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"}, -- Nuh Uh!
	[166] = {"166", "Modeling Clay", "50% chance to grant the effect of a random Passive Item each room"}, -- Modeling Clay
	[167] = {"167", "Polished Bone", "25% chance to spawn a friendly Bony when clearing a room"}, -- Polished Bone
	[168] = {"168", "Hollow Heart", "+1 Bone Heart upon entering a new floor"}, -- Hollow Heart
	[169] = {"169", "Kid's Drawing", "While held, counts as 1 item towards the Guppy transformation"}, -- Kid's Drawing
	[170] = {"170", "Crystal Key", "33% chance to create {{Collectible580}}Red Key rooms each time you clear a room#Lower chance to occur when in a red room"}, -- Crystal Key
	[171] = {"171", "Keeper's Bargain", "50% chance for Devil deals to cost coins instead of hearts"}, -- Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Teleport to a random room upon picking up a penny#Can teleport to secret rooms"}, -- Cursed Penny
	[173] = {"173", "Your Soul", "One Devil deal item for free"}, -- Your Soul
	[174] = {"174", "Number Magnet", "+10% Devil Room chance#Prevents Krampus from appearing in Devil Rooms#Devil Rooms will be special variants with more deals, Black Hearts and enemies"}, -- Number Magnet
	[175] = {"175", "Strange Key", "Unlocks the passageway to the Hush fight, regardless of the run duration#Using {{Collectible297}}Pandora's Box spawns 6 items from random pools"}, -- Strange Key
	[176] = {"176", "Lil Clot", "Spawns 1 blood clot familiar who mimics Isaac's movement, shoot direction and tear effects#Familiar respawns each room if it dies"}, -- Lil Clot
	[177] = {"177", "Temporary Tattoo", "Spawns a chest after clearing a {{ChallengeRoom}}Challenge Room, or a collectible after clearing a {{BossRushRoom}}Boss Challenge Room"}, -- Temporary Tattoo
	[178] = {"178", "Swallowed M80", "50% chance to explode upon taking damage"}, -- Swallowed M80
	[179] = {"179", "RC Remote", "Familiars move with the player's movement inputs#Hold Drop to keep the familiars in place, like Jacob and Esau"}, -- RC Remote
	[180] = {"180", "Found Soul", "Familiar that follows Isaac's exact movements and shoots spectral tears#Copies your stats, deals half damage#Dies in one hit#Respawns each floor"}, -- Found Soul
	[181] = {"181", "Expansion Pack", "When you use an active item, activates an additional effect of a random 1-2 charge active item"}, -- Expansion Pack
	[182] = {"182", "Beth's Essence", "Spawns 5 wisps upon entering an {{AngelRoom}}Angel Room#25% chance to spawn a wisp when donating to Beggars"}, -- Beth's Essence
	[183] = {"183", "The Twins", "50% chance to duplicate a familiar each room#If you have no familiar, grants {{Collectible8}}Brother Bobby or {{Collectible67}}Sister Maggy instead"}, -- The Twins
	[184] = {"184", "Adoption Papers", "{{Shop}}Shops now sell familiars for 10 coins"}, -- Adoption Papers
	[185] = {"185", "Cricket Leg", "17% chance to spawn a random locust when killing an enemy"}, -- Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "Grants 1 {{Collectible706}}Abyss locust"}, -- Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "50% chance of adding an extra blind item in {{TreasureRoom}}Treasure Rooms#50% chance to reveal the blind item in alt paths"}, -- Broken Glasses
	[188] = {"188", "Ice Cube", "20% chance to petrify enemies when entering a room#Killing a petrified enemy freezes it"}, -- Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Activates a 1 second shield upon killing an enemy#Killing enemies while shielded adds 1 more second"}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)
EID.descriptions[languageCode].goldenTrinket = "Effect doubled!"
EID.descriptions[languageCode].tripledTrinket = "Effect tripled!"
EID.descriptions[languageCode].quadrupledTrinket = "Effect quadrupled!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "half a heart", "a heart", "one and a half hearts" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"-{{ColorGold}}30{{CR}}% boss health#Heals {{ColorGold}}2{{CR}} Red Hearts when entering a {{BossRoom}}Boss Room#{{ColorGold}}Removable!",
		"-{{ColorGold}}30{{CR}}% boss health#Heals {{ColorGold}}2{{CR}} Red Hearts when entering a {{BossRoom}}Boss Room#!!! Once picked up, it can't be removed#Only removeable with {{Trinket41}}Match Stick or gulping",
		"-{{ColorGold}}30{{CR}}% boss health#Heals {{ColorGold}}3{{CR}} Red Hearts when entering a {{BossRoom}}Boss Room#{{ColorGold}}Removable!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Worm's stat boosts are doubled", "Worm's stat boosts are tripled", "Worm's stat boosts are quadrupled", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Trinket effect is doubled if possible", "Trinket effect is tripled if possible", "Trinket effect is quadrupled if possible", },
	-- NO!
	[88] = { "Prevents Quality {{Quality0}} items from spawning" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Replaces all chests (except Old/Mega) with Golden Chests#Golden Chests can contain extra cards, pills or trinkets" },
}

---------- Cards ----------

local repCards={
	[2] = {"2", "I - The Magician", "Homing tears and +3 Range for current room"}, -- I - The Magician
	[12] = {"12", "XI - Strength", "↑ +1 Health up#↑ +0.3 Damage up#↑ +50% Damage#↑ +5.25 Range up#↑ +0.3 Speed up#For current room"}, -- XI - Strength
	[27] = {"27", "Ace of Clubs", "Turns all pickups, chests and non-boss enemies into bombs"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "Turns all pickups, chests and non-boss enemies into coins"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "Turns all pickups, chests and non-boss enemies into keys"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "Turns all pickups, chests and non-boss enemies into hearts"}, -- Ace of Hearts
	[39] = {"39", "Algiz", "Invincibility for 20 seconds"}, -- Algiz
	[51] = {"51", "Holy Card", "Grants the Holy Mantle effect#(Prevents damage once)#Effect lasts until damage is taken"}, -- Holy Card
	[52] = {"52", "Huge Growth", "↑ +7 Damage up#↑ +3 Range up#Destroy rocks when walking over them#Size up#Effect lasts for current room"}, -- Huge Growth
	[55] = {"55", "Rune Shard", "Activates a random rune effect#The rune effect is weaker"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Drops all your hearts and pickups on the floor, leaving you with half a heart#Coins and bombs may be dropped as {{Collectible74}}The Quarter or {{Collectible19}}Boom! if possible"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "Grants an aura that repels enemies and projectiles for 1 minute"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "Mom's Foot stomps down repeatedly for 1 minute"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "Grants for 1 minute:#↑ +2 Health up#↑ +1.35 Tears up"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Teleports you to an extra Boss room with extra loot#The boss is chosen from two floors deeper than the current one"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "Spawns 2 Bone Hearts"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Spawns 1 item from current room's item pool#Turns 1 Red Heart Container or 2 Soul Hearts into a broken heart"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "Turn into invincible immobile statue for 10 seconds#Extreme fire rate for duration"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "Spawns 2-4 Golden Chests"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "Turns pickups and items in the room into coins#Coin values are equal to their shop value"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "Random dice room effect"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "Enemies in current room are weakened, slowed and take double damage#Lasts 1 minute"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "Turns player into the Keeper for 30 seconds#Grants triple shot and speed down#Killed enemies drop random coins"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "Invokes {{Collectible545}}Book of the Dead effect#Spawns Bone entities for each enemy killed in room"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "Eat 5 random pills"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "Invokes {{Collectible33}}The Bible effect#Grants {{Collectible390}}Seraphim and flight for 30 seconds"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "Spawns 6 clusters of random rocks and obstacles#Clusters will often contain Tinted Rocks"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "Removes oldest passive item (ignoring starting items)#Spawns 2 random items from current room's item pool"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "Teleports you to the {{UltraSecretRoom}}Ultra Secret Room#Pathway back will be made of red rooms"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "For the current floor:#↑ Gain {{Collectible159}}Spirit of the Night#↑ +1.5 Damage up#Turns your Red Hearts into Bone Hearts#Applies Curse of Darkness"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "Spawns a Restock Machine"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "Spawns a trap door to a crawlspace"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "One time use {{Collectible580}}Red Key"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "Spawns 1-20 Red Hearts"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Copies the effect of the most recently used pill, card, rune, soul stone or activated item"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Rerolls the items in the room#Cycle back to their original form after one second#Effect repeats"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "Surrounds Isaac with a bubbling red aura for the current room#Enemies killed drop red half hearts that disappear in 2 seconds"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Opens all doors in the room#Creates red rooms with {{Collectible580}}Red Key for every possible exit"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "Turns Isaac into a phantom that can pass through enemies to paralyze them#After a few seconds, will attack them all, gaining damage bonus per target"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "Causes 8 poison farts with brown creep#Then plants trail of 7 Butt Bombs#Standing in the creep gives ↑ +1.35 Tears and ↑ +1 Damage"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "14 Dead Bird familiars fly in and attack enemies# Lasts for current room"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Speed up#↑ Tears up#↑ +3 Damage up"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", "Activates {{Collectible441}}Mega Blast for 7.5 seconds"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Die and immediately revive at half a heart with some invincibility time#Item is automatically used upon taking fatal damage (like an extra life)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "Rerolls pedestals and pickups in current room#The rerolled items use random pools"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "Die and turn into The Lost for current room#You can take one {{DevilRoom}}Devil Room item for free, the rest will disappear#You can enter the Mausoleum or Gehenna door for free"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Adds 1 random familiar"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "Spawns 1-25 random coins"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "Spawn 15 random locust flies"}, -- Soul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "Spawns The Forgotten as a temporary secondary character for current room"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "Spawns 6 {{Collectible584}}Book of Virtues wisps with random properties"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "Spawns Esau as a temporary secondary character for current room#He spawns with random passive items equal to how many you have"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Also grants {{Collectible34}}The Book of Belial effect", -- I - The Magician
	[3] = "A second foot strikes down shortly after the first", -- II - The High Priestess
	[4] = "Doubles the stat increases", -- III - The Empress
	[5] = "If the boss wasn't defeated yet, grants 1 Soul Heart as well", -- IV - The Emperor
	[6] = "Spawns 3 Soul Hearts", -- V - The Hierophant
	[7] = "Spawns 3 Red Hearts", -- VI - The Lovers
	[8] = "Doubled duration", -- VII - The Chariot
	[9] = "Doubled pickup spawns", -- VIII - Justice
	[10] ="Prevents Greed from spawning in the shop#Turns shop into a normal shop if Greed was already fought in it", -- IX - The Hermit
	[11] = "Spawns 2 Slot Machines", -- X - Wheel of Fortune
	[12] = "Doubled stat increase, excluding dmg multiplier", -- XI - Strength
	[14] = "Deals 80 damage", -- XIII - Death
	[15] = "Spawns 2 Blood Donation Machines", -- XIV - Temperance
	[16] = "Damage increase doubled", -- XV - The Devil
	[17] = "Spawns 12 troll bombs", -- XVI - The Tower
	[18] = "If the Treasure Room wasn't entered before, it will have two items to choose from", -- XVII - The Stars
	[21] = "Spawns 2 Beggars", -- XX - Judgement
	[56] = "Drops all items alongside pickups, including Tarot Cloth", -- 0 - The Fool?
	[59] = "↑ +3 Health up", -- III - The Empress?
	[61] = "Spawns 3 Bone Hearts", -- V - The Hierophant?
	[62] = "Adds 2 Broken Hearts and spawns 2 items", -- VI - The Lovers?
	[64] = "Spawns 4-14 Golden Chests", -- VIII - Justice?
	[70] = "Eat 10 random pills", -- XIV - Temperance?
	[72] = "Spawns 14 rock clusters", -- XVI - The Tower?
	[73] = "Removes 2 items and spawns 4", -- XVII - The Stars?
	[76] = "Spawns 2 Restock Machines", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Switches number of bombs with keys#Golden bombs and keys are also swapped"}, -- Bombs are Key
	[12] = {"11", "Range Down", "↓ -0.6 Range down"}, -- Range Down
	[13] = {"12", "Range Up", "↑ +0.75 Range up"}, -- Range Up
	[42] = {"41", "I'm Drowsy...", "Slow all enemies and Isaac in the room"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!!", "Speeds up all enemies and Isaac in the room#Triggers again after 30 and 60 seconds"}, -- I'm Excited!!!
	
	[48] = {"47", "Shot Speed Down", "↓ -0.15 Shot Speed down"}, -- Shot Speed Down
	[49] = {"48", "Shot Speed Up", "↑ +0.15 Shot Speed up"}, -- Shot Speed Up
	[50] = {"49", "Experimental Pill", "↑ Increases 1 random stat#↓ Decreases 1 random other stat#Will not decrease with {{Collectible75}}PHD, {{Collectible46}}Lucky Foot or {{Collectible303}}Virgo#Will not increase with {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random pill effect#Destroys itself after a few uses"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Bad Gas", "Poisons entire room"}, -- Bad Gas
	{"1", "Bad Trip", "Deals 2 hearts of damage to you"}, -- Bad Trip
	{"2", "Balls of Steel", "+4 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Switches number of bombs with keys#Increases key and bomb count by 50%#Golden bombs and keys are also swapped"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Spawns some mega homing troll bombs at your position"}, -- Explosive Diarrhea
	{"5", "Full Health", "Full Health#+3 Soul Hearts"}, -- Full Health
	{"6", "Health Down", "↓ -2 Health down"}, -- Health Down
	{"7", "Health Up", "↑ +2 empty heart containers"}, -- Health Up
	{"8", "I Found Pills", "No effect"}, -- I Found Pills
	{"9", "Puberty", "No effect"}, -- Puberty
	{"10", "Pretty Fly", "Adds 1 {{Collectible279}}Big Fan fly orbital#There is no upper limit"}, -- Pretty Fly
	{"11", "Range Down", "↓ -1.2 Range down"}, -- Range Down
	{"12", "Range Up", "↑ +0.9 Range up"}, -- Range Up
	{"13", "Speed Down", "↓ -0.24 Speed down"}, -- Speed Down
	{"14", "Speed Up", "↑ +0.3 Speed up"}, -- Speed Up
	{"15", "Tears Down", "↓ -0.56 Tears down"}, -- Tears Down
	{"16", "Tears Up", "↑ +0.70 Tears up"}, -- Tears Up
	{"17", "Luck Down", "↓ -2 Luck down"}, -- Luck Down
	{"18", "Luck Up", "↑ +2 Luck up"}, -- Luck Up
	{"19", "Telepills", "Teleport to random room"}, -- Telepills
	{"20", "48 Hour Energy!", "Fully recharges your active item#Drops 3-4 batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "Drains all but one heart container#Spawns 1-4 Red Hearts"}, -- Hematemesis
	{"22", "Paralysis", "You can't move for 4 seconds"}, -- Paralysis
	{"23", "I can see forever!", "Opens secret room entrances on current floor#Grants full mapping"}, -- I can see forever!
	{"24", "Pheromones", "Turns every enemy in the room permanently friendly"}, -- Pheromones
	{"25", "Amnesia", "Hides the floor map"}, -- Amnesia
	{"26", "Lemon Party", "Spawns room filling puddle on the ground which damages enemies"}, -- Lemon Party
	{"27", "R U a Wizard?", "Shoot diagonally for 60 seconds"}, -- R U a Wizard?
	{"28", "Percs!", "Take only half the damage for current room"},  -- Percs!
	{"29", "Addicted!", "Take full heart damage for current room"}, -- Addicted!
	{"30", "Re-Lax", "Spawn poop while walking for 4 seconds"}, -- Re-Lax
	{"31", "???", "Curse of the maze effect for current floor"}, -- ???
	{"32", "One makes you larger", "You grow a lot bigger#Doesn't affect your hitbox"}, -- One makes you larger
	{"33", "One makes you small", "You get a lot smaller#Your hitbox gets smaller"}, -- One makes you small
	{"34", "Infested!", "Spawn 2 blue spiders per poop in room"}, -- Infested!
	{"35", "Infested?", "Spawn 2 blue spiders per enemy in room#Spawns 2-6 blue spiders when no enemy is in the room"}, -- Infested?
	{"36", "Power Pill!", "Short invincibility effect#↑ #7 Damage up#↑ +3 Range up#Persists for current room"}, -- Power Pill!
	{"37", "Retro Vision", "Pixelates the screen for 90 seconds"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 6 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawn pool of long lasting slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "Spawn pool of long lasting slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "Slow all enemies in room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!!", "Speed up for all enemies in room"}, --I'm Excited!!!
	{"43", "Gulp!", "Consume current trinket and gain its effect permanently"}, -- Gulp!
	{"44", "Horf!", "Shoots a cluster of ipecac tears"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "Short invincibility#Fears all enemies#Deal 40 contact damage#Two eaten enemies replenish half a heart"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns last used pill as a horse pill"}, -- Vurp!
	{"47", "Shot Speed Down", "↓ -0.3 Shot Speed down"}, -- Shot Speed Down
	{"48", "Shot Speed Up", "↑ +0.3 Shot Speed up"}, -- Shot Speed Up
	{"49", "Experimental Pill", "↑ Increases 1 random stat two times#↓ Decreases 1 random other stat two times#Will not decrease with {{Collectible75}}PHD, {{Collectible46}}Lucky Foot or {{Collectible303}}Virgo#Will not increase with {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random horse pill effect#Destroys itself after a few uses"}, -- Golden Pill
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "s",
	
	-- Item Config info
	AddBlackHearts = "{1} Black Heart",
	AddBombs = "{1} Bomb",
	AddCoins = "{1} Coin",
	AddHearts = "Heals {1} Red Heart",
	AddKeys = "{1} Key",
	AddMaxHearts = "{1} Heart Container",
	AddSoulHearts = "{1} Soul Heart",
	
	-- Cache Flag names
	cacheFlagStart = "May affect ",
	[0] = "Damage", "Fire Rate", "Shot Speed", "Range", "Speed", "Tear Effects", "Tear Color", "Flight", "Attack Type", "Familiars", "Luck", "Size", "Color", "Chest Contents", [16] = "All Stats",
	
	-- Attribute triggers
	chain = "Then:{{CR}} ",
	active = "On use:#",
	pickup_collected = "When you collect a pickup:#",
	enemy_kill = "On kill, chance to:#",
	damage_taken = "When you take damage:#",
	entity_spawned = "When a {T1} is spawned:#",
	tear_fire = "When you fire a tear, chance to:#",
	enemy_hit = "On hitting an enemy, chance to:#",
	room_clear = "On room clear:#",
	
	-- Attribute effects
	area_damage = "Deal {1} damage in an area around you", 
	add_temporary_effect = "Gain {1} for the room",
	convert_entities = "Convert all {1} in the room to {2}",
	use_active_item = "Use {1}",
	spawn_entity = "Spawn a {1}",
	fart = "Fart with size {1}",
	
	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "lit Bomb",
	["5.0"] = "pickup",
	["5.10"] = "Heart",
	["5.20"] = "Coin",
	["5.30"] = "Key",
	["5.40"] = "Bomb pickup",
	["5.69"] = "Grab Bag",
	["5.70"] = "Pill",
	["5.90"] = "Battery", 
	["5.300"] = "Card",
	["9.-1"] = "enemy projectile",
	["999.-1"] = "grid object",
	["1000.0"] = "effect",
	
}

---------- Misc. Text ----------

EID.descriptions[languageCode].VoidShopText = "If absorbed right after pickup, gain:"
EID.descriptions[languageCode].VoidOptionText = " will be absorbed instead"

EID.descriptions[languageCode].spindownError = "Item disappears"

EID.descriptions[languageCode].CraftingBagContent = "Bag:"
EID.descriptions[languageCode].CraftingRoomContent = "Room:"
EID.descriptions[languageCode].CraftingFloorContent = "Floor:"

EID.descriptions[languageCode].CraftingBagQuality = "Bag Quality:"
EID.descriptions[languageCode].CraftingBestQuality = "Best Quality:"

EID.descriptions[languageCode].CraftingHideKey = "Hide:"
EID.descriptions[languageCode].CraftingPreviewKey = "Preview:"
EID.descriptions[languageCode].CraftingPreviewBackup = "!!! If this item's locked, it will turn into"

EID.descriptions[languageCode].CraftingResults = "(Scroll: Hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Lock: {{ButtonX}}, Refresh: {{ButtonB}}, Reset Bag: Hold {{ButtonRB}})"

EID.descriptions[languageCode].BlankCardCharge = "Blank Card charge:"
EID.descriptions[languageCode].BlankCardQCard = "Teleport to I Am Error Room#Blank Card and ?-Card will be destroyed"
EID.descriptions[languageCode].ClearRuneCharge = "Clear Rune charge:"
EID.descriptions[languageCode].PlaceboCharge = "Placebo charge:"
EID.descriptions[languageCode].FlipItemToggleInfo = "(Hold {{ButtonSelect}} (Map) to show description)"


EID.descriptions[languageCode].FalsePHDHeart = "Spawns 1 Black Heart"
EID.descriptions[languageCode].FalsePHDDamage = "+0.6 Damage up"
EID.descriptions[languageCode].FalsePHDHorseDamage = "+1.2 Damage up"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}!!! WARNING !!!"
EID.descriptions[languageCode].AchievementWarningText = "Achievements are disabled!#In order to enable progression and achievements, you first need to kill Mom (Depths II) without any mods enabled.#(This warning can be disabled in the config)"

EID.descriptions[languageCode].OldGameVersionWarningText = "Your version of Repentance is not up-to-date!#Only the newest version is officially supported#(This warning can be disabled in the config)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Modded items could make the crafting recipe calculation inaccurate!#Use the No Recipes display mode or turn off the Bag of Crafting display if your recipes are incorrect#(This warning can be disabled in the config)"


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end
