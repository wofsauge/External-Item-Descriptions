-- This file contains text elements that are used for the modular description system.
-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "â†‘ +1 VÃ½Å¡ka Slz", -- My Reflection
	-- Full old Desc: "DÃ¡vÃ¡ slzÃ¡m bumerangovÃ½ efekt#â†‘ {{Range}} +1.5 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ {{Shotspeed}} +0.6 VÄ›tÅ¡Ã­ Rychlost StÅ™el#â†‘ +1 VÃ½Å¡ka Slz"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Spojenec s normalnÃ­mi slzami", -- Brother Bobby
	-- Full old Desc: "Spojenec s normalnÃ­mi slzami#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "VÅ¡echny nepÅ™Ã¡telskÃ© mouchy jsou nynÃ­ pÅ™Ã¡telskÃ©", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "ZnovuzrozenÃ­ s plnÃ½m zdravÃ­m", -- 1up!
	-- Full old Desc: "â†‘ +1 Å¾ivot#ZnovuzrozenÃ­ s plnÃ½m zdravÃ­m"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Z nepÅ™Ã¡tel mohou spadnout ÄŒernÃ¡ Srdce, pokud jsou otrÃ¡veni", -- The Virus
	-- Full old Desc: "{{Poison}} JedovatÃ½ dotek#â†“ {{Speed}} -0.1 SnÃ­Å¾enÃ­ Rychlosti#{{BlackHeart}} Z nepÅ™Ã¡tel mohou spadnout ÄŒernÃ¡ Srdce, pokud jsou otrÃ¡veni"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "ZobrazÃ­ vÅ¡echny ikony na mapÄ›#Nezobrazuje rozloÅ¾enÃ­ mapy", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "LÃ©tÃ¡nÃ­ pro aktuÃ¡lnÃ­ mÃ­stnos#{{MomsHeart}} OkamÅ¾itÄ› zabije MÃ¡minu Nohu a MÃ¡mino Srdce#!!! Zabije TEBE pÅ™i pouÅ¾itÃ­ na Satana", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "VytvoÅ™Ã­ jedno hovÃ­nko a odstrÄÃ­ nepÅ™Ã¡tele zpÄ›t#Lze umÃ­stit vedle jÃ¡my a zniÄit bombou, aby se vytvoÅ™il most", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "VystÅ™elÃ­ 10 slz v kruhu kolem IzÃ¡ka", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "ZmrazÃ­ vÅ¡echny nepÅ™Ã¡tele v aktuÃ¡lnÃ­ mÃ­stnosti na 4 sekundy", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "ZpÅ¯sobÃ­ explozi v mÃ­stÄ› hrÃ¡Äe", -- Kamikaze!
	-- Full old Desc: "ZpÅ¯sobÃ­ explozi v mÃ­stÄ› hrÃ¡Äe#ZpÅ¯sobÃ­ 40 poÅ¡kozenÃ­"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Po dobu 5-ti sekund se nepÅ™Ã¡telÃ© budou bÃ¡t v aktuÃ¡lnÃ­ mÃ­stnosti", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "{{Poison}} VrhacÃ­ jedovatÃ¡ bomba", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleportuje IzÃ¡ka do nÃ¡hodnÃ© mÃ­stnosti kromÄ› mÃ­stnostÃ­ JSEM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "LepÅ¡Ã­ Å¡ance na vÃ½hru pÅ™i hranÃ­ hazardnÃ­ch her#ZvyÅ¡uje Å¡anci o 8% na odmÄ›nu z vyklizenÃ­ mÃ­stnosti", -- Lucky Foot
	-- Full old Desc: "â†‘ {{Luck}} +1 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­#LepÅ¡Ã­ Å¡ance na vÃ½hru pÅ™i hranÃ­ hazardnÃ­ch her#ZvyÅ¡uje Å¡anci o 8% na odmÄ›nu z vyklizenÃ­ mÃ­stnosti"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} PÅ™i pouÅ¾itÃ­ zamÄ›Å™ujeÅ¡ pomocÃ­ kÅ™Ã­Å¾e#StÅ™ela pÅ™istane na zamÄ›Å™ovacÃ­m kÅ™Ã­Å¾i po 1,5 sekundÄ›#zpÅ¯sobÃ­ 20nÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Laser s vysokÃ½m poÅ¡kozenÃ­m", -- Shoop da Whoop!
	-- Full old Desc: "Laser s vysokÃ½m poÅ¡kozenÃ­m"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "â†“ {{Tears}} ZpoÅ¾dÄ›nÃ­ Slz x 2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Bomby namÃ­sto slz#KaÅ¾dÃ¡ bomba zpÅ¯sobÃ­ 5x tvoje poÅ¡kozenÃ­ + 30#â†“ {{Tears}} ZpoÅ¾dÄ›nÃ­ Slz x 2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Magneticky pÅ™itahuje pickupy", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "OdhalÃ­ rozloÅ¾enÃ­ patra#Nezobrazuje ikony mÃ­stnostÃ­", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "VytvoÅ™Ã­ kaluÅ¾ limonÃ¡dy#ZpÅ¯sobÃ­ 24 kontaknÃ­ho poÅ¡kozenÃ­ za sekundu", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "OrbitÃ¡lnÃ­ muÅ¡ka stÅ™ednÃ­ vzdÃ¡lenosti", -- Distant Admiration
	-- Full old Desc: "OrbitÃ¡lnÃ­ muÅ¡ka stÅ™ednÃ­ vzdÃ¡lenosti#UdÄ›luje 75 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "ChoÄ pÅ™es malÃ© mezery", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} VylÃ©ÄÃ­ pÅ¯l srdce kaÅ¾dÃ½ch 13 zabitÃ½ch nepÅ™Ã¡tel", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "AktivnÃ­ pÅ™edmÄ›ty lze nynÃ­ nabÃ­t dvakrÃ¡t", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} -50% na pÅ™edmÄ›ty v obchodÄ›#Pokud tuto poloÅ¾ku zÃ­skÃ¡Å¡ dvakrÃ¡t, bude vÅ¡e zdarma", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "VytvoÅ™Ã­ 6 trollÃ­ch bomb blÃ­zko stÅ™edu mÃ­stnosti", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Zpomaluje nepÅ™Ã¡tele na 8 sekund", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Spojenec s normalnÃ­mi slzami", -- Sister Maggy
	-- Full old Desc: "Spojenec s normalnÃ­mi slzami#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Slzy jsou nynÃ­ lasery", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} NabÃ­jecÃ­ slzy#â†‘ {{Damage}} AÅ¾ 400% PoÅ¡kozenÃ­#â†“ {{Tears}} MÃ©nÄ› Slz", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "â†‘ ZmenÅ¡enÃ­", -- Mini Mush
	-- Full old Desc: "â†‘ {{Speed}} +0.3 ZvÃ½Å¡enÃ­ Rychlosti#â†“ {{Range}} -4.25 MenÅ¡Ã­ DostÅ™el*#â†‘ +1.5 VÃ½Å¡ka Slz*#(*oba se sÄÃ­tajÃ­ do mÃ­rnÃ©ho VÄ›tÅ¡Ã­ho DostÅ™elu)#â†‘ ZmenÅ¡enÃ­"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "LVL1: OrbitÃ¡lnÃ­ maso#LVL2: OrbitÃ¡lnÃ­ a stÅ™Ã­lejÃ­cÃ­ maso#LVL3: MasovÃ½ Kluk LVL1#LVL4: MasovÃ½ Kluk LVL2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} VÃ­ce penÄ›z ze StrojÅ¯ na DarovÃ¡nÃ­ Krve a {{Collectible135}} InfuznÃ­ vak ", -- PHD
	-- Full old Desc: "{{Pill}} LepÅ¡Ã­ pilulky#VytvoÅ™Ã­ 1 Pilulku#{{Heart}} VylÃ©ÄÃ­ 2 ÄŒervenÃ¡ Srdce#{{BloodDonationMachine}} VÃ­ce penÄ›z ze StrojÅ¯ na DarovÃ¡nÃ­ Krve a {{Collectible135}} InfuznÃ­ vak "
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} OdhalÃ­ vchody do tajnÃ½ch mÃ­stnostÃ­", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% Å ance na ÄŽÃ¡belskou/AndÄ›lskou mÃ­stnost", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#VyÅ¡Å¡Ã­ Å¡ance na jezdce pÅ™i pouÅ¾itÃ­#{{AngelDevilChance}} +17.5% Å ance na ÄŽÃ¡belskou/AndÄ›lskou mÃ­stnost"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "ZnovuzrozenÃ­ pouze s 1 Å¾ivotem#â†“ NastavÃ­ tvoje Å¾ivoty na 1 ÄŒervenÃ© Srdce", -- Dead Cat
	-- Full old Desc: "â†‘ +9 Å¾ivotÅ¯#ZnovuzrozenÃ­ pouze s 1 Å¾ivotem#â†“ NastavÃ­ tvoje Å¾ivoty na 1 ÄŒervenÃ© Srdce#Postavy, kterÃ© nemohou mÃ­t ÄŒervenÃ© Srdce, se nastavÃ­ na 1 DuÅ¡evnÃ­/ÄŒernÃ© Srdce"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#â†‘ {{Damage}} +0.7 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†“ {{Speed}} -0.18 SnÃ­Å¾enÃ­ Rychlosti#UdÄ›lujeÅ¡ 40 kontaktnÃ­ho poÅ¡kozenÃ­#RozdrcujeÅ¡ kameny"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "VytvoÅ™Ã­ padacÃ­ dvÃ­Å™ka pro pÅ™eskoÄenÃ­ patra#{{LadderRoom}} 10% Å¡ance na padacÃ­ dvÃ­Å™ka vedoucÃ­ do prÅ¯lezu", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Vyvolej Monstra na jedno dupnutÃ­", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Spojenec, kterÃ½ se vystÅ™elÃ­ dopÅ™edu", -- Little Chubby
	-- Full old Desc: "Spojenec, kterÃ½ se vystÅ™elÃ­ dopÅ™edu#ZpÅ¯sobuje 52.5 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "OdhalÃ­ typ mÃ­stnosti sousednÃ­ch mÃ­stnostÃ­#{{SecretRoom}} MÅ¯Å¾e takÃ© odhalit TajnÃ© MÃ­stnosti, Super TajnÃ© MÃ­stnosti a Mini-Boss MÃ­stnosti", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "KrÃ¡tkÃ¡ nesmrtelnost#{{Fear}} VÅ¡ichni nepÅ™Ã¡telÃ© se bojÃ­#ZpÅ¯sobujeÅ¡ 40 kontaktnÃ­ho poÅ¡kozenÃ­#{{HalfHeart}} Dva seÅ¾ranÃ­ nepÅ™Ã¡telÃ© ti doplnÃ­ pÅ¯l srdce"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} KaÅ¾dÃ© 2 mÃ­stnosti vytvoÅ™Ã­ nÃ¡hodnou minci", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "LaserovÃ© slzy", -- Robo-Baby
	-- Full old Desc: "LaserovÃ© slzy#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} VytvoÅ™Ã­ pÅ¯l srdce kaÅ¾dÃ© 3 mÃ­stnosti", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} ZpomalujÃ­cÃ­ slzy", -- Little Gish
	-- Full old Desc: "{{Slow}} ZpomalujÃ­cÃ­ slzy#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "NavÃ¡dÄ›nÃ© slzy", -- Little Steven
	-- Full old Desc: "NavÃ¡dÄ›nÃ© slzy#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Slzy se pÅ™i kontaktu rozdÄ›lÃ­ na dvÄ› ÄÃ¡sti#RozdÄ›lenÃ© slzy zpÅ¯sobÃ­ poloviÄnÃ­ poÅ¡kozenÃ­", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "ZamÃ­chÃ¡ pÅ™edmÄ›ty v aktuÃ¡lnÃ­ mÃ­stnosti", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "LÃ©tÃ¡nÃ­#TvÃ© tÄ›lo ÃºtoÄÃ­ na nepÅ™Ã¡tele s 82.5 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "VeÅ¡kerÃ© utrpÄ›nÃ© poÅ¡kozenÃ­ se snÃ­Å¾Ã­ na polovinu srdce", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "â†‘ {{Damage}} +0.04 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ za kaÅ¾dou {{Coin}} minci, kterou mÃ¡Å¡", -- Money = Power
	-- English: "â†‘ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} JedovatÃ½ prd#Jed zpÅ¯sobuje tvoje poÅ¡kozenÃ­ 6krÃ¡t", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Zrychluje vÅ¡echny orbitÃ¡lnÃ­ spojence", -- Guardian Angel
	-- Full old Desc: "OrbitÃ¡lnÃ­ andÃ­lek#Zrychluje vÅ¡echny orbitÃ¡lnÃ­ spojence#Blokuje stÅ™ely#UdÄ›luje 105 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Automaticky stÅ™Ã­lÃ­", -- Demon Baby
	-- Full old Desc: "Automaticky stÅ™Ã­lÃ­#UdÄ›luje 3 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "KontrolovatelnÃ½ nÅ¯Å¾#NÅ¯Å¾ zpÅ¯sobÃ­ 2x poÅ¡kozenÃ­ IzÃ¡ka pÅ™i drÅ¾enÃ­ a 6x poÅ¡kozenÃ­ v co nejvÄ›tÅ¡Ã­ vzdÃ¡lenosti", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "-1 nabitÃ­ pro aktivnÃ­ pÅ™edmÄ›ty#{{Battery}} PlnÄ› nabije tvÅ¯j aktivnÃ­ pÅ™edmÄ›t", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "VytvoÅ™Ã­ mrtvÃ©ho ptÃ¡ka, kdyÅ¾ dostaneÅ¡ zasÃ¡h", -- Dead Bird
	-- Full old Desc: "VytvoÅ™Ã­ mrtvÃ©ho ptÃ¡ka, kdyÅ¾ dostaneÅ¡ zasÃ¡h#PtÃ¡k udÄ›luje 4 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! KdyÅ¾ mÃ¡Å¡ pÅ¯l ÄŒervenÃ©ho Srdce nebo mÃ©nÄ›:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! KdyÅ¾ mÃ¡Å¡ pÅ¯l ÄŒervenÃ©ho Srdce nebo mÃ©nÄ›:#â†‘ {{Damage}} +1.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Speed}} +0.3 ZvÃ½Å¡enÃ­ Rychlosti"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "NÃ¡hodnÃ½ spojenec pro aktuÃ¡lnÃ­ mÃ­stnost", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "NÃ¡hodnÃ½ efekt aktivnÃ­ho pÅ™edmÄ›tu", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 Bomb", -- Bobby-Bomb
	-- Full old Desc: "NavÃ¡dÄ›nÃ© bomby#{{Bomb}} +5 Bomb"
	-- English: "Homing bombs"

	[C_ID .. 126] = "â†‘ {{Damage}} +1.2 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ pro aktuÃ¡lnÃ­ mÃ­stnost#â†“ ZpÅ¯sobÃ­ ti 1 poÅ¡kozenÃ­#UpÅ™ednostÅˆuje ÄŒervenÃ© Srdce", -- Razor Blade
	-- English: "â†‘ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "ZamÃ­chÃ¡ celÃ© patro", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "OrbitÃ¡lnÃ­ muÅ¡ka", -- Forever Alone
	-- Full old Desc: "OrbitÃ¡lnÃ­ muÅ¡ka#Daleko od tebe#UdÄ›luje 30 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "UdÄ›luje lÃ©tÃ¡nÃ­ pÅ™i drÅ¾enÃ­ pÅ™edmÄ›tu#{{Speed}} NastavÃ­ tvoji rychlost na 1.5 pokud mÃ¡Å¡ mÃ©nÄ› neÅ¾ 1.5#VzlÃ©teÅ¡ ve smÄ›ru pouÅ¾itÃ­", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} KaÅ¾dÃ© 2-3 mÃ­stnosti vytvoÅ™Ã­ bombu", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} VÃ­ce PoÅ¡kozenÃ­ na zÃ¡kladÄ› procestovanÃ© vzdÃ¡lenosti slzy", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! PÅ™emÄ›Åˆ:#1 mÃ­sto pro Srdce na 3 DuÅ¡evnÃ­ Srdce", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% Å¡ance, Å¾e odmÄ›na za proÄiÅ¡tÄ›nou mÃ­stnost bude truhla#33% Å¡ance na Å¾Ã¡dnou odmÄ›nu za proÄiÅ¡tÄ›nou mÃ­stnost", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "PÅ™enosnÃ¡ krevnÃ­ banka#PÅ¯l srdce = 1-3 penÃ­zkÅ¯#{{Player14}} 0-1 mincÃ­ za Keepera", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "ExplodujÃ­cÃ­ nÃ¡vnada#PÅ™itahuje nepÅ™Ã¡tele", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "{{Bomb}} +5 Bomb", -- Remote Detonator
	-- Full old Desc: "OdpalÃ­Å¡ bomby na poÅ¾Ã¡dÃ¡nÃ­#{{Bomb}} +5 Bomb"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} NynÃ­ mÅ¯Å¾eÅ¡ mÃ­t 2 trinkety", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 Bomb", -- Bob's Curse
	-- Full old Desc: "{{Poison}} JedovatÃ© bomby#{{Bomb}} +5 Bomb"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} PÅ™i poÅ¡kozenÃ­ aÅ¾ do zbÃ½vajÃ­cÃ­ poloviny srdce, dostaneÅ¡ 1 DuÅ¡evnÃ­ Srdce (jednou za mÃ­stnost)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} SbÃ­rÃ¡ mince a pÅ™evÃ¡dÃ­ je na pickupy", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Na dotek rozbÃ­jÃ­ kameny v aktuÃ¡lnÃ­ mÃ­stnosti", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "1/6 Å¡ance na vytvoÅ™enÃ­ mouchy pÅ™i zasÃ¡hnutÃ­ nepÅ™Ã­tele", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "â†“ {{Damage}} -35% MenÅ¡Ã­ PoÅ¡kozenÃ­#â†“ {{Tears}} ZpoÅ¾dÄ›nÃ­ Slz x 2", -- Technology 2
	-- Full old Desc: "Nahrazuje tvoje pravÃ© oko nepÅ™etrÅ¾itÃ½m laserem#Laser zpÅ¯sobÃ­ 20 % tvÃ©ho poÅ¡kozenÃ­#â†“ {{Damage}} -35% MenÅ¡Ã­ PoÅ¡kozenÃ­#â†“ {{Tears}} ZpoÅ¾dÄ›nÃ­ Slz x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Poletuje po mÃ­stnosti", -- The Peeper
	-- Full old Desc: "Poletuje po mÃ­stnosti#UdÄ›luje 17.1 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} +1 nabitÃ­ pÅ™i utrpenÃ­ zÃ¡sahu", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "â†‘ {{Damage}} VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ pokaÅ¾dÃ© co dostaneÅ¡ zÃ¡sah#Aplikuje se aÅ¾ 6krÃ¡t za patro#TrvÃ¡ po celÃ© patro", -- Bloody Lust
	-- English: "â†‘ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Odhaluje celou mapu#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Odhaluje celou mapu#VytvoÅ™Ã­ nÃ¡hodnou Kartu nebo DuÅ¡evnÃ­ Srdce"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "V blÃ­zkosti nepÅ™Ã¡tel vytvoÅ™Ã­ 5 paprskÅ¯ svÄ›tla#ZpÅ¯sobuje tvoje poÅ¡kozenÃ­+20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} ZnovuzrodiÅ¡ se jako ??? (Blue Baby) po smrti", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Spojenec se spektrÃ¡lnÃ­mi slzami", -- Ghost Baby
	-- Full old Desc: "Spojenec se spektrÃ¡lnÃ­mi slzami#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "VystÅ™elÃ­Å¡ modrÃ½ plamen#ZpÅ¯sobuje kontaktnÃ­ poÅ¡kozenÃ­#Blokuje nepÅ™Ã¡telskÃ© slzy#Po 2 sekundÃ¡ch zmizÃ­", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "ZamÃ­chÃ¡ pickupy", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "VystÅ™elÃ­ dvÄ› slzy ve tvaru pÃ­smene V", -- Harlequin Baby
	-- Full old Desc: "VystÅ™elÃ­ dvÄ› slzy ve tvaru pÃ­smene V#UdÄ›luje 4 poÅ¡kozenÃ­ za stÅ™elu"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "KontrolovatelnÃ½ nÃ¡let mÃ­sto slz#UdÄ›luje 20nÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Dupe na nepÅ™Ã¡tele", -- Daddy Longlegs
	-- Full old Desc: "Dupe na nepÅ™Ã¡tele#UdÄ›luje 40 poÅ¡kozenÃ­ za sekundu"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "ZpomalÃ­ nepÅ™Ã¡tele na 4 sekundy", -- Spider Butt
	-- Full old Desc: "ZpomalÃ­ nepÅ™Ã¡tele na 4 sekundy#10 poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "StÅ™Ã­lÃ­ nÃ¡hodnÃ© slzy", -- Rainbow Baby
	-- Full old Desc: "StÅ™Ã­lÃ­ nÃ¡hodnÃ© slzy#UdÄ›luje 3-5 poÅ¡kozenÃ­ za stÅ™elu"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "OtevÃ­rÃ¡ vÅ¡echny dveÅ™e v mÃ­stnosti, vÄetnÄ› {{SecretRoom}}{{SuperSecretRoom}}TajnÃ½ch MÃ­stnostÃ­, {{ChallengeRoom}}{{BossRushRoom}}VyzyvatelskÃ½ch MÃ­stnostÃ­, a Mega Satan dveÅ™Ã­", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "PÅ™enosnÃ½ HracÃ­ Automat", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "PÅ™i utrpenÃ­ zÃ¡sahu po sobÄ› zanechÃ¡ poÅ¡kozujÃ­cÃ­ kaluÅ¾#UdÄ›luje 24 poÅ¡kozenÃ­ za sekundu", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "PÅ™i doteku prdÃ­Å¡ a zanechÃ¡vÃ¡Å¡ za sebou jedovatÃ© prdy", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "UdÄ›luje lÃ©tÃ¡nÃ­ pÅ™i drÅ¾enÃ­ pÅ™edmÄ›tu#{{Speed}} NastavÃ­ tvoji rychlost na 1.5 pokud mÃ¡Å¡ mÃ©nÄ› neÅ¾ 1.5#SvatÃ© vzlÃ©tnutÃ­ ve smÄ›ru pouÅ¾itÃ­", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "UpÅ™ednostÅˆuje ÄŒervenÃ© Srdce", -- Blood Rights
	-- Full old Desc: "â†‘ UdÄ›lÃ­ 40 poÅ¡kozenÃ­ kaÅ¾dÃ©mu nepÅ™Ã­teli#â†“ ZpÅ¯sobÃ­ ti 1 poÅ¡kozenÃ­#UpÅ™ednostÅˆuje ÄŒervenÃ© Srdce"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "RostoucÃ­ koule z chlupÅ¯#Houpe se kolem tebe#Roste, kdyÅ¾ zabije nepÅ™Ã­tele#VÄ›tÅ¡Ã­ koule zpÅ¯sobÃ­ vÄ›tÅ¡Ã­ poÅ¡kozenÃ­", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "ZrcadlÃ­ tvÅ¯j pohyb#StÅ™Ã­lÃ­ smÄ›rem k hrÃ¡Äi", -- Abel
	-- Full old Desc: "ZrcadlÃ­ tvÅ¯j pohyb#StÅ™Ã­lÃ­ smÄ›rem k hrÃ¡Äi#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "NÃ¡hodnÃ½ efekt slzy kaÅ¾dÃ© 2-3 sekundy", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "VytvoÅ™Ã­ 1 pickup od kaÅ¾dÃ©ho druhu", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "VÃ­ce vÄ›cÃ­ z truhel", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 KlÃ­Äe#VÃ­ce vÄ›cÃ­ z truhel"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "PromÄ›Åˆuje nepÅ™Ã¡tele ve zlato pÅ™i dotyku#ZpÅ¯sobuje kontaktnÃ­ poÅ¡kozenÃ­ na zÃ¡kladÄ› poÄtu tvÃ½ch mincÃ­#{{Coin}} PÅ™i zabÃ­jenÃ­ zlatÃ½ch nepÅ™Ã¡tel padajÃ­ mince", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "ZdvojnÃ¡sobuje vÅ¡echny pickupy", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% Å¡ance na nÃ¡hodnÃ½ pickup pÅ™i zÃ¡sahu nepÅ™Ã­telem", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} -2 Srdce = PlnÃ© nabitÃ­ pÅ™edmÄ›tu pÅ™i stisknutÃ­ mezernÃ­ku#!!! Funguje pouze v pÅ™Ã­padÄ›, Å¾e poloÅ¾ka nemÃ¡ Å¾Ã¡dnÃ© nabitÃ­!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: OrbitÃ¡lnÃ­ koule#LVL2: OrbitÃ¡lnÃ­ a stÅ™Ã­lejÃ­cÃ­ koule#LVL3: ObvazovÃ¡ Holka LVL1#LVL4: ObvazovÃ¡ Holka LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! +15% Å¡ance na objevenÃ­ Å¡ampionÅ¯", -- Champion Belt
	-- Full old Desc: "â†‘ {{Damage}} +1 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#!!! +15% Å¡ance na objevenÃ­ Å¡ampionÅ¯"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} VÃ½buchy udÄ›lÃ­ poÅ¡kozenÃ­ a zmatou kaÅ¾dÃ©ho nepÅ™Ã­tele v mÃ­stnosti", -- Butt Bombs
	-- Full old Desc: "â†‘ {{Bomb}} +5 Bomb#{{Confusion}} VÃ½buchy udÄ›lÃ­ poÅ¡kozenÃ­ a zmatou kaÅ¾dÃ©ho nepÅ™Ã­tele v mÃ­stnosti"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Nesmrtelnost, kdyÅ¾ stojÃ­Å¡ 1 sekundu na mÃ­stÄ›", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "â†‘ 50% Å¡ance na oÅ¾ivenÃ­", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Slzy blokujÃ­ nepÅ™Ã¡telskÃ© stÅ™ely", -- Lost Contact
	-- Full old Desc: "Å tÃ­tovanÃ© slzy#Slzy blokujÃ­ nepÅ™Ã¡telskÃ© stÅ™ely#â†“ {{Shotspeed}} -0.16 MenÅ¡Ã­ Rychlost StÅ™el"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Po utrpenÃ­ zÃ¡sahu zanechÃ¡vÃ¡ na zemi poÅ¡kozujÃ­cÃ­ kaluÅ¾", -- Anemic
	-- Full old Desc: "â†‘ {{Range}} +5 VÄ›tÅ¡Ã­ DostÅ™el#Po utrpenÃ­ zÃ¡sahu zanechÃ¡vÃ¡ na zemi poÅ¡kozujÃ­cÃ­ kaluÅ¾"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Å ance vylÃ©Äit pÅ¯l srdce kaÅ¾dou minutu", -- Placenta
	-- Full old Desc: "â†‘ {{Heart}} +1 ZvÃ½Å¡enÃ­ ZdravÃ­#Å ance vylÃ©Äit pÅ¯l srdce kaÅ¾dou minutu"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "{{Bomb}} +5 Bomb", -- Sad Bombs
	-- Full old Desc: "VÃ½buchy bomby takÃ© vystÅ™elÃ­ 10 slz v kruhu#{{Bomb}} +5 Bomb"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "PoskakujÃ­cÃ­ slzy", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Po uvolnÄ›nÃ­ budou vÅ¡echny slzy vystÅ™eleny smÄ›rem, kterÃ½m byly vystÅ™eleny pÅ¯vodnÄ›#â†‘ {{Tears}} -2 ZpoÅ¾dÄ›nÃ­ Slz", -- Anti-Gravity
	-- Full old Desc: "PodrÅ¾enÃ­m tlaÄÃ­tek pro stÅ™elbu se ve vzduchu budou vznÃ¡Å¡et slzy#Po uvolnÄ›nÃ­ budou vÅ¡echny slzy vystÅ™eleny smÄ›rem, kterÃ½m byly vystÅ™eleny pÅ¯vodnÄ›#â†‘ {{Tears}} -2 ZpoÅ¾dÄ›nÃ­ Slz"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 Bomb", -- Pyromaniac
	-- Full old Desc: "VÃ½buchy tÄ› lÃ©ÄÃ­#{{Bomb}} +5 Bomb"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "RozdÄ›lenÃ© slzy zpÅ¯sobÃ­ poloviÄnÃ­ poÅ¡kozenÃ­", -- Cricket's Body
	-- Full old Desc: "â†‘ {{Tears}} +1 VÃ­ce Slz#â†“ {{Range}} -10 MenÅ¡Ã­ DostÅ™el#Slzy se pÅ™i zÃ¡sahu rozdÄ›lujÃ­ na 4#RozdÄ›lenÃ© slzy zpÅ¯sobÃ­ poloviÄnÃ­ poÅ¡kozenÃ­"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Å ance na vytvoÅ™enÃ­ DuÅ¡evnÃ­ho Srdce, kdyÅ¾ dostaneÅ¡ poÅ¡kozenÃ­#{{HalfHeart}} Monstra majÃ­ Å¡anci vytvoÅ™it pÅ¯l ÄŒervenÃ©ho Srdce po zabitÃ­", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "PÅ™i utrpenÃ­ zÃ¡sahu vytvoÅ™Ã­ 1-2 mince", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 mince#PÅ™i utrpenÃ­ zÃ¡sahu vytvoÅ™Ã­ 1-2 mince#{{Player14}} 0-1 mincÃ­ za Keepera"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "â†‘ {{Tears}} +1 VÃ­ce Slz", -- Mom's Perfume
	-- Full old Desc: "{{Fear}} 15% Å¡ance vystÅ™elit zastraÅ¡ujÃ­cÃ­ slzy#â†‘ {{Tears}} +1 VÃ­ce Slz"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "â†“ {{Tears}} 4.3x ZpoÅ¾dÄ›nÃ­ Slz", -- Monstro's Lung
	-- Full old Desc: "{{Chargeable}} Slzy lze nynÃ­ nabÃ­t a vystÅ™elit ve stylu brokovnice#â†“ {{Tears}} 4.3x ZpoÅ¾dÄ›nÃ­ Slz"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{BlackHeart}} +6 ÄŒernÃ½ch SrdcÃ­", -- Abaddon
	-- Full old Desc: "â†‘ {{Damage}} +1.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Speed}} +0.2 ZvÃ½Å¡enÃ­ Rychlosti#{{Fear}} ZastraÅ¡ujÃ­cÃ­ slzy#â†“ {{EmptyHeart}} OdstraÅˆuje vÅ¡echny mÃ­sta na srdce#{{BlackHeart}} +6 ÄŒernÃ½ch SrdcÃ­"
	-- English: "â†“ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "ZanechÃ¡vÃ¡ po sobÄ› zpomalujÃ­cÃ­ kaluÅ¾", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% Å¡ance vystÅ™elit zpomalujÃ­cÃ­ slzy#{{Luck}} 100% pÅ™i 18 Å tÄ›stÃ­#ZanechÃ¡vÃ¡ po sobÄ› zpomalujÃ­cÃ­ kaluÅ¾"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "(aktivuje se pÅ™i zÃ¡sahu)", -- Stop Watch
	-- Full old Desc: "{{Slow}} PermanentnÃ­ efekt zpomalenÃ­#(aktivuje se pÅ™i zÃ¡sahu)#â†‘ +0.3 ZvÃ½Å¡enÃ­ Rychlosti"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "â†‘ +7 VÃ½Å¡ka Slz", -- Tiny Planet
	-- Full old Desc: "Slzy obÃ­hajÃ­ kolem tebe#â†‘ {{Range}} O HodnÄ› VÄ›tÅ¡Ã­ DostÅ™el!#â†‘ +7 VÃ½Å¡ka Slz#SpektrÃ¡lnÃ­ slzy"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "VytvoÅ™Ã­ pavouky, kdyÅ¾ zabijeÅ¡ nepÅ™Ã­tele", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "PÅ™i dotyku promÄ›nÃ­Å¡ nepÅ™Ã¡tele v hovno", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "ZdvojnÃ¡sobuje vÅ¡echny odmÄ›ny za proÄiÅ¡tÄ›nou mÃ­stnost#33% Å¡ance na Å¾Ã¡dnou odmÄ›nu za proÄiÅ¡tÄ›nou mÃ­stnost#{{GreedMode}} NeovlivÅˆuje reÅ¾im Greed Mode", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% Å¡ance na zablokovÃ¡nÃ­ nepÅ™Ã¡telskÃ½ch slz", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Å tÃ­t blokujÃ­cÃ­ nepÅ™Ã¡telskÃ© slzy", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "StÅ™Ã­lÃ­Å¡ nÃ¡hodnÃ© laserovÃ© vÃ½stÅ™ely", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "ZdvojnÃ¡sobÃ­ vÅ¡echny tvoje stÅ™ely", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Odhaluje tajnÃ© mÃ­stnosti", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Tvoji spojenci majÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "ModÅ™Ã­ pavouci/mouchy pÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "NamÃ­sto 1 se objevÃ­ 2 Boss pÅ™edmÄ›ty#!!! VzÃ­t lze pouze jeden", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} VÅ¡echny bomby se stanou dvojitÃ½mi bombami", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "PromÄ›nÃ­ vÅ¡echny Pilulky na Karty#VytvoÅ™Ã­ 1 Kartu", -- Starter Deck
	-- Full old Desc: "{{Card}} MÅ¯Å¾eÅ¡ mÃ­t u sebe 2 Karty#PromÄ›nÃ­ vÅ¡echny Pilulky na Karty#VytvoÅ™Ã­ 1 Kartu"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "PromÄ›nÃ­ vÅ¡echny Karty na Pilulky#VytvoÅ™Ã­ 1 Pilulku", -- Little Baggy
	-- Full old Desc: "{{Pill}} MÅ¯Å¾eÅ¡ mÃ­t u sebe 2 Pilulky#PromÄ›nÃ­ vÅ¡echny Karty na Pilulky#VytvoÅ™Ã­ 1 Pilulku"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Bomb}} +5 Bomb", -- Hot Bombs
	-- Full old Desc: "{{Burning}} HoÅ™Ã­cÃ­ bomby#{{Bomb}} +5 Bomb"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "!!! VÃ½buch ti mÅ¯Å¾e ublÃ­Å¾it!", -- Fire Mind
	-- Full old Desc: "{{Burning}} Slzy zapalujÃ­ nepÅ™Ã¡tele#Å ance, Å¾e slzy vybuchnou pÅ™i zÃ¡sahu nepÅ™Ã­tele#{{Luck}} 100% Å¡ance vÃ½buchu pÅ™i 13 Å tÄ›stÃ­#!!! VÃ½buch ti mÅ¯Å¾e ublÃ­Å¾it!"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "ZamÃ­chÃ¡ vÅ¡echny tvoje pÅ™edmÄ›ty a statistiky pÅ™i vyzvednutÃ­ tohoto pÅ™edmÄ›tu a pokaÅ¾dÃ©, kdyÅ¾ zmÄ›nÃ­Å¡ patro", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Imunita vÅ¯Äi ProkletÃ­", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Imunita vÅ¯Äi ProkletÃ­#{{BlackHeart}} +1 ÄŒernÃ© Srdce#{{AngelDevilChance}} +15% Å¡ance na ÄŽÃ¡belskou/AndÄ›lskou MÃ­stnost"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "â†“ UdÄ›lenÃ© poÅ¡kozenÃ­ se sniÅ¾uje podle uraÅ¾enÃ© vzdÃ¡lenosti slzy", -- Proptosis
	-- Full old Desc: "â†‘ {{Damage}} +100% VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†“ UdÄ›lenÃ© poÅ¡kozenÃ­ se sniÅ¾uje podle uraÅ¾enÃ© vzdÃ¡lenosti slzy"
	-- English: "â†“ Tears deal less damage the further they travel"

	[C_ID .. 262] = "KdyÅ¾ zdravÃ­ klesne na 1 Srdce, udÄ›lÃ­ poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m v mÃ­stnosti", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 ÄŒernÃ© Srdce#KdyÅ¾ zdravÃ­ klesne na 1 Srdce, udÄ›lÃ­ poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m v mÃ­stnosti"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "KdyÅ¾ dostaneÅ¡ zÃ¡sah, zaÃºtoÄÃ­ na nepÅ™Ã¡tele", -- Smart Fly
	-- Full old Desc: "OrbitÃ¡lnÃ­ moucha#KdyÅ¾ dostaneÅ¡ zÃ¡sah, zaÃºtoÄÃ­ na nepÅ™Ã¡tele#UdÄ›luje 22.5 poÅ¡kozenÃ­ za sekundu"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "KdyÅ¾ jej zasÃ¡hnou nepÅ™Ã¡telskÃ© slzy, mÃ¡ 10% Å¡anci poÅ¡kodit vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "ZanechÃ¡vÃ¡ po sobÄ› zpomalujÃ­cÃ­ kaluÅ¾#Po vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti vytvoÅ™Ã­ 1-2 pÅ™Ã¡telskÃ© pavouky", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "StÅ™Ã­lÃ­ lasery#Pohybuje se ve smÄ›ru, kterÃ½m stÅ™Ã­lÃ­Å¡", -- Robo-Baby 2.0
	-- Full old Desc: "StÅ™Ã­lÃ­ lasery#UdÄ›luje 3.5 poÅ¡kozenÃ­ za stÅ™elu#Pohybuje se ve smÄ›ru, kterÃ½m stÅ™Ã­lÃ­Å¡"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "KdyÅ¾ hrÃ¡Ä stÅ™Ã­lÃ­, vytvÃ¡Å™Ã­ modrÃ© mouchy", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "ZanechÃ¡vÃ¡ po sobÄ› kaluÅ¾ udÄ›lujÃ­cÃ­ 6 poÅ¡kozenÃ­ za sekundu", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "{{HalfHeart}} VylÃ©ÄÃ­ polovinu Srdce, kdyÅ¾ zabije nepÅ™Ã­tele#UdÄ›luje 3.2 poÅ¡kozenÃ­ za sekundu", -- Leech
	-- Full old Desc: "{{HalfHeart}} VylÃ©ÄÃ­ polovinu Srdce, kdyÅ¾ zabije nepÅ™Ã­tele#UdÄ›luje 3.2 poÅ¡kozenÃ­ za sekundu"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "KaÅ¾dÃ½ch pÃ¡r pokojÅ¯ vytvoÅ™Ã­ nÃ¡hodnÃ© pickupy", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "ExplodujÃ­cÃ­ moucha", -- BBF
	-- Full old Desc: "ExplodujÃ­cÃ­ moucha#Exploze zpÅ¯sobÃ­ 60 poÅ¡kozenÃ­"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "SpoleÄnÃ­k jakoÅ¾to vrhacÃ­ bomba#Exploze zpÅ¯sobÃ­ 60 poÅ¡kozenÃ­", -- Bob's Brain
	-- Full old Desc: "SpoleÄnÃ­k jakoÅ¾to vrhacÃ­ bomba#Exploze zpÅ¯sobÃ­ 60 poÅ¡kozenÃ­"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "KdyÅ¾ dostaneÅ¡ zÃ¡sah, zÃ­skÃ¡te orbitÃ¡lnÃ­ muÅ¡ku stÅ™ednÃ­ vzdÃ¡lenosti", -- Best Bud
	-- Full old Desc: "KdyÅ¾ dostaneÅ¡ zÃ¡sah, zÃ­skÃ¡te orbitÃ¡lnÃ­ muÅ¡ku stÅ™ednÃ­ vzdÃ¡lenosti#UdÄ›luje 75 poÅ¡kozenÃ­ za sekundu"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} StÅ™Ã­lÃ­ brimstone laser", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} StÅ™Ã­lÃ­ brimstone laser#Jeho rÃ¡na udÄ›luje 31.5 poÅ¡kozenÃ­ za sekundu"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "ZÃ­skÃ¡Å¡ nezranitelnÃ© tÄ›lo#!!! KdyÅ¾ je ale zasaÅ¾eno Srdce, utrpÃ­Å¡ poÅ¡kozenÃ­", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "PÅ™Ã¡telskÃ½ spoleÄenskÃ½ duch", -- Lil Haunt
	-- Full old Desc: "PÅ™Ã¡telskÃ½ spoleÄenskÃ½ duch#UdÄ›luje 4 poÅ¡kozenÃ­ za sekundu a zpÅ¯sobuje strach"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} PÅ™evÃ¡dÃ­ 1.5 ÄŒervenÃ½ch SrdcÃ­ na DuÅ¡evnÃ­/ÄŒernÃ© srdce nebo pavouka", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "VelkÃ¡ tlustÃ¡ orbitÃ¡lnÃ­ moucha", -- Big Fan
	-- Full old Desc: "VelkÃ¡ tlustÃ¡ orbitÃ¡lnÃ­ moucha#UdÄ›luje 30 poÅ¡kozenÃ­ za sekundu"
	-- English: "Large orbital"

	[C_ID .. 280] = "NÃ¡hodnÄ› vytvÃ¡Å™Ã­ modrÃ© pavouky pokud je v nepÅ™Ã¡telskÃ© mÃ­stnosti", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "SpoleÄnÃ­k slouÅ¾Ã­cÃ­ jakoÅ¾to nÃ¡vnada#MÃ­sto na tebe se nepÅ™Ã¡telÃ© zamÄ›Å™Ã­ na nÄ›j", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "UmoÅ¾Åˆuje ti skÃ¡kat", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "ZamÃ­chÃ¡ vÅ¡echny pickupy, pÅ™edmÄ›ty a tvoje pasivnÃ­ pÅ™edmÄ›ty", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "ZamÃ­chÃ¡ vÅ¡echny tvoje pasivnÃ­ pÅ™edmÄ›ty", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "ZamÃ­chÃ¡ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Napodobuje efekty tvojÃ­ drÅ¾enÃ© karty", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "VyhodÃ­te ÄervenÃ½ plamen#Plamen pÅ™etrvÃ¡vÃ¡, dokud pÄ›tkrÃ¡t nezpÅ¯sobÃ­ 23 poÅ¡kozenÃ­ nebo pÄ›tkrÃ¡t nezablokuje stÅ™elu", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} UloÅ¾Ã­ aÅ¾ 4 ÄŒervenÃ© Srdce pro pozdÄ›jÅ¡Ã­ pouÅ¾itÃ­", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "!!! InstantnÄ› zabÃ­jÃ­ hovnovÃ© nepÅ™Ã¡tele a bosse!#PromÄ›Åˆuje nepÅ™Ã¡tele v hovna", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "VystÅ™elÃ­ krvavÃ© lasery ve vÅ¡ech 4 smÄ›rech", -- Head of Krampus
	-- Full old Desc: "VystÅ™elÃ­ krvavÃ© lasery ve vÅ¡ech 4 smÄ›rech"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "OdrazÃ­ blÃ­zkÃ© nepÅ™Ã¡tele a jejich stÅ™ely", -- Butter Bean
	-- Full old Desc: "OdrazÃ­ blÃ­zkÃ© nepÅ™Ã¡tele a jejich stÅ™ely#10% Å¡ance na promÄ›nÄ›nÃ­ se v silnÄ›jÅ¡Ã­ {{Collectible484}}PoÄkat Co? pÅ™i vÃ½mÄ›nÄ› za jinÃ½ aktivnÃ­ pÅ™edmÄ›t a opÄ›tovnÃ©m sebrÃ¡nÃ­"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "UdÄ›lÃ­ 2x poÅ¡kozenÃ­ hrÃ¡Äe celÃ© mÃ­stnosti#{{Coin}} Cena: 1 mince", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! PÅ™emÄ›nÃ­:#2 DuÅ¡evnÃ­/ÄŒernÃ© Srdce na 1 mÃ­sto/a pro ÄŒervenÃ© Srdce", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "Nesmrtelnost pokud jsi dostateÄnÄ› rychlÃ½#â†“ {{Speed}} -0.3 SnÃ­Å¾enÃ­ Rychlosti", -- Taurus
	-- Full old Desc: "{{Speed}} BudeÅ¡ zrychlovat v nepÅ™Ã¡telskÃ½ch mÃ­stnostech!#Nesmrtelnost pokud jsi dostateÄnÄ› rychlÃ½#â†“ {{Speed}} -0.3 SnÃ­Å¾enÃ­ Rychlosti"
	-- English: "â†‘ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "TvÅ¯j dotyk udÄ›luje nepÅ™Ã¡telÅ¯m poÅ¡kozenÃ­", -- Aries
	-- Full old Desc: "â†‘ {{Speed}} +0.25 ZvÃ½Å¡enÃ­ Rychlosti#TvÅ¯j dotyk udÄ›luje nepÅ™Ã¡telÅ¯m poÅ¡kozenÃ­"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "UtrpÃ­Å¡ pouze polovinu poÅ¡kozenÃ­ v mÃ­stnosti, ve kterÃ© jsi uÅ¾ byl zasaÅ¾en", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 DuÅ¡evnÃ­ Srdce#UtrpÃ­Å¡ pouze polovinu poÅ¡kozenÃ­ v mÃ­stnosti, ve kterÃ© jsi uÅ¾ byl zasaÅ¾en"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "ZvÄ›tÅ¡enÃ­", -- Leo
	-- Full old Desc: "NiÄÃ­Å¡ kameny, kdyÅ¾ pÅ™es nÄ› chodÃ­Å¡#ZvÄ›tÅ¡enÃ­"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Å ance zÃ­skat nesmrtelnost pÅ™i zÃ¡sahu#{{Pill}} PÅ™evÃ¡dÃ­ negativnÃ­ pilulky na pozitivnÃ­#{{Luck}} 100% Å¡ance pÅ™i 10 Å tÄ›stÃ­", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "VyrovnÃ¡vÃ¡ tvoje statistiky!#!!! KaÅ¾dÃ¡ dalÅ¡Ã­ novÄ› zmÄ›nÄ›nÃ¡ statistika ovlivnÃ­ i ostatnÃ­ statistiky", -- Libra
	-- Full old Desc: "+6 mincÃ­ / KlÃ­ÄÅ¯ / Bomb#VyrovnÃ¡vÃ¡ tvoje statistiky!#!!! KaÅ¾dÃ¡ dalÅ¡Ã­ novÄ› zmÄ›nÄ›nÃ¡ statistika ovlivnÃ­ i ostatnÃ­ statistiky"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "ZanechÃ¡vÃ¡Å¡ po sobÄ› stopu kaluÅ¾e#KaluÅ¾ udÄ›luje 6 poÅ¡kozenÃ­ za sekundu", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "{{Player12}} KdyÅ¾ zemÅ™eÅ¡, znovuzrodÃ­Å¡ se jako TemnÃ½ JidÃ¡Å¡#â†‘ {{Damage}} Ten mÃ¡ 2x NÃ¡sobiÄ PoÅ¡kozenÃ­", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "VÅ¡echna ÄŒervenÃ¡ Srdce nynÃ­ lÃ©ÄÃ­ dvojnÃ¡sobek svÃ© hodnoty", -- Maggy's Bow
	-- Full old Desc: "â†‘ {{Heart}} +1 ZvÃ½Å¡enÃ­ ZdravÃ­#{{Heart}} VylÃ©ÄÃ­ 1 ÄŒervenÃ© Srdce#VÅ¡echna ÄŒervenÃ¡ Srdce nynÃ­ lÃ©ÄÃ­ dvojnÃ¡sobek svÃ© hodnoty"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Ignoruje prvnÃ­ zÃ¡sah v kaÅ¾dÃ© mÃ­stnosti", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "NiÄÃ­ kameny, kdyÅ¾ pÅ™es nÄ› chodÃ­Å¡", -- Thunder Thighs
	-- Full old Desc: "â†‘ {{Heart}} +1 ZvÃ½Å¡enÃ­ ZdravÃ­#â†“ {{Speed}} -0.4 SnÃ­Å¾enÃ­ Rychlosti#NiÄÃ­ kameny, kdyÅ¾ pÅ™es nÄ› chodÃ­Å¡"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "MagnetickÃ© slzy#OvlivÅˆuje nepÅ™Ã¡tele, pickupy a trinkety", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "!!! Pokud tÄ› nÄ›co zasÃ¡hne pÅ™i nabÃ­jenÃ­, teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti", -- Cursed Eye
	-- Full old Desc: "NabitÃ¡ salva slz#!!! Pokud tÄ› nÄ›co zasÃ¡hne pÅ™i nabÃ­jenÃ­, teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti#{{Collectible260}} Neteleportne tÄ›, pokud mÃ¡Å¡ ÄŒernou SvÃ­Äku"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Slzy po sobÄ› zanechÃ¡vajÃ­ kaluÅ¾#KaluÅ¾ udÄ›luje 30 poÅ¡kozenÃ­ za sekundu", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Spojenec pro blÃ­zkÃ½ souboj", -- Gemini
	-- Full old Desc: "Spojenec pro blÃ­zkÃ½ souboj#UdÄ›luje 6 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu "
	-- English: "Close combat familiar"

	[C_ID .. 319] = "OdrÃ¡Å¾Ã­ se po mÃ­stnosti#StÅ™Ã­lÃ­ smÄ›rem k IzÃ¡kovi#{{Damage}} Jeho poÅ¡kozenÃ­ se rovnÃ¡ tvÃ©mu poÅ¡kozenÃ­", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "OvladatelnÃ¡ moucha", -- ???'s Only Friend
	-- Full old Desc: "OvladatelnÃ¡ moucha#UdÄ›luje 5 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Controllable fly"

	[C_ID .. 321] = "PÅ™etahovatelnÃ¡ koule, kterÃ¡ dokÃ¡Å¾e niÄit kameny", -- Samson's Chains
	-- Full old Desc: "PÅ™etahovatelnÃ¡ koule, kterÃ¡ dokÃ¡Å¾e niÄit kameny#UdÄ›luje 10.7 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "KopÃ­ruje efekt jednoho z tvÃ½ch spojencÅ¯#PÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "PÅ™i pouÅ¾itÃ­ vystÅ™elÃ­Å¡ 8 slz ve vÅ¡ech smÄ›rech#NabÃ­jÃ­ se pÅ™i stÅ™Ã­lenÃ­", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleportuje tÄ› do {{TreasureRoom}}Pokladnice, {{SecretRoom}}TajnÃ©, {{SuperSecretRoom}}Super TajnÃ© nebo JSEM ERROR MÃ­stnosti", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "UÅ™Ã­zne ti hlavu#Hlava se zmÄ›nÃ­ na nehybnÃ©ho spojence#OvlÃ¡dej svÃ© tÄ›lo oddÄ›lenÄ›", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Pro nesmrtelnost podrÅ¾te mezernÃ­k, dokud nebude nabÃ­jecÃ­ liÅ¡ta prÃ¡zdnÃ¡#!!! NedrÅ¾ to pÅ™Ã­liÅ¡ dlouho!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Nesmrtelnost pÅ™i zÃ¡sahu pokud mÃ¡Å¡ pÅ¯l ÄŒervenÃ©ho Srdce nebo mÃ©nÄ›", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "ZpÅ¯sobÃ­ poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m v mÃ­stnosti pÅ™i zÃ¡sahu pokud mÃ¡Å¡ pÅ¯l ÄŒervenÃ©ho Srdce nebo mÃ©nÄ›", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "KontrolovatelnÃ¡ Slza", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "Slzy zÃ­skÃ¡vajÃ­ poÅ¡kozujÃ­cÃ­ auru", -- Godhead
	-- Full old Desc: "NavÃ¡dÄ›nÃ© slzy#â†‘ {{Damage}} +0.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Range}} +1.2 VÄ›tÅ¡Ã­ DostÅ™el#â†“ {{Tears}} -0.3 MÃ©nÄ› Slz#â†“ {{Shotspeed}} -0.3 MenÅ¡Ã­ Rychlost StÅ™el#â†‘ +0.8 VÃ½Å¡ka Slz#Slzy zÃ­skÃ¡vajÃ­ poÅ¡kozujÃ­cÃ­ auru"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} KdyÅ¾ zemÅ™eÅ¡, znovuzrodÃ­Å¡ se jako Lazarus (PovstanÃ½)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "ÃšplnÃ© mapovÃ¡nÃ­", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Poskytuje auru, kterÃ¡ odpuzuje nepÅ™Ã¡tele a stÅ™ely", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 DuÅ¡evnÃ­ Srdce#Poskytuje auru, kterÃ¡ odpuzuje nepÅ™Ã¡tele a stÅ™ely"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Zpomaluje nebo zrychluje kaÅ¾dou 4. mÃ­stnost", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "VrhacÃ­ bumerang#OmrÃ¡ÄÃ­ nepÅ™Ã¡tele a udÄ›luje 2x tvÃ©ho poÅ¡kozenÃ­ pÅ™i zÃ¡sahu#MÅ¯Å¾e sbÃ­rat pÅ™edmÄ›ty", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplikuje vÅ¡echny pÅ™edmÄ›ty/pickupy v aktuÃ¡lnÃ­ mÃ­stnosti", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Napodobuje efekt tvojÃ­ drÅ¾enÃ© pilulky", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Na zaÄÃ¡tku kaÅ¾dÃ© mÃ­stnosti otrÃ¡vÃ­ kaÅ¾dÃ©ho nepÅ™Ã­tele#ZabitÃ­ nepÅ™Ã¡telÃ© po sobÄ› zanechajÃ­ poÅ¡kozujÃ­cÃ­ kaluÅ¾", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "ZmrazÃ­Å¡ vÅ¡echny nepÅ™Ã¡tele v aktuÃ¡lnÃ­ mÃ­stnosti#UdÄ›luje 5 poÅ¡kozenÃ­ a otrÃ¡vÃ­ vÅ¡echny nepÅ™Ã¡tele v okolÃ­#VyÅ¡le kamennou vlnu po mÃ­stnosti#!!! Lze pouÅ¾Ã­t k otevÅ™enÃ­ tajnÃ½ch mÃ­stnostÃ­", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "â†“ SnÃ­Å¾Ã­ tvoje zdravÃ­ na polovinu srdce#VystÅ™elÃ­ jednu velkou prÅ¯raznou spektrÃ¡lnÃ­ slzu ((PoÅ¡kozenÃ­+1) x 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bomby nynÃ­ vybuchujÃ­ ve tvaru kÅ™Ã­Å¾e", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bomb#Bomby nynÃ­ vybuchujÃ­ ve tvaru kÅ™Ã­Å¾e"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "ZpÅ¯sobÃ­, Å¾e se tvÅ¯j aktivnÃ­ pÅ™edmÄ›t pÅ™i pouÅ¾itÃ­ aktivuje dvakrÃ¡t", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Duplikuje tvoje spojence pro aktuÃ¡lnÃ­ mÃ­stnost#Pokud Å¾Ã¡dnÃ© spojence nemÃ¡Å¡, objevÃ­ se {{Collectible113}}DÃ©monÃ­ DÄ›cko pro aktuÃ¡lnÃ­ mÃ­stnost", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "SpektrÃ¡lnÃ­ slzy", -- The Wiz
	-- Full old Desc: "StÅ™Ã­lÃ­Å¡ 2 slzy najednou diagonÃ¡lnÄ›, podobnÄ› jako pilulka 'Jsi ÄŒarodÄ›j Harry!'#SpektrÃ¡lnÃ­ slzy"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Slzy vÃ­ce odrÃ¡Å¾ejÃ­ nepÅ™Ã¡tele", -- 8 Inch Nails
	-- Full old Desc: "â†‘ {{Damage}} +1.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#Slzy vÃ­ce odrÃ¡Å¾ejÃ­ nepÅ™Ã¡tele"
	-- English: "Increases knockback"

	[C_ID .. 360] = "StÅ™Ã­lÃ­ stejnÃ© slzy jako IzÃ¡k, z hlediska poÅ¡kozenÃ­, statistik a efektÅ¯", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "VystÅ™eluje slzy a kopÃ­ruje tvoje poÅ¡kozenÃ­", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "KaÅ¾dÃ½ch pÃ¡r mÃ­stnostÃ­ vytvoÅ™Ã­ nÃ¡hodnÃ½ pickup", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Blokuje a pÅ™itahuje stÅ™ely#ZablokovÃ¡nÃ­m 10 slz v jednÃ© mÃ­stnosti vytvoÅ™Ã­ Srdce VÄ›Änosti", -- Sworn Protector
	-- Full old Desc: "OrbitÃ¡lnÃ­ spojenec#UdÄ›luje 105 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu#Blokuje a pÅ™itahuje stÅ™ely#ZablokovÃ¡nÃ­m 10 slz v jednÃ© mÃ­stnosti vytvoÅ™Ã­ Srdce VÄ›Änosti"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "OrbitÃ¡lnÃ­ moucha", -- Friend Zone
	-- Full old Desc: "OrbitÃ¡lnÃ­ moucha#UdÄ›luje 45 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Pohybuje se po stÄ›nÃ¡ch/pÅ™ekÃ¡Å¾kÃ¡ch v mÃ­stnosti", -- Lost Fly
	-- Full old Desc: "Pohybuje se po stÄ›nÃ¡ch/pÅ™ekÃ¡Å¾kÃ¡ch v mÃ­stnosti#UdÄ›luje 105 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "KdyÅ¾ bomba zabije nepÅ™Ã­tele, vytvoÅ™Ã­ modrÃ© pavouky#Tvoje bomby se pÅ™ilepÃ­ na nepÅ™Ã¡tele", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomb#KdyÅ¾ bomba zabije nepÅ™Ã­tele, vytvoÅ™Ã­ modrÃ© pavouky#Tvoje bomby se pÅ™ilepÃ­ na nepÅ™Ã¡tele"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "StÅ™elba jednÃ­m smÄ›rem postupnÄ› sniÅ¾uje ZpoÅ¾dÄ›nÃ­ Slz aÅ¾ o 200 %", -- Epiphora
	-- English: "â†‘ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "PokaÅ¾dÃ©, kdyÅ¾ dostaneÅ¡ zÃ¡sah, vyÅ¡leÅ¡ 6 trollÃ­ch bomb#Tyto bomby jsou ovlivnÄ›ny bombovÃ½mi pÅ™edmÄ›ty", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "NÃ¡hodnÃ¡ Å¡ance na vytvoÅ™enÃ­ baterie nebo zmrazenÃ­ vÅ¡ech nepÅ™Ã¡tel v mÃ­stnosti#Å ance pÅ™idat jedno nabitÃ­ k tvÃ©mu aktivnÃ­mu pÅ™edmÄ›tu", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "â†‘ {{Damage}} +25% VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ za kaÅ¾dou slzu, kterÃ¡ ÃºspÄ›Å¡nÄ› zasÃ¡hne nepÅ™Ã­tele (max +100%)#Å ance ztratit nÃ¡sobitel, kdyÅ¾ mineÅ¡", -- Dead Eye
	-- English: "â†‘ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Luck}} 50% Å¡ance pÅ™i 9 Å tÄ›stÃ­", -- Holy Light
	-- Full old Desc: "10% Å¡ance na vystÅ™elenÃ­ PosvÃ¡tnÃ© slzy, kterÃ¡ pÅ™i zÃ¡sahu vyÅ¡le paprsek svÄ›tla#Paprsek zpÅ¯sobÃ­ 4x tvÃ©ho poÅ¡kozenÃ­#{{Luck}} 50% Å¡ance pÅ™i 9 Å tÄ›stÃ­"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Poskytuje imunitu proti vÃ½buchÅ¯m a imunitu proti dupÃ¡nÃ­ MÃ¡my a Satanovy nohy#20% Å¡ance k zablokovÃ¡nÃ­ slz", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Obchody okamÅ¾itÄ› doplÅˆujÃ­ zÃ¡soby pÅ™i nakupovÃ¡nÃ­", -- Restock
	-- Full old Desc: "VytvoÅ™Ã­ 3 nÃ¡hodnÃ© pickupy#Obchody okamÅ¾itÄ› doplÅˆujÃ­ zÃ¡soby pÅ™i nakupovÃ¡nÃ­"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "PavouÄÃ­ nepÅ™Ã¡telÃ© jiÅ¾ necÃ­lÃ­ na IzÃ¡ka ani mu nezpÅ¯sobujÃ­ kontaktnÃ­ poÅ¡kozenÃ­", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "StÅ™Ã­lenÃ­ slz po dobu 3 sekund vytvoÅ™Ã­ PrdelnÃ­ Bombu", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "NynÃ­ otevÃ­rÃ¡Å¡ zamÄenÃ© dveÅ™e a truhly pomocÃ­ mincÃ­ namÃ­sto klÃ­ÄÅ¯", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 minc#NynÃ­ otevÃ­rÃ¡Å¡ zamÄenÃ© dveÅ™e a truhly pomocÃ­ mincÃ­ namÃ­sto klÃ­ÄÅ¯"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "DÃ¡ ti nÃ¡hodnÃ½ pÅ™edmÄ›t na zaÄÃ¡tku tvojÃ­ dalÅ¡Ã­ hry", -- Eden's Blessing
	-- Full old Desc: "â†‘ {{Tears}} +0.7 VÃ­ce Slz#DÃ¡ ti nÃ¡hodnÃ½ pÅ™edmÄ›t na zaÄÃ¡tku tvojÃ­ dalÅ¡Ã­ hry"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "MÅ¯Å¾eÅ¡ ji vrhnout na nepÅ™Ã¡tele k jejich zachycenÃ­#PÅ™i dalÅ¡Ã­m pouÅ¾itÃ­ se znovu objevÃ­ stejnÃ½ nepÅ™Ã­tel ale jakoÅ¾to pÅ™Ã¡telskÃ½ spoleÄnÃ­k", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "OdpÃ¡lÃ­Å¡ vÅ¡echny slzy aktuÃ¡lnÄ› na obrazovce, coÅ¾ zpÅ¯sobÃ­, Å¾e se kaÅ¾dÃ¡ rozdÄ›lÃ­ na 6 dalÅ¡Ã­ch slz, kterÃ© se budou Å¡Ã­Å™it do kruhu", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} VystÅ™elÃ­ se a bude lÃ©tat po mÃ­stnosti#UdÄ›luje 5-90 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu, zÃ¡visÃ­ to na jeho rychlosti", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "SbÃ­rÃ¡ mince poblÃ­Å¾#Upgraduje se po zÃ­skÃ¡nÃ­ 6, 12 a 24 mincÃ­#LVL2: Å ance na vytvoÅ™enÃ­ pÅ™edmÄ›tu po vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#LVL3: VystÅ™eluje slzy, kterÃ© mohou pÅ™i zÃ¡sahu upustit mince#LVL4: PronÃ¡sleduje nepÅ™Ã¡tele, pÅ™Ã­leÅ¾itostnÄ› shazuje bomby a mÅ¯Å¾e pÅ™i sbÄ›ru mincÃ­ vytvoÅ™it pÅ™edmÄ›t", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "ZamÃ­chÃ¡ jakÃ½koli objekt na jinÃ½ nÃ¡hodnÃ½ typ objektu (napÅ™. hovno, vÃ¡zy, TNT, ÄervenÃ© hovno, kamennÃ© bloky atd.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "VytvÃ¡Å™Ã­ velkou svÄ›telnou auru, kterÃ¡ zpomaluje nepÅ™Ã¡tele a projektily uvnitÅ™", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "PÅ™evÃ¡dÃ­ klÃ­Äe na nÃ¡hodnÃ© truhly", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} VytvoÅ™Ã­ nÃ¡hodnou runu kaÅ¾dÃ½ch 5-6 mÃ­stnostÃ­", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "StÅ™Ã­lÃ­ slzy NejsvÄ›tÄ›jÅ¡Ã­ho Srdce", -- Seraphim
	-- Full old Desc: "StÅ™Ã­lÃ­ slzy NejsvÄ›tÄ›jÅ¡Ã­ho Srdce#UdÄ›luje 10 poÅ¡kozenÃ­ za stÅ™elu"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} PokaÅ¾dÃ©, kdyÅ¾ IzÃ¡k utrpÃ­ poÅ¡kozenÃ­, okouzlÃ­ kaÅ¾dÃ©ho nepÅ™Ã­tele v mÃ­stnosti", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "DÃ¡vÃ¡ ti nÃ¡hodnÃ½ efekt pÅ™edmÄ›tu zvÄ›rokruhu v kaÅ¾dÃ©m patÅ™e", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% Å¡ance vystÅ™elit jedovatÃ© slzy#{{Poison}} OtrÃ¡vÃ­ nepÅ™Ã¡tele pÅ™i kontaktu#{{BlackHeart}} NepÅ™Ã¡telÃ©, kteÅ™Ã­ byli otrÃ¡veni, majÃ­ Å¡anci vytvoÅ™it po smrti ÄŒernÃ© Srdce", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "â†‘ +0.3 VÃ½Å¡ka Slz", -- Marked
	-- Full old Desc: "Slzy automaticky mÃ­Å™Ã­ na ÄervenÃ½ terÄ na zemi, kterÃ½ ovlÃ¡dÃ¡ hrÃ¡Ä#â†‘ {{Tears}} +0.7 VÃ­ce Slz#â†‘ {{Range}} +3.15 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ +0.3 VÃ½Å¡ka Slz"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} ZÃ­skÃ¡Å¡ schopnost nabÃ­jet a vystÅ™elovat stÅ™ely jakoÅ¾to laserovÃ½ prstenec, kterÃ½ se pohybuje po mÃ­stnosti#VÄ›tÅ¡Ã­ velikost prstence bude s delÅ¡Ã­m nabÃ­jenÃ­m", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "VytvoÅ™Ã­ aÅ¾ dva portÃ¡ly pro cestovÃ¡nÃ­ mezi nimi#Lze umÃ­stit do rÅ¯znÃ½ch mÃ­stnostÃ­", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "â†‘ +0.5 VÃ½Å¡ka Slz", -- Tractor Beam
	-- Full old Desc: "IzÃ¡kovy slzy nynÃ­ putujÃ­ pÅ™Ã­mo vpÅ™ed podle paprsku svÄ›tla, ale budou se takÃ© pohybovat do stran v zÃ¡vislosti na pohybu tvÃ©ho hrÃ¡Äe#â†‘ {{Tears}} +0.5 VÃ­ce Slz#â†‘ {{Range}} +5.25 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ {{Shotspeed}} +0.16 VÄ›tÅ¡Ã­ Rychlost StÅ™el#â†‘ +0.5 VÃ½Å¡ka Slz"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Slzy mohou nepÅ™Ã¡tele zmenÅ¡it#ScvrklÃ© nepÅ™Ã¡tele lze rozdrtit a zabÃ­t tÃ­m, Å¾e po nich pÅ™ejdeÅ¡", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "VytvoÅ™Ã­ pÅ™ed tebou kopÃ­#UdÄ›luje dvakrÃ¡t tvoje poÅ¡kozenÃ­#Å ance zastraÅ¡it nepÅ™Ã¡tele pÅ™i kontaktu", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% Å¡ance na vystÅ™elenÃ­ pÅ™ilepujÃ­cÃ­ se bombovÃ© slzy#PÅ™ilepujÃ­cÃ­ se bombovÃ© slzy nezpÅ¯sobÃ­ poÅ¡kozenÃ­ pÅ™i zÃ¡sahu", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "PÅ™edmÄ›ty budou nynÃ­ vybÃ­rÃ¡ny z nÃ¡hodnÃ½ch skupin pÅ™edmÄ›tÅ¯", -- Chaos
	-- Full old Desc: "PÅ™edmÄ›ty budou nynÃ­ vybÃ­rÃ¡ny z nÃ¡hodnÃ½ch skupin pÅ™edmÄ›tÅ¯#VytvoÅ™Ã­ 1-6 nÃ¡hodnÃ½ch pickupÅ¯"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "UmoÅ¾ÅˆÃ­ ti vidÄ›t poÅ¡kozenÃ­ zpÅ¯sobenÃ© slzami a ukazatele zdravÃ­ vÅ¡ech nepÅ™Ã¡tel#VyvolÃ¡vÃ¡ nÃ¡hodnÃ½ stavovÃ½ efekt pÅ™i kontaktu#NÃ¡hodnÄ› vytvÃ¡Å™Ã­ baterie", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Pokud je zasaÅ¾eno, prdne si, coÅ¾ nepÅ™Ã¡tele okouzlÃ­, otrÃ¡vÃ­ nebo odrazÃ­ zpÄ›t", -- Farting Baby
	-- Full old Desc: "Blokuje projektily#Pokud je zasaÅ¾eno, prdne si, coÅ¾ nepÅ™Ã¡tele okouzlÃ­, otrÃ¡vÃ­ nebo odrazÃ­ zpÄ›t"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Poskakuje po mÃ­stnosti", -- GB Bug
	-- Full old Desc: "Poskakuje po mÃ­stnosti#UdÄ›luje 120 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu a aplikuje nÃ¡hodnÃ½ stavovÃ½ efekt"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "ZamÃ­chÃ¡ tvoje statistiky#OvlivnÃ­ pouze poÅ¡kozenÃ­, slzy, dosah a rychlost", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "â†‘ ZvyÅ¡uje jednu z tvÃ½ch statistik v zÃ¡vislosti na barvÄ› aury kolem tebe#KdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­, zÃ­skÃ¡Å¡ novou auru#{{ColorRed}}ÄŒervenÃ¡{{CR}} = {{Damage}} +4 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#{{ColorBlue}}ModrÃ¡{{CR}} = {{Tears}} -4 ZpoÅ¾dÄ›nÃ­ Slz#{{ColorYellow}}Å½lutÃ¡{{CR}} = {{Speed}} +0.5 ZvÃ½Å¡enÃ­ Rychlosti#{{ColorOrange}}OranÅ¾ovÃ¡{{CR}} = {{Range}} +7.5 VÄ›tÅ¡Ã­ DostÅ™el, +1 VÃ½Å¡ka Slz", -- Purity
	-- English: "â†‘ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = â†‘ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = â†‘ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = â†‘ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = â†‘ {{Range}} +7.5 Range, â†‘ +1 Tear height"

	[C_ID .. 408] = "KdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­, objevÃ­ se kolem IzÃ¡ka prstenec ÄernÃ©ho laseru#{{BlackHeart}} NepÅ™Ã¡telÃ© zabitÃ­ laserem majÃ­ Å¡anci vytvoÅ™it ÄŒernÃ© Srdce", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "KdyÅ¾ IzÃ¡k nemÃ¡ ÄŒervenÃ© Srdce:#ZÃ­skÃ¡Å¡ lÃ©tÃ¡nÃ­#KaÅ¾dÃ½ch 40 sekund v nepÅ™Ã¡telskÃ© mÃ­stnosti zÃ­skÃ¡Å¡ na 10 sekund Å¡tÃ­t", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 ÄŒernÃ© Srdce#KdyÅ¾ IzÃ¡k nemÃ¡ ÄŒervenÃ© Srdce:#ZÃ­skÃ¡Å¡ lÃ©tÃ¡nÃ­#KaÅ¾dÃ½ch 40 sekund v nepÅ™Ã¡telskÃ© mÃ­stnosti zÃ­skÃ¡Å¡ na 10 sekund Å¡tÃ­t"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "â†‘ {{Damage}} +0.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ za kaÅ¾dÃ©ho zabitÃ©ho nepÅ™Ã­tele v aktuÃ¡lnÃ­ mÃ­stnosti#MaximÃ¡lnÄ› +5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ po 10 zabitÃ­ch", -- Lusty Blood
	-- English: "â†‘ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Po 15 utrpenÃ©ho poÅ¡kozenÃ­ zÃ­skÃ¡ IzÃ¡k stÃ¡lÃ©ho spoleÄenskÃ©ho dÃ©mona#Max. aÅ¾ 4 spoleÄnÃ­ci", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Po sebrÃ¡nÃ­ 15 srdcÃ­ zÃ­skÃ¡ IzÃ¡k trvalÃ©ho andÄ›lskÃ©ho spoleÄnÃ­ka#Max. aÅ¾ 5 spoleÄnÃ­kÅ¯", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Dva pÅ™edmÄ›ty se nynÃ­ objevÃ­ ve vÅ¡ech PokladnicÃ­ch#MÅ¯Å¾eÅ¡ si vybrat pouze jeden", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Pokud nemÃ¡Å¡ Å¾Ã¡dnÃ© poÅ¡kozenÃ© mÃ­sta s ÄŒervenÃ½mi Srdci:#{VAR:EFFECTLIST}#Deaktivuje se pro aktuÃ¡lnÃ­ mÃ­stnost, pokud utrpÃ­Å¡ poÅ¡kozenÃ­", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 DuÅ¡evnÃ­ Srdce#Pokud nemÃ¡Å¡ Å¾Ã¡dnÃ© poÅ¡kozenÃ© mÃ­sta s ÄŒervenÃ½mi Srdci:#â†‘ {{Damage}} +100% VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Range}} +5.25 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ +0.5 VÃ½Å¡ka Slz#â†“ {{Shotspeed}} -0.3 MenÅ¡Ã­ Rychlost StÅ™el#Deaktivuje se pro aktuÃ¡lnÃ­ mÃ­stnost, pokud utrpÃ­Å¡ poÅ¡kozenÃ­"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "UmoÅ¾ÅˆÃ­ ti nosit dvÄ› karty/pilulky/runy", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Poskakuje po mÃ­stnosti s poÅ¡kozujÃ­cÃ­ aurou, kterÃ¡ kaÅ¾dou sekundu pÅ¯sobÃ­ 129 % tvÃ©ho poÅ¡kozenÃ­#â†‘ {{Damage}} +50 % poÅ¡kozenÃ­, kdyÅ¾ stojÃ­Å¡ v auÅ™e", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#â†‘ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "S kaÅ¾dou slzou, kterou vystÅ™elÃ­Å¡, ti poskytne jinÃ½ efekt pro dalÅ¡Ã­ slzu", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti, kterÃ¡ jeÅ¡tÄ› nebyla prozkoumÃ¡na", -- Teleport 2.0
	-- Full old Desc: "Teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti, kterÃ¡ jeÅ¡tÄ› nebyla prozkoumÃ¡na#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "ChÅ¯ze v kruhu vytvoÅ™Ã­ na podlaze symbol pentagramu, kterÃ½ pÅ¯sobÃ­ 10 poÅ¡kozenÃ­ za tik", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}}Aplikuje efekt okouzlenÃ­ na vÅ¡echny nepÅ™Ã¡tele v blÃ­zkÃ©m dosahu a zpÅ¯sobÃ­ jim 5 poÅ¡kozenÃ­", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "PÅ™etoÄÃ­Å¡ Äas a vrÃ¡tÃ­Å¡ se zpÄ›t do pÅ™edchozÃ­ mÃ­stnosti, ve kterÃ© jsi byl pÅ™edtÃ­m a do stejnÃ©ho stavu onÃ© mÃ­stnosti#Po tÅ™ech pouÅ¾itÃ­ch se stanou obyÄejnÃ½mi pÅ™esÃ½pacÃ­mi hodinami", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "VelkÃ½ kruh kolem tebe, zpÅ¯sobujÃ­cÃ­ poÅ¡kozenÃ­ pÅ™i kontaktu kaÅ¾dou sekundu#Å ance na odraÅ¾enÃ­ nepÅ™Ã¡telskÃ½ch projektilÅ¯", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickupy majÃ­ 33% Å¡anci, Å¾e budou nahrazeny pytlÃ­kem#VytvoÅ™Ã­ pytlÃ­k", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "VytvÃ¡Å™Ã­ pÅ™ed tebou kuÅ¾el svÄ›tla, kterÃ½ zpomaluje nepÅ™Ã¡tele a projektily uvnitÅ™ nÄ›j#OdstraÅˆuje ProkletÃ­ Temnoty pro aktuÃ¡lnÃ­ patro", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "VytvoÅ™Ã­ tlaÄitelnÃ½ TNT barel#Pokud jej pouÅ¾ijeÅ¡ podruhÃ© ve stejnÃ© mÃ­stnosti, zatÃ­mco tam je poslednÃ­ TNT barel, tak ten starÅ¡Ã­ na dÃ¡lku exploduje", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} NepÅ™Ã¡telÃ© majÃ­ 5% Å¡anci vytvoÅ™it minci pÅ™i zasaÅ¾enÃ­ tvojÃ­ slzou", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "StÅ™Ã­lÃ­ slzy na nepÅ™Ã¡tele poblÃ­Å¾, jeho slzy pÅ¯sobÃ­ poÅ¡kozenÃ­ rovnajÃ­cÃ­ se tvÃ©mu poÅ¡kozenÃ­", -- Papa Fly
	-- Full old Desc: "Sleduje tvÅ¯j pÅ™esnÃ½ pohyb s 1 sekundovÃ½m zpoÅ¾dÄ›nÃ­m#StÅ™Ã­lÃ­ slzy na nepÅ™Ã¡tele poblÃ­Å¾, jeho slzy pÅ¯sobÃ­ poÅ¡kozenÃ­ rovnajÃ­cÃ­ se tvÃ©mu poÅ¡kozenÃ­"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Slzy, kterÃ© jÃ­m projdou, se rozdÄ›lÃ­ a zÃ­skajÃ­ zvÃ½Å¡enÃ­ rychlosti", -- Multidimensional Baby
	-- Full old Desc: "Sleduje tvÅ¯j pÅ™esnÃ½ pohyb s 2 sekundovÃ½m zpoÅ¾dÄ›nÃ­m#Slzy, kterÃ© jÃ­m projdou, se rozdÄ›lÃ­ a zÃ­skajÃ­ zvÃ½Å¡enÃ­ rychlosti"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Bomby majÃ­ 25% Å¡anci vytvoÅ™it nÃ¡hodnÃ½ pickup a 15% Å¡anci okouzlit nepÅ™Ã¡tele, kdyÅ¾ explodujÃ­", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomb#Bomby majÃ­ 25% Å¡anci vytvoÅ™it nÃ¡hodnÃ½ pickup a 15% Å¡anci okouzlit nepÅ™Ã¡tele, kdyÅ¾ explodujÃ­"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "PokaÅ¾dÃ©, kdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­, aplikuje efekt zastraÅ¡enÃ­ na vÅ¡echny nepÅ™Ã¡tele a vytvoÅ™Ã­ pÅ™Ã¡telskÃ©ho ÄernÃ©ho Äerva", -- My Shadow
	-- Full old Desc: "PokaÅ¾dÃ©, kdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­, aplikuje efekt zastraÅ¡enÃ­ na vÅ¡echny nepÅ™Ã¡tele a vytvoÅ™Ã­ pÅ™Ã¡telskÃ©ho ÄernÃ©ho Äerva#ÄŒerv udÄ›luje 5 poÅ¡kozenÃ­ za sekundu"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "PokaÅ¾dÃ©, kdyÅ¾ zabijeÅ¡ nepÅ™Ã­tele, bude do nÃ¡doby pÅ™idÃ¡na modrÃ¡ muÅ¡ka#Max. 20 much#PouÅ¾itÃ­ pÅ™edmÄ›tu uvolnÃ­ vÅ¡echny mouchy", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "VystÅ™elÃ­ 4 slzy do kÅ™Ã­Å¾e", -- Lil Loki
	-- Full old Desc: "VystÅ™elÃ­ 4 slzy do kÅ™Ã­Å¾e#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Po utrpenÃ­ poÅ¡kozenÃ­ zÃ­skÃ¡Å¡ VÃ­ce Slz pro zbytek mÃ­stnosti", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Obnovuje vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti#UmoÅ¾Åˆuje ti nahromadit odmÄ›ny za proÄiÅ¡tÄ›nÃ© mÃ­stnosti#!!! Pokud se pouÅ¾ije v boji proti Greedovi, mÅ¯Å¾e mÃ­stnost pÅ™ehodit na Obchod", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "â†‘ +2 VÃ½Å¡ka Slz", -- Kidney Stone
	-- Full old Desc: "NÃ¡hodnÄ› pÅ™i stÅ™elbÄ› pÅ™estaneÅ¡ stÅ™Ã­let a uvolnÃ­Å¡ salvu slz a ledvinovÃ½ kÃ¡men#â†“ -0.2 SnÃ­Å¾enÃ­ Rychlosti#â†“ -17 MenÅ¡Ã­ DostÅ™el#â†‘ +2 VÃ½Å¡ka Slz"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "VystÅ™elÃ­ obrovskÃ½ Mega SatanskÃ½ laser na 15 sekund#Laser pÅ™etrvÃ¡vÃ¡ mezi mÃ­stnostmi a patry", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! ZatÃ­mco mÃ¡Å¡ pÅ™esnÄ› 1 plnÃ© ÄŒervenÃ© Srdce:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! ZatÃ­mco mÃ¡Å¡ pÅ™esnÄ› 1 plnÃ© ÄŒervenÃ© Srdce:#â†‘ +1.5 {{Range}} VÄ›tÅ¡Ã­ DostÅ™el#â†‘ {{Tears}} +0.75 VÃ­ce Slz#â†‘ +0.2 {{Shotspeed}} VÄ›tÅ¡Ã­ Rychlost StÅ™el#â†‘ +1 VÃ½Å¡ka Slz#Nefunguje s postavami bez ÄŒervenÃ½ch SrdcÃ­"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "KaÅ¾dÃ½ch 15 vystÅ™elenÃ½ch slz vystÅ™elÃ­te shluk slz#KaÅ¾dÃ¡ slza ve shluku zpÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} PÅ™i vstupu do mÃ­stnosti s padacÃ­mi dvÃ­Å™ky vedoucÃ­ do prÅ¯lezu pod kamenem se ozve Å¡tÄ›kÃ¡nÃ­", -- Dog Tooth
	-- Full old Desc: "â†‘ {{Damage}} +0.3 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Speed}} +0.1 ZvÃ½Å¡enÃ­ Rychlosti#{{SecretRoom}} Vlk zavyje pokud stoupÃ­Å¡ do mÃ­stnosti, kterÃ¡ je vedle TajnÃ©/Super TajnÃ© MÃ­stnosti#{{LadderRoom}} PÅ™i vstupu do mÃ­stnosti s padacÃ­mi dvÃ­Å™ky vedoucÃ­ do prÅ¯lezu pod kamenem se ozve Å¡tÄ›kÃ¡nÃ­"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "PÅ™i stÅ™elbÄ› zÃ­skÃ¡Å¡ zelenou auru, kterÃ¡ otrÃ¡vÃ­ vÅ¡echny nepÅ™Ã¡tele v nÃ­#Jed pÅ¯sobÃ­ tvoje poÅ¡kozenÃ­", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "PÅ™i stÅ™elbÄ› bez pauzy se kaÅ¾dÃ½ch 7.5 sekund vytvoÅ™Ã­ smradlavÃ½ oblak#Oblak zpÅ¯sobÃ­ 3.5 poÅ¡kozenÃ­ pÄ›tkrÃ¡t za sekundu#Oblak setrvÃ¡vÃ¡ 15 sekund#StÅ™elbou s nÃ­m lze pohybovat", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "PÅ™i poÅ¡kozenÃ­:#{{Heart}} 25% Å¡ance na vytvoÅ™enÃ­ ÄŒervenÃ©ho Srdce#{{Collectible214}} 10% Å¡ance na zÃ­skÃ¡nÃ­ â†‘ +5 VÄ›tÅ¡Ã­ DostÅ™el a zanechÃ¡Å¡ stopu krvavÃ© kaluÅ¾e pro aktuÃ¡lnÃ­ mÃ­stnost", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get â†‘ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} NepÅ™Ã¡telskÃ© stÅ™ely majÃ­ 25% Å¡anci, Å¾e se odrazÃ­ jako matoucÃ­ slzy", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#{{Confusion}} NepÅ™Ã¡telskÃ© stÅ™ely majÃ­ 25% Å¡anci, Å¾e se odrazÃ­ jako matoucÃ­ slzy"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "KaÅ¾dÃ½ch 20 slz vystÅ™elÃ­Å¡ mincovou slzu, kterÃ¡ promÄ›nÃ­ nepÅ™Ã¡tele ve zlato#To stojÃ­ 1 minci#ZasaÅ¾enÃ­ nepÅ™Ã¡telÃ© po smrti vytvoÅ™Ã­ minci", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} ZdvojnÃ¡sobÃ­ ÃºÄinek jakÃ©koli pouÅ¾itÃ© karty", -- Tarot Cloth
	-- Full old Desc: "{{Card}} VytvoÅ™Ã­ nÃ¡hodnou kartu nebo runu pÅ™i sebrÃ¡nÃ­#{{Card}} ZdvojnÃ¡sobÃ­ ÃºÄinek jakÃ©koli pouÅ¾itÃ© karty"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "PÅ™i utrpenÃ­ poÅ¡kozenÃ­ vystÅ™elÃ­Å¡ 10 slz v kruhu kolem sebe#Slzy zpÅ¯sobÃ­ 125% tvÃ©ho poÅ¡kozenÃ­", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "â†‘ +1.5 VÄ›tÅ¡Ã­ DostÅ™el", -- Compound Fracture
	-- Full old Desc: "KostnÃ­ slzy#Slzy se pÅ™i zasaÅ¾enÃ­ Äehokoli roztÅ™Ã­Å¡tÃ­ na 1-3 menÅ¡Ã­ kostnÃ­ Ãºlomky#â†‘ +1.5 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ +1 VÃ½Å¡ka Slz"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "MÅ¯Å¾eÅ¡ nosit dvÄ› karty, runy nebo pilulky#PÅ™i sebrÃ¡nÃ­ vytvoÅ™Ã­ kartu, pilulku nebo runu", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "VytvoÅ™Ã­ Å¡Å¥astnou minci", -- Dad's Lost Coin
	-- Full old Desc: "â†‘ {{Range}} +1.5 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ +1 VÃ½Å¡ka Slz#VytvoÅ™Ã­ Å¡Å¥astnou minci"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% Å¡ance na ignorovÃ¡nÃ­ poÅ¡kozenÃ­", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#20% Å¡ance na ignorovÃ¡nÃ­ poÅ¡kozenÃ­"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} VytvoÅ™Ã­ nÃ¡hodnÃ½ trinket pÅ™i sebrÃ¡nÃ­", -- Belly Button
	-- Full old Desc: "{{Trinket}} VytvoÅ™Ã­ nÃ¡hodnÃ½ trinket pÅ™i sebrÃ¡nÃ­#{{Trinket}} UdÄ›lÃ­ 1 mÃ­sto pro trinket navÃ­c"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% Å¡ance vystÅ™elit pÅ™ilepujÃ­cÃ­ se jedovatÃ© slzy#DrÅ¾Ã­ se na nepÅ™Ã­teli 60 sekund", -- Sinus Infection
	-- Full old Desc: "20% Å¡ance vystÅ™elit pÅ™ilepujÃ­cÃ­ se jedovatÃ© slzy#UdÄ›luje tvoje poÅ¡kozenÃ­ kaÅ¾dou sekundu#DrÅ¾Ã­ se na nepÅ™Ã­teli 60 sekund"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% Å¡ance na vystÅ™elenÃ­ matoucÃ­ slzy#Trochu zatemnÃ­ obrazovku", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Po zÃ¡sahu vytvoÅ™Ã­ modrÃ©ho pavouka nebo mouchu", -- Parasitoid
	-- Full old Desc: "15% Å¡ance na vystÅ™elenÃ­ kokonu s vejci#{{Slow}} PÅ™i zÃ¡sahu se objevÃ­ zpomalujÃ­cÃ­ kaluÅ¾#Po zÃ¡sahu vytvoÅ™Ã­ modrÃ©ho pavouka nebo mouchu"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Po zasaÅ¾enÃ­ prvnÃ­ho nepÅ™Ã­tele dÃ¡le slza pÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­ a zÃ­skÃ¡ navÃ¡dÄ›cÃ­ efekt", -- Eye of Belial
	-- Full old Desc: "â†‘ {{Range}} +1.5 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ +1 VÃ½Å¡ka Slz#Poskytuje prÅ¯raznÃ© slzy#Po zasaÅ¾enÃ­ prvnÃ­ho nepÅ™Ã­tele dÃ¡le slza pÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­ a zÃ­skÃ¡ navÃ¡dÄ›cÃ­ efekt"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Slzy majÃ­ Å¡anci zniÄit kameny a otevÅ™Ã­t dveÅ™e", -- Sulfuric Acid
	-- Full old Desc: "â†‘ {{Damage}} +0.3 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#Slzy majÃ­ Å¡anci zniÄit kameny a otevÅ™Ã­t dveÅ™e"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Å ampioni ÄastÄ›ji vytvÃ¡Å™ejÃ­ pickupy po jejich smrti", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 DuÅ¡evnÃ­ Srdce#Å ampioni ÄastÄ›ji vytvÃ¡Å™ejÃ­ pickupy po jejich smrti"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "UmoÅ¾Åˆuje ti stÅ™Ã­let slzy diagonÃ¡lnÄ› stÅ™elbou ve dvou smÄ›rech", -- Analog Stick
	-- Full old Desc: "â†‘ {{Tears}} +0.3 VÃ­ce Slz#UmoÅ¾Åˆuje ti stÅ™Ã­let slzy diagonÃ¡lnÄ› stÅ™elbou ve dvou smÄ›rech"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} PrvnÃ­ zabitÃ½ nepÅ™Ã­tel v mÃ­stnosti exploduje a otrÃ¡vÃ­ vÅ¡echny okolnÃ­ nepÅ™Ã¡tele", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} UdÄ›luje konstantnÃ­ch 10 % tvÃ©ho poÅ¡kozenÃ­ nepÅ™Ã¡telÅ¯m ve smÄ›ru, na kterÃ½ prst ukazuje", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "ZanechÃ¡vÃ¡ po sobÄ› stopu kaluÅ¾e#KaluÅ¾ udÄ›luje 6 poÅ¡kozenÃ­ za sekundu#NepÅ™Ã¡telÃ©, kteÅ™Ã­ se dotknou mraku, mohou vytvoÅ™it PosvÃ¡tnÃ½ SvÄ›telnÃ½ paprsek", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Poskakuje po mÃ­stnosti#PÅ™i stÅ™elbÄ› se pÅ™estane pohybovat#KdyÅ¾ se zastavÃ­, mÅ¯Å¾e blokovat projektily", -- Hushy
	-- Full old Desc: "Poskakuje po mÃ­stnosti#ZpÅ¯sobuje kontaktnÃ­ poÅ¡kozenÃ­#PÅ™i stÅ™elbÄ› se pÅ™estane pohybovat#KdyÅ¾ se zastavÃ­, mÅ¯Å¾e blokovat projektily"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} NabÃ­jÃ­ svÃ© slzy a stÅ™Ã­lÃ­ ve stylu brokovnice {{Collectible229}}MonstrovÃ½ch Plic#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "OstatnÃ­ spojenci ho nÃ¡sledujÃ­#PÅ™estane se pohybovat, kdyÅ¾ stÅ™Ã­lÃ­Å¡#KdyÅ¾ pÅ™estaneÅ¡ stÅ™Ã­let, teleportujÃ­ se zpÄ›t k tobÄ›", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Spojenec, kterÃ½ se velmi pomalu vystÅ™elÃ­ dopÅ™edu", -- Big Chubby
	-- Full old Desc: "Spojenec, kterÃ½ se velmi pomalu vystÅ™elÃ­ dopÅ™edu#UdÄ›luje 40.5 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Duplikuje 1 nÃ¡hodnÃ½ pickup v aktuÃ¡lnÃ­ mÃ­stnosti", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! PÅ™i pouÅ¾itÃ­ zkonzumuje vÅ¡echny pÅ™edmÄ›ty v mÃ­stnosti#AktivnÃ­ pÅ™edmÄ›t: Jeho efekt bude pÅ™idÃ¡n k efektu PrÃ¡zdnoty (SloÅ¾enÃ­ efektÅ¯)#â†‘ PasivnÃ­ pÅ™edmÄ›t: MalÃ© vylepÅ¡enÃ­ nÃ¡hodnÃ© statistiky", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#â†‘ Passive items grant two random stat ups"

	[C_ID .. 478] = "ZmrazÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti, dokud nezaÄneÅ¡ znovu stÅ™Ã­let#Kontakt se zmrzlÃ½m nepÅ™Ã­telem ti ublÃ­Å¾Ã­#NepÅ™Ã¡telÃ© se po 30 sekundÃ¡ch rozmrazÃ­", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} SpotÅ™ebuje tvÅ¯j trinket a pÅ™edÃ¡ ti jeho efekt natrvalo#Objevuje se vÃ­ce trinketÅ¯", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "PÅ™evÃ¡dÃ­ pickupy na modrÃ© mouchy nebo pavouky#ZdvojnÃ¡sobuje tvoje souÄasnÃ© modrÃ© mouchy/pavouky#VytvoÅ™Ã­ 1 modrou muÅ¡ku nebo pavouka, pokud Å¾Ã¡dnÃ©ho nemÃ¡Å¡", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "PromÄ›nÃ­ tÄ› v jinou postavu#OdstranÃ­ poslednÃ­ pÅ™edmÄ›t, kterÃ½ jsi sebral", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "OvlivÅˆuje celÃ© patro#VÅ¡echny objekty explodujÃ­#{VAR:EFFECTLIST}#OtevÃ­rÃ¡ dveÅ™e do Boss Rush, Hush a vÅ¡ech TajnÃ½ch MÃ­stnostÃ­", -- Mama Mega!
	-- Full old Desc: "OvlivÅˆuje celÃ© patro#VÅ¡echny objekty explodujÃ­#UdÄ›luje 200 poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m#OtevÃ­rÃ¡ dveÅ™e do Boss Rush, Hush a vÅ¡ech TajnÃ½ch MÃ­stnostÃ­"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Po pouÅ¾itÃ­ odstrÄÃ­ nepÅ™Ã¡tele a vytvoÅ™Ã­ vlnu kamenÃ­#DokÃ¡Å¾e otevÅ™Ã­t mÃ­stnosti a rozbÃ­t kameny", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% Å¡ance na zdvojnÃ¡sobenÃ­ vÅ¡ech pÅ™edmÄ›tÅ¯, pickupy a truhel v mÃ­stnosti#50% Å¡ance na odstranÄ›nÃ­ pÅ™edmÄ›tÅ¯/pickupÅ¯/truhly v mÃ­stnosti a vytvoÅ™enÃ­ 1 mince", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "ZranÃ­ tÄ›, aniÅ¾ by ti udÄ›lila poÅ¡kozenÃ­#MÅ¯Å¾e spustit urÄitÃ© efekty", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "UdÄ›lÃ­ ti efekt nÃ¡hodnÃ©ho pÅ™edmÄ›tu pro aktuÃ¡lnÃ­ mÃ­stnost", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "NÃ¡hodnÃ½ efekt hracÃ­ch kostek pÅ™i kaÅ¾dÃ©m pouÅ¾itÃ­", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "VytvoÅ™Ã­ 2 nÃ¡hodnÃ© pÅ™edmÄ›ty v zÃ¡vislosti na aktuÃ¡lnÃ­ skupinÄ› pÅ™edmÄ›tÅ¯ v mÃ­stnosti", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} PouÅ¾itÃ­ pilulky otrÃ¡vÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- Acid Baby
	-- Full old Desc: "{{Pill}} KaÅ¾dÃ© 3 mÃ­stnosti vytvoÅ™Ã­ nÃ¡hodnou pilulku#{{Poison}} PouÅ¾itÃ­ pilulky otrÃ¡vÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "ZvÃ½razÅˆuje umÃ­stÄ›nÃ­ {{SecretRoom}} TajnÃ½ch MÃ­stnostÃ­, zbarvenÃ½ch kamenÅ¯ a padacÃ­ch dvÃ­Å™ek vedoucÃ­ do prÅ¯lezu", -- YO LISTEN!
	-- Full old Desc: "â†‘ {{Luck}} +1 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­#ZvÃ½razÅˆuje umÃ­stÄ›nÃ­ {{SecretRoom}} TajnÃ½ch MÃ­stnostÃ­, zbarvenÃ½ch kamenÅ¯ a padacÃ­ch dvÃ­Å™ek vedoucÃ­ do prÅ¯lezu"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Za kaÅ¾dÃ© prÃ¡zdnÃ© mÃ­sto na Srdce:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Za kaÅ¾dÃ© prÃ¡zdnÃ© mÃ­sto na Srdce:#â†‘ +0.2 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Slzy pÅ™i zÃ¡sahu zpÅ¯sobÃ­ 1-2 jiskry elektÅ™iny#Jiskry zpÅ¯sobÃ­ polovinu tvÃ©ho poÅ¡kozenÃ­", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Å ance vystÅ™elit ÄervenÃ½ plamen, kterÃ½ blokuje nepÅ™Ã¡telskÃ© vÃ½stÅ™ely a pÅ¯sobÃ­ kontaktnÃ­ poÅ¡kozenÃ­#Plamen zÅ¯stane, dokud pÄ›tkrÃ¡t nezpÅ¯sobÃ­ poÅ¡kozenÃ­ nebo nezablokuje stÅ™elu", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Jehly okamÅ¾itÄ› zabijÃ­ normÃ¡lnÃ­ nepÅ™Ã¡tele a roztÅ™Ã­Å¡tÃ­ je do 10 slz#Jehly zpÅ¯sobÃ­ 3x poÅ¡kozenÃ­ BossÅ¯m", -- Euthanasia
	-- Full old Desc: "3,33% Å¡ance na vystÅ™elenÃ­ jehly#{{Luck}} 100% Å¡ance pÅ™i 15 Å tÄ›stÃ­#Jehly okamÅ¾itÄ› zabijÃ­ normÃ¡lnÃ­ nepÅ™Ã¡tele a roztÅ™Ã­Å¡tÃ­ je do 10 slz#Jehly zpÅ¯sobÃ­ 3x poÅ¡kozenÃ­ BossÅ¯m"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Zmate vÅ¡echny nepÅ™Ã¡tele a maskuje tÄ› pÅ™i vstupu do mÃ­stnosti, dokud nezaÄneÅ¡ stÅ™Ã­let", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} VytvoÅ™Ã­ obÄ› dveÅ™e do ÄŽÃ¡belskÃ© a AndÄ›lskÃ© MÃ­stnosti#PÅ™i vstupu do prvnÃ­ch dveÅ™Ã­ zmizÃ­ ty druhÃ©", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Za kaÅ¾dÃ½ch 25 mincÃ­ ti pÅ™idÃ¡ 1 mÃ­sto pro Srdce#{{Player14}} Keeper zÃ­skÃ¡ dalÅ¡Ã­ mÃ­sto pro MincovÃ© Srdce", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "PÅ™i stÅ™elbÄ› obÄas vystÅ™elÃ­Å¡ bÃ­lou slzu s bÃ­lou kaluÅ¾Ã­, kterÃ¡ zpÅ¯sobÃ­ dvojnÃ¡sobnÃ© poÅ¡kozenÃ­#PÅ™i utrpenÃ­ poÅ¡kozenÃ­ vystÅ™elÃ­Å¡ bÃ­lou slzu", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "VytvoÅ™Ã­ mouchu, kterÃ¡ stojÃ­ na mÃ­stÄ› a stÅ™Ã­lÃ­ na nepÅ™Ã¡tele#KaÅ¾dÃ½ vÃ½stÅ™el zpÅ¯sobÃ­ 2 poÅ¡kozenÃ­", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "MoÅ¾nost vytvoÅ™enÃ­ oÄarovanÃ©ho nepÅ™Ã­tele pÅ™i vstupu do nepÅ™Ã¡telskÃ© mÃ­stnosti", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Pokud slzy zasÃ¡hnou nepÅ™Ã­tele do zad, zpÅ¯sobÃ­ jim dvojnÃ¡sobnÃ© poÅ¡kozenÃ­ a takÃ© krvÃ¡cenÃ­, kterÃ© kaÅ¾dÃ½ch 5 sekund zpÅ¯sobÃ­ 10% poÅ¡kozenÃ­ z maximÃ¡lnÃ­ho zdravÃ­ nepÅ™Ã­tele.", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} ZpÅ¯sobÃ­ tvoje poÅ¡kozenÃ­ + 10 % maximÃ¡lnÃ­ho zdravÃ­ nepÅ™Ã­tele#OvlivÅˆuje vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti#{{HalfHeart}} Å ance vytvoÅ™enÃ­ pÅ¯lky srdcÃ­, kdyÅ¾ zpÅ¯sobÃ­ poÅ¡kozenÃ­#{{HalfSoulHeart}} Pokud nemÃ¡Å¡ ÄŒervenÃ© Srdce, mÅ¯Å¾e mÃ­sto toho vytvoÅ™it poloviny DuÅ¡evnÃ­ch SrdcÃ­", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "OrbitÃ¡lnÃ­ Å¾iletka, kterÃ¡ zpÅ¯sobuje krvÃ¡cenÃ­, kterÃ© zpÅ¯sobÃ­ 10% poÅ¡kozenÃ­ maximÃ¡lnÃ­ho zdravÃ­ nepÅ™Ã­tele kaÅ¾dÃ½ch 5 sekund#UdÄ›luje 300% poÅ¡kozenÃ­ pÅ™i kontaktu za sekundu#Neblokuje stÅ™ely", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "OrbitÃ¡lnÃ­ oko, kterÃ© vystÅ™elÃ­ slzu kaÅ¾dÃ© 2 sekundy v nÃ¡hodnÃ©m smÄ›ru", -- Bloodshot Eye
	-- Full old Desc: "OrbitÃ¡lnÃ­ oko, kterÃ© vystÅ™elÃ­ slzu kaÅ¾dÃ© 2 sekundy v nÃ¡hodnÃ©m smÄ›ru#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu#UdÄ›luje 30 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "VytvoÅ™Ã­ pÅ™Ã¡telskou DelÃ­riovskou verzi bosse pro aktuÃ¡lnÃ­ mÃ­stnost", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "ObÃ­hÃ¡ kolem nÃ¡hodnÃ©ho nepÅ™Ã­tele, dokud tento nepÅ™Ã­tel nezemÅ™e", -- Angry Fly
	-- Full old Desc: "ObÃ­hÃ¡ kolem nÃ¡hodnÃ©ho nepÅ™Ã­tele, dokud tento nepÅ™Ã­tel nezemÅ™e#UdÄ›luje 30 kontaktnÃ­ho poÅ¡kozenÃ­ za sekundu ostatnÃ­m nepÅ™Ã¡telÅ¯m"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "VrhatelnÃ¡ ÄernÃ¡ dÃ­ra, kterÃ¡ vÅ¡echno nasÃ¡vÃ¡#UdÄ›luje 0.4 poÅ¡kozenÃ­ kaÅ¾dÃ½ tik#ZniÄÃ­ okolnÃ­ kameny#VydrÅ¾Ã­ 6 sekund#Tebe sice takÃ© pÅ™itahuje, ale tah je mnohem slabÅ¡Ã­", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "NÃ¡hodnÃ¡ Å¡ance na okouzlenÃ­/zastraÅ¡enÃ­ nepÅ™Ã­tele#NÃ¡hodnÃ¡ Å¡ance na vytvoÅ™enÃ­ duhovÃ©ho hovÃ­nka pÅ™i utrpenÃ­ poÅ¡kozenÃ­", -- Bozo
	-- Full old Desc: "â†‘ +0.1 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#+1 DuÅ¡evnÃ­ Srdce#NÃ¡hodnÃ¡ Å¡ance na okouzlenÃ­/zastraÅ¡enÃ­ nepÅ™Ã­tele#NÃ¡hodnÃ¡ Å¡ance na vytvoÅ™enÃ­ duhovÃ©ho hovÃ­nka pÅ™i utrpenÃ­ poÅ¡kozenÃ­"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "ZpÅ¯sobuje, Å¾e se nÃ¡hodnÃ­ nepÅ™Ã¡telÃ© 'lagujÃ­' v nÃ¡hodnÃ½ch intervalech, coÅ¾ zpÅ¯sobÃ­ jejich krÃ¡tkÃ© zamrznutÃ­#Efekt platÃ­ i pro nepÅ™Ã¡telskÃ© stÅ™ely a pickupy#25% Å¡ance na zdvojnÃ¡sobenÃ­ odmÄ›n z mÃ­stnosti", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "VytvoÅ™Ã­ nÃ¡hodnÃ½ pÅ™edmÄ›t ze skupiny pÅ™edmÄ›tÅ¯ aktuÃ¡lnÃ­ mÃ­stnosti#Å ance mÃ­sto toho vytvoÅ™it Hroudu UhlÃ­ nebo Hovno", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "VytvoÅ™Ã­ rozstÅ™ikovaÄ, kterÃ½ se otÃ¡ÄÃ­ v kruhu a rozstÅ™ikuje tvoje slzy na vÅ¡echny strany", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "UmoÅ¾Åˆuje ti rychle umisÅ¥ovat bomby", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bomb#UmoÅ¾Åˆuje ti rychle umisÅ¥ovat bomby"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Spojenec, kterÃ½ vypadÃ¡ jako nÃ¡hodnÃ© dÃ­tÄ› z coopu#MÃ¡ nÃ¡hodnÃ½ efekt slz#KaÅ¾dÃ© patro se nÃ¡hodnÄ› mÄ›nÃ­", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Spojenec, kterÃ½ se kaÅ¾dÃ½ch 10 sekund promÄ›nÃ­ v dalÅ¡Ã­ho nÃ¡hodnÃ©ho spojence", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 nabitÃ­ na tvÅ¯j aktivnÃ­ pÅ™edmÄ›t za kaÅ¾dÃ½ch 15 zabitÃ½ch nepÅ™Ã¡tel", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "PÅ™i pouÅ¾itÃ­ udÄ›lÃ¡ jeden nÃ¡hodnÃ½ pÅ™edmÄ›t v {{Shop}}ObchodÄ› nebo {{DevilRoom}}ÄŽÃ¡belskÃ© MÃ­stnosti zcela zdarma#{{Shop}} BÄ›hem drÅ¾enÃ­ zaruÄuje, Å¾e jeden pÅ™edmÄ›t v obchodu bude ve slevÄ›", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "NepÅ™Ã¡telskÃ© stÅ™ely blÃ­zko tebe jsou drÅ¾eny na mÃ­stÄ› po dobu 3 sekund#PotÃ© jsou od tebe odhozeny#Po 3 sekundÃ¡ch se pÅ™edmÄ›t znovu nabije", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "PÅ™i pouÅ¾itÃ­ uloÅ¾Ã­ vÅ¡echny pickupy z aktuÃ¡lnÃ­ mÃ­stnosti#OpÄ›tovnÃ½m pouÅ¾itÃ­m je vrÃ¡tÃ­Å¡ zpÄ›t na podlahu#To ti umoÅ¾nÃ­ pÅ™esouvat vÄ›ci mezi mÃ­stnostmi", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Slzy budou spojeny elektÅ™inou#PoÅ¡kozenÃ­ elektÅ™inou se rovnÃ¡ tvÃ©mu poÅ¡kozenÃ­", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "UtrpenÃ© poÅ¡kozenÃ­ vytvoÅ™Ã­ orbitÃ¡lnÃ­ kouli blokujÃ­cÃ­ stÅ™ely#MaximÃ¡lnÄ› 3 koule souÄasnÄ›#Koule jsou zniÄeny, pokud utrpÃ­ pÅ™Ã­liÅ¡ velkÃ© poÅ¡kozenÃ­", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "VytvoÅ™Ã­ malÃ©ho jezdce Apokalypsy, kterÃ½ vytvÃ¡Å™Ã­ jeho speciÃ¡lnÃ­ kobylky#Jezdec se mÄ›nÃ­ kaÅ¾dÃ½ch 10 sekund", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Spojenec, kterÃ½ za tebe mÅ¯Å¾e dÄ›lat Ãºkoly:#OtevÃ­rÃ¡nÃ­ dveÅ™Ã­ a truhel, pÅ™inÃ¡Å¡enÃ­ pÅ™edmÄ›tÅ¯, kradenÃ­ z obchodu/od ÄÃ¡bla, bojuje s nepÅ™Ã¡teli, exploduje a aktivuje nÃ¡Å¡lapnÃ© desky", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "OrbitÃ¡lnÃ­ hranol#Slzy, kterÃ© na nÄ›j dopadajÃ­, se rozdÄ›lÃ­ na 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Slzy se budou chovat jako kuleÄnÃ­kovÃ© koule", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "UdÄ›luje ti odmÄ›nu, pokud zabijeÅ¡ nepÅ™Ã¡tele v poÅ™adÃ­, ve kterÃ©m jsou oznaÄeni", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "â†‘ 31% VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­", -- Haemolacria
	-- Full old Desc: "Slzy lÃ©tajÃ­ obloukem#Slzy pÅ™i dopadu propukajÃ­ v dalÅ¡Ã­ menÅ¡Ã­ slzy#â†“ MÃ©nÄ› Slz#â†‘ 31% VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Slzy pÅ™i cestovÃ¡nÃ­ zpomalujÃ­#Po zastavenÃ­ explodujÃ­ v 8 menÅ¡Ã­ch slz#Slzy mohou bÃ½t vstÅ™eleny do jinÃ½ch slz, ÄÃ­mÅ¾ se zvÄ›tÅ¡Ã­", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "StÅ™Ã­lÃ­Å¡ prÅ¯raznÃ© zÃ¡blesky svÄ›tla#{{Damage}} UdÄ›lujÃ­ 33% poÅ¡kozenÃ­, ale mohou zasÃ¡hnout nepÅ™Ã¡tele nÄ›kolikrÃ¡t", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "UmoÅ¾Åˆuje ti drÅ¾et 2 aktivnÃ­ pÅ™edmÄ›ty#PÅ™epÃ­nej mezi nimi stisknutÃ­m tlaÄÃ­tka Drop (tlaÄÃ­tko 'drÅ¾' za \"The Forgotten\")", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{Collectible313}} UdÄ›luje Å¡tÃ­t pÅ™i vstupu do mÃ­stnosti s Bossem", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#{{HealingRed}} LÃ©ÄÃ­ 1 ÄŒervenÃ© Srdce#{{Collectible313}} UdÄ›luje Å¡tÃ­t pÅ™i vstupu do mÃ­stnosti s Bossem"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "ObÄ›tuje 1-2 spojence, aby vytvoÅ™il ÄŽÃ¡belskÃ½ pÅ™edmÄ›t#PromÄ›nÃ­ tvÃ© modrÃ© pavouky/mouchy na mince", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} VytvoÅ™Ã­ nÃ¡hodnou pilulku#Spojenec, kterÃ½ stÅ™Ã­lÃ­ Å™adu kaluÅ¾Ã­#Typ kaluÅ¾e se zmÄ›nÃ­ pokaÅ¾dÃ©, kdyÅ¾ pouÅ¾ijeÅ¡ pilulku", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} UtrpenÃ­ poÅ¡kozenÃ­ mÅ¯Å¾e spotÅ™ebovat tvÅ¯j trinket a pÅ™idÃ¡ ti jeho efekt natrvalo", -- Marbles
	-- Full old Desc: "{{Trinket}} VytvoÅ™Ã­ 3 nÃ¡hodnÃ© trinkety#{{Collectible479}} UtrpenÃ­ poÅ¡kozenÃ­ mÅ¯Å¾e spotÅ™ebovat tvÅ¯j trinket a pÅ™idÃ¡ ti jeho efekt natrvalo"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "KdyÅ¾ dostaneÅ¡ zÃ¡sah, vytvoÅ™Ã­ okouzlenÃ©ho nepÅ™Ã­tele#VytvoÅ™Ã­ silnÄ›jÅ¡Ã­ pÅ™Ã¡tele, ÄÃ­m vÃ­ce mÃ­stnostÃ­ je vyÄiÅ¡tÄ›no bez poÅ¡kozenÃ­", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Slzy se odrÃ¡Å¾ejÃ­ od podlahy#Slzy zpÅ¯sobujÃ­ poÅ¡kozenÃ­ pÅ™i kaÅ¾dÃ©m odrazu", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "OdrÃ¡Å¾Ã­ stÅ™ely", -- Slipped Rib
	-- Full old Desc: "OrbitÃ¡lnÃ­ kost#OdrÃ¡Å¾Ã­ stÅ™ely"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "VytvoÅ™Ã­ bÃ­lÃ© hovÃ­nko, kdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­#Pokud stojÃ­Å¡ v auÅ™e:#{VAR:EFFECTLIST}#Å ance blokovat poÅ¡kozenÃ­", -- Hallowed Ground
	-- Full old Desc: "VytvoÅ™Ã­ bÃ­lÃ© hovÃ­nko, kdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­#Pokud stojÃ­Å¡ v auÅ™e:#â†‘ {{Tears}} -50% ZpoÅ¾dÄ›nÃ­ Slz#Å ance blokovat poÅ¡kozenÃ­"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "OstrÃ© Å¾ebro, kterÃ© levituje pÅ™ed IzÃ¡kem#UdÄ›luje tvoje poÅ¡kozenÃ­ Å¡estkrÃ¡t za sekundu", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Za kaÅ¾dÃ©ho zabitÃ©ho nepÅ™Ã­tele v aktuÃ¡lnÃ­ mÃ­stnosti vytvoÅ™Ã­ orbitÃ¡lnÃ­ kost nebo okouzlenÃ©ho kostlivce", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Poskytuje auru, kterÃ¡ zmrazÃ­ nepÅ™Ã¡tele na mÃ­stÄ›", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} VytvoÅ™Ã­ trinket TajemnÃ½ PapÃ­r", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 KostÄ›nÃ© Srdce#â†‘ {{Tears}} +0.7 VÃ­ce Slz#{{Trinket21}} VytvoÅ™Ã­ trinket TajemnÃ½ PapÃ­r"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Spojenec jakoÅ¾to bumerang#UmÃ­ pÅ™inÃ©st pickupy", -- Jaw Bone
	-- Full old Desc: "Spojenec jakoÅ¾to bumerang#UdÄ›luje 7 kontaktnÃ­ho poÅ¡kozenÃ­#UmÃ­ pÅ™inÃ©st pickupy"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "â†‘ {{Tears}} +0.5 VÃ­ce Slz natrvalo", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} NahradÃ­ vÅ¡echna tvoje mÃ­sta s ÄŒervenÃ½mi Srdci za 6 KostÄ›nÃ½ch SrdcÃ­#PÅ™i ztrÃ¡tÄ› KostÄ›nÃ©ho Srdce:#VystÅ™elÃ­ 8 kostnÃ­ch slz ve vÅ¡ech smÄ›rech#â†‘ {{Tears}} +0.5 VÃ­ce Slz natrvalo"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "MÃ¡mina Noha na tebe bude neustÃ¡le Å¡lapat#PouÅ¾itÃ­ zastavÃ­ MÃ¡minu Nohu pro aktuÃ¡lnÃ­ pokoj#!!! (Zkus s tÃ­mto pÅ™edmÄ›tem porazit Boss Rush!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "DruhÃ¡ ÄÃ¡st rozbitÃ© lopaty#!!! PouÅ¾ij lopatu na kopec hlÃ­ny v \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "{{LadderRoom}} VytvoÅ™Ã­ padacÃ­ dvÃ­Å™ka do dalÅ¡Ã­ho patra#!!! PouÅ¾ij lopatu na kopec hlÃ­ny v \"Dark Room\"#!!! OdemykÃ¡ nÄ›co hustÃ©ho", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} VytvoÅ™Ã­ 1 minci, kdyÅ¾ dostaneÅ¡ zÃ¡sah", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% Å¡ance na odmÄ›nu z niÄenÃ­ hoven", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 potÅ™ebnÃ© nabitÃ­ pro aktivnÃ­ pÅ™edmÄ›ty", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "NÃ¡hodnÄ› tÄ› teleportuje pÅ™i pouÅ¾itÃ­ aktivnÃ­ho pÅ™edmÄ›tu", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x Å¡ance na nepÅ™Ã¡telskÃ© Å¡ampiony", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Magnet na mince", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} VÄ›tÅ¡Ã­ Å¡ance k nalezenÃ­ Bible v {{Shop}}Obchodech a {{Library}} KnihovnÃ¡ch", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% vÄ›tÅ¡Ã­ Å¡ance na AndÄ›lskou MÃ­stnost#{{Collectible33}} VÄ›tÅ¡Ã­ Å¡ance k nalezenÃ­ Bible v {{Shop}}Obchodech a {{Library}} KnihovnÃ¡ch"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} 5% Å¡ance na efekt Gamekidu pÅ™i zÃ¡sahu"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "PulzujÃ­cÃ­ slzy#OvlivÅˆuje hitbox slz", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "â†‘ {{Tears}} +0.3 VÃ­ce Slz", -- Wiggle Worm
	-- Full old Desc: "Slzy se pohybujÃ­ vlnivÄ›#â†‘ {{Tears}} +0.3 VÃ­ce Slz"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Slzy se vysokou rychlostÃ­ pohybujÃ­ ve spirÃ¡lÃ¡ch", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% Å¡irÅ¡Ã­ slzy#Slzy vÃ­ce odrÃ¡Å¾ejÃ­ nepÅ™Ã¡tele", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Jeden pÅ™edmÄ›t z obchodu je zdarma", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "ZabraÅˆuje poÅ¡kozenÃ­ z kaluÅ¾Ã­ a bodÃ¡kÅ¯", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} NiÄenÃ­m kamenÅ¯ vytvÃ¡Å™Ã­ mince", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +1% Å¡ance na ÄŒernÃ¡ Srdce", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% Å¡ance na Srdce VÄ›Änosti", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "OdemykÃ¡ truhly bez pouÅ¾itÃ­ klÃ­ÄÅ¯", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} KdyÅ¾ jsi na polovinÄ› srdce, vytvoÅ™Ã­ 1 ÄŒernÃ© Srdce#!!! 3 pouÅ¾itÃ­", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "NÃ¡hodnÄ› imituje: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "NÃ¡hodnÄ› imituje: #{{Collectible327}}Polaroid#{{Collectible328}} Negativ#{{Trinket48}} ChybÄ›jÃ­cÃ­ Kapitolu nebo#{{Trinket23}} PohÅ™eÅ¡ujÃ­cÃ­ PlakÃ¡t"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} SniÅ¾uje Å¡anci na vytvoÅ™enÃ­ srdcÃ­ na 20%#{{Key}} VÄ›tÅ¡Ã­ Å¡ance na klÃ­Äe#{{BlackHeart}} SpadlÃ© Srdce se mÄ›nÃ­ na ÄŒernÃ© Srdce", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} ZnovuzrodÃ­Å¡ se jako \"The Lost\", kdyÅ¾ zemÅ™eÅ¡ v {{SacrificeRoom}}ObÄ›tovnÃ­ MÃ­stnosti#Pokud je odemÄenÃ½, znovuzrodÃ­Å¡ se za nÄ›j i mimo ObÄ›tovnÃ­ MÃ­stnosti", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} O 20% vÄ›tÅ¡Ã­ Å¡ance na minci z niÄenÃ­ hoven#KdyÅ¾ sebereÅ¡ minci, uprdneÅ¡ si#Prd pouze odrÃ¡Å¾Ã­ nepÅ™Ã¡tele", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "UprdneÅ¡ si nebo vytvoÅ™Ã­Å¡ hovno kaÅ¾dÃ½ch 30 sekund", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "â†‘ {{Range}} +10 VÄ›tÅ¡Ã­ DostÅ™el", -- Hook Worm
	-- Full old Desc: "Slzy se pohybujÃ­ v hranatÃ½ch vzorech#â†‘ {{Range}} +10 VÄ›tÅ¡Ã­ DostÅ™el"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% Å¡ance na znovuzrozenÃ­ jako \"Blue Baby\"", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "PÅ™i zÃ¡sahu vytvoÅ™Ã­ 1 modrou mouchu", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% Å¡ance na nÃ¡hodnÃ½ efekt houby za mÃ­stnost#MÅ¯Å¾e odhalit speciÃ¡lnÃ­ mÃ­stnosti na minimapÄ›", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 10% Å¡ance na nÃ¡hodnÃ© srdce jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#Å ance na bonusovÃ© srdce z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% Å¡ance na klÃ­Ä jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#{{Key}} Å ance na bonusovÃ½ klÃ­Ä z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% Å¡ance na: #{{SoulHeart}} DuÅ¡evnÃ­#{{BlackHeart}} ÄŒernÃ© nebo#{{EmptyBoneHeart}} KostÄ›nÃ© Srdce", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Damage}} 20% Å¡ance na zÃ­skÃ¡nÃ­ +1.8 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­, kdyÅ¾ dostaneÅ¡ zÃ¡sah", -- Red Patch
	-- Full old Desc: "{{Damage}} 20% Å¡ance na zÃ­skÃ¡nÃ­ +1.8 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­, kdyÅ¾ dostaneÅ¡ zÃ¡sah#{{Luck}} 100% Å¡ance pÅ™i 8 Å tÄ›stÃ­#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% Å¡ance na bombu jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#{{Bomb}} Å ance na bonusovou bombu z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯#!!! OdstraÅˆuje {{Trinket53}} KlÃ­Å¡tÄ›", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% Å¡ance na odmÄ›nu z vyÄiÅ¡tÄ›nÃ© mÃ­stnosti#Extra pickupy z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯", -- Lucky Toe
	-- Full old Desc: "â†‘ {{Luck}} +1 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­#+8% Å¡ance na odmÄ›nu z vyÄiÅ¡tÄ›nÃ© mÃ­stnosti#Extra pickupy z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "KdyÅ¾ utrpÃ­Å¡ poÅ¡kozenÃ­ aÅ¾ k polovinÄ› ÄŒervenÃ©ho Srdce nebo mÃ©nÄ›, teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% Å¡ance na pilulku jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#{{Pill}} Å ance na bonusovou pilulku z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% Å¡ance na kartu jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#{{Card}} Å ance na bonusovou kartu z truhel, zbarvenÃ½ch kamenÅ¯ a rozbitÃ½ch strojÅ¯", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} 50% Å¡ance na vytvoÅ™enÃ­ pÅ¯lky srdce, kdyÅ¾ vezmeÅ¡ minci", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{Bomb}} 50% Å¡ance na vytvoÅ™enÃ­ bomby, kdyÅ¾ vezmeÅ¡ minci", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 50% Å¡ance na vytvoÅ™enÃ­ klÃ­Äe, kdyÅ¾ vezmeÅ¡ minci", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 50% Å¡ance na zÃ­skÃ¡nÃ­ +1 mince, kdyÅ¾ vezmeÅ¡ minci", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{BossRoom}} -15% bossova Å¾ivota#VylÃ©ÄÃ­ 1 ÄŒervenÃ© Srdce pÅ™i vstupu do {{BossRoom}}Boss MÃ­stnosti#!!! Pokud klÃ­Å¡tÄ› vezmeÅ¡, nemÅ¯Å¾eÅ¡ jej pak sundat#Ale lze jej odstranit pouze se {{Trinket41}} zÃ¡palkou nebo spolknutÃ­m pomocÃ­ pilulky", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Spojenec s prÅ¯raznÃ½mi slzami", -- Isaac's Head
	-- Full old Desc: "Spojenec s prÅ¯raznÃ½mi slzami#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} ZÃ­skÃ¡Å¡ 1 Srdce VÄ›Änosti na zaÄÃ¡tku kaÅ¾dÃ©ho patra", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} SniÅ¾uje ceny Dohod s ÄŽÃ¡blem ze 2 srdcÃ­ na 1 srdce", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "SpoleÄnÃ­k, kterÃ½ skÃ¡Äe po mÃ­stnosti#StÅ™Ã­lÃ­ stejnÃ½m smÄ›rem jako hrÃ¡Ä", -- ???'s Soul
	-- Full old Desc: "SpoleÄnÃ­k, kterÃ½ skÃ¡Äe po mÃ­stnosti#StÅ™Ã­lÃ­ stejnÃ½m smÄ›rem jako hrÃ¡Ä#UdÄ›luje 3.5 poÅ¡kozenÃ­ za slzu"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Damage}} 1/15 Å¡ance na +0.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ pÅ™i zabitÃ­ nepÅ™Ã­tele", -- Samson's Lock
	-- Full old Desc: "{{Damage}} 1/15 Å¡ance na +0.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­ pÅ™i zabitÃ­ nepÅ™Ã­tele#{{Luck}} 100% Å¡ance pÅ™i 10 Å tÄ›stÃ­#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "PÅ™emÄ›nÃ­ vÅ¡echny truhly na ÄervenÃ© truhly", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Kameny skrÃ½vajÃ­cÃ­ prÅ¯lez a zbarvenÃ© kameny budou blikat kaÅ¾dÃ½ch 10 sekund", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "PÅ™emÄ›nÃ­ vÅ¡echny trollÃ­ bomby na obyÄejnÃ© bomby", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "NÃ¡hodnÃ½ ÄervÃ­ efekt kaÅ¾dÃ© 3 sekundy", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "50% na pouÅ¾itÃ­:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "50% na pouÅ¾itÃ­:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 nebo #{{Collectible166}} D20 pÅ™i utrpenÃ­ zÃ¡sahu"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Magnet na pickupy a nepÅ™Ã¡tele", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "NÃ¡hodnÄ› maskuje hrÃ¡Äe#Mate nepÅ™Ã¡tele", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Å ance na vytvoÅ™enÃ­ 1 modrÃ©ho pavouka, kdyÅ¾ jsi v nepÅ™Ã¡telskÃ© mÃ­stnosti", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bomby po sobÄ› zanechÃ¡vajÃ­ kaluÅ¾", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "6.66% Å¡ance na baterku jakoÅ¾to odmÄ›nu za vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti#+10% Å¡ance, aby se z pickupÅ¯ stala baterka#5% Å¡ance k pÅ™idÃ¡nÃ­ 1 nabitÃ­ k aktivnÃ­mu pÅ™edmÄ›tu po vyÄiÅ¡tÄ›nÃ­ mÃ­stnosti", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% Å¡ance na vytvoÅ™enÃ­ bomby jakoÅ¾to pickup po explodovÃ¡nÃ­ bomby", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "0.5% Å¡ance na odhalenÃ­ {{LadderRoom}} prÅ¯lezu po zniÄenÃ­ kamene", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Efekt nÃ¡hodnÃ©ho trinketu kaÅ¾dou mÃ­stnost", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "Truhly majÃ­ 50/50 Å¡anci k vytvoÅ™enÃ­ extra pickupÅ¯ NEBO zlÃ© mouchy", -- Poker Chip
	-- English: "â†‘ 50% chance for chests to spawn extra pickups#â†“ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Slzy vÃ­ce odrÃ¡Å¾ejÃ­ nepÅ™Ã¡tele", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "2x delÅ¡Ã­ statusovÃ© efekty na nepÅ™Ã¡telÃ­ch", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "25% Å¡ance, Å¾e kdyÅ¾ pouÅ¾ijeÅ¡ pilulku/kartu, tak se vytvoÅ™Ã­ kopie tÃ©to karty/pilulky", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Nesmrtelnost trvÃ¡ po zÃ¡sahu 2x dÃ©le", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} +15% Å¡ance, aby Pokladnice obsahovala dva pÅ™edmÄ›ty v budoucÃ­ch patrech#MÅ¯Å¾eÅ¡ si vybrat pouze jeden", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} OtevÅ™e obchody zadarmo", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Greed a Super Greed se nemohou objevit v {{Shop}} Obchodech nebo {{SecretRoom}} TajnÃ½ch MÃ­stnostech#O 5% vÃ­ce mincÃ­ a mÃ©nÄ› srdcÃ­ jakoÅ¾to odmÄ›ny z vyÄiÅ¡tÄ›nÃ½ch mÃ­stnostÃ­", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} PouÅ¾Ã­vanÃ­ DarovacÃ­ch StrojÅ¯ ti mÅ¯Å¾e:#{{Heart}} vylÃ©Äit 1 srdce#{{Coin}} dÃ¡t ti 1 minci#{{Luck}} dÃ¡t +1 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­#{{Beggar}} nebo vytvoÅ™it Å¾ebrÃ¡ka", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "ZniÄenÃ­ hovna vytvoÅ™Ã­ 1 modrou mouchu", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "VylÃ©ÄÃ­ pÅ¯lku srdce kdyÅ¾ pouÅ¾Ã­vÃ¡Å¡ klÃ­Äe#PÅ™emÄ›Åˆuje pÅ¯lky srdcÃ­ na celÃ© srdce", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "ZabraÅˆuje objevenÃ­ aktivnÃ­ch pÅ™edmÄ›tÅ¯", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Spojenci zÅ¯stÃ¡vajÃ­ blÃ­Å¾e k tobÄ›", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Hovna explodujÃ­ a udÄ›lÃ­ 100 poÅ¡kozenÃ­ pÅ™i zniÄenÃ­", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% na vytvoÅ™enÃ­ ÄŒernÃ½ch Hoven#5% Å¡ance na vytvoÅ™enÃ­ ÄŒernÃ©ho Srdce, kdyÅ¾ zniÄÃ­te ÄŒernÃ© Hovno", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "â†‘ +0.2 VÃ­ce Slz", -- Cracked Crown
	-- Full old Desc: "â†‘ ZvÃ½Å¡enÃ­ statistik z tvÃ½ch pÅ™edmÄ›tÅ¯ je o 33% vÃ­ce efektivnÄ›jÅ¡Ã­#â†‘ +0.2 VÃ­ce Slz#â†‘ -1 ZpoÅ¾dÄ›nÃ­ Slz"
	-- English: "â†‘ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% Å¡ance za mÃ­stnost, aby se vÅ¡echny nepÅ™Ã¡telskÃ© mouchy staly pÅ™Ã¡telskÃ©", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "ZdvojnÃ¡sobÃ­ vÅ¡echny vytvoÅ™enÃ© ModrÃ© Mouchy / Pavouky", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "AÅ¾ +2 spojenci", -- Tonsil
	-- Full old Desc: "DostaneÅ¡ spoleÄnÃ­ka blokujÃ­cÃ­ho stÅ™ely po tom co utrpÃ­Å¡ 12-20x poÅ¡kozenÃ­#AÅ¾ +2 spojenci"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% Å¡ance vystÅ™elit navÃ¡dÄ›nÃ© pÅ™ilepujÃ­cÃ­ se jedovatÃ© slzy#UdÄ›luje tvoje poÅ¡kozenÃ­ kaÅ¾dou sekundu#DrÅ¾Ã­ se na nepÅ™Ã­teli 60 sekund", -- Nose Goblin
	-- Full old Desc: "10% Å¡ance vystÅ™elit navÃ¡dÄ›nÃ© pÅ™ilepujÃ­cÃ­ se jedovatÃ© slzy#UdÄ›luje tvoje poÅ¡kozenÃ­ kaÅ¾dou sekundu#DrÅ¾Ã­ se na nepÅ™Ã­teli 60 sekund"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% Å¡ance na vystÅ™elenÃ­ skÃ¡kajÃ­cÃ­ slzy", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! PÅ™i drÅ¾enÃ­ plnÄ› nabitÃ©ho aktivnÃ­ho pÅ™edmÄ›tu:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! PÅ™i drÅ¾enÃ­ plnÄ› nabitÃ©ho aktivnÃ­ho pÅ™edmÄ›tu:#â†‘ {{Damage}} +0.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Speed}} +0.25 ZvÃ½Å¡enÃ­ Rychlosti#â†‘ {{Range}} +0.75 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ {{Tears}} +0.2 VÃ­ce Slz#â†‘ {{Shotspeed}} +0.1 VÄ›tÅ¡Ã­ Rychlost StÅ™el#â†‘ {{Luck}} +1 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! PÅ™i drÅ¾enÃ­ ÃºplnÄ› vybitÃ©ho aktivnÃ­ho pÅ™edmÄ›tu:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! PÅ™i drÅ¾enÃ­ ÃºplnÄ› vybitÃ©ho aktivnÃ­ho pÅ™edmÄ›tu:#â†‘ {{Damage}} +1.5 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Speed}} +0.5 ZvÃ½Å¡enÃ­ Rychlosti#â†‘ {{Range}} +1.5 VÄ›tÅ¡Ã­ DostÅ™el#â†‘ {{Tears}} +0.4 VÃ­ce Slz#â†‘ {{Shotspeed}} +0.3 VÄ›tÅ¡Ã­ Rychlost StÅ™el	#â†‘ {{Luck}} +2 ZvÃ½Å¡enÃ­ Å tÄ›stÃ­"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 extra TajnÃ¡ MÃ­stnost za patro pokud trinket drÅ¾Ã­Å¡", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! KdyÅ¾ poÄet mincÃ­, klÃ­ÄÅ¯ a bomb je roven:#PromÄ›nÃ­ pickupy na jejich dvojitÃ© verze", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "ZvÄ›tÅ¡Ã­ dosah jakÃ©koli kaluÅ¾e, kterou vytvoÅ™Ã­Å¡", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "UtrpenÃ© poÅ¡kozenÃ­ bude ignorovat DuÅ¡evnÃ­/ÄŒernÃ¡ Srdce, coÅ¾ zpÅ¯sobÃ­, Å¾e tvoje ÄŒervenÃ¡ Srdce budou vyÄerpÃ¡na jako prvnÃ­", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Po zÃ¡sahu 1-9 vÃ½buchy vytvoÅ™Ã­ klÃ­Ä, minci, srdce a nÃ¡hodnÃ½ trinket#NenÃ­ vyÅ¾adovÃ¡no dostÃ¡vat poÅ¡kozenÃ­#Trinket bude potÃ© zniÄen", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "ZpÅ¯sobÃ­, Å¾e se kaÅ¾dÃ½ spojenec pÅ™estane pohybovat", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Obchody se nynÃ­ objevujÃ­ ve Womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Pokladnice se nynÃ­ objevujÃ­ ve Womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} DoplÅˆovacÃ­ boxy se vÅ¾dy objevÃ­ v {{TreasureRoom}} PokladnicÃ­ch", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "VytvoÅ™Ã­ explodujÃ­cÃ­ ÃºtoÄÃ­cÃ­ kobylku, kdyÅ¾ vejdeÅ¡ do nepÅ™Ã¡telskÃ© mÃ­stnosti#Kobylka udÄ›luje dvojnÃ¡sobek tvÃ©ho poÅ¡kozenÃ­ + poÅ¡kozenÃ­ exploze", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "VytvoÅ™Ã­ jedovatou ÃºtoÄÃ­cÃ­ kobylku, kdyÅ¾ vejdeÅ¡ do nepÅ™Ã¡telskÃ© mÃ­stnosti#Kobylka udÄ›luje dvojnÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "VytvoÅ™Ã­ zpomalujÃ­cÃ­ ÃºtoÄÃ­cÃ­ kobylku, kdyÅ¾ vejdeÅ¡ do nepÅ™Ã¡telskÃ© mÃ­stnosti#Kobylka udÄ›luje dvojnÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "VytvoÅ™Ã­ ÃºtoÄÃ­cÃ­ kobylku, kdyÅ¾ vejdeÅ¡ do nepÅ™Ã¡telskÃ© mÃ­stnosti#Kobylka udÄ›luje ÄtyÅ™nÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "VytvoÅ™Ã­ 1-4 ÃºtoÄÃ­cÃ­ kobylky, kdyÅ¾ vejdeÅ¡ do nepÅ™Ã¡telskÃ© mÃ­stnosti#Kobylka udÄ›luje dvojnÃ¡sobek tvÃ©ho poÅ¡kozenÃ­", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "5% Å¡ance k zÃ­skÃ¡nÃ­ lÃ©tÃ¡nÃ­ po zabitÃ­ nepÅ™Ã­tele#PÅ™etrvÃ¡vÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "VylÃ©ÄÃ­ pÅ¯l srdce pÅ™i cestÄ› do dalÅ¡Ã­ho patra", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "PlnÄ› dobije tvÅ¯j aktivnÃ­ pÅ™edmÄ›t na zaÄÃ¡tku souboje s bossem", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} ChrÃ¡nÃ­ tÄ› pÅ™ed prvnÃ­m poÅ¡kozenÃ­m, kterÃ© utrpÃ­Å¡ za kaÅ¾dÃ© patro", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "PouÅ¾itÃ­m aktivnÃ­ho pÅ™edmÄ›tu jej upustÃ­Å¡, potÃ© ho mÅ¯Å¾eÅ¡ opÄ›t sebrat#PÅ™i utrpenÃ­ poÅ¡kozenÃ­ mÃ¡Å¡ 2% Å¡anci, Å¾e upustÃ­Å¡ jeden z tvÃ½ch pasivnÃ­ch pÅ™edmÄ›tÅ¯", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "ZpÅ¯sobÃ­, Å¾e tÄ› AndÄ›lÅ¡tÃ­ bossovÃ© po jejich zabitÃ­ namÃ­sto ÄŒÃ¡stÃ­ KlÃ­ÄÅ¯ odmÄ›nÃ­ normÃ¡lnÃ­mi AndÄ›lskÃ½mi pÅ™edmÄ›ty", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "PoslednÃ­ dveÅ™e, kterÃ© jsi pouÅ¾il, zÅ¯stanou otevÅ™enÃ©", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Propojuje tvÃ© spojence paprsky elektÅ™iny#ZpÅ¯sobÃ­ 6 poÅ¡kozenÃ­ na paprsek", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "VytvoÅ™Ã­ modrou mouchu, kdyÅ¾ sebereÅ¡ minci", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "UdÄ›luje tvÃ½m spojencÅ¯m navÃ¡dÄ›nÃ© stÅ™ely", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teleportuje tÄ› zpÄ›t na start", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "MÃ¡mina Noha dupne na nepÅ™Ã­tele!", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Teleportuje tÄ› do Boss MÃ­stnosti", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "VytvoÅ™Ã­ 1 bombu, 1 klÃ­Ä, 1 minci a 1 srdce", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Teleportuje tÄ› do obchodu", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "VytvoÅ™Ã­ {{Slotmachine}} HracÃ­ Automat nebo {{FortuneTeller}} VÄ›Å¡teckÃ½ Stroj", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} VytvoÅ™Ã­ Stroj na DarovÃ¡nÃ­ Krve#{{GreedMode}} VytvoÅ™Ã­ ÄŽÃ¡belskÃ©ho Å½ebrÃ¡ka v Greed Modu", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "VytvoÅ™Ã­ 6 trollÃ­ch bomb", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Teleportuje tÄ› do Pokladnice", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Teleportuje tÄ› do TajnÃ© MÃ­stnosti", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "VytvoÅ™Ã­ Å½ebrÃ¡ka nebo ÄŽÃ¡belskÃ©ho Å½ebrÃ¡ka", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Duplikuje tvoje bomby", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Duplikuje tvoje penÃ­ze", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Duplikuje tvoje klÃ­Äe", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}} Duplikuje tvoje ÄervenÃ© srdce#MÃ¡ pouze efekt lÃ©ÄenÃ­", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} PÅ™emÄ›nÃ­ vÅ¡echny pickupy na bomby", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} PÅ™emÄ›nÃ­ vÅ¡echny pickupy na mince", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} PÅ™emÄ›nÃ­ vÅ¡echny pickupy na klÃ­Äe", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} PÅ™emÄ›nÃ­ vÅ¡echny pickupy na srdce", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Teleportuje tÄ› do ÄŽÃ¡belskÃ© nebo AndÄ›lskÃ© MÃ­stnosti", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "ZniÄÃ­ vÅ¡echny kameny v mÃ­stnosti", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplikuje vÅ¡echny pickupy v mÃ­stnosti", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "VytvoÅ™Ã­ padacÃ­ dvÃ­Å™ka#8% Å¡ance na {{LadderRoom}} prÅ¯lez se Å¾ebÅ™Ã­kem", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} OdstraÅˆuje prokletÃ­", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 DuÅ¡evnÃ­ Srdce#{{CurseCursed}} OdstraÅˆuje prokletÃ­"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "ZamÃ­chÃ¡ vÅ¡echny pÅ™edmÄ›ty na podstavcÃ­ch", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efekt nÃ¡hodnÃ© runy#25% Å¡ance na vytvoÅ™enÃ­ dalÅ¡Ã­ SlepÃ© Runy", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "NÃ¡hodnÃ© zvÃ½Å¡enÃ­ statistiky za kaÅ¾dÃ½ pÅ™edmÄ›t na podstavci v mÃ­stnosti#ZniÄÃ­ vÅ¡echny podstavce v mÃ­stnosti", -- Black Rune
	-- Full old Desc: "ZpÅ¯sobÃ­ 40 poÅ¡kozenÃ­ vÅ¡em nepÅ™Ã¡telÅ¯m#NÃ¡hodnÃ© zvÃ½Å¡enÃ­ statistiky za kaÅ¾dÃ½ pÅ™edmÄ›t na podstavci v mÃ­stnosti#ZniÄÃ­ vÅ¡echny podstavce v mÃ­stnosti"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "VrhacÃ­ instantnÄ› zabÃ­jejÃ­cÃ­ karta", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Odebere cenu ze vÅ¡ech poloÅ¾ek v aktuÃ¡lnÃ­m {{Shop}} ObchodÄ› nebo {{DevilRoom}} ÄŽÃ¡belskÃ© DohodÄ›, takÅ¾e bude vÅ¡e zdarma", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "UkÃ¡Å¾e \"pomocnÃ©\" tipy", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "NaplnÃ­ celou mÃ­stnost hovnama", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "OkamÅ¾itÄ› tÄ› zabije a vytvoÅ™Ã­ 10 rÅ¯znÃ½ch pÅ™edmÄ›tÅ¯", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "OtevÅ™e vÅ¡echny dveÅ™e v aktuÃ¡lnÃ­ mÃ­stnosti", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Zdarma pouÅ¾ije tvÅ¯j aktivnÃ­ pÅ™edmÄ›t", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "ZamÃ­chÃ¡ pÅ™edmÄ›ty a pickupy v aktuÃ¡lnÃ­ mÃ­stnosti", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "DvÄ› MÃ¡miny Ruce sestoupÃ­ a popadnou nepÅ™Ã­tele", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} DostaneÅ¡ efekt SvatÃ©ho PlÃ¡Å¡tÄ› na jednu mÃ­stnost#(Jednou zabrÃ¡nÃ­ poÅ¡kozenÃ­)#25% Å¡ance na vytvoÅ™enÃ­ dalÅ¡Ã­ SvatÃ© Karty", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost", -- Huge Growth
	-- Full old Desc: "â†‘ {{Damage}} +7 VÄ›tÅ¡Ã­ PoÅ¡kozenÃ­#â†‘ {{Range}} +30 VÄ›tÅ¡Ã­ DostÅ™el#NiÄÃ­Å¡ kameny, kdyÅ¾ pÅ™es nÄ› chodÃ­Å¡#ZvÄ›tÅ¡enÃ­#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost", -- Era Walk
	-- Full old Desc: "{{Slow}} ZpomalÃ­ nepÅ™Ã¡tele#â†‘ {{Speed}} +0.5 ZvÃ½Å¡enÃ­ Rychlosti#â†“ {{Shotspeed}} -1 MenÅ¡Ã­ Rychlost StÅ™el#Efekt trvÃ¡ pro aktuÃ¡lnÃ­ mÃ­stnost"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "VytvoÅ™Ã­ Mrak plynu", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "ZpÅ¯sobÃ­ ti 1 poÅ¡kozenÃ­", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "VymÄ›nÃ­ poÄet bomb za poÄet klÃ­ÄÅ¯", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "VytvoÅ™Ã­ 5 trollÃ­ch bomb na tvoji pozici", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "SnÄ›zenÃ­ 3 pilulek ti poskytne transformaci na DospÄ›lÃ©ho (+1 ÄŒervenÃ© Srdce)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teleportuje tÄ› do nÃ¡hodnÃ© mÃ­stnosti#{{ErrorRoom}} MalÃ¡ Å¡ance na teleport do JSEM ERROR mÃ­stnosti", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "PlnÄ› nabije tvÅ¯j aktivnÃ­ pÅ™edmÄ›t", -- 48 Hour Energy!
	-- Full old Desc: "PlnÄ› nabije tvÅ¯j aktivnÃ­ pÅ™edmÄ›t#VytvoÅ™Ã­ 1-2 baterie"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "VyÄerpÃ¡ vÅ¡echny tvoje ÄervenÃ© srdce aÅ¾ na 1 celÃ©", -- Hematemesis
	-- Full old Desc: "VyÄerpÃ¡ vÅ¡echny tvoje ÄervenÃ© srdce aÅ¾ na 1 celÃ©#VytvoÅ™Ã­ 1-4 ÄŒervenÃ© Srdce"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "NemÅ¯Å¾eÅ¡ se pohnout na 2 sekundy", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} OtevÃ­rÃ¡ vchody do tajnÃ½ch mÃ­stnostÃ­ v aktuÃ¡lnÃ­m patÅ™e", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} OkouzlÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Skryje mapu aktuÃ¡lnÃ­ho patra", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Na zemi vytvoÅ™Ã­ velkou limonÃ¡dovou louÅ¾i, kterÃ¡ poÅ¡kozuje nepÅ™Ã¡tele", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "StÅ™Ã­lÃ­Å¡ diagonÃ¡lnÄ› po dobu 30 sekund", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "UtrpÃ­Å¡ pouze poloviÄnÃ­ poÅ¡kozenÃ­ pro aktuÃ¡lnÃ­ mÃ­stnost", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "UtrpÃ­Å¡ plnÃ© poÅ¡kozenÃ­ pro aktuÃ¡lnÃ­ mÃ­stnost", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "PÅ™i chÅ¯zi vytvÃ¡Å™Ã­Å¡ hovna po dobu 2 sekund", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Efekt ProkletÃ­ BludiÅ¡tÄ› pro aktuÃ¡lnÃ­ patro", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "NemÃ¡ vliv na tvÅ¯j hitbox", -- One makes you larger
	-- Full old Desc: "ZvÄ›tÅ¡enÃ­#NemÃ¡ vliv na tvÅ¯j hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "TvÅ¯j hitbox je menÅ¡Ã­", -- One makes you small
	-- Full old Desc: "ZmenÅ¡enÃ­#TvÅ¯j hitbox je menÅ¡Ã­"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "VytvoÅ™Ã­ 1 modrÃ©ho pavouka za kaÅ¾dÃ© hovno v mÃ­stnosti", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "VytvoÅ™Ã­ 1 modrÃ©ho pavouka za kaÅ¾dÃ©ho nepÅ™Ã­tele v mÃ­stnosti#VytvoÅ™Ã­ 1-3 modrÃ© pavouky, kdyÅ¾ se v mÃ­stnosti Å¾Ã¡dnÃ½ nepÅ™Ã­tel nenachÃ¡zÃ­", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Rozpixeluje obrazovku po dobu 30 sekund", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "VytvoÅ™Ã­ za tebou klouzavou hovnovou kaluÅ¾", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} VytvoÅ™Ã­ zpomalujÃ­cÃ­ kaluÅ¾", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} ZpomalÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "ZrychlÃ­ vÅ¡echny nepÅ™Ã¡tele v mÃ­stnosti", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} SpotÅ™ebuje aktuÃ¡lnÄ› drÅ¾enÃ½ trinket a zÃ­skÃ¡Å¡ jeho ÃºÄinek natrvalo", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} VystÅ™elÃ­ jednu Ipekak slzu", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "VybrkneÅ¡ poslednÄ› pouÅ¾itou pilulku", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
