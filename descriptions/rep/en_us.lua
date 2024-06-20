---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "en_us"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "The Inner Eye", "↓ {{Tears}} x0.51 Fire rate multiplier#Isaac shoots 3 tears at once"}, -- The Inner Eye
	[5] = {"5", "My Reflection", "↑ {{Damage}} +1.5 Damage#↑ {{Range}} +1.5 Range#↑ {{Range}} x2 Range multiplier#↑ {{Shotspeed}} x1.6 Shot speed multiplier#↓ {{Luck}} -1 Luck#Tears get a boomerang effect"}, -- My Reflection
	[6] = {"6", "Number One", "↑ {{Tears}} +1.5 Tears#↓ {{Range}} -1.5 Range#↓ {{Range}} x0.8 Range multiplier"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +2.5 Range#Size up#{{Heart}} Full health"}, -- Magic Mushroom
	[13] = {"13", "The Virus", "↑ {{Speed}} +0.2 Speed#{{Poison}} Touching enemies poisons them#Isaac deals 48 contact damage per second"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ {{Speed}} +0.3 Speed#↑ {{Range}} +2.5 Range"}, -- Roid Rage
	[18] = {"18", "A Dollar", "{{Coin}} +100 Coins"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Lunch
	[23] = {"23", "Dinner", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Dinner
	[24] = {"24", "Dessert", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Rotten Meat
	[29] = {"29", "Mom's Underwear", "↑ {{Range}} +2.5 Range#Spawns 3-6 blue flies"}, -- Mom's Underwear
	[30] = {"30", "Mom's Heels", "↑ {{Range}} +2.5 Range#Isaac deals 24 contact damage per second"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ {{Range}} +3.75 Range#{{UnknownHeart}} Spawns 1 random heart"}, -- Mom's Lipstick
	[37] = {"37", "Mr. Boom", "Drops a large bomb below Isaac which deals 185 damage"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Causes a big explosion at Isaac's location#Deals 185 damage"}, -- Kamikaze!
	[41] = {"41", "Mom's Pad", "{{Fear}} Fears all enemies in the room for 5 seconds#Spawns a blue fly"}, -- Mom's Pad
	[42] = {"42", "Bob's Rotten Head", "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"}, -- Bob's Rotten Head
	[46] = {"46", "Lucky Foot", "↑ {{Luck}} +1 Luck#Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"}, -- Lucky Foot
	[49] = {"49", "Shoop da Whoop!", "The next shot is replaced with a beam#It deals 24x Isaac's damage over 0.83 seconds"}, -- Shoop da Whoop!
	[52] = {"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Fire rate multiplier#{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"}, -- Magneto
	[55] = {"55", "Mom's Eye", "50% chance to shoot an extra tear backwards#{{Luck}} 100% chance at 5 luck"}, -- Mom's Eye
	[59] = {"59", "The Book of Belial", "{{AngelDevilChance}} +12.5% Devil/Angel Room chance while held#{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- The Book of Belial (Judas' Birthright)
	[62] = {"62", "Charm of the Vampire", "↑ {{Damage}} +0.3 Damage#{{HalfHeart}} Killing 13 enemies heals half a heart"}, -- Charm of the Vampire
	[64] = {"64", "Steam Sale", "{{Shop}} Shop items cost 50% less#Owning this item multiple times reduces the price further"}, -- Steam Sale
	[67] = {"67", "Sister Maggy", "Shoots normal tears#Deals 6 damage per tear"}, -- Sister Maggy
	[69] = {"69", "Chocolate Milk", "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"}, -- Chocolate Milk
	[70] = {"70", "Growth Hormones", "↑ {{Speed}} +0.2 Speed#↑ {{Damage}} +1 Damage"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ {{Speed}} +0.3 Speed#↑ {{Range}} +2.5 Range#↑ Size down"}, -- Mini Mush
	[72] = {"72", "Rosary", "↑ {{Tears}} +0.5 Tears#{{SoulHeart}} +3 Soul Hearts#{{Collectible33}} The Bible is added to all item pools"}, -- Rosary
	[78] = {"78", "Book of Revelations", "{{SoulHeart}} +1 Soul Heart#{{AngelDevilChance}} +17.5% Devil/Angel Room chance while held#Using the item replaces the floor's boss with a horseman"}, -- Book of Revelations
	[79] = {"79", "The Mark", "↑ {{Speed}} +0.2 Speed#↑ {{Damage}} +1 Damage#{{BlackHeart}} +1 Black Heart"}, -- The Mark
	[80] = {"80", "The Pact", "↑ {{Tears}} +0.7 Tears#↑ {{Damage}} +0.5 Damage#{{BlackHeart}} +2 Black Hearts"}, -- The Pact
	[83] = {"83", "The Nail", "Upon use:#{{HalfBlackHeart}} + Half Black Heart#{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage#↓ {{Speed}} -0.18 Speed#Isaac deals 40 contact damage per second#Allows Isaac to destroy rocks by walking into them"}, -- The Nail
	[84] = {"84", "We Need To Go Deeper!", "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"}, -- We Need To Go Deeper!
	[87] = {"87", "Loki's Horns", "25% chance to shoot in 4 directions#{{Luck}} 100% chance at 15 luck"}, -- Loki's Horns
	[91] = {"91", "Spelunker Hat", "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"}, -- Spelunker Hat
	[98] = {"98", "The Relic", "{{SoulHeart}} Spawns 1 Soul Heart every 7-8 rooms"}, -- The Relic
	[101] = {"101", "The Halo", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +1.5 Range#{{Heart}} Heals 1 heart"}, -- The Halo
	[106] = {"106", "Mr. Mega", "↑ x1.85 Bomb damage#{{Bomb}} +5 Bombs"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "↑ {{Range}} +1.5 Range#20% chance to shoot petrifying tears#{{Luck}} 50% chance at 20 luck"}, -- Mom's Contacts
	[114] = {"114", "Mom's Knife", "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"}, -- Mom's Knife
	[115] = {"115", "Ouija Board", "↑ {{Tears}} +0.5 Tears#Spectral tears"}, -- Ouija Board
	[118] = {"118", "Brimstone", "↓ {{Tears}} x0.33 Fire rate multiplier#{{Chargeable}} Isaac's tears are replaced by a chargeable blood beam#{{Damage}} It deals 9x Isaac's damage over 0.63 seconds"}, -- Brimstone
	[121] = {"121", "Odd Mushroom (Large)", "↑ {{Heart}} +1 Health#↑ {{Damage}} +1 Damage#↑ {{Range}} +1.5 Range#↓ {{Speed}} -0.2 Speed"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "{{Timer}} Spawns a random familiar for the floor"}, -- Monster Manual
	[126] = {"126", "Razor Blade", "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"}, -- Razor Blade
	[129] = {"129", "Bucket of Lard", "↑ {{Heart}} +2 Health#↓ {{Speed}} -0.2 Speed"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage#{{Heart}} Heals 1 heart"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "{{Trinket}} Spawns 1 random trinket#{{Trinket}} Isaac can hold 2 trinkets"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "{{Bomb}} +5 Bombs#{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"}, -- Bob's Curse
	[142] = {"142", "Scapular", "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"}, -- Scapular
	[147] = {"147", "Notched Axe", "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"}, -- Notched Axe
	[148] = {"148", "Infestation", "Taking damage spawns 2-6 blue flies"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} +40 Damage#↓ {{Tears}} x0.33 Fire rate multiplier#↓ {{Range}} x0.8 Range multiplier#↓ {{Shotspeed}} -0.2 Shot speed#Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"}, -- Ipecac
	[152] = {"152", "Technology 2", "↓ {{Tears}} x0.67 Fire rate multiplier#Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"}, -- Technology 2
	[153] = {"153", "Mutant Spider", "↓ {{Tears}} x0.42 Fire rate multiplier#Isaac shoots 4 tears at once"}, -- Mutant Spider
	[155] = {"155", "The Peeper", "↑ {{Damage}} x1.35 Damage multiplier for the left eye#Floats around the room#Deals 17.1 contact damage per second"}, -- The Peeper
	[158] = {"158", "Crystal Ball", "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{{Timer}} Full mapping effect for the floor (except {{SuperSecretRoom}} Super Secret Room)#While held:#{{PlanetariumChance}} +15% Planetarium chance#{{PlanetariumChance}} +100% if a {{TreasureRoom}} Treasure Room was skipped"}, -- Crystal Ball
	[169] =	{"169", "Polyphemus", "↑ {{Damage}} +4 Damage#↑ {{Damage}} x2 Damage multiplier#↓ {{Tears}} x0.42 Fire rate multiplier#Tears pierce killed enemies if there is leftover damage"}, -- Polyphemus
	[171] = {"171", "Spider Butt", "{{Slow}} Slows down enemies for 4 seconds#Deals 10 damage to all enemies#Enemies killed by the item spawn blue spiders"}, -- Spider Butt
	[172] = {"172", "Sacrificial Dagger", "Orbital#Blocks enemy shots#Deals 112.5 damage per second"}, -- Sacrificial Dagger
	[173] = {"173", "Mitre", "{{SoulHeart}} 33% chance that Red Hearts spawn as Soul Hearts instead"}, -- Mitre
	[176] = {"176", "Stem Cells", "↑ {{Heart}} +1 Health#↑ {{Shotspeed}} +0.16 Shot speed#{{Heart}} Heals 1 heart"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#Leaves a pool of petrifying + damaging creep"}, -- Holy Water
	[180] = {"180", "The Black Bean", "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"}, -- The Black Bean
	[182] = {"182", "Sacred Heart", "↑ {{Heart}} +1 Health#↑ {{Damage}} x2.3 Damage multiplier#↑ {{Damage}} +1 Damage#↓ {{Tears}} -0.4 Tears#↓ {{Shotspeed}} -0.25 Shot speed#{{Heart}} Full health#Homing tears"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart#Flight"}, -- Holy Grail
	[186] = {"186", "Blood Rights", "Deals 40 damage to every enemy#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"}, -- Blood Rights
	[189] = {"189", "SMB Super Fan", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.2 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +2.5 Range#{{Heart}} Full health"}, -- SMB Super Fan
	[192] = {"192", "Telepathy for Dummies", "{{Timer}} Receive for the room:#↑ {{Range}} +3 Range#Homing tears"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage#{{Heart}} Heals 1 heart"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ {{Shotspeed}} +0.16 Shot speed#{{Card}} Spawns a card#{{PlanetariumChance}} +15% Planetarium chance"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ {{Damage}} +0.5 Damage#↑ {{Range}} +1.5 Range"}, -- Jesus Juice
	[203] = {"203", "Humbleing Bundle", "Pickups have a 50% chance to be doubled"}, -- Humbleing Bundle
	[205] = {"205", "Sharp Plug", "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ {{Tears}} +0.5 Fire rate#↑ {{Damage}} +1 Damage#Isaac's head becomes an orbital that shoots, doesn't take damage and deals 56 contact damage per second"}, -- Guillotine
	[211] = {"211", "Spiderbaby", "Taking damage spawns 3-5 blue spiders"}, -- Spiderbaby
	[214] = {"214", "Anemic", "↑ {{Range}} +1.5 Range#{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room"}, -- Anemic
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart#{{HalfHeart}} 50% chance to heal half a heart every minute"}, -- Placenta
	[222] =	{"222", "Anti-Gravity", "↑ {{Tears}} +1 Fire rate#Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"}, -- Anti-Gravity
	[223] = {"223", "Pyromaniac", "{{Bomb}} +5 Bombs#{{HalfHeart}} Getting hit by explosions heals half a heart instead of damaging Isaac#{{Burning}} Fire immunity (except projectiles)"}, -- Pyromaniac
	[224] = {"224", "Cricket's Body", "↑ {{Tears}} +0.5 Fire rate#↑ {{Tearsize}} +0.1 Tear size#↓ {{Range}} x0.8 Range multiplier#Tears split in 4 on hit#Split tears deal half damage"}, -- Cricket's Body
	[225] = {"225", "Gimpy", "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"}, -- Gimpy
	[226] = {"226", "Black Lotus", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart#{{SoulHeart}} +1 Soul Heart#{{BlackHeart}} +1 Black Heart"}, -- Black Lotus
	[228] = {"228", "Mom's Perfume", "↑ {{Tears}} +0.5 Fire rate#{{Fear}} 15% chance to shoot fear tears"}, -- Mom's Perfume
	[229] =	{"229", "Monstro's Lung", "↓ {{Tears}} x0.23 Fire rate multiplier#{{Chargeable}} Tears are charged and released in a shotgun style attack"}, -- Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Speed}} +0.2 Speed#↑ {{Damage}} +1.5 Damage#{{BlackHeart}} Converts all heart containers into Black Hearts#{{BlackHeart}} +2 Black Hearts#{{Fear}} 15% chance to shoot fear tears"}, -- Abaddon
	[232] = {"232", "Stop Watch", "↑ {{Speed}} +0.3 Speed#{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"}, -- Stop Watch
	[233] = {"233", "Tiny Planet", "↑ {{Range}} +6.5 Range#Spectral tears#Isaac's tears orbit around him"}, -- Tiny Planet
	[245] = {"245", "20/20", "↓ {{Damage}} x0.8 Damage multiplier#Isaac shoots 2 tears at once"}, -- 20/20
	[248] = {"248", "Hive Mind", "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ {{Heart}} +1 Health#↑ {{Luck}} +1 Luck#{{Heart}} Heals 1 heart"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ {{Damage}} +1 Damage for the left eye#↑ {{Range}} +2.75 Range for the left eye"}, -- Blood Clot
	[256] = {"256", "Hot Bombs", "{{Bomb}} +5 Bombs#{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"}, -- Hot Bombs
	[261] = {"261", "Proptosis", "↑ {{Damage}} +0.5 Damage#↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "{{BlackHeart}} +1 Black Heart#Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"}, -- Missing Page 2
	[263] = {"263", "Clear Rune", "{{Rune}} Spawns 1 rune on pickup#{{Rune}} Triggers the effect of the rune Isaac holds without using it"}, -- Clear Rune (Repentance item)
	[264] = {"264", "Smart Fly", "Orbital#Attacks enemies when Isaac takes damage#Deals 6.5 damage per second"}, -- Smart Fly
	[272] = {"272", "BBF", "Friendly exploding fly#The explosion deals 100 damage#{{Warning}} The explosion can hurt Isaac"}, -- BBF
	[273] = {"273", "Bob's Brain", "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals 100 damage, ignores boss armor and poisons enemies#{{Warning}} The explosion can hurt Isaac"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "Taking damage spawns one midrange orbital for the room#The orbital deals 150 damage per second"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals 24 damage over 0.63 seconds"}, -- Lil Brimstone
	[276] = {"276", "Isaac's Heart", "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"}, -- D100
	[285] = {"285", "D10", "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"}, -- D10
	[286] = {"286", "Blank Card", "Triggers the effect of the card Isaac holds without using it"}, -- Blank Card
	[287] = {"287", "Book of Secrets", "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{Collectible54}} Treasure Map#{{Collectible21}} Compass #{{Collectible246}} Blue Map#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "Spawn 4-8 blue spiders"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Throws a red flame#The flame disappears when it has dealt damage or blocked shots 5 times, or after 10 seconds"}, -- Red Candle
	[291] = {"291", "Flush!", "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"}, -- Flush!
	[292] = {"292", "Satanic Bible", "{{BlackHeart}} +1 Black Heart#{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"}, -- Satanic Bible
	[293] = {"293", "Head of Krampus", "{{Collectible118}} Shoot a 4-way blood beam#They each deal 200 damage over 1.33 seconds"}, -- Head of Krampus
	[294] = {"294", "Butter Bean", "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"}, -- Magic Fingers
	[296] = {"296", "Converter", "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Pandora's Box", "{{Warning}} SINGLE USE {{Warning}} Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#C1: Boss item; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#Dark Room: Unlocks {{Collectible523}} Moving Box; Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"}, -- Pandora's Box
	[300] = {"300", "Aries", "↑ {{Speed}} +0.25 Speed#Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"}, -- Aries
	[307] = {"307", "Capricorn", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.1 Speed#↑ {{Tears}} +0.5 Fire rate#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.75 Range#+1 {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"}, -- Capricorn
	[308] = {"308", "Aquarius", "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"}, -- Aquarius
	[309] =	{"309", "Pisces", "↑ {{Tears}} +0.5 Fire rate#↑ {{Tearsize}} +0.12 Tear size#Increases tear knockback"}, -- Pisces
	[310] =	{"310", "Eve's Mascara", "↑ {{Damage}} x2 Damage multiplier#↓ {{Tears}} x0.66 Tears multiplier#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Eve's Mascara
	[314] = {"314", "Thunder Thighs", "↑ {{Heart}} +1 Health#↓ {{Speed}} -0.4 Speed#{{Heart}} Heals 1 heart#Isaac can destroy rocks by walking into them"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"}, -- Strange Attractor
	[316] = {"316", "Cursed Eye", "Charged wave of 5 tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"}, -- Cursed Eye
	[319] = {"319", "Cain's Other Eye", "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"}, -- Cain's Other Eye
	[320] = {"320", "???'s Only Friend", "Controllable fly#Deals 15 contact damage per second"}, -- ???'s Only Friend
	[323] = {"323", "Isaac's Tears", "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"}, -- Isaac's Tears
	[326] = {"326", "Breath of Life", "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ {{Damage}} +1 Damage#Taking damage at half a Red Heart or none damages all enemies in the room"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ {{Tears}} x5.5 Fire rate multiplier#↓ {{Damage}} x0.2 Damage multiplier#↓ {{Tearsize}} -0.3 Tear size#Drastically reduces knockback"}, -- Soy Milk
	[331] = {"331", "Godhead", "↑ {{Damage}} +0.5 Damage#↓ {{Tears}} -0.3 Tears#↓ {{Shotspeed}} -0.3 Shot speed#Homing tears#Tears gain an aura that deals 60 damage per second"}, -- Godhead
	[336] = {"336", "Dead Onion", "↑ {{Tearsize}} +0.22 Tear size#↓ {{Range}} -1.5 Range#↓ {{Shotspeed}} -0.4 Shot speed#Piercing + spectral tears"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ {{Range}} +2.5 Range#↑ {{Shotspeed}} +0.16 Shot speed#{{BlackHeart}} +1 Black Heart"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ {{Heart}} +1 Health#↑ {{Tears}} +0.7 Tears#↓ {{Shotspeed}} -0.16 Shot speed#{{Heart}} Heals 1 heart"}, -- Blue Cap
	[344] = {"344", "Match Book", "{{BlackHeart}} +1 Black Heart#{{Bomb}} Spawns 3 bombs#{{Trinket41}} Spawns Match Stick"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ {{Damage}} +1 Damage#↑ {{Range}} +2.5 Range"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- A Snack
	[349] = {"349", "Wooden Nickel", "{{Coin}} 59% chance to spawn a random coin"}, -- Wooden Nickel
	[352] = {"352", "Glass Cannon", "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart#{{Trinket}} Spawns a trinket"}, -- Crack Jacks
	[355] = {"355", "Mom's Pearls", "↑ {{Range}} +2.5 Range#↑ {{Luck}} +1 Luck#{{SoulHeart}} +1 Soul Heart"}, -- Mom's Pearls
	[360] = {"360", "Incubus", "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"}, -- Incubus
	[365] = {"365", "Lost Fly", "Moves along walls/obstacles in the room#Deals 30 contact damage per second#Nearby enemies target the fly"}, -- Lost Fly
	[366] = {"366", "Scatter Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs scatter into 4-5 tiny bombs"}, -- Scatter Bombs
	[367] = {"367", "Sticky Bombs", "{{Bomb}} +5 Bombs#{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"}, -- Sticky Bombs
	[368] =	{"368", "Epiphora", "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ {{Range}} +3 Range#Spectral tears#Tears can travel through one side of the screen and come out the other side"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +2.5 Range#{{UnknownHeart}} Spawns 3 random hearts"}, -- Mr. Dolly
	[374] = {"374", "Holy Light", "10% chance to shoot holy tears, which spawn a beam of light on hit#{{Luck}} 50% chance at 9 luck#{{Damage}} The beams deals 3x Isaac's damage"}, -- Holy Light
	[375] = {"375", "Host Hat", "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"}, -- Host Hat
	[376] = {"376", "Restock", "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"}, -- Restock
	[380] = {"380", "Pay To Play", "{{Coin}} +5 Coins#Locked blocks, doors and chests must be opened with coins instead of keys"}, -- Pay To Play
	[382] = {"382", "Friendly Ball", "Can be thrown at enemies to capture them#Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"}, -- Lil Gurdy
	[386] = {"386", "D12", "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"}, -- D12
	[389] = {"389", "Rune Bag", "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"}, -- Rune Bag
	[391] = {"391", "Betrayal", "Enemies can hit each other with their projectiles, and start infighting"}, -- Betrayal
	[393] = {"393", "Serpent's Kiss", "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"}, -- Serpent's Kiss
	[394] = {"394", "Marked", "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +3 Range#Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"}, -- Marked
	[395] = {"395", "Tech X", "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"}, -- Tech X
	[397] = {"397", "Tractor Beam", "↑ {{Tears}} +1 Fire rate#↑ {{Range}} +2.5 Range#↑ {{Shotspeed}} +0.16 Shot speed#Isaac's tears always travel along a beam of light in front of him"}, -- Tractor Beam
	[399] = {"399", "Maw of the Void", "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Blocks projectiles#When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"}, -- Purity
	[408] = {"408", "Athame", "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"}, -- Athame
	[415] = {"415", "Crown Of Light", "{{SoulHeart}} +2 Soul Hearts#If Isaac has no damaged heart containers:#↑ {{Damage}} x2 Damage multiplier#↓ {{Shotspeed}} -0.3 Shot speed#Taking any damage removes the effect for the room"}, -- Crown Of Light
	[416] = {"416", "Deep Pockets", "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Kidney Bean", "{{Charm}} Charms all enemies in close range"}, -- Kidney Bean
	[422] = {"422", "Glowing Hourglass", "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"}, -- Glowing Hourglass
	[426] = {"426", "Obsessed Fan", "Mimics Isaac's movement on a 0.66 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Mimics Isaac's movement on a 0.66 second delay#{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"}, -- Papa Fly
	[431] = {"431", "Multidimensional Baby", "Mimics Isaac's movement on a 0.66 second delay#Tears that pass through it are doubled and gain a range + shot speed boost"}, -- Multidimensional Baby
	[432] = {"432", "Glitter Bombs", "{{Bomb}} +5 Bombs#{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"}, -- Glitter Bombs
	[433] = {"433", "My Shadow", "A small shadow follows Isaac#{{Timer}} When an enemy touches the shadow a friendly black charger spawns for the room#The charger deals 8.7 damage per hit"}, -- My Shadow
	[437] = {"437", "D7", "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"}, -- D7
	[440] = {"440", "Kidney Stone", "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"}, -- Kidney Stone
	[442] = {"442", "Dark Prince's Crown", "While at 1 full Red Heart:#↑ {{Tears}} +2 Fire rate#↑ {{Range}} +1.5 Range#↑ {{Shotspeed}} +0.2 Shot speed"}, -- Dark Prince's Crown
	[444] = {"444", "Lead Pencil", "Isaac shoots a cluster of tears every 15 tears"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"}, -- Shard of Glass
	[450] = {"450", "Eye of Greed", "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#Enemies hit with the coin turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"}, -- Eye of Greed
	[451] = {"451", "Tarot Cloth", "{{Card}} Spawns a card#{{Card}} Tarot card effects are doubled or enhanced"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "↑ {{Range}} +1.5 Range#Tears shatter into 1-3 bone shards upon hitting anything"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ {{Range}} +2.5 Range#{{Luck}} Spawns a Lucky Penny"}, -- Dad's Lost Coin
	[456] = {"456", "Midnight Snack", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Midnight Snack
	[459] = {"459", "Sinus Infection", "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for 10 seconds#{{Luck}} Not affected by luck"}, -- Sinus Infection
	[462] = {"462", "Eye of Belial", "↑ {{Range}} +1.5 Range#Piercing tears#Hitting an enemy makes the tear homing and doubles its damage"}, -- Eye of Belial
	[464] = {"464", "Glyph of Balance", "{{SoulHeart}} +2 Soul Hearts#Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"}, -- Glyph of Balance
	[468] = {"468", "Shade", "Follows Isaac's movement on a 0.66 second delay#Deals 75 contact damage per second#After it deals 666 damage, it is absorbed by Isaac, increasing his contact damage"}, -- Shade
	[472] = {"472", "King Baby", "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"}, -- King Baby
	[474] = {"474", "Broken Glass Cannon", "Using the item turns it back into Glass Cannon"}, -- Broken Glass Cannon
	[476] =	{"476", "D1", "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"}, -- D1
	[477] = {"477", "Void", "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"}, -- Void
	[487] = {"487", "Potato Peeler", "{{EmptyHeart}} Removes 1 heart container for: #↑ {{Damage}} +0.2 Damage#{{Collectible73}} A Cube of Meat#{{Timer}} Receive for the room:#↑ {{Range}} +1.5 Range#{{Collectible214}} Leave a trail of blood creep"}, -- Potato Peeler
	[489] = {"489", "D Infinity", "Can be made to act as any die item (except {{Collectible723}} Spindown Dice) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"}, -- D Infinity
	[491] = {"491", "Acid Baby", "{{Pill}} Spawns a random pill every 7 rooms#{{Poison}} Using a pill poisons all enemies in the room"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"}, -- Adrenaline
	[494] = {"494", "Jacob's Ladder", "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can spread to other enemies"}, -- Jacob's Ladder
	[495] = {"495", "Ghost Pepper", "8.33% chance to shoot a blue fire that blocks enemy shots and deals contact damage#{{Luck}} 50% chance at 10 luck#Fires shrink and disappear after 2 seconds"}, -- Ghost Pepper
	[496] = {"496", "Euthanasia", "3.33% chance to shoot a needle#{{Luck}} 25% chance at 13 luck#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"}, -- Euthanasia
	[497] = {"497", "Camo Undies", "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"}, -- Camo Undies
	[500] = {"500", "Sack of Sacks", "Spawns a sack every 7-8 rooms"}, -- Sack of Sacks
	[501] = {"501", "Greed's Gullet", "{{Heart}} +1 Heart container for every 25 coins Isaac has"}, -- Greed's Gullet
	[503] = {"503", "Little Horn", "5% chance to shoot a tear that summons a Big Horn hand#{{Luck}} 20% chance at 15 luck#The hand instantly kills enemies and deals 36 damage to bosses#Isaac deals 7 contact damage per second"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Spawns a fly that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[506] = {"506", "Backstabber", "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"}, -- Backstabber
	[507] = {"507", "Sharp Straw", "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"}, -- Sharp Straw
	[508] = {"508", "Mom's Razor", "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"}, -- Mom's Razor
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 0.33 seconds to nearby enemies#Deals 3.5 damage per tear#Deals 20 contact damage per second"}, -- Bloodshot Eye
	[514] = {"514", "Broken Modem", "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards#(Doesn't double chest, card or pill rewards)"}, -- Broken Modem
	[517] = {"517", "Fast Bombs", "{{Bomb}} +7 Bombs#Removes the delay between bomb placements#Bombs don't deal knockback to each other"}, -- Fast Bombs
	[522] = {"522", "Telekinesis", "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"}, -- Telekinesis
	[523] = {"523", "Moving Box", "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "↑ {{Damage}} +1 Damage#↑ {{Damage}} x1.5 Damage multiplier#↓ {{Tears}} x0.33 Fire rate multiplier#↓ {{Range}} x0.8 Range multiplier#Isaac's tears fly in an arc and burst into smaller tears on impact"}, -- Haemolacria
	[543] = {"543", "Hallowed Ground", "Taking damage spawns a white poop#While inside the poop's aura:#↑ {{Tears}} x2.5 Fire rate multiplier#↑ {{Damage}} x1.2 Damage multiplier#Homing tears#Chance to block damage"}, -- Hallowed Ground
	[549] =	{"549", "Brittle Bones", "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#↑ {{Tears}} +0.4 Fire rate#Shoots 8 bone tears in all directions"}, -- Brittle Bones
	[552] = {"552", "Mom's Shovel", "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\""}, -- Mom's Shovel
	[553] = {"553", "Mucormycosis", "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Fears enemies in a small radius around Isaac"}, -- 2Spooky
	[555] = {"555", "Golden Razor", "{{Coin}} +5 coins on pickup#{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#↑ {{Damage}} +1.2 Damage"}, -- Golden Razor
	[556] = {"556", "Sulfur", "{{Timer}} {{Collectible118}} Brimstone for the room#Using it multiple times in one room grants increased damage and a larger beam"}, -- Sulfur
	[557] = {"557", "Fortune Cookie", "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"}, -- Fortune Cookie
	[558] = {"558", "Eye Sore", "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second"}, -- 120 Volt
	[560] = {"560", "It Hurts", "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"}, -- It Hurts
	[561] = {"561", "Almond Milk", "↑ {{Tears}} x4 Fire rate multiplier#↓ {{Damage}} x0.3 Damage multiplier#↓ {{Tearsize}} -0.16 Tear size#Tears gain random worm trinket effects and some item effects"}, -- Almond Milk
	[562] = {"562", "Rock Bottom", "↑ Prevents stats from being lowered for the rest of the run"}, -- Rock Bottom
	[563] = {"563", "Nancy Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs explode with random effects"}, -- Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ {{Tears}} +0.5 Tears#↑ {{Shotspeed}} +0.2 Shot speed"}, -- A Bar of Soap
	[565] = {"565", "Blood Puppy", "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"}, -- Blood Puppy
	[566] = {"566", "Dream Catcher", "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"}, -- Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms)"}, -- Paschal Candle
	[568] = {"568", "Divine Intervention", "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"}, -- Divine Intervention
	[569] = {"569", "Blood Oath", "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"}, -- Blood Oath
	[570] = {"570", "Playdough Cookie", "Each of Isaac's tears have a different color and status effect"}, -- Playdough Cookie
	[571] = {"571", "Orphan Socks", "↑ {{Speed}} +0.3 Speed#↑ {{SoulHeart}} +2 Soul Hearts#Immune to creep and floor spikes"}, -- Orphan Socks
	[572] = {"572", "Eye of the Occult", "↑ {{Damage}} +1 Damage#↑ {{Range}} +2 Range#↓ {{Shotspeed}} -0.16 Shot speed#Isaac's tears can be controlled in mid-air"}, -- Eye of the Occult
	[573] = {"573", "Immaculate Heart", "↑ {{Heart}} +1 Health#↑ {{Damage}} x1.2 Damage multiplier#{{Heart}} Full health#20% chance to shoot an extra orbiting spectral tear"}, -- Immaculate Heart
	[574] = {"574", "Monstrance", "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"}, -- Monstrance
	[575] = {"575", "The Intruder", "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"}, -- The Intruder
	[576] = {"576", "Dirty Mind", "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"}, -- Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} SINGLE USE {{Warning}}#Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"}, -- Damocles
	[578] = {"578", "Free Lemonade", "Creates a large pool of yellow creep#The creep deals 24 damage per second"}, -- Free Lemonade
	[579] = {"579", "Spirit Sword", "Instead of shooting tears, Isaac swings a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with normal swings at full health#{{Tears}} Tears effect the charge time and how often a projectile is shot at full health"}, -- Spirit Sword
	[580] = {"580", "Red Key", "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"}, -- Red Key
	[581] = {"581", "Psy Fly", "Chases and deflects enemy projectiles#Deals 15 contact damage per second"}, -- Psy Fly
	[582] = {"582", "Wavy Cap", "↑ {{Tears}} +0.75 Fire rate#↓ {{Speed}} -0.03 Speed#Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"}, -- Wavy Cap
	[583] = {"583", "Rocket in a Jar", "{{Bomb}} +5 Bombs#Placing a bomb while shooting fires a rocket in that direction instead"}, -- Rocket in a Jar
	[584] = {"584", "Book of Virtues", "{{AngelChance}} +12.5% Angel Room chance while held#Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"}, -- Book of Virtues
	[585] = {"585", "Alabaster Box", "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"}, -- Alabaster Box
	[586] = {"586", "The Stairway", "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"}, -- The Stairway
	[587] = {"587", "", "<Item does not exist>"},
	[588] = {"588", "Sol", "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#↑ {{Damage}} +3 Damage#↑ {{Luck}} +1 Luck#{{Card20}} The Sun effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"}, -- Sol
	[589] = {"589", "Luna", "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"}, -- Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} +0.4 Speed#Most doors stay permanently open"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart#{{Charm}} Charms nearby enemies"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} +1 Damage#Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"}, -- Terra
	[593] = {"593", "Mars", "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Empty heart containers#↓ {{Speed}} -0.3 Speed#{{HalfHeart}} Heals half a heart#{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"}, -- Jupiter
	[595] = {"595", "Saturnus", "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac shoots ice tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"}, -- Uranus
	[597] = {"597", "Neptunus", "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0.7 Tears#Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"}, -- Pluto
	[599] = {"599", "Voodoo Head", "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"}, -- Voodoo Head
	[600] = {"600", "Eye Drops", "↑ {{Tears}} x1.4 Fire rate multiplier for the left eye"}, -- Eye Drops
	[601] = {"601", "Act of Contrition", "↑ {{Tears}} +0.7 Tears#{{EternalHeart}} +1 Eternal Heart#{{AngelChance}} Allows Angel Rooms to spawn even after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"}, -- Act of Contrition
	[602] = {"602", "Member Card", "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"}, -- Member Card
	[603] = {"603", "Battery Pack", "{{Battery}} Spawns 2-4 batteries#{{Battery}} Fully recharges the active item"}, -- Battery Pack
	[604] = {"604", "Mom's Bracelet", "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"}, -- Mom's Bracelet
	[605] = {"605", "The Scooper", "↑ {{Damage}} x1.35 Damage multiplier for the right eye#{{Timer}} Summons a Peeper familiar for the room, which leaves a trail of red creep and deals 36 contact damage per second"}, -- The Scooper
	[606] = {"606", "Ocular Rift", "5% chance to shoot tears that create rifts where they land#{{Luck}} 20% chance at 15 luck#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"}, -- Ocular Rift
	[607] = {"607", "Boiled Baby", "Shoots chaotic bursts of tears in all directions#Deals 3.5 or 5.25 damage per tear"}, -- Boiled Baby
	[608] = {"608", "Freezer Baby", "Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"}, -- Freezer Baby
	[609] = {"609", "Eternal D6", "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"}, -- Eternal D6
	[610] = {"610", "Bird Cage", "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"}, -- Bird Cage
	[611] = {"611", "Larynx", "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"}, -- Larynx
	[612] = {"612", "Lost Soul", "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"}, -- Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Blood Bombs", "↑ {{Heart}} +1 Health#{{Heart}} Heals 4 hearts#{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep#"}, -- Blood Bombs
	[615] = {"615", "Lil Dumpy", "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"}, -- Lil Dumpy
	[616] = {"616", "Bird's Eye", "8% chance to shoot a red fire that blocks enemy shots and deals contact damage#{{Luck}} 50% chance at 10 luck#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"}, -- Bird's Eye
	[617] = {"617", "Lodestone", "{{Magnetize}} 17% chance to shoot magnetizing tears#{{Luck}} 100% chance at 5 luck#Magnetized enemies attract nearby pickups, projectiles and enemies"}, -- Lodestone
	[618] = {"618", "Rotten Tomato", "{{Bait}} 17% chance to shoot tears that mark enemies#{{Luck}} 100% chance at 5 luck#Marked enemies are targeted by other enemies"}, -- Rotten Tomato
	[619] = {"619", "Birthright", "Has a different effect for each character"}, -- Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "↑ {{Damage}} +21.6 Damage#{{Heart}} Full health#The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"}, -- Red Stew
	[622] = {"622", "Genesis", "{{Warning}} SINGLE USE {{Warning}}#Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"}, -- Genesis
	[623] = {"623", "Sharp Key", "{{Key}} +5 Keys#Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"}, -- Sharp Key
	[624] = {"624", "Booster Pack", "{{Card}} Spawns 5 random cards"}, -- Booster Pack
	[625] = {"625", "Mega Mush", "Gigantifies Isaac and grants:#↑ {{Damage}} x4 Damage multiplier#↑ {{Range}} +2 Range#↓ {{Tears}} -1.9 Tears#Invincibility#Ability to crush enemies and obstacles#{{Timer}} Lasts for 30 seconds and persists between rooms and floors"}, -- Mega Mush
	[626] = {"626", "Knife Piece 1", "Turns into a throwable knife that deals 25 damage when combined with {{Collectible627}} Knife Piece 2#The knife can open a door made of flesh"}, -- Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Turns into a throwable knife that deals 25 damage when combined with {{Collectible626}} Knife Piece 1#The knife can open a door made of flesh"}, -- Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} SINGLE USE {{Warning}}#Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"}, -- Death Certificate
	[629] = {"629", "Bot Fly", "Shoots shielded tears to destroy enemy projectiles#Deals 3 contact damage per second"}, -- Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"}, -- Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ {{Luck}} +2 Luck#Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"}, -- Evil Charm
	[633] = {"633", "Dogma", "↑ {{Speed}} +0.1 Speed#↑ {{Damage}} +2 Damage#Flight and one-time {{HolyMantleSmall}} Holy Mantle shield#{{Heart}} Heals Isaac with Red and Soul Hearts if he has less than 6 hearts"}, -- Dogma
	[634] = {"634", "Purgatory", "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"}, -- Purgatory
	[635] = {"635", "Stitches", "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"}, -- Stitches
	[636] = {"636", "R Key", "{{Warning}} SINGLE USE {{Warning}}#Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"}, -- R Key
	[637] = {"637", "Knockout Drops", "{{Confusion}} 10% chance to shoot a fist that inflicts confusion and extreme knockback#{{Luck}} 100% chance at 9 luck#Enemies take damage when they get knocked into a wall/obstacle"}, -- Knockout Drops
	[638] = {"638", "Eraser", "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"}, -- Eraser
	[639] = {"639", "Yuck Heart", "{{RottenHeart}} +1 Rotten Heart"}, -- Yuck Heart
	[640] = {"640", "Urn of Souls", "Spews a stream of flames#Killing an enemy adds a charge to the urn"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"}, -- Akeldama
	[642] = {"642", "Magic Skin", "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"}, -- Magic Skin
	[643] = {"643", "Revelation", "{{SoulHeart}} +2 Soul Hearts#Flight#{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"}, -- Revelation
	[644] = {"644", "Consolation Prize", "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"}, -- Consolation Prize
	[645] = {"645", "Tinytoma", "Large orbital that blocks shots#Deals 3.5 contact damage per second#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"}, -- Tinytoma
	[646] = {"646", "Brimstone Bombs", "{{Bomb}} +5 Bombs#{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"}, -- 4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Fruity Plum", "Propels herself diagonally around the room, firing tears in her path that deal 3 damage#Deals 6 contact damage per second"}, -- Fruity Plum
	[650] = {"650", "Plum Flute", "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"}, -- Plum Flute
	[651] = {"651", "Star of Bethlehem", "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#↑ {{Tears}} x2.5 Tears multiplier#↑ {{Damage}} x1.8 Damage multiplier#Homing tears#50% chance to ignore damage"}, -- Star of Bethlehem
	[652] = {"652", "Cube Baby", "Can be kicked around by walking into it#{{Freezing}} Afflicts slowness, deals contact damage, and freezes enemies it kills"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"}, -- Vade Retro
	[654] = {"654", "False PHD", "{{BlackHeart}} +1 Black Heart#{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"}, -- False PHD
	[655] = {"655", "Spin to Win", "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#Using the item grants:#↑ {{Speed}} +0.5 Speed#Greatly increases the rotation speed of orbitals"}, -- Spin to Win
	[656] = {"656", "Damocles", "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"}, -- Damocles (hidden passive version)
	[657] = {"657", "Vasculitis", "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"}, -- Vasculitis
	[658] = {"658", "Giant Cell", "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"}, -- Giant Cell
	[659] = {"659", "Tropicamide", "↑ {{Range}} +2.5 Range#↑ {{Tearsize}} +0.22 Tear size"}, -- Tropicamide
	[660] = {"660", "Card Reading", "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"}, -- Card Reading
	[661] = {"661", "Quints", "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"}, -- Quints
	[662] = {"662", "", "<Item does not exist>"},
	[663] = {"663", "Tooth and Nail", "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"}, -- Tooth and Nail
	[664] = {"664", "Binge Eater", "↑ {{Heart}} +1 Health#{{Heart}} Full health#Food items heal 2 hearts#Item pedestals cycle between their item and a food item#Picking up a food item grants:#↑ {{Damage}} Temporary +3.6 damage#↑ 2 Permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"}, -- Binge Eater
	[665] = {"665", "Guppy's Eye", "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"}, -- Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Strawman", "{{Bomb}} +1 Bomb#{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"}, -- Strawman
	[668] = {"668", "Dad's Note", "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"}, -- Dad's Note
	[669] = {"669", "Sausage", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.2 Speed#↑ {{Tears}} +0.5 Tears#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +2.5 Range#↑ {{Shotspeed}} +0.16 Shot speed#↑ {{Luck}} +1 Luck#{{Heart}} Full health#↑ {{AngelDevilChance}} +6.9% Devil/Angel Room chance#↑ {{PlanetariumChance}} +6.9% Planetarium chance"}, -- Sausage
	[670] = {"670", "Options?", "Allows Isaac to choose from two different room clear rewards"}, -- Options?
	[671] = {"671", "Candy Heart", "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"}, -- Candy Heart
	[672] = {"672", "A Pound of Flesh", "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"}, -- A Pound of Flesh
	[673] = {"673", "Redemption", "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#↑ {{Damage}} +1 Damage#{{SoulHeart}} +1 Soul Heart"}, -- Redemption
	[674] = {"674", "Spirit Shackles", "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"}, -- Spirit Shackles
	[675] = {"675", "Cracked Orb", "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"}, -- Cracked Orb
	[676] = {"676", "Empty Heart", "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"}, -- Empty Heart
	[677] = {"677", "Astral Projection", "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"}, -- Astral Projection
	[678] = {"678", "C Section", "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"}, -- C Section
	[679] = {"679", "Lil Abaddon", "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52 damage over 1 second"}, -- Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"}, -- Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"}, -- Lil Portal
	[682] = {"682", "Worm Friend", "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take damage, are slowed and cannot move"}, -- Worm Friend
	[683] = {"683", "Bone Spurs", "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"}, -- Bone Spurs
	[684] = {"684", "Hungry Soul", "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"}, -- Hungry Soul
	[685] = {"685", "Jar of Wisps", "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"}, -- Jar of Wisps
	[686] = {"686", "Soul Locket", "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups#{{SoulHeart}} Spawns a Soul Heart"}, -- Soul Locket
	[687] = {"687", "Friend Finder", "Spawns a random friendly monster that mimics Isaac's movements and attacks"}, -- Friend Finder
	[688] = {"688", "Inner Child", "+1 Life#Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"}, -- Inner Child
	[689] = {"689", "Glitched Crown", "Item pedestals quickly cycle between 5 random items"}, -- Glitched Crown
	[690] = {"690", "Belly Jelly", "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"}, -- Belly Jelly
	[691] = {"691", "Sacred Orb", "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"}, -- Sacred Orb
	[692] = {"692", "Sanguine Bond", "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"}, -- Sanguine Bond
	[693] = {"693", "The Swarm", "Grants 8 orbital flies#Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"}, -- The Swarm
	[694] = {"694", "Heartbreak", "↑ {{Damage}} +0.25 Damage for each broken heart#{{BrokenHeart}} +3 Broken Hearts#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"}, -- Heartbreak
	[695] = {"695", "Bloody Gust", "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"}, -- Bloody Gust
	[696] = {"696", "Salvation", "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"}, -- Salvation
	[697] = {"697", "Vanishing Twin", "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"}, -- Vanishing Twin
	[698] = {"698", "Twisted Pair", "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"}, -- Twisted Pair
	[699] = {"699", "Azazel's Rage", "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"}, -- Azazel's Rage
	[700] = {"700", "Echo Chamber", "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"}, -- Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"}, -- Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"}, -- Esau Jr.
	[704] = {"704", "Berserk!", "{{Battery}} Charges with damage dealt#{{Timer}} Receive for 5 seconds:#↑ {{Speed}} +0.4 Speed#↓ {{Tears}} x0.5 Fire rate multiplier#↑ {{Tears}} +2 Fire rate#↑ {{Damage}} +3 Damage#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"}, -- Berserk!
	[705] = {"705", "Dark Arts", "{{Timer}} Receive for 1 second (or until shooting):↑ {{Speed}} +1 Speed#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"}, -- Dark Arts
	[706] = {"706", "Abyss", "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"}, -- Abyss
	[707] = {"707", "Supper", "↑ {{Heart}} +1 Health#{{Heart}} Heals 1 heart"}, -- Supper
	[708] = {"708", "Stapler", "↑ {{Damage}} +1 Damage#All of Isaac's tears are shot from the right eye"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"}, -- Suplex!
	[710] = {"710", "Bag of Crafting", "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"}, -- Bag of Crafting
	[711] = {"711", "Flip", "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"}, -- Flip
	[712] = {"712", "Lemegeton", "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"}, -- Sumptorium
	[714] = {"714", "Recall", "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"}, -- Recall
	[715] = {"715", "Hold", "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"}, -- Hold
	[716] = {"716", "Keeper's Sack", "Spawns 3 {{Coin}} coins and 1 {{Key}} key#{{Shop}} Spending 3 coins grants either:#↑ {{Speed}} +0.03 Speed#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.25 Range"}, -- Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"}, -- Keeper's Kin
	[718] = {"718", "", "<Item does not exist>"},
	[719] = {"719", "Keeper's Box", "{{Shop}} Spawns a random Shop item/pickup to be purchased"}, -- Keeper's Box
	[720] = {"720", "Everything Jar", "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Causes all future items to be glitched#Glitched items have completely random effects"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"}, -- Anima Sola
	[723] = {"723", "Spindown Dice", "Rerolls all items in the room by decreasing their internal ID by one"}, -- Spindown Dice
	[724] = {"724", "Hypercoagulation", "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"}, -- Hypercoagulation
	[725] = {"725", "IBS", "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"}, -- IBS
	[726] = {"726", "Hemoptysis", "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"}, -- Hemoptysis
	[727] = {"727", "Ghost Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"}, -- Ghost Bombs
	[728] = {"728", "Gello", "A demon familiar bursts out of Isaac for the room#The demon mimics Isaac's tears, stats and effects"}, -- Gello
	[729] = {"729", "Decap Attack", "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"}, -- Decap Attack
	[730] = {"730", "Glass Eye", "↑ {{Damage}} +0.75 Damage#↑ {{Luck}} +1 Luck"}, -- Glass Eye
	[731] = {"731", "Stye", "↑ {{Damage}} x1.28 Damage multiplier for the right eye#↑ {{Range}} +6.5 Range for the right eye#↓ {{Shotspeed}} -0.3 Shot speed for the right eye"}, -- Stye
	[732] = {"732", "Mom's Ring", "↑ {{Damage}} +1 Damage#{{Rune}} Spawns a random rune or soul stone"}, -- Mom's Ring
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Tears#↑ {{Range}} +2.5 Range#↓ {{Speed}} -0.03 Speed", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Tears#↑ {{Shotspeed}} +0.2 Shot speed#↓ {{Speed}} -0.03 Speed", -- Dinner
	[24] = "↑ {{Damage}} +1 Damage#↑ {{Shotspeed}} +0.2 Shot speed#↓ {{Speed}} -0.03 Speed", -- Dessert
	[25] = "↑ {{Range}} +2.5 Range#↑ {{Shotspeed}} +0.2 Shot speed#↓ {{Speed}} -0.03 Speed", -- Breakfast
	[26] = "↑ {{Damage}} +1 Damage#↑ {{Range}} +2.5 Range#↓ {{Speed}} -0.03 Speed", -- Rotten Meat
	[456] = "↑ {{Damage}} +1 Damage#↑ {{Luck}} +1 Luck#↓ {{Speed}} -0.03 Speed", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0.2 Shot speed#↑ {{Luck}} +1 Luck#↓ {{Speed}} -0.03 Speed", -- A Snack
	[707] = "↑ {{Tears}} +0.5 Tears#↑ {{Luck}} +1 Luck#↓ {{Speed}} -0.03 Speed", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Also invokes the effect of {{Collectible35}} Necronomicon", -- Kamikaze!
	[126] = "Also invokes the effect of {{Collectible35}} Necronomicon", -- Razor Blade
	[127] = "↑ {{Damage}} +2 Damage for the next floor", -- Forget me Now
	[133] = "↑ {{Damage}} +0.5 Damage", -- Guppy's Paw
	[135] = "Temporary ↑ {{Damage}} +0.66 damage for each use", -- IV Bag
	[147] = "The axe has increased durability and knockback, can be used faster, sets enemies on {{Burning}} fire and drops more pickups when destroying poop and obstacles", -- Notched Axe
	[186] = "Also invokes the effect of {{Collectible126}} Razor Blade", -- Blood Rights
	[282] = "Leaves a trail of fire that deals contact damage and sets enemies on {{Burning}} fire", -- How to Jump
	[290] = "Using the item consumes a heart, grants a {{Damage}} damage up and leaves red creep on the ground", -- The Jar
	[295] = "Has a chance to invoke the effect of {{Collectible555}} Golden Razor", -- Magic Fingers
	[297] = "Permanently grants a demonic familiar along with the regular rewards", -- Pandora's Box
	[323] = "Shoots 10 tears instead and they are piercing + spectral with a damage boost", -- Isaac's Tears
	[326] = "Instead of spawning light, you have a fiery aura while invincible#Temporary {{Damage}} damage up and invokes the effect of {{Collectible35}} Necronomicon on a perfect block", -- Breath of Life
	[352] = "Activates {{Collectible34}} The Book of Belial when broken#Damage up persists until the cannon is fixed", -- Glass Cannon
	[475] = "Respawns Judas as Dark Judas if he has an extra life", -- Plan C
	[482] = "Replaces the most recently acquired item with {{Collectible51}} Pentagram instead of removing it", -- Clicker
	[487] = "Additional ↑ {{Damage}} +0.5 damage", -- Potato Peeler
	[536] = "For each familiar sacrificed:#↑ {{Damage}} +10.8 damage that slowly fades away", -- Sacrificial Altar
	[555] = "Damages all enemies in the room#Enemies killed by this may drop 1-2 pennies", -- Golden Razor
	[577] = "Permanent ↑ {{Damage}} damage up", -- Damocles
	[582] = "Permanent ↑ {{Damage}} damage up based on the highest number of times the effects of the item has been stacked", -- Wavy Cap
	[585] = "Changes the payout to 2 Black Hearts and 1 Devil Deal item#Becomes 3 hearts and 2 items if a Devil Deal has been taken", -- Alabaster Box
	[622] = "Grants a free {{Collectible51}} Pentagram", -- Genesis
	[623] = "Also invokes the effect of {{Collectible126}} Razor Blade", -- Sharp Key
	[635] = "Creates a {{Collectible705}} Dark Arts line between Judas and Stitches", -- Stitches
	[640] = "Launches a {{Collectible118}} Brimstone beam instead", -- Urn of Souls
	[642] = "↑ {{Damage}} x1.4 Damage multiplier#↑ {{Damage}} +1 Damage", -- Magic Skin
	[653] = "Ghosts home in on enemies", -- Vade Retro
	[685] = "Spawns {{Collectible292}} Satanic Bible wisps#{{DevilChance}} +10% Devil Room chance per wisp", -- Jar of Wisps
	[705] = "Temporary ↑ {{Damage}} damage up for every enemy/projectile hit", -- Dark Arts
	[710] = "Picking up {{Heart}} Red Hearts has a chance to replace them with a {{BlackHeart}} Black Heart", -- Bag of Crafting
	[729] = "While the head is detached:#↑ {{Tears}} x3 Fire rate multiplier#↑ {{Damage}} +2 Damage", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Inner ring wisp#Homing tears", -- The Bible
	[34] = "Middle ring wisp#Double damage tears", -- The Book of Belial
	[35] = "Inner ring wisp#3.5% chance for {{Fear}} fear tears#{{Collectible35}} Necronomicon effect when destroyed", -- The Necronomicon
	[36] = "Outer ring wisp#2.5% chance for {{Collectible236}} E. Coli tears", -- The Poop
	[37] = "Middle ring wisp#Drop scatter homing bombs when destroyed", -- Mr. Boom
	[38] = "Outer ring wisp#Rapid, inaccurate tears", -- Tammy's Head
	[39] = "Middle ring wisp#5% chance for petrifying tears", -- Mom's Bra
	[40] = "Middle ring wisp#Explosive tears#Explodes when destroyed", -- Kamikaze!
	[41] = "Middle ring wisp#7.5% chance for {{Fear}} fear tears", -- Mom's Pad
	[42] = "Middle ring wisp#7.5% chance for {{Collectible149}} Ipecac tears", -- Bob's Rotten Head
	[44] = "Middle ring wisp#10% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport!
	[45] = "Middle ring wisp#20% chance for enemies to drop 1 {{Heart}} Red Heart on kill", -- Yum Heart
	[47] = "Middle ring wisp#Shoot 3 explosive tears towards the crosshair on use", -- Doctor's Remote
	[49] = "Outer ring wisp#Cannot shoot tears#Fires a beam on use", -- Shoop da Whoop!
	[56] = "Middle ring wisp#Rapid, low range tears#Wisp drips yellow creep", -- Lemon Mishap
	[58] = "Middle ring wisp#Low HP but immune to projectiles#Immune to damage during {{Collectible58}} effect", -- Book of Shadows
	[65] = "Middle ring wisp#Drop a Troll Bomb when destroyed", -- Anarchist Cookbook
	[66] = "Middle ring wisp#{{Slow}} Slows enemies for 3 seconds when destroyed", -- The Hourglass
	[77] = "Middle ring wisp#Extra contact damage", -- My Little Unicorn
	[78] = "Inner ring wisp#Cannot shoot tears#Spawns a Locust for the room when destroyed", -- Book of Revelations
	[83] = "Inner ring wisp#Double damage and knockback tears", -- The Nail
	[84] = "Middle ring wisp#No special effect", -- We Need to Go Deeper!
	[85] = "Inner ring wisp#Drop a {{Card}} card when destroyed", -- Deck of Cards
	[86] = "Middle ring wisp#Tooth tears", -- Monstro's Tooth
	[93] = "Inner ring wisp#Anti-gravity tears#Chance for {{Fear}} fear tears", -- The Gamekid
	[97] = "Spawns 1 of 8 wisps:#{{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#{{Warning}} Explosive effects are likely", -- The Book of Sin
	[102] = "Inner ring wisp#Spawns 1 of 6 wisps:#normal tears that spawns an enemy spider when destroyed or chance for poison, petrify, confusion, burn, Troll Bomb tears#All 6 spawn a {{Pill}} pill when destroyed", -- Mom's Bottle of Pills
	[105] = "Middle ring wisp#+1 Wisp per item rerolled", -- The D6
	[107] = "Inner ring wisp#Piercing tears", -- The Pinking Shears
	[111] = "Outer ring wisp#{{Poison}} Poison fart when destroyed", -- The Bean
	[123] = "Inner ring wisp#Random tears", -- Monster Manual
	[124] = "Spawns the wisp of what item it mimics", -- Dead Sea Scrolls
	[126] = "Middle ring wisp#High HP wisps", -- Razor Blade
	[127] = "Middle ring wisp#Infinite HP wisp for the new floor", -- Forget Me Now
	[130] = "Middle ring wisp#Cannot shoot tears#Wisps charge in the direction Isaac shoots", -- A Pony
	[133] = "Middle ring wisp#Spawns 3 high HP wisps", -- Guppy's Paw
	[135] = "Outer ring wisp#Low HP wisp", -- IV Bag
	[136] = "Middle ring wisp#7.5% chance for {{Bait}} mark tears#Marked enemies are attacked by other enemies", -- Best Friend
	[137] = "Inner ring wisp#+1 Wisp per bomb detonated#Wisp's tears can also be remote detonated", -- Remote Detonator
	[145] = "Outer ring wisp#Wisps are spawned instead of flies#Spawns a blue fly when destroyed", -- Guppy's Head
	[146] = "Inner ring wisp#Homing tears", -- Prayer Card
	[147] = "Chance to spawn dip wisps from poop and 1 of 5 mineral wisps from rocks:#{{Collectible132}} Coal, {{Collectible201}} Iron, {{Collectible202}} Gold, {{Collectible68}} Redstone, {{Collectible415}} Diamond", -- Notched Axe
	[158] = "Middle ring wisp#High HP wisp that shoots at nearby enemies", -- Crystal Ball
	[160] = "Middle ring wisp#Summon a beam of light on contact", -- Crack the Sky
	[164] = "Middle ring wisp#Single room wisp", -- The Candle
	[166] = "Middle ring wisp#Destroys all pickups in the room, with a chance to spawn a random wisp for each", -- D20
	[171] = "Middle ring wisp#7.5% chance for {{Slow}} slow tears", -- Spider Butt
	[175] = "Middle ring wisp#Wisps open locked chests/doors on touch, including the Mega Satan, Ascent, and Corpse doors#Wisps donate themselves to {{KeyBeggar}} Key Masters", -- Dad's Key
	[177] = "Spawns a wisp based on the reward won", -- Portable Slot
	[181] = "Middle ring wisp#10% chance for {{Collectible374}} Holy Light tears", -- White Pony
	[186] = "Middle ring wisp#High HP wisp", -- Blood Rights
	[192] = "Middle ring wisp#Homing tears", -- Telepathy for Dummies
	[263] = "Middle ring wisp#15% chance for enemies to drop a {{Rune}} rune on kill#Drops a {{Rune}} rune when destroyed", -- Clear Rune
	[282] = "Spawns up to 6 stationary wisps for the room", -- How to Jump
	[283] = "Rerolls all wisps and spawns 1 random wisp#Doesn't reroll Book of Virtues", -- D100
	[284] = "Removes all wisps and spawns a random wisp for every 2 items owned#Doesn't reroll Book of Virtues", -- D4
	[285] = "Middle ring wisp#10% chance for D10 effect tears", -- D10
	[286] = "Middle ring wisp#15% chance for enemies to drop a {{Card}} card on kill#Spawns a {{Card}} card when destroyed", -- Blank Card
	[287] = "Middle ring wisp#{{Collectible675}} Cracked Orb effect when destroyed", -- Book of Secrets
	[288] = "Outer ring wisp#Wisps are spawned instead of spiders#Spawns a blue spider when destroyed", -- Box of Spiders
	[289] = "Middle ring wisp#Single room wisp#Red flame tears", -- Red Candle
	[290] = "Middle ring wisp#Creates a wisp per heart instead of dropping them as pickups#Chance to spawn a {{HalfHeart}} half Red Heart when destroyed", -- The Jar
	[291] = "Middle ring wisp#Spawns an extra wisp per flushed enemy", -- Flush!
	[292] = "Middle ring wisp#+10% {{AngelDevilChance}} Devil/Angel Room chance per Satanic Bible wisp", -- Satanic Bible
	[293] = "Middle ring wisp#Fires a 4-way {{Collectible118}} Brimstone beam when destroyed", -- Head of Krampus
	[294] = "Inner ring wisp#Low HP single room wisp#Cannot shoot tears#Butter Bean effect when destroyed", -- Butter Bean
	[295] = "Inner ring wisp#Chance to drop a {{Coin}} coin when destroyed", -- Magic Fingers
	[296] = "Middle ring wisp#Higher HP wisp that can be healed with {{Heart}} Red Hearts", -- Converter
	[297] = "Middle ring wisp#Spawns 0-8 wisps depending on the floor", -- Pandora's Box
	[298] = "Middle ring wisp#Cannot shoot tears#Immune to contact damage#Doesn't deal contact damage unless Unicorn Stump or a similar effect is active", -- Unicorn Stump
	[323] = "Middle ring wisp#Spawns 6 wisps#3 Second lifetime", -- Isaac's Tears
	[324] = "Middle ring wisp#{{Collectible570}} Playdough Cookie tears", -- Undefined
	[325] = "Middle ring wisp#Arcing cluster tears", -- Scissors
	[326] = "Inner ring wisp#Spawns 4 wisps on a perfect block", -- Breath of Life
	[338] = "Middle ring wisp#Single room wisp#Boomerang tears", -- The Boomerang
	[347] = "Middle ring wisp#High HP wisps with {{Collectible245}} 20/20 tears#Duplicate all other wisps", -- Diplopia
	[348] = "Middle ring wisp#Spawns a {{Pill}} pill when destroyed", -- Placebo
	[349] = "Middle ring wisp#50% chance to drop a {{Coin}} coin when destroyed", -- Wooden Nickel
	[351] = "Middle ring wisp#Send a rock wave out on use#Petrify + {{Poison}} poison fart when destroyed", -- Mega Bean
	[352] = "Middle ring wisp#Low HP wisp that persists between rooms#All Glass Cannon wisps are destroyed when one is destroyed", -- Glass Cannon
	[357] = "Middle ring wisp#No special effect#Duplicate all wisps for the room", -- Box of Friends
	[382] = "Middle ring wisp#Friendly enemies spawn 1 of 4 wisps on death, depending on their attacks, with normal, homing, explosive, or Brimstone tears", -- Friendly Ball
	[383] = "Middle ring wisp#Wisp's tears can be detonated, turning into 6 of Isaac's tears#Persists between rooms#Burst into Isaac's tears when destroyed", -- Tear Detonator
	[386] = "Middle ring wisp#5% chance for tears to reroll rocks, urns, skulls or mushrooms", -- D12
	[396] = "Cannot shoot tears#Each portal has 1 wisp", -- Ventricle Razor
	[406] = "Middle ring wisp#Random damage and fire rate", -- D8
	[419] = "Middle ring wisp#20% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport 2.0
	[421] = "Middle ring wisp#{{Charm}} Charm tears#{{Charm}} Charm fart when destroyed", -- Kidney Bean
	[422] = "Middle ring wisp#30% chance for petrifying tears#Respawns all wisps that got destroyed in the previous room", -- Glowing Hourglass
	[427] = "Bounces around the room, exploding when shot by Isaac#Cannot shoot tears or deal contact damage", -- Mine Crafter
	[434] = "Middle ring wisp#Wisps are spawned instead of flies#Up to 5 flies makes 1 wisp with increased health and damage", -- Jar of Flies
	[437] = "Middle ring wisp#D7 effect when hit for the first time", -- D7
	[439] = "Middle ring wisp#No special effect", -- Mom's Box
	[441] = "Middle ring wisp#{{Chargeable}} Chargeable Brimstone tears#Shoot continuously during a Mega Blast", -- Mega Blast
	[475] = "Middle ring wisp#Spawns 8 high damage wisps that stay after death", -- Plan C
	[476] = "Middle ring wisp#Spawns a second wisp if no pickup was duplicated", -- D1
	[477] = "Spawns the wisps of all absorbed active items#Doesn't spawn a wisp itself", -- Void
	[478] = "Middle ring wisp#Pauses all enemies and shots for 3 seconds when destroyed", -- Pause
	[479] = "Middle ring wisp#Chance to spawn a {{Trinket}} trinket when destroyed", -- Smelter
	[480] = "Middle ring wisp#Increased HP for each pickup converted#Only spawns a wisp if at least one pickup got converted", -- Compost
	[481] = "Middle ring wisp#5% chance for tears to transform enemies into random wisps", -- Dataminer
	[482] = "Spawns a random wisp", -- Clicker
	[483] = "Middle ring wisp#Spawns 8 wisps that drop a golden Troll Bomb when destroyed", -- Mama Mega!
	[484] = "Middle ring wisp#Single room wisp#Cannot shoot tears#Wait What? effect when destroyed", -- Wait What?
	[485] = "Middle ring wisp#All Crooked Penny wisps are destroyed or duplicated when one is damaged", -- Crooked Penny
	[486] = "Middle ring wisp#Cannot shoot tears#Chance to negate Isaac taking damage and get destroyed for it", -- Dull Razor
	[487] = "Indestructible, permanent wisp#Chases enemies to shoot them#Doesn't block shots or deal contact damage", -- Potato Peeler
	[488] = "Spawns the wisp of what item it mimics (random wisp if not an active item)", -- Metronome
	[489] = "Middle ring wisp#Spawns a normal wisp#Extra effect based on the mimicked die", -- D Infinity
	[490] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Eden's Soul
	[504] = "Middle ring wisp#Single room wisp#Rapid, low damage, aimed tears", -- Brown Nugget
	[507] = "Outer ring wisp#Chance to spawn a wisp on kill", -- Sharp Straw
	[510] = "Middle ring wisp#{{Collectible229}} Monstro's Lung, {{Collectible268}} Rotten Baby, {{Collectible87}} Loki's Horns or {{Collectible118}} Brimstone tears", -- Delirious
	[512] = "Middle ring wisp#Magnetic tears", -- Black Hole
	[515] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Mystery Gift
	[516] = "Middle ring wisp#Rapid tears#Tears shoot in 8 directions like Sprinkler", -- Sprinkler
	[521] = "Middle ring wisp#Triple shot#Purchasing anything destroys all Coupon wisps", -- Coupon
	[522] = "Outer ring wisp#Captured projectiles turn into wisps", -- Telekinesis
	[523] = "Middle ring wisp#Wisp only spawns when dropping items#Spawns a random pickup when destroyed", -- Moving Box
	[527] = "Middle ring wisp#Cannot shoot tears#On room clear, wisps open chests/doors", -- Mr. ME!
	[536] = "Middle ring wisp#Converts all wisps into {{HalfHeart}} half Red Hearts#Spawns a high HP, high damage wisp on sacrifice", -- Sacrificial Altar
	[545] = "Inner ring wisp#Spawns a friendly Bony when destroyed", -- Book of the Dead
	[550] = "Middle ring wisp#10% chance for tears to make Mom stomp on the enemy", -- Broken Shovel
	[552] = "Middle ring wisp#10% chance for tears to make Mom stomp on the enemy#Also spawns a high HP wisp that cannot shoot tears", -- Mom's Shovel
	[555] = "Middle ring wisp#15% chance for {{Collectible202}} Midas' Touch tears", -- Golden Razor
	[556] = "Middle ring wisp#Short range {{Collectible118}} Brimstone tears", -- Sulfur
	[557] = "Middle ring wisp#↑ {{Luck}} +0.2 Luck per Fortune Cookie wisp", -- Fortune Cookie
	[577] = "Middle ring wisp#No special effect", -- Damocles
	[578] = "Middle ring wisp#Wisp drips yellow creep", -- Free Lemonade
	[580] = "Middle ring wisp#Chance to create Red Doors when entering a new room", -- Red Key
	[582] = "Middle ring wisp#Low damage tears#Max 1 Wavy Cap wisp", -- Wavy Cap
	[584] = "No benefit from multiple copies", -- Book of Virtues
	[585] = "Middle ring wisp#Spawns 8 normal wisps", -- Alabaster Box
	[604] = "Counts as middle ring wisp#Single room wisp#Spawns 3 wisps where something lands#10% chance for {{Confusion}} confusion tears", -- Mom's Bracelet
	[605] = "Middle ring wisp#No special effect", -- The Scooper
	[609] = "Middle ring wisp#Only 50% to spawn an invincible wisp#50% chance for all Eternal D6 wisps to be destroyed on use", -- Eternal D6
	[611] = "Middle ring wisp#Health and damage increases based on charges", -- Larynx
	[622] = "Middle ring wisp#Replaces all wisps with 3 normal wisps", -- Genesis
	[623] = "Middle ring wispsNo special effect", -- Sharp Key
	[631] = "Middle ring wisp#Splits all wisps in half (halfs damage)#Wisps are destroyed if split a third time", -- Meat Cleaver
	[635] = "Single room wisp#Spawns a stationary wisp at Isaac's position before getting teleported (up to 6 wisps)", -- Stitches
	[636] = "No wisp", -- R Key
	[638] = "Middle ring wisp#Immune to projectiles#Erases non-boss enemies on contact", -- Eraser
	[639] = "Middle ring wisp#Spawns blue flies instead of shooting tears", -- Yuck Heart
	[640] = "Middle ring wisp#Chance for blue flame tears", -- Urn of Souls
	[642] = "Middle ring wisp#Poison tears", -- Magic Skin
	[650] = "Middle ring wisp#When Baby Plum bounces diagonally, all Plum Flute wisps are invincible and do so as well", -- Plum Flute
	[653] = "No wisps#Red ghosts can shoot tears", -- Vade Retro
	[655] = "Middle ring wisp#Temporary wisps during use#Rapid tears", -- Spin to Win
	[685] = "Triples the spawned wisps", -- Jar of Wisps
	[687] = "Spawns a random wisp", -- Friend Finder
	[703] = "Middle ring wisp#No special effect", -- Esau Jr.
	[704] = "Middle ring wisp#High HP wisp#Cannot shoot tears", -- Berserk!
	[705] = "Middle ring wisp#Single room wisp per enemy killed", -- Dark Arts
	[706] = "Middle ring wisp#High HP wisp#Cannot shoot tears", -- Abyss
	[709] = "Single room wisp#Spawns 3 wisps where Isaac lands", -- Suplex!
	[710] = "Spawns a random wisp on craft", -- Bag of Crafting
	[711] = "Middle ring wisp#High HP wisp", -- Flip
	[712] = "The item wisps shoot homing tears", -- Lemegeton
	[713] = "No wisp", -- Sumptorium
	[719] = "Middle ring wisp#20% chance for enemies to drop a {{Coin}} coin on kill", -- Keeper's Box
	[720] = "Spawns a random wisp", -- Everything Jar
	[722] = "Orbits the chained enemy, shooting at them#Wisp dies when the enemy dies", -- Anima Sola
	[723] = "Middle ring wisp#Spawns a random wisp and rerolls all wisps into the type", -- Spindown Dice
	[728] = "Middle ring wisp#All wisps orbit Gello while active", -- Gello
	[729] = "Single room stationary wisp", -- Decap Attack
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
	[149] = "Large, slow, green locust that deals 1.5x Isaac's damage and poisons enemies", -- Ipecac
	[153] = "Four normal locusts", -- Mutant Spider
	[257] = "Orange, burning locust that sets enemies on fire", -- Fire Mind
	[305] = "Green locust that poisons enemies", -- Scorpio
	[374] = "Cyan, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Light
	[494] = "Light blue locust with arcs of electricity that deal 0.1 damage per arc", -- Jacob's Ladder
	[559] = "Light blue locust with arcs of electricity that deal 0.1 damage per arc", -- 120 Volt
}

-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 4}, -- The Book of Belial -- TODO: Is this +1 damage or another +2 from additional uses?
	[59] = {2, 4}, -- The Book of Belial (Birthright)
	[83] = {" Half", "1"}, -- The Nail
	[263] = "Triggers it twice", -- Clear Rune
	[283] = {1, 2, "pickup", "{{CR}}pickups"}, -- D100 TODO: TEST THIS is this really the only change
	[285] = "Devolves enemies twice", -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, "Heart", "{{CR}}Hearts", 1, 2, "container", "{{CR}}containers"}, -- Converter
	[323] = "The tears deal double damage", -- Isaac's Tears
	[386] = "Increased chance for rare obstacles", -- D12
	[485] = "25% chance to quadruple, 75% chance to remove", -- Crooked Penny
	[489] = "Uses the selected dice twice", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"one", "two"}, -- Fortune Cookie
	[582] = "Triggers twice", -- Wavy Cap
	[584] = "Spawns two wisps", -- Book of Virtues
	[605] = {" a ", " 2 ", "familiar", "{{CR}}familiars"}, -- The Scooper
	[609] = {25, 44}, -- Eternal D6
	[611] = "Triggers an additional 1-charge scream", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Instantly swaps twice#Great for teleporting into enemies, but can't collect out-of-reach items", -- Stitches
	[639] = {1, 2, "Heart", "{{CR}}Hearts"}, -- Yuck Heart
	[642] = "Triggers twice", -- Magic Skin
	[650] = {" a ", " 2 ", "Plum", "{{CR}}Plums"}, -- Plum Flute
	[685] = "Spawns double the wisps, but the use count only goes up by 1", -- Jar of Wisps
	[687] = {" a ", " 2 ", "monster", "{{CR}}monsters"}, -- Friend Finder
	[704] = "Lasts 10 seconds, but killing an enemy caps time remaining at 5 seconds max", -- Berserk!
	[705] = {1, 2}, -- Dark Arts
	[712] = {" an ", " 2 ", "orbital", "{{CR}}orbitals"}, -- Lemegeton
	[713] = {"half a heart", "a heart", "a clot", "2 {{CR}}clots"}, -- Sumptorium
	[719] = {" a ", " 2 ", "item/pickup", "{{CR}}items/pickups"}, -- Keeper's Box
	[720] = "Spawns a poop alongside the pickup", -- Everything Jar
	[722] = "Chains 2 enemies down#If there's only one enemy, chains it for 10 seconds", -- Anima Sola
	[723] = {"one", "two"}, -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

-- Effect of BFFS!/Hive Mind on Familiars
local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7-8", "6"}, -- The Relic
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.178"] = {7, 14, "Spawns a blue flame at point of impact"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Fires additional shots in random directions and leaves a larger puddle of creep", -- Isaac's Heart
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.365"] = {30, 60}, -- Lost Fly
	["5.100.360"] = {75, 150, 100, 200}, -- Incubus (+ Lilith exception)
	["5.100.384"] = {"5-20", "10-40"}, -- Lil Gurdy
	["5.100.389"] = {"7-8", "6"}, -- Rune Bag
	["5.100.467"] = {10, 20}, -- Finger!
	["5.100.468"] = {75, 150}, -- Shade
	["5.100.491"] = {"7", "6"}, -- Acid Baby
	["5.100.500"] = {"7-8", "6"}, -- Sack of Sacks
	["5.100.504"] = {3.5, 7}, -- Brown Nugget
	["5.100.508"] = {1.5, 3}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 20, 40}, -- Bloodshot Eye
	
	["5.100.565"] = "Double damage while friendly", -- Blood Puppy
	["5.100.569"] = "If triggered, grants additional damage and speed", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Doubles wisp tear and contact damage", -- Book of Virtues
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "a rock wave", "4 {{CR}}rock waves", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Gives the Lost Soul a Holy Mantle effect", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "On use, shoots 8 tears from the player's position", -- Stitches
	
	--TODO: check familiars 645, 649, 651, 652, 656, 667, 679, 681, 682, 697, 698; work on hive mind support
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Wiggle Worm", "↑ {{Tears}} +0.4 Tears#Spectral tears#Isaac's tears move in waves"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "↑ {{Tears}} +0.47 Tears#Spectral tears#Isaac's tears move in spirals with high speed"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"},-- Lucky Rock
	[16] = {"16", "Mom's Toenail", "Mom's Foot stomps a random spot in the room every 20 seconds"}, -- Mom's Toenail
	[24] = {"24", "Butt Penny", "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "↑ {{Tears}} +0.4 Tears#↑ {{Range}} +1.5 Range#Spectral tears#Isaac's tears move in angular patterns"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "25% chance for a random mushroom effect per room"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "{{HalfHeart}} Having half a Red Heart or less grants {{Collectible100}} Little Steven#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ {{Tears}} +1 Fire rate"}, -- Cancer
	[48] = {"48", "A Missing Page", "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "{{Key}} Picking up a coin has a 25% chance to spawn a key"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ {{Range}} +3 Range"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ {{Shotspeed}} -0.5 Shot speed"}, -- Lazy Worm
	[67] = {"67", "Cracked Dice", "Taking damage has a 50% chance to trigger one of these effects:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Faded Polaroid", "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the \"Strange Door\" in \"Depths II\""}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ {{Damage}} +0.5 Damage for each \"Evil up\" item held"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"}, -- Cracked Crown
	[96] = {"96", "Ouroboros Worm", "↑ +0.4 Tears#↑ {{Range}} +1.5 Range#Spectral tears#Chance for homing tears#{{Luck}} 100% chance at 9 luck#Isaac's tears move quickly in a spiral pattern"}, -- Ouroboros Worm
	[98] = {"98", "Nose Goblin", "5% chance to shoot homing sticky tears#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 10 seconds"}, -- Nose Goblin
	[101] = {"101", "Dim Bulb", "Holding a completely uncharged active item grants:#↑ {{Speed}} +0.5 Speed#↑ {{Tears}} +0.5 Tears#↑ {{Damage}} +1.5 Damage#↑ {{Range}} +1.5 Range#↑ {{Shotspeed}} +0.3 Shot speed#↑ {{Luck}} +2 Luck"}, -- Dim Bulb
	[107] = {"107", "Crow Heart", "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} The Red Heart damage can lower your Devil/Angel Room chance"}, -- Crow Heart
	[110] = {"110", "Silver Dollar", "{{Shop}} Shops appear in the Womb and Corpse"}, -- Silver Dollar
	[111] = {"111", "Bloody Crown", "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "{{Heart}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HalfHeart}} Heals half a heart minimum"}, -- Stem Cell
	[125] = {"125", "Extension Cord", "Connects all familiars with beams of electricity#The beams deal 6 damage#Beams also arc between co-op players (including Jacob & Esau)"}, -- Extension Cord
	[128] = {"128", "Finger Bone", "{{EmptyBoneHeart}} Taking damage has a 4% chance to grant a Bone Heart"}, -- Finger Bone
	[129] = {"129", "Jawbreaker", "{{Damage}} 10% chance to shoot teeth that deal 3.2x Isaac's damage#{{Luck}} 100% chance at 9 luck"}, -- Jawbreaker
	[130] = {"130", "Chewed Pen", "{{Slow}} 10% chance to shoot slowing tears#{{Luck}} 100% chance at 18 luck"}, -- Chewed Pen
	[131] = {"131", "Blessed Penny", "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart"}, -- Blessed Penny
	[132] = {"132", "Broken Syringe", "25% chance to get a random syringe effect each room"}, -- Broken Syringe
	[133] = {"133", "Short Fuse", "Isaac's bombs explode faster"}, -- Short Fuse
	[134] = {"134", "Gigante Bean", "Increases fart size"}, -- Gigante Bean
	[135] = {"135", "A Lighter", "{{Burning}} Entering a room has a 20% chance to burn random enemies"}, -- A Lighter
	[136] = {"136", "Broken Padlock", "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the \"Strange Door\" in \"Depths II\""}, -- Broken Padlock
	[137] = {"137", "Myosotis", "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"}, -- Myosotis
	[138] = {"138", "'M", "Using an active item rerolls it"}, -- 'M
	[139] = {"139", "Teardrop Charm", "{{Luck}} +4 Luck towards luck-based tear effects"}, -- Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, -- Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Increases the fire rate of familiars"}, -- Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"}, -- Beth's Faith
	[143] = {"143", "Old Capacitor", "{{Battery}} Prevents active item from charging by clearing a room#{{Battery}} Clearing a room has a 20% chance to spawn a battery#{{Luck}} 33% chance at 5 luck"}, -- Old Capacitor
	[144] = {"144", "Brain Worm", "Tears turn 90 degrees to target enemies that they may have missed"}, -- Brain Worm
	[145] = {"145", "Perfection", "↑ {{Luck}} +10 Luck up#Taking damage destroys the trinket"}, -- Perfection
	[146] = {"146", "Devil's Crown", "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"}, -- Devil's Crown
	[147] = {"147", "Charged Penny", "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item"}, -- Charged Penny
	[148] = {"148", "Friendship Necklace", "All familiars orbit around Isaac"}, -- Friendship Necklace
	[149] = {"149", "Panic Button", "Right before taking damage, uses the active item if it is charged"}, -- Panic Button
	[150] = {"150", "Blue Key", "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"}, -- Blue Key
	[151] = {"151", "Flat File", "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"}, -- Flat File
	[152] = {"152", "Telescope Lens", "{{PlanetariumChance}} +9% Planetarium chance#Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"}, -- Telescope Lens
	[153] = {"153", "Mom's Lock", "25% chance for a random Mom item effect each room"}, -- Mom's Lock
	[154] = {"154", "Dice Bag", "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"}, -- Dice Bag
	[155] = {"155", "Holy Crown", "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"}, -- Holy Crown
	[156] = {"156", "Mother's Kiss", "{{Heart}} +1 Heart container while held"}, -- Mother's Kiss
	[157] = {"157", "Torn Card", "Every 15 shots, Isaac shoots an {{Collectible149}} Ipecac + {{Collectible5}} My Reflection tear with a very high range value"}, -- Torn Card
	[158] = {"158", "Torn Pocket", "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."}, -- Torn Pocket
	[159] = {"159", "Gilded Key", "{{Key}} +1 Key on pickup#{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"}, -- Gilded Key
	[160] = {"160", "Lucky Sack", "{{GrabBag}} Entering a new floor spawns a sack"}, -- Lucky Sack
	[161] = {"161", "Wicked Crown", "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"}, -- Wicked Crown
	[162] = {"162", "Azazel's Stump", "{{Player7}} Clearing a room has a 50% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"}, -- Dingle Berry
	[164] = {"164", "Ring Cap", "{{Bomb}} Spawns 1 extra bomb for each bomb placed"}, -- Ring Cap
	[165] = {"165", "Nuh Uh!", "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"}, -- Nuh Uh!
	[166] = {"166", "Modeling Clay", "50% chance to grant the effect of a random passive item each room"}, -- Modeling Clay
	[167] = {"167", "Polished Bone", "Clearing a room has a 25% chance to spawn a friendly Bony"}, -- Polished Bone
	[168] = {"168", "Hollow Heart", "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"}, -- Hollow Heart
	[169] = {"169", "Kid's Drawing", "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"}, -- Kid's Drawing
	[170] = {"170", "Crystal Key", "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"}, -- Crystal Key
	[171] = {"171", "Keeper's Bargain", "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"}, -- Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"}, -- Cursed Penny
	[173] = {"173", "Your Soul", "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"}, -- Your Soul
	[174] = {"174", "Number Magnet", "{{DevilChance}} +10% Devil Room chance#Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"}, -- Number Magnet
	[175] = {"175", "Strange Key", "Opens the door to the Hush floor regardless of the timer#Using {{Collectible297}} Pandora's Box consumes the key and spawns 6 items from random pools"}, -- Strange Key
	[176] = {"176", "Lil Clot", "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"}, -- Lil Clot
	[177] = {"177", "Temporary Tattoo", "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"}, -- Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"}, -- Swallowed M80
	[179] = {"179", "RC Remote", "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"}, -- RC Remote
	[180] = {"180", "Found Soul", "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Dies in one hit#Respawns each floor"}, -- Found Soul
	[181] = {"181", "Expansion Pack", "Using an active item triggers the effect of an additional 1-2 charge active item"}, -- Expansion Pack
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
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Using an active item teleports Isaac to {{ColorGold}}a room that has not been cleared yet{{CR}}#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "coins", "pickups" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Rosary is added to all item pools" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Allows Isaac to take Shop items for free{{CR}}#Chance to turn into a regular {{Trinket13}} Store Credit after each purchase" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Rocks may drop 2 coins", "Rocks may drop 2 coins", "Rocks may drop 3 coins" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "poop", "golden poop" },
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "half a heart", "a heart", "one and a half hearts" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
		"Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}}Match Stick or gulping",
		"Heals {{ColorGold}}3{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Worm's stat boosts are doubled", "Worm's stat boosts are tripled", "Worm's stat boosts are quadrupled", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Trinket effect is doubled if possible", "Trinket effect is tripled if possible", "Trinket effect is quadrupled if possible", },
	-- NO!
	[88] = { "Prevents Quality {{Quality0}} items from spawning" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that might get fixed (maybe it'll give a Golden Key?)
	[159] = { "Replaces all chests (except Old/Mega) with golden chests#Golden chests can contain extra cards, pills or trinkets" },
	-- The Twins
	[183] = { "May copy/grant 2 familiars", "May copy/grant 2 familiars", "May copy/grant 3 familiars" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData in this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
in their goldenTrinketEffects
]]
EID.descriptions[languageCode].goldenTrinketData = { }

---------- Cards ----------

local repCards={
	[2] = {"2", "I - The Magician", "{{Timer}} Receive for the room:#↑ {{Range}} +3 Range#Homing tears"}, -- I - The Magician
	[12] = {"12", "XI - Strength", "{{Timer}} Receive for the room:#↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +2.5 Range"}, -- XI - Strength
	[16] = {"16", "XV - The Devil", "{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- XV - The Devil
	[18] = {"18", "XVII - The Stars", "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"}, -- XVII - The Stars
	[27] = {"27", "Ace of Clubs", "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Makes Isaac invincible for 20 seconds"}, -- Algiz
	[42] = {"42", "Chaos Card", "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"}, -- Chaos Card
	[51] = {"51", "Holy Card", "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"}, -- Holy Card
	[52] = {"52", "Huge Growth", "{{Timer}} Receive for the room:#↑ {{Damage}} +7 Damage#↑ {{Range}} +3 Range#Size up#Allows Isaac to destroy rocks by walking into them"}, -- Huge Growth
	[55] = {"55", "Rune Shard", "{{Rune}} Activates a random rune effect#The rune effect is weaker"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "{{Timer}} Receive for 60 seconds:#↑ {{Heart}} +2 Health#↑ {{Tears}} +1.5 Fire rate#↓ {{Speed}} -0.1 Speed"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "{{EmptyBoneHeart}} Spawns 2 Bone Hearts"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "{{Timer}} Receive for 10 seconds:#↑ {{Tears}} x4 Fire rate multiplier#Invincible but can't move"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "{{GoldenChest}} Spawns 2-4 golden chests"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "{{DiceRoom}} Triggers a random Dice Room effect"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 60 seconds"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "{{Timer}} Receive for 30 seconds:#↓ {{Speed}} -0.1 Speed#Triple shot#{{Coin}} Killed enemies drop coins"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "{{Collectible545}} Activates Book of the Dead#Spawns Bone entities for each enemy killed in room"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "{{Pill}} Forces Isaac to eat 5 random pills"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "{{Timer}} Receive for the floor:#↑ {{Damage}} +1.5 Damage#Flight and spectral tears#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "{{RestockMachine}} Spawns a Restock Machine"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "{{LadderRoom}} Spawns a trapdoor to a crawlspace"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "{{Collectible580}} Single-use Red Key"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "{{Heart}} Spawns 1-20 Red Hearts"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Makes all item pedestals in the room cycle between two different items"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#↑ {{Tears}} +1.5 Fire rate#↑ {{Damage}} +1 Damage"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Permanently grants a random familiar"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "{{Coin}} Spawns 1-25 random coins"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "Spawns 15 random locusts"}, -- Soul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "{{Player16}} Spawns The Forgotten as a secondary character for the room"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "{{Collectible584}} Spawns 6 random Book of Virtues wisps"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Also grants {{Collectible34}} The Book of Belial effect", -- I - The Magician
	[3] = "A second foot strikes down shortly after the first", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} +1 Soul Heart if the boss wasn't defeated yet", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Spawns {{ColorShinyPurple}}2{{CR}} random {{UnknownHeart}} hearts, {{Coin}} coins, {{Bomb}} bombs and {{Key}} keys"}, -- VIII - Justice
	[10] = "Prevents Greed from spawning in the Shop#Turns a Greed Shop into a normal Shop if Greed was already fought in it", -- IX - The Hermit
	[11] = {" a ", " 2 ", "Machine", "{{CR}}Machines", "Machine", "{{CR}}Machines"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", "Machine", "{{CR}}Machines", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XIV - Temperance ( + Greed version)
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "If the Treasure Room hasn't been entered yet, it will have two items to choose from", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Beggar", "{{CR}}Beggars", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XX - Judgement
	[56] = "Drops Isaac's most recent 6 items alongside the pickups", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Activates the effect twice", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Spawns 1 additional {{Coin}} penny", -- IX - The Hermit?
	[66] = {" a ", " 2 ", "effect", "{{CR}}effects"}, -- X - Wheel of Fortune?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Removes Isaac's {{ColorShinyPurple}}2{{CR}} oldest collected passive items (ignoring starting items)#Spawns {{ColorShinyPurple}}4{{CR}} random items from the current room's item pool"}, -- XVII - The Stars?
	[76] = {" a ", " 2 ", "Machine", "{{CR}}Machines"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Spawns 1 machine", -- X - Wheel of Fortune
	[12] = "Stat boosts aren't doubled", -- XI - Strength
	[14] = "Deals 40 damage", -- XIII - Death
	[15] = "Spawns 1 machine", -- XIV - Temperance
	[16] = "+2 Damage", -- XV - The Devil
	[20] = "Deals 200 damage", -- XIX - The Sun
	[21] = "Spawns 1 beggar", -- XX - Judgement
	[56] = "Drops 3 items", -- 0 - The Fool?
	[64] = "Spawns 2-7 chests", -- VIII - Justice?
	[65] = "Doesn't spawn an additional penny", -- IX - The Hermit?
	[66] = "Triggers 1 effect", -- X - Wheel of Fortune?
	[68] = "Lasts 30 seconds", -- XII - The Hanged Man?
	[72] = "Spawns 7 clusters", -- XVI - The Tower?
	[73] = "Removes 1 item and spawns 2", -- XVII - The Stars?
	[76] = "Spawns 1 machine", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"}, -- Bombs are Key
	[12] = {"11", "Range Down", "↓ {{Range}} -1 Range"}, -- Range Down
	[13] = {"12", "Range Up", "↑ {{Range}} +1.25 Range"}, -- Range Up
	[38] = {"37", "Retro Vision", "{{Timer}} Pixelates the screen for 30 seconds"},
	[42] = {"41", "I'm Drowsy...", "{{Slow}} Slows Isaac and all enemies in the room"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!", "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"}, -- I'm Excited!!
	[48] = {"47", "Shot speed Down", "↓ {{Shotspeed}} -0.15 Shot speed"}, -- Shot speed Down
	[49] = {"48", "Shot speed Up", "↑ {{Shotspeed}} +0.15 Shot speed"}, -- Shot speed Up
	[50] = {"49", "Experimental Pill", "↑ Increases 1 random stat#↓ Decreases 1 random stat"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random pill effect#Has a chance to destroy itself with each use"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Bad Gas", "{{Poison}} Poisons the entire room"}, -- Bad Gas
	{"1", "Bad Trip", "{{Heart}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +4 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Spawns a few homing Mega Troll Bombs"}, -- Explosive Diarrhea
	{"5", "Full Health", "{{SoulHeart}} +3 Soul Hearts#{{Heart}} Full Health"}, -- Full Health
	{"6", "Health Down", "↓ {{EmptyHeart}} -2 Health#Becomes a Health Up horse pill at 0 or 1 heart containers"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +2 Empty heart containers"}, -- Health Up
	{"8", "I Found Pills", "No effect"}, -- I Found Pills
	{"9", "Puberty", "No effect"}, -- Puberty
	{"10", "Pretty Fly", "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -2 Range"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +2.5 Range"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.24 Speed"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.3 Speed"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.56 Tears"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.70 Tears"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -2 Luck"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +2 Luck"}, -- Luck Up
	{"19", "Telepills", "Teleports Isaac to a random room"}, -- Telepills
	{"20", "48 Hour Energy!", "{{Battery}} Fully recharges active items#{{Battery}} Drops 3-4 batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "{{EmptyHeart}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"}, -- Hematemesis
	{"22", "Paralysis", "Prevents Isaac from moving and shooting for 4 seconds"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Opens secret room entrances on the floor#Full mapping effect"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Turns every enemy in the room permanently friendly"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Hides the floor map"}, -- Amnesia
	{"26", "Lemon Party", "Spawns a puddle of creep the size of a room which damages enemies"}, -- Lemon Party
	{"27", "R U a Wizard?", "{{Timer}} Isaac shoots diagonally for 60 seconds"}, -- R U a Wizard?
	{"28", "Percs!", "{{Timer}} Reduces all damage taken to half a heart for the room"}, -- Percs!
	{"29", "Addicted!", "{{Timer}} Increases all damage taken to a full heart for the room"}, -- Addicted!
	{"30", "Re-Lax", "Isaac spawns poop behind him for 10 seconds"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Curse of the Maze effect for the floor"}, -- ???
	{"32", "One makes you larger", "Greatly increases Isaac's size#Doesn't affect his hitbox"}, -- One makes you larger
	{"33", "One makes you small", "Greatly decreases Isaac's size#Also decreases his hitbox's size"}, -- One makes you small
	{"34", "Infested!", "Spawns 2 blue spiders for each poop in the room"}, -- Infested!
	{"35", "Infested?", "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"}, -- Infested?
	{"36", "Power Pill!", "{{Timer}} Receive for the room:#↑ {{Damage}} +7 Damage#↑ {{Range}} +3 Range#{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HalfHeart}} Eating 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Power Pill!
	{"37", "Retro Vision", "Pixelates the screen for 90 seconds"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 6 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawns a pool of long lasting slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "{{Slow}} Spawns a pool of long lasting slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "{{Slow}} Slows Isaac and all enemies in the room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"}, --I'm Excited!!
	{"43", "Gulp!", "Consumes Isaac's trinket and grants its effects permanently"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Shoots a cluster of ipecac tears"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HalfHeart}} Eating 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns the last pill Isaac used as a horse pill"}, -- Vurp!
	{"47", "Shot speed Down", "↓ {{Shotspeed}} -0.3 Shot speed"}, -- Shot speed Down
	{"48", "Shot speed Up", "↑ {{Shotspeed}} +0.3 Shot speed"}, -- Shot speed Up
	{"49", "Experimental Pill", "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random horse pill effect#Has a chance to destroy itself with each use"}, -- Golden Pill
}

---------- Character Info ----------
-- TODO: make these more consistent with other descs, add icons, and is there any traits of the characters missing?
local repCharacterInfo = {
	[4] = {"???", "Can't have Red Hearts#Devil deals that would cost 1 or 2 Red Hearts will cost 1 or 2 Soul Hearts instead#Destroying poop spawns 1 blue fly"},
	[8] = {"Lazarus", "Once per floor, when you die:#Resurrect as Lazarus Risen#Lose 1 Red Heart container#↑ {{Damage}} 0.5 Damage up"},
	[11] = {"Lazarus Risen", "Increased stats and 1.4x damage multiplier#When entering a new floor, turn back into Lazarus"},
	[12] = {"Dark Judas", "Can't have Red Hearts#Health ups grant Black Hearts#2x Damage multiplier"},
	[14] = {"Keeper", "Heal by picking up coins#Heart pickups are turned into Blue Flies#Devil deals cost 15 or 30 coins"},
	[18] = {"Bethany", "Use Soul Hearts to charge your active item#Can't use Soul Hearts as health#The first Devil room is guaranteed to be an Angel room instead"},
	[19] = {"Jacob", "Control Jacob and Esau at the same time#Both characters drop a bomb when one is used#Esau stays in place while holding {{ButtonRT}}#When there's a choice between items, Jacob and Esau can grab two simultaneously"},
	[20] = {"Esau", ""},
	
	[21] = {"Tainted Isaac", "Item pedestals cycle between 2 options#You can only carry 8 passive items#Cycle which item will be dropped for a 9th item with {{ButtonRT}}"},
	[22] = {"Tainted Magdalene", "Health above 2 Red Hearts will slowly drain#On contact, do a melee swing#Chance for enemies to drop Half Red Hearts that disappear in 2 seconds#Drop is guaranteed on melee kill#Heal twice as much from non-pickup sources#Damage taken to draining hearts doesn't affect Devil Deal chance"},
	[23] = {"Tainted Cain", "Touching an item pedestal turns it into a variety of pickups#Gain collectibles by crafting 8 pickups together in the Bag of Crafting#The Bag's contents can be shifted with {{ButtonRT}} to replace specific pickups when full"},
	[24] = {"Tainted Judas", "Can't have Red Hearts#Health ups grant Black Hearts"},
	[25] = {"Tainted ???", "Bombs are replaced with Poop Spells#Doing damage spawns poop pickups#The HUD has a preview of your upcoming poop spells#You can store the next spell for later by using Hold#Can't have Red Hearts"},
	[26] = {"Tainted Eve", "Holding Fire will convert your hearts into Clot familiars#Different Heart types spawn Clots with more health and tear effects#Clots lose health over time#Using Sumptorium will absorb the Clots back into your health, if possible#Clots stay in place while holding {{ButtonRT}}"},
	[27] = {"Tainted Samson", "Dealing or taking damage builds up Berserk mode#{{Timer}} When you go berserk, receive for 5 seconds:#↑ {{Speed}} +0.4 Speed#↓ {{Tears}} x0.5 Fire rate multiplier#↑ {{Tears}} +2 Fire rate#↑ {{Damage}} +3 Damage#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"},
	[28] = {"Tainted Azazel", "When you start charging, you sneeze blood#Hitting an enemy with the sneeze halves your charge time#The sneeze deals 1.5x Azazel's damage#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams#On death, cursed enemies explode and pass on the curse to nearby enemies"},
	[29] = {"Tainted Lazarus", "Lazarus has two states, each with their own items and health#Whenever you clear a room/wave or use Flip, you're switched to the other state"},
	[30] = {"Tainted Eden", "When you take damage, reroll your stats, items, trinket, and consumables#Items reroll into an item from the same item pool#Self-damage doesn't reroll"},
	[31] = {"Tainted Lost", "Cards that spawn have a 10% chance to be Holy Card#Quality {{Quality2}} or less items have a 20% chance to be rerolled#Only \"offensive\" items can spawn"},
	[32] = {"Tainted Lilith", "Pressing Fire launches a short-range fetus melee attack that does 3x damage#Holding Fire keeps the fetus out shooting tears"},
	[33] = {"Tainted Keeper", "Enemies drop coins that disappear in 2 seconds#Most item pedestals cost 15 coins#Devil deals and Angel items cost 15 or 30 coins#Shops don't require a key and have increased stock"},
	[34] = {"Tainted Apollyon", ""},
	[35] = {"Tainted Forgotten", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts"},
	[36] = {"Tainted Bethany", "Use Red Hearts to charge your active item#Can't have Red Hearts"},
	[37] = {"Tainted Jacob", "Dark Esau chases you, charging towards you when close#Anima Sola will chain Dark Esau down briefly, charging at you after 5 seconds or on using Anima Sola again#Dark Esau's charge does a lot of damage to enemies and ignores Boss Armor#If he hits you, you turn into a ghost that dies in one hit for the rest of the floor#While a ghost, one devil deal per room can be taken for free"},
	[38] = {"Dead Tainted Lazarus", "Lazarus has two states, each with their own items and health#Whenever you clear a room/wave or use Flip, you're switched to the other state"},
	[39] = {"Tainted Jacob 2", ""},
	[40] = {"Tainted Forgotten Soul", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts"},
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "All item pedestals cycle between two options"},
	{"Magdalene", "", "↑ {{Heart}} +1 Health#The max amount of heart containers is raised to 18"},
	{"Cain", "", "↑ {{Luck}} +1 Luck#{{Arcade}} All future floors will contain an upgraded Arcade Room (except for Dark Room and Chest)#{{Collectible46}} Greatly increases Lucky Foot's chances of winning effect"},
	{"Judas", "", "{{Collectible34}} The Book of Belial becomes a passive item similar to {{Collectible584}} Book of Virtues#{{Collectible34}} Grants The Book of Belial if Judas is not currently holding it#↑ {{Damage}} The damage boost it grants scales with the amount of charges the active item combined with it has#Grants special effects for certain active items"},
	{"???", "", "{{SoulHeart}} Soul Hearts gained from health upgrades are doubled"},
	{"Eve", "", "{{Collectible122}} Whore of Babylon is active regardless of health#{{Collectible117}} Dead Bird is always active"},
	{"Samson", "", "{{Collectible157}} Bloody Lust can trigger 4 more times per floor, up to +14 damage after 10 triggers"},
	{"Azazel", "", "Azazel's Brimstone beam becomes much wider#Does not increase damage"},
	{"Lazarus", "", "↑ Resurrecting as Lazarus Risen grants {{Damage}} +7.2 damage#{{Timer}} Damage up wears off over 60 seconds#{{Blank}} Killing enemies while the effect is active extends it"},
	{"Eden", "", "Spawns 3 random items from random item pools#Only one can be taken"},
	{"The Lost", "", "Prevents items useless to The Lost from spawning#Examples: items that only give health, flight, spectral tears, or activate upon taking damage"},
	{"Lazarus Risen", "", "↑ {{Damage}} +7.2 Damage#Damage up wears off over 60 seconds#Killing enemies while the effect is active extends it#The effect triggers each time Lazarus revives as Lazarus Risen"},
	{"Black Judas", "", "{{Collectible34}} The Book of Belial becomes a passive item similar to {{Collectible584}} Book of Virtues#{{Collectible34}} Grants The Book of Belial if Judas is not currently holding it#↑ {{Damage}} The damage boost it grants scales with the amount of charges the active item combined with it has#Grants special effects for certain active items"},
	{"Lilith", "", "Familiars are positioned in front of Lilith's face"},
	{"Keeper", "", "↑ {{CoinHeart}} +1 Health#The max amount of Coin Heart containers is raised to 4"},
	{"Apollyon", "", "{{Collectible477}} Using Void has a chance to spawn an item that was previously voided#Does not remove the stat bonuses#The more items voided, the higher the chance for an item to spawn upon use"},
	{"The Forgotten", "", "Removes the chain binding The Soul to The Forgotten"},
	{"The Forgotten Soul", "", "Removes the chain binding The Soul to The Forgotten"},
	{"Bethany", "", "{{Battery}} Activating an item using soul charges is sometimes free"},
	{"Jacob", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Esau", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Tainted Isaac", "", "Adds 4 passive item slots#Does not consume a slot itself"},
	{"Tainted Magdalene", "", "{{Heart}} Adds 1 heart container that doesn't drain"},
	{"Tainted Cain", "", "Doubles the amount of pickups dropped from collecting an item"},
	{"Tainted Judas", "", "{{Collectible705}} Increases the range in which Dark Arts hits enemies and tears"},
	{"Tainted ???", "", "{{PoopPickup}} Increases the maximum number of poops that can be carried to 29"},
	{"Tainted Eve", "", "{{HalfHeart}} Red Heart clots spawn half Red Hearts on death that disappear after 2 seconds"},
	{"Tainted Samson", "", "{{Collectible704}} Killing an enemy adds 3 seconds to the Berserk! timer instead of 1"},
	{"Tainted Azazel", "", "{{Collectible726}} Doubles the size of Tainted Azazel's Hemoptysis sneeze attack"},
	{"Tainted Lazarus", "", "The non-active form of Tainted Lazarus appears as a ghostly second character#He is invincible and deals 25% damage#Both forms receive the Birthright item"},
	{"Tainted Eden", "", "Any items obtained before Birthright can no longer be rerolled#Active items can be rerolled again if they are dropped and picked back up"},
	{"Tainted Lost", "", "Grants an extra life that revives Tainted Lost in the same room and deals 200 damage to nearby enemies"},
	{"Tainted Lilith", "", "{{Collectible728}} Familiars that normally follow Tainted Lilith follow her Gello instead#The melee attack gains +3 damage per familiar"},
	{"Tainted Keeper", "", "{{Coin}} Strongly attracts the coins dropped by defeating enemies#No effect on other coins"},
	{"Tainted Apollyon", "", "Locusts continuously damage enemies without returning while the fire button is held"},
	{"Tainted Forgotten", "", "{{Collectible714}} Tainted Soul gains the Recall ability to retrieve Tainted Forgotten from a distance#The Soul is invincible while the Forgotten is returning"},
	{"Tainted Bethany", "", "Spawns four random item wisps of Quality {{Quality3}} and {{Quality4}} with significantly higher HP than normal"},
	{"Tainted Jacob", "", "Dark Esau splits into two, creating a shadowy clone of itself#Both Esaus always charge at the same time#{{Collectible722}} Anima Sola's cooldown is reduced to 10 seconds#Using Anima Sola chains both Esaus for 6.67 seconds"},
	{"Dead Tainted Lazarus", "", "The non-active form of Tainted Lazarus appears as a ghostly second character#He is invincible and deals 25% damage#Both forms receive the Birthright item"},
	{"Tainted Jacob 2", "", ""},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Tainted Soul gains the Recall ability to retrieve Tainted Forgotten from a distance#The Soul is invincible while the Forgotten is returning"},
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "s",

	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Black Heart",
	AddBombs = "{{Bomb}} {1} Bomb",
	AddCoins = "{{Coin}} {1} Coin",
	AddHearts = "{{Heart}} Heals {1} heart",
	AddKeys = "{{Key}} {1} Key",
	AddMaxHearts = "{{EmptyHeart}} {1} Heart container",
	AddSoulHearts = "{{SoulHeart}} {1} Soul Heart",

	-- Cache Flag names
	cacheFlagStart = "May affect ",
	[0] = "{{Damage}} Damage", "{{Tears}} Fire rate", "{{Shotspeed}} Shot speed", "{{Range}} Range", "{{Speed}} Speed", "Tear effects", "Tear color", "Flight", "Attack type", "Familiars", "{{Luck}} Luck", "Size", "Color", "Chest contents", [16] = "All stats",

	-- Attribute triggers
	active = "On use:#",
	pickup_collected = "On collecting a pickup:#",
	enemy_kill = "Killing an enemy has a 20% chance to:#",
	damage_taken = "Upon taking damage:#",
	entity_spawned = "When a {T1} is spawned:#",
	tear_fire = "Firing a tear has a 5% chance to:#",
	enemy_hit = "Hitting an enemy has a 5% chance to:#",
	room_clear = "On clearing a room:#",
	chain = " Then:{{CR}} ",

	-- Attribute effects
	area_damage = "Deal {1} damage in {2} tiles around Isaac",
	add_temporary_effect = "Grant {1} for the room",
	convert_entities = "Convert all {1} in the room to {2}",
	use_active_item = "Use {1}",
	spawn_entity = "Spawn a {1}",
	fart = "Fart on {1} tiles around Isaac",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "lit bomb",
	["5.0"] = "pickup",
	["5.10"] = "heart",
	["5.20"] = "coin",
	["5.30"] = "key",
	["5.40"] = "bomb pickup",
	["5.69"] = "sack",
	["5.70"] = "pill",
	["5.90"] = "battery",
	["5.300"] = "card",
	["9.-1"] = "enemy projectile",
	["999.-1"] = "grid object",
	["1000.0"] = "effect",

	-- Text for the base item that is granted
	grants = "Grants ",
}

---------- Bag of Crafting Text ----------
EID.descriptions[languageCode].CraftingBagContent = "Bag:"
EID.descriptions[languageCode].CraftingRoomContent = "Room:"
EID.descriptions[languageCode].CraftingFloorContent = "Floor:"
EID.descriptions[languageCode].CraftingSearch = "Search:"
EID.descriptions[languageCode].CraftingBagQuality = "Bag Quality:"
EID.descriptions[languageCode].CraftingBestQuality = "Best Quality:"
EID.descriptions[languageCode].CraftingHideKey = "Hide:"
EID.descriptions[languageCode].CraftingPreviewKey = "Preview:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+{1} more"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} of 8 items available"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Needs at least 8 to show crafting recipes!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Currently Hidden (Unhide with {1})"
-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Scroll: Hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Lock: {{ButtonX}}, Refresh: {{ButtonB}}, Reset Bag: Hold {{ButtonRB}}, Search: {1})"

---------- Misc. Text ----------

EID.descriptions[languageCode].ResultsWithX = "(Results with {1})"
EID.descriptions[languageCode].VariableCharge = "{1} charge:"

EID.descriptions[languageCode].poopSpells = {
	{"Poop", "Normal poop that can drop pickups"},
	{"Corny Poop", "Spawns blue flies while intact"},
	{"Burning Poop", "Deals contact damage while intact#Leaves a fire behind when destroyed"},
	{"Stone Poop", "Can deal damage 3 times when thrown#Takes a lot of hits to destroy"},
	{"Stinky Poop", "Emits a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Black Poop", "{{Slow}} Creates slowing creep#{{Confusion}} Deals 10 damage and confuses all enemies when destroyed"},
	{"Holy Poop", "{{Collectible543}} Create a white poop#While inside the poop's aura:#↑ {{Damage}} x1.2 Damage multiplier#↑ {{Tears}} x2.5 Fire rate multiplier#Homing tears#Chance to block damage"},
	{"Brown Creep", "Leave a trail of creep#Standing on the creep increases Isaac's fire rate and damage#If the creep is touching other poops, it gains their attribute"},
	{"Fart", "Push nearby enemies and bullets back, and spawn a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Bomb", "Normal throwable bomb"},
	{"Explosive Diarrhea", "Isaac quickly spawns 5 lit bombs"},
}

EID.descriptions[languageCode].itemPoolFor = "Pool for Item:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Treasure", "Shop", "Boss", "Devil", "Angel", "Secret", "Library", "Shell Game", "Golden Chest", "Red Chest", "Beggar", "Demon Beggar", "Curse", "Key Master", "Battery Bum", "Mom's Chest", "Greed Treasure", "Greed Boss", "Greed Shop", "Greed Devil", "Greed Angel", "Greed Curse", "Greed Secret", "Crane Game", "Ultra Secret", "Bomb Bum", "Planetarium", "Old Chest", "Baby Shop", "Wooden Chest", "Rotten Beggar",
}

EID.descriptions[languageCode].VoidShopText = "If absorbed right after pickup, gain:"
EID.descriptions[languageCode].VoidOptionText = " will be absorbed instead"
EID.descriptions[languageCode].VoidNames[2] = "{1} Fire rate"

EID.descriptions[languageCode].spindownError = "Item disappears"

EID.descriptions[languageCode].BlankCardEffect = "Blank Card effect:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Hold {{CONFIG_BoC_Toggle}} to show description)"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Will change back to Glowing Hourglass next floor"

EID.descriptions[languageCode].FalsePHDHeart = "Spawns 1 {{BlackHeart}} Black Heart"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} +0.6 Damage"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} +1.2 Damage"

EID.descriptions[languageCode].ExperimentalPillPHD = "No stat decrease"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "No random stat increase"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Instead, consumes the key and spawns 6 items from random pools"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} WARNING {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "Achievements are disabled!#In order to enable progression and achievements, you first need to kill Mom (Depths II) without any mods enabled.#(If you've defeated Mom, this message is a bug and can be ignored)#(This warning can be disabled in the config)"
EID.descriptions[languageCode].OldGameVersionWarningText = "EID is updated for the newest Steam version#Your game version is not officially supported, so some descriptions and features will be inaccurate#(This warning can be disabled in the config)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Modded items could make the crafting recipe calculation inaccurate!#Install REPENTOGON for improved modded recipe support#(This warning can be disabled in the config)"


-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
local repConditions = {
	["Tainted Revive"] = "{1} simply revives",
	
	["5.100.135 (Hard Mode)"] = {"1-2 coins", "1 coin", "2-3 coins", "2 coins"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.642"] = "Single use for {1}", -- Magic Skin + Lost
	["5.100.240"] = "{1} keeps the stat changes when he drops it", -- Experimental Treatment + Tainted Isaac
	["5.100.644"] = "{1} keeps the stat increase when he drops it", -- Consolation Prize + Tainted Isaac
	
	["5.100.549"] = "{1} simply gets ↑ {{Tears}} +0.4 Fire rate on pickup", -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = "Works for {1}, letting him survive 4 hits", -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = "{1} gains 1 Broken Heart, fatal hits grant 1 Broken Heart, and he dies at 3 Broken Hearts", -- Heartbreak + Normal Keeper
	["5.100.694 (Tainted Keeper)"] = "{1} gains 1 Broken Heart and dies at 2 Broken Hearts#{{Warning}} {1} will die in one hit after taking this item", -- Heartbreak + Tainted Keeper
	
	["5.100.201"] = "Refills {1}'s charge on pickup", -- Iron Bar + Notched Axe
	["5.350.172"] = "{1} removes the teleportation effect", -- Cursed Penny + Black Candle
	["5.100.188"] = "Deals 7.5 damage as {1}", -- Cain + Abel
	["5.100.360"] = "Deals 100% damage as {1}", -- Lilith + Incubus
	["5.100.501"] = "{1} can gain additional coin containers#Health up items can grant an extra container per 25 coins", -- Greed's Gullet (Health up bug)
	["5.100.501 (Deep Pockets)"] = "+1 container for every 100 coins past 99", -- Greed's Gullet + Deep Pockets
	["5.350.156"] = "+1 Coin container for {1}", -- Mother's Kiss
	["5.100.230 (Keeper)"] = "{1} is left with 1 coin container", -- Abaddon
	["5.100.230 (Bethany)"] = "{1} is left with half a heart", -- Abaddon
	["5.100.230 (Tainted Bethany)"] = "{1} doesn't lose her blood charges", -- Abaddon
	
	["5.100.245"] = "Removes the fire rate penalty of {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["5.100.245 (Keeper)"] = "Fire rate up and decreased tear spread for {1}", -- 20/20 + Keeper
	["20/20"] = "No fire rate penalty with {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["5.100.705"] = "Temporary +1 damage up for each bullet/enemy", -- Dark Arts + Dark/Tainted Judas
	["5.100.205 (Tainted Magdalene)"] = "Allows infinite usage of Yum Heart", -- Sharp Plug + Tainted Magdalene
	["Ice Tears"] = "Freezing an enemy doesn't count as killing", -- Uranus Anti-Synergy
	["5.100.45"] = "{{HalfHeart}} Heals other players for half a heart", -- Yum Heart (Co-Op)
	
	["5.100.344"] = {"{{BlackHeart}} +1 Black Heart#{{Bomb}} Spawns 3 bombs"}, -- Match Book (Greed)
	["5.300.74"] = {"Teleports Isaac to the first room of the floor"}, -- The Moon? (Greed)
	["5.100.416"] = {"{{Coin}} Increases the coin cap to 999"}, -- Deep Pockets (Greed)
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)




-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Donation Machine", "Next achievement at {1} coins, {2} coins remaining#{{Luck}} 2% chance for +1 Luck when donating#{{AngelRoom}} Donating 10 coins increases Angel Room chance"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Greed Donation Machine", "Next achievement at {1} coins, {2} coins remaining"}
end
