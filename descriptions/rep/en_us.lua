------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
------------------------------------------------------------------

-- Last Update: 21.07.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning

local repCollectibles={
	[5] = {"5", "My Reflection", "Gives tears a boomerang effect#↑ +1.5 Range up#↑ +60% additional Range up#↑ +0.6 Shot Speed up#↑ +1 Tear Height"}, -- My Reflection
	[6] = {"6", "Number One", "↑ +1.5 Tears up#↓ -1.5 Range down#↓ -20% additional Range down#↑ +0.76 Tear Height"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ +1 Health up#↑ +0.3 Damage up#↑ +50% Damage Multiplier#↑ +1.5 Range up#↑ +0.3 Speed up#↑ +0.5 Tear Height#Full health!"},
	[13] = {"13", "The Virus", "Poison touch#↑ +0.2 Speed up"}, -- The Virus
	[14] = {"14", "Roid Rage", "↑ +0.3 Speed up#↑ +1.5 Range up#↑ +0.5 Tear Height"}, -- Roid Rage
	[18] = {"18", "A Dollar", "+100 Coins"}, -- A Dollar
	[22] = {"22", "Lunch", "↑ +1 Health up#Heals one heart"}, -- Lunch
	[23] = {"23", "Dinner", "↑ +1 Health up#Heals one heart"}, -- Dinner
	[24] = {"24", "Dessert", "↑ +1 Health up#Heals one heart"}, -- Dessert
	[25] = {"25", "Breakfast", "↑ +1 Health up#Heals one heart"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ +1 Health up#Heals one heart"}, -- Rotten Meat
	[29] = {"29", "Moms Underwear", "↑ +1.5 Range up#↑ +0.5 Tear Height#Spawns 3-6 Blue Flies"}, -- Moms Underwear
	[30] = {"30", "Mom's Heels", "↑ +1.5 Range up#↑ +0.5 Tear Height#Touched enemies take 12 damage"}, -- Mom's Heels
	[31] = {"31", "Mom's Lipstick", "↑ +2.25 Range up#↑ +0.5 Tear Height#Spawns 1 random heart"}, -- Mom's Lipstick
	[40] = {"40", "Kamikaze!", "Causes a big explosion at the player's location#Deals 185 damage"}, -- Kamikaze!
	[42] = {"42", "Bob's Rotten Head", "Throwable poison bomb#Deals 185 + your damage#Creates poison cloud"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport", "Teleports Isaac into a random room except I AM ERROR rooms#Influence direction a bit by moving in desired direction"}, -- Teleport
	[45] = {"45", "Yum Heart", "Heal 1 red heart#Also heals other players for half a heart"}, -- Yum Heart
	[46] = {"46", "Lucky Foot", "↑ +1.0 Luck up#Better chance to win while gambling#Increases room clearing drop chance#Turns some bad pills into good ones"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Magnetic attraction for Pick-ups#Opens chests remotely, ignoring damage of spike chests"}, -- Magneto
	[55] = {"55", "Mom's Eye", "Chance to shoot a tear backwards"}, -- Mom's Eye
	[62] = {"62", "Charm of the Vampire", "↑ +0.3 Damage up#Heals half a heart every 13 enemies killed"}, -- Charm of the Vampire
	[64] = {"64", "Steam Sale", "-50% on shop items#Getting this item multiple times reduces the price further"}, -- Steam Sale
	[67] = {"67", "Sister Maggy", "Normal tear familiar#Deals 6 Damage per tear"}, -- Sister Maggy
	[70] = {"70", "Growth Hormones", "↑ +1.0 Damage up#↑ +0.2 Speed up"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ +0.3 Speed up#↑ +1.5 Range up#↑ Size down"}, -- Mini Mush
	[72] = {"72", "Rosary", "+3 Soul Hearts#↑ 0.5 Tears up#Bible is more common"}, -- Rosary
	[77] = {"77", "My Little Unicorn", "Invincibility#20 contact damage"}, -- My Little Unicorn
	[79] = {"79", "The Mark", "↑ +1.0 Damage up#↑ +0.2 Speed up#+1 Black Heart"}, -- The Mark
	[80] = {"80", "The Pact", "↑ +0.5 Damage up#↑ +0.7 Tears up#+2 Black Hearts"}, -- The Pact
	[83] = {"83", "The Nail", "+ Half Black heart#↑ +2.0 Damage up#↓ -0.18 Speed down#Deal contact Damage#Crush rocks"}, -- The Nail
	[98] = {"98", "The Relic", "Spawns 1 Soul heart every 7-8 rooms"}, -- The Relic
	[101] = {"101", "The Halo", "↑ +1 Health up#↑ +0.3 Damage up#↑ +0.2 Tears up#↑ +0.38 Range up#↑ +0.3 Speed up#↑ +0.5 Tear Height"}, -- The Halo
	[106] = {"106", "Mr. Mega", "↑ Bomb damage x1.85#+5 Bombs"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "Chance to shoot Freezing Tears#↑ +0.38 Range up#↑ +0.5 Tear Height"}, -- Mom's Contacts
	[121] = {"121", "Odd Mushroom (Large)", "↑ +1 Empty heart container#↑ +1.0 Damage up#↑ +0.38 Range up#↓ -0.2 Speed down#↑ +0.5 Tear Height"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monster Manual", "Spawns random familiar#Lasts for current floor"}, -- Monster Manual
	[129] = {"129", "Bucket of Lard", "↑ +2 heart container#↓ -0.2 Speed down#Heals half a heart"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ +1 Health up#↑ +0.3 Damage up#Heals 1 red heart"}, -- Stigmata
	[139] = {"139", "Mom's Purse", "You can now hold 2 trinkets#Spawns 1 random trinket"}, -- Mom's Purse
	[140] = {"140", "Bob's Curse", "Poison bombs#+5 bombs#Bombs leave a poison cloud"}, -- Bob's Curse
	[147] = {"147", "Notched Axe", "Break rocks and damage enemies on swing#Hitting with the axe reduces its charge#Charge refills on stage transition"}, -- Notched Axe
	[148] = {"148", "Infestation", "Spawn 2-6 flies when you get hit"}, -- Infestation
	[149] = {"149", "Ipecac", "Explosive poison tears#↑ +40 Damage up#↓ -0.2 Shot Speed down#↓ Tears down"}, -- Ipecac
	[152] = {"152", "Technology 2", "Permanent laser attack!#Laser deals 13% of your damage#↓ Tears down by 33%"}, -- Technology 2
	[158] = {"158", "Crystal Ball", "Reveal full map#Drops random Card or soul heart#While held:#↑ +15% Planetatium chance#100% if a treasure room was skipped"}, -- Crystal Ball
	[171] = {"171", "Spider Butt", "Slows down enemies for 4 seconds#10 Damage to all enemies#Enemies killed with it spawn blue spiders"}, -- Spider Butt
	[176] = {"176", "Stem Cells", "↑ +1 Health up#↑ +0.16 Shot Speed up#Heals 1 red heart"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} {{ColorOrange}}Throwable{{CR}}#Leaves pool of creep at the thrown location"}, -- Holy Water
	[182] = {"182", "Sacred Heart", "Homing tears#↑ +1 Health up#↑ 230% + 1 Damage up#↓ -0.4 Tears down#↓ -0.25 Shot Speed down#↑ +0.5 Range up"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "Grants flight#↑ +1 Health up#Heals 1 red heart"}, -- Holy Grail
	[188] = {"188", "Abel", "Mirrors your movement#Shoots towards the player#Deals 3.5 damage per shot#7.5 Damage if you play Cain"}, -- Abel
	[192] = {"192", "Telepathy for Dummies", "Homing tears for current room#↑ +3 Range up"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ +1 Health up#↑ +0.3 Damage up#Heals 1 red heart"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ +0.16 Shot speed up#+1 card#+15% Planetarium chance"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ +0.5 Damage up#↑ +0.38 Range up.#↑ +0.5 Tear Height"}, -- Jesus Juice
	[203] = {"203", "Humbling Bundle", "Chance to spawn the double version of pickups"}, -- Humbling Bundle
	[205] = {"205", "Sharp Plug", "- half Heart = Charges one slot of your active item when pressing space"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ +1 Damage up#↑ +0.33 Tears up#Your Head is now an orbital#You will shoot from the head#The head deals 105 contact damage"}, -- Guillotine
	[211] = {"211", "Spider Baby", "Spawn 3-5 spiders when getting hit"}, -- Spider Baby
	[214] = {"214", "Anemic", "↑ +1.5 Range up#Leave creep on floor when getting hit"}, -- Anemic
	[218] = {"218", "Placenta", "↑ +1 Health up#Heals 1 red heart#Regenerate health slowly"}, -- Placenta
	[224] = {"224", "Cricket's Body", "↓ -20% Range down#Tears split up in 4 on hit#Splitted tears deal half damage#↑ -1 tear delay that can go below capped value"}, -- Cricket's Body
	[228] = {"228", "Mom's Perfume", "Chance to shoot fearing tears#↑ -1 tear delay that can go below capped value"}, -- Moms Perfume
	[230] = {"230", "Abaddon", "↑ +1.5 Damage up#↑ +0.2 Speed up#Fear tears#Converts all red heart container into Black hearts#+2 Black hearts"}, -- Abaddon
	[232] = {"232", "Stop Watch", "Permanent slow effect for enemies#↑ +0.3 Speed up"}, -- Stop Watch
	[240] = {"240", "Experimental Treatment", "↑ Gain 4 random Stat Ups and ↓2 Stat Downs"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Doubles all your shots#↓ -25% Damage"}, -- 20/20
	[248] = {"248", "Hive Mind", "Blue Spiders/flies deal double damage#Spider/fly based familiars become stronger"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ +1 Luck up#↑ +1 Health up#Heals 1 red heart"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ +1 Damage up#↑ +1.5 Range up#!!! Applies only for the left eye"}, -- Blood Clot
	[256] = {"256", "Hot Bombs", "Burning bombs#+5 Bombs##You can no longer take fire damage#Bombs deal contact damage"}, -- Hot Bombs
	[261] = {"261", "Proptosis", "↑ +0.5 Damage up#↓ Dealt damage decreases the longer the tear stays airborne#300% Damage at point blank range"}, -- Proptosis
	[262] = {"262", "Missing Page 2", "+1 black heart#When down to 1 Heart, damages all enemies in the room#Black hearts and Necronomicon effects deal double damage"}, -- Missing Page 2
	 
	[263] = {"263", "Clear Rune", "Copies effects of held rune or soul stone#Drops 1 random rune on picked up"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "Bob's Brain", "Throwable bomb familiar#The explosion deals 100 Damage#The Damage ignores armor"}, -- Bob's Brain
	[274] = {"274", "Best Bud", "When getting hit, gain one midrange orbital#Orbital deals 150 damage per second"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "Shoots a brimstone laser#Shot deals 2 damage per tick, for a total of 20 damage"}, -- Lil Brimston
	[276] = {"276", "Isaac's Heart", "Gain an invulnerable body#!!! When the heart familiar gets hit you take damage#Familiar charges up when firing, releasing a burst of tears when releasing"}, -- Isaac's Heart
	[278] = {"278", "Dark Bum", "!!! Converts:#1,5 Red hearts into 1 soul/black heart, a spider, a pill card or rune"}, -- Dark Bum
	[280] = {"280", "Sissy Longlegs", "Randomly spawns blue spiders when in a hostile room#Charms enemies it comes in contact with"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Reroll all pedestals, stats, pickups and all your held passive items#Duplicates 1 random pickup in room#Restarts current room and respawns and rerolls its enemies#Rerolls rocks in room"}, -- D100
	[285] = {"285", "D10", "Reroll all enemies in the room#Tries to reroll them into enemies with similar max HP"}, -- D10
	[287] = {"287", "Book of Secrets", "Grants {{Collectible54}}Treasure Map, {{Collectible21}}Compass or {{Collectible246}}Blue Map for current floor when used#Only grants mapping effects you don't have already#If all effects are active, grants {{Collectible76}}X-Ray Vision"}, -- Book of Secrets
	[288] = {"288", "Box of Spiders", "Spawn 4-8 blue spiders"}, -- Box of Spiders
	[289] = {"289", "Red Candle", "Throw red fire#The flame persists until it has dealt 23 damage 5 times or after 10 seconds"}, -- Red Candle
	[291] = {"291", "Flush!", "!!! Insta kills Poop enemies & bosses!#Turns enemies into poop#Extinguishes fire places#Turns lava-filled pits into walkable ground"}, -- Flush!
	[292] = {"292", "Satanic Bible", "+1 Black heart#When used before a boss fight, the boss room item will be a devil deal"}, -- Satanic Bible
	[294] = {"294", "Butter Bean", "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"}, -- Butter Bean
	[295] = {"295", "Magic Fingers", "Damages the whole room with 2x the player damage + 10 #Price: 1 coin"}, -- Magic Fingers
	[296] = {"296", "Converter", "!!! Convert:#1 Soul/Black heart into 1 red heart"}, -- Converter
	[297] = {"297", "Pandora's Box", "!!! SINGLE USE !#!!! Drops things based on floor its activated on:#B1: 2 Soul Hearts#B2: 2 keys and bombs#C1: 1 Boss item#C2: B1+C1#D1: 4 Soul hearts#D2: 20 Coins#W1: 2 Boss items#W2: Bible#Sheol: 1 Devil item + Black heart#Cat: 1 Angel item + Soul heart#Chest: 1 Coin#Home: Red Key"}, -- Pandora's box
	[300] = {"300", "Aries", "↑ +0.25 Speed up#Touching enemies hurts them#Running fast enough will prevent contact damage"}, -- Aries
	[307] = {"307", "Capricorn", "↑ +1 Health / Key / Bomb / Coin#↑ +0.5 Damage up#↑ +0.1 Speed up#↑ +0.75 Range up#↑ -1 Tear delay that can go below capped value"}, -- Capricorn
	[308] = {"308", "Aquarius", "Leave trail of creep#Creep deals 66% your damage per second#Creep synergizes with tear effects"}, -- Aquarius
	[314] = {"314", "Thunder Thighs", "↑ +1 Health up#↓ -0.4 Speed down#Heals 1 red heart#Destroy rocks when walking over them"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Magnetic tears#Affects enemies, pickups and trinkets#Items will be attracted to where the tear lands"}, -- Strange Attractor
	[320] = {"320", "???'s Only Friend", "Controllable Fly#Deals 3.5 contact damage per tick"}, -- ???'s Only Friend
	[326] = {"326", "Breath of Life", "Hold down space till chargebar is empty for invincibility#Beams of light will strike enemies that touch you when invincible#!!! Don't hold it for too long!"}, -- Breath of Life
	[328] = {"328", "The Negative", "↑ +1.0 Damage up#Damages all enemies in the room when getting hit and at half a red heart or none"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ Very high Tears up: (fire rate x 5.5)#↓ -80% Damage down#Drastically reduces knockback"}, -- Soy Milk
	[331] = {"331", "Godhead", "Homing tears#↑ +0.5 Damage up#↑ +0.5 Range up#↓ -0.3 Tears down#↓ -0.3 Shot Speed down#↑ +0.8 Tear Height#Tears gain a damaging aura"}, -- Godhead
	[336] = {"336", "Dead Onion", "Piercing + spectral tears#↓ -1.5 Range down#↓ -0.4 Shot Speed down#↑ +50% Tear size"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ +1.5 Range up#↑ +0.16 Shot Speed up#+1 Black Heart#↑ +0.5 Tear Height"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ +1 Health up#↑ +0.7 Tears up#↓ -16% Shot Speed down#Heals 1 red heart"}, -- Blue Cap
	[344] = {"344", "Match Book", "+1 Black Heart#Spawns 2-3 Bomb pickups#Spawns the Match Stick {{Trinket41}} Trinket"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ +1.0 Damage up#↑ +1.5 Range up#↑ +0.5 Tear Height"}, -- Synthoil
	[346] = {"346", "A Snack", "↑ +1 Health up#Heals 1 red heart"}, -- A Snack
	[350] = {"350", "Toxic Shock", "At the start of every room every enemy gets a poison effect#Grants immunity for toxic clouds"}, -- Toxic Shock
	[352] = {"352", "Glass Canon", "Fires one large piercing spectral tear ((DMG+1) X 10)#When you take damage:#↓All damage to you deals full 2 hearts#↑+ 1.5 Range"}, -- Glass Canon
	[355] = {"355", "Mom's Pearl", "↑ +0.38 Range up#↑ +1 Luck up#+1 Soul Heart#↑ +0.5 Tear Height"}, -- Mom's Pearl
	[360] = {"360", "Incubus", "Shoots the same tears as Isaac in terms of stats and effects#Deals 100% your damage when playing as Lilith#Deals 75% your damage otherwise"}, -- Incubus
	[366] = {"366", "Scatter Bombs", "+5 bombs#Causes your bombs to explode into 4-5 tiny bombs"}, -- Scatter Bombs
	[369] = {"369", "Continuum", "↑ +3.0 Range up#↑ +1.5 Tear Height#Tears travel through walls and appear out of the opposite wall"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ +0.7 Tears up#↑ +1.5 Range up#↑ +0.5 Tear Height#Spawns 3 random hearts when picked up"}, -- Mr. Dolly
	[372] = {"372", "Charged Baby", "Random chance to drop a micro battery or freeze all enemies in the room#Chance to add one charge to your spacebar item"}, -- Charged Baby
	[374] = {"374", "Holy Light", "Random chance to fire a Holy tear, which will spawn a beam of light on hit#The beam deals 3x your damage"}, -- Holy Light
	[375] = {"375", "Host hat", "20% chance to block tears#Grants explosion immunity"}, -- Host hat
	[376] = {"376", "Restock", "Shops instantly restock their items when you buy them#Restocked items slowly increase in price again"}, -- Restock
	[382] = {"382", "Friendly Ball", "Can be thrown at enemies to capture them#Next usage will respawn the same enemy as a friendly companion#Walking over the ball after capture will instantly recharge the item"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "Will launch and slide around the room#Deals 5-20 contact damage per hit depending on charge duration"}, -- Lil Gurdy
	[389] = {"389", "Rune Bag", "Drops a random rune every 7-8 rooms#Can also drop Soul Stones"}, -- Rune Bag
	[393] = {"393", "Serpent`s Kiss", "Random chance to shoot poison tears#Poison enemies on contact#Enemies killed with contact poison have a 20% chance to drop a black heart"}, -- Serpent`s Kiss
	[394] = {"394", "Marked", "Fire tears automatically directed at a red target on the ground which is controlled by the player#↑ +0.7 Tears up#↑ +3.0 Range up#↑ +0.3 Tear Height#Familiars shoot towards the target"}, -- Marked
	[395] = {"395", "Tech X", "Gain the ability to charge and fire a laser ring that travels across the room#Damage based on the charge progress#100% damage on full charge"}, -- Tech X
	[397] = {"397", "Tractor Beam", "Isaac's tears now travel directly forwards following a beam of light, but will also move sideways based on your player movement#↑ +0.5 Tears up#↑ +1.5 Range up#↑ +0.16 Shot Speed up#↑ +0.5 Tear Height"},
	[399] = {"399", "Maw of the Void", "After firing tears for 3 seconds, a red cross appears on Isaac's head. Upon releasing the fire button, creates a black brimstone ring"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Chance to fire sticky bomb tears#Sticky tears deal regular tear damage periodically"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Blocks projectiles#If hit, it will fart, which will charms, poison or knockback enemies#The farts deal 5-6 damage"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Rerolls enemies and pickup it comes in contact with"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Boost one of your stats depending on the color of the aura around you#When you take damage, you will get a new aura#{{ColorRed}}Red{{CR}} = +4.0 Damage#{{ColorBlue}}Blue{{CR}} = -4 Tear Delay#{{ColorYellow}}Yellow{{CR}} = +0.5 Speed up#{{ColorOrange}}Orange{{CR}} = +3.0 Range up, +1 Tear height"},
	[408] = {"408", "Athame", "When you take damage, a black brimstone ring will appear around Isaac"}, -- Athame
	[416] = {"416", "Deep Pockets", "Spawns 1-3 coins if a room didn't yield a reward#Increases coin cap to 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bounces around the room with a damaging aura, dealing 7.5-10 damage every second#↑ +50% damage while standing in the aura"}, -- Succubus
	[421] = {"421", "Kidney Bean", "Applies charm effect to any enemies in close range"}, -- Kidney Bean
	[426] = {"426", "Obsessed Fan", "Follows your exact movement on a 0.66 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Follows your movement pattern on a 0.66 second delay#Fires tears at nearby enemies that deal damage equal to your damage"}, -- papa Fly
	[431] = {"431", "Multidimensional Baby", "Follows your movement pattern on a 0.66 second delay#Tears that pass through it will split up and gain a speed boost"},
	[437] = {"437", "D7", "Respawn all enemies of the room#Allows you to farm room clear rewards"}, -- D7
	[440] = {"440", "Kidney Stone", "Randomly while firing you will stop firing and release a burst of tears and a kidney stone"}, -- Kidney Stone
	[442] = {"442", "Dark Princes Crown", "!!! While at 1 full red heart:#↑ +1.5 Range up#↑ +2.0 Tears up#↑ +0.2 Shot Speed up#(Doesnt work with characters without red HP)"}, -- Dark Princes Crown
	[444] = {"444", "Lead Pencil", "Every 15 tears fired, you fire a cluster of tears"}, -- Lead Pencil
	[448] = {"448", "Shard of Glass", "When taking red heart damage, spew red tears#Control direction with shooting buttons#When active, deals half a heart of damage every 20 seconds#Stop bleeding by healing red hp"}, -- Shard of Glass
	[451] = {"451", "Tarot Cloth", "Drops a random card or rune on pickup#Some cards gain an extra or doubled effect"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "Bone tears#Tears shatter into 1-3 smaller bone shards upon hitting anything#↑ +0.38 Range up#↑ +1.0 Tear height"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Coin", "↑ +0.38 Range up#Spawns a lucky penny"},
	[456] = {"456", "Midnight Snack", "↑ +1 Health up#Heals 1 red heart"}, -- Midnight Snack
	[464] = {"464", "Glyph of Balance", "+2 Soul Hearts#Champion enemies and room drops appear more frequently#Priority of spawned pickups depends on what the player is missing most of"}, -- Glyph of Balance
	[472] = {"472", "King Baby", "Other familiars follow it and shoot automatically at enemies#Stops moving when you are shooting#Will teleport back to you when you stop shooting"}, -- King Baby
	[474] = {"474", "broken Glass Canon", "Turns into Glass Canon when used"}, -- broken Glass Canon
	[489] = {"489", "D Infinity", "Random Dice-effect each usage#Press the Drop button to cycle through the dices"}, -- D Infinity
	[491] = {"491", "Acid Baby", "Drops a random pill every 7 rooms#Using a pill poisons all enemies in the room"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "For every half empty heart container:#↑ Damage up calculated with ((2 * MissingHalfHearts) ^ 1.6) * 0.1"}, -- Adrenaline
	[494] = {"494", "Jacobs Ladder", "Tears spawn one spark of electricity on impact#Sparks deal half your damage#Sparks can jump between enemies"}, -- Jacobs Ladder
	[503] = {"503", "Little Horn", "Chance to fire tears that summon a Big Horn hand#The hand kills enemies instantly and deals damage to bosses#Running into enemies will deal 3.5 damage to them"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Spawns a fly turret that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 1/3rd second when enemy is nearby#Deals 3.5 damage per tear#Deals 30 contact damage per second"}, -- Bloodshot Eye
	[523] = {"523", "Moving Box", "When used, stores up to 10 Pick-Ups from the current room#Using it again will put them back on the floor again#This allows you to move things between rooms"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Tears will be connected with beams of electricity#Electricity damage equals 1/3 of your damage"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "Tears fly in an arc#Tears burst into smaller tears on impact#↓ Tears down#↑ +50% Damage up#↑ +1 additional Damage up"}, -- Haemolacria
	[541] = {"541", "Marrow", "+1 Bone Heart#Spawns 3 Red Hearts#Chance to spawn a {{Trinket167}} Polished Bone when a bone heart is depleated"}, -- Marrow
	[543] = {"543", "Hallowed Ground", "Spawn white poop when you get hit#(White poop has a ↑ Tears and Damage up aura, grants homing tears and can block damage)"}, -- Hallowed Ground
	
	[553] = {"553", "Mucormycosis", "Chance to fire sticky spore tears#Spores blow up after 2.5 seconds, dealing damage, poison nearby enemies and releases more spores"}, --  Mucormycosis
	[554] = {"554", "2Spooky", "Fears enemies in a small radius around you"}, --  2Spooky
	[555] = {"555", "Golden Razor", "Converts 5 coins into +1.2 Damage up for the current room"}, --  Golden Razor
	[556] = {"556", "Sulfur", "Grants Brimstone {{Collectible118}} for the current room"}, --  Sulfur
	[557] = {"557", "Fortune Cookie", "Gives Isaac a fortune, soul heart, tarot card, or trinket"}, --  Fortune Cookie
	[558] = {"558", "Eye Sore", "Chance to fire 1-2 extra tears in random directions"}, --  Eye Sore
	[559] = {"559", "120 Volt", "Repeatedly zaps close enemies#Electricity deals 75% of your damage"}, --  120 Volt
	[560] = {"560", "It Hurts", "Releases a ring of 10 tears when getting hit#↑ +1.2 Tears up for first hit#↑ +0.4 for each additional hit"}, --  It Hurts
	[561] = {"561", "Almond Milk", "↑ Fire Rate x 4#↓ Damage x 0.3#Tears gain random worm trinket effects"}, --  Almond Milk
	[562] = {"562", "Rock Bottom", "Prevents stats from being lowered for the rest of the run"}, --  Rock Bottom
	[563] = {"563", "Nancy Bombs", "+5 bombs#Bombs explode with a random bomb effect"}, --  Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ +0.5 Tears up#↑ +0.2 Shot Speed up"}, --  A Bar of Soap
	[565] = {"565", "Blood Puppy", "Familiar that chases enemies#After killing enough enemies, it becomes more powerful but will also try to hurt you#Attacking it returns it to normal"}, --  Blood Puppy
	[566] = {"566", "Dream Catcher", "+1 half Soul heart when entering a new floor#Displays upcoming Treasure Room item and boss in the stage transition Nightmare"}, --  Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ +0.4 Tears up for every room cleared without taking damage#Stacks up to 5 times"}, --  Paschal Candle
	[568] = {"568", "Divine Intervention", "Double tapping a fire key creates a shield#Shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"}, --  Divine Intervention
	[569] = {"569", "Blood Oath", "Stabs you at the beginning of each floor, draining all but one half red heart#Increases stats for the floor:#↑ Damage + 0.15 * HeartsLost^2#↑ Speed + 0.05*HeartsLost"}, --  Blood Oath
	[570] = {"570", "Playdough Cookie", "Grants multicolored tears with different status effects"}, --  Playdough Cookie
	[571] = {"571", "Orphan Socks", "Prevents damage from creep and floor spikes#↑ +0.3 Speed up#↑ +2 Soul hearts"}, --  Orphan Socks
	[572] = {"572", "Eye of the Occult", "Controllable tears#↑ +1 Damage up#↑ +7.5 Range up#↓ -0.16 Shot Speed down"}, --  Eye of the Occult
	[573] = {"573", "Immaculate Heart", "+1 Red Heart container#↑ +20% Damage up#Full health#Chance to fire orbiting spectral tears"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Gain two circular auras that damage enemies#The inner aura deals more damage"}, --  Monstrance
	[575] = {"575", "The Intruder", "A familiar buried inside your head, firing 4 slowing tears#Upon taking damage, can exit the head"}, --  The Intruder
	[576] = {"576", "Dirty Mind", "Destroying poop spawns 1-4 friendly Dips#Dip type depends on the poop type"}, --  Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} ONE TIME USAGE {{Warning}}#Spawns a sword above your head, which doubles all item pedestals and Beggar rewards#Kills you at a random time when taking damage from an enemy after you used the item"}, --  Damocles
	[578] = {"578", "Free Lemonade", "Creates a large pool of yellow creep"}, --  Free Lemonade
	[579] = {"579", "Spirit Sword", "Instead of tears, Isaac swings a sword#Deals 3x your damage#Does a spin attack + projectile shot on charge up#Fire projectiles with normal swings on full health"}, --  Spirit Sword
	[580] = {"580", "Red Key", "Creates a new room adjacent to a viable wall, indicated by a door outline of a door#Rooms can be special rooms# A room outside the 13x13 floor map will teleport you to the I AM ERROR room"}, --  Red Key
	[581] = {"581", "Psy Fly", "Fly orbital familiar#Chases and deflects projectiles#Deals contact damage"}, --  Psy Fly
	[582] = {"582", "Wavy Cap", "↑ +0.75 Fire rate#↓ -0.03 Speed down#Distorts screen#Effect can be stacked"}, --  Wavy Cap
	[583] = {"583", "Rocket in a Jar", "+5 bombs#If walking, placed bombs turn into rockets that shoots in the walking direction"}, --  Rocket in a Jar
	[584] = {"584", "Book of Virtues", "Spawns an orbital Wisp familiar that fires spectral tears but can be destroyed#Can be combined with a second active Item to create themed wisps#Turns first Devil Room into an Angel Room"}, --  Book of Virtues
	[585] = {"585", "Alabaster Box", "Spawns three soul hearts and two angel room items#Must be charged by picking up soul hearts"}, --  Alabaster Box
	[586] = {"586", "The Stairway", "Spawns a ladder at the start of every floor, leading to a unique Angel Room item shop"}, --  The Stairway
	[587] = {"587", "Menorah (Unused but skripted)", "<Item does not exist>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Reveals the location of the Boss room {{BossRoom}}#Upon defeating a boss, activates XIX - The Sun {{Card20}}#Also fully recharges active item, and +3 damage and +1 luck for the rest of the floor"}, --  Sol
	[589] = {"589", "Luna", "Adds an extra Secret Room{{SecretRoom}} and Super Secret Room{{SuperSecretRoom}} to each floor#Secret Rooms contain a beam of light that give tears up for the current floor and give half a soul heart"}, --  Luna
	[590] = {"590", "Mercurius", "↑ +0.4 Speed up#Doors stay open after entering a room"}, --  Mercurius
	[591] = {"591", "Venus", "+1 red Heart container#Full health#Close enemies become charmed"}, --  Venus
	[592] = {"592", "Terra", "↑ +1.0 Damage up#Replaces tears with rocks#They deal variable damage#Can destroy obstacles#Increased knockback"}, --  Terra
	[593] = {"593", "Mars", "Dash by double-tapping the movement key#Becoming invulnerable and dealing 4x your damage#3 seconds cooldown"}, --  Mars
	[594] = {"594", "Jupiter", "+2 red Heart containers#↓ -0.3 Speed down#Build up Speed while standing still for up to +0.5 Speed#Release a poisoning gas cloud when moving again"}, --  Jupiter
	[595] = {"595", "Saturnus", "A circle surrounds you#Upon entering a room, 7 tears will orbit in it#Chance to catch enemy projectiles in orbit"}, --  Saturnus
	[596] = {"596", "Uranus", "Shoot ice tears, which slow enemies and freeze monsters they kill#Touching frozen enemies slide away and explode into 6 ice shards"}, --  Uranus
	[597] = {"597", "Neptunus", "Builds a massive tears bonus over 3 seconds while not firing##Shooting again will release stored tears#The tear bonus falls off as you fire"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ +0.7 Tears up#Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"}, --  Pluto
	[599] = {"599", "Voodoo Head", "Spawns an additional curse room {{CursedRoom}} each floor"}, --  Voodoo Head
	[600] = {"600", "Eye Drops", "↑ Decreases tear delay in your left eye by 28%"}, --  Eye Drops
	[601] = {"601", "Act of Contrition", "↑ 0.7 Tears up#+1 Eternal Heart#Allows Angel Rooms to appear even if a Devil deal has been taken before"}, --  Act of Contrition
	[602] = {"602", "Member Card", "Adds a trapdoor to every shop that leads to a second shop with a unique stock"}, --  Member Card
	[603] = {"603", "Battery Pack", "Spawns 2-4 batteries#Fully recharges your active item"}, --  Battery Pack
	[604] = {"604", "Mom's Bracelet", "Allows picking up and throwing rocks, TNT, poops, Hosts, and other obstacles#Allows carrying them between rooms"}, --  Mom's Bracelet
	[605] = {"605", "The Scooper", "Summons a Peeper familiar for the current room, which leaves a trail of red creep"}, --  The Scooper
	[606] = {"606", "Ocular Rift", "Chance to fire tears that create rifts where they land#Pulls in nearby enemies, pickups, and projectiles"}, --  Ocular Rift
	[607] = {"607", "Boiled Baby", "Familiar that fires chaotic bursts of tears in all directions#Deals 3.5 or 5.3 damage per tear"}, --  Boiled Baby
	[608] = {"608", "Freezer Baby", "Familiar that shoots petrifying tears#Freezes monsters upon killing them"}, --  Freezer Baby
	[609] = {"609", "Eternal D6", "Rerolls all items in the room#Items have a chance to disappear"}, --  Eternal D6
	[610] = {"610", "Bird Cage", "Familiar that leaps on an enemy on the first hit in the room#Deals 45 damage and releasing a rock wave#Chases enemies afterwards"}, --  Bird Cage
	[611] = {"611", "Larynx", "Makes you shout, damaging and pushing nearby enemies#Shout gets stronger the more charges the item has"}, --  Larynx
	[612] = {"612", "Lost Soul", "Soul familiar that dies in one hit, respawning at the start of the next floor#If it survives an entire floor, it spawns 3 soul, 2 eternal hearts, or items"}, --  Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Blood Bombs", "+1 red heart container#Heals 5 hearts#Bombs leave red creep#If the player has no bombs, one can be placed at the cost of half a heart"}, --  Blood Bombs
	[615] = {"615", "Lil Dumpy", "Dumpy familiar#When it takes damage, pushes, stuns or poisons nearby enemies"}, --  Lil Dumpy
	[616] = {"616", "Bird's Eye", "Chance to shoot fires that block enemy shots and deal contact damage#Max damage is 4x your damage"}, --  Bird's Eye
	[617] = {"617", "Lodestone", "Chance to fire tears that magnetize enemies#Will attract nearby pickups, projectiles and enemies"}, --  Lodestone
	[618] = {"618", "Rotten Tomato", "Chance to fire tears that Mark enemies#Marked enemies are attacked by other enemies"}, --  Rotten Tomato
	[619] = {"619", "Birthright", "Has a different effect for each character"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "Full health#↑ +21.6 Damage up#Damage up wears off over the next 3 minutes"}, --  Red Stew
	[622] = {"622", "Genesis", "{{Warning}} ONE TIME USAGE {{Warning}}#Removes all of Isaac's items and pickups#Teleports you to a unique bedroom with pickups, chests and a trapdoor#For every item lost, Treasure Rooms {{TreasureRoom}} show a set of 3 items to choose from"}, --  Genesis
	[623] = {"623", "Sharp Key", "+5 keys#Throw your key to deal damage, destroy obstacles, or open doors#Enemies killed with it have a chance to spawn the content of a chest, including items"}, --  Sharp Key
	[624] = {"624", "Booster Pack", "Spawns 5 random cards"}, --  Booster Pack
	[625] = {"625", "Mega Mush", "Gigantifies you for 30 seconds#Increases damage and range#Grants invulnerability and ability to crush enemies and obstacles#Effect persists between rooms"}, --  Mega Mush
	[626] = {"626", "Knife Piece 1", "First part of the knife familiar"}, --  Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Combined with Knife Piece 1 {{Collectible627}}, creates a knife familiar#Damages enemies#Can open a certain flesh door"}, --  Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} ONE TIME USAGE {{Warning}}#Takes you to a floor containing every item in the game#After taking an item, return to the room you came from"}, --  Death Certificate
	[629] = {"629", "Bot Fly", "Orbital that fires shielded tears"}, --  Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Splits enemies in the room into 2 smaller versions of themselves with much less health"}, --  Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ +2 Luck up#Makes you immune to burn, confusion, fear, poison, and toxic gas"}, --  Evil Charm
	[633] = {"633", "Dogma", "Grants flight and one-time Holy Mantle {{Collectible313}} effect#↑ +2.0 damage up#↑ +0.1 Speed up#If player has fewer than 6 hearts, heals him with combination of red and soul hearts"}, --  Dogma
	[634] = {"634", "Purgatory", "While in a room with enemies, spawns cracks on the ground#Walking over these cracks summons exploding ghosts"}, --  Purgatory
	[635] = {"635", "Stitches", "Passively spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and gains short invincibility#Teleporting onto things can damage or destroy them"}, --  Stitches
	[636] = {"636", "R Key", "{{Warning}} ONE TIME USAGE {{Warning}}#Teleports you back to the first floor of a new run#Items and pickups stay intact"}, --  R Key
	[637] = {"637", "Knockout Drops", "Chance to shoot a fist tear with extreme knockback and confusion effect"}, --  Knockout Drops
	[638] = {"638", "Eraser", "Throws an eraser that instantly kills an enemy#Prevents the enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"}, --  Eraser
	[639] = {"639", "Yuck Heart", "Grants a Rotten Heart upon use"}, --  Yuck Heart
	[640] = {"640", "Urn of Souls", "Spews a stream of flames#Gains charges each time an enemy dies"}, --  Urn of Souls
	[641] = {"641", "Akeldama", "Creates a chain of tears behind you while in combat#The tears deal 3.5 damage"}, --  Akeldama
	[642] = {"642", "Magic Skin", "Consumes 1 heart container or 2 soul hearts to spawn an item of the current item pool#Also grants a broken heart container that can never be filled#{{Warning}} Single Use item for The Lost"}, --  Magic Skin
	[643] = {"643", "Revelation", "Grants flight and 2 soul hearts#Shooting for 2.5 seconds will fire a holy laser when fire button is released"}, --  Revelation
	[644] = {"644", "Consolation Prize", "Increases your lowest stat#Drops either 3 coins, 1 bomb, or 1 key depending on what you have the least of"}, --  Consolation Prize
	[645] = {"645", "Tinytoma", "Teratoma orbital#Blocks shots#Deals contact damage#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after it's fully gone"}, --  Tinytoma
	[646] = {"646", "Brimstone Bombs", "+5 bombs#Bombs release 4 Brimstone lasers in the cardinal directions"}, --  Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Active items don't charge when clearing rooms#They charge by dealing damage to enemies#60 Damage = 1 charge"}, --  4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Fruity Plum", "Mini Baby Plum familiar#Propels itself diagonally around the room, firing tears behind itself"}, --  Fruity Plum
	[650] = {"650", "Plum Flute", "Summons friendly Baby Plum in the current room for 10 seconds"}, --  Plum Flute
	[651] = {"651", "Star of Bethlehem", "Familiar that slowly travels towards the Boss Room#Emits aura that grants +20% + 1 damage up, tears up and homing"}, --  Star of Bethlehem
	[652] = {"652", "Cube Baby", "Familiar that slides around when walked into#It slows and deals contact damage, freezing monsters it kills"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "While held, non-ghost enemies spawn small red ghosts on death#On use, causes the ghosts to explode"}, --  Vade Retro
	[654] = {"654", "False PHD", "Identifies all pills#+1 Black heart#Converts good pills into bad pills#↑ Stat down pills grant damage up#Other pills drop black hearts on use"}, --  False PHD
	[655] = {"655", "Spin to Win", "Adds spinning top orbital that blocks enemy shots#Deals 10.5 contact damage per second#When used,↑ +0.5 speed and greatly increases the rotation speed of orbitals"}, --  Spin to Win
	[656] = {"656", "Damocles", "<Item not obtainable>"}, -- Damocles
	[657] = {"657", "Vasculitis", "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"}, --  Vasculitis
	[658] = {"658", "Giant Cell", "Spawn micro-Isaacs when taking damage#They chase and shoot at nearby enemies"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ +1.5 Range up#Increases tear size"}, --  Tropicamide
	[660] = {"660", "Card Reading", "Spawns two portals at the beginning of each floor#Portals disappear when leaving the room#{{ColorRed}}Red: {{CR}}Boss room#{{ColorYellow}}Yellow: {{CR}}Treasure Room#{{ColorBlue}}Blue: {{CR}}Secret Room"}, --  Card Reading
	[661] = {"661", "Quints", "Spawns a stationary shooting familiar at the location where an enemy died#Up to 5 familiars"}, --  Quints
	[662] = {"662", "Pacifist (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Tooth and Nail", "Turn invincible every 6 seconds for 1 second#Flashes right before transition"}, --  Tooth and Nail
	[664] = {"664", "Binge Eater", "+1 red Heart Container#Item pedestals periodically switch between food items and the item they would hold otherwise#Picking up a food item grants temporary +3.6 damage boost and 2 small permanent stat ups"}, --  Binge Eater
	[665] = {"665", "Guppy's Eye", "Shows the contents of Chests, Sacks, and Fire Places before they're opened"}, --  Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Strawman", "Spawns Keeper as a second character#If he dies, he spawns blue spiders#Item gets removed afterwards"}, --  Strawman
	[668] = {"668", "Dad's Note", "Begins the sequence to access the Home floor#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss rooms turn into {{Card78}} Cracked Key"}, --  Dad's Note
	[669] = {"669", "Sausage", "↑ +1 Health up#↑ +1.33 Damage up#↑ +0.2 Speed up#↑ +1.2 Shot Speed up#↑ +0.16 Range up#↑ +1 Luck up"}, --  Sausage
	[670] = {"670", "Options?", "If a room grants a clear reward, there will be two different rewards to chose from#Taking one causes the other to disappear"}, --  Options?
	[671] = {"671", "Candy Heart", "Gives random permanent stat boost when healing with red heart pickups"}, --  Candy Heart
	[672] = {"672", "A Pound of Flesh", "Devil deals now cost coins#Shop items now cost health#Consumables in shops are free but surrounded by spikes"}, --  A Pound of Flesh
	[673] = {"673", "Redemption", "Grants 1 soul heart and +1.0 damage when entering a Devil Room and not taking an item"}, --  Redemption
	[674] = {"674", "Spirit Shackles", "On death, Isaac's ghost is chained to his dead body and he can continue to fight with half a heart#Return to life after 10 seconds#Must be recharged by picking up a soul heart"}, --  Spirit Shackles
	[675] = {"675", "Cracked Orb", "When taking damage, reveals random room on floor#Also unlocks doors that require keys#Can open Mega Satan door#Can reveal ultra secret room"}, --  Cracked Orb
	[676] = {"676", "Empty Heart", "When having an empty heart container at the start of a new floor, grants another one#Bone Hearts dont count"}, --  Empty Heart
	[677] = {"677", "Astral Projection", "When getting hit, stops time for 3 seconds#Isaac becomes a ghost and leaves his body#In ghost form gain flight, spectral tears and also negate next hit taken"}, --  Astral Projection
	[678] = {"678", "C Section", "Launch a baby attached via umbilical cord#Deals 3x contact damage#Baby shoots tears and walks when fire button is held#Returns when button is released"}, --  C Section
	[679] = {"679", "Lil Abaddon", "Familiar which shoots a mini Maw of the Void {{Collectible399}} attack"}, --  Lil Abaddon
	[680] = {"680", "Montezuma's Revenge", "While firing, charge up a short-ranged Brimstone#Shoots behind you"}, --  Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Deals contact damage and flies forward#Consumes pickups in its path#Each one will increase its size, damage, and spawn a Blue Fly#Every four pickups, it spawns a portal to an unexplored room"}, --  Lil Portal
	[682] = {"682", "Worm Friend", "Causes a tentacle to burst out of the ground#Can hold an enemy and deal damage"}, --  Worm Friend
	[683] = {"683", "Bone Spurs", "Enemies spawn floating bones on death#Bones block projectiles and deal contact damage"}, --  Bone Spurs
	[684] = {"684", "Hungry Soul", "Chance to spawn ghosts when killing an enemy#Ghosts chase enemies and deal contact damage#After 5 seconds, the ghost explodes, dealing 7 damage to nearby enemies#You don’t take damage from the explosion"}, --  Hungry Soul
	[685] = {"685", "Jar of Wisps", "Spawns random wisps that shoot various tears, block shots, and deal contact damage#Number of wisps spawned increases the more it's used"}, --  Jar of Wisps
	[686] = {"686", "Soul Locket", "Grants a permanent stat boost whenever you pick up a soul heart#Spawns a soul heart on pickup"}, --  Soul Locket
	[687] = {"687", "Friend Finder", "Spawns a random friendly monster that mimics Isaac's movements and attacks"}, --  Friend Finder
	[688] = {"688", "Inner Child", "+1 extra life#Respawn in current room with half a heart, massive size down, and +0.2 speed"}, --  Inner Child
	[689] = {"689", "Glitched Crown", "Item pedestals quickly cycle between 5 random items"}, --  Glitched Crown
	[690] = {"690", "Belly Jelly", "Causes enemies to bounce off of Isaac#Bouncing them against obstacles deals damage#Chance to deflect enemy projectiles"}, --  Belly Jelly
	[691] = {"691", "Sacred Orb", "Prevents low-quality items from spawning#Greatly increasing quality of items that will spawn"}, --  Sacred Orb
	[692] = {"692", "Sanguine Bond", "Spawns a special set of spikes in the Devil Room#Taking damage from the spikes can grant a reward:#35% 6 pennies#15% +0.5 Damage up#5% 2 black hearts#2% random item#1% Leviathan transformation"}, --  Sanguine Bond
	[693] = {"693", "The Swarm", "Grants 9 orbital flies which turn into Blue Flies after they block a shot#Spawns a new fly every room cleared"}, --  The Swarm
	[694] = {"694", "Heartbreak", "Grants 3 broken hearts#↑ +0.25 damage for every broken heart#Every fatal hit will add 2 more broken hearts#You die at 12 broken hearts"}, --  Heartbreak
	[695] = {"695", "Bloody Gust", "When taking damage, gain speed and tears up for the current floor"}, --  Bloody Gust
	[696] = {"696", "Salvation", "Grants halo that spawns beams of light on enemies inside it#The halo grows larger the more damage you've taken this floor"}, --  Salvation
	[697] = {"697", "Vanishing Twin", "Familiar that becomes a clone of the boss when entering the boss room#Defeating it drops an extra item#Clone is slower and has 75% of the original boss health"}, --  Vanishing Twin
	[698] = {"698", "Twisted Pair", "Two familiars that stand by your side#Fire tears equal to yours, but with only 37.5% of your damage"}, --  Twisted Pair
	[699] = {"699", "Azazel's Rage", "Build rage every time a room is cleared#After 4 rooms, fires a large Brimstone laser when entering the next room"}, --  Azazel's Rage
	[700] = {"700", "Echo Chamber", "When Isaac uses a card, pill, or rune, he also uses a copy of every card/pill/rune he used after picking up Echo Chamber"}, --  Echo Chamber
	[701] = {"701", "Isaac's Tomb", "Spawns an Old Chest at the start of every floor#Can contain soul hearts, trinkets or items from Angel rooms or Mom or Dad themed"}, --  Isaac's Tomb
	[702] = {"702", "Vengeful Spirit", "After taking damage, spawns an orbital wisp that lasts for the entire floor#Maximum of 6#They fire tears but do not block shots"}, --  Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Swaps between the current character and Esau Jr., who has 3 Black hearts, +2 damage and flight#Characters have independent items and health#{{Warning}} Dying as either character ends the run"}, --  Esau Jr.
	[704] = {"704", "Berserk!", "Berserk mode for 5 seconds:#↑ +0.4 Speed up#↑ Tears up#↑ +3.0 Damage up#Restricts attacks to a melee weapon"}, --  Berserk!
	[705] = {"705", "Dark Arts", "When used, gain ↑ +1.0 speed and ability to walk through enemies/bullets for 1 second#Shortly increases damage by 1 for each enemy touched#Damages touched enemies with 3x your damage"}, --  Dark Arts
	[706] = {"706", "Abyss", "Destroys all items in the room and spawns an attack fly familiar for each#Effects of fly depends on the items"}, --  Abyss
	[707] = {"707", "Supper", "+1 red Heart container#Heals one heart"}, --  Supper
	[708] = {"708", "Stapler", "↑ +1.0 damage#Prevents Isaac from firing tears from one eye"}, --  Stapler
	[709] = {"709", "Suplex!", "Allows you to dash into and pick up enemies or bosses, then slam them into the ground#Slam can be controlled#Slam deals 50 damage and spawns rock waves"}, --  Suplex!
	[710] = {"710", "Bag of Crafting", "Collects and holds up to 8 pickups#Holding the activate button crafts the pickups into an item#Quality of item is dependent on the quality of the pickups"}, --  Bag of Crafting
	[711] = {"711", "Flip", "Switch characters between Tainted Lazarus and Dead Tainted Lazarus"}, --  Flip
	[712] = {"712", "Lemegeton", "Spawns destroyable orbital item ghost#Effect of item is applied to the player#Items are chosen from current rooms item pool"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Holding down the fire button converts half a heart into destroyable familiars every 2 seconds#Activating converts the familiars back into hearts#Type of hearts change familiar behavior"}, --  Sumptorium
	[714] = {"714", "Recall", "Retrieves the Forgotten's body from any distance"}, --  Recall
	[715] = {"715", "Hold", "Preserves one poop bomb inside that can be used later"}, --  Hold
	[716] = {"716", "Keeper's Sack", "Gives range, speed, or damage up when buying things from shops#Spawns 3 coins and 1 key on pickup"}, --  Keeper's Sack
	[717] = {"717", "Keeper's Kin", "Rocks and props spawn 2 blue spiders when destroyed"}, --  Keeper's Kin
	[718] = {"718", "Keepers Robe (Cut item)", "<Item does not exist>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Keeper's Box", "Spawns a random shop item/pickup"}, --  Keeper's Box
	[720] = {"720", "Everything Jar", "Spawns certain pickups based on how many charges it has#If fully charged, it has a stronger random effect#Charge Rewards: 1:Poop 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Causes all future items to be 'glitched'#Grants them completely random effects"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "Chains down the nearest enemy for 5 seconds, preventing them from acting"}, --  Anima Sola
	[723] = {"723", "Spindown Dice", "Transforms all items in the room by decreasing their internal ID number by one"}, --  Spindown Dice
	[724] = {"724", "Hypercoagulation", "When getting hit by an enemy, drops a half or full red heart#Spawned hearts despawn after 1.5 seconds"}, --  Hypercoagulation
	[725] = {"725", "IBS", "When dealing damage, chance to trigger an effect:#Throw poop#Create buffing creep#Fart#Drop 5 live bombs"}, --  IBS
	[726] = {"726", "Hemoptysis", "Double-tapping a fire button to sneeze blood#Deals 150% your damage to enemies in front of you#Cooldown 1 second"}, --  Hemoptysis
	[727] = {"727", "Ghost Bombs", "+5 bombs#Bombs spawn ghosts that deal contact damage and explode after 10 seconds"}, --  Ghost Bombs
	[728] = {"728", "Gello", "Spawns a demon familiar that's attached to Isaac#Mimics Isaac's tears, stats and effects"}, --  Gello
	[729] = {"729", "Decap Attack", "Throws Isaac's head, while being able to fire tears at the spot it lands#Reactivating the item or stepping on the head reattaches it"}, --  Decap Attack
	
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["en_us"].collectibles)

EID.descriptions["en_us"].birthright ={
	{"Isaac", "", "All items cycle through two options"},
	{"Magdalene", "", "<No effect yet>"},
	{"Cain", "", "<No effect yet>"},
	{"Judas", "", "<No effect yet>"},
	{"???", "", "Soul hearts gained from health upgrades are doubled"},
	{"Eve", "", "Whore of Babylon is active regardless of health#Dead Bird is active without taking damage"},
	{"Samson", "", "Bloody Lust can gain 4 more damage boosts at the same +0.2 intervals, for a new maximum total of +14.0"},
	{"Azazel", "", "Azazel's Brimstone beam becomes much wider, like Mega Blast#No effect on damage"},
	{"Lazarus", "", "When dead, revive as Lazarus Risen#Lazarus Risen gains a slowly fading +21.6 damage bonus"},
	{"Eden", "", "Spawns 3 random items from random item pools#Only one can be taken"},
	{"The Lost", "", "Prevents items not beneficial to The Lost from spawning#Examples: ones that only give health, flight, and/or spectral tears or activate upon taking damage"},
	{"Lazarus Risen", "", "Grants a slowly fading +21.6 damage bonus"},
	{"Black Judas", "", "<No effect yet>"},
	{"Lilith", "", "<No effect yet>"},
	{"Keeper", "", "<No effect yet>"},
	{"Apollyon", "", "<No effect yet>"},
	{"The Forgotten", "", "The Soul is unchained and free to move"},
	{"The Forgotten Soul", "", "The Soul is unchained and free to move"},
	{"Bethany", "", "Activating an item using soul charges is sometimes free"},
	{"Jacob", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Esau", "", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Tainted Isaac", "", "Adds 4 more slots for passive items"},
	{"Tainted Magdalene", "", "Adds 1 more red heart that doesn't drain"},
	{"Tainted Cain", "", "The amount of pickups spawned from collecting an item is doubled"},
	{"Tainted Judas", "", "<No effect yet>"},
	{"Tainted ???", "", "Increases the maximum number of carried poops to 29"},
	{"Tainted Eve", "", "<No effect yet>"},
	{"Tainted Samson", "", "The berserk timer gains 3 seconds instead of 1 when Tainted Samson kills an enemy"},
	{"Tainted Azazel", "", "Doubles the size of Tainted Azazel's Hemoptysis {{Collectible726}} sneeze attack"},
	{"Tainted Lazarus", "", "<No effect yet>"},
	{"Tainted Eden", "", "Passive items gained before Birthright will not be rerolled upon taking damage"},
	{"Tainted Lost", "", "+1 extra life that revives Tainted Lost in the same room and deals 200 damage to nearby enemies#Can hit the same enemy multiple times"},
	{"Tainted Lilith", "", ""},
	{"Tainted Keeper", "", "Strongly attracts the coins dropped by defeating enemies from a short distance#No effect on other coins"},
	{"Tainted Apollyon", "", "<No effect yet>"},
	{"Tainted Forgotten", "", "Tainted Soul gains the Recall ability {{Collectible714}}, to automatically retrieve the Tainted Forgotten from a distance"},
	{"Tainted Bethany", "", "<No effect yet>"},
	{"Tainted Jacob", "", "<No effect yet>"},
	{"Dead Tainted Lazarus", "", "<No effect yet>"},
	{"Tainted Jacob 2", "", "<No effect yet>"},
	{"Tainted Forgotten Soul", "", "Tainted Soul gains the Recall ability {{Collectible714}}, to automatically retrieve the Tainted Forgotten from a distance"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint
EID.descriptions["en_us"].bingeEaterBuffs = {
	[22] = {"22", "", "↑+0.5 Tears up#↑+1.5 Range up"}, -- Lunch
	[23] = {"23", "", "↑+0.5 Tears up#↑+0.2 Shot Speed up"}, -- Dinner
	[24] = {"24", "", "↑+1.0 Damage up#↑+0.2 Speed up"}, -- Dessert
	[25] = {"25", "", "↑+0.2 Speed up#↑+1.5 Range up"}, -- Breakfast
	[26] = {"26", "", "↑+1.0 Damage up#↑+1.5 Range up"}, -- Rotten Meat
	[456] = {"456", "", "↑+1.0 Damage up#↑+1.0 Luck up"}, -- Midnight Snack
	[346] = {"346", "", "↑+0.2 Shot Speed up#↑+1.0 Luck up"}, -- A Snack
	[707] = {"707", "", "↑+0.5 Tears up#↑+1.0 Luck up"}, -- Supper
}

EID.descriptions["en_us"].spindownError = "Item disappears"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Swallowed Penny", "Drop 1 coin when you get hit#0-1 if you play as Keeper"}, -- Swallowed Penny
	[10] = {"10", "Wiggle Worm", "Tears move in waves#↑ +0.4 Tears up#Grants spectral tears"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "Tears move in spirals with high speed#Grants spectral tears"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "33% chance to drop a coin when destroying rocks"},-- Lucky Rock
	[24] = {"24", "Butt Penny", "Fart when picking up coins#Farts knockback and poison enemies"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "Tears move in angular patterns#↑ +1.5 Range#Grants spectral tears"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "Random mushroom effect per room"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "When entering a room with half a red heart or less, you get little Steven#High Chance to spawn a Gemini familar when taking damage"}, -- Umbilical Cord
	[48] = {"48", "A Missing Page", "When getting hit, chance to damage all enemies in the room#Black hearts and {{Collectible35}} Necronomicon-like effects deal double damage"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "25% chance to drop half a heart when picking up coins"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "25% chance to drop a bomb when picking up coins"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "25% chance to drop a key when picking up coins"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Range up#-50% Tear height"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Shot Speed down#↑ +2 Tear height"}, -- Lazy Worm
	[69] = {"69", "Faded Polaroid", "Camouflages the player randomly#Confuses enemies#Can be used to open the door to the \"Home\" floor"}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ +0.5 Damage up for each evil item held"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ Stat increases of your items are 20% more effective"}, -- Cracked Crown
	[101] = {"101", "Dim Bulb", "!!! While holding an uncharged active item:#↑ +1.5 Damage#↑ +0.5 Speed#↑ +1.5 Range#↑ +0.5 Tears#↑ +0.3 Shot Speed#↑ +2 Luck"},
	[110] = {"110", "Silver Dollar", "Shops {{Shop}} will now appear in the Womb and Corpse"},
	[111] = {"111", "Bloody Crown", "Item rooms {{TreasureRoom}} now appear in the Womb and Corpse"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "Sets your red HP to 50% of your maximum upon entering the next floor#If your health is above that, it heals half a red heart"}, -- Stem Cell
	[128] = {"128", "Finger Bone", "5% chance to gain a Bone Heart when taking damage"}, -- Finger Bone
	
	[129] = {"129", "Jawbreaker", "Chance to shoot tooth tears"}, --  Jawbreaker
	[130] = {"130", "Chewed Pen", "Chance to shoot slowing tears"}, --  Chewed Pen
	[131] = {"131", "Blessed Penny", "Chance to drop half soul hearts when collecting coins"}, --  Blessed Penny
	[132] = {"132", "Broken Syringe", "Chance to gain a random syringe effect for current room"}, --  Broken Syringe
	[133] = {"133", "Short Fuse", "Bombs placed by Isaac explode more quickly"}, --  Short Fuse
	[134] = {"134", "Gigante Bean", "Increases fart size"}, --  Gigante Bean
	[135] = {"135", "A Lighter", "Chance to apply burn effect to enemies upon entering a room"}, --  A Lighter
	[136] = {"136", "Broken Padlock", "Doors, key blocks and golden chests can be open with explosions#Can also open the Home door"}, --  Broken Padlock
	[137] = {"137", "Myosotis", "When entering a new floor, up to 4 uncollected pickups from the previous floor spawn in the starting room"}, --  Myosotis
	[138] = {"138", "'M", "Using an active item rerolls it"}, --  'M
	[139] = {"139", "Teardrop Charm", "Luck-based tear effects occur more often"}, --  Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Picking up red hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"}, --  Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Increases fire rate of familiars"}, --  Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "At the beginning of each floor, spawns 4 Book of Virtues {{Collectible584}} wisps"}, --  Beth's Faith
	[143] = {"143", "Old Capacitor", "Prevents active item from charging#Chance to spawn lil Battery when clearing a room"}, --  Old Capacitor
	[144] = {"144", "Brain Worm", "Tears turn 90 degrees to target enemies that they may have missed"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ +10 Luck up#Destroys itself when you take damage"}, --  Perfection
	[146] = {"146", "Devil's Crown", "Treasure rooms {{TreasureRoom}} now contain devil deals"}, --  Devil's Crown
	[147] = {"147", "Charged Penny", "Picking up coins can charge the Active Item"}, --  Charged Penny
	[148] = {"148", "Friendship Necklace", "Causes familiars to circle around Isaac"}, --  Friendship Necklace
	[149] = {"149", "Panic Button", "Activates your active item upon taking damage"}, --  Panic Button
	[150] = {"150", "Blue Key", "Entering a room that requires a key brings you in a room resembling the Hush stage#Room acts as an in-between of the two rooms"}, --  Blue Key
	[151] = {"151", "Flat File", "Causes spikes to retract, making them harmless#Also affects Curse Rooms {{CursedRoom}} doors, mimics and any spike obstacle"}, --  Flat File
	[152] = {"152", "Telescope Lens", "Makes it possible to spawn a second Planetarium#Planetariums can now spawn in the Womb"}, --  Telescope Lens
	[153] = {"153", "Mom's Lock", "Each room, grants the effects of a random Mom item"}, --  Mom's Lock
	[154] = {"154", "Dice Bag", "When entering a new room, grants a temporary Dice consumable item#The Dice disappears when leaving#Grants ability to hold two consumables"}, --  Dice Bag
	[155] = {"155", "Holy Crown", "Spawns a Treasure Room {{TreasureRoom}} and Shop {{Shop}} in Cathedral"}, --  Holy Crown
	[156] = {"156", "Mother's Kiss", "Grants one heart container#Works for Keeper, too"}, --  Mother's Kiss
	[157] = {"157", "Torn Card", "Every 15 shots, shoot an Ipecac {{Collectible149}} + My Reflection {{Collectible5}} tear with a very high range value"}, --  Torn Card
	[158] = {"158", "Torn Pocket", "Upon hit, Isaac drops 2 of his Pickups#(Exception: Hearts, Cards, Pills, Runes)"}, --  Torn Pocket
	[159] = {"159", "Gilded Key", "+1 key#Replaces all new chests, with Locked Chest#All Locked Chests can also contain extra cards, pills or trinkets#Exception: Mega Chest, old Chest"}, --  Gilded Key
	[160] = {"160", "Lucky Sack", "Spawns a Grab Bag upon traveling to the next floor"}, --  Lucky Sack
	[161] = {"161", "Wicked Crown", "Spawns a Treasure Room {{TreasureRoom}} and Shop {{Shop}} in Sheol"}, --  Wicked Crown
	[162] = {"162", "Azazel's Stump", "Chance to turn into Azazel when entering a new room"}, --  Azazel's Stump
	[163] = {"163", "Dingle Berry", "Spawns 2 friendly Dips upon clearing a room"}, --  Dingle Berry
	[164] = {"164", "Ring Cap", "Spawns one extra bomb for each bomb placed"}, --  Ring Cap
	[165] = {"165", "Nuh Uh!", "On Womb and beyond, replaces all pickup spawns with a random pickup#Bombs and Hearts are most common"}, --  Nuh Uh!
	[166] = {"166", "Modeling Clay", "Grants the effect of a random Passive Item each room"}, --  Modeling Clay
	[167] = {"167", "Polished Bone", "Chance to spawn a friendly Bony when clearing a room"}, --  Polished Bone
	[168] = {"168", "Hollow Heart", "+1 bone heart container upon entering a new floor"}, --  Hollow Heart
	[169] = {"169", "Kid's Drawing", "While held, counts towards the Guppy transformation"}, --  Kid's Drawing
	[170] = {"170", "Crystal Key", "Grants the chance to automatically create Red Key rooms {{Collectible580}} each time you clear a room"}, --  Crystal Key
	[171] = {"171", "Keeper's Bargain", "Chance for Devil deals to cost coins instead of hearts"}, --  Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Teleport to a random room upon picking up a penny#Can teleport to secret rooms"}, --  Cursed Penny
	[173] = {"173", "Your Soul", "{{Warning}} ONE TIME USAGE {{Warning}}#Can be used to pay for a Devil deal without losing hearts"}, --  Your Soul
	[174] = {"174", "Number Magnet", "+10% Devil deal chance"}, --  Number Magnet
	[175] = {"175", "Strange Key", "Unlocks the passageway to the Hush fight, regardless of the run duration#Using Pandora's Box {{Collectible297}} spawns 6 items from random pools"}, --  Strange Key
	[176] = {"176", "Lil Clot", "Spawns a blood clot familiar who mimics Isaac's movement, shoot direction and tear effects"}, --  Lil Clot
	[177] = {"177", "Temporary Tattoo", "Spawns a chest after clearing a mob Challenge Room, or a collectible after clearing a boss Challenge Room"}, --  Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Player explodes upon taking damage"}, --  Swallowed M80
	[179] = {"179", "RC Remote", "Familiars movement will be controlled by the same inputs as the player"}, --  RC Remote
	[180] = {"180", "Found Soul", "Familiar that follows Isaac's exact movements and shoots spectral tears#Has same damage and tear effects as the player"}, --  Found Soul
	[181] = {"181", "Expansion Pack", "Triggers a separate random active item when using an active item"}, --  Expansion Pack
	[182] = {"182", "Beth's Essence", "Once per floor, upon taking damage creates a wisp {{Collectible584}} and grants invincibility#Spawns 5 wisps upon entering an angel room#Creates a wisp when giving money to beggars"}, --  Beth's Essence
	[183] = {"183", "The Twins", "Each room:#With no followers: Chance to grant Brother Bobby {{Collectible8}} and/or Sister Maggy {{Collectible67}}# With followers: Chance to add a duplicate that follower"}, --  The Twins
	[184] = {"184", "Adoption Papers", "Shops can sell familiars#Familiars will always be on discount"}, --  Adoption Papers
	[185] = {"185", "Cricket Leg", "Chance to spawn a random locust when killing an enemy"}, --  Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Grants 1 Familiar attack fly which you can aim and fire with"}, --  Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "33% chance of adding an extra blind item in item rooms#Reveals the blind item in alt path"}, --  Broken Glasses
	[188] = {"188", "Ice Cube", "Adds a chance to petrify an enemy when entering the room#Killing the petrified enemy freezes it"}, --  Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Activates a 1 second shield upon killing an enemy"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["en_us"].trinkets)



-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}} " automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint
EID.descriptions["en_us"].tarotClothBuffs = {
	[2] = {"2", "", "Also grants{{Collectible34}} The Book of Belial effect"}, -- I - The Magician
	[3] = {"3", "", "A second foot strikes down shortly after the first"}, -- II - The High Priestess
	[4] = {"4", "", "Quadruples the stat increases"}, -- III - The Empress
	[5] = {"5", "", "If the boss wasn't defeated yet, grants 1 soul heart on top of teleporting"}, -- IV - The Emperor
	[6] = {"6", "", "Spawns 3 Soul hearts"}, -- V - The Hierophant
	[7] = {"7", "", "Spawns 3 Red hearts"}, -- VI - The Lovers
	[8] = {"8", "", "Doubled duration"}, -- VII - The Chariot
	[9] = {"9", "", "Doubled Pickup spawns"}, -- VIII - Justice
	[10] = {"10", "", "Prevents Greed from spawning in the shop#Turns shop into a normal shop if greed was already fought in it"}, -- IX - The Hermit
	[11] = {"11", "", "Spawns 2 Slot Machines"}, -- X - Wheel of Fortune
	[12] = {"12", "", "Doubled stat increase, excluding dmg multiplier"}, -- XI - Strength
	[14] = {"14", "", "Deals 80 damage"}, -- XIII - Death
	[15] = {"15", "", "Spawns 2 Blood Donation Machines"}, -- XIV - Temperance
	[16] = {"16", "", "Damage increase doubled"}, -- XV - The Devil
	[17] = {"17", "", "Spawns 12 troll bombs"}, -- XVI - The Tower
	[18] = {"18", "", "If the treasure room wasn't entered before, it will have two items to choose from"}, -- XVII - The Stars
	[21] = {"21", "", "Spawns 2 beggars"}, -- XX - Judgement
	[56] = {"56", "", "Drops all items alongside pickups, including Tarot Cloth"}, -- 0 - The Fool?
	[59] = {"59", "", "Grants 3 temporary heart containers"}, -- III - The Empress?
	[61] = {"61", "", "Spawns 6 Bone Hearts"}, -- V - The Hierophant?
	[62] = {"62", "", "Adds 4 broken hearts and spawns 4 items"}, -- VI - The Lovers?
	[64] = {"64", "", "Spawns 4-14 golden chests"}, -- VIII - Justice?
	[70] = {"70", "", "Eat 20 pills"}, -- XIV - Temperance?
	[72] = {"72", "", "Spawns 14 rock clusters"}, -- XVI - The Tower?
	[73] = {"73", "", "Removes 2 items and spawns 4"}, -- XVII - The Stars?
	[76] = {"76", "", "Spawns 2 restock machines"}, -- XX - Judgement?
}



EID.descriptions["en_us"].goldenTrinket = "GOLD: Effect doubled!"

---------- Cards ----------
local repCards={
	[27] = {"27", "Ace of Clubs", "Turns all pickups, chests and non-boss enemies into bombs"}, -- Ace of Clubs
	[28] = {"28", "Ace of Diamonds", "Turns all pickups, chests and non-boss enemies into coins"}, -- Ace of Diamonds
	[29] = {"29", "Ace of Spades", "Turns all pickups, chests and non-boss enemies into keys"}, -- Ace of Spades
	[30] = {"30", "Ace of Hearts", "Turns all pickups, chests and non-boss enemies into hearts"}, -- Ace of Hearts
	[39] = {"39", "Algiz", "Invincibility for 20 seconds"}, -- Algiz
	[51] = {"51", "Holy Card", "Grants the Holy Mantle effect#(Next damage you take is 0)#Effect lasts until damage is taken"}, -- Holy card
	
	[55] = {"55", "Rune Shard", "Activates a random rune effect#The rune effect is weaker"}, -- Rune Shard
	[56] = {"56", "0 - The Fool?", "Drops all your hearts and pickups on the floor#Only half a heart left afterwards#Pickups can spawn as {{Collectible74}} {{Collectible19}} collectibles if amount is sufficient"}, -- 0 - The Fool?
	[57] = {"57", "I - The Magician?", "Grants big projectile and enemy repelling aura#Duration 1 minute"}, -- I - The Magician?
	[58] = {"58", "II - The High Priestess?", "Mom's foot stomps down repeatedly for 1 minute"}, -- II - The High Priestess?
	[59] = {"59", "III - The Empress?", "Temporary effect:#↑ +2 red hearts#↑ +1.35 Tears up"}, -- III - The Empress?
	[60] = {"60", "IV - The Emperor?", "Teleports you to an extra Boss room with extra loot"}, -- IV - The Emperor?
	[61] = {"61", "V - The Hierophant?", "Spawns 2 Bone Hearts"}, -- V - The Hierophant?
	[62] = {"62", "VI - The Lovers?", "Spawns 1 item from current room's item pool#Turns 1 red heart Container or 2 Soul hearts into a broken heart"}, -- VI - The Lovers?
	[63] = {"63", "VII - The Chariot?", "Turn into invincible immobile statue for 10 seconds#Extreme fire rate for duration"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Justice?", "Spawns 2-4 golden chests"}, -- VIII - Justice?
	[65] = {"65", "IX - The Hermit?", "Turns pickups and items in the room into coins#Coin values are equal to their shop value"}, -- IX - The Hermit?
	[66] = {"66", "X - Wheel of Fortune?", "Random dice room effect"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Strength?", "Enemies in room are weakened, slowed and take double damage"}, -- XI - Strength?
	[68] = {"68", "XII - The Hanged Man?", "Turns player into the Keeper for 30 seconds#Grants triple shot and speed down#Killed enemies drop random coins"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Death?", "Invokes Book of the Dead effect {{Collectible545}}#(Spawns Bone entities for each enemy killed in room)"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperance?", "Applies 5 random pill effects"}, -- XIV - Temperance?
	[71] = {"71", "XV - The Devil?", "Invokes the Bible effect {{Collectible33}}#Grants Seraphim familiar {{Collectible390}}# For 30 seconds"}, -- XV - The Devil?
	[72] = {"72", "XVI - The Tower?", "Spawns 6 clusters of random rocks and obstacles"}, -- XVI - The Tower?
	[73] = {"73", "XVII - The Stars?", "Removes oldest passive item#Spawns 2 random items from current room's item pool"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - The Moon?", "Teleports you to Ultra secret room#Pathway back will be made of red rooms"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - The Sun?", "Gain Spirit of the Night {{Collectible159}}#↑ +1.5 Damage up# For the current level#Turns red hearts into bone hearts, but reverts once the effect ends#Applies Curse of Darkness"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judgement?", "Spawns a Restock Machine"}, -- XX - Judgement?
	[77] = {"77", "XXI - The World?", "Spawns a trap door to a crawl space"}, -- XXI - The World?
	[78] = {"78", "Cracked Key", "One time use Red Key {{Collectible580}}"}, -- Cracked Key
	[79] = {"79", "Queen of Hearts", "Spawns 1-12 red hearts"}, -- Queen of Hearts
	[80] = {"80", "Wild Card", "Copies the effect of the most recently used pill, card, rune, soul stone or activated item"}, -- Wild Card
	[81] = {"81", "Soul of Isaac", "Rerolls the items in the room#Cycle back to their original form after one second#Effect repeats"}, -- Soul of Isaac
	[82] = {"82", "Soul of Magdalene", "Surrounds Isaac with a bubbling red aura for the current room#Enemies killed drop red half hearts that disappear in 2 secs"}, -- Soul of Magdalene
	[83] = {"83", "Soul of Cain", "Opens all doors in the room#Creates red rooms with Red Key {{Collectible580}} for every possible exit"}, -- Soul of Cain
	[84] = {"84", "Soul of Judas", "Turns Isaac into a phantom that can pass through enemies to paralyze them#After a few seconds, will attack them all, gaining damage bonus per target"}, -- Soul of Judas
	[85] = {"85", "Soul of ???", "Causes 8 poison farts with brown creep#Then plants trail of 7 Butt Bombs#Standing in the creep gives ↑ +1.35 Tears and ↑ +1 Damage"}, -- Soul of ???
	[86] = {"86", "Soul of Eve", "14 Dead Bird familiars fly in and attack enemies# Lasts for current room"}, -- Soul of Eve
	[87] = {"87", "Soul of Samson", "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Speed up#↑ Tears up#↑ +3 Damage up"}, -- Soul of Samson
	[88] = {"88", "Soul of Azazel", "Activates Mega Blast {{Collectible441}} for 7.5 secs"}, -- Soul of Azazel
	[89] = {"89", "Soul of Lazarus", "Die and immediately revive at half a heart with some invincibility time#Item is automatically used upon taking fatal damage (like an extra life)"}, -- Soul of Lazarus
	[90] = {"90", "Soul of Eden", "Activates D6 {{Collectible105}} and D20 {{Collectible166}} effect#The rerolled items use random pools"}, -- Soul of Eden
	[91] = {"91", "Soul of the Lost", "Die and turn into The Lost for current room"}, -- Soul of the Lost
	[92] = {"92", "Soul of Lilith", "Adds 1 random familiar"}, -- Soul of Lilith
	[93] = {"93", "Soul of the Keeper", "Spawns 3-25 random coins"}, -- Soul of the Keeper
	[94] = {"94", "Soul of Apollyon", "Spawn 15 random locust flies"}, -- oul of Apollyon
	[95] = {"95", "Soul of the Forgotten", "Spawns The Forgotten as a temporary secondary character for current room"}, -- Soul of the Forgotten
	[96] = {"96", "Soul of Bethany", "Spawns 6 Book of Virtues {{Collectible584}} wisps with random properties"}, -- Soul of Bethany
	[97] = {"97", "Soul of Jacob and Esau", "Spawns Esau as a temporary secondary character for current room"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["en_us"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombs are Key", "Switches number of bombs with keys#Golden bombs and keys are also swapped"}, -- Bombs are Key
	[12] = {"11", "Range Down", "↓ -0.6 Range down"}, -- Range Down
	[13] = {"12", "Range Up", "↑ +0.75 Range up"}, -- Range Up
	[42] = {"41", "I'm Drowsy...", "Slow all enemies and Isaac in the room"}, -- I'm Drowsy...
	[43] = {"42", "I'm Excited!!!", "Speeds up all enemies and Isaac in the room#Triggers again after 30 and 60 seconds"}, -- I'm Excited!!!
	
	[48] = {"47", "Shot Speed Down", "↓ -0.15 Shot Speed down"}, -- Shot Speed Down
	[49] = {"48", "Shot Speed Up", "↑ +0.15 Shot Speed up"}, -- Shot Speed Up
	[50] = {"49", "Experimental Pill", "↑ Increases 1 random stat#↓ Decreases 1 random other stat#Will not decrease with PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random pill effect#Destroys itself after a few uses"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["en_us"].pills)

EID.descriptions["en_us"].horsepills={
	{"0", "Bad Gas", "Poisons entire room"}, -- Bad Gas
	{"1", "Bad Trip", "Deals 2 heart of damage to you"}, -- Bad Trip
	{"2", "Balls of Steel", "+4 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Switches number of bombs with keys#Increases key and bomb count by 50%#Golden bombs and keys are also swapped"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Spawns some mega homing troll bombs at your position"}, -- Explosive Diarrhea
	{"5", "Full Health", "Full Health#+3 Soul Hearts"}, -- Full Health
	{"6", "Health Down", "↓ -2 Health down"}, -- Health Down
	{"7", "Health Up", "↑ +2 empty heart containers"}, -- Health Up
	{"8", "I Found Pills", "No effect"}, -- I Found Pills
	{"9", "Puberty", "No effect"}, -- Puberty
	{"10", "Pretty Fly", "Adds 1 Big Fan fly orbital {{Collectible279}}#There is no upper limit"}, -- Pretty Fly
	{"11", "Range Down", "↓ -1.2 Range down"}, -- Range Down
	{"12", "Range Up", "↑ +0.9 Range up"}, -- Range Up
	{"13", "Speed Down", "↓ -0.24 Speed down"}, -- Speed Down
	{"14", "Speed Up", "↑ +0.3 Speed up"}, -- Speed Up
	{"15", "Tears Down", "↓ -0.56 Tears down"}, -- Tears Down
	{"16", "Tears Up", "↑ +0.70 Tears up"}, -- Tears Up
	{"17", "Luck Down", "↓ -2 Luck down"}, -- Luck Down
	{"18", "Luck Up", "↑ +2 Luck up"}, -- Luck Up
	{"19", "Telepills", "Teleport to random room"}, -- Telepills
	{"20", "48 Hour Energy!", "Recharges your active item#Drops batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "Drains all but one heart container#Spawns red hearts"}, -- Hematemesis
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
	{"36", "Power Pill!", "Short invincibility effect#↑ #7 Damage up#↑ +3 Range up# persists for current room"}, -- Power Pill!
	{"37", "Retro Vision", "Pixelates the screen for 90 seconds"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 6 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawn pool of long lasting slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "Spawn pool of long lasting slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "Slow all enemies in room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!!", "Speed up for all enemies in room"}, --I'm Excited!!!
	{"43", "Gulp!", "Consume current trinket and gain its effect permanently"}, -- Gulp!
	{"44", "Horf!", "Shoots a cluster of ipecac tears"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "Short invincibility#Fears all enemies# Two eaten enemies replenish half a heart"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns last used pill as a horse pill"}, -- Vurp!
	{"47", "Shot Speed Down", "↓ -0.3 Shot Speed down"}, -- Shot Speed Down
	{"48", "Shot Speed Up", "↑ +0.3 Shot Speed up"}, -- Shot Speed Up
	{"49", "Experimental Pill", "↑ Increases 1 random stat two times#↓ Decreases 1 random other stat two times#Will not decrease with PHD"}, -- Experimental Pill
	[9999] = {"", "Golden Pill", "Random horse pill effect#Destroys itself after a few uses"}, -- golden Pill
}

EID.descriptions["en_us"].CraftingBagContent = "Bag:"
EID.descriptions["en_us"].CraftingRoomContent = "Room:"
EID.descriptions["en_us"].CraftingFloorContent = "Floor:"
EID.descriptions["en_us"].CraftingResults = "Results:#(Scroll: hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}})"
EID.descriptions["en_us"].CraftingBagModError = "!!! {{ColorRed}}ERROR:#{{ColorRed}}This feature currently does not support games with modded items installed"

