---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "en_us"

-- init english tables
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "English"
EID.descriptions[languageCode].alternativeLanguageCodes = {"english", "en"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default"}, {name="inverted"}, {name="borderless"}}

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "The Sad Onion", "↑ {{Tears}} +0.7 Tears"}, -- The Sad Onion
	{"2", "The Inner Eye", "↓ {{Tears}} x0.48 Tears multiplier#↓ {{Tears}} +3 Tear delay#Isaac shoots 3 tears at once"}, -- The Inner Eye
	{"3", "Spoon Bender", "Homing tears"}, -- Spoon Bender
	{"4", "Cricket's Head", "↑ {{Damage}} +0.5 Damage#↑ {{Damage}} x1.5 Damage multiplier"}, -- Cricket's Head
	{"5", "My Reflection", "↑ {{Range}} +1.5 Range#↑ +1 Tear height#↑ {{Shotspeed}} +0.6 Shot speed#Tears get a boomerang effect"}, -- My Reflection
	{"6", "Number One", "↑ {{Tears}} +1.5 Tears#↑ +0.76 Tear height#↓ {{Range}} -17.62 Range"}, -- Number One
	{"7", "Blood of the Martyr", "↑ {{Damage}} +1 Damage"}, -- Blood of the Martyr
	{"8", "Brother Bobby", "Shoots normal tears#Deals 3.5 damage per tear"}, -- Brother Bobby
	{"9", "Skatole", "All fly enemies are friendly"}, -- Skatole
	{"10", "Halo of Flies", "+2 Fly orbitals#Blocks enemy projectiles"}, -- Halo of Flies
	{"11", "1up!", "↑ +1 Life#Isaac respawns with full health on death"}, -- 1up!
	{"12", "Magic Mushroom", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#Size up#{{HealingRed}} Full health"}, -- Magic Mushroom
	{"13", "The Virus", "↓ {{Speed}} -0.1 Speed#{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"}, -- The Virus
	{"14", "Roid Rage", "↑ {{Speed}} +0.6 Speed#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} +1 Health#{{HealingRed}} Full health"}, -- <3
	{"16", "Raw Liver", "↑ {{Heart}} +2 Health#{{HealingRed}} Full health"}, -- Raw Liver
	{"17", "Skeleton Key", "{{Key}} +99 Keys"}, -- Skeleton Key
	{"18", "A Dollar", "{{Coin}} +99 Coins"}, -- A Dollar
	{"19", "Boom!", "{{Bomb}} +10 Bombs"}, -- Boom!
	{"20", "Transcendence", "Flight"}, -- Transcendence
	{"21", "The Compass", "Reveals icons on the map#Does not reveal the layout of the map"}, -- The Compass
	{"22", "Lunch", "↑ {{Heart}} +1 Health"}, -- Lunch
	{"23", "Dinner", "↑ {{Heart}} +1 Health"}, -- Dinner
	{"24", "Dessert", "↑ {{Heart}} +1 Health"}, -- Dessert
	{"25", "Breakfast", "↑ {{Heart}} +1 Health"}, -- Breakfast
	{"26", "Rotten Meat", "↑ {{Heart}} +1 Health"}, -- Rotten Meat
	{"27", "Wooden Spoon", "↑ {{Speed}} +0.3 Speed"}, -- Wooden Spoon
	{"28", "The Belt", "↑ {{Speed}} +0.3 Speed"}, -- The Belt
	{"29", "Mom's Underwear", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Underwear
	{"30", "Mom's Heels", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Heels
	{"31", "Mom's Lipstick", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Lipstick
	{"32", "Wire Coat Hanger", "↑ {{Tears}} +0.7 Tears"}, -- Wire Coat Hanger
	{"33", "The Bible", "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"}, -- The Bible
	{"34", "The Book of Belial", "{{AngelDevilChance}} +12.5% Devil/Angel Room chance while held#{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- The Book of Belial
	{"35", "The Necronomicon", "Deals 40 damage to all enemies in the room"}, -- The Necronomicon
	{"36", "The Poop", "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"}, -- The Poop
	{"37", "Mr. Boom", "Drops a large bomb below Isaac which deals 110 damage"}, -- Mr. Boom
	{"38", "Tammy's Head", "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"}, -- Tammy's Head
	{"39", "Mom's Bra", "{{Petrify}} Petrifies all enemies in the room for 4 seconds"}, -- Mom's Bra
	{"40", "Kamikaze!", "Causes an explosion at Isaac's location#It deals 40 damage"}, -- Kamikaze!
	{"41", "Mom's Pad", "{{Fear}} Fears all enemies in the room for 5 seconds"}, -- Mom's Pad
	{"42", "Bob's Rotten Head", "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"}, -- Bob's Rotten Head
	{"43", "", "<item does not exist>"},
	{"44", "Teleport!", "Teleports Isaac into a random room, except I AM ERROR rooms"}, -- Teleport!
	{"45", "Yum Heart", "{{HealingRed}} Heals 1 heart"}, -- Yum Heart
	{"46", "Lucky Foot", "↑ {{Luck}} +1 Luck#+8% room clear reward chance#Better chance to win while gambling"}, -- Lucky Foot
	{"47", "Doctor's Remote", "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"}, -- Doctor's Remote
	{"48", "Cupid's Arrow", "Piercing tears"}, -- Cupid's Arrow
	{"49", "Shoop da Whoop!", "The next shot is replaced with a beam#It deals 26x Isaac's damage over 0.9 seconds"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} +1 Damage"}, -- Steven
	{"51", "Pentagram", "↑ {{Damage}} +1 Damage#{{AngelDevilChance}} +10% Devil/Angel Room chance"}, -- Pentagram
	{"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Tears multiplier#{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"}, -- Dr. Fetus
	{"53", "Magneto", "Pickups are attracted to Isaac"}, -- Magneto
	{"54", "Treasure Map", "Reveals the floor layout#Does not reveal room icons"}, -- Treasure Map
	{"55", "Mom's Eye", "50% chance to shoot an extra tear backwards#{{Luck}} 100% chance at 2 luck"}, -- Mom's Eye
	{"56", "Lemon Mishap", "Spills a pool of creep#The creep deals 24 damage per second"}, -- Lemon Mishap
	{"57", "Distant Admiration", "Mid-range fly orbital#Deals 75 contact damage per second"}, -- Distant Admiration
	{"58", "Book of Shadows", "{{Timer}} Invincibility for 10 seconds"}, -- Book of Shadows
	{"59", "", "<item does not exist>"},
	{"60", "The Ladder", "Allows Isaac to cross 1-tile gaps"}, -- The Ladder
	{"61", "", "<item does not exist>"},
	{"62", "Charm of the Vampire", "{{HealingRed}} Killing 13 enemies heals half a heart"}, -- Charm of the Vampire
	{"63", "The Battery", "{{Battery}} Active items can be overcharged to two full charges"}, -- The Battery
	{"64", "Steam Sale", "{{Shop}} Shop items cost 50% less"}, -- Steam Sale
	{"65", "Anarchist Cookbook", "Spawns 6 Troll Bombs near the center of the room"}, -- Anarchist Cookbook
	{"66", "The Hourglass", "{{Slow}} Slows enemies down for 8 seconds"}, -- The Hourglass
	{"67", "Sister Maggy", "Shoots normal tears#Deals 3.5 damage per tear"}, -- Sister Maggy
	{"68", "Technology", "Isaac shoots lasers instead of tears"}, -- Technology
	{"69", "Chocolate Milk", "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"}, -- Chocolate Milk
	{"70", "Growth Hormones", "↑ {{Speed}} +0.4 Speed#↑ {{Damage}} +1 Damage"}, -- Growth Hormones
	{"71", "Mini Mush", "↑ {{Speed}} +0.3 Speed#↑ +1.5 Tear height#↑ Size down#↓ {{Range}} -4.25 Range#The tear height up and range down = slight range up"}, -- Mini Mush
	{"72", "Rosary", "{{SoulHeart}} +3 Soul Hearts#{{Collectible33}} The Bible is added to all item pools"}, -- Rosary
	{"73", "Cube of Meat", "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"}, -- Cube of Meat
	{"74", "A Quarter", "{{Coin}} +25 Coins"}, -- A Quarter
	{"75", "PHD", "{{HealingRed}} Heals 2 hearts#{{Pill}} Spawns 1 pill#{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"}, -- PHD
	{"76", "X-Ray Vision", "{{SecretRoom}} Opens all secret room entrances"}, -- X-Ray Vision
	{"77", "My Little Unicorn", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot but deals 40 contact damage per second"}, -- My Little Unicorn
	{"78", "Book of Revelations", "{{SoulHeart}} +1 Soul Heart#{{AngelDevilChance}} +17.5% Devil/Angel Room chance while held#Using the item has a high chance to replace the floor's boss with a horseman"}, -- Book of Revelations
	{"79", "The Mark", "↑ {{Speed}} +0.2 Speed#↑ {{Damage}} +1 Damage#{{SoulHeart}} +1 Soul Heart"}, -- The Mark
	{"80", "The Pact", "↑ {{Tears}} +0.7 Tears#↑ {{Damage}} +0.5 Damage#{{SoulHeart}} +2 Soul Hearts"}, -- The Pact
	{"81", "Dead Cat", "↑ +9 Lives#Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"}, -- Dead Cat
	{"82", "Lord of the Pit", "↑ {{Speed}} +0.3 Speed#Flight"}, -- Lord of the Pit
	{"83", "The Nail", "Upon use:#{{SoulHeart}} +1 Soul Heart#{{Timer}} Receive for the room:#↑ {{Damage}} +0.7 Damage#↓ {{Speed}} -0.18 Speed#Isaac deals 40 contact damage per second#Allows Isaac to destroy rocks by walking into them"}, -- The Nail
	{"84", "We Need To Go Deeper!", "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"}, -- We Need To Go Deeper!
	{"85", "Deck of Cards", "{{Card}} Spawns 1 card"}, -- Deck of Cards
	{"86", "Monstro's Tooth", "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"}, -- Monstro's Tooth
	{"87", "Loki's Horns", "25% chance to shoot in 4 directions#{{Luck}} 100% chance at 7 luck"}, -- Loki's Horns
	{"88", "Little Chubby", "Charges forward in the direction Isaac is shooting#Deals 52.5 contact damage per second"}, -- Little Chubby
	{"89", "Spider Bite", "{{Slow}} 25% chance to shoot slowing tears#{{Luck}} 100% chance at 15 luck"}, -- Spider Bite
	{"90", "The Small Rock", "↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +1 Damage#↓ {{Speed}} -0.2 Speed"}, -- The Small Rock
	{"91", "Spelunker Hat", "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"}, -- Spelunker Hat
	{"92", "Super Bandage", "↑ {{Heart}} +1 Health#{{HealingRed}} Heals 1 heart#{{SoulHeart}} +2 Soul Hearts"}, -- Super Bandage
	{"93", "The Gamekid", "{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- The Gamekid
	{"94", "Sack of Pennies", "{{Coin}} Spawns a random coin every 2 rooms"}, -- Sack of Pennies
	{"95", "Robo-Baby", "Shoots lasers#Deals 3.5 damage per shot"}, -- Robo-Baby
	{"96", "Little C.H.A.D.", "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"}, -- Little C.H.A.D.
	{"97", "The Book of Sin", "Spawns a random pickup"}, -- The Book of Sin
	{"98", "The Relic", "{{SoulHeart}} Spawns 1 Soul Heart every 5-6 rooms"}, -- The Relic
	{"99", "Little Gish", "{{Slow}} Shoots slowing tears#Deals 3.5 damage per tear"}, -- Little Gish
	{"100", "Little Steven", "Shoots homing tears#Deals 3.5 damage per tear"}, -- Little Steven
	{"101", "The Halo", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height"}, -- The Halo
	{"102", "Mom's Bottle of Pills", "{{Pill}} Spawns 1 pill"}, -- Mom's Bottle of Pills
	{"103", "The Common Cold", "{{Poison}} 25% chance to shoot poison tears#{{Luck}} 100% chance at 12 luck"}, -- The Common Cold
	{"104", "The Parasite", "Tears split in two on contact#Split tears deal half damage"}, -- The Parasite
	{"105", "The D6", "Rerolls pedestal items in the room"}, -- The D6
	{"106", "Mr. Mega", "↑ {{Bomb}} x1.83 Bomb damage#{{Bomb}} +5 Bombs"}, -- Mr. Mega
	{"107", "The Pinking Shears", "{{Timer}} Receive for the room:#Flight#Isaac's body separates from his head and attacks enemies with 82.5 contact damage per second"}, -- The Pinking Shears
	{"108", "The Wafer", "Reduces most damage taken to half a heart"}, -- The Wafer
	{"109", "Money = Power", "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"}, -- Money = Power
	{"110", "Mom's Contacts", "↑ {{Range}} +0.25 Range#↑ +0.5 Tear height#{{Petrify}} 20% chance to shoot petrifying tears#{{Luck}} 50% chance at 20 luck"}, -- Mom's Contacts
	{"111", "The Bean", "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"}, -- The Bean
	{"112", "Guardian Angel", "Orbital#Speeds up all other orbitals#Blocks projectiles#Deals 105 contact damage per second"}, -- Guardian Angel
	{"113", "Demon Baby", "Shoots enemies that get close to him#Deals 3 damage per tear"}, -- Demon Baby
	{"114", "Mom's Knife", "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"}, -- Mom's Knife
	{"115", "Ouija Board", "Spectral tears"}, -- Ouija Board
	{"116", "9 Volt", "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"}, -- 9 Volt
	{"117", "Dead Bird", "Taking damage spawns a bird that attacks enemies#The bird deals 4.3 contact damage per second"}, -- Dead Bird
	{"118", "Brimstone", "↓ {{Tears}} x0.33 Tears multiplier#{{Chargeable}} Isaac's tears are replaced by a chargeable blood beam#{{Damage}} It deals 13x Isaac's damage over 0.9 seconds"}, -- Brimstone
	{"119", "Blood Bag", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#{{HealingRed}} Heals 4 hearts"}, -- Blood Bag
	{"120", "Odd Mushroom (Thin)", "↑ {{Speed}} +0.3 Speed#↑ {{Tears}} +1.7 Tears#↓ {{Damage}} x0.9 Damage multiplier#↓ {{Damage}} -0.4 Damage"}, -- Odd Mushroom (Thin)
	{"121", "Odd Mushroom (Large)", "↑ {{EmptyHeart}} +1 Empty heart container#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height#↓ {{Speed}} -0.1 Speed"}, -- Odd Mushroom (Large)
	{"122", "Whore of Babylon", "When on half a Red Heart or less:#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +1.5 Damage"}, -- Whore of Babylon
	{"123", "Monster Manual", "{{Timer}} Spawns a random familiar for the room"}, -- Monster Manual
	{"124", "Dead Sea Scrolls", "Triggers a random active item effect#Chooses the effect from a fixed list of items"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bomb", "{{Bomb}} +5 Bombs#Homing bombs"}, -- Bobby-Bomb
	{"126", "Razor Blade", "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"}, -- Razor Blade
	{"127", "Forget Me Now", "Rerolls and restarts the entire floor"}, -- Forget Me Now
	{"128", "Forever Alone", "Long range fly orbital#Deals 30 contact damage per second"}, -- Forever Alone
	{"129", "Bucket of Lard", "↑ {{EmptyHeart}} +2 Empty heart containers#↓ {{Speed}} -0.2 Speed#{{HealingRed}} Heals half a heart"}, -- Bucket of Lard
	{"130", "A Pony", "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"}, -- A Pony
	{"131", "Bomb Bag", "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"}, -- Bomb Bag
	{"132", "A Lump of Coal", "{{Damage}} Tears deal more damage the further they travel"}, -- A Lump of Coal
	{"133", "Guppy's Paw", "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"}, -- Guppy's Paw
	{"134", "Guppy's Tail", "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"}, -- Guppy's Tail
	{"135", "IV Bag", "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"}, -- IV Bag
	{"136", "Best Friend", "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"}, -- Best Friend
	{"137", "Remote Detonator", "{{Bomb}} +5 Bombs#Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"}, -- Remote Detonator
	{"138", "Stigmata", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage"}, -- Stigmata
	{"139", "Mom's Purse", "{{Trinket}} Isaac can hold 2 trinkets"}, -- Mom's Purse
	{"140", "Bob's Curse", "{{Bomb}} +5 Bombs#{{Poison}} Isaac's bombs poison enemies caught in the blast"}, -- Bob's Curse
	{"141", "Pageant Boy", "{{Coin}} Spawns 7 random coins"}, -- Pageant Boy
	{"142", "Scapular", "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"}, -- Scapular
	{"143", "Speed Ball", "↑ {{Speed}} +0.3 Speed#↑ {{Shotspeed}} +0.2 Shot speed"}, -- Speed Ball
	{"144", "Bum Friend", "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"}, -- Bum Friend
	{"145", "Guppy's Head", "Spawns 2-4 blue flies"}, -- Guppy's Head
	{"146", "Prayer Card", "{{EternalHeart}} +1 Eternal Heart"}, -- Prayer Card
	{"147", "Notched Axe", "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"}, -- Notched Axe
	{"148", "Infestation", "Taking damage spawns 1-3 blue flies"}, -- Infestation
	{"149", "Ipecac", "↑ {{Damage}} +40 Damage#↓ {{Tears}} x0.5 Tears multiplier#↓ {{Tears}} +10 Tear delay#Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"}, -- Ipecac
	{"150", "Tough Love", "{{Damage}} 10% chance to shoot teeth that deal 3.2x Isaac's damage#{{Luck}} 100% chance at 9 luck"}, -- Tough Love
	{"151", "The Mulligan", "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"}, -- The Mulligan
	{"152", "Technology 2", "↓ {{Tears}} x0.5 Tears multiplier#↓ {{Damage}} x0.65 Damage multiplier#Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"}, -- Technology 2
	{"153", "Mutant Spider", "↓ {{Tears}} x0.48 Tears multiplier#↓ {{Tears}} +3 Tear delay#Isaac shoots 4 tears at once"}, -- Mutant Spider
	{"154", "Chemical Peel", "↑ {{Damage}} +2 Damage for the left eye"}, -- Chemical Peel
	{"155", "The Peeper", "Floats around the room#Deals 17 contact damage per second"}, -- The Peeper
	{"156", "Habit", "{{Battery}} Taking damage adds 1 charge to the active item"}, -- Habit
	{"157", "Bloody Lust", "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"}, -- Bloody Lust
	{"158", "Crystal Ball", "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{{Timer}} Full mapping effect for the floor (except {{SuperSecretRoom}} Super Secret Room)"}, -- Crystal Ball
	{"159", "Spirit of the Night", "Spectral tears#Flight"}, -- Spirit of the Night
	{"160", "Crack the Sky", "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"}, -- Crack the Sky
	{"161", "Ankh", "{{Player4}} Respawn as ??? (Blue Baby) on death"}, -- Ankh
	{"162", "Celtic Cross", "Taking damage has a 20% chance to make Isaac temporarily invincible#{{Luck}} 100% chance at 27 luck"}, -- Celtic Cross
	{"163", "Ghost Baby", "Shoots spectral tears#Deals 3.5 damage per tear"}, -- Ghost Baby
	{"164", "The Candle", "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"}, -- The Candle
	{"165", "Cat-o-nine-tails", "↑ {{Damage}} +1 Damage#↑ {{Shotspeed}} +0.23 Shot speed"}, -- Cat-o-nine-tails
	{"166", "D20", "Rerolls all pickups in the room"}, -- D20
	{"167", "Harlequin Baby", "Shoots two tears in a V-shaped pattern#Deals 4 damage per tear"}, -- Harlequin Baby
	{"168", "Epic Fetus", "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"}, -- Epic Fetus
	{"169", "Polyphemus", "↑ {{Damage}} +4 Damage#↑ {{Damage}} x2 Damage multiplier#↓ {{Tears}} x0.48 Tears multiplier#↓ {{Tears}} +3 Tear delay#Tears pierce killed enemies if there is leftover damage"}, -- Polyphemus
	{"170", "Daddy Longlegs", "Stomps on a nearby enemy every 4 seconds#Deals 40 damage per second"}, -- Daddy Longlegs
	{"171", "Spider Butt", "{{Slow}} Slows down enemies for 4 seconds#Deals 10 damage to all enemies"}, -- Spider Butt
	{"172", "Sacrificial Dagger", "Orbital#Blocks enemy shots#Deals 225 contact damage per second"}, -- Sacrificial Dagger
	{"173", "Mitre", "{{SoulHeart}} 50% chance that Red Hearts spawn as Soul Hearts instead"}, -- Mitre
	{"174", "Rainbow Baby", "Shoots random tears#Deals 3-5 damage per tear"}, -- Rainbow Baby
	{"175", "Dad's Key", "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"}, -- Dad's Key
	{"176", "Stem Cells", "↑ {{Heart}} +1 Health#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Stem Cells
	{"177", "Portable Slot", "{{Coin}} Spend 1 coin for a chance to spawn a pickup"}, -- Portable Slot
	{"178", "Holy Water", "Taking damage spills a pool of creep#The creep deals 24 damage per second"}, -- Holy Water
	{"179", "Fate", "{{EternalHeart}} +1 Eternal Heart#Flight"}, -- Fate
	{"180", "The Black Bean", "Isaac farts when damaged#{{Poison}} The fart poisons enemies"}, -- The Black Bean
	{"181", "White Pony", "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"}, -- White Pony
	{"182", "Sacred Heart", "↑ {{Heart}} +1 Health#↑ {{Damage}} x2.3 Damage multiplier#↑ {{Damage}} +1 Damage#↑ {{Range}} +0.38 Range#↑ +0.75 Tear height#↓ {{Tears}} -0.4 Tears#↓ {{Shotspeed}} -0.25 Shot speed#{{HealingRed}} Full health#Homing tears"}, -- Sacred Heart
	{"183", "Tooth Picks", "↑ {{Tears}} +0.7 Tears#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Tooth Picks
	{"184", "Holy Grail", "↑ {{Heart}} +1 Health#Flight"}, -- Holy Grail
	{"185", "Dead Dove", "Spectral tears#Flight"}, -- Dead Dove
	{"186", "Blood Rights", "Deals 40 damage to every enemy#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"}, -- Blood Rights
	{"187", "Guppy's Hairball", "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"}, -- Guppy's Hairball
	{"188", "Abel", "Mirrors Isaac's movement#Shoots towards Isaac#Deals 3.5 damage per tear"}, -- Abel
	{"189", "SMB Super Fan", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.2 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.5 Range#↑ +1 Tear height#{{HealingRed}} Full health"}, -- SMB Super Fan
	{"190", "Pyro", "{{Bomb}} +99 Bombs"}, -- Pyro
	{"191", "3 Dollar Bill", "Isaac's tears get random effects every 2-3 seconds"}, -- 3 Dollar Bill
	{"192", "Telepathy For Dummies", "{{Timer}} Homing tears for the room"}, -- Telepathy For Dummies
	{"193", "MEAT!", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage"}, -- MEAT!
	{"194", "Magic 8 Ball", "↑ {{Shotspeed}} +0.16 Shot speed#{{Card}} Spawns a card"}, -- Magic 8 Ball
	{"195", "Mom's Coin Purse", "{{Pill}} Spawns 4 pills"}, -- Mom's Coin Purse
	{"196", "Squeezy", "↑ {{Tears}} +0.4 Tears#{{SoulHeart}} Spawns 2 Soul Hearts"}, -- Squeezy
	{"197", "Jesus Juice", "↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height"}, -- Jesus Juice
	{"198", "Box", "Spawns 1 pickup of each type"}, -- Box
	{"199", "Mom's Key", "{{Key}} +2 Keys#Chests contain more pickups"}, -- Mom's Key
	{"200", "Mom's Eyeshadow", "{{Charm}} 10% chance to shoot charming tears#{{Luck}} 100% chance at 27 luck"}, -- Mom's Eyeshadow
	{"201", "Iron Bar", "↑ {{Damage}} +0.3 Damage#{{Confusion}} 10% chance to shoot concussive tears#{{Luck}} 100% chance at 27 luck"}, -- Iron Bar
	{"202", "Midas' Touch", "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"}, -- Midas' Touch
	{"203", "Humbleing Bundle", "Pickups spawned are doubled if possible"}, -- Humbleing Bundle
	{"204", "Fanny Pack", "Taking damage has a 50% chance to spawn a random pickup"}, -- Fanny Pack
	{"205", "Sharp Plug", "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"}, -- Sharp Plug
	{"206", "Guillotine", "↑ {{Tears}} -1 Tear delay#↑ {{Damage}} +1 Damage#Isaac's head becomes an orbital that shoots, doesn't take damage and deals 105 contact damage per second"}, -- Guillotine
	{"207", "Ball of Bandages", "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"}, -- Ball of Bandages
	{"208", "Champion Belt", "↑ {{Damage}} +1 Damage#Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"}, -- Champion Belt
	{"209", "Butt Bombs", "{{Bomb}} +5 Bombs#{{Confusion}} Explosions concuss and damage every enemy in the room"}, -- Butt Bombs
	{"210", "Gnawed Leaf", "After 1 second of inactivity, Isaac becomes invincible"}, -- Gnawed Leaf
	{"211", "Spiderbaby", "Taking damage spawns 1-2 blue spiders"}, -- Spiderbaby
	{"212", "Guppy's Collar", "50% chance to revive with half a heart on death"}, -- Guppy's Collar
	{"213", "Lost Contact", "↓ {{Shotspeed}} -0.15 Shot speed#Isaac's tears destroy enemy shots"}, -- Lost Contact
	{"214", "Anemic", "↑ {{Range}} +5 Range#{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"}, -- Anemic
	{"215", "Goat Head", "{{AngelDevilChance}} 100% Devil/Angel Room chance"}, -- Goat Head
	{"216", "Ceremonial Robes", "↑ {{Damage}} +1 Damage#{{BlackHeart}} +3 Black Hearts"}, -- Ceremonial Robes
	{"217", "Mom's Wig", "{{HealingRed}} Heals 1 heart#5% chance to spawn a blue spider when shooting tears#{{Luck}} 100% chance at 10 luck"}, -- Mom's Wig
	{"218", "Placenta", "↑ {{Heart}} +1 Health#{{HealingRed}} 50% chance to heal half a heart every minute"}, -- Placenta
	{"219", "Old Bandage", "↑ {{EmptyHeart}} +1 Empty heart container#{{Heart}} Taking damage has a 10% chance to spawn a Red Heart"}, -- Old Bandage
	{"220", "Sad Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs shoot 10 tears in a circle when they explode"}, -- Sad Bombs
	{"221", "Rubber Cement", "Isaac's tears bounce off enemies and obstacles"}, -- Rubber Cement
	{"222", "Anti-Gravity", "↑ {{Tears}} -2 Tear delay#Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"}, -- Anti-Gravity
	{"223", "Pyromaniac", "{{Bomb}} +5 Bombs#Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"}, -- Pyromaniac
	{"224", "Cricket's Body", "↑ {{Tears}} -1 Tear delay#↑ {{Tearsize}} x1.2 Tear size#↓ {{Range}} -10 Range#Tears split up in 4 on hit#Split tears deal half damage"}, -- Cricket's Body
	{"225", "Gimpy", "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"}, -- Gimpy
	{"226", "Black Lotus", "↑ {{Heart}} +1 Health#{{SoulHeart}} +1 Soul Heart#{{BlackHeart}} +1 Black Heart"}, -- Black Lotus
	{"227", "Piggy Bank", "{{Coin}} +3 Coins#{{Coin}} Taking damage spawns 1-2 coins"}, -- Piggy Bank
	{"228", "Mom's Perfume", "↑ {{Tears}} -1 Tear delay#{{Fear}} 15% chance to shoot fear tears"}, -- Mom's Perfume
	{"229", "Monstro's Lung", "↓ {{Tears}} x0.23 Tears multiplier#{{Chargeable}} Tears are charged and released in a shotgun style attack"}, -- Monstro's Lung
	{"230", "Abaddon", "↑ {{Speed}} +0.2 Speed#↑ {{Damage}} +1.5 Damage#↓ {{EmptyHeart}} Removes all heart containers#{{BlackHeart}} +6 Black Hearts#{{Fear}} 15% chance to shoot fear tears"}, -- Abaddon
	{"231", "Ball of Tar", "{{Slow}} 10% chance to shoot slowing tears#{{Luck}} 100% chance at 18 luck#{{Slow}} Isaac leaves a trail of slowing creep"}, -- Ball of Tar
	{"232", "Stop Watch", "↑ {{Speed}} +0.3 Speed#{{Slow}} Taking damage slows all enemies in the room permanently"}, -- Stop Watch
	{"233", "Tiny Planet", "↑ +7 Tear height#Spectral tears#Isaac's tears orbit around him"}, -- Tiny Planet
	{"234", "Infestation 2", "Killing an enemy spawns a blue spider"}, -- Infestation 2
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Touching an enemy turns it into poop"}, -- E. Coli
	{"237", "Death's Touch", "↑ {{Damage}} +1.5 Damage#↑ {{Tearsize}} x2 Tear size#↓ {{Tears}} -0.3 Tears#Piercing tears"}, -- Death's Touch
	{"238", "Key Piece 1", "{{Warning}} Getting both parts of the key opens a big golden door#{{AngelChance}} +25% Angel Room chance#{{EternalHeart}} +2% chance for Eternal Hearts"}, -- Key Piece 1
	{"239", "Key Piece 2", "{{Warning}} Getting both parts of the key opens a big golden door#{{AngelChance}} +25% Angel Room chance#{{EternalHeart}} +2% chance for Eternal Hearts"}, -- Key Piece 2
	{"240", "Experimental Treatment", "↑ Increases 4 random stats#↓ Decreases 2 random stats"}, -- Experimental Treatment
	{"241", "Contract from Below", "Doubles all room clear rewards#33% chance for no room clear reward"}, -- Contract from Below
	{"242", "Infamy", "50% chance to block enemy shots"}, -- Infamy
	{"243", "Trinity Shield", "Blocks enemy shots coming from the direction Isaac is shooting"}, -- Trinity Shield
	{"244", "Tech.5", "Occasionally shoot lasers in addition to Isaac's tears"}, -- Tech.5
	{"245", "20/20", "Isaac shoots 2 tears at once"}, -- 20/20
	{"246", "Blue Map", "{{SecretRoom}} Reveals secret room locations on the map"}, -- Blue Map
	{"247", "BFFS!", "Familiars deal double damage"}, -- BFFS!
	{"248", "Hive Mind", "Blue spiders and flies deal double damage"}, -- Hive Mind
	{"249", "There's Options", "Allows Isaac to choose between 2 items after beating a boss"}, -- There's Options
	{"250", "Bogo Bombs", "{{Bomb}} All bomb drops become double bombs"}, -- Bogo Bombs
	{"251", "Starter Deck", "{{Card}} Spawns 1 card on pickup#Isaac can carry 2 cards#Turns all pills into cards"}, -- Starter Deck
	{"252", "Little Baggy", "{{Pill}} Spawns 1 pill on pickup#Isaac can carry 2 pills#Turns all cards into pills"}, -- Little Baggy
	{"253", "Magic Scab", "↑ {{Heart}} +1 Health#↑ {{Luck}} +1 Luck"}, -- Magic Scab
	{"254", "Blood Clot", "↑ {{Damage}} +1 Damage for the left eye#↑ {{Range}} +5 Range for the left eye#↑ +0.5 Tear height"}, -- Blood Clot
	{"255", "Screw", "↑ {{Tears}} +0.5 Tears#↑ {{Shotspeed}} +0.2 Shot speed"}, -- Screw
	{"256", "Hot Bombs", "{{Bomb}} +5 Bombs#{{Burning}} Isaac's bombs leave a flame where they explode"}, -- Hot Bombs
	{"257", "Fire Mind", "{{Burning}} Isaac's tears light enemies on fire#10% chance for tears to explode on enemy impact#{{Luck}} 100% chance at 13 luck#{{Warning}} The explosion can hurt Isaac"}, -- Fire Mind
	{"258", "Missing No.", "Rerolls all of Isaac's items and stats on pickup and at every new floor"}, -- Missing No.
	{"259", "Dark Matter", "↑ {{Damage}} +1 Damage#{{Fear}} 33% chance to shoot fear tears#{{Luck}} 100% chance at 20 luck"}, -- Dark Matter
	{"260", "Black Candle", "{{CurseBlind}} Immune to curses#{{BlackHeart}} +1 Black Heart#{{AngelDevilChance}} +15% Devil/Angel Room chance"}, -- Black Candle
	{"261", "Proptosis", "↑ {{Damage}} x2 Damage multiplier#↓ Tears deal less damage the further they travel"}, -- Proptosis
	{"262", "Missing Page 2", "{{BlackHeart}} +1 Black Heart#Taking damage down to 1 heart damages all enemies in the room"}, -- Missing Page 2
	{"263", "", "<item does not exist>"},
	{"264", "Smart Fly", "Orbital#Attacks enemies when Isaac takes damage#Deals 22.5 contact damage per second"}, -- Smart Fly
	{"265", "Dry Baby", "10% chance to damage all enemies in the room when it is hit by an enemy tear"}, -- Dry Baby
	{"266", "Juicy Sack", "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"}, -- Juicy Sack
	{"267", "Robo-Baby 2.0", "Shoots lasers#Deals 3.5 damage per shot#Moves in the direction Isaac is shooting"}, -- Robo-Baby 2.0
	{"268", "Rotten Baby", "Spawns blue flies when Isaac shoots"}, -- Rotten Baby
	{"269", "Headless Baby", "Leaves creep which deals 6 damage per second"}, -- Headless Baby
	{"270", "Leech", "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy#Deals 3.2 damage per second"}, -- Leech
	{"271", "Mystery Sack", "Spawns a random pickup every 5-6 rooms"}, -- Mystery Sack
	{"272", "BBF", "Friendly exploding fly#The explosion deals 60 damage#{{Warning}} The explosion can hurt Isaac"}, -- BBF
	{"273", "Bob's Brain", "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals 60 damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"}, -- Bob's Brain
	{"274", "Best Bud", "Taking damage spawns one midrange orbital for the room#It deals 75 contact damage per second"}, -- Best Bud
	{"275", "Lil Brimstone", "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals 31.5 damage over 0.63 seconds"}, -- Lil Brimstone
	{"276", "Isaac's Heart", "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"}, -- Isaac's Heart
	{"277", "Lil Haunt", "{{Fear}} Chases and fears enemies#Deals 4 contact damage per second"}, -- Lil Haunt
	{"278", "Dark Bum", "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"}, -- Dark Bum
	{"279", "Big Fan", "Large orbital#Deals 30 contact damage per second"}, -- Big Fan
	{"280", "Sissy Longlegs", "Randomly spawns blue spiders in hostile rooms"}, -- Sissy Longlegs
	{"281", "Punching Bag", "Decoy familiar#Enemies target him instead of Isaac"}, -- Punching Bag
	{"282", "How to Jump", "Allows Isaac to jump over gaps and obstacles"}, -- How to Jump
	{"283", "D100", "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"}, -- D100
	{"284", "D4", "Reroll all of Isaac's passive items"}, -- D4
	{"285", "D10", "Reroll all enemies in the room"}, -- D10
	{"286", "Blank Card", "Triggers the effect of the rune or card Isaac holds without using it"}, -- Blank Card
	{"287", "Book of Secrets", "{{Timer}} Grants one of these effects for the floor:#{{Collectible54}} Treasure Map#{{Collectible21}} Compass#{{Collectible246}} Blue Map"}, -- Book of Secrets
	{"288", "Box of Spiders", "Spawns 1-4 blue spiders"}, -- Box of Spiders
	{"289", "Red Candle", "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"}, -- Red Candle
	{"290", "The Jar", "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"}, -- The Jar
	{"291", "Flush!", "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"}, -- Flush!
	{"292", "Satanic Bible", "{{BlackHeart}} +1 Black Heart"}, -- Satanic Bible
	{"293", "Head of Krampus", "{{Collectible118}} Shoot a 4-way blood beam#They each deal 440 damage over 1.33 seconds"}, -- Head of Krampus
	{"294", "Butter Bean", "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{Collectible484}} Wait What? when swapping it with a different active item and picking it up again"}, -- Butter Bean
	{"295", "Magic Fingers", "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"}, -- Magic Fingers
	{"296", "Converter", "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Pandora's Box", "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Unicorn Stump", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot (No contact damage)"}, -- Unicorn Stump
	{"299", "Taurus", "↓ {{Speed}} -0.3 Speed#↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"}, -- Taurus
	{"300", "Aries", "↑ {{Speed}} +0.25 Speed#Touching enemies deals contact damage"}, -- Aries
	{"301", "Cancer", "{{SoulHeart}} +3 Soul Hearts#Taking damage reduces all future damage in the room to half a heart"}, -- Cancer
	{"302", "Leo", "Size up#Isaac can destroy rocks by walking into them"}, -- Leo
	{"303", "Virgo", "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"}, -- Virgo
	{"304", "Libra", "+6 {{Coin}} coins, {{Bomb}} bombs and {{Key}} keys#Balances Isaac's stats#Future stat changes will be spread across all stats"}, -- Libra
	{"305", "Scorpio", "{{Poison}} Poison tears"}, -- Scorpio
	{"306", "Sagittarius", "↑ {{Speed}} +0.2 Speed#Piercing tears"}, -- Sagittarius
	{"307", "Capricorn", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.1 Speed#↑ {{Tears}} -1 Tear delay#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +1.5 Range#+1 {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"}, -- Capricorn
	{"308", "Aquarius", "Isaac leaves a trail of creep#The creep deals 6 damage per second"}, -- Aquarius
	{"309", "Pisces", "↑ {{Tears}} -1 Tear delay#↑ {{Tearsize}} x1.25 Tear size#Increases tear knockback"}, -- Pisces
	{"310", "Eve's Mascara", "↑ {{Damage}} x2 Damage multiplier#↓ {{Tears}} x0.5 Tears multiplier#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Eve's Mascara
	{"311", "Judas' Shadow", "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"}, -- Judas' Shadow
	{"312", "Maggy's Bow", "↑ {{Heart}} +1 Health#{{HealingRed}} Heals 1 heart#All Red Hearts heal double their value"}, -- Maggy's Bow
	{"313", "Holy Mantle", "Negates the first hit taken once per room"}, -- Holy Mantle
	{"314", "Thunder Thighs", "↑ {{Heart}} +1 Health#↓ {{Speed}} -0.4 Speed#Isaac can destroy rocks by walking into them"}, -- Thunder Thighs
	{"315", "Strange Attractor", "Isaac's tears attract enemies, pickups and trinkets"}, -- Strange Attractor
	{"316", "Cursed Eye", "Charged wave of 4 tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"}, -- Cursed Eye
	{"317", "Mysterious Liquid", "Isaac's tears leave creep#The creep deals 30 damage per second"}, -- Mysterious Liquid
	{"318", "Gemini", "Close combat familiar#Deals 6 contact damage per second"}, -- Gemini
	{"319", "Cain's Other Eye", "Bounces around the room#Low accuracy tears that deal Isaac's damage"}, -- Cain's Other Eye
	{"320", "???'s Only Friend", "Controllable fly#Deals 37.5 contact damage per second"}, -- ???'s Only Friend
	{"321", "Samson's Chains", "Draggable ball that can destroy rocks#Deals 10.7 contact damage per second"}, -- Samson's Chains
	{"322", "Mongo Baby", "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"}, -- Mongo Baby
	{"323", "Isaac's Tears", "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"}, -- Isaac's Tears
	{"324", "Undefined", "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"}, -- Undefined
	{"325", "Scissors", "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"}, -- Scissors
	{"326", "Breath of Life", "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"}, -- Breath of Life
	{"327", "The Polaroid", "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"}, -- The Polaroid
	{"328", "The Negative", "Taking damage at half a Red Heart or none damages all enemies in the room"}, -- The Negative
	{"329", "The Ludovico Technique", "Replaces Isaac's tears with one giant controllable tear"}, -- The Ludovico Technique
	{"330", "Soy Milk", "↑ {{Tears}} x4 Tears multiplier#↑ {{Tears}} -2 Tear delay#↓ {{Damage}} x0.2 Damage multiplier#↓ {{Tearsize}} x0.5 Tear size"}, -- Soy Milk
	{"331", "Godhead", "↑ {{Damage}} +0.5 Damage#↑ {{Range}} +1.2 Range#↑ +0.8 Tear height#↓ {{Tears}} -0.3 Tears#↓ {{Shotspeed}} -0.3 Shot speed#Homing tears#{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"}, -- Godhead
	{"332", "Lazarus' Rags", "{{Player11}} When dead, revive as Lazarus (Risen)"}, -- Lazarus' Rags
	{"333", "The Mind", "Full mapping effect"}, -- The Mind
	{"334", "The Body", "↑ {{Heart}} +3 Health"}, -- The Body
	{"335", "The Soul", "{{SoulHeart}} +2 Soul Hearts#Grants an aura that repels enemies and projectiles"}, -- The Soul
	{"336", "Dead Onion", "↑ {{Range}} +0.25 Range#↑ {{Tearsize}} x1.5 Tear size#↓ -0.5 Tear height#↓ {{Shotspeed}} -0.4 Shot speed#Piercing + spectral tears"}, -- Dead Onion
	{"337", "Broken Watch", "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"}, -- Broken Watch
	{"338", "The Boomerang", "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"}, -- The Boomerang
	{"339", "Safety Pin", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↑ {{Shotspeed}} +0.16 Shot speed#{{BlackHeart}} +1 Black Heart"}, -- Safety Pin
	{"340", "Caffeine Pill", "↑ {{Speed}} +0.3 Speed#↑ Size down#{{Pill}} Spawns a random pill"}, -- Caffeine Pill
	{"341", "Torn Photo", "↑ {{Tears}} +0.7 Tears#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Torn Photo
	{"342", "Blue Cap", "↑ {{Heart}} +1 Health#↑ {{Tears}} +0.7 Tears#↓ {{Shotspeed}} -0.16 Shot speed"}, -- Blue Cap
	{"343", "Latch Key", "↑ {{Luck}} +1 Luck#{{SoulHeart}} +1 Soul Heart#{{Key}} Spawns 2 keys"}, -- Latch Key
	{"344", "Match Book", "{{BlackHeart}} +1 Black Heart#{{Bomb}} Spawns 3 bombs"}, -- Match Book
	{"345", "Synthoil", "↑ {{Damage}} +1 Damage#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Synthoil
	{"346", "A Snack", "↑ {{Heart}} +1 Health"}, -- A Snack
	{"347", "Diplopia", "Duplicates all item pedestals and pickups in the room"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Triggers the effect of the pill Isaac holds without using it"}, -- Placebo
	{"349", "Wooden Nickel", "{{Coin}} 56% chance to spawn a random coin"}, -- Wooden Nickel
	{"350", "Toxic Shock", "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"}, -- Toxic Shock
	{"351", "Mega Bean", "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"}, -- Mega Bean
	{"352", "Glass Cannon", "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"}, -- Glass Cannon
	{"353", "Bomber Boy", "{{Bomb}} +5 Bombs#Bombs explode in a cross-shaped pattern"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} +1 Health#{{Trinket}} Spawns a trinket"}, -- Crack Jacks
	{"355", "Mom's Pearls", "↑ {{Range}} +1.25 Range#↑ +0.5 Tear height#↑ {{Luck}} +1 Luck"}, -- Mom's Pearls
	{"356", "Car Battery", "{{Battery}} Using an active item triggers its effect twice"}, -- Car Battery
	{"357", "Box of Friends", "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"}, -- Box of Friends
	{"358", "The Wiz", "Spectral tears#Isaac shoots 2 tears at once diagonally"}, -- The Wiz
	{"359", "8 Inch Nails", "↑ {{Damage}} +1.5 Damage#Increases knockback"}, -- 8 Inch Nails
	{"360", "Incubus", "Shoots tears with the same tear rate, damage and effects as Isaac"}, -- Incubus
	{"361", "Fate's Reward", "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"}, -- Fate's Reward
	{"362", "Lil Chest", "35% chance to spawn a pickup every room"}, -- Lil Chest
	{"363", "Sworn Protector", "Orbital#Deals 105 contact damage per second#Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"}, -- Sworn Protector
	{"364", "Friend Zone", "Midrange fly orbital#Deals 45 contact damage per second"}, -- Friend Zone
	{"365", "Lost Fly", "Moves along walls/obstacles#Deals 105 contact damage per second"}, -- Lost Fly
	{"366", "Scatter Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs scatter into 2-4 tiny bombs"}, -- Scatter Bombs
	{"367", "Sticky Bombs", "{{Bomb}} +5 Bombs#Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"}, -- Sticky Bombs
	{"368", "Epiphora", "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"}, -- Epiphora
	{"369", "Continuum", "↑ {{Range}} +2.25 Range#↑ +1.5 Tear height#Spectral tears#Tears can travel through one side of the screen and come out the other side"}, -- Continuum
	{"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#{{UnknownHeart}} Spawns 3 random hearts"}, -- Mr. Dolly
	{"371", "Curse of the Tower", "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"}, -- Curse of the Tower
	{"372", "Charged Baby", "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"}, -- Charged Baby
	{"373", "Dead Eye", "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"}, -- Dead Eye
	{"374", "Holy Light", "10% chance to shoot holy tears, which spawn a beam of light on hit#{{Luck}} 50% chance at 9 luck#{{Damage}} The beam deals 4x Isaac's damage"}, -- Holy Light
	{"375", "Host Hat", "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"}, -- Host Hat
	{"376", "Restock", "Spawns 3 random pickups#Buying an item from a Shop restocks it instantly"}, -- Restock
	{"377", "Bursting Sack", "Spider enemies no longer target or deal contact damage to Isaac"}, -- Bursting Sack
	{"378", "No. 2", "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"}, -- No. 2
	{"379", "Pupula Duplex", "↑ {{Tearsize}} x2 Tear size#Spectral tears"}, -- Pupula Duplex
	{"380", "Pay To Play", "{{Coin}} +5 Coins#{{Coin}} Single-key doors must be opened with coins instead of keys"}, -- Pay To Play
	{"381", "Eden's Blessing", "↑ {{Tears}} +0.7 Tears#Grants a random item at the start of the next run"}, -- Eden's Blessing
	{"382", "Friendly Ball", "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"}, -- Friendly Ball
	{"383", "Tear Detonator", "Splits all of Isaac's tears currently on screen in a circle of 6 tears"}, -- Tear Detonator
	{"384", "Lil Gurdy", "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"}, -- Bumbo
	{"386", "D12", "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"}, -- D12
	{"387", "Censer", "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"}, -- Censer
	{"388", "Key Bum", "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"}, -- Key Bum
	{"389", "Rune Bag", "{{Rune}} Spawns a random rune every 5-6 rooms"}, -- Rune Bag
	{"390", "Seraphim", "Shoots Sacred Heart tears#Deals 10 damage per tear"}, -- Seraphim
	{"391", "Betrayal", "{{Charm}} Taking damage charms all enemies in the room"}, -- Betrayal
	{"392", "Zodiac", "Grants a random zodiac item effect every floor"}, -- Zodiac
	{"393", "Serpent's Kiss", "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"}, -- Serpent's Kiss
	{"394", "Marked", "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +3.15 Range#↑ +0.3 Tear height#Isaac automatically shoots tears at a movable red target on the ground"}, -- Marked
	{"395", "Tech X", "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"}, -- Tech X
	{"396", "Ventricle Razor", "Creates up to two portals to travel between#Can be placed in different rooms"}, -- Ventricle Razor
	{"397", "Tractor Beam", "↑ {{Tears}} +0.5 Tears#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↑ {{Shotspeed}} +0.16 Shot speed#Isaac's tears always travel along a beam of light in front of him"}, -- Tractor Beam
	{"398", "God's Flesh", "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"}, -- God's Flesh
	{"399", "Maw of the Void", "↑ {{Damage}} +1 Damage#{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"}, -- Maw of the Void
	{"400", "Spear of Destiny", "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"}, -- Spear of Destiny
	{"401", "Explosivo", "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"}, -- Explosivo
	{"402", "Chaos", "All items are chosen from random item pools#Spawns 1-6 random pickups"}, -- Chaos
	{"403", "Spider Mod", "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"}, -- Spider Mod
	{"404", "Farting Baby", "Blocks projectiles#When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"}, -- Farting Baby
	{"405", "GB Bug", "Bounces around the room#Deals 120 damage per second and applies random status effects to enemies on contact"}, -- GB Bug
	{"406", "D8", "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"}, -- D8
	{"407", "Purity", "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"}, -- Purity
	{"408", "Athame", "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"}, -- Athame
	{"409", "Empty Vessel", "{{BlackHeart}} +2 Black Hearts#{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"}, -- Empty Vessel
	{"410", "Evil Eye", "3.33% chance to shoot an eye#{{Luck}} 10% chance at 20 luck#The eye moves in a straight line and shoots tears in the same direction as Isaac"}, -- Evil Eye
	{"411", "Lusty Blood", "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"}, -- Lusty Blood
	{"412", "Cambion Conception", "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"}, -- Cambion Conception
	{"413", "Immaculate Conception", "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"}, -- Immaculate Conception
	{"414", "More Options", "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"}, -- More Options
	{"415", "Crown Of Light", "{{SoulHeart}} +2 Soul Hearts#If Isaac has no damaged heart containers:#↑ {{Damage}} x2 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↓ {{Shotspeed}} -0.3 Shot speed#Taking any damage removes the effect for the room"}, -- Crown Of Light
	{"416", "Deep Pockets", "Allows Isaac to carry two runes/cards/pills"}, -- Deep Pockets
	{"417", "Succubus", "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"}, -- Succubus
	{"418", "Fruit Cake", "Each one of Isaac's tears gets a different effect"}, -- Fruit Cake
	{"419", "Teleport 2.0", "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	{"420", "Black Powder", "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"}, -- Black Powder
	{"421", "Kidney Bean", "{{Charm}} Charms and deals 5 damage to all enemies in close range"}, -- Kidney Bean
	{"422", "Glowing Hour Glass", "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"}, -- Glowing Hour Glass
	{"423", "Circle of Protection", "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"}, -- Circle of Protection
	{"424", "Sack Head", "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"}, -- Sack Head
	{"425", "Night Light", "{{Slow}} Spawns a slowing cone of light in front of Isaac"}, -- Night Light
	{"426", "Obsessed Fan", "Mimics Isaac's exact movement on a 3 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	{"427", "Mine Crafter", "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"}, -- Mine Crafter
	{"428", "PJs", "{{HealingRed}} Full health#{{SoulHeart}} +4 Soul Hearts"}, -- PJs
	{"429", "Head of the Keeper", "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"}, -- Head of the Keeper
	{"430", "Papa Fly", "Mimics Isaac's movement on a 1 second delay#Shoots tears at nearby enemies that deal Isaac's damage"}, -- Papa Fly
	{"431", "Multidimensional Baby", "Mimics Isaac's movement on a 2 second delay#Tears that pass through it are doubled and gain a range + shot speed boost"}, -- Multidimensional Baby
	{"432", "Glitter Bombs", "{{Bomb}} +5 Bombs#{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"}, -- Glitter Bombs
	{"433", "My Shadow", "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger#The charger deals 5 damage per second"}, -- My Shadow
	{"434", "Jar of Flies", "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"}, -- Jar of Flies
	{"435", "Lil Loki", "Shoots 4 tears in a cross pattern#Deals 3.5 damage per tear"}, -- Lil Loki
	{"436", "Milk!", "{{Tears}} Taking damage grants a Tears up for the duration of the room"}, -- Milk!
	{"437", "D7", "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"}, -- D7
	{"438", "Binky", "↑ {{Tears}} +0.75 Tears#↑ Size down#{{SoulHeart}} +1 Soul Heart"}, -- Binky
	{"439", "Mom's Box", "{{Trinket}} Spawns a random trinket#While held:#↑ {{Luck}} +1 Luck#{{Trinket}} Doubles trinket effects"}, -- Mom's Box
	{"440", "Kidney Stone", "↑ +2 Tear height#↓ {{Speed}} -0.2 Speed#↓ {{Range}} -17 Range#Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"}, -- Kidney Stone
	{"441", "Mega Blast", "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"}, -- Mega Blast
	{"442", "Dark Prince's Crown", "While at 1 full Red Heart:#↑ {{Tears}} +0.75 Tears#↑ {{Range}} +1.5 Range#↑ +1 Tear height#↑ {{Shotspeed}} +0.2 Shot speed"}, -- Dark Princes Crown (apostrophe added to the name in Repentance) -- Dark Prince's Crown
	{"443", "Apple!", "↑ {{Tears}} +0.3 Tears#{{Damage}} 6.66% chance to shoot razor blades that deal 4x Isaac's damage#{{Luck}} 100% chance at 14 luck"}, -- Apple!
	{"444", "Lead Pencil", "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"}, -- Lead Pencil
	{"445", "Dog Tooth", "↑ {{Speed}} +0.1 Speed#↑ {{Damage}} +0.3 Damage#{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"}, -- Dog Tooth
	{"446", "Dead Tooth", "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"}, -- Dead Tooth
	{"447", "Linger Bean", "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"}, -- Linger Bean
	{"448", "Shard of Glass", "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"}, -- Shard of Glass
	{"449", "Metal Plate", "{{SoulHeart}} +1 Soul Heart#{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"}, -- Metal Plate
	{"450", "Eye of Greed", "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"}, -- Eye of Greed
	{"451", "Tarot Cloth", "{{Card}} Spawns a card#{{Card}} Card effects are doubled or enhanced"}, -- Tarot Cloth
	{"452", "Varicose Veins", "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"}, -- Varicose Veins
	{"453", "Compound Fracture", "↑ {{Range}} +1.5 Range#↑ +1 Tear height#Tears shatter into 1-3 small bone shards upon hitting anything"}, -- Compound Fracture
	{"454", "Polydactyly", "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"}, -- Polydactyly
	{"455", "Dad's Lost Coin", "↑ {{Range}} +1.5 Range#↑ +1 Tear height#{{Luck}} Spawns a Lucky Penny"}, -- Dad's Lost Coin
	{"456", "Moldy Bread", "↑ {{Heart}} +1 Health"}, -- Moldy Bread
	{"457", "Cone Head", "{{SoulHeart}} +1 Soul Heart#20% chance to negate damage taken"}, -- Cone Head
	{"458", "Belly Button", "{{Trinket}} Allows Isaac to carry 2 trinkets#{{Trinket}} Spawns a random trinket"}, -- Belly Button
	{"459", "Sinus Infection", "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for 60 seconds#{{Luck}} Not affected by luck"}, -- Sinus Infection
	{"460", "Glaucoma", "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"}, -- Glaucoma
	{"461", "Parasitoid", "15% chance to shoot egg sacks#{{Luck}} 50% chance at 5 luck#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"}, -- Parasitoid
	{"462", "Eye of Belial", "↑ {{Range}} +1.5 Range#↑ +1 Tear height#Piercing tears#Hitting an enemy makes the tear homing and doubles its damage"}, -- Eye of Belial
	{"463", "Sulfuric Acid", "↑ {{Damage}} +0.3 Damage#Isaac's tears can destroy rocks and open doors"}, -- Sulfuric Acid
	{"464", "Glyph of Balance", "{{SoulHeart}} +2 Soul Hearts#Champion enemies drop whatever pickup Isaac needs the most"}, -- Glyph of Balance
	{"465", "Analog Stick", "↑ {{Tears}} +0.3 Tears#Allows Isaac to shoot tears in any direction"}, -- Analog Stick
	{"466", "Contagion", "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"}, -- Contagion
	{"467", "Finger!", "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"}, -- Finger!
	{"468", "Shade", "Follows Isaac's movement on a 1 second delay#Deals 30 contact damage per second#{{Friendly}} After it deals 600 damage, it is absorbed by Isaac, increasing his contact damage and spawning friendly Chargers"}, -- Shade
	{"469", "Depression", "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"}, -- Depression
	{"470", "Hushy", "Bounces around the room#Deals 30 contact damage per second#Stops moving when Isaac shoots#Blocks projectiles when stopped"}, -- Hushy
	{"471", "Lil Monstro", "{{Chargeable}} Charges a shotgun attack similar to {{Collectible229}} Monstro's Lung#Each tear deals 3.5 damage"}, -- Lil Monstro
	{"472", "King Baby", "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"}, -- King Baby
	{"473", "Big Chubby", "Very slowly charges forwards#Blocks shots#Deals 40.5 contact damage per second"}, -- Big Chubby
	{"474", "Tonsil", "Blocks enemy projectiles"}, -- Tonsil
	{"475", "Plan C", "Deals 9,999,999 damage to all enemies#{{Warning}} Kills Isaac 3 seconds later"}, -- Plan C
	{"476", "D1", "Duplicates a random pickup in the room"}, -- D1
	{"477", "Void", "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"}, -- Void
	{"478", "Pause", "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"}, -- Pause
	{"479", "Smelter", "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"}, -- Smelter
	{"480", "Compost", "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"}, -- Compost
	{"481", "Dataminer", "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"}, -- Dataminer
	{"482", "Clicker", "Changes your character to a random character#Removes the most recent item collected"}, -- Clicker
	{"483", "Mama Mega!", "Affects the whole floor#Explodes all objects#Deals 200 damage to all enemies#Opens secret rooms#Opens Boss Rush and Hush regardless of time"}, -- Mama Mega!
	{"484", "Wait What?", "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"}, -- Wait What?
	{"485", "Crooked Penny", "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"}, -- Crooked Penny
	{"486", "Dull Razor", "Hurts Isaac without removing health#Triggers any on-hit item effects"}, -- Dull Razor
	{"487", "Potato Peeler", "{{EmptyHeart}} Removes 1 heart container for:#↑ {{Damage}} +0.2 Damage#{{Collectible73}} A Cube of Meat#{{Timer}} Receive for the room:#↑ {{Range}} +5 Range#{{Collectible214}} Leave a trail of blood creep"}, -- Potato Peeler
	{"488", "Metronome", "Grants a random item effect for the room"}, -- Metronome
	{"489", "D Infinity", "Triggers a random dice effect each use"}, -- D Infinity
	{"490", "Eden's Soul", "Spawns 2 random items depending on the current room's item pool#Starts with no charges"}, -- Eden's Soul
	{"491", "Acid Baby", "{{Pill}} Spawns a random pill every 3 rooms#{{Poison}} Using a pill poisons all enemies in the room"}, -- Acid Baby
	{"492", "YO LISTEN!", "↑ {{Luck}} +1 Luck#Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"}, -- YO LISTEN!
	{"493", "Adrenaline", "For every empty heart container:#↑ {{Damage}} +0.2 Damage"}, -- Adrenaline
	{"494", "Jacob's Ladder", "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"}, -- Jacob's Ladder
	{"495", "Ghost Pepper", "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"}, -- Ghost Pepper
	{"496", "Euthanasia", "3.33% chance to shoot a needle#{{Luck}} 100% chance at 15 luck#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"}, -- Euthanasia
	{"497", "Camo Undies", "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"}, -- Camo Undies
	{"498", "Duality", "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"}, -- Duality
	{"499", "Eucharist", "{{AngelChance}} 100% chance for Angel Rooms to spawn"}, -- Eucharist
	{"500", "Sack of Sacks", "Spawns a sack every 5-6 rooms"}, -- Sack of Sacks
	{"501", "Greed's Gullet", "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"}, -- Greed's Gullet
	{"502", "Large Zit", "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"}, -- Large Zit
	{"503", "Little Horn", "5% chance to shoot tears that instantly kill enemies#{{Luck}} 20% chance at 15 luck#Isaac deals 3.5 contact damage"}, -- Little Horn
	{"504", "Brown Nugget", "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"}, -- Brown Nugget
	{"505", "Poke Go", "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"}, -- Poke Go
	{"506", "Backstabber", "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"}, -- Backstabber
	{"507", "Sharp Straw", "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"}, -- Sharp Straw
	{"508", "Mom's Razor", "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"}, -- Mom's Razor
	{"509", "Bloodshot Eye", "Orbital that shoots a tear in a random direction every 2 seconds#Deals 3.5 damage per tear#Deals 30 contact damage per second#Does not block shots"}, -- Bloodshot Eye
	{"510", "Delirious", "{{Friendly}} Spawns a friendly delirium version of a boss for the room"}, -- Delirious
	{"511", "Angry Fly", "Orbits a random enemy until that enemy dies#Deals 30 contact damage per second to other enemies"}, -- Angry Fly
	{"512", "Black Hole", "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"}, -- Black Hole
	{"513", "Bozo", "↑ {{Damage}} +0.1 Damage#{{SoulHeart}} +1 Soul Heart#{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"}, -- Bozo
	{"514", "Broken Modem", "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"}, -- Broken Modem
	{"515", "Mystery Gift", "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"}, -- Mystery Gift
	{"516", "Sprinkler", "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"}, -- Sprinkler
	{"517", "Fast Bombs", "{{Bomb}} +7 Bombs#Removes the delay between bomb placements"}, -- Fast Bombs
	{"518", "Buddy in a Box", "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"}, -- Buddy in a Box
	{"519", "Lil Delirium", "Transforms into a random familiar every 10 seconds"}, -- Lil Delirium
	{"520", "Jumper Cables", "Killing 15 enemies adds 1 charge to the active item"}, -- Jumper Cables
	{"521", "Coupon", "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"}, -- Coupon
	{"522", "Telekinesis", "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"}, -- Telekinesis
	{"523", "Moving Box", "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"}, -- Moving Box
	{"524", "Technology Zero", "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"}, -- Technology Zero
	{"525", "Leprosy", "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"}, -- Leprosy
	{"526", "7 Seals", "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"}, -- 7 Seals
	{"527", "Mr. ME!", "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"}, -- Mr. ME!
	{"528", "Angelic Prism", "Orbital prism#Friendly tears hitting it split into 4"}, -- Angelic Prism
	{"529", "Pop!", "Isaac's tears bounce off each other and disappear when they stop moving"}, -- Pop!
	{"530", "Death's List", "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"}, -- Death's List
	{"531", "Haemolacria", "↑ {{Damage}} x1.31 Damage multiplier#↓ {{Tears}} x0.5 Tears multiplier#↓ {{Tears}} +10 Tear delay#Isaac's tears fly in an arc and burst into smaller tears on impact"}, -- Haemolacria
	{"532", "Lachryphagy", "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"}, -- Lachryphagy
	{"533", "Trisagion", "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"}, -- Trisagion
	{"534", "Schoolbag", "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"}, -- Schoolbag
	{"535", "Blanket", "{{HealingRed}} Heals 1 heart#{{SoulHeart}} +1 Soul Heart#{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"}, -- Blanket
	{"536", "Sacrificial Altar", "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"}, -- Sacrificial Altar
	{"537", "Lil Spewer", "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"}, -- Lil Spewer
	{"538", "Marbles", "{{Trinket}} Spawns 3 random trinkets#{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"}, -- Marbles
	{"539", "Mystery Egg", "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"}, -- Mystery Egg
	{"540", "Flat Stone", "Isaac's tears bounce off the floor and cause splash damage on every bounce"}, -- Flat Stone
	{"541", "Marrow", "{{Heart}} Spawns 3 Red Hearts#{{EmptyBoneHeart}} +1 Bone Heart"}, -- Marrow
	{"542", "Slipped Rib", "Orbital#Reflects enemy projectiles"}, -- Slipped Rib
	{"543", "Hallowed Ground", "Taking damage spawns a white poop#While inside the poop's aura:#↑ {{Tears}} x2 Tears multiplier#Chance to block damage"}, -- Hallowed Ground
	{"544", "Pointy Rib", "Levitates in front of Isaac#Deals 6x Isaac's damage per second"}, -- Pointy Rib
	{"545", "Book of the Dead", "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"}, -- Book of the Dead
	{"546", "Dad's Ring", "{{Petrify}} Grants an aura that petrifies enemies"}, -- Dad's Ring
	{"547", "Divorce Papers", "↑ {{Tears}} +0.7 Tears#{{EmptyBoneHeart}} +1 Bone Heart#{{Trinket21}} Spawns the Mysterious Paper trinket"}, -- Divorce Papers
	{"548", "Jaw Bone", "Boomerang-like familiar#Deals 7 contact damage#Can grab and bring back pickups"}, -- Jaw Bone
	{"549", "Brittle Bones", "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#↑ {{Tears}} +0.5 Tears#Shoots 8 bone tears in all directions"}, -- Brittle Bones
	{"550", "Broken Shovel", "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"}, -- Broken Shovel
	{"551", "Broken Shovel", "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\""}, -- Broken Shovel
	{"552", "Mom's Shovel", "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\""}, -- Mom's Shovel
}

---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "No effect",
	[35] = {40, 80}, -- The Necronomicon
	[37] = { " a ", " 2 ", "bomb", "{{CR}}bombs" }, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "heart", "{{CR}}hearts"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "card", "{{CR}}cards"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {" a ", " 2 ", "pickup", "{{CR}}pickups"}, -- The Book of Sin
	[102] = {1, 2, "pill", "{{CR}}pills"}, -- Mom's Bottle of Pills
	[105] = "Rerolls twice, draining item pools faster", -- The D6
	[107] = "Spawns two bodies", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" a ", " 2 ", "familiar", "{{CR}}familiars"}, -- Monster Manual
	[124] = {" a ", " 2 ", "effect", "{{CR}}effects"}, -- Dead Sea Scrolls
	[136] = {" a ", " 2 ", "Isaac", "{{CR}}Isaacs"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, " Heart", " {{CR}}Hearts"}, -- Prayer Card (should this just say +1 health...)
	[158] = {" a ", " 2 ", " Heart", " {{CR}}Hearts", "rune", "{{CR}}runes", "card", "{{CR}}cards"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Rerolls twice, helping with transformation progress but draining item pools faster", -- D100
	[284] = "Rerolls twice, helping with transformation progress but draining item pools faster", -- D4
	[286] = "Triggers it twice", -- Blank Card
	[287] = {"one", "two"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Increased knockback", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Triggers it twice", -- Placebo
	[349] = "Triggers the chance twice", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Duplicates", "Triplicates"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" a ", " 2 ", "barrel", "{{CR}}barrels", "barrel", "{{CR}}barrels"}, -- Mine Crafter
	[439] = {" a ", " 2 ", "trinket", "{{CR}}trinkets"}, -- Mom's Box
	[476] = {" a ", " 2 ", "pickup", "{{CR}}pickups"}, -- D1
	[477] = "Activates every absorbed active item twice", -- Void
	[480] = {"Doubles", "Quadruples"}, -- Compost
	[481] = "Two stat ups and stat downs", -- Dataminer
	[482] = "Changes your character twice and removes two items", -- Clicker
	[485] = "25% chance to quadruple, 25% chance to double and remove the originals, 50% chance to remove", -- Crooked Penny
	[486] = {"effects", "{{CR}}effects {{BlinkYellowGreen}}twice"}, -- Dull Razor
	[488] = "Activates twice, but only the second effect stays", -- Metronome
	[489] = {" a ", " 2 ", "effect", "{{CR}}effects"}, -- D Infinity
	[504] = {" a ", " 2 ", "turret", "{{CR}}turrets"}, -- Brown Nugget
	[507] = "Triggers twice", -- Sharp Straw
	[510] = {" a ", " 2 ", "version", "{{CR}}versions"}, -- Delirious
	[516] = {" a ", " 2 ", "Sprinkler", "{{CR}}Sprinklers"}, -- Sprinkler
	[521] = {"one", "two", "item", "{{CR}}items"}, -- Coupon
	[523] = "Swaps box contents with room pickups", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Stops stomps for two rooms (or Boss Rush waves)", -- Broken Shovel
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "No effect from {1}",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Damage doubled", -- Cube of Meat
	["5.100.88"] = {52.5, 105}, -- Little Chubby
	["5.100.94"] = {"2", "1-2"}, -- Sack of Pennies
	["5.100.95"] = {3.5, 7}, -- Robo-Baby
	["5.100.96"] = {"3", "2-3"}, -- Little C.H.A.D.
	["5.100.98"] = {"5-6", "4-5"}, -- The Relic
	["5.100.99"] = {3.5, 7}, -- Little Gish
	["5.100.100"] = {3.5, 7}, -- Little Steven
	["5.100.107"] = {82.5, 165}, -- The Pinking Shears
	["5.100.112"] = {105, 210}, -- Guardian Angel
	["5.100.113"] = {3, 6}, -- Demon Baby
	["5.100.117"] = {4.3, 8.6}, -- Dead Bird
	["5.100.128"] = {30, 60}, -- Forever Alone
	["5.100.131"] = {"3", "2-3"}, -- Bomb Bag
	["5.100.144"] = {"3-4", "3"}, -- Bum Friend
	["5.100.155"] = {17, 34}, -- The Peeper
	["5.100.163"] = {3.5, 7}, -- Ghost Baby
	["5.100.167"] = {4, 8}, -- Harlequin Baby
	["5.100.170"] = {40, 80}, -- Daddy Longlegs
	["5.100.172"] = {225, 450}, -- Sacrificial Dagger
	["5.100.174"] = {"3-5", "6-10"}, -- Rainbow Baby
	["5.100.187"] = "Damage doubled", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "Damage doubled", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "Spawns an extra Blue Spider", -- Juicy Sack
	["5.100.267"] = {3.5, 7}, -- Robo-Baby 2.0
	["5.100.270"] = {3.2, 6.4}, -- Leech
	["5.100.271"] = {"5-6", "4-5"}, -- Mystery Sack
	["5.100.272"] = {60, 85}, -- BBF
	["5.100.273"] = {60, 85}, -- Bob's Brain
	["5.100.274"] = {75, 150}, -- Best Bud
	["5.100.275"] = {31.5, 63}, -- Lil Brimstone
	["5.100.277"] = {4, 8}, -- Lil Haunt
	["5.100.279"] = {30, 60}, -- Big Fan
	["5.100.318"] = {6, 12}, -- Gemini
	["5.100.319"] = {"Isaac's damage", "double {{CR}}Isaac's damage"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Damage doubled", -- Incubus
	["5.100.361"] = "Damage doubled", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Higher chance to spawn batteries", -- Charged Baby
	["5.100.384"] = {"5-90", "10-180"}, -- Lil Gurdy
	["5.100.385"] = "Damage doubled", -- Bumbo
	["5.100.388"] = "Spawns chests more often", -- Key Bum
	["5.100.389"] = {"5-6", "4-5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "Higher chance to spawn batteries", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "The damaging aura gets bigger, but the damage up aura doesn't", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"Isaac's damage", "double {{CR}}Isaac's damage"}, -- Papa Fly
	["5.100.435"] = {3.5, 7}, -- Lil Loki
	["5.100.468"] = {30, 60}, -- Shade
	["5.100.470"] = {30, 60}, -- Hushy
	["5.100.471"] = {3.5, 7}, -- Lil Monstro
	["5.100.473"] = {40.5, 81}, -- Big Chubby
	["5.100.491"] = {"3", "2-3"}, -- Acid Baby
	["5.100.500"] = {"5-6", "4-5"}, -- Sack of Sacks
	["5.100.508"] = {3, 6}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 30, 60}, -- Bloodshot Eye
	["5.100.511"] = {30, 60}, -- Angry Fly
	["5.100.518"] = "Damage doubled", -- Buddy in a Box
	["5.100.519"] = "Damage doubled", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "Horseman contact damage is doubled", -- 7 Seals
	["5.100.537"] = "Increases creep size, but not damage", -- Lil Spewer
	["5.100.539"] = "Spawns a champion variant of the enemy", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Bone orbital's contact damage is doubled", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone
	
	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Incubus damage is doubled", -- Incubus (for BFFS pedestal)
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	{"1", "Swallowed Penny", "{{Coin}} Taking damage spawns 1 coin"}, -- Swallowed Penny
	{"2", "Petrified Poop", "50% chance to get drops from poop"}, -- Petrified Poop
	{"3", "AAA Battery", "{{Battery}} -1 Charge needed for active items"}, -- AAA Battery
	{"4", "Broken Remote", "{{Collectible44}} Using an active item teleports Isaac to a random room"}, -- Broken Remote
	{"5", "Purple Heart", "2x chance for champion enemies"}, -- Purple Heart
	{"6", "Broken Magnet", "{{Coin}} Attracts coins to Isaac"}, -- Broken Magnet
	{"7", "Rosary Bead", "{{AngelChance}} 50% higher Angel Room chance#{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"}, -- Rosary Bead
	{"8", "Cartridge", "{{Timer}} 5% chance upon taking damage to receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Cartridge
	{"9", "Pulse Worm", "Isaac's tears pulsate#Affects tear hitbox"}, -- Pulse Worm
	{"10", "Wiggle Worm", "↑ {{Tears}} +0.3 Tears#Isaac's tears move in waves"}, -- Wiggle Worm
	{"11", "Ring Worm", "Isaac's tears move in spirals with high speed"}, -- Ring Worm
	{"12", "Flat Worm", "50% wider tears#Increases knockback"}, -- Flat Worm
	{"13", "Store Credit", "{{Shop}} Allows Isaac to take 1 Shop item for free"}, -- Store Credit
	{"14", "Callus", "Immune to creep and floor spikes"}, -- Callus
	{"15", "Lucky Rock", "{{Coin}} Destroying rocks spawns coins"}, -- Lucky Rock
	{"16", "Mom's Toenail", "Mom's Foot stomps a random spot in the room every 60 seconds"}, -- Mom's Toenail
	{"17", "Black Lipstick", "{{BlackHeart}} +5% chance for random Soul Hearts to spawn as Black Hearts"}, -- Black Lipstick
	{"18", "Bible Tract", "{{EternalHeart}} +3% chance for Eternal Hearts"}, -- Bible Tract
	{"19", "Paper Clip", "{{GoldenChest}} Gold chests can be opened for free"}, -- Paper Clip
	{"20", "Monkey Paw", "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"}, -- Monkey Paw
	{"21", "Mysterious Paper", "Randomly grants the effect of: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"}, -- Mysterious Paper
	{"22", "Daemon's Tail", "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"}, -- Daemon's Tail
	{"23", "Missing Poster", "{{Player10}} Respawn as The Lost on death"}, -- Missing Poster
	{"24", "Butt Penny", "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"}, -- Butt Penny
	{"25", "Mysterious Candy", "Isaac farts or spawns poop every 30 seconds"}, -- Mysterious Candy
	{"26", "Hook Worm", "↑ {{Range}} +10 Range#Isaac's tears move in angular patterns"}, -- Hook Worm
	{"27", "Whip Worm", "↑ {{Shotspeed}} +0.5 Shot speed"}, -- Whip Worm
	{"28", "Broken Ankh", "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"}, -- Broken Ankh
	{"29", "Fish Head", "Taking damage spawns 1 blue fly"}, -- Fish Head
	{"30", "Pinky Eye", "{{Poison}} 10% chance to shoot poison tears#{{Luck}} 100% chance at 18 luck"}, -- Pinky Eye
	{"31", "Push Pin", "10% chance to shoot piercing + spectral tears#{{Luck}} 100% chance at 18 luck"}, -- Push Pin
	{"32", "Liberty Cap", "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"}, -- Liberty Cap
	{"33", "Umbilical Cord", "{{Timer}} Spawns {{Collectible100}} Little Steven for the room when Isaac's health is reduced to half a heart"}, -- Umbilical Cord
	{"34", "Child's Heart", "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"}, -- Child's Heart
	{"35", "Curved Horn", "↑ {{Damage}} +2 Damage"}, -- Curved Horn
	{"36", "Rusted Key", "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"}, -- Rusted Key
	{"37", "Goat Hoof", "↑ {{Speed}} +0.15 Speed"}, -- Goat Hoof
	{"38", "Mom's Pearl", "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"}, -- Mom's Pearl
	{"39", "Cancer", "↑ {{Tears}} -2 Tear delay"}, -- Cancer
	{"40", "Red Patch", "{{Timer}} Taking damage has a 20% chance to grant ↑ {{Damage}} +1.8 damage for the room#{{Luck}} 100% chance at 8 luck"}, -- Red Patch
	{"41", "Match Stick", "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"}, -- Match Stick
	{"42", "Lucky Toe", "↑ {{Luck}} +1 Luck#+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"}, -- Lucky Toe
	{"43", "Cursed Skull", "When damaged down to half a heart or less, Isaac is teleported to a random room"}, -- Cursed Skull
	{"44", "Safety Cap", "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"}, -- Safety Cap
	{"45", "Ace of Spades", "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"}, -- Ace of Spades
	{"46", "Isaac's Fork", "{{HealingRed}} Clearing a room has a 10% chance to heal half a heart#{{Luck}} 100% chance at 18 luck"}, -- Isaac's Fork
	{"47", "", "<Item does not exist>"},
	{"48", "A Missing Page", "Taking damage has a 5% chance to deal 40 damage to all enemies in the room"}, -- A Missing Page
	{"49", "Bloody Penny", "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"}, -- Bloody Penny
	{"50", "Burnt Penny", "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"}, -- Burnt Penny
	{"51", "Flat Penny", "{{Key}} Picking up a coin has a 50% chance to spawn a key"}, -- Flat Penny
	{"52", "Counterfeit Penny", "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"}, -- Counterfeit Penny
	{"53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"}, -- Tick
	{"54", "Isaac's Head", "Familiar with piercing tears#Deals 3.5 damage per tear"}, -- Isaac's Head
	{"55", "Maggy's Faith", "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"}, -- Maggy's Faith
	{"56", "Judas' Tongue", "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"}, -- Judas' Tongue
	{"57", "???'s Soul", "Familiar that bounces around the room#Shoots in the same direction as Isaac#Deals 3.5 damage per tear"}, -- ???'s Soul
	{"58", "Samson's Lock", "{{Timer}} Killing an enemy has a 1/15 chance to grant ↑ {{Damage}} +0.5 damage for the room#{{Luck}} 100% chance at 10 luck"}, -- Samson's Lock
	{"59", "Cain's Eye", "Entering a new floor has a 25% chance to reveal map icons#{{Luck}} 100% chance at 3 luck"}, -- Cain's Eye
	{"60", "Eve's Bird Foot", "{{Collectible117}} Killing an enemy has a 5% chance to spawn a Dead Bird#{{Luck}} 100% chance at 8 luck"}, -- Eve's Bird Foot
	{"61", "The Left Hand", "{{RedChest}} Turns all chests into Red Chests"}, -- The Left Hand
	{"62", "Shiny Rock", "Crawlspace rocks and tinted rocks blink every 10 seconds"}, -- Shiny Rock
	{"63", "Safety Scissors", "{{Bomb}} Turns Troll Bombs into bomb pickups"}, -- Safety Scissors
	{"64", "Rainbow Worm", "Grants a random worm effect every 3 seconds"}, -- Rainbow Worm
	{"65", "Tape Worm", "↑ {{Range}} x2 Range multiplier#↓ x0.5 Tear height"}, -- Tape Worm
	{"66", "Lazy Worm", "↑ {{Range}} +4 Range#↑ +2 Tear height#↓ {{Shotspeed}} -0.4 Shot speed"}, -- Lazy Worm
	{"67", "Cracked Dice", "Taking damage has a 50% chance to trigger one of these effects:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"}, -- Cracked Dice
	{"68", "Super Magnet", "Isaac attracts pickups and enemies"}, -- Super Magnet
	{"69", "Faded Polaroid", "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"}, -- Faded Polaroid
	{"70", "Louse", "Occasionally spawns a blue spider in hostile rooms"}, -- Louse
	{"71", "Bob's Bladder", "Isaac's bombs leave damaging creep"}, -- Bob's Bladder
	{"72", "Watch Battery", "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"}, -- Watch Battery
	{"73", "Blasting Cap", "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"}, -- Blasting Cap
	{"74", "Stud Finder", "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"}, -- Stud Finder
	{"75", "Error", "Grants a random trinket effect every room"}, -- Error
	{"76", "Poker Chip", "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"}, -- Poker Chip
	{"77", "Blister", "Increases knockback"}, -- Blister
	{"78", "Second Hand", "Status effects applied to enemies last twice as long"}, -- Second Hand
	{"79", "Endless Nameless", "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"}, -- Endless Nameless
	{"80", "Black Feather", "↑ {{Damage}} +0.2 Damage for each \"Evil up\" item held"}, -- Black Feather
	{"81", "Blind Rage", "Invincibility frames after taking damage last twice as long"}, -- Blind Rage
	{"82", "Golden Horse Shoe", "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"}, -- Golden Horse Shoe
	{"83", "Store Key", "{{Shop}} Lets Isaac open Shops for free"}, -- Store Key
	{"84", "Rib of Greed", "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"}, -- Rib of Greed
	{"85", "Karma", "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"}, -- Karma
	{"86", "Lil Larva", "Destroying poop spawns 1 blue fly"}, -- Lil Larva
	{"87", "Mom's Locket", "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"}, -- Mom's Locket
	{"88", "NO!", "Prevents active items from spawning"}, -- NO!
	{"89", "Child Leash", "Familiars stay closer to Isaac"}, -- Child Leash
	{"90", "Brown Cap", "Poop explodes for 100 damage when destroyed"}, -- Brown Cap
	{"91", "Meconium", "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"}, -- Meconium
	{"92", "Cracked Crown", "↑ {{Tears}} x0.8 Tear delay#↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"}, -- Cracked Crown
	{"93", "Used Diaper", "15% chance per room for all fly enemies to become friendly"}, -- Used Diaper
	{"94", "Fish Tail", "Doubles all blue fly / spider spawns"}, -- Fish Tail
	{"95", "Black Tooth", "{{Poison}} 3% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"}, -- Black Tooth
	{"96", "Ouroboros Worm", "↑ {{Range}} +4 Range#↑ +2 Tear height#Spectral tears#Chance for homing tears#{{Luck}} 100% chance at 9 luck#Isaac's tears move quickly in a spiral pattern"}, -- Ouroboros Worm
	{"97", "Tonsil", "Taking damage 12-20 times spawns a projectile blocking familiar#Caps at 2 familiars"}, -- Tonsil
	{"98", "Nose Goblin", "10% chance to shoot homing sticky tears#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 60 seconds"}, -- Nose Goblin
	{"99", "Super Ball", "10% chance to shoot bouncing tears"}, -- Super Ball
	{"100", "Vibrant Bulb", "Holding a fully charged active item grants:#↑ {{Speed}} +0.25 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.75 Range#↑ {{Shotspeed}} +0.1 Shot speed#↑ {{Luck}} +1 Luck"}, -- Vibrant Bulb
	{"101", "Dim Bulb", "Holding a completely uncharged active item grants:#↑ {{Speed}} +0.5 Speed#↑ {{Tears}} +0.4 Tears#↑ {{Damage}} +1.5 Damage#↑ {{Range}} +1.5 Range#↑ {{Shotspeed}} +0.3 Shot speed#↑ {{Luck}} +2 Luck"}, -- Dim Bulb
	{"102", "Fragmented Card", "{{SecretRoom}} +1 extra Secret Room per floor while held"}, -- Fragmented Card
	{"103", "Equality!", "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"}, -- Equality!
	{"104", "Wish Bone", "2% chance to get destroyed and spawn a pedestal item when hit"}, -- Wish Bone
	{"105", "Bag Lunch", "{{Collectible22}} 2% chance to get destroyed and spawn Lunch when hit"}, -- Bag Lunch
	{"106", "Lost Cork", "Increases the radius of friendly creep"}, -- Lost Cork
	{"107", "Crow Heart", "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"}, -- Crow Heart
	{"108", "Walnut", "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"}, -- Walnut
	{"109", "Duct Tape", "Familiars are stuck in one spot and cannot move"}, -- Duct Tape
	{"110", "Silver Dollar", "{{Shop}} Shops appear in the Womb"}, -- Silver Dollar
	{"111", "Bloody Crown", "{{TreasureRoom}} Treasure Rooms appear in the Womb"}, -- Bloody Crown
	{"112", "Pay To Win", "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"}, -- Pay To Win
	{"113", "Locust of War", "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"}, -- Locust of War
	{"114", "Locust of Pestilence", "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"}, -- Locust of Pestilence
	{"115", "Locust of Famine", "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"}, -- Locust of Famine
	{"116", "Locust of Death", "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"}, -- Locust of Death
	{"117", "Locust of Conquest", "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"}, -- Locust of Conquest
	{"118", "Bat Wing", "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"}, -- Bat Wing
	{"119", "Stem Cell", "{{HealingRed}} Entering a new floor heals half a heart"}, -- Stem Cell
	{"120", "Hairpin", "{{Battery}} Entering an uncleared boss room fully recharges active items"}, -- Hairpin
	{"121", "Wooden Cross", "{{Collectible313}} Negates the first damage taken on the floor"}, -- Wooden Cross
	{"122", "Butter!", "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"}, -- Butter!
	{"123", "Filigree Feather", "Angel bosses drop angel items instead of Key Pieces"}, -- Filigree Feather
	{"124", "Door Stop", "The last door used stays open"}, -- Door Stop
	{"125", "Extension Cord", "Connects all familiars with beams of electricity#The beams deal 6 damage"}, -- Extension Cord
	{"126", "Rotten Penny", "Picking up a coin spawns a blue fly"}, -- Rotten Penny
	{"127", "Baby-Bender", "Grants all familiars homing shots"}, -- Baby-Bender
	{"128", "Finger Bone", "{{EmptyBoneHeart}} Taking damage has a 2% chance to grant a Bone Heart"}, -- Finger Bone
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - The Fool", "Teleports Isaac to the first room of the floor"}, -- 0 - The Fool
	{"2", "I - The Magician", "{{Timer}} Homing tears for the room"}, -- I - The Magician
	{"3", "II - The High Priestess", "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"}, -- II - The High Priestess
	{"4", "III - The Empress", "{{Timer}} Receive for the room:#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +1.5 Damage"}, -- III - The Empress
	{"5", "IV - The Emperor", "{{BossRoom}} Teleports Isaac to the Boss Room"}, -- IV - The Emperor
	{"6", "V - The Hierophant", "{{SoulHeart}} Spawns 2 Soul Hearts"}, -- V - The Hierophant
	{"7", "VI - The Lovers", "{{Heart}} Spawns 2 Red Hearts"}, -- VI - The Lovers
	{"8", "VII - The Chariot", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot but deals 40 contact damage per second"}, -- VII - The Chariot
	{"9", "VIII - Justice", "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"}, -- VIII - Justice
	{"10", "IX - The Hermit", "{{Shop}} Teleports Isaac to the Shop"}, -- IX - The Hermit
	{"11", "X - Wheel of Fortune", "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"}, -- X - Wheel of Fortune
	{"12", "XI - Strength", "{{Timer}} Receive for the room:#↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- XI - Strength
	{"13", "XII - The Hanged Man", "{{Timer}} Flight for the room"}, -- XII - The Hanged Man
	{"14", "XIII - Death", "Deals 40 damage to all enemies in the room"}, -- XIII - Death
	{"15", "XIV - Temperance", "{{DonationMachine}} Spawns a Blood Donation Machine"}, -- XIV - Temperance
	{"16", "XV - The Devil", "{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- XV - The Devil
	{"17", "XVI - The Tower", "Spawns 6 Troll Bombs"}, -- XVI - The Tower
	{"18", "XVII - The Stars", "{{TreasureRoom}} Teleports Isaac to the Treasure Room"}, -- XVII - The Stars
	{"19", "XVIII - The Moon", "{{SecretRoom}} Teleports Isaac to the Secret Room"}, -- XVIII - The Moon
	{"20", "XIX - The Sun", "{{HealingRed}} Full health#Deals 100 damage to all enemies#{{Timer}} Full mapping effect for the floor (except {{SuperSecretRoom}} Super Secret Room)"}, -- XIX - The Sun
	{"21", "XX - Judgement", "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"}, -- XX - Judgement
	{"22", "XXI - The World", "{{Timer}} Full mapping effect for the floor (except {{SuperSecretRoom}} Super Secret Room)"}, -- XXI - The World
	{"23", "2 of Clubs", "{{Bomb}} Doubles Isaac's number of bombs"}, -- 2 of Clubs
	{"24", "2 of Diamonds", "{{Coin}} Doubles Isaac's number of coins"}, -- 2 of Diamonds
	{"25", "2 of Spades", "{{Key}} Doubles Isaac's number of keys"}, -- 2 of Spades
	{"26", "2 of Hearts", "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"}, -- 2 of Hearts
	{"27", "Ace of Clubs", "{{Bomb}} Turns all pickups into random bombs"}, -- Ace of Clubs
	{"28", "Ace of Diamonds", "{{Coin}} Turns all pickups into random coins"}, -- Ace of Diamonds
	{"29", "Ace of Spades", "{{Key}} Turns all pickups into random keys"}, -- Ace of Spades
	{"30", "Ace of Hearts", "{{UnknownHeart}} Turns all pickups into random hearts"}, -- Ace of Hearts
	{"31", "Joker", "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"}, -- Joker
	{"32", "Hagalaz", "Destroy all rocks in the room"}, -- Hagalaz
	{"33", "Jera", "Duplicates all pickups in room"}, -- Jera
	{"34", "Ehwaz", "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"}, -- Ehwaz
	{"35", "Dagaz", "{{SoulHeart}} +1 Soul Heart#{{CurseCursed}} Removes all curses for the floor"}, -- Dagaz
	{"36", "Ansuz", "{{Timer}} Full mapping effect for the floor"}, -- Ansuz
	{"37", "Perthro", "Rerolls all pedestal items in the room"}, -- Perthro
	{"38", "Berkano", "Summons 3 blue spiders and 3 blue flies"}, -- Berkano
	{"39", "Algiz", "{{Timer}} Makes Isaac invincible for 30 seconds"}, -- Algiz
	{"40", "Blank Rune", "Triggers a random rune effect#25% chance to duplicate itself when used"}, -- Blank Rune
	{"41", "Black Rune", "Deals 40 damage to all enemies#Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"}, -- Black Rune
	{"42", "Chaos Card", "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"}, -- Chaos Card
	{"43", "Credit Card", "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"}, -- Credit Card
	{"44", "Rules Card", "Displays \"helpful\" tips on use"}, -- Rules Card
	{"45", "A Card Against Humanity", "Fills the whole room with poop"}, -- A Card Against Humanity
	{"46", "Suicide King", "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"}, -- Suicide King
	{"47", "Get Out Of Jail Free Card", "Open all doors in the room"}, -- Get Out Of Jail Free Card
	{"48", "? Card", "Uses Isaac's active item for free"}, -- ? Card
	{"49", "Dice Shard", "Rerolls all item pedestals and pickups in the room"}, -- Dice Shard
	{"50", "Emergency Contact", "Two of Mom's Hands come down and grab an enemy each"}, -- Emergency Contact
	{"51", "Holy Card", "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"}, -- Holy Card
	{"52", "Huge Growth", "{{Timer}} Receive for the room:#↑ {{Damage}} +7 Damage#↑ {{Range}} +30 Range#Size up#Allows Isaac to destroy rocks by walking into them"}, -- Huge Growth
	{"53", "Ancient Recall", "{{Card}} Spawns 3 random cards"}, -- Ancient Recall
	{"54", "Era Walk", "{{Timer}} Receive for the room:#↑ {{Speed}} +0.5 Speed#↓ {{Shotspeed}} -1 Shot speed#{{Slow}} Slow down enemies"}, -- Era Walk
}

--[[ Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple) ]]
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Spawns {{ColorShinyPurple}}2{{CR}} random {{UnknownHeart}} hearts, {{Coin}} coins, {{Bomb}} bombs and {{Key}} keys"}, -- VIII - Justice
	[11] = {" a Slot Machine", " 2 {{CR}}Slot Machines", " it ", " {{CR}}each "}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", " Machine", " {{CR}}Machines", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" a Beggar", " 2 {{CR}}Beggars", " it ", " {{CR}}each ", " it ", " {{CR}}each "}, -- XX - Judgement
	[23] = {"Doubles", "Quadruples"}, -- 2 of Clubs
	[24] = {"Doubles", "Quadruples"}, -- 2 of Diamonds
	[25] = {"Doubles", "Quadruples"}, -- 2 of Spades
	[26] = {"Doubles", "Quadruples"}, -- 2 of Hearts
	[33] = {"Doubles", "Quadruples"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Rerolls twice", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Triggers 2 rune effects and tries to duplicate itself twice", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Uses it twice", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Unidentified Pill"

EID.descriptions[languageCode].pills={
	{"0", "Bad Gas", "{{Poison}} Isaac farts and poisons nearby enemies"}, -- Bad Gas
	{"1", "Bad Trip", "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +2 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Isaac quickly spawns 5 lit bombs"}, -- Explosive Diarrhea
	{"5", "Full Health", "{{HealingRed}} Fully heals all heart containers"}, -- Full Health
	{"6", "Health Down", "↓ {{EmptyHeart}} -1 Health#Becomes a Health Up pill at 0 or 1 heart containers"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +1 Empty heart container"}, -- Health Up
	{"8", "I Found Pills", "No effect"}, -- I Found Pills
	{"9", "Puberty", "No effect#Eating 3 grants the Adult transformation:#↑ {{Heart}} +1 Health"}, -- Puberty
	{"10", "Pretty Fly", "+1 Fly orbital"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -2 Range"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +2.5 Range"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.12 Speed"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.15 Speed"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.28 Tears"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.35 Tears"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -1 Luck"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +1 Luck"}, -- Luck Up
	{"19", "Telepills", "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"}, -- Telepills
	{"20", "48 Hour Energy!", "{{Battery}} Fully recharges the active item#{{Battery}} Spawns 1-2 batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "{{Warning}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"}, -- Hematemesis
	{"22", "Paralysis", "Prevents Isaac from moving and shooting for 2 seconds"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Opens all secret room entrances on the floor"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Charms all enemies in the room"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Hides the map for the floor"}, -- Amnesia
	{"26", "Lemon Party", "Spawns a large puddle on the ground which damages enemies"}, -- Lemon Party
	{"27", "R U A Wizard?", "{{Timer}} Isaac shoots diagonally for 30 seconds"}, -- R U A Wizard?
	{"28", "Percs!", "{{Timer}} Reduces all damage taken to half a heart for the room"}, -- Percs!
	{"29", "Addicted!", "{{Timer}} Increases all damage taken to a full heart for the room"}, -- Addicted!
	{"30", "Re-Lax", "Isaac spawns poop behind him for 2 seconds"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Curse of the Maze effect for the floor"}, -- ???
	{"32", "One makes you larger", "Increases Isaac's size#Doesn't affect his hitbox"}, -- One makes you larger
	{"33", "One makes you small", "Decreases Isaac's size#Also decreases his hitbox"}, -- One makes you small
	{"34", "Infested!", "Spawns 1 blue spider for each poop in the room"}, -- Infested!
	{"35", "Infested?", "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"}, -- Infested?
	{"36", "Power Pill!", "{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Power Pill!
	{"37", "Retro Vision", "{{Timer}} Pixelates the screen 3 times over 30 second"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 3 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawns a pool of slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "{{Slow}} Spawns a pool of slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "{{Slow}} Slows all enemies in the room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Speeds up all enemies in the room"}, -- I'm Excited!!
	{"43", "Gulp!", "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Shoots one Ipecac tear"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "{{Timer}} Receive for 6 seconds:#Invincibility#Isaac can't shoot (No contact damage)"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns the last pill used before Vurp!"}, -- Vurp!
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalene", ""},
	[2] = {"Cain", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts"},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Flight#{{Collectible118}} Short range Brimstone instead of tears"},
	[8] = {"Lazarus", "When you die, resurrect as Lazarus Risen with 1 Red Heart container"},
	[9] = {"Eden", "Start with random stats and items each run"},
	[10] = {"The Lost", "Flight#Spectral tears#{{Warning}} No health#{{DevilRoom}} One devil deal per room can be taken for free"},
	[11] = {"Lazarus Risen", "Increased stats and x1.2 damage multiplier"},
	[12] = {"Dark Judas", "{{Damage}} x2 Damage multiplier#{{Player3}} Counts as Judas for completion marks"},
	[13] = {"Lilith", "Cannot shoot tears#{{Collectible360}} Her Incubus shoots for her"},
	[14] = {"Keeper", "{{CoinHeart}} Heal by picking up coins#Maximum of 2 Coin Hearts#Heart pickups are turned into Blue Flies"},
	[15] = {"Apollyon", ""},
	[16] = {"The Forgotten", "You have a melee attack which can be charged and thrown#{{BoneHeart}} Can have up to 6 Bone Hearts#{{Player17}} Press {{ButtonRT}} to switch to The Soul#{{SoulHeart}} The Soul can have up to 6 Soul/Black Hearts and has flight and spectral tears#The Soul is chained to a small radius around The Forgotten"},
	[17] = {"The Forgotten Soul", "You have a melee attack which can be charged and thrown#{{BoneHeart}} Can have up to 6 Bone Hearts#{{Player17}} Press {{ButtonRT}} to switch to The Soul#{{SoulHeart}} The Soul can have up to 6 Soul/Black Hearts and has flight and spectral tears#The Soul is chained to a small radius around The Forgotten"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Next Sacrifice Room payout]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% chance for 1 coin#{{Bomb}} 100% chance for 1 bomb, when on B1 and killed the boss under 1 minute"},
	{"2", "", "{{Coin}} 50% chance for 1 coin#{{Bomb}} 100% chance for 1 bomb, when on B1 and killed the boss under 1 minute"},
	{"3", "", "{{AngelChance}} 67% chance for increased Angel Room chance"},
	{"4", "", "{{Chest}} 50% chance for 1 random chest"},
	{"5", "", "{{Coin}} 33% chance for 3 coins#{{AngelChance}} 67% chance for increased Angel Room chance"},
	{"6", "", "{{AngelRoom}} 33% chance for a teleport to the Angel Room#{{DevilRoom}} Teleports to the Devil Room instead if its door was spawned on the current floor#{{Chest}} 67% chance for random chest"},
	{"7", "", "{{AngelRoom}} 33% chance for 1 random Angel Room item#{{SoulHeart}} 67% chance for 1 Soul Heart"},
	{"8", "", "100% chance for 7 Troll Bombs"},
	{"9", "", "100% chance to spawn \"Uriel\""},
	{"10", "", "{{SoulHeart}} 50% chance for 7 Soul Hearts#{{Coin}} 50% chance for 30 coins"},
	{"11", "", "100% chance to spawn \"Gabriel\""},
	{"12", "", "50% chance to teleport to the \"Dark Room\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Dice Room effects]"

EID.descriptions[languageCode].dice={
	{"1", "", "Rerolls all of Isaac's items into random items from the room pool they were acquired in"},
	{"2", "", "Rerolls all pickups in the room"},
	{"3", "", "Rerolls all pickups and trinkets on the entire floor#Does not affect the {{AngelDevilChance}} Devil/Angel Room or {{LadderRoom}} crawlspaces"},
	{"4", "", "Rerolls all pedestal items on the floor#Does not affect the {{AngelDevilChance}} Devil/Angel Room or {{LadderRoom}} crawlspaces"},
	{"5", "", "Rerolls and restarts the current floor"},
	{"6", "", "Rerolls all of Isaac's items#Rerolls all pickups, trinkets and pedestal items on the floor"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fun Guy",			-- 2
	"Beelzebub",		-- 3
	"Conjoined",		-- 4
	"Spun",				-- 5
	"Yes Mother?",		-- 6
	"Oh Crap",			-- 7
	"Bob",				-- 8
	"Leviathan",		-- 9
	"Seraphim",			-- 10
	"Super Bum",		-- 11
	"Bookworm",			-- 12
	"Spider Baby",		-- 13
	"Adult",			-- 14
	"Stompy"			-- 15
}

---------- MISC ----------

-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- English plural is very easy. Simply put an "s" at the end of specific words, if amount > 1
	-- replace {pluralize} placeholders inside the text with an "s"
	return EID:ReplaceVariableStr(text, "pluralize", amount > 1 and "s" or "")
end

EID.descriptions[languageCode].VoidText = "If absorbed, gain:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{1} Speed", "{1} Tears", "{1} Damage", "{1} Range", "{1} Shot speed", "{1} Luck"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Damage", "↑ {{Tears}} -4 Tear delay", "↑ {{Speed}} +0.5 Speed", "↑ {{Range}} +7.5 Range#↑ +1 Tear height"}

EID.descriptions[languageCode].CrookedPennyHeads = "Heads"
EID.descriptions[languageCode].CrookedPennyTails = "Tails"

EID.descriptions[languageCode].LuckModifier = "{1}% chance at {2} luck"

EID.descriptions[languageCode].CollectionPageInfo = "This item needs to be picked up for the collection page!"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} items currently held (+{2} Damage)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} SINGLE USE {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"↑ {{Heart}} +{1} Health", "{{SoulHeart}} +{1} Soul Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{SoulHeart}} +{1} Soul Heart{pluralize}",
	"↓ {{EmptyHeart}} {1} Health", "↓ {{SoulHeart}} {1} Soul Heart{pluralize}"},
	
	["Red to Black"] = {"↑ {{Heart}} +{1} Health", "{{BlackHeart}} +{1} Black Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{BlackHeart}} +{1} Black Heart{pluralize}",
	"↓ {{EmptyHeart}} {1} Health", "↓ {{BlackHeart}} {1} Black Heart{pluralize}"},
	
	["Red to Bone"] = {"↑ {{Heart}} +{1} Health", "{{BoneHeart}} +{1} Bone Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{EmptyBoneHeart}} +{1} Empty Bone Heart{pluralize}", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} Health", "↓ {{EmptyBoneHeart}} {1} Bone Heart{pluralize}"}, -- Red HP to Bone Hearts
	
	["Red to Coin"] = {"↑ {{Heart}} +{1} Health", "{{CoinHeart}} +{1} Coin Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{EmptyCoinHeart}} +{1} Empty Coin Heart{pluralize}",
	"{{HealingRed}} Heals {1} heart{pluralize}", "{{HealingCoin}} Heals {1} coin{pluralize}", "{{HealingRed}} Heals half a heart", "{{HealingCoin}} Heals 1 coin", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Health", "↓ {{EmptyCoinHeart}} {1} Coin Heart{pluralize}"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {"↑ {{Heart}} +{1} Health", "", "↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "", "↓ {{EmptyHeart}} {1} Health", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Demo Object Name",
	DemoObjectTransformation = "Demo Transformation",
	DemoObjectText = "This text is in english#A very cool and long description to simulate linebreaks caused by EID textbox width!#{{Collectible4}} This is also a cool line#{{Heart}} This line loves you#{{AngelDevilChance}} This line can be your angel or your devil#\1 {{Damage}} +1 Stat Change up",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Result",
	InventoryEmpty = "(Player has no items)",
	CategoryNames = {
		Overview = "Inventory Overview",
		Wisps = "Lemegeton Wisps",
		Special = "Special",
		Actives = "Held Active Items",
		Pockets = "Held Pocket Items",
		Trinkets = "Held Trinkets",
		Passives = "Held Passive Items",
		Character = "Character Info",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Normal Room", "Shop", "I AM ERROR Room", "Treasure Room", "Boss Room", "Miniboss Room", "Secret Room", "Super Secret Room", "Arcade Room", "Curse Room", "Challenge Room", "Library", "Sacrifice Room", "Devil Room", "Angel Room", "Crawlspace Room", "Boss Rush Room", "Isaac's Room", "Barren Room", "Chest Room", "Dice Room", "Black Market", "Exit Room", "Planetarium", "Teleporter Entrance", "Teleporter Exit", "Alt Path Trapdoor", "Blue Key Room", "Ultra Secret Room",
-- Not technically room types but still potentially useful to have localized
[666] = "Devil/Angel Room", [1024] = "Red Room", [1025] = "Special Red Room" }

-- currently used for D1 and Glyph of Balance; contains Rep pickups for ease of localization
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "None",

	["5.10"] = "{{Heart}} Heart",
	["5.10.1"] = "{{Heart}} Heart", ["5.10.2"] = "{{HalfHeart}} Half Heart", ["5.10.3"] = "{{SoulHeart}} Soul Heart", ["5.10.4"] = "{{EternalHeart}} Eternal Heart", ["5.10.5"] = "{{Heart}} Double Heart", ["5.10.6"] = "{{BlackHeart}} Black Heart", ["5.10.7"] = "{{GoldHeart}} Gold Heart", ["5.10.8"] = "{{HalfSoulHeart}} Half Soul Heart", ["5.10.9"] = "{{Heart}} Scared Heart", ["5.10.10"] = "{{BlendedHeart}} Blended Heart", ["5.10.11"] = "{{EmptyBoneHeart}} Bone Heart", ["5.10.12"] = "{{RottenHeart}} Rotten Heart",

	["5.20"] = "{{Coin}} Coin",
	["5.20.1"] = "{{Crafting8}} Penny", ["5.20.2"] = "{{Crafting9}} Nickel", ["5.20.3"] = "{{Crafting10}} Dime", ["5.20.4"] = "{{Crafting8}} Double Penny", ["5.20.5"] = "{{Crafting11}} Lucky Penny", ["5.20.6"] = "{{Crafting9}} Sticky Nickel", ["5.20.7"] = "{{Crafting26}} Golden Penny",

	["5.30"] = "{{Key}} Key",
	["5.30.1"] = "{{Crafting12}} Key", ["5.30.2"] = "{{Crafting13}} Golden Key", ["5.30.3"] = "{{Crafting12}} Key Ring", ["5.30.4"] = "{{Crafting14}} Charged Key",

	["5.40"] = "{{Bomb}} Bomb",
	["5.40.1"] = "{{Crafting15}} Bomb", ["5.40.2"] = "{{Crafting15}} Double Bomb", ["5.40.3"] = "{{Crafting15}} Troll Bomb", ["5.40.4"] = "{{Crafting16}} Golden Bomb", ["5.40.5"] = "{{Crafting15}} Mega Troll Bomb", ["5.40.7"] = "{{Crafting17}} Giga Bomb",
	
	["5.42"] = "{{Crafting29}} Poop Nugget", ["5.42.1"] = "{{Crafting29}} Big Poop Nugget",

	["5.90"] = "{{Battery}} Battery",
	["5.90.0"] = "{{Crafting19}} Lil' Battery", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Lil' Battery", ["5.90.2"] = "{{Crafting18}} Micro Battery", ["5.90.3"] = "{{Crafting20}} Mega Battery", ["5.90.4"] = "{{Crafting28}} Golden Battery",

	["5.50"] = "{{Chest}} Chest", ["5.51"] = "{{BombChest}} Bomb Chest", ["5.52"] = "{{SpikedChest}} Spiked Chest", ["5.53"] = "{{EternalChest}} Eternal Chest", ["5.54"] = "{{MimicChest}} Mimic Chest", ["5.55"] = "{{OldChest}} Old Chest", ["5.56"] = "{{WoodenChest}} Wooden Chest", ["5.57"] = "{{MegaChest}} Mega Chest", ["5.58"] = "{{HauntedChest}} Haunted Chest", ["5.60"] = "{{GoldenChest}} Golden Chest", ["5.360"] = "{{RedChest}} Red Chest",

	["5.69"] = "{{GrabBag}} Grab Bag", ["5.69.1"] = "{{GrabBag}} Grab Bag", ["5.69.2"] = "{{BlackSack}} Black Sack",

	["5.70"] = "{{Pill}} Pill",
	["5.300"] = "{{Card}} Card",
	["5.301"] = "{{Rune}} Rune", -- not a real id
	["5.350"] = "{{Trinket}} Trinket",

}

-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Overridden by {1}",
	["Overrides"] = "Overrides {1}",
	["Almost No Effect"] = "Little to no effect for {1}",
	["No Effect"] = "No effect for {1}",
	["No Effect Replace"] = {"No effect for {1}"},
	["No Effect From"] = "No effect from {1}",
	["Can't Charge"] = "Can't charge {1}",
	["Can't Be Charged"] = "Can't be charged by {1}",
	["Can't Be Duplicated"] = "Can't be duplicated",
	["No Effect (Greed)"] = "{{GreedMode}} No effect in Greed Mode",
	["No Effect (Copies)"] = "No additional effect from multiple copies", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "No additional effect on familiars", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Different effect for {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} dies on use", -- for Razor Blade and such as The Lost
	
	
	------ GREED MODE ------
	["Room to Wave"] = {"room", "wave", "room", "wave"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Champions don't drop pickups in Greed Mode!", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} Spawns a Devil Beggar"}, -- Temperance (Greed)
	["5.300.19"] = {"Teleports Isaac to the first room of the floor"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Full health#Deals 100 damage to all enemies"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Doesn't trigger once per wave, just once per room", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} No shield on Boss Waves, only on Ultra Greed", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} No charge on Boss Waves, only on Ultra Greed", -- Hairpin (Greed)
	["5.100.246"] = {"{{SuperSecretRoom}} Reveals the Super Secret Room location on the map"}, -- Blue Map (Greed)
	["5.100.333"] = {"{{SuperSecretRoom}} Reveals the Super Secret Room location on the map"}, -- The Mind (Greed)
	["5.100.514"] = {"Causes some enemies and projectiles to briefly pause at random intervals"}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a wave"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"Spawns rewards based on floor:#Basement: 2{{Bomb}} + 2{{Key}}#Caves: Boss item + 2{{SoulHeart}}#Depths: 20{{Coin}}#Womb: 2 Boss items#Sheol: Devil item + 1{{BlackHeart}}#The Shop/Ultra Greed: 1{{Coin}}"}, -- Pandora's Box
	
	
	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Dying in a {{SacrificeRoom}} Sacrifice Room while holding this trinket unlocks The Lost", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Unlocks {{Collectible523}} Moving Box", "Nothing"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 Soul Hearts"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 Soul Heart#{{BlackHeart}} +1 Black Heart"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 Soul Hearts#{{BlackHeart}} +1 Black Heart"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 Soul Heart#{{BlackHeart}} +2 Black Hearts"}, -- for Black Heart chars
	
	
	["5.100.135 (PHD)"] = "Spawns 2-3 coins if you have {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Spawns 0-1 coin as {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1} simply gets ↑ {{Tears}} +0.4 Tears on pickup", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1} can gain additional coin containers", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} just dies", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac fires 3 more tears#No additional stat decrease", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac fires 4 more tears#No additional stat decrease", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac fires 2 more tears", -- 20/20
	["5.100.358 (Copies)"] = "Isaac fires 2 more tears closer to the center", -- The Wiz
	["5.100.64 (Copies)"] = "Owning this item a second time makes all Shop items free", -- Steam Sale
	["5.100.118 (Copies)"] = "Isaac fires an additional beam", -- Brimstone
	["5.100.224 (Copies)"] = "Additional copies only give -0.2 speed", -- Kidney Stone
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Brown Nugget turrets count as familiars",
	["Sacrificial Conception"] = "Familiars granted by {1} can be sacrificed, and will respawn",
	["Sacrificial Angels"] = "{1} spawns 2 Black Hearts if sacrificed",
	["Sacrificial Void"] = "Can be used multiple times if absorbed by Void",
	
	["5.100.116 (1 Room)"] = "1 Room recharges become 15 second recharges while in an uncleared room", -- 9 Volt
	["5.100.116 (Timed)"] = "Timed recharges start half full", -- 9 Volt
	["9 Volt 1 Room"] = "15 second recharge while in an uncleared room", -- Actives + 9 Volt
	["9 Volt Timed"] = "Charge starts half full after use", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Reduces the cost to half a heart", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} can't prevent the death", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Does not prevent death by {1}", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "x1.5 Damage multiplier while {1} effect is active", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Damage multiplier", -- Book of Belial
	["5.300.16"] = "x1.5 Damage multiplier", -- XV - The Devil
	
	["5.100.81"] = "Characters that can't have Red Hearts get set to 1 Soul/Black Heart", -- Dead Cat
	["5.100.316"] = "{1} removes the teleportation effect", -- Cursed Eye
	["5.100.260"] = "Removes the teleportation effect of {1}", -- Black Candle
	["Void Single Use"] = "Single use items are only activated once", -- Single Use Actives + Void
	["? Card Single Use"] = "Single use items will disappear after using ? Card", -- Single Use Actives + ? Card
	["5.300.48"] = "Teleport to I AM ERROR Room#Blank Card and ? Card will be destroyed", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Using ? Card with Blank Card teleports you to the I AM ERROR room and destroys both cards", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Free items won't be restocked", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} +0.2 Damage", -- Black Feather items
	
	["Bulb Multiple"] = "Only checks the primary active item", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Actives with 0 max charges trigger the bulb", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "Basically useless with timed recharges", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Triggers at 1 Red Heart as {1}", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Isaac shoots forward and to the sides instead", -- R U A Wizard + The Wiz
	["5.100.523"] = "Counts as a passive item to {1}", -- Moving Box + Void
	["Mongo Babies"] = "Can be copied by {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "With {1}, the laser replaces your tears entirely",
	["Brimstone Proptosis"] = "Beams deal additional 2x damage at point blank range, decreasing with distance",
	["Brimstone Ipecac"] = "Ipecac tears are fired while charging#The +40 damage applies to the laser",
	["Proptosis Anti-Gravity"] = "Tears don't lose damage until they start moving",
	["Epic Fetus Soy Milk"] = "Crosshair time is not shortened, but missile damage is drastically reduced",
	["Eye of Belial Dr. Fetus"] = "Bombs pierce, but don't home or do additional damage",
	["Epic Fetus Brimstone"] = "{1} has priority#Rockets shoot out 10 beams",
	["Epic Fetus Mom's Knife"] = "{1} has priority#Rockets shoot out 10 knives",
	["Haemolacria Brimstone"] = "{1} has priority#Tears split into 4-7 beams",
	["Brimstone Mom's Knife"] = "{1} has priority#A barrage of knives shoot out based on charge amount",
	["Ludovico Ipecac"] = "The tear gets +4 damage but doesn't explode or poison",
	["Technology Ipecac"] = "The laser gets +4 damage and poisons targets",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} x1.25 Tears multiplier",
	["Chocolate Milk Marked"] = "Isaac automatically charges based on distance from the crosshair",
	["Ghost Pepper Fart"] = "Farting causes a flame to shoot out behind Isaac",
	["Damage Multiplier Stack"] = "The damage multiplier doesn't stack",
	["White Poop"] = "Spawns White Poop instead",
	["White Poop Chance"] = "Chance to spawn White Poop",
	["Golden Poop Chance"] = "Chance to spawn Golden Poop",
	["5.100.483"] = "{{GoldenBomb}} Having a golden bomb when using the item consumes it and allows for another use of Mama Mega",
	
	["5.300.5"] = {"{{BossRoom}} Teleports Isaac to a random Boss Room"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Teleports Isaac to a random room if there's no Treasure Room", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Teleports Isaac to a random Treasure Room"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Teleports Isaac to the first room of the floor"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Teleports Isaac to a random room if there's no Shop", -- IX - The Hermit (Womb and below)
	
}



