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
	[2] = {"2", "The Inner Eye", "Triple shot#↓ {{Tears}} -49% Fire Rate down"},
	[5] = {"5", "My Reflection", "Gives tears a boomerang effect#↑ {{Damage}} +1.5 Damage up#↑ {{Range}} +1.5 Range up#↑ {{Range}} +60% additional Range up#↑ {{Shotspeed}} +60% Shot Speed up#↓ {{Luck}} -1 Luck down"}, -- My Reflection
	[6] = {"6", "Number One", "↑ {{Tears}} +1.5 Tears up#↓ {{Range}} -1.5 Range down#↓ {{Range}} -20% additional Range down"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#↑ {{Damage}} +0.3 Damage up#↑ {{Damage}} +50% Damage Multiplier#↑ {{Range}} +1.5 Range up#↑ {{Speed}} +0.3 Speed up#Size up"}, -- Magic Mushroom
	[13] = {"13", "The Virus", "{{Poison}} Touching enemies poisons them#↑ {{Speed}} +0.2 Speed up"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ {{Speed}} +0.3 Speed up#↑ {{Range}} +1.5 Range up"}, -- Roid Rage
	[18] = {"18", "A Dollar", "{{Coin}} +100 coins"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Lunch
	[23] = {"23", "Dinner", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Dinner
	[24] = {"24", "Dessert", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Rotten Meat
	[29] = {"29", "Mom's Underwear", "↑ {{Range}} +1.5 Range up#Spawns 3-6 Blue Flies"}, -- Mom's Underwear
	[30] = {"30", "Mom's Heels", "↑ {{Range}} +1.5 Range up#Isaac deals 12 contact damage"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ {{Range}} +2.25 Range up#{{Heart}} Spawns 1 random heart"}, -- Mom's Lipstick
	[37] = {"37", "Mr. Boom", "Drops a large bomb below Isaac which deals 185 damage"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Causes a big explosion at Isaac's location#Deals 185 damage"}, -- Kamikaze!
	[41] = {"41", "Mom's Pad", "{{Fear}} Fears all enemies in the current room for 5 seconds#Spawns a Blue Fly"}, -- Mom's Pad
	[42] = {"42", "Bob's Rotten Head", "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"}, -- Bob's Rotten Head
	[45] = {"45", "Yum Heart", "{{Heart}} Heals 1 Red Heart#Heals other players for half a heart"}, -- Yum Heart
	[46] = {"46", "Lucky Foot", "↑ {{Luck}} +1 Luck up#Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"}, -- Lucky Foot
	[52] = {"52", "Dr. Fetus", "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Each bomb deals 10x damage#If that results in over 60 damage, it instead deals 5x damage + 30#↓ {{Tears}} -60% Fire Rate down"}, --Dr. Fetus
	[53] = {"53", "Magneto", "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of spike chests"}, -- Magneto
	[55] = {"55", "Mom's Eye", "50% chance to shoot a tear backwards#{{Luck}} 100% chance at 5 Luck"}, -- Mom's Eye
	[59] = {"59", "The Book of Belial", "↑ {{Damage}} +2 Damage up#{{Collectible7}} +50% Damage if Isaac has Blood of the Martyr#{{AngelDevilChance}} +12.5% Devil/Angel Room chance while held"}, -- The Book of Belial (Judas's Birthright Version)
	[62] = {"62", "Charm of the Vampire", "↑ {{Damage}} +0.3 Damage up#{{HalfHeart}} Killing 13 enemies heals half a heart"}, -- Charm of the Vampire
	[64] = {"64", "Steam Sale", "{{Shop}} Shop items cost 50% less#Getting this item multiple times reduces the price further"}, -- Steam Sale
	[67] = {"67", "Sister Maggy", "Normal tear familiar#Deals 6 damage per tear"}, -- Sister Maggy
	[69] = {"69", "Chocolate Milk", "{{Chargeable}} Chargeable tears#↑ {{Damage}} Fully charged tears deal 400% Damage"}, --Chocolate Milk
	[70] = {"70", "Growth Hormones", "↑ {{Damage}} +1 Damage up#↑ {{Speed}} +0.2 Speed up"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ {{Speed}} +0.3 Speed up#↑ {{Range}} +1.5 Range up#↑ Size down"}, -- Mini Mush
	[72] = {"72", "Rosary", "{{SoulHeart}} +3 Soul Hearts#↑ {{Tears}} +0.5 Tears up#{{Collectible33}} The Bible is added to all item pools"}, -- Rosary
	[77] = {"77", "My Little Unicorn", "Makes Isaac invincible and grants +0.28 Speed up#Isaac deals 20 contact damage per second while invincible#{{Timer}} Effects last 6 seconds"}, -- My Little Unicorn
	[78] = {"78", "Book of Revelations", "{{SoulHeart}} +1 Soul Heart#Using the item replaces the floor's boss with a Horseman#{{AngelDevilChance}} +17.5% Devil or Angel Room chance while held"}, -- Book of Revelations
	[79] = {"79", "The Mark", "↑ {{Damage}} +1 Damage up#↑ {{Speed}} +0.2 Speed up#{{BlackHeart}} +1 Black Heart"}, -- The Mark
	[80] = {"80", "The Pact", "↑ {{Damage}} +0.5 Damage up#↑ {{Tears}} +0.7 Tears up#{{BlackHeart}} +2 Black Hearts"}, -- The Pact
	[83] = {"83", "The Nail", "{{HalfBlackHeart}} + Half Black Heart#↑ {{Damage}} +2 Damage up#↓ {{Speed}} -0.18 Speed down#Isaac deals 40 contact damage per second#Allows Isaac to destroy rocks by walking into them"}, -- The Nail
	[84] = {"84", "We Need To Go Deeper!", "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"}, --We Need To Go Deeper!
	[87] = {"87", "Loki's Horns", "25% chance to shoot in 4 directions#{{Luck}} 100% chance at 15 Luck"}, -- Loki's Horns
	[91] = {"91", "Spelunker Hat", "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"}, -- Spelunker Hat
	[98] = {"98", "The Relic", "{{SoulHeart}} Spawns 1 Soul Heart every 7-8 rooms"}, -- The Relic
	[101] = {"101", "The Halo", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Damage}} +0.3 Damage up#↑ {{Tears}} +0.2 Tears up#↑ {{Range}} +0.38 Range up#↑ {{Speed}} +0.3 Speed up#"}, -- The Halo
	[106] = {"106", "Mr. Mega", "{{Bomb}} +5 Bombs#↑ Bomb damage x1.85"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "20% chance to shoot petrifying tears#{{Luck}} 50% chance at 20 Luck#↑ {{Range}} +0.38 Range up"}, -- Mom's Contacts
	[114] = {"114", "Mom's Knife", "Isaac's tears are replaced by a throwable knife#The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"}, -- Mom's Knife
	[115] = {"115", "Ouija Board", "↑ {{Tears}} +0.4 Tears up#Spectral tears"},
	[118] = {"118", "Brimstone", "{{Chargeable}} Isaac's tears are replaced by a chargeable blood laser#↓ {{Tears}} -67% Fire Rate down"}, -- Brimstone
	[121] = {"121", "Odd Mushroom (Large)", "↑ {{Heart}} +1 Health up#↑ {{Damage}} +1 Damage up#↑ {{Range}} +0.38 Range up#↓ {{Speed}} -0.2 Speed down"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "Spawns a random familiar for the current floor"}, -- Monster Manual
	[126] = {"126", "Razor Blade", "↑ {{Damage}} +1.2 Damage up for the current room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#Removes Red Hearts first"}, -- Razor Blade
	[129] = {"129", "Bucket of Lard", "↑ {{Heart}} +2 Health up#↓ {{Speed}} -0.2 Speed down"}, -- Bucket of Lard
	[135] = {"135", "IV Bag", "Hurts Isaac for half a heart and spawns 1-2 coins#{{HardMode}}Spawns 1 coin on Hard Mode#{{Player14}}Spawns 0-1 coin as Keeper"}, -- IV Bag
	[138] = {"138", "Stigmata", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Damage}} +0.3 Damage up#"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "{{Trinket}} Isaac can hold 2 trinkets#{{Trinket}} Spawns 1 random trinket"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "{{Poison}} Isaac's bombs create a cloud of poison#Grants poison immunity#{{Bomb}} +5 bombs"}, -- Bob's Curse
	[142] = {"142", "Scapular", "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"}, --Scapular
	[147] = {"147", "Notched Axe", "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks and secret room entrances, and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"}, -- Notched Axe
	[148] = {"148", "Infestation", "Taking damage spawns 2-6 flies"}, -- Infestation
	[149] = {"149", "Ipecac", "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land#↑ {{Damage}} +40 Damage up#↓ {{Shotspeed}} -0.2 Shot Speed down#↓ {{Tears}} -67% Fire Rate down#↓ {{Range}} -20% Range down"}, -- Ipecac
	[152] = {"152", "Technology 2", "Replaces Isaac's right eye tears with a continuous laser#The laser deals 13% of Isaac's damage#↓ {{Tears}} -33% Fire Rate down"}, -- Technology 2
	[153] = {"153", "Mutant Spider", "Isaac fires 4 tears at once#↓ {{Tears}} -58% Fire Rate down"}, -- Mutant Spider
	[155] = {"155", "The Peeper", "Floats around the room#Deals 17.1 contact damage per second#↑ {{Damage}} Tears shot from Isaac's left eye deal 34% more damage"}, -- The Peeper
	[158] = {"158", "Crystal Ball", "Reveals the map#Drops a Soul Heart, Card, or Rune#{{Blank}} While held:#{{PlanetariumChance}} +15% Planetarium chance#{{PlanetariumChance}} +100% if a {{TreasureRoom}} Treasure Room was skipped"}, -- Crystal Ball
	[161] = {"161", "Ankh", "{{Player4}} Respawn as ??? (Blue Baby) on death#{{Player25}} Tainted ??? simply revives"},
	[169] =	{"169", "Polyphemus", "↑ {{Damage}} +100% Damage up#↑ {{Damage}} +4 additional Damage up#↓ {{Tears}} -58% Fire Rate down#Tears pierce killed enemies if there is leftover damage"}, --Polyphemus
	[171] = {"171", "Spider Butt", "{{Slow}} Slows down enemies for 4 seconds#Deals 10 damage to all enemies#Enemies killed by the item spawn blue spiders"}, -- Spider Butt
	[172] = {"172", "Sacrificial Dagger", "Orbital knife#Blocks enemy shots#Deals 112.5 damage per second"}, -- Sacrificial Dagger
	[176] = {"176", "Stem Cells", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Shotspeed}} +0.16 Shot Speed up"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#Leaves a pool of petrifying, damaging creep"}, -- Holy Water
	[180] = {"180", "The Black Bean", "When touched, Isaac farts multiple times and leaves poison clouds"}, -- The Black Bean
	[182] = {"182", "Sacred Heart", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#↑ {{Damage}} 230% + 1 Damage up#↓ {{Tears}} -0.4 Tears down#↓ {{Shotspeed}} -0.25 Shot Speed down#Homing tears"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "Grants flight#↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Holy Grail
	[186] = {"186", "Blood Rights", "Deals 40 damage to every enemy#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#Removes Red Hearts first"},
	[188] = {"188", "Abel", "Mirrors Isaac's movement#Shoots towards Isaac#Deals 3.5 damage per shot#{{Player2}} Deals 7.5 damage as Cain"}, -- Abel
	[189] = {"189", "SMB Super Fan", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#↑ {{Damage}} +0.3 Damage up#↑ {{Tears}} +0.2 Tears up#↑ {{Range}} +1.5 Range up#↑ {{Speed}} +0.2 Speed up"}, -- SMB Super Fan
	[192] = {"192", "Telepathy for Dummies", "↑ {{Range}} +3 Range up#Homing tears#{{Timer}} Lasts for one room"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Damage}} +0.3 Damage up"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ {{Shotspeed}} +0.16 Shot Speed up#{{Card}} +1 card#{{PlanetariumChance}} +15% Planetarium chance"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ {{Damage}} +0.5 Damage up#↑ {{Range}} +0.38 Range up"}, -- Jesus Juice
	[203] = {"203", "Humbleing Bundle", "Pickups have a 50% chance to be doubled"}, -- Humbling Bundle
	[205] = {"205", "Sharp Plug", "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#Removes Red Hearts first"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ {{Damage}} +1 Damage up#↑ {{Tears}} +0.5 Fire Rate up#Isaac's head becomes an orbital that shoots, doesn't take damage and deals 105 contact damage"}, -- Guillotine
	[211] = {"211", "Spiderbaby", "Taking damage spawns 3-5 Blue Spiders"}, -- Spiderbaby
	[214] = {"214", "Anemic", "↑ {{Range}} +1.5 Range up#Leave a trail of damaging creep after taking damage"}, -- Anemic
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#{{HalfHeart}} Chance to heal half a heart every minute"}, -- Placenta
	[222] =	{"222", "Anti-Gravity", "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired#↑ {{Tears}} +1 Fire Rate up"}, -- Anti-Gravity
	[224] = {"224", "Cricket's Body", "Tears split in 4 on hit#Split tears deal half damage#↑ {{Tears}} +0.5 Fire Rate up#↓ {{Range}} -20% Range down"}, -- Cricket's Body
	[228] = {"228", "Mom's Perfume", "{{Fear}} 15% chance to shoot Fear tears#↑ {{Tears}} +0.5 Fire Rate up"}, -- Mom's Perfume
	[229] =	{"229", "Monstro's Lung", "{{Chargeable}} Tears are charged and released in a shotgun style attack#↓ {{Tears}} -77% Fire Rate down"}, --Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Damage}} +1.5 Damage up#↑ {{Speed}} +0.2 Speed up#{{Fear}} Fear tears#Converts all {{Heart}} Red Heart Containers into {{BlackHeart}} Black Hearts#{{BlackHeart}} +2 Black Hearts"}, -- Abaddon
	[232] = {"232", "Stop Watch", "{{Slow}} Enemies are permanently slowed down to 80% of their speed#↑ {{Speed}} +0.3 Speed up"}, -- Stop Watch
	[233] = {"233", "Tiny Planet", "Isaac's tears orbit around him#↑ {{Range}} +6.5 Range up#Spectral tears"}, -- Tiny Planet
	[240] = {"240", "Experimental Treatment", "↑ Increases 4 random stats#↓ Decreases 2 random stats"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Isaac fires 2 tears at once#↓ {{Damage}} -20% Damage down#Removes the tear rate penalty of {{Collectible153}} Mutant Spider, {{Collectible2}} The Inner Eye and {{Collectible169}} Polyphemus"}, -- 20/20
	[248] = {"248", "Hive Mind", "Blue Spiders and Flies deal double damage#Spider and Fly familiars become stronger"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Luck}} +1 Luck up"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ {{Damage}} +1 Damage up#↑ {{Range}} +1.5 Range up#Applies only to the left eye"}, -- Blood Clot
	[256] = {"256", "Hot Bombs", "{{Burning}} Isaac's bombs light a flame where they explode#Grants immunity to fire damage#Isaac's bombs deal contact damage#{{Bomb}} +5 Bombs"}, -- Hot Bombs
	[261] = {"261", "Proptosis", "↑ {{Damage}} +0.5 Damage up#↓ Tears deal less Damage the longer they are airborne#Tears deal 300% Damage at point blank range and no damage after 0.8 seconds"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "{{BlackHeart}} +1 Black Heart#Taking damage down to 1 Heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon effects deal double damage"}, -- Missing Page 2
	[263] = {"263", "Clear Rune", "{{Rune}} Triggers the effect of the rune Isaac holds without using it#Drops 1 random rune on pickup"}, -- Clear Rune (REPENTANCE ITEM)
	[264] = {"264", "Smart Fly", "Orbital#Attacks enemies when Isaac takes damage#Deals 6.5 damage per second"},
	[273] = {"273", "Bob's Brain", "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#The explosion deals 100 damage, ignores boss armor and can hurt Isaac"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "Taking damage spawns one midrange orbital for the room#The orbital deals 150 damage per second"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "{{Collectible118}} Familiar that charges and shoots a Brimstone laser#Deals 3 damage per tick, for a total of 24 damage"}, -- Lil Brimstone
	[276] = {"276", "Isaac's Heart", "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "{{Heart}} Picks up Red Hearts from the floor#Spawns a Black Heart, card, pill, rune, or spider for every 1.5 hearts picked up"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"}, -- Sissy Longlegs
	[283] = {"283", "D100", "#Duplicates 1 pickup in the room#Rerolls Isaac's damage, tears, range, speed and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and rerolls them"}, -- D100
	[285] = {"285", "D10", "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"}, -- D10
	[287] = {"287", "Book of Secrets", "Highlights tinted and crawlspace rocks in the room#Grants one of these effects for the floor: #{{Collectible54}} Treasure Map#{{Collectible21}} Compass #{{Collectible246}} Blue Map#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "Spawn 4-8 blue spiders"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Throws a red flame#The flame disappears when it has dealt damage or blocked shots 5 times, or after 10 seconds"}, -- Red Candle
	[291] = {"291", "Flush!", "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"}, -- Flush!
	[292] = {"292", "Satanic Bible", "{{BlackHeart}} +1 Black Heart#{{DevilRoom}} Using the item before a boss fight makes the Boss reward a Devil deal#Taking these Devil Deals has the same consequences as taking those in devil rooms"}, -- Satanic Bible
	[294] = {"294", "Butter Bean", "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"}, -- Magic Fingers
	[296] = {"296", "Converter", "Converts 1 Soul or Black Heart into 1 Red Heart Container"}, -- Converter
	--NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	--For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Pandora's Box", "{{Warning}} SINGLE USE, spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#C1: Boss item; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#Dark Room: Unlocks {{Collectible523}} Moving Box; Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"}, -- Pandora's Box
	[300] = {"300", "Aries", "↑ {{Speed}} +0.25 Speed up#Touching enemies deals contact damage#Moving above 0.85 Speed makes Isaac immune to contact damage"}, -- Aries
	[307] = {"307", "Capricorn", "↑ {{Heart}} +1 Health up#↑ {{Damage}} +0.5 Damage up#↑ {{Speed}} +0.1 Speed up#↑ {{Range}} +0.75 Range up#↑ {{Tears}} +0.5 Fire Rate up#+1 Bomb, Coin, and Key"}, -- Capricorn
	[308] = {"308", "Aquarius", "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"}, -- Aquarius
	[309] =	{"309", "Pisces", "↑ {{Tears}} +0.5 Fire Rate up#Increases tear knockback"}, --Pisces
	[310] =	{"310", "Eve's Mascara", "↑ {{Damage}} +100% Damage up#↓ {{Tears}} -33% Tears down#↓ {{Shotspeed}} -0.5 Shot Speed down"},
	[311] = {"311", "Judas' Shadow", "{{Player12}} When dead, respawn as Dark Judas with a 2x Damage Multiplier#{{Player24}} Tainted Judas simply revives"}, --Judas' Shadow
	[314] = {"314", "Thunder Thighs", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↓ {{Speed}} -0.4 Speed down#Isaac can destroy rocks by walking into them"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"}, -- Strange Attractor
	[319] = {"319", "Cain's Other Eye", "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% damage"}, -- Cain's Other Eye
	[320] = {"320", "???'s Only Friend", "Controllable Fly#Deals 15 contact damage per second"}, -- ???'s Only Friend
	[323] = {"323", "Isaac's Tears", "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"}, -- Isaac's Tears
	[326] = {"326", "Breath of Life", "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If you block damage with perfect timing, shoot Holy Brimstone and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ {{Damage}} +1 Damage up#Taking damage at half a Red Heart or none damages all enemies in the room"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ {{Tears}} 5.5x Fire Rate up#↓ {{Damage}} -80% Damage down#Drastically reduces knockback"}, -- Soy Milk
	[331] = {"331", "Godhead", "↑ {{Speed}} +0.5 Damage up#↓ {{Tears}} -0.3 Tears down#↓ {{Shotspeed}} -0.3 Shot Speed down#Tears gain a damaging aura which deals 2 damage per tick#Homing tears"}, -- Godhead
	[332] = {"332", "Lazarus' Rags", "{{Player11}} When dead, revive as Lazarus (Risen)#{{Player29}} Tainted Lazarus simply revives"},
	[336] = {"336", "Dead Onion", "Piercing and spectral tears#↓ {{Range}} -1.5 Range down#↓ {{Shotspeed}} -0.4 Shot Speed down#↑ {{Tearsize}} +50% Tear Size up"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ {{Range}} +1.5 Range up#↑ {{Shotspeed}} +0.16 Shot Speed up#{{BlackHeart}} +1 Black Heart"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#↑ {{Tears}} +0.7 Tears up#↓ {{Shotspeed}} -16% Shot Speed down"}, -- Blue Cap
	[344] = {"344", "Match Book", "{{BlackHeart}} +1 Black Heart#Spawns: #{{Bomb}} 2-3 Bombs#{{Trinket41}} Match Stick"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ {{Damage}} +1 Damage up#↑ {{Range}} +1.5 Range up"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- A Snack
	[350] = {"350", "Toxic Shock", "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#Grants poison immunity"}, -- Toxic Shock
	[352] = {"352", "Glass Cannon", "Fires a large piercing spectral tear that does 10x damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} Grants +1.5 Range up and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#{{Trinket}} Spawns a trinket"}, -- Crack Jacks
	[355] = {"355", "Mom's Pearls", "↑ {{Range}} +0.38 Range up#↑ {{Luck}} +1 Luck up#{{SoulHeart}} +1 Soul Heart"}, -- Mom's Pearls
	[360] = {"360", "Incubus", "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% damage#{{Player13}} Deals 100% damage while playing as Lilith"}, -- Incubus
	[365] = {"365", "Lost Fly", "Moves along walls/obstacles in the room#Deals 56 contact damage per second#Nearby enemies target the Fly"},
	[366] = {"366", "Scatter Bombs", "{{Bomb}} +5 bombs#Isaac's bombs scatter into 4-5 tiny bombs"}, -- Scatter Bombs
	[367] = {"367", "Sticky Bombs", "{{Bomb}} +5 bombs#Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"}, -- Sticky Bombs
	[368] =	{"368", "Epiphora", "↑ {{Tears}} Shooting in one direction gradually increases fire rate by up to 200%"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ {{Range}} +3 Range up#Spectral tears#Tears can travel through one side of the screen and come out the other side"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Tears up#↑ {{Range}} +1.5 Range up#{{Heart}} Spawns 3 random hearts"}, -- Mr. Dolly
	[374] = {"374", "Holy Light", "10% chance to shoot Holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage#{{Luck}} 50% chance at 9 Luck"}, -- Holy Light
	[375] = {"375", "Host Hat", "Grants immunity to explosions#Grants immunity to falling projectiles#20% chance to reflect enemy shots"}, -- Host Hat
	[376] = {"376", "Restock", "Buying an item from a shop restocks it instantly#Restocked items increase in price each time"}, -- Restock
	[380] = {"380", "Pay To Play", "{{Coin}} +5 coins#Locked blocks, doors and chests must be opened with coins instead of keys"},
	[382] = {"382", "Friendly Ball", "Can be thrown at enemies to capture them#Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-25 contact damage per hit depending on speed"}, -- Lil Gurdy
	[389] = {"389", "Rune Bag", "{{Rune}} Drops a random rune or Soul Stone every 7-8 rooms"}, -- Rune Bag
	[391] = {"391", "Betrayal", "Enemies can hit each other with their projectiles, and start infighting"}, -- Betrayal
	[393] = {"393", "Serpent's Kiss", "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"}, -- Serpent's Kiss
	[394] = {"394", "Marked", "Isaac automatically fires tears at a movable red target on the ground#↑ {{Tears}} +0.7 Tears up#↑ {{Range}} +3 Range up#Familiars shoot towards the target"}, -- Marked
	[395] = {"395", "Tech X", "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"}, -- Tech X
	[397] = {"397", "Tractor Beam", "Isaac's tears always travel along a beam of light in front of him#↑ {{Tears}} +1 Fire Rate up#↑ {{Range}} +1.5 Range up#↑ {{Shotspeed}} +0.16 Shot Speed up"},
	[399] = {"399", "Maw of the Void", "{{Chargeable}} Firing tears for 3 seconds and releasing the fire button creates a black brimstone ring around Isaac"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Blocks projectiles#When hit, 10% chance to fart and charm, poison or knockback enemies#The farts deal 5-6 damage"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorRed}}Red{{CR}} = {{Damage}} +4 Damage up#{{ColorBlue}}Blue{{CR}} = {{Tears}} +2 Fire Rate up#{{ColorYellow}}Yellow{{CR}} = {{Speed}} +0.5 Speed up#{{ColorOrange}}Orange{{CR}} = {{Range}} +3 Range up"},
	[408] = {"408", "Athame", "Chance for a black brimstone ring to spawn around killed enemies"}, -- Athame
	[415] = {"415", "Crown Of Light", "{{SoulHeart}} +2 Soul Hearts#{{Blank}} If Isaac has no damaged Red Heart containers:#↑ {{Damage}} +100% Damage up#↓ {{Shotspeed}} -0.3 Shot Speed down#Deactivates for the current room when damaged at all"}, -- Crown Of Light
	[416] = {"416", "Deep Pockets", "If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage every second#↑ {{Damage}} +50% Damage while standing in the aura"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Kidney Bean", "{{Charm}} Charms all enemies in close range"}, -- Kidney Bean
	[422] = {"422", "Glowing Hour Glass", "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#Acts as {{Collectible66}}The Hourglass when out of rewinds, which slows enemies down for 8 seconds"}, -- Glowing Hour Glass
	[426] = {"426", "Obsessed Fan", "Mimics Isaac's movement on a 0.66 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Mimics Isaac's movement on a 0.66 second delay#Fires tears at nearby enemies that deal Isaac's damage"}, -- Papa Fly
	[431] = {"431", "Multidimensional Baby", "Mimics Isaac's movement on a 0.66 second delay#Tears that pass through it split up and gain a speed boost"},
	[432] = {"432", "Glitter Bombs", "{{Bomb}} +5 bombs#Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"}, -- Glitter Bombs
	[433] = {"433", "My Shadow", "A small shadow follows Isaac#When an enemy touches the shadow, it spawns a friendly black charger#The charger deals 5 damage per second"}, -- My Shadow
	[437] = {"437", "D7", "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"}, -- D7
	[440] = {"440", "Kidney Stone", "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"}, -- Kidney Stone
	[442] = {"442", "Dark Prince's Crown", "{{Blank}} While at 1 full Red Heart:#↑ {{Tears}} +2 Fire Rate up#↑ {{Range}} +1.5 Range up#↑ {{Shotspeed}} +0.2 Shot Speed up#Does not work on characters without Red Hearts"}, -- Dark Prince's Crown
	[444] = {"444", "Lead Pencil", "Isaac fires a cluster of tears every 15 tears"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "Upon taking damage:#{{Heart}} 25% chance to drop a Red Heart#Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does a half Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"}, -- Shard of Glass
	[450] = {"450", "Eye of Greed", "Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#Enemies hit with the coin turn into gold#Killing a gold enemy drops 1-3 coins#Firing a coin tear costs 1 coin"}, -- Eye of Greed
	[451] = {"451", "Tarot Cloth", "{{Card}} Drops a card#{{Card}} Tarot cards effects are doubled or enhanced"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "↑ {{Range}} +0.38 Range up#Tears shatter into 1-3 bone shards upon hitting anything"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ {{Range}} +0.38 Range up#Spawns a lucky penny"}, -- Dad's Lost Coin
	[456] = {"456", "Midnight Snack", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Midnight Snack
	[459] = {"459", "Sinus Infection", "20% chance to shoot a sticky booger#Boogers deal Isaac's damage once a second and stick for 10 seconds#{{Luck}} Not affected by Luck"}, -- Sinus Infection
	[462] = {"462", "Eye of Belial", "↑ {{Range}} +1.5 Range up#Piercing tears#Hitting an enemy makes the tear homing and doubles its damage"}, -- Eye of Belial
	[464] = {"464", "Glyph of Balance", "{{SoulHeart}} +2 Soul Hearts#Champion enemy drops and room clear rewards become whatever pickup Isaac has the least of"}, -- Glyph of Balance
	[468] = {"468", "Shade", "Follows Isaac's movement on a 1 second delay#Deals 75 contact damage per second#After it deals 666 damage, it is absorbed by Isaac, increasing his contact damage"}, -- Shade
	[472] = {"472", "King Baby", "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"}, -- King Baby
	[474] = {"474", "Broken Glass Cannon", "Using the item turns it back into Glass Cannon"}, -- Broken Glass Cannon
	[476] =	{"476", "D1", "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"}, -- D1
	[477] = {"477", "Void", "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items: Grant two random stats up"},
	[487] = {"487", "Potato Peeler", "Removes one Red Heart Container and grants: #↑ {{Damage}} +0.2 Damage up#{{Collectible73}} A Cube of Meat#↑ {{Range}} +1.5 Range and leaves a trail of blood creep for the current room"},
	[489] = {"489", "D Infinity", "Can be made to act as any die item (except {{Collectible723}} Spindown Dice) with {{ButtonRT}}#Charge time varies based on the last die used and updates with every use"}, -- D Infinity
	[491] = {"491", "Acid Baby", "{{Pill}} Drops a random pill every 7 rooms#Using a pill poisons all enemies in the room"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "↑ {{Damage}} Damage up for every empty Red Heart container#The more empty heart containers, the bigger the bonus for each new one"}, -- Adrenaline
	[494] = {"494", "Jacob's Ladder", "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can spread to other enemies"}, -- Jacob's Ladder
	[495] = {"495", "Ghost Pepper", "Chance to shoot a blue flame that blocks enemy shots and deals contact damage#The flame shrinks and disappears after 2 seconds#{{Luck}} 50% chance at 10 Luck#"}, -- Ghost Pepper
	[496] = {"496", "Euthanasia", "3.33% chance to shoot a needle#{{Luck}} 25% chance at 15 Luck#Needles kill normal enemies instantly, bursting them into 10 tears#Needles deal 3x damage against bosses"}, -- Euthanasia
	[497] = {"497", "Camo Undies", "Entering a room camouflages Isaac and confuses all enemies until a tear is fired#↑ {{Speed}} +0.5 Speed up while cloaked#Uncloaking deals damage around Isaac and grants a very brief Fire Rate and Damage up"},
	[501] = {"501", "Greed's Gullet", "+1 Heart Container for every 25 coins Isaac has#{{Player14}} +1 Coin Container for every 25 coins Keeper has#{{Collectible416}} +1 Heart Container for every 100 coins past 99"}, -- Greed's Gullet
	[503] = {"503", "Little Horn", "5% chance to shoot a tear that summons a Big Horn hand#{{Luck}} 20% chance at 15 Luck#The hand instantly kills enemies and deals damage to bosses#Running into enemies deals 3.5 contact damage"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Spawns a fly that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[506] = {"506", "Backstabber", "Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"},
	[507] = {"507", "Sharp Straw", "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can drop half hearts"},
	[508] = {"508", "Mom's Razor", "Orbital that causes bleeding, which makes enemies bleed and take damage when they move#Deals 20% Isaac's damage per tick on contact"},
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 0.33 seconds to nearby enemies#Deals 3.5 damage per tear#Deals 30 contact damage per second"}, -- Bloodshot Eye
	[514] = {"514", "Broken Modem", "Causes some enemies and projectiles to briefly freeze at random intervals#Frozen projectiles are deleted#25% chance to double room clear drops"},
	[517] = {"517", "Fast Bombs", "{{Bomb}} +7 Bombs#Removes the delay between bomb placements#Bombs don't deal knockback to each other"}, -- Fast Bombs
	[523] = {"523", "Moving Box", "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Isaac's tears are connected with beams of electricity#Electricity deals 33% of Isaac's damage"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "Isaac's tears fly in an arc and burst into smaller tears on impact#↑ {{Damage}} +1 Damage up#↑ {{Damage}} +50% Damage Multiplier#↓ {{Tears}} -67% Fire Rate down#↓ {{Range}} -20% Range down"}, -- Haemolacria
	[543] = {"543", "Hallowed Ground", "Taking damage spawns a white poop#While inside the poop's aura:#↑ {{Damage}} +20% Damage up#↑ {{Tears}} +150% Fire Rate up#Homing tears#Chance to block damage"}, -- Hallowed Ground
	[549] =	{"549", "Brittle Bones", "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#Fires 8 bone tears in all directions#↑ {{Tears}} +0.4 permanent Fire Rate up"}, -- Brittle Bones
	[552] = {"552", "Mom's Shovel", "Spawns a trapdoor to the next floor#Spawns a {{LadderRoom}}crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"}, --Mom's Shovel
	[553] = {"553", "Mucormycosis", "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by Luck#Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Fears enemies in a small radius around Isaac"}, -- 2Spooky
	[555] = {"555", "Golden Razor", "{{Damage}} Grants +1.2 Damage up for the current room#{{Warning}} Costs 5 coins to use#{{Coin}} +5 coins on pickup"}, -- Golden Razor
	[556] = {"556", "Sulfur", "{{Collectible118}} Grants Brimstone for the current room"}, -- Sulfur
	[557] = {"557", "Fortune Cookie", "Grants one of the following rewards: #A fortune#{{SoulHeart}} A Soul Heart#{{Card}} A Tarot card#{{Rune}} A Rune or Soul Stone#{{Trinket}} A Trinket"}, -- Fortune Cookie
	[558] = {"558", "Eye Sore", "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by Luck"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals 75% of Isaac's damage"}, -- 120 Volt
	[560] = {"560", "It Hurts", "{{Blank}} Taking damage:#Releases a ring of 10 tears around Isaac#↑ {{Tears}} +1.2 Fire Rate up on the first hit#↑ {{Tears}} +0.4 for each additional hit#Tear bonuses last for one room"}, -- It Hurts
	[561] = {"561", "Almond Milk", "↑ {{Tears}} 4x Fire Rate#↓ {{Damage}} -70% Damage down#Tears gain random worm trinket effects and some item effects"}, -- Almond Milk
	[562] = {"562", "Rock Bottom", "↑ Prevents stats from being lowered for the rest of the run"}, -- Rock Bottom
	[563] = {"563", "Nancy Bombs", "{{Bomb}} +5 bombs#Isaac's bombs explode with random effects"}, -- Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ {{Tears}} +0.5 Tears up#↑ {{Shotspeed}} +0.2 Shot Speed up"}, -- A Bar of Soap
	[565] = {"565", "Blood Puppy", "Chases enemies#After killing 15 enemies, it deals more damage, drops half a heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, drops full hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"}, -- Blood Puppy
	[566] = {"566", "Dream Catcher", "{{HalfSoulHeart}} Entering a new floor grants +1 half Soul Heart#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"}, -- Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire Rate#Caps at +2 Fire Rate {{ColorSilver}}(5 rooms)"}, -- Paschal Candle
	[568] = {"568", "Divine Intervention", "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"}, -- Divine Intervention
	[569] = {"569", "Blood Oath", "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, and grants damage and speed bonuses for each heart lost#Each half-heart lost counts as an individual hit for on-hit effects"}, -- Blood Oath
	[570] = {"570", "Playdough Cookie", "Each of Isaac's tears have a different color and status effect"}, -- Playdough Cookie
	[571] = {"571", "Orphan Socks", "Grants immunity to creep and floor spikes#↑ {{Speed}} +0.3 Speed up#↑ {{SoulHeart}} +2 Soul Hearts"}, -- Orphan Socks
	[572] = {"572", "Eye of the Occult", "Isaac's tears can be controlled in mid-air#↑ {{Damage}} +1 Damage up#↑ {{Range}} +2 Range up#↓ {{Shotspeed}} -0.16 Shot Speed down"}, -- Eye of the Occult
	[573] = {"573", "Immaculate Heart", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#↑ {{Damage}} +20% Damage up#20% chance to shoot an additional orbiting spectral tear"}, -- Immaculate Heart
	[574] = {"574", "Monstrance", "Isaac is surrounded by two damaging auras#The inner aura deals more damage"}, -- Monstrance
	[575] = {"575", "The Intruder", "Buries itself in Isaac's head and shoots 4 extra slowing tears#Taking damage can make the spider exit the head and chase enemies"}, -- The Intruder
	[576] = {"576", "Dirty Mind", "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"}, -- Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} SINGLE USE {{Warning}}#Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double Shop, Chest, or Devil deal items#{{Warning}} After taking any damage, the sword has a chance to instantly kill Isaac every frame"}, -- Damocles
	[578] = {"578", "Free Lemonade", "Creates a large pool of yellow creep"}, -- Free Lemonade
	[579] = {"579", "Spirit Sword", "Instead of shooting tears, Isaac swings a sword#The sword deals 3x damage#{{Chargeable}} Charging does a spin attack + projectile shot#Fire projectiles with normal swings at full health"}, -- Spirit Sword
	[580] = {"580", "Red Key", "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"}, -- Red Key
	[581] = {"581", "Psy Fly", "Chases and deflects enemy projectiles#Deals 15 contact damage per second"}, -- Psy Fly
	[582] = {"582", "Wavy Cap", "↑ {{Tears}} +0.75 Fire Rate up#↓ {{Speed}} -0.03 Speed down#Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"}, -- Wavy Cap
	[583] = {"583", "Rocket in a Jar", "{{Bomb}} +5 bombs#Placing a bomb while shooting fires a rocket in that direction"}, -- Rocket in a Jar
	[584] = {"584", "Book of Virtues", "Spawns an orbital wisp familiar that fires spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{DevilRoom}} Turns the first Devil Room into an {{AngelRoom}} Angel Room#{{AngelChance}} 12.5% higher Angel Room chance#Allows Angel Rooms to spawn after taking a Devil deal"}, -- Book of Virtues
	[585] = {"585", "Alabaster Box", "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"}, -- Alabaster Box
	[586] = {"586", "The Stairway", "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and consumables"}, -- The Stairway
	[587] = {"587", "Menorah (Unused but scripted)", "<Item does not exist>"}, -- Menorah (Unused but scripted)
	[588] = {"588", "Sol", "{{BossRoom}} Reveals the location of the Boss Room#Defeating the floor Boss:#↑ {{Damage}} Grants +3 Damage#↑ {{Luck}} Grants +1 Luck#{{Card20}} Activates The Sun#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any Curses#{{Timer}} Effects last for the remainder of the floor"}, -- Sol
	[589] = {"589", "Luna", "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#Secret Rooms contain a beam of light that grants:#{{HalfSoulHeart}} A Half Soul Heart#↑ {{Tears}} +0.5 Fire Rate up for the current floor#↑ {{Tears}} Additional +0.5 Fire Rate up from the first beam per floor"}, -- Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} +0.4 Speed up#Most doors stay permanently open"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart#{{Charm}} Charms nearby enemies"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} +1 Damage up#Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"}, -- Terra
	[593] = {"593", "Mars", "Double-tapping a movement key makes Isaac dash#During a dash, Isaac is invincible and deals 4x damage#{{Timer}} 3 seconds cooldown"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{Heart}} +2 Health up#{{HalfHeart}} Heals half a Red Heart#↓ {{Speed}} -0.3 Speed down#↑ {{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#Grants poison immunity"}, -- Jupiter
	[595] = {"595", "Saturnus", "Entering a room causes 7 tears to orbit Isaac#Enemy projectiles have a chance to orbit Isaac"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac shoots ice tears that freeze enemies killed#Touching a frozen enemy makes it slide away and explode into 6 ice shards"}, -- Uranus
	[597] = {"597", "Neptunus", "Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac fires"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0.7 Tears up#Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"}, -- Pluto
	[599] = {"599", "Voodoo Head", "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#Spawns a coin in every Curse Room"}, -- Voodoo Head
	[600] = {"600", "Eye Drops", "↑ {{Tears}} +30% Fire Rate up for the left eye only"}, -- Eye Drops
	[601] = {"601", "Act of Contrition", "↑ {{Tears}} +0.7 Tears up#{{EternalHeart}} +1 Eternal Heart#{{AngelChance}} Allows Angel Rooms to spawn even after taking a Devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"}, -- Act of Contrition
	[602] = {"602", "Member Card", "{{Shop}} Opens a trapdoor in every shop#The trapdoor leads to an underground shop that sells trinkets, runes, special hearts and items from any pool"}, -- Member Card
	[603] = {"603", "Battery Pack", "{{Battery}} Spawns 2-4 batteries#Fully recharges the active item"}, -- Battery Pack
	[604] = {"604", "Mom's Bracelet", "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"}, -- Mom's Bracelet
	[605] = {"605", "The Scooper", "Summons a Peeper familiar for the current room, which leaves a trail of red creep#↑ {{Damage}} +34% Damage Multiplier to Isaac's right eye"}, -- The Scooper
	[606] = {"606", "Ocular Rift", "5% chance to shoot tears that create rifts where they land#{{Luck}} Vaguely affected by Luck#Rifts pull in nearby enemies, pickups, and projectiles"}, -- Ocular Rift
	[607] = {"607", "Boiled Baby", "Fires chaotic bursts of tears in all directions#Deals 3.5 or 5.3 damage per tear"}, -- Boiled Baby
	[608] = {"608", "Freezer Baby", "Shoots petrifying tears#Freezes enemies upon killing them"}, -- Freezer Baby
	[609] = {"609", "Eternal D6", "Rerolls all pedestal items in the room#Has a 30% chance to delete items instead of rerolling them"}, -- Eternal D6
	[610] = {"610", "Bird Cage", "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards"}, -- Bird Cage
	[611] = {"611", "Larynx", "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"}, -- Larynx
	[612] = {"612", "Lost Soul", "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"}, -- Lost Soul
	[613] = {"613", "", "<Item does not exist>"}, -- Salt Shaker
	[614] = {"614", "Blood Bombs", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 5 hearts#{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep#"}, -- Blood Bombs
	[615] = {"615", "Lil Dumpy", "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"}, -- Lil Dumpy
	[616] = {"616", "Bird's Eye", "8% chance to shoot red fires#{{Luck}} 50% chance at 10 Luck#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"}, -- Bird's Eye
	[617] = {"617", "Lodestone", "{{Magnetize}} 17% chance to shoot magnetizing tears#{{Luck}} 100% chance at 5 Luck#Magnetized enemies attract nearby pickups, projectiles and enemies"}, -- Lodestone
	[618] = {"618", "Rotten Tomato", "{{Bait}} 17% chance to shoot tears that mark enemies#{{Luck}} 100% chance at 5 Luck#Marked enemies are targeted by other enemies"}, -- Rotten Tomato
	[619] = {"619", "Birthright", "Has a different effect for each character"}, -- Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "↑ {{Damage}} +21.6 Damage up#{{Heart}} Full health#The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"}, --
	[622] = {"622", "Genesis", "{{Warning}} SINGLE USE {{Warning}}#Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"}, -- Genesis
	[623] = {"623", "Sharp Key", "{{Key}} +5 keys#Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"}, -- Sharp Key
	[624] = {"624", "Booster Pack", "{{Card}} Spawns 5 random cards"}, -- Booster Pack
	[625] = {"625", "Mega Mush", "Gigantifies Isaac and grants:#↑ {{Damage}} +300% Damage Multiplier#↑ {{Range}} +7 Range up#↓ {{Tears}} -60% Fire Rate down#Ability to crush enemies and obstacles#Complete invincibility#{{Timer}} The effect lasts for 30 seconds and persists between rooms and floors"}, -- Mega Mush
	[626] = {"626", "Knife Piece 1", "Turns into a throwable knife when combined with {{Collectible627}} Knife Piece 2#The knife can open a door made of flesh"}, -- Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Turns into a throwable knife when combined with {{Collectible626}} Knife Piece 1#The knife can open a door made of flesh"}, -- Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} SINGLE USE {{Warning}}#Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"}, -- Death Certificate
	[629] = {"629", "Bot Fly", "Fires shielded tears to destroy enemy projectiles"}, -- Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Splits all enemies in the room into 2 smaller versions of themselves with less health"}, -- Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ {{Luck}} +2 Luck up#Grants immunity to burn, confusion, fear, and poison effects"}, -- Evil Charm
	[633] = {"633", "Dogma", "Grants flight and one-time {{HolyMantleSmall}} Holy Mantle shield#↑ {{Damage}} +2 Damage up#↑ {{Speed}} +0.1 Speed up#Heals Isaac with Red and Soul Hearts if he has less than 6 hearts"}, -- Dogma
	[634] = {"634", "Purgatory", "Red cracks spawn on the ground of hostile rooms#Walking over the cracks summons homing exploding ghosts"}, -- Purgatory
	[635] = {"635", "Stitches", "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"}, -- Stitches
	[636] = {"636", "R Key", "{{Warning}} SINGLE USE {{Warning}}#Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"}, -- R Key
	[637] = {"637", "Knockout Drops", "10% chance to shoot a fist that inflicts confusion and extreme knockback#{{Luck}} 100% chance at 9 Luck"}, -- Knockout Drops
	[638] = {"638", "Eraser", "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"}, -- Eraser
	[639] = {"639", "Yuck Heart", "{{RottenHeart}} +1 Rotten Heart"}, -- Yuck Heart
	[640] = {"640", "Urn of Souls", "Spews a stream of flames#Killing an enemy adds a charge to the urn"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"}, -- Akeldama
	[642] = {"642", "Magic Skin", "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 Heart Container or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor#{{Player10}} Single use for The Lost"}, -- Magic Skin
	[643] = {"643", "Revelation", "{{Chargeable}} Chargeable Holy Laser#Grants flight and {{SoulHeart}} 2 Soul Hearts#Does not replace Isaac's tears"}, -- Revelation
	[644] = {"644", "Consolation Prize", "↑ Increases Isaac's lowest stat#Drops either {{Coin}} 3 coins, {{Bomb}} 1 bomb, or {{Key}} 1 key depending on what Isaac has the least of"}, -- Consolation Prize
	[645] = {"645", "Tinytoma", "Blocks shots#Deals contact damage#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"}, -- Tinytoma
	[646] = {"646", "Brimstone Bombs", "{{Bomb}} +5 bombs#{{Collectible118}} Isaac's bombs release 4 Brimstone lasers in the cardinal directions#The lasers don't hurt Isaac"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"}, -- 4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Fruity Plum", "Propels herself diagonally around the room, firing tears in her path"}, -- Fruity Plum
	[650] = {"650", "Plum Flute", "Summons a friendly Baby Plum in the room for 10 seconds"}, -- Plum Flute
	[651] = {"651", "Star of Bethlehem", "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#{{Blank}} Standing in its aura grants:#↑ {{Damage}} +1 Damage up#↑ {{Damage}} +20% Damage Multiplier#↑ {{Tears}} +150% Tears Multiplier#Homing tears"}, -- Star of Bethlehem
	[652] = {"652", "Cube Baby", "Can be kicked around by walking into it#{{Freezing}} Afflicts slowness, deals contact damage, and freezes monsters it kills"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"}, -- Vade Retro
	[654] = {"654", "False PHD", "{{BlackHeart}} +1 Black Heart#{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants a Damage up#{{BlackHeart}} Eating other bad pills drops a Black Heart"}, -- False PHD
	[655] = {"655", "Spin to Win", "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#Using the item grants {{Speed}} ↑ +0.5 speed and greatly increases the rotation speed of orbitals"}, -- Spin to Win
	[656] = {"656", "Damocles", "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double Shop, Chest, or Devil deal items#{{Warning}} After taking any damage, the sword has a chance to instantly kill Isaac every frame"}, -- Damocles (hidden collectible version)
	[657] = {"657", "Vasculitis", "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"}, -- Vasculitis
	[658] = {"658", "Giant Cell", "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"}, -- Giant Cell
	[659] = {"659", "Tropicamide", "↑ {{Range}} +1.5 Range up#↑ {{Tearsize}} Tear Size up"}, -- Tropicamide
	[660] = {"660", "Card Reading", "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"}, -- Card Reading
	[661] = {"661", "Quints", "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"}, -- Quints
	[662] = {"662", "Pacifist (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Tooth and Nail", "Grants 1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"}, -- Tooth and Nail
	[664] = {"664", "Binge Eater", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#Food items heal 3 Red Hearts#Item pedestals cycle between their item and a food item#Picking up a food item grants: #↑ {{Damage}} temporary +3.6 damage up#↑ 2 permanent stat ups#↓ {{Speed}} -0.03 speed down"}, -- Binge Eater
	[665] = {"665", "Guppy's Eye", "Reveals the contents of {{Chest}} Chests, {{GrabBag}} Sacks, Shopkeepers, and Fireplaces before they're opened or destroyed"}, -- Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Strawman", "{{Bomb}} +1 Bomb#{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"}, -- Strawman
	[668] = {"668", "Dad's Note", "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"}, -- Dad's Note
	[669] = {"669", "Sausage", "↑ {{Heart}} +1 Health up#{{Heart}} Full health#↑ {{Damage}} +0.5 Damage up#↑ {{Tears}} +0.5 Tears up#↑ {{Range}} +1.5 Range up#↑ {{Speed}} +0.2 Speed up#↑ {{Shotspeed}} +0.16 Shot Speed up#↑ {{Luck}} +1 Luck up#↑ {{AngelDevilChance}} +6.9% Devil or Angel Room chance#↑ {{PlanetariumChance}} +6.9% Planetarium chance"}, -- Sausage
	[670] = {"670", "Options?", "Allows Isaac to choose from two different room clear rewards"}, -- Options?
	[671] = {"671", "Candy Heart", "Picking up Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"}, -- Candy Heart
	[672] = {"672", "A Pound of Flesh", "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in shops are surrounded by spikes"}, -- A Pound of Flesh
	[673] = {"673", "Redemption", "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{{SoulHeart}} +1 Soul Heart#↑ {{Damage}} +1 Damage up"}, -- Redemption
	[674] = {"674", "Spirit Shackles", "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"}, -- Spirit Shackles
	[675] = {"675", "Cracked Orb", "Taking damage:#Unlocks all locked doors in the current room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"}, -- Cracked Orb
	[676] = {"676", "Empty Heart", "{{EmptyHeart}} Grants a Heart Container when at 1 Red Heart or less at the start of a new floor#No effect for characters that can't have Red Hearts"}, -- Empty Heart
	[677] = {"677", "Astral Projection", "{{Blank}} Taking damage in an uncleared room:#Stops time for 2 seconds#Grants flight#Grants spectral tears#Negates the next damage taken#Greatly increases fire rate and speed"}, -- Astral Projection
	[678] = {"678", "C Section", "{{Chargeable}} Replaces Isaac's tears with a charge attack that fires homing, spectral fetus tears"}, -- C Section
	[679] = {"679", "Lil Abaddon", "{{Collectible399}} Familiar that charges and shoots a Maw of the Void circle"}, -- Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "{{Chargeable}} Firing charges up a short-ranged backwards Brimstone laser"}, -- Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a Blue Fly#Consuming four pickups spawns a portal to an unexplored room"}, -- Lil Portal
	[682] = {"682", "Worm Friend", "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take damage, are slowed and cannot move"}, -- Worm Friend
	[683] = {"683", "Bone Spurs", "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"}, -- Bone Spurs
	[684] = {"684", "Hungry Soul", "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"}, -- Hungry Soul
	[685] = {"685", "Jar of Wisps", "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"}, -- Jar of Wisps
	[686] = {"686", "Soul Locket", "{{SoulHeart}} Picking up a Soul Heart grants random permanent stat ups#{{SoulHeart}} Spawns a Soul Heart"}, -- Soul Locket
	[687] = {"687", "Friend Finder", "Spawns a random friendly monster that mimics Isaac's movements and attacks"}, -- Friend Finder
	[688] = {"688", "Inner Child", "+1 extra life#Dying respawns Isaac in the same room with half a heart, massive size down, and +0.2 speed"}, -- Inner Child
	[689] = {"689", "Glitched Crown", "Item pedestals quickly cycle between 5 random items"}, -- Glitched Crown
	[690] = {"690", "Belly Jelly", "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"}, -- Belly Jelly
	[691] = {"691", "Sacred Orb", "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"}, -- Sacred Orb
	[692] = {"692", "Sanguine Bond", "Spawns a set of spikes in the {{DevilRoom}}Devil Room#Take damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage up#15%: {{Coin}} 6 pennies#10%: {{BlackHeart}} 2 Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"}, -- Sanguine Bond
	[693] = {"693", "The Swarm", "Grants 8 orbital flies#Clearing a room spawns a new fly#Flies turn into Blue Flies after blocking a shot"}, -- The Swarm
	[694] = {"694", "Heartbreak", "{{BrokenHeart}} Grants 3 broken hearts#↑ {{Damage}} +0.25 Damage for each broken heart#Every fatal hit grants 2 broken hearts#Isaac dies at 12 broken hearts"}, -- Heartbreak
	[695] = {"695", "Bloody Gust", "Taking damage grants {{Speed}} speed and {{Tears}} tears up for the current floor#Caps at +1.02 Speed and +3 Fire Rate"}, -- Bloody Gust
	[696] = {"696", "Salvation", "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo"}, -- Salvation
	[697] = {"697", "Vanishing Twin", "Entering a boss room spawns a clone of the boss#Defeating the clone drops an extra item#The clone is slower and has 75% health"}, -- Vanishing Twin
	[698] = {"698", "Twisted Pair", "Two familiars that shoot tears with the same stats and effects as Isaac#They deal 37.5% damage"}, -- Twisted Pair
	[699] = {"699", "Azazel's Rage", "Clearing 4 rooms fires a large {{Collectible118}} Brimstone laser upon entering the next room"}, -- Azazel's Rage
	[700] = {"700", "Echo Chamber", "Using a Card, Pill, or Rune, also uses a copy of the last 3 Cards/Pills/Runes used after picking up Echo Chamber"}, -- Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, trinkets or Mom, Dad and Angel items"}, -- Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "Taking damage spawns an orbital wisp#Wisps fire tears, do not block shots and disappear on the next floor#Caps at 6 wisps"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"}, -- Esau Jr.
	[704] = {"704", "Berserk!", "Charges with damage dealt#{{Blank}} Using the item grants:#↑ {{Speed}} +0.4 Speed up#↑ {{Damage}} +3 Damage up#Restricts attacks to a melee weapon#{{Timer}} Effect lasts for 10 seconds#{{Blank}} Each kill increases the duration by 1 second"}, -- Berserk!
	[705] = {"705", "Dark Arts", "↑ +1 Speed up#Turns Isaac into a shadow that can pass through enemies to paralyze them#After 1 second (or after shooting), damages all paralyzed enemies and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies have been hit"}, -- Dark Arts
	[706] = {"706", "Abyss", "Consumes all items in the room and spawns an attack fly familiar for each one#Some items spawn a special fly when consumed"}, -- Abyss
	[707] = {"707", "Supper", "↑ {{Heart}} +1 Health up#{{Heart}} Heals 1 Red Heart"}, -- Supper
	[708] = {"708", "Stapler", "↑ {{Damage}} +1 Damage up#All of Isaac's tears are fired from the right eye"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"}, -- Suplex!
	[710] = {"710", "Bag of Crafting", "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"}, -- Bag of Crafting
	[711] = {"711", "Flip", "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"}, -- Flip
	[712] = {"712", "Lemegeton", "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Removes half a heart and creates a Clot#Clots copy Isaac's tears#Each type of heart generates a Clot with different HP, damage and tear effect"}, -- Sumptorium
	[714] = {"714", "Recall", "Retrieves the Forgotten's body from any distance"}, -- Recall
	[715] = {"715", "Hold", "Using the item when empty places the leftmost poop inside#Using the item with a poop inside uses that poop"}, -- Hold
	[716] = {"716", "Keeper's Sack", "Spawns {{Coin}} 3 coins and {{Key}} 1 key#{{Shop}} Spending 3 coins grants either:#↑ {{Damage}} +0.5 Damage up#↑ {{Range}} +0.25 Range up#↑ {{Speed}} +0.03 Speed up"}, -- Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"}, -- Keeper's Kin
	[718] = {"718", "Keeper's Rope (Cut item)", "<Item does not exist>"}, -- Keepers Rope (Cut item)
	[719] = {"719", "Keeper's Box", "{{Shop}} Spawns a random shop item/pickup to be purchased"}, -- Keeper's Box
	[720] = {"720", "Everything Jar", "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Causes all future items to be glitched#Glitched items have completely random effects"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"}, -- Anima Sola
	[723] = {"723", "Spindown Dice", "Rerolls all items in the room by decreasing their internal ID by one"}, -- Spindown Dice
	[724] = {"724", "Hypercoagulation", "{{Heart}} Taking enemy damage drops a half or full Red Heart#The hearts launch out and despawn after 1.5 seconds"}, -- Hypercoagulation
	[725] = {"725", "IBS", "Dealing enough damage causes Isaac to flash red#{{Blank}} Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#Farts a poison cloud#Drops 5 live bombs"}, -- IBS
	[726] = {"726", "Hemoptysis", "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 150% damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"}, -- Hemoptysis
	[727] = {"727", "Ghost Bombs", "{{Bomb}} +5 bombs#Isaac's bombs spawn ghosts that deal contact damage and explode after 10 seconds"}, -- Ghost Bombs
	[728] = {"728", "Gello", "A demon familiar bursts out of Isaac#The demon mimics Isaac's tears, stats and effects"}, -- Gello
	[729] = {"729", "Decap Attack", "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"}, -- Decap Attack
	[730] = {"730", "Glass Eye", "↑ {{Damage}} +0.75 Damage up#↑ {{Luck}} +1 Luck up"}, -- Glass Eye
	[731] = {"731", "Stye", "↑ {{Damage}} +28% Damage up#↑ {{Range}} +7 Range up#↓ {{Shotspeed}} -0.3 Shot Speed down#Only applies to the right eye"}, -- Stye
	[732] = {"732", "Mom's Ring", "↑ {{Damage}} +1 Damage up#{{Rune}} Spawns a random rune or soul stone"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)


---------- Modifiers ----------

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "All items cycle between two options"},
	{"Magdalene", "", "↑ {{Heart}} +1 Health up#The max amount of Heart Containers is raised to 18"},
	{"Cain", "", "↑ {{Luck}} +1 Luck up#{{Arcade}} All future floors will contain an upgraded Arcade Room (except for Dark Room and Chest)#{{Collectible46}} Greatly increases Lucky Foot's chances of winning effect"},
	{"Judas", "", "{{Collectible34}} The Book of Belial becomes a passive item similar to {{Collectible584}} Book of Virtues#{{Collectible34}} Grants The Book of Belial if Judas is not currently holding it#↑ {{Damage}} The damage boost it grants scales with the amount of charges the active item above it has#Grants special effects for certain active items"},
	{"???", "", "Soul Hearts gained from health upgrades are doubled"},
	{"Eve", "", "Whore of Babylon is active regardless of health#Dead Bird is always active"},
	{"Samson", "", "Bloody Lust can grant 4 additional damage boosts for a new maximum total of +14"},
	{"Azazel", "", "Azazel's Brimstone beam becomes much wider#Does not increase damage"},
	{"Lazarus", "", "Resurrecting as Lazarus Risen grants ↑ {{Damage}} +7.2 Damage up#Damage up wears off over one minute#Killing enemies while the effect is active extends it"},
	{"Eden", "", "Spawns 3 random items from random item pools#Only one can be taken"},
	{"The Lost", "", "Prevents items useless to The Lost from spawning#Examples: items that only give health, flight, and/or spectral tears or activate upon taking damage"},
	{"Lazarus Risen", "", "↑ {{Damage}} +7.2 Damage up#Damage up wears off over one minute#Killing enemies while the effect is active extends it#The effect triggers each time Lazarus revives as Lazarus Risen"},
	{"Black Judas", "", "{{Collectible34}} The Book of Belial becomes a passive item similar to {{Collectible584}} Book of Virtues#{{Collectible34}} Grants The Book of Belial if Judas is not currently holding it#↑ {{Damage}} The damage boost it grants scales with the amount of charges the active item above it has#Grants special effects for certain active items"},
	{"Lilith", "", "Familiars are positioned in front of Lilith's face"},
	{"Keeper", "", "↑ +1 Health up#The max amount of Heart Containers is raised to 4"},
	{"Apollyon", "", "{{Collectible477}} Using Void has a chance to spawn an item that was previously voided#Does not remove the stat bonuses#The more items voided, the higher the chance for an item to spawn upon use"},
	{"The Forgotten", "", "Removes the chain binding the Soul to the Body"},
	{"The Forgotten Soul", "", "Removes the chain binding the Soul to the Body"},
	{"Bethany", "", "Activating an item using soul charges is sometimes free"},
	{"Jacob", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Esau", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Tainted Isaac", "", "Adds 4 passive item slots#Does not consume a slot itself"},
	{"Tainted Magdalene", "", "{{Heart}} Adds 1 Red Heart that doesn't drain"},
	{"Tainted Cain", "", "Doubles the amount of pickups dropped from collecting an item"},
	{"Tainted Judas", "", "{{Collectible705}} Increases the range in which Dark Arts hits enemies and tears"},
	{"Tainted ???", "", "{{PoopPickup}} Increases the maximum number of poops that can be carried to 29"},
	{"Tainted Eve", "", "Red Heart clots spawn hearts on death that disappear after 2 seconds"},
	{"Tainted Samson", "", "Killing an enemy adds 3 seconds to the Berserk timer instead of 1"},
	{"Tainted Azazel", "", "{{Collectible726}} Doubles the size of Tainted Azazel's Hemoptysis sneeze attack"},
	{"Tainted Lazarus", "", "The non-active form of T. Lazarus appears as a ghostly second character#He is invulnerable and deals 25% damage#Both forms receive the Birthright item"},
	{"Tainted Eden", "", "Any items obtained before Birthright can no longer be rerolled#Active items can be rerolled again if they are dropped and picked back up"},
	{"Tainted Lost", "", "Grants an extra life that revives Tainted Lost in the same room and deals 200 damage to nearby enemies"},
	{"Tainted Lilith", "", "{{Collectible728}} Familiars that normally follow Tainted Lilith follow her Gello instead#The melee attack gains +3 damage per familiar"},
	{"Tainted Keeper", "", "Strongly attracts the coins dropped by defeating enemies#No effect on other coins"},
	{"Tainted Apollyon", "", "Locusts continuously damage enemies without returning while the fire button is held"},
	{"Tainted Forgotten", "", "{{Collectible714}} Tainted Soul gains the Recall ability to retrieve Tainted Forgotten from a distance"},
	{"Tainted Bethany", "", "Spawns four random item wisps of Quality {{Quality3}} and {{Quality4}} with significantly higher HP than normal"},
	{"Tainted Jacob", "", "Dark Esau splits into two, creating a shadowy clone of itself#Both Esaus always charge at the same time#{{Collectible722}} Using Anima Sola chains both Esaus"},
	{"Dead Tainted Lazarus", "", "The non-active form of T. Lazarus appears as a ghostly second character#He is invulnerable and deals 25% damage#Both forms receive the Birthright item"},
	{"Tainted Jacob 2", "", "Dark Esau splits into two, creating a shadowy clone of itself#Both Esaus always charge at the same time#{{Collectible722}} Using Anima Sola chains both Esaus"},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Tainted Soul gains the Recall ability to retrieve Tainted Forgotten from a distance"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Tears up#↑ {{Range}} +1.5 Range up#↓ {{Speed}} -0.03 Speed down", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Tears up#↑ {{Shotspeed}} +0.2 Shot Speed up#↓ {{Speed}} -0.03 Speed down", -- Dinner
	[24] = "↑ {{Damage}} +1 Damage up#↑ {{Shotspeed}} +0.2 Shot Speed up#↓ {{Speed}} -0.03 Speed down", -- Dessert
	[25] = "↑ {{Shotspeed}} +0.2 Shot Speed up#↑ {{Range}} +1.5 Range up#↓ {{Speed}} -0.03 Speed down", -- Breakfast
	[26] = "↑ {{Damage}} +1 Damage up#↑ {{Range}} +1.5 Range up#↓ {{Speed}} -0.03 Speed down", -- Rotten Meat
	[456] = "↑ {{Damage}} +1 Damage up#↑ {{Luck}} +1 Luck up#↓ {{Speed}} -0.03 Speed down", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0.2 Shot Speed up#↑ {{Luck}} +1 Luck up#↓ {{Speed}} -0.03 Speed down", -- A Snack
	[707] = "↑ {{Tears}} +0.5 Tears up#↑ {{Luck}} +1 Luck up#↓ {{Speed}} -0.03 Speed down", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Also invokes the effect of {{Collectible35}}Necronomicon", -- Kamikaze!
	[126] = "Also invokes the effect of {{Collectible35}}Necronomicon", -- Razor Blade
	[127] = "Grants a damage up for the entirety of the next floor", -- Forget me Now
	[133] = "Grants a permanent damage up", -- Guppy's Paw
	[135] = "Grants a damage up with each use", -- IV Bag
	[147] = "The axe has increased durability and knockback, can be used faster, sets enemies on fire and drops more pickups when destroying poops and obstacles", -- Notched Axe
	[186] = "Also invokes the effect of {{Collectible126}}Razor Blade", -- Blood Rights
	[282] = "Leaves a trail of fire that deals contact damage and sets enemies on fire", -- How to Jump
	[290] = "Using the item consumes a heart, grants a damage up and leaves red creep on the ground", -- The Jar
	[295] = "Has a chance to invoke the effect of {{Collectible555}}Golden Razor", -- Magic Fingers
	[297] = "Permanently grants a demonic familiar along with the regular rewards", -- Pandora's Box
	[323] = "Tears from the item have boosted damage", -- Isaac's Tears
	[352] = "Activates Book of Belial when broken - damage up persists until the cannon is fixed", -- Glass Cannon
	[475] = "Respawns Judas as Dark Judas if he has an extra life", -- Plan C
	[482] = "Replaces the most recently acquired item with {{Collectible51}}Pentagram", -- Clicker
	[487] = "Increases the damage up", -- Potato Peeler
	[536] = "For each familiar sacrificed, grants a +10.8 damage up that slowly fades away", -- Sacrificial Altar
	[555] = "Damages all enemies in the room#Enemies killed by this may drop 1-2 pennies", -- Golden Razor
	[577] = "Grants a permanent damage up", -- Damocles
	[582] = "Grants a permanent damage up based on the highest number of times the effects of the item have been stacked", -- Wavy Cap
	[585] = "Changes the payout to 2 Black Hearts and 1 Devil Deal item#Becomes 3 hearts and 2 items if a Devil Deal has been taken", -- Alabaster Box
	[622] = "Grants a free {{Collectible51}}Pentagram", -- Genesis
	[623] = "Also invokes the effect of {{Collectible126}}Razor Blade", -- Sharp Key
	[635] = "Creates a {{Collectible705}}Dark Arts line between Judas and Stitches", -- Stitches
	[640] = "Launches a {{Collectible118}}Brimstone beam instead", -- Urn of Souls
	[642] = "Grants a permanent damage up", -- Magic Skin
	[653] = "Ghosts home in on enemies", -- Vade Retro
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
	[130] = "Cannot fire tears#Wisps charge in the direction Isaac fires", -- A Pony
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
	[177] = "Spawns a wisp based on the reward won", -- Portable Slot
	[181] = "10% chance for Holy Light tears", -- White Pony
	[186] = "High HP wisp", -- Blood Rights
	[192] = "Homing tears", -- Telepathy for Dummies
	[263] = "15% chance for enemy to drop rune on kill#Spawns a rune when destroyed", -- Clear Rune
	[282] = "Up to 6 stationary wisps", -- How to Jump
	[283] = "Rerolls all wisps and spawns 1 random wisp#Doesn't reroll Book of Virtues", -- D100
	[284] = "Removes all wisps, and spawns a random wisp per 2 items owned#Doesn't reroll Book of Virtues", -- D4
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
	[347] = "20/20 tears#Doubles all other wisps", -- Diplopia
	[348] = "Spawns a pill when destroyed", -- Placebo
	[349] = "50% chance to spawn a coin when destroyed", -- Wooden Nickel
	[351] = "All Mega Bean wisps send a rock wave out on use#Petrify + poison fart when destroyed", -- Mega Bean
	[352] = "All Glass Cannon wisps are destroyed when one is destroyed#Persists between rooms", -- Glass Cannon
	[357] = "Duplicate all wisps for the current room", -- Box of Friends
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
	[521] = "Triple shot#Purchasing anything destroys all Coupon wisps", -- Coupon
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
	[631] = "Splits all wisps in half (half health and damage)#Wisps are destroyed if split a third time", -- Meat Cleaver
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
	[709] = "Single room wisp#Creates 3 wisps where Isaac lands", -- Suplex
	[710] = "Spawns a random wisp on craft", -- Bag of Crafting
	[711] = "No special effect", -- Flip
	[712] = "The item wisps fire homing tears", -- Lemegeton
	[713] = "No wisp", -- Sumptorium
	[719] = "20% chance for enemies to drop a coin on kill", -- Keeper's Box
	[720] = "Spawns a random wisp", -- Everything Jar
	[722] = "Orbits the chained enemy, shooting at them#Wisp dies when the enemy dies", -- Anima Sola
	[723] = "Rerolls all wisps into the same type of wisp", -- Spindown Dice
	[728] = "All wisps orbit Gello", -- Gello
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
	[149] = "Large, slow, green locust that deals x1.5 Isaac's damage and poisons enemies", -- Ipecac
	[153] = "Four normal locusts", -- Mutant Spider
	[257] = "Orange, burning locust that sets enemies on fire", -- Fire Mind
	[305] = "Green locust that poisons enemies", -- Scorpio
	[374] = "Cyan, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Light
	[494] = "Light blue locust with arcs of electricity that deal 0.1 damage per tick", -- Jacob's Ladder
	[559] = "Light blue locust with arcs of electricity that deal 0.1 damage per tick", -- 120 Volt
}


---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Swallowed Penny", "{{Coin}} Taking damage spawns 1 coin#{{Player14}} 0-1 as Keeper"}, -- Swallowed Penny
	[10] = {"10", "Wiggle Worm", "Isaac's tears move in waves#↑ {{Tears}} +0.4 Tears up#Grants spectral tears"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "Isaac's tears move in spirals with high speed#↑ {{Tears}} +0.4 Tears up#Grants spectral tears"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "{{Coin}} Destroying rocks has a 33% chance to drop a coin"},-- Lucky Rock
	[16] = {"16", "Mom's Toenail", "Mom's Foot stomps a random spot in the room every 20 seconds"}, -- Mom's Toenail
	[23] = {"23", "Missing Poster", "{{Player10}} Respawn as The Lost on death#Dying in a {{SacrificeRoom}} Sacrifice Room while holding this trinket unlocks The Lost#{{Player31}} Tainted Lost simply revives"}, -- Missing Poster
	[24] = {"24", "Butt Penny", "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "Isaac's tears move in angular patterns#↑ {{Tears}} +0.4 Tears up#↑ {{Range}} +1.5 Range up#Grants spectral tears"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "25% chance for a random mushroom effect per room"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "Having half a red heart or less grants {{Collectible100}} Little Steven#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ {{Tears}} +1 Fire Rate up"},
	[48] = {"48", "A Missing Page", "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal 2x damage"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "{{HalfHeart}} Picking up a coin has a 25% chance to drop half a heart"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "{{Bomb}} Picking up a coin has a 25% chance to drop a bomb"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "{{Key}} Picking up a coin has a 25% chance to drop a key"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ {{Range}} +3 Range up"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ {{Shotspeed}} -0.5 Shot Speed down"}, -- Lazy Worm
	[67] = {"67", "Cracked Dice", "Taking damage has a 50% chance to trigger one of these effects:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Faded Polaroid", "Randomly camouflages Isaac#Confuses enemies#Can be used to open the door to \"Home\""}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ {{Damage}} +0.5 Damage up for each \"Evil up\" item held"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ Stat increases are 20% more effective"}, -- Cracked Crown
	[96] = {"96", "Ouroboros Worm", "Isaac's tears move quickly in a spiral pattern#↑ +0.4 Tears up#↑ {{Range}} +1.5 Range up#Grants spectral tears#Chance for homing tears"}, -- Ouroboros Worm
	[98] = {"98", "Nose Goblin", "{{Poison}} 5% chance to shoot homing sticky tears#Boogers deal Isaac's damage once per second#Boogers stick for 10 seconds"},
	[101] = {"101", "Dim Bulb", "Holding a completely uncharged active item grants:#↑ {{Damage}} +1.5 Damage#↑ {{Speed}} +0.5 Speed#↑ {{Range}} +1.5 Range#↑ {{Tears}} +0.5 Tears#↑ {{Shotspeed}} +0.3 Shot Speed#↑ {{Luck}} +2 Luck"},
	[107] = {"107", "Crow Heart", "Taking damage depletes Red Hearts before Soul/Black Hearts#!!! The Red Heart damage can lower your Devil/Angel Room chance"}, -- Crow Heart
	[110] = {"110", "Silver Dollar", "{{Shop}} Shops appear in the Womb and Corpse"},
	[111] = {"111", "Bloody Crown", "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "Traveling to the next floor heals half of Isaac's empty Red/Bone Hearts#Heals half a heart minimum"}, -- Stem Cell
	[125] = {"125", "Extension Cord", "Connects all familiars with beams of electricity#The beams deal 6 damage#Beams also arc between co-op players (including Jacob & Esau)"}, -- Extension Cord
	[128] = {"128", "Finger Bone", "{{EmptyBoneHeart}} Taking damage has a 4% chance to grant a Bone Heart"}, -- Finger Bone
	[129] = {"129", "Jawbreaker", "10% chance to shoot teeth#Teeth deal 3.2x Isaac's damage#100% chance at 9 Luck"}, -- Jawbreaker
	[130] = {"130", "Chewed Pen", "{{Slow}} 10% chance to shoot slowing tears#{{Luck}} 100% chance at 18 Luck"}, -- Chewed Pen
	[131] = {"131", "Blessed Penny", "{{SoulHeart}} Picking up a coin has a 17% chance to drop Half Soul Hearts"}, -- Blessed Penny
	[132] = {"132", "Broken Syringe", "25% chance to get a random syringe effect each room"}, -- Broken Syringe
	[133] = {"133", "Short Fuse", "Isaac's bombs explode faster"}, -- Short Fuse
	[134] = {"134", "Gigante Bean", "Increases fart size"}, -- Gigante Bean
	[135] = {"135", "A Lighter", "{{Burning}} Entering a room has a 20% chance to burn random enemies"}, -- A Lighter
	[136] = {"136", "Broken Padlock", "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the door to \"Home\""}, -- Broken Padlock
	[137] = {"137", "Myosotis", "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"}, -- Myosotis
	[138] = {"138", "'M", "Using an active item rerolls it"}, -- 'M
	[139] = {"139", "Teardrop Charm", "{{Luck}} +3 Luck towards Luck-based tear effects"}, -- Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, -- Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Increases the fire rate of familiars"}, -- Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"}, -- Beth's Faith
	[143] = {"143", "Old Capacitor", "Prevents active item from charging#{{Battery}} Clearing a room has a 20% chance to spawn a battery#{{Luck}} 33% chance at 5 Luck"}, -- Old Capacitor
	[144] = {"144", "Brain Worm", "Tears turn 90 degrees to target enemies that they may have missed"}, -- Brain Worm
	[145] = {"145", "Perfection", "↑ {{Luck}} +10 Luck up#Taking damage destroys the trinket"}, -- Perfection
	[146] = {"146", "Devil's Crown", "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"}, -- Devil's Crown
	[147] = {"147", "Charged Penny", "Picking up a coin has a 17% chance to add 1 charge to the active item"}, -- Charged Penny
	[148] = {"148", "Friendship Necklace", "All familiars orbit around Isaac"}, -- Friendship Necklace
	[149] = {"149", "Panic Button", "Taking damage uses the active item if it is charged"}, -- Panic Button
	[150] = {"150", "Blue Key", "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"}, -- Blue Key
	[151] = {"151", "Flat File", "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}}Curse Room doors, mimics and any spike obstacle"}, -- Flat File
	[152] = {"152", "Telescope Lens", "{{PlanetariumChance}} +24% Planetarium chance if none have spawned#+9% if a Planetarium has already spawned#Planetariums can spawn in the Womb and Corpse"}, -- Telescope Lens
	[153] = {"153", "Mom's Lock", "25% chance for a random Mom item effect each room"}, -- Mom's Lock
	[154] = {"154", "Dice Bag", "50% chance per new room to grant a single use Dice consumable item#The Dice disappears when leaving#The Dice does not take up a pill/card slot"}, -- Dice Bag
	[155] = {"155", "Holy Crown", "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"}, -- Holy Crown
	[156] = {"156", "Mother's Kiss", "{{Heart}} +1 heart container while held#{{Player14}} +1 Coin container for Keeper"}, -- Mother's Kiss
	[157] = {"157", "Torn Card", "Every 15 shots, Isaac shoots an {{Collectible149}} Ipecac + {{Collectible5}} My Reflection tear with a very high range value"}, -- Torn Card
	[158] = {"158", "Torn Pocket", "Taking damage makes Isaac drops 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."}, -- Torn Pocket
	[159] = {"159", "Gilded Key", "{{Key}} +1 key on pickup#{{GoldenChest}} Replaces all chests (except Old/Mega) with Golden Chests#{{GoldenChest}} Golden Chests can contain extra cards, pills or trinkets"}, -- Gilded Key
	[160] = {"160", "Lucky Sack", "{{GrabBag}} Entering a new floor spawns 1 Sack"}, -- Lucky Sack
	[161] = {"161", "Wicked Crown", "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"}, -- Wicked Crown
	[162] = {"162", "Azazel's Stump", "{{Player7}} Clearing a room has a 50% chance to turn the player into Azazel#Effect lasts until clearing and leaving another room"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"}, -- Dingle Berry
	[164] = {"164", "Ring Cap", "{{Bomb}} Spawns 1 extra bomb for each bomb placed"}, -- Ring Cap
	[165] = {"165", "Nuh Uh!", "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"}, -- Nuh Uh!
	[166] = {"166", "Modeling Clay", "50% chance to grant the effect of a random Passive Item each room"}, -- Modeling Clay
	[167] = {"167", "Polished Bone", "Clearing a room has a 25% chance to spawn a friendly Bony"}, -- Polished Bone
	[168] = {"168", "Hollow Heart", "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"}, -- Hollow Heart
	[169] = {"169", "Kid's Drawing", "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"}, -- Kid's Drawing
	[170] = {"170", "Crystal Key", "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"}, -- Crystal Key
	[171] = {"171", "Keeper's Bargain", "{{DevilRoom}} 50% chance for Devil deals to cost coins instead of hearts"}, -- Keeper's Bargain
	[172] = {"172", "Cursed Penny", "{{Coin}} Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"}, -- Cursed Penny
	[173] = {"173", "Your Soul", "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"}, -- Your Soul
	[174] = {"174", "Number Magnet", "{{DevilChance}} +10% Devil Room chance#Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"}, -- Number Magnet
	[175] = {"175", "Strange Key", "Opens the door to the Hush floor regardless of the timer#Using {{Collectible297}} Pandora's Box consumes the key and spawns 6 items from random pools"}, -- Strange Key
	[176] = {"176", "Lil Clot", "Spawns a blood clot that mimics Isaac's movement, shoot direction and tear effects#Familiar respawns every room if it dies"}, -- Lil Clot
	[177] = {"177", "Temporary Tattoo", "Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"}, -- Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Taking damage has a 50% chance for Isaac to explode"}, -- Swallowed M80
	[179] = {"179", "RC Remote", "Familiars mimic Isaac's movement inputs#Hold Drop to keep the familiars in place"}, -- RC Remote
	[180] = {"180", "Found Soul", "Follows Isaac's exact movements and shoots spectral tears#Copies Isaac's stats and tears effects, deals half damage#Dies in one hit#Respawns each floor"}, -- Found Soul
	[181] = {"181", "Expansion Pack", "Using an active items triggers the effect of an additional 1-2 charge active item"}, -- Expansion Pack
	[182] = {"182", "Beth's Essence", "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"}, -- Beth's Essence
	[183] = {"183", "The Twins", "50% chance to duplicate a familiar each room#Grants {{Collectible8}} Brother Bobby or {{Collectible67}} Sister Maggy if Isaac has no familiars"}, -- The Twins
	[184] = {"184", "Adoption Papers", "{{Shop}} Shops sell familiars for 10 coins"}, -- Adoption Papers
	[185] = {"185", "Cricket Leg", "Killing an enemy has a 17% chance to spawn a random locust"}, -- Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "{{Collectible706}} Grants 1 Abyss locust"}, -- Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"}, -- Broken Glasses
	[188] = {"188", "Ice Cube", "Entering a room has a 20% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"}, -- Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"}, -- Sigil of Baphomet
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
		"-{{ColorGold}}30{{CR}}% boss health#Heals {{ColorGold}}2{{CR}} Red Hearts when entering a {{BossRoom}}Boss Room#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}}Match Stick or gulping",
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
	[2] = {"2", "I - The Magician", "Homing tears#↑ {{Range}} +3 Range#{{Timer}} Lasts for one room"}, -- I - The Magician
	[12] = {"12", "XI - Strength", "↑ {{Heart}} +1 Health up#↑ {{Damage}} +0.3 Damage up#↑ {{Damage}} +50% Damage#↑ {{Range}} +5.25 Range up#↑ {{Speed}} +0.3 Speed up#{{Timer}} Lasts for one room"}, -- XI - Strength
	[16] = {"16", "XV - The Devil", "↑ {{Damage}} +2 Damage up#{{Timer}} Lasts for one room"},
	[18] = {"18", "XVII - The Stars", "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"},
	[27] = {"27", "Ace of Clubs", "{{Bomb}} Turns all pickups, chests and non-boss enemies into bombs"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "{{Coin}} Turns all pickups, chests and non-boss enemies into coins"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "{{Key}} Turns all pickups, chests and non-boss enemies into keys"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "{{Heart}} Turns all pickups, chests and non-boss enemies into hearts"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Spawns a trapdoor to the next floor#Spawns a {{LadderRoom}} crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"},
	[39] = {"39", "Algiz", "Makes Isaac invincible for 20 seconds"}, -- Algiz
	[42] = {"42", "Chaos Card", "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"}, -- Chaos Card
	[51] = {"51", "Holy Card", "{{HolyMantle}} Grants a one-use Holy Mantle shield"}, -- Holy Card
	[52] = {"52", "Huge Growth", "↑ {{Damage}} +7 Damage up#↑ {{Range}} +30 Range up#Allows Isaac to destroy rocks by walking into them#Size up#{{Timer}} Lasts for one room"}, -- Huge Growth
	[55] = {"55", "Rune Shard", "{{Rune}} Activates a random rune effect#The rune effect is weaker"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}}The Quarter or {{Collectible19}}Boom! if possible"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "Grants an aura that repels enemies and projectiles for 1 minute"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "Mom's Foot tries to stomp Isaac for 1 minute"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "#↑ {{Heart}} +2 Health up#↑ {{Tears}} +1.35 Tears up#{{Timer}} Effect lasts for 60 seconds"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "{{EmptyBoneHeart}} Spawns 2 Bone Hearts"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 Heart Container or 2 Soul Hearts into a Broken Heart"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "Turns Isaac into an invincible immobile statue#↑ {{Tears}} Extreme fire rate#{{Timer}} Effects last for 10 seconds"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "Spawns 2-4 Golden Chests"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "Turns all pickups and items in the room into a number of coins equal to their shop value"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "Triggers a random dice room effect"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "{{Weakness}} Enemies in current room are weakened, slowed and take double damage#{{Timer}} Effect lasts 1 minute"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "{{Player14}} Turns the player into the Keeper#Grants triple shot and speed down#Killed enemies drop random coins#{{Timer}} Effect lasts for 60 seconds"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "{{Collectible545}} Activates Book of the Dead#Spawns Bone entities for each enemy killed in room"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "Forces Isaac to eat 5 random pills"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "{{Collectible33}} Activates The Bible#{{Collectible390}} Grants Seraphim#Grants flight#{{Timer}} Effect lasts for 30 seconds"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "Spawns 6 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "Removes Isaac's oldest passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "↑ Gain flight and spectral tears#↑ {{Damage}} +1.5 Damage up#{{BoneHeart}} Turns your Red Heart Containers into Bone Hearts#Applies Curse of Darkness#{{Timer}} Lasts for one floor"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "{{RestockMachine}} Spawns a Restock Machine"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "Spawns a trapdoor to a {{LadderRoom}}crawlspace"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "{{Collectible580}} Single-use Red Key"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "{{Heart}} Spawns 1-20 Red Hearts"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Copies the effect of the most recently used pill, card, rune, soul stone or activated item"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Makes all pedestals in the room cycle between two different items"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "{{HalfHeart}} Enemies killed drop red half hearts that disappear after 2 seconds#{{Timer}} Effect lasts one room"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "Turns Isaac into a shadow that can pass through enemies to paralyze them#After a few seconds, damages all paralysed enemies and grants a damage bonus for each one"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing in the creep grants: #↑ {{Tears}} +1.35 Tears#↑ {{Damage}} +1 Damage"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "14 Dead Bird familiars fly in and attack enemies#{{Timer}} Effect lasts for one room or until all enemies are dead"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "↑ {{Speed}} +0.4 Speed up#↑ {{Damage}} +3 Damage up#Restricts attacks to a melee weapon#{{Timer}} Effect lasts for 10 seconds#{{Blank}} Each kill increases the duration by 1 second"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", "{{Collectible441}} Isaac vomits a Mega Blast laser for 7.5 seconds"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "Rerolls pedestals and pickups in the current room#The rerolled items come from random item pools"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "{{Player10}} Turns the player into The Lost#Allows taking one {{DevilRoom}}Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free#{{Timer}} Effect lasts for one room"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Permanently grants a random familiar"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "{{Coin}} Spawns 1-25 random coins"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "Spawns 15 random locusts"}, -- Soul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "{{Player16}} Spawns The Forgotten as a temporary secondary character for one room"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "{{Collectible584}} Spawns 6 random Book of Virtues wisps"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "{{Player20}} Spawns Esau as a temporary secondary character for one room#He spawns with as many passive items as the player"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "{{Collectible34}} Also grants The Book of Belial effect", -- I - The Magician
	[3] = "A second foot strikes down shortly after the first", -- II - The High Priestess
	[4] = "Doubles the stat increases", -- III - The Empress
	[5] = "If the boss wasn't defeated yet, grants 1 Soul Heart as well", -- IV - The Emperor
	[6] = "{{SoulHeart}} Spawns 3 Soul Hearts", -- V - The Hierophant
	[7] = "{{Heart}} Spawns 3 Red Hearts", -- VI - The Lovers
	[8] = "Lasts twice as long", -- VII - The Chariot
	[9] = "Spawns two of each pickup", -- VIII - Justice
	[10] ="Prevents Greed from spawning in the shop#Turns a shop into a normal shop if Greed was already fought in it", -- IX - The Hermit
	[11] = "Spawns 2 Slot Machines", -- X - Wheel of Fortune
	[12] = "Doubles the stat increases, except the damage multiplier", -- XI - Strength
	[14] = "Deals 80 damage", -- XIII - Death
	[15] = "Spawns 2 Blood Donation Machines", -- XIV - Temperance
	[16] = "Doubles the damage increase", -- XV - The Devil
	[17] = "Spawns 12 troll bombs", -- XVI - The Tower
	[18] = "If the Treasure Room hasn't been entered yet, it will have two items to choose from", -- XVII - The Stars
	[21] = "Spawns 2 Beggars", -- XX - Judgement
	[56] = "Drops Isaac's most recent 6 items alongside the pickups", -- 0 - The Fool?
	[59] = "↑ {{Heart}} +3 Health up", -- III - The Empress?
	[61] = "{{EmptyBoneHeart}} Spawns 3 Bone Hearts", -- V - The Hierophant?
	[62] = "{{BrokenHeart}} Grants 2 Broken Hearts and spawns 2 items", -- VI - The Lovers?
	[64] = "Spawns 4-14 Golden Chests", -- VIII - Justice?
	[65] = "Spawns 1 additional penny", -- IX - The Hermit?
	[66] = "Invokes an additional dice room effect", -- X - Wheel of Fortune?
	[68] = "Doubles the effect time", -- XII - The Hanged Man?
	[70] = "{{Pill}} Forces Isaac to eat 10 random pills", -- XIV - Temperance?
	[72] = "Spawns 14 rock clusters", -- XVI - The Tower?
	[73] = "Removes 2 items and spawns 4", -- XVII - The Stars?
	[76] = "{{RestockMachine}} Spawns 2 Restock Machines", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Swaps Isaac's number of bombs and keys#Golden bombs and keys are also swapped"}, -- Bombs are Key
	[12] = {"11", "Range Down", "↓ {{Range}} -0.6 Range down"}, -- Range Down
	[13] = {"12", "Range Up", "↑ {{Range}} +0.75 Range up"}, -- Range Up
	[38] = {"37", "Retro Vision", "Pixelates the screen for 30 seconds"},
	[42] = {"41", "I'm Drowsy...", "{{Slow}} Slows Isaac and all enemies in the room"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!", "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"}, -- I'm Excited!!!
	[48] = {"47", "Shot Speed Down", "↓ {{Shotspeed}} -0.15 Shot Speed down"}, -- Shot Speed Down
	[49] = {"48", "Shot Speed Up", "↑ {{Shotspeed}} +0.15 Shot Speed up"}, -- Shot Speed Up
	[50] = {"49", "Experimental Pill", "↑ Increases 1 random stat#↓ Decreases 1 random other stat#No stat decrease with {{Collectible75}}PHD, {{Collectible46}}Lucky Foot or {{Collectible303}}Virgo#No stat increase with {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random pill effect#Has a chance to destroy itself with each use"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Bad Gas", "{{Poison}} Poisons entire room"}, -- Bad Gas
	{"1", "Bad Trip", "Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +4 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Swaps Isaac's number of bombs and keys#Increases key and bomb count by 50%#Golden bombs and keys are also swapped"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Spawns a few mega homing troll bombs on Isaac"}, -- Explosive Diarrhea
	{"5", "Full Health", "Full Health#{{SoulHeart}} +3 Soul Hearts"}, -- Full Health
	{"6", "Health Down", "↓ -2 Health down#Becomes a Health Up horse pill at 0 or 1 Heart Containers"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +2 Empty heart containers"}, -- Health Up
	{"8", "I Found Pills", "No effect"}, -- I Found Pills
	{"9", "Puberty", "No effect"}, -- Puberty
	{"10", "Pretty Fly", "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -1.2 Range down"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +0.9 Range up"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.24 Speed down"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.3 Speed up"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.56 Tears down"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.70 Tears up"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -2 Luck down"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +2 Luck up"}, -- Luck Up
	{"19", "Telepills", "Teleports Isaac to a random room"}, -- Telepills
	{"20", "48 Hour Energy!", "Fully recharges active items#{{Battery}} Drops 3-4 batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"}, -- Hematemesis
	{"22", "Paralysis", "Prevents Isaac from moving and shooting for 4 seconds"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Opens secret room entrances on the current floor#Grants full mapping"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Turns every enemy in the room permanently friendly"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Hides the floor map"}, -- Amnesia
	{"26", "Lemon Party", "Spawns a puddle of creep the size of a room which damages enemies"}, -- Lemon Party
	{"27", "R U a Wizard?", "Isaac shoots diagonally for 60 seconds"}, -- R U a Wizard?
	{"28", "Percs!", "Reduces all damage taken to half a heart for the duration of the room"}, -- Percs!
	{"29", "Addicted!", "Increases all damage taken to a full heart for the duration of the room"}, -- Addicted!
	{"30", "Re-Lax", "Isaac spawns poop behind him for 10 seconds"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Curse of the Maze effect for the current floor"}, -- ???
	{"32", "One makes you larger", "Greatly increases Isaac's size#Doesn't affect his hitbox"}, -- One makes you larger
	{"33", "One makes you small", "Greatly decreases Isaac's size#Also decreases his hitbox's size"}, -- One makes you small
	{"34", "Infested!", "Spawns 2 blue spiders for each poop in the room"}, -- Infested!
	{"35", "Infested?", "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"}, -- Infested?
	{"36", "Power Pill!", "Makes Isaac briefly invincible#{{Fear}} Fears all enemies in the room#Feared enemies take 40 contact damage per second#{{HalfHeart}} Eating 2 enemies replenishes half a heart#↑ {{Damage}} +7 Damage up#↑ {{Range}} +3 Range up#Persists for current room"}, -- Power Pill!
	{"37", "Retro Vision", "Pixelates the screen for 90 seconds"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 6 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawns a pool of long lasting slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "Spawns a pool of long lasting slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "Slows Isaac and all enemies in the room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Speeds up Isaac and all enemies in the room"}, --I'm Excited!!!
	{"43", "Gulp!", "Consumes Isaac's current trinket and grants its effects permanently"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Shoots a cluster of ipecac tears"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "Makes Isaac briefly invincible#{{Fear}} Fears all enemies in the room#Feared enemies take 40 contact damage per second#{{HalfHeart}} Eating 2 enemies replenishes half a heart"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns the last pill Isaac used as a horse pill"}, -- Vurp!
	{"47", "Shot Speed Down", "↓ {{Shotspeed}} -0.3 Shot Speed down"}, -- Shot Speed Down
	{"48", "Shot Speed Up", "↑ {{Shotspeed}} +0.3 Shot Speed up"}, -- Shot Speed Up
	{"49", "Experimental Pill", "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice#No stat decrease with {{Collectible75}}PHD, {{Collectible46}}Lucky Foot or {{Collectible303}}Virgo#No stat increase with {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random horse pill effect#Has a chance to destroy itself with each use"}, -- Golden Pill
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "s",

	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Black Heart",
	AddBombs = "{{Bomb}} {1} Bomb",
	AddCoins = "{{Coin}} {1} Coin",
	AddHearts = "Heals {{Heart}} {1} Red Heart",
	AddKeys = "{{Key}} {1} Key",
	AddMaxHearts = "{{EmptyHeart}} {1} Heart Container",
	AddSoulHearts = "{{SoulHeart}} {1} Soul Heart",

	-- Cache Flag names
	cacheFlagStart = "May affect ",
	[0] = "{{Damage}} Damage", "{{Tears}} Fire Rate", "{{Shotspeed}} Shot Speed", "{{Range}} Range", "{{Speed}} Speed", "Tear Effects", "Tear Color", "Flight", "Attack Type", "Familiars", "{{Luck}} Luck", "Size", "Color", "Chest Contents", [16] = "All Stats",

	-- Attribute triggers
	active = "On use:#",
	pickup_collected = "On collecting a pickup:#",
	enemy_kill = "Killing an enemy might:#",
	damage_taken = "On taking damage:#",
	entity_spawned = "When a {T1} is spawned:#",
	tear_fire = "Firing a tear might:#",
	enemy_hit = "Hitting an enemy might:#",
	room_clear = "On clearing a room:#",
	chain = "Then:{{CR}} ",

	-- Attribute effects
	area_damage = "Deal {1} damage in an area around Isaac",
	add_temporary_effect = "Grant {1} for the room",
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

EID.descriptions[languageCode].poopSpells = {
	{"Poop", "Normal poop that can drop pickups"},
	{"Corny Poop", "Spawns blue flies while intact"},
	{"Burning Poop", "Deals contact damage while intact#Leaves a fire behind when destroyed"},
	{"Stone Poop", "Can deal damage 3 times when thrown#Takes a lot of hits to destroy"},
	{"Stinky Poop", "Emits a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Black Poop", "Creates slowing creep#Deals 10 damage and confuses all enemies when destroyed"},
	{"Holy Poop", "{{Collectible543}} Create a white poop#While inside the poop's aura:#↑ {{Damage}} +20% Damage up#↑ {{Tears}} +150% Fire Rate up#Homing tears#Chance to block damage"},
	{"Brown Creep", "Leave a trail of creep#Standing on the creep increases Isaac's fire rate and damage#If the creep is touching other poops, it gains their attribute"},
	{"Fart", "Push nearby enemies and bullets back, and spawn a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Bomb", "Normal throwable bomb"},
	{"Explosive Diarrhea", "Isaac quickly spawns 5 lit bombs"},
}

EID.descriptions[languageCode].VoidShopText = "If absorbed right after pickup, gain:"
EID.descriptions[languageCode].VoidOptionText = " will be absorbed instead"
EID.descriptions[languageCode].VoidNames[2] = "{1} Fire Rate up"

EID.descriptions[languageCode].spindownError = "Item disappears"

EID.descriptions[languageCode].CraftingBagContent = "Bag:"
EID.descriptions[languageCode].CraftingRoomContent = "Room:"
EID.descriptions[languageCode].CraftingFloorContent = "Floor:"

EID.descriptions[languageCode].CraftingBagQuality = "Bag Quality:"
EID.descriptions[languageCode].CraftingBestQuality = "Best Quality:"

EID.descriptions[languageCode].CraftingHideKey = "Hide:"
EID.descriptions[languageCode].CraftingPreviewKey = "Preview:"
EID.descriptions[languageCode].CraftingPreviewBackup = "{{Warning}} If this item's locked, it will turn into"

EID.descriptions[languageCode].CraftingResults = "(Scroll: Hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Lock: {{ButtonX}}, Refresh: {{ButtonB}}, Reset Bag: Hold {{ButtonRB}})"

EID.descriptions[languageCode].BlankCardCharge = "Blank Card charge:"
EID.descriptions[languageCode].BlankCardQCard = "Teleport to I AM ERROR Room#Blank Card and ?-Card will be destroyed"
EID.descriptions[languageCode].ClearRuneCharge = "Clear Rune charge:"
EID.descriptions[languageCode].PlaceboCharge = "Placebo charge:"
EID.descriptions[languageCode].FlipItemToggleInfo = "(Hold {{CONFIG_BoC_Toggle}} to show description)"


EID.descriptions[languageCode].FalsePHDHeart = "{{BlackHeart}} Spawns 1 Black Heart"
EID.descriptions[languageCode].FalsePHDDamage = "{{Damage}} +0.6 Damage up"
EID.descriptions[languageCode].FalsePHDHorseDamage = "{{Damage}} +1.2 Damage up"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Instead, consumes the key and spawns 6 items from random pools"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} WARNING {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "Achievements are disabled!#In order to enable progression and achievements, you first need to kill Mom (Depths II) without any mods enabled.#(If you've defeated Mom, this message is a bug and can be ignored)#(This warning can be disabled in the config)"

EID.descriptions[languageCode].OldGameVersionWarningText = "Your version of Repentance is not up-to-date!#Only the newest version (1.7.9) is officially supported#(This warning can be disabled in the config)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Modded items could make the crafting recipe calculation inaccurate!#Use the Itempool Percentages display mode or turn off the Bag of Crafting display if your recipes are incorrect#(This warning can be disabled in the config)"


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end
