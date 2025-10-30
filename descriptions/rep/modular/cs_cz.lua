---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ {{Speed}} +0.2 Zvýšení Rychlosti", -- The Virus
	-- Full old Desc: "{{Poison}} Jedovatý dotek#↑ {{Speed}} +0.2 Zvýšení Rychlosti"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Poison}} Vrhací jedovatá bomba#způsobí 185 + tvoje poškození#Vytvoří jedovatý oblak", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci na odměnu za vyklizení místnosti#Promění některé špatné pilulky na dobré", -- Lucky Foot
	-- Full old Desc: "↑ +1 {{Luck}} Zvýšení Štěstí#Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci na odměnu za vyklizení místnosti#Promění některé špatné pilulky na dobré"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "Pokud to způsobí poškození více než 60, způsobí to 5x tvoje poškození + 30#↓ {{Tears}} -60% Méně Slz", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Bomby namísto slz#{{Damage}} Každá bomba způsobí 10x tvoje poškození + 30#Pokud to způsobí poškození více než 60, způsobí to 5x tvoje poškození + 30#↓ {{Tears}} -60% Méně Slz"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Magneticky přitahuje pickupy#Otevírá truhly na dálku, ignoruje poškození truhel s hroty", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Nabíjetelné slzy#↑ {{Damage}} Až 400% poškození", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "↑ {{AngelDevilChance}} +17.5% šance na Ďábelskou nebo Andělskou místnost", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Duševní Srdce#Při použití nahradí bosse jeden Jezdec Apokalypsy#↑ {{AngelDevilChance}} +17.5% šance na Ďábelskou nebo Andělskou místnost"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Vytvoří padací dveře do dalšího patra#{{LadderRoom}} Vytvoří průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Odhalí typ místnosti sousedních místností#{{SecretRoom}} Může také odhalit Tajné Místnosti, Super Tajné Místnosti a Mini-Boss Místnosti#Blokuje střely padající shora", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Kontrolovatelný nůž#Nůž způsobí 2x poškození Izáka při držení a 6x poškození v co největší vzdálenosti", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Náhodný spojenec pro aktuální patro", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Větší Poškození pro aktuální místnost#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "Bomby zanechají jedovatý oblak", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Jedovaté bomby#{{Bomb}} +5 Bomb#Bomby zanechají jedovatý oblak#Budeš imunní vůči poškození jedem"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Jednou za místnost, při poškození na polovinu srdce, získáš 1 Duševní Srdce#!!! Nespouští se u efektů dárcovství", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Ničí kameny a poškozuje nepřátele#Při úderu se snižuje jeho nabití#Plně se nabije při přechodu do dalšího patra", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "↓ {{Range}} Nepatrý Menší Dostřel", -- Ipecac
	-- Full old Desc: "{{Poison}} Výbušné jedovaté slzy#↑ {{Damage}} +40 Větší Poškození#↓ {{Shotspeed}} -0.2 Nižší Rychlost Střel#↓ {{Tears}} -67% Méně Slz#↓ {{Range}} Nepatrý Menší Dostřel"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "{{Damage}} Laser způsobuje 13% tvého poškození#↓ {{Tears}} -33% Méně Slz", -- Technology 2
	-- Full old Desc: "Nahrazuje slzy pravého oka pronikavým laserem s neomezeným dosahem, který nepřetržitě střílí#{{Damage}} Laser způsobuje 13% tvého poškození#↓ {{Tears}} -33% Méně Slz"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Zpomalí nepřátele na 4 sekundy#Zabití nepřátelé vytvoří modré pavouky", -- Spider Butt
	-- Full old Desc: "{{Slow}} Zpomalí nepřátele na 4 sekundy#10 poškození všem nepřátelům#Zabití nepřátelé vytvoří modré pavouky"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Vrhatelné{{CR}}#Spustí se v tom směru, ve kterém Izák střílí#Při dotyku s nepřítelem se rozbije a způsobí 7 poškození#Zanechá po sobě poškozující kaluž, která zkamení nepřátele", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Při doteku prdíš a zanecháváš za sebou jedovaté prdy", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "Šance na zdvojnásobení všech pickupů", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Při použití plně dobije tvůj aktivní předmět za cenu poloviny srdce na jedno nabití#Upřednostňuje červené srdce", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Po uvolnění budou všechny slzy vystřeleny tím směrem, kterým byly vystřeleny původně#↑ {{Tears}} +1 Více Slz", -- Anti-Gravity
	-- Full old Desc: "Podržením tlačítka pro střelbu se ve vzduchu budou vznášet slzy#Po uvolnění budou všechny slzy vystřeleny tím směrem, kterým byly vystřeleny původně#↑ {{Tears}} +1 Více Slz"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 Bomb", -- Pyromaniac
	-- Full old Desc: "Výbuchy tě léčí#{{Bomb}} +5 Bomb"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "↑ {{Tears}} +0.5 Více Slz#↓ {{Range}} -20% Menší Dostřel", -- Cricket's Body
	-- Full old Desc: "Slzy se při zásahu rozdělují na 4#Rozdělené slzy způsobí poloviční poškození#↑ {{Tears}} +0.5 Více Slz#↓ {{Range}} -20% Menší Dostřel"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Při utrpení poškození je 8% šance na vytvoření Duševního Srdce#{{Luck}} +2% šance na štěstí#{{HalfHeart}} Nepřátelé mají šanci upustit poloviční červené srdce", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{BlackHeart}} +2 Černé srdce", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{Fear}} Zastrašující slzy#{{Heart}} Přemění všechna červená srdce na {{BlackHeart}} černá srdce#{{BlackHeart}} +2 Černé srdce"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ {{Speed}} +0.3 Zvýšení Rychlosti", -- Stop Watch
	-- Full old Desc: "{{Slow}} Permanentní efekt zpomalení pro nepřátele#↑ {{Speed}} +0.3 Zvýšení Rychlosti"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Modří pavouci/mušky způsobí dvojité poškození#Pavoučí/muší spojenci budou silnější", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "Bomby způsobují kontaktní poškození", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Hořící bomby#{{Bomb}} +5 Bomb#Už nemůžeš utrpět poškození ohněm#Bomby způsobují kontaktní poškození"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy#300% poškození u přímého (a blízkého) kontaktu", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Větší Poškození#↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy#300% poškození u přímého (a blízkého) kontaktu"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Když zdraví klesne na 1 srdce, udělí poškození všem nepřátelům v místnosti#{{Collectible35}} Černá srdce a efekt u Necronomiconu způsobí dvakrát větší poškození", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Černé Srdce#Když zdraví klesne na 1 srdce, udělí poškození všem nepřátelům v místnosti#{{Collectible35}} Černá srdce a efekt u Necronomiconu způsobí dvakrát větší poškození"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Vytvoří 1 náhodnou runu", -- Clear Rune
	-- Full old Desc: "{{Rune}} Kopíruje efekt momentálně držené runy nebo kamene duší#Vytvoří 1 náhodnou runu"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Získáš nezranitelné tělo#!!! Když je zasaženo Srdce, utrpíš poškození#Spojenec se při výstřelech nabíjí, při vypouštění uvolňuje salvu slz", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Převádí 1.5 červeného srdce buď na duševní/černé srdce, nepřátelského pavouka, modrého pavouka, pilulku, kartu nebo runu", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Náhodně vytváří modré pavouky pokud je v nepřátelské místnosti#{{Charm}} Okouzlí nepřátele, se kterými přijde do kontaktu", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Zamíchá všechny pickupy, předměty a tvoje pasivní předměty#Duplikuje 1 náhodný pickup/y v místnosti#Restartuje aktuální místnost, respawne tě a zamíchá nepřátele v oné místnosti#Zamíchá kameny v místnosti", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Zamíchá nepřátele v místnosti#Pokusí se je zamíchat na nepřátele s podobným maximálním HP", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Spustí efekt karty, kterou Izák drží, aniž by ji použil", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Dá ti {{Collectible54}}Mapu pokladů, {{Collectible21}}Kompas nebo {{Collectible246}}Modrou Mapu pro aktuální patro", -- Book of Secrets
	-- Full old Desc: "Dá ti {{Collectible54}}Mapu pokladů, {{Collectible21}}Kompas nebo {{Collectible246}}Modrou Mapu pro aktuální patro#Poskytuje pouze efekty mapování, které ještě nemáš#Pokud všechny efekty jsou už aktivní, dá ti {{Collectible76}}Rentgenové Vidění"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Vytvoří červený plamen#Plamen zůstává do té doby dokud nezpůsobí poškození nebo pětkrát nezablokuje střely anebo po 10 sekundách", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Proměňuje ne-bossové nepřátele na hovna#Instantně zabíjí hovnové nepřátele a bosse#Hasí ohniště a naplňí místnost vodou#Proměňuje jámy naplněné lávou na půdu", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Pokud je předmět použitý před bossem, pak po dokončení místnosti budeš moci uzavřít obchod s ďáblem#!!! Vezmeš-li si tento předmět, nechť budeš uzamčen do ďábelských obchodů po zbytek tohoto běhu!", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Černé srdce#{{DevilRoom}} Pokud je předmět použitý před bossem, pak po dokončení místnosti budeš moci uzavřít obchod s ďáblem#!!! Vezmeš-li si tento předmět, nechť budeš uzamčen do ďábelských obchodů po zbytek tohoto běhu!"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Odrazí blízké nepřátele a jejich střely#Nepřátelé zatlačení do překážek utrpí 10 poškození", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Udělí 2x hráčovo poškození v celé místnosti + 10 #{{Coin}} Cena: 1 mince", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Převádí 1 Duševní nebo Černé srdce na 1 místo/a pro červené srdce", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "vytváří předměty dle patra:#B1: 2 {{SoulHeart}}#B2: 2 {{Bomb}} a 2 {{Key}}#C1: 1 {{BossRoom}}#C2: B1+C1#D1: 4 {{SoulHeart}}#D2: 20 {{Coin}}#W1: 2 Boss předměty#W2: {{Collectible33}}Bible#???/Void: Nic#Sheol: 1 {{DevilRoom}} + 1 {{BlackHeart}}#Dark Room: Odemkne {{Collectible523}}Krabici#Cat: 1 {{AngelRoom}} + 1 {{SoulHeart}}#Chest: 1 {{Coin}}#Home: {{Collectible580}}", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Tvůj dotyk uděluje nepřátelům poškození", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Zvýšení Rychlosti#Tvůj dotyk uděluje nepřátelům poškození#Dostatečně rychlý běh zabrání kontaktnímu poškození"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Zanecháváš po sobě stopu kaluže#{{Damage}} Kaluž uděluje 66% tvého poškození za sekundu#Kaluž synergizuje s účinky tvých slz", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Magnetické slzy#Ovlivňuje nepřátele, pickupy a trinkety#Předměty budou přitahovány tam kam slza dopadne", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Odráží se po místnosti#Střílí směrem k Izákovi#{{Damage}} Jeho poškození se rovná tvému poškození", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Při použití vystřelíš 8 slz ve všech směrech#Slzy kopírují ty tvoje#Nabíjí se při střílení", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} Izákova hlava se promění v nehybného spojence v aktuální místnosti#Tělo je ovládáno odděleně a tryská krvavé slzy směrem, kterým Izák střílí", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Pro neporazitelnost podrž mezerník, dokud nebude nabíjecí lišta prázdná#Paprsky světla zasáhnou nepřátele, kteří se tě dotkli, během tvé neporazitelnosti#!!! Nedržto to příliš dlouho!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "Naváděné slzy", -- Godhead
	-- Full old Desc: "↑ {{Speed}} +0.5 Větší Poškození#↓ {{Tears}} -0.3 Méně Slz#↓ {{Shotspeed}} -0.3 Nižší Rychlost Střel#Slzy získávají poškozující auru, která způsobí 2 poškození za tik#Naváděné slzy"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 352] = "Vystřelí jednu velkou průraznou spektrální slzu ((DMG x 10) + 10)#!!! Když dostaneš poškození:#↓ Ztratíš navíc 2 srdce ze zdraví#↑ {{Range}} +1.5 Větší Dostřel a zanecháš krvavou kaluž v místnosti#To extra poškození tě nazabije#Sebepoškození se nepočítá", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Získáš démonického spojence, který střílí stejné slzy jako Izák#{{Damage}} Uděluje 75% tvého poškození#{{Player13}} 100% pokud hraješ za Lilith", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Pohybuje se po stěnách/překážkách v místnosti#Blízkí nepřátelé se zaměří na mouchu", -- Lost Fly
	-- Full old Desc: "Pohybuje se po stěnách/překážkách v místnosti#Uděluje 56 kontaktního poškození za sekundu#Blízkí nepřátelé se zaměří na mouchu"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bomb#Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "{{Tears}} Střelba jedním směrem postupně zvyšuje tvoji rychlost střílení slz až o 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Luck}} 50% šance při 9 Štěstí", -- Holy Light
	-- Full old Desc: "10% šance na vystřelení posvatné slzy, která při zásahu vyšle paprsek světla#{{Damage}} Paprsek způsobí 3x tvého poškození#{{Luck}} 50% šance při 9 Štěstí"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Poskytuje imunitu proti výbuchům#20% šance na zablokování slz#Blokuje střely padající shora", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Obchody okamžitě doplní své položky, když si je koupíš#Doskladněné zboží pomalu zdražuje", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 mincí#Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Můžeš jej vrhnout na nepřátele k jejich zachycení#Při dalším použití se znovu objeví stejný nepřítel, ale už jako přátelský společník#Chůze po míči (po zachycení ) předmět okamžitě dobije", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Vystřelí se a bude létat po místnosti#Způsobí 5-25 kontaktního poškození v závislosti na jeho rychlosti", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Přetočí jakoukoli překážku na jinou náhodnou překážku (např. hovínka, vázy, TNT, červená hovínka, kamenné bloky apod.)#Malá šance přetočit překážky na tlačítka, průlezný prostor nebo padací dveře", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Vytvoří náhodnou runu každých 7-8 místností#Také může vytvořit kámen duší", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "{{Charm}} Pokaždé, když Izák utrpí poškození, okouzlí každého nepřítele v místnosti a ti pak můžou bojovat mezi sebou", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% šance vystřelit jedovaté slzy#{{Luck}} Není ovlivněno štěstím#{{Poison}} Otráví nepřátelé při doteku#{{BlackHeart}} Nepřátelé zabití kontaktním jedem mají 20% šanci vytvořit černé srdce", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ {{Range}} +3 Větší Dostřel#Spojenci rovněž střílejí na cíl", -- Marked
	-- Full old Desc: "Slzy automaticky míří na červený terč na zemi, který ovládá hráč#↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +3 Větší Dostřel#Spojenci rovněž střílejí na cíl"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} Získáš schopnost nabíjet a vystřelovat střely jakožto laserový prstenec, který se pohybuje po místnosti#Vyšší poškození při delším nabíjení#100% poškození při plném nabití", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Po 3 sekundách střílení slz se na Izákově hlavě objeví červený kříž. Po uvolnění tlačítka střelby vytvoří prstenec z černého brimstonu", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% šance na vystřelení lepkavé bombové slzy#{{Luck}} Není ovlivněno štěstím#Po několika sekundách explodují a způsobí tvoje poškození + 60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět#Prdy způsobí 5-6 poškození", -- Farting Baby
	-- Full old Desc: "Blokuje projektily#Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět#Prdy způsobí 5-6 poškození"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Vrhatelné{{CR}} (vystřelení dvojitým kliknutím)#Zamíchá nepřátele a pickupy, se kterými přijde do kontaktu", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Zvyší jednu z tvých statistik v závislosti na barvě aury kolem tebe#Když utrpíš poškození a následně vstoupíš do nové místnosti, získáš novou auru ale náhodné barvy:#{{ColorRed}}Red{{CR}} = {{Damage}} +4 Větší Poškození#{{ColorBlue}}Blue{{CR}} = {{Tears}} +2 Více Slz#{{ColorYellow}}Yellow{{CR}} = {{Speed}} +0.5 Zvýšení Rychlosti#{{ColorOrange}}Orange{{CR}} = {{Range}} +3 Větší Dostřel", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Při poškození, se objeví kolem Izáka prstenec černého brimstonu", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Vytvoří 1-3 mince pokud ti místnost nedala žádnou odměnu#{{Coin}} Zvýší maximální počet mincí na 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Poskakuje po místnosti s poškozující aurou, která každou sekundu udělí 7,5-10#↑ {{Damage}} +50% poškození při stání v auře", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}}Aplikuje efekt okouzlení na všechny nepřátele v blízkém dosahu", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Přetočíš čas a vrátíš se zpět do předchozí místnosti, ve které jsi byl předtím a do stejného stavu oné místnosti#Po třech použitích se stanou obyčejnými přesýpacími hodinami", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "Bomby mají 63% šanci na vytvoření náhodného pickupu a 15% šanci na okouzlení nepřátel když vybuchnou#Šance na vytvoření se sníží o 1 % za každý spawn v tomto patře", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 bomb#Bomby mají 63% šanci na vytvoření náhodného pickupu a 15% šanci na okouzlení nepřátel když vybuchnou#Šance na vytvoření se sníží o 1 % za každý spawn v tomto patře"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa#Červ uděluje 5 poškození za sekundu", -- My Shadow
	-- Full old Desc: "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa#Červ uděluje 5 poškození za sekundu"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Obnoví všechny nepřátele v místnosti#Umožňí ti nahromadit odměny za pročištěné místnosti", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Po každých 15 vystřelených slz, vystřelíš shluk slz", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Při utrpení poškození:#{{Heart}} 25% šance na vytvoření Červeného srdce#Začneš krvácet a chrlit slzy směrem, kterým střílíš#Krvácení způsobí poloviční poškození Červeného srdce každých 20 sekund#Přestaneš krvácet pokud vyléčíš poškození červeného srdce, pokud nemáš žádné červené srdce, tak zemřeš", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "Každých 20 slz vystřelíš mincovou slzu, která promění nepřátele ve zlato#To stojí 1 minci#Zasažení nepřátelé po smrti vytvoří 1-4 mince", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Některé karty získají extra nebo zdvojnásobený efekt", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Vytvoří náhodnou kartu nebo runu při prvním sebrání#{{Card}} Některé karty získají extra nebo zdvojnásobený efekt"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Kostěnné slzy", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +0.38 Větší Dostřel#Kostěnné slzy#Slzy se při zasažení čehokoli roztříští na 1-3 menší kostěnné úlomky"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Šampioni a odměny se vyskytují mnohem častěji", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Duševní Srdce#Šampioni a odměny se vyskytují mnohem častěji#Priorita spawnovaných pickupů závisí na tom, co hráči nejvíce chybí"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Ostatní spojenci ho následují a automaticky střílejí na nepřátele#Přestanou se pohybovat, když střílíš#Když přestaneš střílet, teleportují se zpět k tobě", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Při použití se změní na Skleněné Dělo", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Duplikuje 1 náhodný pickup v místnosti#Duplikované pickupy nemusí být identicky stejné jako originál", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "!!! Při použití zkonzumuje všechny (aktivní) předměty v místnosti#Aktivní předmět: jeho efekt bude přidán k efektu Prázdnoty (Sloočení efektů)#↑ Pasivní předmět: malé vylepšení pro dvě náhodné statistiky", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Chová se jako jakákoli kostka kromě {{Collectible723}}Spindown Kostky#Změň aktuální kostku pomocí tlačítka pro upuštění{{ButtonRT}}", -- D Infinity
	-- Full old Desc: "Chová se jako jakákoli kostka kromě {{Collectible723}}Spindown Kostky#Změň aktuální kostku pomocí tlačítka pro upuštění{{ButtonRT}}#Doba nabíjení se liší v závislosti na aktuální kostce a aktualizacích při použití"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Větší Poškození za každé prázdné místo pro červené srdce#Následuje vzorec, například:#+0.3 na 1#+0.92 na 2#+1.76 na 3#+2.79 na 4#+3.98 na 5", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Slzy při zásahu způsobí jiskru elektřiny#Jiskry způsobí polovinu tvého poškození#Jiskry mohou přeskakovat mezi nepřáteli", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "The flame disappears after 2 seconds", -- Ghost Pepper
	-- Full old Desc: "8% šance na vystřelení modrého plamene, který blokuje nepřátelské výstřely a působí kontaktní poškození#{{Luck}} 50% šance při 10 Štěstí#The flame disappears after 2 seconds"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "Když vejdeš do místnosti, budeš zamaskován a zmáteš všechny nepřátele, dokud nezačneš střílet#↑ {{Speed}} +0.5 Zvýšení Rychlosti při zahalení#Po odmaskování, způsobíš poškození kolem sebe a získáš Více Slz a Větší Poškození", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "Za každých 25 mincí ti přibyde 1 místo pro srdce#{{Player14}} Keeper může získat další místo pro Mincové Srdce#{{Collectible416}} Získáš místo pro srdce za každých 100 mincí, které máš po 99", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Ruka instantně zabijí nepřátele a uděluje poškození Bossům", -- Little Horn
	-- Full old Desc: "5% šance na vystřelení slzy, která vyvolá ruku Big Horna#{{Luck}} 20% šance při 15 Štěstí#Ruka instantně zabijí nepřátele a uděluje poškození Bossům#Při kontaktu s nepřáteli udělí 3.5 poškození"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Vytvoří mouchu, která stojí na místě a střílí na nepřátele", -- Brown Nugget
	-- Full old Desc: "Vytvoří mouchu, která stojí na místě a střílí na nepřátele#Každý výstřel způsobí 3.5 poškození"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "Pokud slzy zasáhnou nepřítele do zad, způsobí dvojnásobné poškození a způsobí krvácení, takže nepřátelé zanechávají kaluž a utrpí poškození, při pohybu", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Uděluje tvoje poškození + 10% maximálního zdraví nepřítele#Ovlivňuje všechny nepřátele v místnosti#{{HalfHeart}} Šance upustit půl srdce, když způsobí poškození", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "Orbitál, který způsobuje krvácení, díky němuž nepřátelé zanechávají kaluž a utrpí poškození, při pohybu#Uděluje 20% tvého poškození při kontaktu za tik", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbitál, který vystřelí slzu každé 1/3 sekundy když je nepřítel poblíž", -- Bloodshot Eye
	-- Full old Desc: "Orbitál, který vystřelí slzu každé 1/3 sekundy když je nepřítel poblíž#Uděluje 3.5 poškození za slzu#Uděluje 30 kontaktního poškození za sekundu"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Způsobuje, že se náhodní nepřátelé 'lagují' v náhodných intervalech, což způsobí jejich krátké zamrznutí#Efekt platí i pro nepřátelské střely a pickupy#25% šance na zdvojnásobení odměn z místnosti", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Umožňí ti rychleji umístit bomby#Bomby se navzájem neodstrkují", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bomb#Umožňí ti rychleji umístit bomby#Bomby se navzájem neodstrkují"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Zastaví na 3 sekundy všechny nepřátelské projektily, které se přiblíží k Izákovi, a poté je od něj odhodí#Během efektu odtlačí nepřátele poblíž pryč", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Při použití uloží až 10 pickupů z aktuální místnosti#Opětovným použitím je vrátíš zpět na podlahu#To ti umožní přesouvat věci mezi místnostmi", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Slzy budou spojeny elektřinou#Elektřina způsobí 33 % tvého poškození", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Vytvoří padací dveře do dalšího patra#{{LadderRoom}} Vytvoří průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% šance na vystřelení lepkavé spórové slzy#{{Luck}} Není ovlivněno štěstím#Spóry vybuchnou po 2.5 sekundách, udělí poškození, otráví nepřátele poblíž a uvolní další spóry", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Zastrašuje nepřátele v malém okruhu kolem tebe", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Coin}} +5 mincí#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} Přemění 5 mincí na {{Damage}} +1.2 Větší Poškození pro aktuální místnost#{{Coin}} +5 mincí"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 557] = "Dá Izákovi: #předpověď osudu (proroctví)#{{SoulHeart}} Duševní Srdce#{{Card}} Kartu#{{Rune}} Runu nebo Duševní Kámen#{{Trinket}} trinket", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Šance na vystřelení 1-3 slz navíc v náhodných směrech#{{Luck}} Není ovlivněno štěstím#", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Opakovaně elektrizuje nepřátele poblíž#{{Damage}} Elektřina způsobí 75 % tvého poškození", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Vytvoří kruh 10 slz, které působí 10 poškození a dostaneš Více Slz při zásahu pro aktuální místnost#↑ {{Tears}} +1.2 Více Slz za první zásah#↑ {{Tears}} +0.4 za každý další zásah", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "Absolutně zabraňuje snížení všech statistik po zbytek hry", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Bomby explodují s náhodným bombovým efektem", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 bomb#Bomby explodují s náhodným bombovým efektem"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Spojenec, který pronásleduje nepřátele#Po zabití 15 nepřátel působí větší poškození, každých 10 zabití vytvoří půl srdce, ale také se pokusí zranit tebe#Po zabití 40 nepřátel působí ještě větší poškození, vytváří plná srdce a dokáže ničit kameny#Útočením na štěně ho vrátíš do normálu", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1  a půl Duševního Srdce při vstupu do nového patra#{{TreasureRoom}} Zobrazuje nadcházející předmět v Pokladnici#{{BossRoom}} Boss v noční můře při přechodu mezi patry", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} +0.4 Více Slz za každou vyčištěnou místnost bez poškození#{{Tears}} možno až +2 Více Slz#Při utrpení poškození se bonus resetuje", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Dvojité kliknutí klávesy střelby vytvoří štít#Štít trvá 1 sekundu, odstrčí nepřátele a odráží nepřátelské projektily a lasery", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "!!! Bodne tě na začátku každého patra a vysaje všechny životy kromě poloviny Červeného Srdce#Poté zvyšuje statistiky na patro:#↑ {{Damage}} Poškození + 0.15 * ZtracenéSrdce^2#↑ {{Speed}} Rychlost + 0.05*ZtracenéSrdce#Každá ztracená polovina srdce může způsobit poškození-způsobené předměty", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Uděluje vícebarevné slzy s různými stavovými efekty", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "↑ {{SoulHeart}} +2 Duševní Srdce", -- Orphan Socks
	-- Full old Desc: "Zabraňuje poškození způsobeného kalužemi a podlahovými hroty#↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ {{SoulHeart}} +2 Duševní Srdce"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ {{Shotspeed}} -0.16 Menší Rychlost Střel", -- Eye of the Occult
	-- Full old Desc: "Kontrolovatelné slzy#↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +2 Větší Dostřel#↓ {{Shotspeed}} -0.16 Menší Rychlost Střel"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% šance na vystřelení orbitující spektrální slzy", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +20% Větší Poškození#20% šance na vystřelení orbitující spektrální slzy"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Získáš dvě kruhové aury, které poškozují nepřátele#Vnitřní aura způsobuje větší poškození", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Spojenec ukrytý v tvojí hlavě, vystřelující 4 zpomalující slzy#Po utrpení poškození může vystoupit z hlavy", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Všichni Dipové (malé hovínka) jsou přátelští#Zničení hovna vytvoří 1–4 Dipů#Typ Dipa závisí na typu hovna#Kameny mohou být nahrazeny hovny", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Vytvoří meč nad tvojí hlavou, který zdvojnásobí všechny podstavce s předměty#Nezdvojí položky v obchodě, v Truhle či dohody s ďáblem#!!! Zabije tě náhodně poté, co utrpíš poškození od nepřítele", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Vytvoří velkou dlouhotrvající kaluž limonády#Způsobí 24 poškození kontaktem za sekundu", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Místo slz bojuje Izák s mečem#Uděluje 3x tvého poškození#{{Chargeable}} Rotační útok + vystřelení při podržení útoku#Vystřeluje střely normálními švihy při plném zdraví", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Vytvoří novou místnost sousedící s možnou stěnou, označenou červeným obrysem dveří#Místnosti mohou být speciální#{{ErrorRoom}} Místnost mimo mapu patra o rozloze 13x13 tě teleportuje do místnosti JSEM ERROR", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Orbitální muška", -- Psy Fly
	-- Full old Desc: "Orbitální muška#Pronásleduje a odklání střely#Uděluje kontaktní poškození"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Deformuje obrazovku#Efekt lze naskládat na sebe", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Více Slz#↓ {{Speed}} -0.03 Snížení Rychlosti#Deformuje obrazovku#Efekt lze naskládat na sebe"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Při střelbě se umístěné bomby promění v rakety, které vystřelí ve směru střelby", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 bomb#Při střelbě se umístěné bomby promění v rakety, které vystřelí ve směru střelby"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Lze zkombinovat s druhým aktivním předmětem k vytvoření různých typů bludiček#Promění první {{DevilRoom}}Ďábelskou místnost na {{AngelRoom}}Andělskou#{{AngelChance}} Umožňuje aby se Andělské místnosti vyskytovali, i když jsi uzavřel dohodu s ďáblem", -- Book of Virtues
	-- Full old Desc: "Vytvoří orbitální bludičku, která vystřeluje spektrální slzy, ale může být zničena#Lze zkombinovat s druhým aktivním předmětem k vytvoření různých typů bludiček#Promění první {{DevilRoom}}Ďábelskou místnost na {{AngelRoom}}Andělskou#{{AngelChance}} 12.5% vyšší šance na Andělskou místnost#{{AngelChance}} Umožňuje aby se Andělské místnosti vyskytovali, i když jsi uzavřel dohodu s ďáblem"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "{{SoulHeart}} Vytvoří tři Duševní Srdce#{{AngelRoom}} Dva předměty z Andělské místnosti#Musí být nabita sebráním Duševních Srdcí#{{DevilRoom}} Vytvoří pouze 2 Duševní Srdce a 1 Andělský předmět, pokud byla dříve uzavřena dohoda s Ďáblem", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "{{AngelRoom}} Na začátku každého patra vytvoří žebřík, který vede do jedinečného obchodu s předměty z Andělské Místnosti", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "↑ {{Luck}} +1 Štěstí", -- Sol
	-- Full old Desc: "{{BossRoom}}Odhaluje umístění Boss Místnosti#Po porážce Bosse:#Aktivuje {{Card20}}Slunce#{{Battery}} Plně dobíje tvůj aktivní předmět#{{CurseBlind}} Odstraní veškeré kletby#↑ {{Damage}} +3 Větší Poškození#↑ {{Luck}} +1 Štěstí"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Přidá další {{SecretRoom}}Tajnou Místnost a {{SuperSecretRoom}}Supertajnou Místnost do každého patra#Tajné Místnosti obsahují paprsek světla, který ti přidá:#{{HalfSoulHeart}} půlku Duševního Srdce#↑ {{Tears}} +0.5 Více Slz pro aktuální patro#↑ {{Tears}} +0.5 Více Slz navíc od prvního paprsku na patro", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Po vstupu do místnosti zůstávají dveře otevřené", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Zvýšení Rychlosti#Po vstupu do místnosti zůstávají dveře otevřené"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Okouzlí nepřátele poblíž", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 Červené Srdce#{{Charm}} Okouzlí nepřátele poblíž"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Nahrazuje slzy kameny#Udělují proměnlivé poškození", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Větší Poškození#Nahrazuje slzy kameny#Udělují proměnlivé poškození#Dokážou zničit objekty#Více odrazuje nepřátele"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Vystřelíš se dopředu dvojitým kliknutím na klávesu pohybu, budeš nesmrtelný a způsobíš 4x tvého poškození#3 sekundy cooldown", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Při pohybu se za tebou uvolňují jedovaté prdy", -- Jupiter
	-- Full old Desc: "↑ {{Heart}} +2 Zvýšení Zdraví#{{HalfHeart}} Vyléčí půlku Červeného Srdce#↓ {{Speed}} -0.3 Snížení Rychlosti#{{Poison}} Učiní tě imunní vůči jedu#{{Speed}} Vybuduj až +0,5 rychlosti, pokud stojíš na místě#{{Poison}} Při pohybu se za tebou uvolňují jedovaté prdy"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Obklopuje tě kruh#Při vstupu do místnosti v něm bude obíhat 7 slz#Šance na zachycení nepřátelských projektilů do kruhu", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Střílíš ledové slzy, které zpomalují nepřátele a zmrazují monstra, které slzy zabijou#Při dotyku zmrzlých nepřátel je odstrčíš, poté explodují a rozdělí se na 6 ledových střepů", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Chargeable}} Nabíjetelné (automatické)#Vybuduješ masivní slzný bonus během 3 sekund při nestřílení#Opětovná střelba uvolní uložené slzy#Slzný bonus odpadá, když střílíš", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Výrazně zmenší Izáka, což mu umožní vmáčknout se mezi objekty#Projektily přes něj mohou přeletět", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Více Slz#Výrazně zmenší Izáka, což mu umožní vmáčknout se mezi objekty#Projektily přes něj mohou přeletět"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Vytvoří další Prokletou místnost na každém patře#Vylepšuje rozvržení a odměny Prokletých místností", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Při poškození Červeného Srdce tolik nesníží šanci na ďábelskou/andělskou místnost", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Více Slz#{{EternalHeart}} +1 Srdce Věčnosti#{{AngelChance}} Umožňuje aby se Andělské místnosti vyskytovali, i když jsi uzavřel dohodu s ďáblem#Při poškození Červeného Srdce tolik nesníží šanci na ďábelskou/andělskou místnost"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Přidá padací dveře do každého obchodu, které vedou do druhého obchodu s jedinečným zbožím", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Plně dobije tvůj aktivní předmět", -- Battery Pack
	-- Full old Desc: "{{Battery}} Vytvoří 2-4 baterky#Plně dobije tvůj aktivní předmět"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Umožňuje zvedat a házet kameny, TNT, hovna, Dipy, Hostitele a další překážky#Umožňuje i jejich přenášení mezi místnostmi", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Trhliny přitahují blízké nepřátele, pickupy a projektily", -- Ocular Rift
	-- Full old Desc: "5% šance na vystřelení slzy, která vytvoří trhlinu tam, kam dopadne#{{Luck}} Nejasně ovlivněno Štěstím#Trhliny přitahují blízké nepřátele, pickupy a projektily"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Spojenec, který vystřeluje chaotické návaly slz na všechny strany", -- Boiled Baby
	-- Full old Desc: "Spojenec, který vystřeluje chaotické návaly slz na všechny strany#Způsobí 3.5 nebo 5.3 poškození za slzu"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Spojenec, který vystřeluje zkameňující slzy#Zmrazí monstra při jejich zabití", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Zamíchá s podstavci v aktuální místnosti#Předměty mají 30% šanci, že zmizí", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Spojenec který skočí na nepřítele při prvním zásahu v místnosti#Způsobí 45 poškození a uvolní kamennou vlnu#Poté pronásleduje nepřátele", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Přinutí tě křičet, poškozovat a tlačit nepřátele v okolí#Výkřik je tím silnější, čím více nábojů má předmět", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Duševní spojenec, který zemře při jednom zásahem a znovu se objeví na začátku dalšího patra#Pokud přežije celé patro, vytvoří {{SoulHeart}} 3 Duševní Srdce, {{EternalHeart}} 2 Srdce Věčnosti nebo {{TreasureRoom}} předmět z Pokladnice anebo {{AngelRoom}} předmět z Andělské místnosti", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Pokud hráč nemá žádné bomby, lze jednu umístit za cenu poloviny srdce#{{Bomb}} Bomby zanechávají červenou kaluž", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 5 srdcí#{{HalfHeart}} Pokud hráč nemá žádné bomby, lze jednu umístit za cenu poloviny srdce#{{Bomb}} Bomby zanechávají červenou kaluž#"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Dumpy spojenec#Těsně předtím, než se Izák srazí s nepřítelem nebo projektilem, Dumpy si prdne, aby je odvrátil#Po uprdutí se musíš dostat blízko k Dumpymu, abys ho znovu získal", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Ohně mohou zablokovat až 4 výstřely a/nebo způsobit poškození 4krát, než budou zničeny, a mohou trvat až 10 sekund", -- Bird's Eye
	-- Full old Desc: "8% šance na vystřelení červených ohňů, které blokují nepřátelské střely a způsobují kontaktní poškození#{{Luck}} 50% šance při 10 Štěstí#Ohně mohou zablokovat až 4 výstřely a/nebo způsobit poškození 4krát, než budou zničeny, a mohou trvat až 10 sekund"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Zmagnetizovaní nepřátelé přitahují blízké pickupy, projektily a nepřátele", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% šance střílet slzy, které zmagnetizují nepřátele#{{Luck}} 100% šance při 5 Štěstí#Zmagnetizovaní nepřátelé přitahují blízké pickupy, projektily a nepřátele"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Označení nepřátelé jsou napadeni jinými nepřáteli", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% šance na slzu, která označí nepřátele#{{Luck}} 100% šance při 5 Štěstí#Označení nepřátelé jsou napadeni jinými nepřáteli"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Pro každou postavu má jiný účinek", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Poškození pomine během následujících 3 minut#Čas se prodlužuje při zabíjení nepřátel během aktivního efektu", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Větší Poškození#{{Heart}} Plné zdraví#Poškození pomine během následujících 3 minut#Čas se prodlužuje při zabíjení nepřátel během aktivního efektu"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Odstraní všechny Izákovy předměty a pickupy#Teleportuje tě do speciální ložnice se pickupy, truhlami a padacími dveřmi#U každého ztraceného předmětu se zobrazí sada 3 položek, ze kterých si můžeš vybrat", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Hoď svým klíčem, abys způsobil poškození, zničil překážky nebo otevřel dveře#Nepřátelé s ním zabití mají šanci vytvořit obsah truhly včetně předmětů", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 klíčů#Hoď svým klíčem, abys způsobil poškození, zničil překážky nebo otevřel dveře#Nepřátelé s ním zabití mají šanci vytvořit obsah truhly včetně předmětů"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Poskytuje neporazitelnost a schopnost rozdrtit nepřátele a překážky", -- Mega Mush
	-- Full old Desc: "Zgigantizuje tě na 30 sekund, a účinek přetrvává mezi místnostmi#Zatímco jsi obrem, máš:#↑ {{Damage}} +300 % násobitel poškození#↑ {{Range}} +7 Větší Dostřel#↓ {{Tears}} -60% Méně Slz#Poskytuje neporazitelnost a schopnost rozdrtit nepřátele a překážky#"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Poškozuje nepřátele", -- Knife Piece 2
	-- Full old Desc: "Vytvoří nožního spojence společně s {{Collectible626}}Kusem Nože 1#Poškozuje nepřátele#Dokáže otevřít určité masové dveře"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Zavede tě do patra obsahujícího všechny předměty ve hře#Po sebrání předmětu se vrátíš do místnosti, ze které jsi přišel", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Orbitál, který vystřeluje ochráněné slzy", -- Bot Fly
	-- Full old Desc: "Orbitál, který vystřeluje ochráněné slzy"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Rozdělí nepřátele v místnosti na 2 menší verze s mnohem menším zdravím", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Učiní tě imunní vůči spálení, zmatku, strachu, jedu a toxickému plynu", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Zvýšení Štěstí#Učiní tě imunní vůči spálení, zmatku, strachu, jedu a toxickému plynu"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "V místnosti s nepřáteli se na zemi objeví trhliny#Chůze přes tyto trhliny vyvolává explodující duchy", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Pasivně vytvoří spojence, který se pohybuje směrem, kterým Izák střílí#Při použití si Izák s ním vymění místo a získá krátkou neporazitelnostTeleportování nad věcmi je může poškodit nebo zničit", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Přivede tě zpět do prvního patra nového běhu#Předměty, statistiky a pickupy zůstanou nedotčeny", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Hodíš gumu, která okamžitě zabije nepřítele#Zabrání nepříteli v spawnování po zbytek běhu#Způsobí 15 poškození bossům#Lze ji použít pouze jednou za podlaží", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Chrlí proud plamenů#Pokaždé když nepřítel zemře, získá náboj", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "V boji za tebou vytvoří řetěz slz#Slzy způsobí 3.5 poškození", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Vytvoří předmět z seznamu předmětů aktuální místnosti#{{BrokenHeart}} Promění 1 místo pro srdce nebo 2 Duševní Srdce na Zlomené Srdce#Čím víckrát použita, tím vyšší šance, že nahradí budoucí předměty, pokud ji Izák zrovna nedrží (33% po prvním použití, 50% po 2, 100% po 3)#Menší šance, pokud je Kouzelná Kůže na podstavci na aktuálním patře#{{Player10}} Předmět na jedno použití pro Ztraceného", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 644] = "Zvyšuje tvoji nejnižší statistiku#Vytvoří buď {{Coin}} 3 mince, {{Bomb}} 1 bombu nebo {{Key}} 1 klíč v závislosti na tom, čeho máš nejmíň", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Teratoma orbitál#Způsobuje kontaktní poškození #Rozdělí se na menší verze sebe sama po 3 zásazích#Menší verze se rozpadají na modré pavouky", -- Tinytoma
	-- Full old Desc: "Teratoma orbitál#Blokuje střely#Způsobuje kontaktní poškození #Rozdělí se na menší verze sebe sama po 3 zásazích#Menší verze se rozpadají na modré pavouky#Znovu se objeví 5 sekund poté, co je úplně pryč"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Bomby vypouštějí 4 brimstonové lasery v hlavních 4 směrech#Ony lasery ti neublíží", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 bomb#{{Collectible118}} Bomby vypouštějí 4 brimstonové lasery v hlavních 4 směrech#Ony lasery ti neublíží"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Aktivní předměty se nedobíjejí při vyklízení místností#Místo toho se nabíjí při udělování poškození nepřátelům#Vzorec: 40 + 20 * patro", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Malý Baby Plum spojenec", -- Fruity Plum
	-- Full old Desc: "Malý Baby Plum spojenec#Pohybuje se diagonálně po místnosti a střílí za sebou slzy"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Vyvolá přátelskou Švestičku v aktuální místnosti na 10 sekund", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Spojenec, který pomalu putuje směrem k {{BossRoom}} místnosti s Bossem#Pokud stojíš v její auře, uděluje:#↑ {{Damage}} +1 Větší Poškození#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Spojenec, který pomalu putuje směrem k {{BossRoom}} místnosti s Bossem#Pokud stojíš v její auře, uděluje:#↑ {{Damage}} +1 Větší Poškození#↑ {{Damage}} +20% násobič poškození#↑ {{Tears}} +150% Slzný násobič#Naváděné slzy"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Spojenec, který se klouže po místnosti, když do něj strčíte#{{Freezing}} Zpomaluje, způsobuje kontaktní poškození a zmrazí příšery, které zabije", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Když předmět držíš, nepřátelé, kteří nejsou duchové, vytvářejí po smrti malé červené duchy#Při použití způsobí, že duchové explodují", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Ostatní pilulky při použití vytvářejí Černá Srdce", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Černé Srdce#{{Pill}} Identifikuje všechny pilulky#Převádí dobré pilulky na špatné pilulky#↑ {{Damage}} Pilulky snižující statistiky ti dá Větší Poškození#{{BlackHeart}} Ostatní pilulky při použití vytvářejí Černá Srdce"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Přidává káču jako orbitál, který blokuje nepřátelské střely#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Přidává káču jako orbitál, který blokuje nepřátelské střely#Uděluje 10.5 kontaktního poškození za sekundu#Při použití se {{Speed}} ↑ Zvyšuje Rychlost o +0.5 a výrazně zvyšuje rychlost rotace orbitálů"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Předmět není k dispozici>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Nepřátelé po smrti vybuchnou v slzy, které sdílí účinky Izákových slz", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Vytváří mikro postavičky při utrpení poškození #Pronásledují a střílejí na nepřátele v okolí", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Vytvoří dva portály na začátku každého patra#Portály zmizí, když opustíte místnost#{{ColorRed}}Červený: {{CR}}{{BossRoom}}Boss Místnost#{{ColorYellow}}Žlutý: {{CR}}{{TreasureRoom}}Pokladnice#{{ColorBlue}}Modrý: {{CR}}{{SecretRoom}}Tajná Místnost", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Vytvoří dočasného střílejícího společníka stojícího na místě, kde zemřel nepřítel#Max. 5 společníků", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Staneš se nesmrtelným každých 6 sekund na 1 sekundu#Bliká těsně před přechodem", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Jídlo ti vyléčí 3 Červená Srdce#Předměty se pravidelně cyklují mezi jídlem a předmětem, který by se tam jinak objevil#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#Jídlo ti vyléčí 3 Červená Srdce#Předměty se pravidelně cyklují mezi jídlem a předmětem, který by se tam jinak objevil#Sebrání jídla poskytuje: #↑ {{Damage}} dočasné +3.6 Větší Poškození#↑ 2 menší trvalé vylepšení#↓ {{Speed}} -0.03 Snížení Rychlosti"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Zobrazuje obsah {{Chest}} truhel, {{GrabBag}} pytlíků, obchodníků a ohnišť před jejich otevřením/rozbitím", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "!!! Může sbírat předměty, včetně těch příběhových, po smrti je trvale odstraní", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bomba#{{Player14}} Vytvoří Keepera jako druhou postavu#Pokud zemře, objeví se modří pavouci a předmět je poté odstraněn#{{DevilRoom}} Dohody s ďáblem stojí peníze, dokud je Keeper naživu#!!! Může sbírat předměty, včetně těch příběhových, po smrti je trvale odstraní"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Zahájí příběhovou linii směřující Domů#Trinkety, které jsi nechal v předchozích {{TreasureRoom}} Pokladnicích nebo {{BossRoom}} Boss Místností se promění na {{Card78}} Zlomené Klíče", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Pokud místnost udělí odměnu za vyčištění, budeš si moci vybrat ze dvou různých odměn#Vyzvednutím jedné způsobí to, že druhá zmizí", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "Dává náhodné trvalé zvýšení statistik při léčení pomocí Červených Srdcí#{{Heart}} Vytvoří 1 Červené Srdce", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Předměty u Dohod s Ďáblem nyní stojí peníze#{{Shop}}Předměty v Obchodě nyní stojí životy#Spotřební materiál v Obchodech je sice zdarma, ale je obklopen hroty", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{SoulHeart}} + 1 Duševní Srdce#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{SoulHeart}} + 1 Duševní Srdce#↑ {{Damage}} +1 Větší Poškození, když vstoupíš do {{DevilRoom}} Ďábelské Místnosti a nevezmeš si žádný předmět/pickup"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Po smrti je Izákův duch připoután k jeho mrtvému ​​tělu a může pokračovat v boji s půlkou srdce#Po 10 sekundách se vrátíš k životu#Předmět musí být dobit sebráním Duševního Srdce", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Když utrpíš poškození:#Odemkne zamčené dveře v aktuální místnosti#Odhalí náhodnou místnost#Zničí všechny zbarvené kameny a kameny vedoucí do průlezu#Dokáže otevřít příběhové dveře#Může odhalit {{UltraSecretRoom}} Ultra Tajnou Místnost", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "Když při začátku nového patra máš 1 Červené Srdce nebo méně, udělí ti {{EmptyHeart}} prázdné místo pro srdce#Žádný efekt pro postavy, které nemohou mít Červené Srdce", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Když dostaneš zásah, zastaví se čas na 3 sekundy#Izák se stane duchem a opouští své tělo#V podobě ducha získáš schopnost létat, spektrální slzy a také neguješ další zásah, který dostaneš", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Získáš nabíjecí útok, který vystřelí naváděné, spektrální zárodky", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Spojenec, který střílí mini útok Chřtánu Prázdnoty", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Při střelbě nabíjíš krátký hovnový brimstonový laser#Vystřelí se za tebou", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Způsobuje kontaktní poškození a létá vpřed#Konzumuje při tom pickupy, které má před sebou#Každý z nich mu zvětší jeho velikost, poškození a vytvoří modrou mušku#Každé čtyři pickupy vyvolá portál do neprozkoumané místnosti", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Způsobí, že chapadlo vyletí ze země a zachytí nepřítele#Uchopení nepřátelé utrpí poškození, jsou zpomaleni a nemohou se pohybovat", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Nepřátelé po smrti vytvoří levitující kosti#Blokují střely a způsobují kontaktní poškození", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Šance na vytvoření duchů po zabití nepřítele#Duchové pronásledují nepřátele a způsobují kontaktní poškození#Po 5 sekundách duch exploduje a způsobí 7 poškození okolním nepřátelům#Výbuch ti neudělí žádné poškození", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Vytváří náhodné bludičky, které střílí různé slzy, blokují výstřely a způsobují kontaktní poškození#Počet vytvořených bludiček se zvyšuje, čím více předmět používáš", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "{{SoulHeart}} Poskytuje trvalé zvýšení statistik, kdykoli sebereš Duševní Srdce", -- Soul Locket
	-- Full old Desc: "{{SoulHeart}} Poskytuje trvalé zvýšení statistik, kdykoli sebereš Duševní Srdce#{{SoulHeart}} Při sebrání tohoto předmětu vytvoří Duševní Srdce"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Vytvoří náhodné přátelské monstrum, které napodobuje Izákovy pohyby i útoky", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Znovuzrození v aktuální místnosti s půl srdcem, masivním zmenšením velikosti a +0.2 Zvýšení Rychlosti", -- Inner Child
	-- Full old Desc: "+1 život#Znovuzrození v aktuální místnosti s půl srdcem, masivním zmenšením velikosti a +0.2 Zvýšení Rychlosti"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Předměty na podstavcích rychle cyklují mezi 5 náhodnými předměty", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Způsobí, že se nepřátelé odráží od Izáka#Odrážení nepřátel do překážek způsobí poškození#50% šance, že Izák bude ignorovat kontaktní poškození#50% šance na odražení nepřátelských projektilů", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Zabraňuje tomu, aby se předměty kvality {{Quality0}}/{{Quality1}} vytvořily#33% šance na zamíchání předmětů s kvalitou {{Quality2}} na kvalitu {{Quality3}} nebo {{Quality4}}", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Vytvoří sadu bodců v {{DevilRoom}}Ďábelské Místnosti#Utrpení poškození z bodců může poskytnout odměnu:#35%: Nic#33%: ↑ {{Damage}} +0.5  Větší Poškození#15%: {{Coin}} 6 mincí#10%: {{BlackHeart}} 2 Černá Srdce#5%: {{DevilRoom}} Náhodný předmět z Ďábelské Dohody#2%: Transformace na Leviatana", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Vytvoří novou mouchu za každou vyčištěnou místnost", -- The Swarm
	-- Full old Desc: "Udělí ti 8 orbitálních mušek, které se po zablokování výstřelu promění v Modré Mušky#Vytvoří novou mouchu za každou vyčištěnou místnost"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Každý smrtelný zásah přidá další 2 zlomená srdce#Doopravdy zemřeš až při 12 zlomených srdcích", -- Heartbreak
	-- Full old Desc: "{{BrokenHeart}} Přidá ti 3 Zlomené Srdce#↑ {{Damage}} +0.25 Větší Poškození za každé Zlomené Srdce#Každý smrtelný zásah přidá další 2 zlomená srdce#Doopravdy zemřeš až při 12 zlomených srdcích"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Při poškození získáš {{Speed}} Zvýšení Rychlosti a {{Tears}} Více Slz pro aktuální patro#Maximálně až +1.02 Zvýšení Rychlosti a +3 Více Slz", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Poskytne ti svatozář, která vrhá paprsky světla na nepřátele uvnitř#Svatozář se zvětšuje, podle utrpeného poškození po zbytek patra#Tento bonus se každé patro resetuje", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Spojenec, který se stane nepřátelským klonem Bosse, když vstoupíš do Boss Místnosti#Po jeho porážce se vytvoří další předmět#Klon je pomalejší a má 75 % původního zdraví Bosse", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Dva spojenci, kteří stojí po tvém boku#Střílí slzy, které jsou stejné jako tvé, ale udělují pouze 37.5 % tvého poškození", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Vybuduje vztek pokaždé, když pročistíš místnost#Po 4 místnostech vystřelíš velký {{Collectible118}} Brimstone laser v následující místnosti", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Když Izák použije kartu, pilulku nebo runu, použije se také kopie posledních 3 karet/pilulek/run, které použil poté, co sebral Echo Komoru", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Na začátku každého patra vytvoří {{DirtyChest}} Starou Truhlu, jejíž odemknutí vyžaduje klíč#Může obsahovat {{SoulHeart}} Duševní Srdce, trinkety nebo předměty#Předměty jsou ze sady předmětů z {{AngelRoom}} Andělské Místnosti, nebo s tématikou Mámy a Táty", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Po utrpení poškození se objeví orbitální bludička, který přetrvává po celé patro#Maximálně 6 bludiček#Střílí slzy, ale neblokují výstřely", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Výměna mezi aktuální postavou a Esauem mladším, který má {{BlackHeart}} 3 Černá Srdce, {{Damage}} +2 Větší Poškození a možnost létání#Postavy mají nezávislé předměty a zdraví#Při prvním použití získá náhodné pasivní předměty rovnající se počtu předmětů, které máš ty#{{Warning}} Umřeš úplně, když zemře jedna z postav", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Při doteku způsobíš 2x své poškození + 3.5 poškození za každého zasaženého nepřítele#Výbuch na konci efektu, který způsobí poškození rovnající se výši, kterou jsi způsobil ty", -- Dark Arts
	-- Full old Desc: "Při použití získáš {{Speed}} +1 Zvýšení Rychlosti a procházíš nepřáteli a střelami po dobu 1 sekundy#Při doteku způsobíš 2x své poškození + 3.5 poškození za každého zasaženého nepřítele#Výbuch na konci efektu, který způsobí poškození rovnající se výši, kterou jsi způsobil ty"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Zničí všechny předměty v místnosti a vytvoří spojeneckou útočnou mušku za každý předmět#Efekty mušek závisí na předmětech", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Zabraňuje Izákovi vystřelit slzy z jednoho oka", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Větší Poškození#Zabraňuje Izákovi vystřelit slzy z jednoho oka"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Umožňuje ti vrhnout se na nepřátele nebo Bosse, sebrat je a pak s nimi praštit do země#Místo dopadu lze ovládat#Bouchnutí způsobí 50 poškození a vyvolá kamenné vlny#Mění se poškození a oblast účinku podle velikosti hráče", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Shromažďuje a pojme až 8 pickupů, které nelze vyhodit#Jakmile je 8 pickupů v pytlíku, můžeš s jeho použitím vytvořit nový předmět#Kvalita předmětu závisí na kvalitě a vzácnosti pickupů", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Při vstupu do místnosti s předmětem na podstavci se zobrazí druhý duchařský předmět#Při použití Převrácení se skutečný a duchařský předmět prohodí#Oba předměty si lze vzít, pokud použiješ Převrácení po sebrání prvního předmětu#!!! Duchařský předmět zmizí, pokud vezmeš první předmět a místnost opustíš", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Vytvoří spojeneckou orbitální bludičku, která hráči uděluje efekt předmětu, ale může být zničena#Předměty mají 25% šanci, že pocházejí ze sady předmětů pro aktuální místnost nebo ze sady předmětů z Pokladnice, Boss Místnosti nebo Obchodů", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Odstraňuje půlku srdce a vytváří krevní sraženinu jakožto spojence#Každý typ srdce vytváří sraženinu s různým HP, poškozením a efektem slz", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Získáš zpět tělo Zapomenutého z jakékoliv vzdálenosti", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Uvnitř uchovává jednu hovnovou bombu, kterou lze použít později", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Každé 3 mince utracené při nákupu přinese jednu z následujících možností:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Vytvoří {{Coin}} 3 náhodné mince a {{Key}} 1 klíč#{{Shop}} Každé 3 mince utracené při nákupu přinese jednu z následujících možností:#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Range}} +0.25 Větší Dostřel#↑ {{Speed}} +0.03 Zvýšení Rychlosti"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Kameny a ostatní kamenné překážky vytvoří 2 modré pavouky, když jsou zničeny#Kameny mohou příležitostně vytvořit modré pavouky, když jste v nepřátelské místnosti", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Vytvoří náhodný předmět z Obchodu nebo pickup, který se musí koupit za jeho běžnou cenu", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Vytvoří určitý pickup podle toho, kolik má nabití#Pokud je plně nabitá, má silný náhodný efekt#Odměny za nabití:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Způsobí, že všechny budoucí předměty budou 'chybné/rozbité'#Udělí jim zcela náhodné efekty", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Spoutej nejbližšího nepřítele na 5 sekund a zabraň mu v pohybu a akci", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Transformuje všechny předměty v místnosti snížením jejich ID o jedno číslo", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Po utrpení poškození od nepřítele se vyhodí poloviční nebo celé Červené Srdce směrem od tebe#Ono srdce se po 1.5 sekundy vypaří", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Po způsobení dostatečného poškození, přestaneš útočit a spustíš náhodný efekt {{Player25}}Poskvrněného ???:#Vyhodíš náhodné hovno#Vytvoříš posilující kaluž#Jedovatý prdový mrak#Vyšleš 5 trollích bomb", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Dvojitým kliknutím střelby vykýchneš krev#Kýchnutí uděluje 150% poškození nepřátelům před tebou#1 sekunda pro cooldown#{{BrimstoneCurse}} Označení nepřátelé utrpí bonusové poškození od Brimstonu", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Bomby vytvářejí duchy, kteří způsobují kontaktní poškození a explodují po 10 sekundách", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 bomb#Bomby vytvářejí duchy, kteří způsobují kontaktní poškození a explodují po 10 sekundách"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Vytvoří démona jakožto spojence, který je připojen k Izákovi#Napodobuje jeho slzy, statistiky a efekty", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Můžeš vyhodit Izákovu, která způsobí kontaktní poškození a střílí slzy z místa, kam dopadla#Reaktivace předmětu nebo přejetí přes hlavu jí opět připojí k tělu", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Při sebrání vytvoří náhodnou runu nebo kámen duší", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Větší Poškození#{{Rune}} Při sebrání vytvoří náhodnou runu nebo kámen duší"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 33% šance na minci při ničení kamenů", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} O 20 % vyšší šance, že se mince objeví z hovna#Prd při sbírání mincí#{{Poison}} Prd otráví a odrazí nepřátele a projektily", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% šance na náhodný houbičkový efekt na místnost", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible100}} Malého Stevena", -- Umbilical Cord
	-- Full old Desc: "Při polovičním červeném srdci nebo méně získáš#{{Collectible100}} Malého Stevena#{{Collectible318}} Vysoká šance, že se při poškození objeví v místnosti Blíženec"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Při zásahu je 5% šance udělení 80 poškození všem nepřátelům v místnosti#{{Collectible35}} Černá Srdce a efekt podobný Necronomiconu způsobí 2x poškození", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 25% šance na vytvoření půlky srdce při sebrání mince", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 25% šance na vytvoření bomby při sebrání mince", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 25% šance na vytvoření klíče při sebrání mince", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Náhodně maskuje hráče#Zmate nepřátele#Lze použít k otevření dveří do \"Domov\" patra", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Zvýšení statistik tvých předmětů je o 20 % efektivnější", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Utrpené poškození bude ignorovat Duševní/Černá Srdce, což způsobí, že tvoje Červená Srdce budou vyčerpána jako první", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Obchody se nyní objeví v Lůně a Mrtvole", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Pokladnice se nyní objeví v Lůně a Mrtvole", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "Léčí polovinu tvých prázdných červených/kostěných srdcí při cestě do dalšího patra#Minimálně polovina srdce uzdravena", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{SoulHeart}} 17% šance na půlky Duševních Srdcí při sbírání mincí", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% šance na náhodný efekt injekční stříkačky na místnost", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bomby umístěné Izákem explodují rychleji", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Zvyšuje velikost prdu", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Dveře, klíčové bloky a zlaté truhly lze otevřít pomocí výbuchů#Může také otevřít dveře do Domova", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Při vstupu do nového patra se ve startovní místnosti objeví až 4 nevyzvednuté pickupy z předchozího patra", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Použití aktivního předmětu jej znovu zamíchá", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +3 Štěstí k slzným efektům založeným na štěstí", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Sebráním červených srdcí je můžeš přeměnit na modré pavouky#Funguje i při plném zdraví#Účinek může pohltit srdce potřebná k uzdravení", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Zvyšuje rychlost střelby u spojenců", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Když vstoupíš do nového patra, vytvoří se 4 bludičky z Knihy Ctností", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Slzy se otáčí o 90 stupňů a zaměří se na nepřátele, které mohly minout", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Trinket se sám zničí, když utrpíš poškození", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Zvýšení Štěstí#Trinket se sám zničí, když utrpíš poškození"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Pokladnice místo předmětů zdarma nyní obsahují dohody s ďáblem", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "17% šance na přidání jednoho náboje k tvému aktivnímu předmětu při sebrání mince", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Spojenci krouží kolem Izáka", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Aktivuje tvůj aktivní předmět při poškození", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Vstup do místnosti, který vyžaduje klíč, se dostaneš do místnosti připomínající Hushovu místnost#Místnost funguje jako mezi-místnost mezi dvěma místnostmi", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Způsobí, že se hroty a bodliny otupí a činí je neškodnými#Ovlivňuje také {{CursedRoom}}Dveře do Proklété místnosti, mimické truhly a jakékoliv překážky s hroty", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "+9% pokud se Planetárium už vytvořilo#Planetária se nyní mohou vytvořit v Lůně a Mrtvole", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +24% Planetární šance, pokud se žádné Planetárium ještě nevytvořilo#+9% pokud se Planetárium už vytvořilo#Planetária se nyní mohou vytvořit v Lůně a Mrtvole"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% šance na náhodný efekt mámina předmětu na místnost", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% šance na udělení jednorázového spotřebního předmětu jako kostka za každou novou místnost#Kostka při odchodu z místnosti zmizí#Nezabírá slot na pilulky/kartu", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Vytvoří {{TreasureRoom}} Pokladnici a Obchod {{Shop}} v Katedrále", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} Při držení udělí 1 místo pro srdcem#{{Player14}} Funguje také u Keepera", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Po zásahu Izák upustí 2 své mince, klíče nebo bomby#Pickupy můžou být nahrazeny jinými variantami, jako jsou zlaté klíče, nikláky, desetníky atd.", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Zlaté truhly mohou obsahovat extra karty, pilulky nebo trinkety", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 klíč při prvním sebrání#{{GoldenChest}} Nahradí všechny truhly (kromě Staré/Mega) za zlaté truhly#{{GoldenChest}} Zlaté truhly mohou obsahovat extra karty, pilulky nebo trinkety"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Když vstoupíš do nového patra, vytvoří 1 pytlík", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Vytvoří {{TreasureRoom}} Pokladnici {{Shop}} Obchod v Šeolu", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 50% šance, že se po vyklizení místnosti proměníš v Azazela#Účinek trvá do vyklizení a opuštění jiné místnosti", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Všichni Dipové (malá hovínka) jsou teď přátelští#Po vyklizení místnosti vytvoří 1 náhodný Dipa", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Za každou umístěnou bombu vytvoří 1 bombu navíc", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "{{Coin}} V Lůně a mimo ni, nahradí všechny spawny klíčů a mincí za bombu, srdce, pilulku, kartu, cetku, baterii nebo nepřátelskou mušku.", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% šance na udělení efektu náhodného pasivního předmětu v každé místnosti", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "25% šance na vytvoření přátelského Kosťáka při vyklizení místnosti", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} +1 Kostěné Srdce při vstupu do nového patra", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Při držení se počítá jako 1 předmět do Guppyho transformace", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} 33% šance na vytvoření místností s červeným klíčem pokaždé, když vyčistíš místnost#Nižší pravděpodobnost výskytu už v červené místnosti", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% šance, že nabídky s ďáblem budou stát mince místo srdcí", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "{{Coin}} Teleportuje tě do náhodné místnosti po sebrání mince#Může tě teleportovat do tajných místností", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Zdarma jeden předmět z ďáblovy dohody", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Zabrání tomu, aby se Krampus objevil v Ďábelských Místnostech#Ďábelské Místnosti budou speciální varianty s více nabídkami, Černými Srdci a nepřáteli", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% šance na Ďábelskou Místnost#Zabrání tomu, aby se Krampus objevil v Ďábelských Místnostech#Ďábelské Místnosti budou speciální varianty s více nabídkami, Černými Srdci a nepřáteli"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Odemkne průchod k Hushovi bez ohledu na dobu trvání běhu", -- Strange Key
	-- Full old Desc: "Odemkne průchod k Hushovi bez ohledu na dobu trvání běhu#Použití {{Collectible297}} Pandořiny Skříňky spotřebuje klíč a vytvoří 6 náhodných předmětů"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Vytvoří 1 krevní sraženinu, jako spojence, která napodobuje Izákův pohyb, směr střelby a slzné efekty#Familiar se respawnuje každou místnost, pokud zemře", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "Vytvoří {{Chest}} truhlu po vyčištění {{ChallengeRoom}} Místnosti s Výzvou anebo předmět po vyčištění {{BossRushRoom}} Boss místnosti", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "50% šance že vybouchneš při utrpení poškození", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Spojenci se pohybují pomocí pohybových vstupů zadané hráčem#Podržením tlačítka upuštění, držíš spojence na místě, jako u Jákoba a Ezaua", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Spojenec, který následuje Izákovy přesné pohyby a střílí spektrální slzy#Kopíruje tvoje statistiky, způsobuje poloviční poškození#Zemře na jeden zásah#Znovu se zrodí na novém patře", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Když použiješ aktivní předmět, aktivuje další náhodný efekt aktivního předmětu s 1-2 nabitím", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Při vstupu do {{AngelRoom}} Andělské místnosti vytvoří 5 bludiček#25% šance na bludičku při darování žebrákům", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% šance na duplikování jednoho z Izákových spojenců při vstupu do nové místnosti", -- The Twins
	-- Full old Desc: "50% šance na duplikování jednoho z Izákových spojenců při vstupu do nové místnosti#Pokud nemáš žádné spojence, udělí ti místo toho {{Collectible8}} brášku Bobbyho nebo {{Collectible67}} Ségru Maggy"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Obchody nyní prodávají spojence za 10 mincí", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "17% šance, že se při zabití nepřítele objeví náhodná kobylka", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Udělí ti 1 kobylku Hlubiny", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% šance na přidání dalšího slepého předmětu do Pokladnice#50% šance na odhalení slepého předmětu v alternativních cestách", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Zabití zkamenělého nepřítele jej zmrazí", -- Ice Cube
	-- Full old Desc: "20% šance na zkamenění nepřátel při vstupu do místnosti#{{Freezing}} Zabití zkamenělého nepřítele jej zmrazí"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Po zabití nepřítele aktivuje štít na 1 sekundu#Zabíjení nepřátel, když jsi v ochraně, přidá 1 sekundu navíc#Maximálně lze nastřádat až 5 sekund neporazitelnosti ", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Teleportuje tě do Pokladnice#{{Planetarium}} Pokud tady je Planetárium, teleportuje tě to tam", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} Odstraní prokletí temnoty", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Plné zdraví#Udělí 100 poškození všem nepřátelům#{{Timer}} Plný efekt mapování pro celé patro (kromě {{SuperSecretRoom}} Super / {{UltraSecretRoom}} Ultra tajné místnosti)#{{CurseDarkness}} Odstraní prokletí temnoty"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "{{Beggar}} Vytvoří žebráka#{{DemonBeggar}} 33% šance na Démoního žebráka#5% šance na klíčníka, bombového žebráka, baterkového žebráka nebo shnilého žebráka", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Promění všechny pickupy, truhly a ne-bossové nepřátele v bomby", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Promění všechny pickupy, truhly a ne-bossové nepřátele v mince", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Promění všechny pickupy, truhly a ne-bossové nepřátele v klíče", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} Promění všechny pickupy, truhly a ne-bossové nepřátele v srdce", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Vytvoří padací dveře do dalšího patra#Vytvoří {{LadderRoom}} průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Po použití odhodí kartu ve směru, kterým se pohybuješ#Okamžitě zabije JAKÉHOKOLI nepřítele, kterého se dotkne (kromě Delíria)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} Poskytuje efekt Svatého Pláště#(Jednou zabrání poškození)#Účinek trvá, dokud nedojde k poškození", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Aktivuje efekt náhodné runy#Onen efekt je ale slabší", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Upustí všechna tvoje srdce a pickupy na podlahu, takže ti zůstane půl srdce#Mince a bomby mohou být upuštěny jako {{Collectible74}}Čtvrťák nebo {{Collectible19}}Bum! pokud možno", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "Na 1 minutu ti poskytne auru, která odpuzuje nepřátele a projektily", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Mámina noha opakovaně dupe po dobu 1 minuty", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teleportuje tě do extra Boss místnosti s extra kořistí#Boss je vybrán ze dvou hlubších pater, než je to aktuální", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Vytvoří 1 předmět z nabídky předmětů aktuální místnosti#{{BrokenHeart}} Promění 1 místo s červeným srdcem nebo 2 Duševní Srdce na zlomené srdce", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "Na 10 sekund se proměníš v neporazitelnou nehybnou sochu#↑ {{Tears}} Extrémní rychlost střelby po dobu trvání"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "Vytvoří 2-4 zlaté truhly", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Promění pickupy a předměty v místnosti na mince#{{Shop}} Hodnoty mincí se rovnají těm hodnotám jako těm v obchodu", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Náhodný efekt kostkové místnosti", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Weakness}} Nepřátelé v aktuální místnosti jsou oslabeni, zpomaleni a utrpí dvojnásobné poškození#Trvá 30 sekund", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Zabití nepřátelé vytváří náhodné mince", -- XII - The Hanged Man?
	-- Full old Desc: "{{Player14}} Promění hráče na Keepera na 30 sekund#Udělí ti trojitý výstřel a zpomalení#Zabití nepřátelé vytváří náhodné mince"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Vyvolá efekt {{Collectible545}}Knihy Mrtvých#Za každého zabitého nepřítele v místnosti vytvoří kostěné entity", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "Sníš 5 náhodných pilulek", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "Vyvolá efekt {{Collectible33}}Bible#Udělí {{Collectible390}}Serafima a létaní na 30 sekund", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Vytvoří 6 shluků náhodných kamenů a překážek#Shluky budou často obsahovat Označené Kameny", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Odebere nejstarší pasivní předmět (ignoruje počáteční předmět)#Vytvoří 2 náhodné předměty z seznamu předmětů aktuální místnosti", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "Teleportuje tě do {{UltraSecretRoom}}Ultratajné místnosti#Cesta zpět bude tvořena červenými místnostmi", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "Aplikuje Prokletí Temnoty", -- XIX - The Sun?
	-- Full old Desc: "Pro aktuální patro:#↑ Získáš létání a spektrální slzy#↑ {{Damage}} +1.5 Větší Poškození#{{BoneHeart}} Promění tvoje červené srdce na kostěné srdce#Aplikuje Prokletí Temnoty"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Vytvoří stroj na doplnění zásob", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Vytvoří padací dveře do {{LadderRoom}} prolézacího prostoru", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "Jednorázové použití {{Collectible580}} Červeného Klíče", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Kopíruje efekt naposledy použité pilulky, karty, runy, kamene duší nebo aktivovaného předmětu", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Zamíchá s předměty v místnosti#Po jedné sekundě se vrátí do původní podoby#Efekt se opakuje", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Obklopí Izáka bublající červenou aurou pro aktuální místnost#{{HalfHeart}} Zabití nepřátelé vytvoří červené poloviční srdce, které zmizí do 2 sekund", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Otevře všechny dveře v místnosti#Vytváří červené místnosti pomocí {{Collectible580}}Červeného Klíče pro každý možný východ", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Promění Izáka ve fantoma, který dokáže projít nepřáteli a ochromit je#Po několika sekundách na ně všechny zaútočí a získáš bonus ke škodě na cíl", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Způsobíš 8 jedovatých prdů s hnědou kaluží#Poté položíš 7 Prdelních Bomb#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Způsobíš 8 jedovatých prdů s hnědou kaluží#Poté položíš 7 Prdelních Bomb#Stání v kaluži ti dá: #↑ {{Tears}} +1.35 Slz#↑ {{Damage}} +1 Poškození"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "Přiletí 14 Mrtvých Ptáků spojenců útočí na nepřátele# Platí pro aktuální místnost", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Proměňíš se v zběsilého Samsona s útokem na blízko na 10 sekund#↑ {{Speed}} +0.4 Zvýšení Rychlosti#↑ {{Damage}} +3 Větší Poškození	", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Aktivuje {{Collectible441}}Mega Výstřel na 7.5 sekundy", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Zemřeš a okamžitě se oživíš s půlkou srdce a neporazitelnost na nějaký čas#Předmět se automaticky použije při fatálním poškození (jako další život)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Zamíchá podstavce a pickupy v aktuální místnosti#Zamíchané předměty jsou z náhodných seznamů předmětů", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Zemřeš a proměňíš se v Ztraceného pro aktuální místnost#Můžeš si vzít jeden předmět z {{DevilRoom}}Ďábelské Místnosti zdarma, ostatní zmizí#Do dveří Mauzolea nebo Gehenny můžeš vstoupit zdarma", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Permanentně ti přidá 1 náhodného spojence", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Vytvoří 15 náhodných mušek/kobylek", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Vytvoří Zapomenutého jako dočasnou sekundární postavu pro aktuální místnost", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "Vytvoří 6 {{Collectible584}} bludiček Knihy Ctností s náhodnými vlastnostmi", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Vytvoří Ezaua jako dočasnou sekundární postavu pro aktuální místnost#Objeví se náhodnými pasivními předměty, které se rovnají tomu, kolik jich máš", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Přehodí počet bomb s počtem klíčů#Zlaté bomby a klíče jsou také vyměněny", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "Rozpixeluje všechny sprity po dobu 30 sekund", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Zpomalí všechny nepřátele a Izáka v místnosti", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Zrychlí všechny nepřátele a Izáka v místnosti#Znovu se spustí po 30 a 60 sekundách", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Efekt náhodné pilulky#Po několika použitích se zničí", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Otráví celou místnost", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Udělí ti poškození 2 srdcí#Stane se koňskou pilulkou s plným zdravím (+3 Duševní Srdce), pokud máš 1 srdce nebo míň", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Přehodí počet bomb s počtem klíčů#Zvyšuje počet klíčů a bomb o 50% #Zlaté bomby a klíče jsou také vyměněny", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Zplodí nějaké mega naváděcí trollí bomby na tvoji pozici", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Stane se koňskou pilulkou se zvýšením zdraví, pokud máš 0 - 1 místo pro srdce", -- Health Down
	-- Full old Desc: "↓ -2 Snížení Zdraví#Stane se koňskou pilulkou se zvýšením zdraví, pokud máš 0 - 1 místo pro srdce"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Přidá 1 velkou mušku jako orbitál#Není tu žádný horní limit", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Plně nabije tvůj aktivní předmět", -- 48 Hour Energy!
	-- Full old Desc: "Plně nabije tvůj aktivní předmět#{{Battery}} Vytvoří 3-4 baterií"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Vyčerpá všechna místa pro srdce až na 1 celé", -- Hematemesis
	-- Full old Desc: "Vyčerpá všechna místa pro srdce až na 1 celé#{{Heart}} Vytvoří 1-4 Červených Srdcí"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Nemůžeš se pohnout na 4 sekundy", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Udělá každého nepřítele v místnosti natrvalo přátelským", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Na zemi vytvoří velkou limonádovou louži, která poškozuje nepřátele", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Střílíš diagonálně po dobu 60 sekund", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Vytváříš hovna při chůzi po dobu 4 sekund", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Efekt Prokletí Bludiště pro aktuální patro", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Zvětšíš se#Nemá vliv na tvůj hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Zmenšíš se#Nemá vliv na tvůj hitbox", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Vytvoří 2 modré pavouky za hovno v místnosti", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Vytvoří 2 modré pavouky za nepřítele v místnosti#Vytvoří 2-6 modrých pavouků když v místnosti není žádný nepřítel", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Rozpixeluje obrazovku po dobu 90 sekund", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Vytvoří za tebou klouzavou hovnovou kaluž", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Vytvoří zpomalující kaluž", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Zpomalí všechny nepřátele v místnosti", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Zrychlí všechny nepřátele v místnosti", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Spolkneš aktuálně držený trinket a získáš jeho účinek natrvalo", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Vystřelíš salvu Ipekakových slz", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Vybrkneš posledně použitou pilulku jako koňskou pilulku", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Zvyší 1 náhodný stat dvakrát#↓ Sniží 1 náhodný jiný stat dvakrát#Nesníží se s {{Collectible75}}PHD, {{Collectible46}}Šťastnou Nohou nebo {{Collectible303}}Pannou#Nezvýší se s {{Collectible654}}falešným PHD", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Efekt náhodné koňské pilulky#Po několika použitích se zničí", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
