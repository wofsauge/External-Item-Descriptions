---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ +0.2 Prędkości", -- The Virus
	-- Full old Desc: "Zatruwasz dotykiem#↑ +0.2 Prędkości"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Trująca bomba do rzucania#Zadaje 185 obrażeń + wartość twoich obrażeń#Tworzy chmurę trucizny", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju#Zmienia niektóre negatywne pigułki w pozytywne", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 Szczęścia#Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju#Zmienia niektóre negatywne pigułki w pozytywne"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 53] = "Przyciąga do ciebie Pickupy#Zdalne otwieranie skrzynek, ignoruje obrażenia od skrzynek z kolcami", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "<MISSING>", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 84] = "<MISSING>", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "<MISSING>", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "<MISSING>", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Tworzy losowego sojusznika#Zniknie po zmianie Piętra", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "<MISSING>", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "Bomby tworzą chmurę trucizny", -- Bob's Curse
	-- Full old Desc: "Trujące bomby#+5 bomb#Bomby tworzą chmurę trucizny"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "<MISSING>", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Zamachując się niszczysz kamienie i ranisz wrogów#Trafianie redukuje naładowanie przedmiotu#Przejście na inne piętro odładuje przedmiot", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 152] = "Laser zadaje 13% twoich obrażeń#↓ Zmniejsza Szybkostrzelność o 33%", -- Technology 2
	-- Full old Desc: "Permanentny laser!#Laser zadaje 13% twoich obrażeń#↓ Zmniejsza Szybkostrzelność o 33%"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "Spowalnia wrogów na 4 sekundy#Tworzy niebieskie pająki, jeśli przeciwnik zginie od tego przedmiotu", -- Spider Butt
	-- Full old Desc: "Spowalnia wrogów na 4 sekundy#Zadaje 10 obrażeń wszystkim wrogom#Tworzy niebieskie pająki, jeśli przeciwnik zginie od tego przedmiotu"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Do Rzucania{{CR}}#Tworzy kałużę mazi w miejscu, w które rzucisz", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "<MISSING>", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "Chance to spawn the double version of pickups", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "- pół serca = daje ci jeden ładunek aktywnego przedmiotu przy naciśnięciu spacji", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 224] = "Powstałe łezki zadają połowiczne obrażenia#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości", -- Cricket's Body
	-- Full old Desc: "↓ -20% Zasięgu#Łzy rozdzielają się na 4 przy trafieniu#Powstałe łezki zadają połowiczne obrażenia#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "+2 Czarne Serca", -- Abaddon
	-- Full old Desc: "↑ +1.5 Obrażeń#↑ +0.2 Prędkości#Straszące wrogów łzy#Zamienia wszystkie Czerwone Serca na Czarne#+2 Czarne Serca"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ +0.3 Prędkości", -- Stop Watch
	-- Full old Desc: "Permanentny efekt spowolnienia#↑ +0.3 Prędkości"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Niebieskie Pająki/Muchy zadają podwójne obrażenia#Sojusznicy z rodziny pająków/much są silniejsi", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "Bomby zadają obrażenia kontaktowe", -- Hot Bombs
	-- Full old Desc: "Płonące bomby#+5 Bomb#Nie otrzymujesz już obrażeń od ognia#Bomby zadają obrażenia kontaktowe"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Obrażenia spadają z każdą chwilą, w której łza znajduje się w powietrzu#300% Obrażeń w najlepszym wypadku", -- Proptosis
	-- Full old Desc: "↑ +0.5 Obrażeń#↓ Obrażenia spadają z każdą chwilą, w której łza znajduje się w powietrzu#300% Obrażeń w najlepszym wypadku"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju#Czarne Serca i efekt Nekronomikonu zadają podwójne obrażenia", -- Missing Page 2
	-- Full old Desc: "+1 Czarne Serce#Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju#Czarne Serca i efekt Nekronomikonu zadają podwójne obrażenia"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Upuszcza 1 losową runę przy podniesieniu", -- Clear Rune
	-- Full old Desc: "Kopiuje efekt trzymanej runy lub kamienia duszy#Upuszcza 1 losową runę przy podniesieniu"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Twoje ciało jest teraz nieśmiertelne#!!! Otrzymujesz obrażenia, gdy Serce zostanie trafione#Strzelając ładujesz Serce, które wystrzeli serię łez", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "!!! Zamienia:#1,5 Czerwonego Serca w 1 Serce Duszy/Czarne Serce, pająka, pigułkę, kartę lub runę", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Losowo tworzy niebieskie pająki w pokoju z wrogami#Zaurocza wrogów, z którymi wejdzie w kontakt", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Przelosowuje wszystkie piedestały i pickupy oraz wszystkie twoje statystyki i pasywne przedmioty#Duplikuje 1 losowy pickup w pokoju#Restartuje obecny pokój i odradza + przelosowuje przeciwników#Przelosowuje również kamienie", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Przelosowuje wszystkich przeciwników w pokoju#Stara się przelosować ich w przeciwników o podobnym maksymalnym HP", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "<MISSING>", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Daje efekt{{Collectible54}}Mapy Skarbów,{{Collectible21}}Kompasu lub{{Collectible246}}Niebieskiej Mapy na obecne piętro", -- Book of Secrets
	-- Full old Desc: "Daje efekt{{Collectible54}}Mapy Skarbów,{{Collectible21}}Kompasu lub{{Collectible246}}Niebieskiej Mapy na obecne piętro#Daje tylko efekty, których jeszcze nie posiadasz#Jeżeli wszystkie te efekty są aktywne, dostajesz efekt {{Collectible76}}X-Ray w Oczach"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Rzuca czerwony płomień#Płomień zniknie po zadaniu 23 obrażeń 5 razy lub po 10 sekundach", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "!!! Zabija przeciwników-kupy!#Zamienia normalnych przeciwników w kupy#Gasi ogniska#W Kopalni zamienia lawę w kładkę", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "Użyta przed walką z bossem sprawi, że przedmiot po tej walce będzie z puli przedmiotów w pokoju diabła", -- Satanic Bible
	-- Full old Desc: "+1 Czarne serce#Użyta przed walką z bossem sprawi, że przedmiot po tej walce będzie z puli przedmiotów w pokoju diabła"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Odrzuca pobliskich przeciwników i strzały#Wrogowie odbici w przeszkody otrzymują 10 obrażeń", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Rani wszystkich wrogów w pokoju twoimi obrażeniami x2 + 10 #Koszt: 1 moneta {{Coin}}", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! Konwertuje:#1 Serce Duszy/Czarne w 1 Czerwone Serce", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "!!! Upuszcza przedmioty zależnie od piętra:#B1: 2 Serca Duszy#B2: 2 klucze i bomby#C1: 1 Przedmiot z bossa#C2: B1+C1#D1: 4 Serca Duszy#D2: 20 Monet#W1: 2 Przedmioty z bossów#W2: Biblia#Szeol: 1 Przedmiot Diabła{{DevilRoom}} + Czarne Serce#Katedra: 1 Przedmiot Anioła{{AngelRoom}} + Serce Duszy#Skrzynia: 1 Moneta#Dom: Czerwony Klucz {{Collectible580}}", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Dotykanie przeciwników ich rani", -- Aries
	-- Full old Desc: "↑ +0.25 Prędkości#Dotykanie przeciwników ich rani#Odpowiednio szybki bieg sprawi, że nie otrzymasz obrażeń kontaktowych"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Zostawiasz za sobą maź#Zadaje ona 66% twoich obrażeń na sekundę#Maź łączy się z efektami łez", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Magnetyczne łzy#Wpływa na wrogów, pickupy i trynkiety#Przedmioty będą przyciągane do miejsca, w którym wyląduje strzał", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "<MISSING>", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "<MISSING>", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Trzymanie spacji do wyczerpania ładunków da ci nieśmiertelność#Słupy światła trafią wrogów, którzy wejdą z tobą w kontakt, gdy jesteś nieśmiertelny#!!! Nie trzymaj za długo!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Znacząco zmniejsza odpychanie", -- Soy Milk
	-- Full old Desc: "↑ Ogromna Szybkostrzelność:#{{Blank}} (x 5.5)#↓ -80% Obrażeń#Znacząco zmniejsza odpychanie"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "↓ -0.3 Prędkości Strzałów", -- Godhead
	-- Full old Desc: "Naprowadzane łzy#↑ +0.5 Obrażeń#↑ +0.5 Zasięgu#↓ -0.3 Szybkostrzelności#↓ -0.3 Prędkości Strzałów#↑ +0.8 Wysokości Lotu Łez#Łzy otrzymują aurę, zadającą obrażenia"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "Tworzy trynkiet{{Trinket41}}Zapałka", -- Match Book
	-- Full old Desc: "+1 Czarne Serce#Tworzy 2-3 Bomby do podniesienia#Tworzy trynkiet{{Trinket41}}Zapałka"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Strzela wielką widmową, penetrującą, łzą ((Obrażenia+1) X 10)#Gdy otrzymujesz obrażenia, wynoszą one 2 serca#↑+1.5 Zasięgu", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Strzela takimi samymi łzami jak ty, w odniesieniu do statystyk i efektów#Zadaje 100% twoich obrażeń, gdy grasz jako Lilit#W innym przypadku zadaje 75% twoich obrażeń", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "<MISSING>", -- Lost Fly
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 368] = "<MISSING>", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 375] = "20% szans na zablokowanie wrogiej łzy#Odporność na wybuchy", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz#Uzupełnione przedmioty zwiększają swoje ceny z każdym kolejnym zakupem", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 382] = "Rzucona w przeciwnika nie-bossa złapie go#Następny rzut wypuści złapanego przeciwnika, który będzie walczyć dla ciebie#Przejście po kuli, która złapała wroga natychmiast odładuje ją", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "Wystrzeliwuje i ślizga się po pokoju#Zadaje 5-20#{{Blank}} obrażeń kontaktowych przy trafieniu,#{{Blank}} w zależności od naładowania", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "Upuszcza losową runę co 7-8 pokoi#Może również upuścić Kamienie Duszy", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "<MISSING>", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "Losowa szansa na wystrzelenie trujących łez#Trujesz wrogów dotykiem#Wrogowie zabici trucizną z dotyku mają 20% szans na upuszczenie czarnego serca przy śmierci", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +3.0 Zasięgu#↑ +0.3 Wysokości lotu łez#Sojusznicy strzelają w stronę celownika", -- Marked
	-- Full old Desc: "Twoje strzały lecą w kierunku położonego na ziemi celownika, którym sterujesz#↑ +0.7 Szybkostrzelności#↑ +3.0 Zasięgu#↑ +0.3 Wysokości lotu łez#Sojusznicy strzelają w stronę celownika"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Strzelasz laserowym kręgiem, który możesz ładować#Krąg ten leci przez cały pokój#Obrażenia są zależne od naładowania#100% obrażeń na pełnym naładowaniu", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "Po ciągłym strzelaniu przez 3 sekundy, na twojej głowie pojawi się czerwony krzyż. Po zaprzestaniu strzelania, tworzy krąg z czarnego lasera", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "Szansa na wystrzelenie czegoś na wzór klejącej się bomby#Przyklejone łzy zadają obrażenia cyklicznie", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Pierdzi, gdy zostanie trafiony, przy czym może przeciwników oczarować, zatruć lub odepchnąć#Pierdy zadają 5-6 obrażeń", -- Farting Baby
	-- Full old Desc: "Blokuje pociski#Pierdzi, gdy zostanie trafiony, przy czym może przeciwników oczarować, zatruć lub odepchnąć#Pierdy zadają 5-6 obrażeń"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Do Rzucania{{CR}}#Przelosowuje przeciwników i pickupy, z którymi wejdzie w kontakt", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Zwiększa jedną z twoich statystyk zależnie od koloru aury#Dostajesz nową aurę po otrzymaniu obrażeń#{{ColorRed}}Czerwona{{CR}} =#{{Blank}} +4.0 Obrażeń#{{ColorBlue}}Niebieska{{CR}} =#{{Blank}} -4 Opóźnienia wystrzału#{{ColorYellow}}Żółta{{CR}} = +0.5 Prędkości#{{ColorOrange}}Pomarańczowa{{CR}} =#{{Blank}} +3.0 Zasięgu,#{{Blank}} +1 Wysokości lotu łez", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Po otrzymaniu obrażeń, wokół ciebie pojawi się krąg z czarnego lasera", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Tworzy 1-3 monety, jeżeli nie dostałeś nagrody za pokój#Zwiększa limit monet do 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Lata po pokoju mając na sobie raniącą aurę, która zadaje 7.5-10 obrażeń na sekundę#↑ +50% obrażeń, gdy stoisz w tej aurze", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "Nakłada efekt oczarowania na wszystkich pobliskich przeciwników", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "<MISSING>", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 433] = "<MISSING>", -- My Shadow
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Odradza wszystkich przeciwników w pokoju#Pozwala na kilkukrotne zdobycie nagród za oczyszczenie pokoju", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "<MISSING>", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Gdy otrzymasz obrażenia na czerwone serca. plujesz czerwonymi łazami#Wybierasz kierunek strzelając#Gdy jest aktywne, rani cię pół serca co 20 sekund#Zatrzymaj krwawienie lecząc czerwone serca", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "<MISSING>", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Blank}} kartę {{Card}} lub runę {{Rune}}", -- Tarot Cloth
	-- Full old Desc: "Przy podniesieniu upuszcza losową#{{Blank}} kartę {{Card}} lub runę {{Rune}}#Niektóre karty otrzymują dodatkowe lub zdwojone efekty"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Po trafieniu w cokolwiek, Łzy rozpadają się", -- Compound Fracture
	-- Full old Desc: "Kościane łzy#Po trafieniu w cokolwiek, Łzy rozpadają się#{{Blank}} na 1-3 mniejsze#↑ +0.38 Zasięgu#↑ +1.0 Wysokości lotu łez"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Pickupy z mistrzowskich przeciwników i za oczyszczenie pokoju wypadają częściej", -- Glyph of Balance
	-- Full old Desc: "+2 Serca Duszy#Pickupy z mistrzowskich przeciwników i za oczyszczenie pokoju wypadają częściej#Tworzone pickupy uzależnione są od tego, czego brakuje ci najbardziej"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Podążają za nim inni sojusznicy, którzy automatycznie strzelają we wrogów#Nie porusza się, gdy strzelasz#Gdy przestaniesz strzelać, teleportuje się do ciebie", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Użyta, zmienia się w#{{Blank}} Szklaną Armatę {{Collectible352}}", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "<MISSING>", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "<MISSING>", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Efekt losowej Kości przy każdym użyciu#Naciśnij przycisk odpowiedzialny za wyrzucanie rzeczy, żeby zmieniać kości", -- D Infinity
	-- Full old Desc: "Efekt losowej Kości przy każdym użyciu#Naciśnij przycisk odpowiedzialny za wyrzucanie rzeczy, żeby zmieniać kości"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "Za każdy pusty w połowie zasobnik na serce:#↑ Zwiększone Obrażenia, obliczane metodą#{{Blank}} ((2 * BrakPołówki)#{{Blank}} ^ 1.6) * 0.1", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Przy kontakcie,#{{Blank}} łzy tworzą iskrę elektryczną#Iskry zadają połowę twoich obrażeń#Mogą przeskakiwać między wrogami", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 497] = "<MISSING>", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "<MISSING>", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Wbieganie we wrogów", -- Little Horn
	-- Full old Desc: "Szansa na wystrzelenie łzy przyzywającej rękę bossa Big Horn#Ręka natychmiastowo zabija przeciwników nie-bossów, a bossom zadaje obrażenia#Wbieganie we wrogów#{{Blank}} zada im 3.5 obrażeń"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Tworzy muchę-wieżyczkę, strzelającą w przeciwników", -- Brown Nugget
	-- Full old Desc: "Tworzy muchę-wieżyczkę, strzelającą w przeciwników#Każdy strzał zadaje 3.5 obrażeń"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "<MISSING>", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "<MISSING>", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "<MISSING>", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbituje wokół ciebie", -- Bloodshot Eye
	-- Full old Desc: "Orbituje wokół ciebie#Strzela łzą co 1/3 sekundy, gdy wróg jest w pobliżu#Zadaje 3.5 obrażeń na łzę#Zadaje 30 obrażeń kontaktowych na sekundę"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "<MISSING>", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 522] = "<MISSING>", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Użyte, przechowuje do 10 losowych Pickupów z obecnego pokoju#Użyte ponownie wyrzuci swoją zawartość na ziemię#Możesz w ten sposób przenosić rzeczy między pokojami", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Łzy są połączone wiązką elektryczną#Elektryczność zadaje obrażenia równe 1/3 twoich", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "<MISSING>", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "Losowa szansa na wystrzelenie przylepnych zarodników#Zarodniki wybuchają po 2.5 sekundach, zadają obrażenia, zatruwają pobliskich przeciwników i wypuszczają więcej zarodników", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "Straszy przeciwników w małym zasięgu od ciebie", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "Zamienia twoje 5 monet na +1.2 Obrażeń w aktualnym pokoju"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "{{Blank}} Ogień Piekielny {{Collectible118}}", -- Sulfur
	-- Full old Desc: "W obecnym pokoju otrzymujesz#{{Blank}} Ogień Piekielny {{Collectible118}}"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Daje wróżbę, trinket, Serce Duszy lub Kartę tarota", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Losowa szansa na wystrzelenie 1-2 dodatkowych łez w losowym kierunku", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Co chwilę poraża pobliskich przeciwników#Porażenie zadaje 75% twoich obrażeń", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Wypuszcza krąg 10 łez, kiedy otrzymasz obrażenia#↑ +1.2 Szybkostrzelności za pierwsze otrzymane obrażenia#↑ +0.4 Za każde kolejne", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "Uniemożliwia obniżenie statystyk przez resztę tej rozgrywki", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Bomby wybuchają z losowym efektem", -- Nancy Bombs
	-- Full old Desc: "+5 Bomb#Bomby wybuchają z losowym efektem"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Sojusznik goniący przeciwników#Po zabiciu wystarczającej ilości przeciwników, staje się silniejszy, ale również będzie próbował zranić ciebie#Zaatakowanie go przywróci go do normy", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "+1 Pół Serca Duszy, kiedy wchodzisz na nowe piętro#Wyświetla w Koszmarze między piętrami, jakie przedmioty będą w Pokoju Skarbów {{TreasureRoom}} oraz za pokonanie Boss'a", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ +0.4 Szybkostrzelności za każdy pokój zaliczony bez otrzymania obrażeń#Efekt nakłada się maksymalnie do 5 razy", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Podwójne naciśnięcie klawisza strzału tworzy tarczę#Tarcza istnieje przez 1 sekundę, odpycha przeciwników i odbija wrogie pociski i lasery", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "Dźga cię na początku każdego piętra, zostawiając ci tylko pół Czerwonego Serca#Zwiększa statystyki na całe piętro:#↑ Obrażenia + 0.15 * Stracone Serca^2#↑ Prędkość + 0.05 * Stracone Serca", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Daje różnokolorowe łzy z różnymi efektami", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "↑ +2 Serca Duszy", -- Orphan Socks
	-- Full old Desc: "Odporność na obrażenia od mazi i podłogowych kolców#↑ +0.3 Prędkości#↑ +2 Serca Duszy"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ -0.16 Prędkości Strzałów", -- Eye of the Occult
	-- Full old Desc: "Kontrolowane łzy#↑ +1 Obrażeń#↑ +7.5 Zasięgu#↓ -0.16 Prędkości Strzałów"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "Losowa szansa na wystrzelenie orbitujących, widmowych łez", -- Immaculate Heart
	-- Full old Desc: "+1 Zdrowia#↑ +20% Obrażeń#Pełne zdrowie#Losowa szansa na wystrzelenie orbitujących, widmowych łez"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Daje dwie aury, które ranią przeciwników#Mniejsza aura zadaje więcej obrażeń", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Sojusznik ukryty w twojej głowie, strzelający 4 powolnymi łzami#Może opuścić twoją głowę po otrzymaniu obrażeń", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Zniszczenie kupy tworzy 1-4 sojuszniczych kupek#Typ kupki zależy od typu zniszczonej kupy", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Tworzy miecz wiszący nad twoją głową, który podwaja wszystkie przedmioty na piedestałach i nagrody od Żebraków#Zabije cię w losowym momencie przy otrzymaniu obrażeń", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Tworzy dużą kałużę żółtej mazi", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Zamiast łez, machasz mieczem#Zadaje 3x twoje obrażenia#Naładowanie ataku wykonuje obrót + wystrzeliwuje pocisk#Mając pełne życie, strzelasz również przy normalnym ataku", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Używając go przy czerwonym obrysie drzwi na ścianie, stworzysz nowy pokój#Pokoje mogą być specjalne# Pokój poza mapą piętra 13x13 teleportuje cię do I AM ERROR", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Latający, orbitujący sojusznik", -- Psy Fly
	-- Full old Desc: "Latający, orbitujący sojusznik#Goni i niszczy pociski#Zadaje obrażenia kontaktowe"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Zniekształca obraz#Efekt może być nałożony kilka razy", -- Wavy Cap
	-- Full old Desc: "↑ +0.75 Szybkostrzelności#↓ -0.03 Prędkości#Zniekształca obraz#Efekt może być nałożony kilka razy"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Podczas chodzenia, upuszczenie bomby puści rakietę w kierunku chodzenia", -- Rocket in a Jar
	-- Full old Desc: "+5 Bomb#Podczas chodzenia, upuszczenie bomby puści rakietę w kierunku chodzenia"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Może zostać połączony z drugim aktywnym przedmiotem, nadając ognikom specjalny efekt zależny od przedmiotu#Zamienia pierwszy Pokój Diabła {{DevilRoom}} w", -- Book of Virtues
	-- Full old Desc: "Tworzy orbitujący sojuszniczy ognik, który strzela widmowymi łzami ale może zostać zgaszony#Może zostać połączony z drugim aktywnym przedmiotem, nadając ognikom specjalny efekt zależny od przedmiotu#Zamienia pierwszy Pokój Diabła {{DevilRoom}} w#{{Blank}} Pokój Anioła {{AngelRoom}}"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Tworzy trzy#{{Blank}} Serca Duszy {{SoulHeart}} i#{{Blank}} dwa przedmioty z Pokoju Anioła {{AngelRoom}}#Musi zostać naładowany poprzez podnoszenie Serc Dusz", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Tworzy drabinę na początku każdego piętra, prowadzącą do specjalnego sklepu Anielskiego Pokoju", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 589] = "Pojawia dodatkowy Sekretny Pokój{{SecretRoom}} i Super Sekretny Pokój{{SuperSecretRoom}} na każdym piętrze#Sekretne Pokoje zawierają światło, które zwiększa szybkostrzelność na aktualne piętro oraz daje pół Serca Duszy", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Drzwi pozostają otwarte po wejściu do pokoju", -- Mercurius
	-- Full old Desc: "↑ +0.4 Prędkości#Drzwi pozostają otwarte po wejściu do pokoju"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "Pobliscy przeciwnicy stają się oczarowani", -- Venus
	-- Full old Desc: "+1 Czerwone Serce#Pełne zdrowie#Pobliscy przeciwnicy stają się oczarowani"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Zamiast łez, strzelasz kamieniami#Zadają różne obrażenia", -- Terra
	-- Full old Desc: "↑ +1.0 Obrażeń#Zamiast łez, strzelasz kamieniami#Zadają różne obrażenia#Mogą niszczyć przeszkody#Zwiększony odrzut"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Wykonujesz zryw poprzez podwójne naciśnięcie przycisku ruchu#W trakcie trwania jesteś nieśmiertelny i zadajesz 4x twoje obrażenia#3 sekundy odnowienia", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 595] = "Otacza cię kółko#Przy wejściu do pokoju, 7 łez będzie w nim orbitować#Szansa, że wrogie pociski również zaczną orbitować", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "Strzelasz lodowymi łzami, które spowalniają wrogów i zamrażają ich przy zabiciu#Dotknięcie zamrożonego przeciwnika odepchnie go i eksploduje, wypuszczając 6 sopli", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "Ładujesz ogromny bonus do szybkostrzelności, gdy nie strzelasz przez 3 sekundy#Strzał po tym czasie wypuści uzbierane łzy#Bonus ten maleje, im dłużej strzelasz", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Zmniejsza cię i możesz prześlizgnąć się między obiektami#Pociski mogą przelecieć nad tobą", -- Pluto
	-- Full old Desc: "↑ +0.7 Szybkostrzelności#Zmniejsza cię i możesz prześlizgnąć się między obiektami#Pociski mogą przelecieć nad tobą"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "Tworzy dodatkowy Przeklęty Pokój {{CursedRoom}} na każdym piętrze", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 602] = "Dodaje w każdym sklepie zejście do dodatkowego sklepu z unikatowym zaopatrzeniem", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "W pełni naładowuje aktywny przedmiot", -- Battery Pack
	-- Full old Desc: "Pojawia 2-4 baterii#W pełni naładowuje aktywny przedmiot"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Pozwala podnosić i rzucać obiektami takimi jak kamienie, TNT, kupy i inne przeszkody#Pozwala przenosić je między pokojami", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 607] = "Sojusznik chaotycznie strzelający łzami w każdą stronę", -- Boiled Baby
	-- Full old Desc: "Sojusznik chaotycznie strzelający łzami w każdą stronę#Zadaje 3.5 lub 5.3 obrażeń na łze"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Sojusznik strzelający lodowymi łzami#Zamraża przeciwników po zabiciu", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Przelosowuje wszystkie przedmioty w pokoju#Przedmioty przy przelosowaniu mają szansę zniknąć", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Przy otrzymaniu obrażeń tworzy Sojusznika, który naskakuje na wroga#Zadaje 45 obrażeń i tworzy falę kamieni#Goni przeciwników", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Krzyczysz, zadając obrażenia i popychając przeciwników#Krzyk jest tym mocniejszy, im więcej naładowań przedmiot posiada", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Duchowy Sojusznik który umiera po jednym ciosie, odradzając się na następnym piętrze#Jeśli przetrwa całe piętro, tworzy 3 Serca Duszy, 2 Wieczne Serca lub przedmiot", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "Bomby zostawiają czerwoną maź#Jeśli nie masz bomb, możesz je kłaść za koszt połowy Serca", -- Blood Bombs
	-- Full old Desc: "+1 Czerwone Serce#Leczy 5 Serc#Bomby zostawiają czerwoną maź#Jeśli nie masz bomb, możesz je kłaść za koszt połowy Serca"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Pękaty Sojusznik#Kiedy otrzymuje obrażenia, odpycha, unieruchamia lub zatruwa przeciwników", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 619] = "Ma różne efekty dla każdej z postaci", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Obrażenia spadają przez następne 3 minuty", -- Red Stew
	-- Full old Desc: "Pełne zdrowie#↑ +21.6 Obrażeń#Obrażenia spadają przez następne 3 minuty"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Usuwa wszystkie twoje przedmioty i pickupy#Teleportuje cię do unikatowej Sypialni z zapadnią, skrzynkami i pickupami#Za każdy utracony przedmiot, oferuje ci zestaw 3 przedmiotów, z którego możesz#{{Blank}} wziąć 1", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Możesz rzucić kluczem aby zadać obrażenia, niszczyć obiekty, lub otworzyć drzwi", -- Sharp Key
	-- Full old Desc: "+5 Kluczy#Możesz rzucić kluczem aby zadać obrażenia, niszczyć obiekty, lub otworzyć drzwi"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "Wyolbrzymia cię na 30 sekund#Zwiększa obrażenia i zasięg#Daje nieśmiertelność i możliwość zdeptania wrogów i obiektów#Efekt utrzymuje się między pokojami"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Zadaje obrażenia przeciwnikom", -- Knife Piece 2
	-- Full old Desc: "Połączony z pierwszą częścią noża {{Collectible627}}, tworzy sojuszniczy nóż#Zadaje obrażenia przeciwnikom#Może otworzyć pewne mięsne drzwi"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Zabiera cię na piętro zawierające wszystkie przedmioty w grze#Po podniesieniu przedmiotu, wraca cię tam, skąd przybyłeś", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Orbitujący Sojusznik strzelający osłonionymi łzami", -- Bot Fly
	-- Full old Desc: "Orbitujący Sojusznik strzelający osłonionymi łzami"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Dzieli przeciwników w pokoju na ich 2 mniejsze wersje z bardzo zmniejszonym zdrowiem", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Czyni cię odpornym na podpalenie, dezorientację, strach, truciznę oraz toksyczny gaz", -- Evil Charm
	-- Full old Desc: "↑ +2 Luck up#Czyni cię odpornym na podpalenie, dezorientację, strach, truciznę oraz toksyczny gaz"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Pojawia pęknięcia na podłodze w pokoju z przeciwnikami#Wejście na pęknięcia pojawia eksplodujące duchy atakujące przeciwników", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Pojawia sojusznika który porusza się w kierunku w którym Isaac strzela#Przy użyciu zamienia się miejscami z graczem#Teleportacja na rzeczy czy przeciwników może ich niszczyć", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Teleportuje gracza na pierwsze piętro, w nowym podejściu#Przedmioty podniesione przed użyciem pozostają nienaruszone", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Rzucasz gumką która zabija przeciwnika jednym strzałem#Zapobiega pojawianiu się trafionego wroga przez resztę podejścia#Zadaje 15 punktów obrażeń bossom#Może być użyta raz na piętro", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Wyrzuca z siebie falę niebieskiego ognia#Zdobywa ładunek za każdym razem gdy przeciwnik zginie#płomienie blokują pociski przecieników", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Tworzy łańcuch łez za graczem gdy ten walczy z przeciwnikiem#łzy zadają po 3,5 punktów obrażeń", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Zabiera 1 kontener na serce lub 2 serca duuszy w zamian pojawiając przedmiot z puli obecnego pokoju#Dodaje też Złamane Serce które nie może zostać wyleczone#{{Warning}} Jednorazowego użytku dla The Losta", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 644] = "Zwiększa twoją najniższą statystykę#Pojawia 3 monety, 1 bombę, lub 1 klucz Bazując na tym czego najbardziej potrzebujesz", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Teratoma w formie orbitala#Zadaje obrażenia kontaktowe#Dzieli się na mniejsze wersjie siebie 3 razy po zablokowaniu obrażeń#Mniejsze wersje pojawiają pająki kamikaze przy zniszczeniu", -- Tinytoma
	-- Full old Desc: "Teratoma w formie orbitala#Blokuje strzały#Zadaje obrażenia kontaktowe#Dzieli się na mniejsze wersjie siebie 3 razy po zablokowaniu obrażeń#Mniejsze wersje pojawiają pająki kamikaze przy zniszczeniu#Pojawia się ponownie po 5 sekundach gdy całkowicie zniszczona"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "Bomby wypuszczają Laser z brimstona w 4 kierunkach", -- Brimstone Bombs
	-- Full old Desc: "+5 bomb#Bomby wypuszczają Laser z brimstona w 4 kierunkach"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Przedmioty aktywne nie ładują się po przejściu pokoju#Od teraz przedmioty ładują się za pomocą zadawanych obrażeń#60 punktów Obrażeń = 1 Ładunek", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Mini sojusznik mały plum", -- Fruity Plum
	-- Full old Desc: "Mini sojusznik mały plum#Porusza się po pokoju wypuszczając za sobą pociski"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Summons friendly Baby Plum in the current room for 10 seconds", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Sojusznik który powoli zmierza w kierunku walki z bossem#Emituje aurę która gwarantuje w swoim obszaeze +20% + 1 punkt obrażeń, Większą szybkostrzeloność i strzały naprowadzające#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Sojusznik który powoli zmierza w kierunku walki z bossem#Emituje aurę która gwarantuje w swoim obszaeze +20% + 1 punkt obrażeń, Większą szybkostrzeloność i strzały naprowadzające"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Sojusznik który ślizga się po pokoju gdy się na niego wejdzie#Spowalnia przeciwników i zadaje małe obrażenia przy kontakcie, Zamrożenie przeciwnika go zabija", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Kiedy trzymany, Przeciwnicy który nie są duchami po śmierci wypuszczają czerwone duchy#Przy użyciu sprawia że duchy eksplodują", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "Inne pojawiają czarne serce po użyciu", -- False PHD
	-- Full old Desc: "Identyfikuje wszystkie pigułki#+1Czarne serce#Konwertuje Pozytywne pigułki na negatywne i neutralne#↑ Pigułki zmniejszające statystyki zwiększają obrażenia przy użyciu#Inne pojawiają czarne serce po użyciu"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Dodaje obracającego się orbitala który blokuje pociski i zadaje obrazenia kontaktowe#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Dodaje obracającego się orbitala który blokuje pociski i zadaje obrazenia kontaktowe#WGdy użyty,↑ +0.5 prędkości i zwiększa prędkośc obracania się innych orbitali"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Item not obtainable>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Przeciwnicy po śmierci eksplodują pociskami, Które posiadają efekty na pociski gracza", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Pojawia Mikro-Isaaków gdy gracz otrzymuje obrażenia#Gonią i atakują one pobliskich przeciwników", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "pojawia 2 portale na początku każdego piętra#Portale znikają po opuszczeniu pokoju#{{ColorRed}}Red: {{CR}}Boss room#{{ColorYellow}}Yellow: {{CR}}Treasure Room#{{ColorBlue}}Blue: {{CR}}Secret Room", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Pojawia stacjonarnego sojusznika w miejscu śmierci przeciwnika#Limit do 5 w pokoju", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Gracz co 6 sekund jest nieśmiertelny przez sekundę#Przed transformacją, postać zaczyna błyskać", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Podniesienie przedmiotu jedzenia dodaje czasowy bonus do obrażeń +3.6 oraz 2 małe permanentne zwiększenia statystyk", -- Binge Eater
	-- Full old Desc: "+1 czerwone serce#Przemioty na piedestałach zamieniają się w przedmiot związany z jedzieniem i w orginalny przedmiot#Podniesienie przedmiotu jedzenia dodaje czasowy bonus do obrażeń +3.6 oraz 2 małe permanentne zwiększenia statystyk"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Ukazuje zawartość skrzyń, sakiewek, oraz ognisk przed ich otwarciem", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 668] = "Rozpoczyna sekwancję mającą na celu dotarcie do piętra Dom#Trinkety pozostawione w {{TreasureRoom}} Treasure lub {{BossRoom}} Boss roomie zmieniają się w  {{Card78}}Pęknięty klucz", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "If a room grants a clear reward, there will be two different rewards to chose from#Taking one causes the other to disappear", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "Zwiększa losową statystykę za każdym razem gdy gracz uleczy się czerwonym sercem", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "Przedmioty w pokoju diabła od teraz kosztują pieniądze#Przedmioty ze sklepu kosztują zdrowie#Klucze, bomby czy sakiewki są darmowe ale są otoczone kolcami", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "Gwarantuje 1 duchowe serce i +1.0 punkt obrażeń gdy gracz wejdzie do pokoju diabła i nie weźmie żadnego z przedmiotów#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "Gwarantuje 1 duchowe serce i +1.0 punkt obrażeń gdy gracz wejdzie do pokoju diabła i nie weźmie żadnego z przedmiotów"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Podczas śmierci duch postaci zostaje przyczepiony do ciała i dalej walczy z połówką czerwonego serca#Duch wraca do ciała po 10 sekundach#Przedmiot po użyciu musi być naładowany ponownie połową duchowego serca", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Odkrywa losowy pokój na mapie przy otrzymaniu obrażeń#Otwiera drzwi potrzebujące do otwarcia kluczy#Może otworzyć przejście do walki z mega szatanem#Może odkryć Ultra sekretny pokój", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "Gdy gracz posiada pusty kontener na serce Na początku kolejnego piętra dostaje kolejny#Kościane serca się nie wliczają", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Gdy gracz otrzymuje obrażenia, czas zatrzymuje się na 3 sekundy#Postać staje się duchem i opuszcza ciało#W formie ducha gracz otrzymuje latanie, strzały spektralne i jednorazowe znegowanie obrażeń", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "Wypuszcza dziecko przytwierdzone Częścią jelita#Zadaje 3x obrażeń kontaktowych#wystrzeliwuje pociski i chodzi w stronę w którą strzela#Wraca po puszczeniu przycisku", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "Sojusznik atakujący efektem mini paszczy z pustki{{Collectible399}} attack", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "Postać ładuje krótkozasięgowy laser brimstona za sobą podczas strzelania", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Zadaje obrażenia kontaktowe lecąc przed siebie#Zjada pickupy na swojej drodze#Każdy zjedzony pickup zwiększa wielkośc i obrażenia portalu oraz pojawia muchę kamikaze#co 4 zjedzone pickupy pojawia portal do nieodkrytego losowego pokoju", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Pojawia mackę wychodzącą z ziemi#Może złapać przeciwnika i zadawać obrażenia", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Enemies spawn floating bones on death#Bones block projectiles and deal contact damage", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Szansa na pojawienie duszka po zabiciu przeciwnika#Duchy gonią przeciwników i zadają im obrażenia#Po 5 sekundach duch eksploduje, zadając 7 pkt obrażeń przeciwnikom w pobliżu#Gracz nie otrzymuje obrażeń od eksplozji", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Pojawia losowe ogniki które wystrzeliwują pociski, blokują strzały, i zadają obrażenia kontaktowe#Z każdym użyciem przedmiotu ilość pojawianych ogników się zwiększa", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "Zwiększa permanentnie losową statystykę za każdym razem gdy podniesiesz serce duszy", -- Soul Locket
	-- Full old Desc: "Zwiększa permanentnie losową statystykę za każdym razem gdy podniesiesz serce duszy#Pojawia serce duszy po podniesieniu"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Pojawia losowego przyjaznego przeciwnika który naśladuje ruchy i ataki postaci", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Odradza w obecnym pokoju, masywnie zmniejsza postać i jej hitboxy, i daje +0.2 prędkości", -- Inner Child
	-- Full old Desc: "+1 dodatkowe życie#Odradza w obecnym pokoju, masywnie zmniejsza postać i jej hitboxy, i daje +0.2 prędkości"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Przedmioty na piedestałach oscylują między pięcioma Przedmiotami w szybkim tempie", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Sprawia że przeciwnicy odbijają się od postaci#Odbicie przeciwnika na przeszkodę zadaje im obrażenia#Ma szansę na odbicie pocisku przeciwnika", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Zapobiega pojawianiu się przedmiotów niskiej jakości#Bardzo zwiększa jakość przyszłych spotkanych przedmiotów", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Pojawia specjalny rodzaj kolcy w pokoju diabła#Otrzymanie obrażeń od kolców może dać nagrodę:#35% 6 monet#15% +0.5 obrażeń#5% 2 Czarne serca#2% Losowy item#1% Transformacja w lewiatana", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Za każdy wyczyszczony pokój pojawia nową muchę", -- The Swarm
	-- Full old Desc: "Pojawia wokół postaci 9 much które po zablokowaniu pocisku zmieniają się w muchę kamikaze#Za każdy wyczyszczony pokój pojawia nową muchę"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Każdy mocniejszy strzał dodaje 2 Złamane serca#Postać umiera jeśli posiada 12 Złamanych serc", -- Heartbreak
	-- Full old Desc: "Dodaje 3 Złamane serca do zdrowia postaci#↑ +0.25 Obrażeń za każde takie serduszko#Każdy mocniejszy strzał dodaje 2 Złamane serca#Postać umiera jeśli posiada 12 Złamanych serc"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Otrzymujesz prędkosć poruszania się do końca pokoju po otrzymaniu obrażeń", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Pojawia okrąg światła wokól postaci który uderza przeciwników filarami światła gdy są w tym okręgu#Za każdym razem gdy otrzymasz obrażenia, okrąg się powiększy", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Sokusznik który staje się klonem bossa w boss roomie#Pokonanie go pojawi dodatkowy przedmiot#Klon jest wolniejszy i posiada 75% orginalnego zdrowia Bossa", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Dwójka sojuszników którastoi po twoich dwóch stronach#Wystrzeliwują pociski podobne do pocisków gracza zadające 37.5% twoich obrażeń", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Postać kumuluje w sobie złośc#Po 4 pokojach postać wystrzeliwuje wielki laser z brimstona", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Kiedy postać użyje karty/pigułki/runy Zapisuje się ona a jej kopia zostaje użyta po użyciu następnej karty/runy/pigułki", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Pojawia starą skrzynkę na początku każdego piętra#Może zawierać:Serca duszy, trinkety, oraz przedmioty z puli pokoju anioła a także przedmioty mamy albo taty", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Po otrzymaniu obrażeń pojawia czerwony ognik#maaksymalna liczba ogników to 6#Wystrzeliwują pociski ale nie blokują strzałów", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Zmienia postacie pomiędzy obecną a Esau Juniorem który posiada 3 Czarne serca, +2 obrażeń i latanie#Obie postacie posiadają oddzielne przedmioty i zdrowie#{{Warning}} Śmierć jednej z postaci kończy podejście", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Czasowo zwiększa obrażenia o 1 za każdą dotkniętą łze lub przeciwnika#Przeciwnicy dotknięci otrzymują potrójne obecne obrażenia postaci", -- Dark Arts
	-- Full old Desc: "Gdy użyty daje ↑ +1.0 Szybkości i umiejętnośc przechodzenia przez przeciwników/Pociski na 1 sekundę#Czasowo zwiększa obrażenia o 1 za każdą dotkniętą łze lub przeciwnika#Przeciwnicy dotknięci otrzymują potrójne obecne obrażenia postaci"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Niszczy przedmioty w pokoju pojawiając permanentną muchę sojusznika który atakuje przeciwników#Efekty much zależą od zniszczonych przedmiotów", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Zapobiega strzelaniu postaci z jednego oka", -- Stapler
	-- Full old Desc: "↑ +1.0 Obrażeń#Zapobiega strzelaniu postaci z jednego oka#efekty załączające się co drugi strzał tym samym aktywują się zawsze"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Pozwala na podniesienie przeciwnika lub bossa i uderzenie nim o ziemię#Uderzenie o ziemie może być kontrolowane#Uderzenie zadaje 50 pkt obrażeń i pojawia fale skał", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Zbiera i trzyma do 8 pickupów#Przytrzymanie przycisku aktywacji da graczowi obecnie pokazany przedmiot#Jakośc przedmiotu zależy od jakości pickupów w torbie", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Zmienia postacie między Splamionego Lazarusa i Martwego Umarłego Lazarusa", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Pojawia płomyk w kształcie przedmiotu#Efekt przedmiotu załącza się z pojawionego płomyka#Przedmioty są pojawiane z obecnej puli przedmiotów#przedmioty noramlnie dające pickupy, pojawione przedmiotem ich nie dają", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Trzymanie przycisku strzału po czasie zabiera połowę serca i pojawia małego sojusznika#posiada on efekt zależny od serca z którego powstał#Aktywacja przedmiotu z powrotem zamieni pojawionych sojuszników w serca", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Przywołuje ciało Zapomnianego z powrotem do ducha", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Przechowuje 1 bombę kupę która może zostać użyta później", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "Pojawia 3 monety i klucz przy podniesieniu#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Zwiększa zasięg, prędkośc lub obrażenia gdy gracz kupuje rzeczy za monety#Pojawia 3 monety i klucz przy podniesieniu"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Kamienie i przeszkody pojaiwają 2 pająki gdy zniszczone", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "Pojawia mini sklep z przedmiotem do kupienia za monety", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Pojawia określone rzeczy zależnie od ilości ładunków przy użyciu#W pełni naładowany aktywuje silniejszy losowy efekt#Charge Rewards: 1:Poop 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Sprawia że wszystkie przedmioty w przyszłości będą zglitchowanymymi wersjami#Mają one zupełnie losowe efekty", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Przykuwa łańcuchami najbliższego wroga do ziemi zabraniając mu ruszać się czy atakować", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Transormuje przedmioty na piedestałach zmieniając ich unikalne ID o jeden w dół", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "Pojawia połowę lub całe serduszko przy otrzymaniu obrażeń#Pojawione serca znikają po 1,5 sekundy", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Aktywuje losowy efekt przy zadawaniu obrażeń wrogom:#rzucenie kupą#Stworzenie szlamu który zwiększa statystyki w jego zasięgu#Pierd#Wypuszczenie z ciała 5 bomb", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Podwójne kliknięcie przycisku strzału sprawia że postać kicha krwią#Zadaje 150% obrażeń postaci trafionym przeciwnikom#Odładowywyje się 1 sekundę", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Bomby Pojawiają duchy które zadają obrażenia przeciwnikom i eksplodują po 10 sekundach", -- Ghost Bombs
	-- Full old Desc: "+5 bomb#Bomby Pojawiają duchy które zadają obrażenia przeciwnikom i eksplodują po 10 sekundach"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Pojawia demonicznego sojusznika prztwierdzonego do postaci#Kopiuje on wszystkie efekty i statystyki", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Rzuca głową postaci która po wylądowaniu jest stacjonara i dalej strzela#Ponowne użycie lub nadepnięcie na głowę przyczepia ją spowrotem", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "33% szans na upuszczenie monety, gdy rozwalasz kamienie", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "Pierdzisz, gdy podnosisz monety#Pierd odrzuca i truje przeciwników", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "Losowy efekt grzyba#{{Blank}} co pokój", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Blank}} Małego Steven'a {{Collectible100}}", -- Umbilical Cord
	-- Full old Desc: "Wchodząc do pokoju z połową czerwonego serca lub mniej, otrzymujesz#{{Blank}} Małego Steven'a {{Collectible100}}#Duża szansa na pojawienie się sojusznika Gemini {{Collectible318}}, gdy otrzymujesz obrażenia"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Szansa na zadanie obrażeń wszystkim w pokoju, gdy otrzymasz obrażenia#Czarne serca i efekt Necronomicon'u {{Collectible35}} zadają podwójne obrażenia", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "25% szans na upuszczenie połowy serca, gdy podniesiesz monetę", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "25% szans na upuszczenie bomby, gdy podniesiesz monetę", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "25% szans na upuszczenie klucza, gdy podniesiesz monetę", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Losowo kamufluje gracza#Dezorientuje przeciwników#Może zostać użyty do otwarcia drzwi na piętro \"Dom/Home\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Przedmioty zwiększające Twoje statystyki są o 20% bardziej efektywne", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "<MISSING>", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "Sklepy{{Shop}} mogą się pojawić na piętrze W1/W2 i odpowiedniku#{{Blank}} z alternatywnej ścieżki", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "Pokój Skarbów{{TreasureRoom}} pojawia się na piętrach W1-W2", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "Ustawia twoje czerwone serca na 50% maksymalnej wartości po przejściu na kolejne piętro#Jeśli Twoje zdrowie jest powyżej tego, leczy Cię połowę czerwonego serca", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "Szansa na upuszczenie połowy serca duszy, gdy podniesiesz monetę", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "Szansa na otrzymanie losowego efektu strzykawki dla aktualnego pokoju", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bomby położone przez Ciebie, będą eksplodować szybciej", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Zwiększona wielkość pierda", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Wybuchami można teraz otworzyć drzwi, blokady na klucz i złote skrzynki#Otwiera również drzwi od Domu (Home)", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Wchodząc na nowym poziom, do 4 niepodniesionych pickupów z poprzedniego poziomu, pojawią się na startowej lokacji", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Użycie aktywnego przedmiotu, przelosowuje go", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "Efekty łez bazujące na szczęściu będą występować częściej", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Podnoszenie czerwonego serca może przemienić je w niebieskie pająki#Działa również mając pełne zdrowie#Efekt może konsumować serca potrzebne do leczenia", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Zwiększa szybkostrzelność sojuszników", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "Na starcie każdego poziomu, pojawia 4 sojuszników z#{{Blank}} Book of Virtues{{Collectible584}}", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Łzy obracają się o 90 stopni, aby wycelować w przeciwników, których mogły przegapić", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Niszczy się po otrzymaniu obrażeń", -- Perfection
	-- Full old Desc: "↑ +10 Szczęścia#Niszczy się po otrzymaniu obrażeń"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "Pokoje Skarbów{{TreasureRoom}} zawierają teraz oferty Diabła", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "Podnoszenie monet może ładować Aktywny Przedmiot", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Powoduje, że sojusznicy krążą wokół Ciebie", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Aktywuje Twój Aktywny Przedmiot po otrzymaniu obrażeń", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Wchodząc do pokoju, do którego potrzebny jest klucz, przenosi Cię do pokoju przypominającego poziom Husha#Pokój pełni rolę pośrednika między dwoma pokojami", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Powoduje schowanie się kolców, zmieniając je w nieszkodliwe#Efekt działa również w Przeklętym Pokoju, skrzynki mim i jakiekolwiek inne przeszkody z kolcami", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "Planetarium może się teraz pojawić na piętrach W1-W2", -- Telescope Lens
	-- Full old Desc: "Sprawia, że możliwe jest pojawienie się drugiego Planetarium#Planetarium może się teraz pojawić na piętrach W1-W2"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "Każdy pokój, gwarantuje efekt losowego przedmiotu Matki", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "Wchodząc do nowego pokoju, gwarantuje tymczasową Kostkę#Kostka znika po opuszczeniu pokoju#Gwarantuje zdolność do trzymania dwóch przedmiotów jednocześnie", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Pokój Skarbów{{TreasureRoom}} i Sklep{{Shop}} pojawiają się w Katedrze", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "Gwarantuje 1 zasobnik na serca#Działa również u Dozorcy/Keepera", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Po otrzymaniu obrażeń, upuszczasz wszystkie swoje pickupy#(Wyjątkiem są: Serca, Karty, Tabletki, Runy)", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "Wszystkie Złote Skrzynki zawierają dodatkowe karty, pigułki lub trynkiety", -- Gilded Key
	-- Full old Desc: "+1 klucz#Zamienia wszystkie nowe skrzynki w Złote Skrzynki#Wszystkie Złote Skrzynki zawierają dodatkowe karty, pigułki lub trynkiety#Wyjątek: Olbrzymia Skrzynia, Stara Skrzynia"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "Pojawia Worek po podróży na kolejny poziom", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Pokój Skarbów{{TreasureRoom}} i Sklep{{Shop}} pojawiają się w Szeolu", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "Szansa na zamienienie się w Azazela po wejściu do pokoju", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Pojawia 2 przyjazne Kupy po wyczyszczeniu pokoju", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "Stawiasz dwie bomby zamiast jednej#Tylko jedna zostaje usunięta z ekwipunku", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Na poziomie W1 i dalszym, zamienia wszystkie monety i klucze na inne losowe pickupy#Bomby i Serca są bardziej powszechne", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "Gwarantuje efekt losowego Pasywnego Przedmiotu w każdym pokoju", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Szansa na pojawienie się sojuszniczego Bony'ego po wyczyszczeniu pokoju", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "+1 Kościany zasobnik na serca po wejściu na nowy poziom", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "Gdy trzymasz, liczy się do transformacji w Guppy'iego", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "Gwarantuje szansę na automatyczne stworzenie pokoju Czerwonym Kluczem{{Collectible580}} przy każdym oczyszczeniu pokoju", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "Oferty Diabła są teraz za monety zamiast za serca", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Teleportuje Cię do losowego pokoju po podniesieniu monety#Może teleportować do Sekretnego Pokoju", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{Warning}} JEDNORAZOWE UŻYCIE {{Warning}}#Może zostać użyte w ofercie Diabła zamiast tracić serca", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 175] = "Odblokowuje przejście do walki z Hushem, niezależnie od trwania przebiegu rozgrywki", -- Strange Key
	-- Full old Desc: "Odblokowuje przejście do walki z Hushem, niezależnie od trwania przebiegu rozgrywki#Użycie Puszki Pandory{{Collectible297}} pojawia 6 przedmiotów z losowej puli"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Pojawia sojuszniczego zakrzepa, który porusza się jak Ty, strzela w tym samym kierunku i z tymi samymi efektami łez", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "Pojawia skrzynkę po ukończeniu Wyzwania walki z przeciwnikami lub przedmiot po ukończeniu Wyzwania z Bossem", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Wybuchasz po otrzymaniu obrażenia", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Poruszanie się sojuszników może być kontrolowane przez Ciebie", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Sojusznik, który porusza się jak Ty i strzela widmowymi łzami#Posiada takie same obrażenia i efekt łez jak Ty", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Używa innego losowego Aktywnego Przedmiotu, gdy używasz swojego Aktywnego Przedmiotu", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Raz na pokój, gdy dostaniesz obrażenie, tworzysz sojuszniczy Ognik{{Collectible584}} i gwarantuje nietykalność#Tworzy 5 sojuszniczych Ogników po wejściu do Pokoju Aniołów#Tworzy sojuszniczy Ognik, gdy dajesz monety żebrakom", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "Co pokój:", -- The Twins
	-- Full old Desc: "Co pokój:#Bez sojuszników: Szansa na Braciszka Robercika{{Collectible8}} i/lub Siostrę Madzię{{Collectible67}}# Z sojusznikami: Szansa na kopię swojego sojusznika"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "Sklep może sprzedawać sojuszników#Sojusznicy będą zawsze na przecenie", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Szansa na pojawienie się Szarańczy (Locust) po zabiciu przeciwnika", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Throwable}} {{ColorOrange}}Do rzucania{{CR}} (podwójne kliknięcie przycisku strzału)#Gwarantuje 1 sojuszniczą muchę, którą możesz celować i strzelać", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "33% szans na otrzymanie dodatkowego niewidzialnego przedmiotu w Pokoju Skarbów#Odkrywa niewidzialny przedmiot w alternatywnej ścieżce", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "Zabicie sparaliżowanego przeciwnika zamraża go", -- Ice Cube
	-- Full old Desc: "Szansa na sparaliżowanie przeciwnika, kiedy wchodzisz do pokoju#Zabicie sparaliżowanego przeciwnika zamraża go"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Aktywuje tarczę na 1 sekundę po zabiciu przeciwnika", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "<MISSING>", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w bomby", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w monety", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w klucze", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w serca", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "<MISSING>", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "<MISSING>", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "Daje efekt#{{Blank}} Świętego Okrycia {{Collectible313}}#(Neguje następne otrzymane obrażenia)#Efekt utrzymuje się do następnego otrzymania obrażeń", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "Aktywuje efekt losowej runy#Efekt ten jest słabszy", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Wyrzuca wszystkie twoje serca i pickupy na ziemię#Pozostawia postać z połówką czerwonego serca#Pickupy mogą pojawić {{Collectible74}} {{Collectible19}} rzeczy jeśli jest ich za mało#Efekt trwa 1 minutę", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "<MISSING>", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Noga matki uderza bez przerwy przez 1 minutę", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teleportuje do dodatkowej walki z bossem z dodatkowym przedmiotem", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Pojawia 1 przedmiot z obecnej puli przedmiotów#Zmienia 1 czerowne serce lub 2 duchowe w złamane serce", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "Zmienia w nieśmiertelną statułę na 10 sekund#Ekstremalna szybkostrzelonośc na czas działania"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "SPojawia od 2 do 4 złotych skrzyń", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Zmienia pickupy i przedmioty w moenty#przedmioty są zamieniane w monety o wartości przedmiotu w sklepie", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Losowy efekt pokoju kostki", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "Przeciwnicy w pokoju są osłabieni, spowolnieni i otrzymują podwójne obrażenia", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#zabici przeciwnicy wyrzucają losowo monety", -- XII - The Hanged Man?
	-- Full old Desc: "Zmienia gracza w keepera na 30 sekund#Aktywuje potrójny strzał i zmniejszenie prędkości#zabici przeciwnicy wyrzucają losowo monety"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Używa efektu Księgi Śmierci {{Collectible545}}#(Spawns Bone entities for each enemy killed in room)", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "Używa 5 losowych efektów pigułek", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "Kopiuje efekt Biblii {{Collectible33}}#Pojawia sojuszniczego serafima{{Collectible390}}# na 30 sekund", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Pojawia 6 losowych przeszkód/kamieni", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Usuwa najstarszy pasywny przedmiot#Pojawia 2 przedmioty z puli przedmiotów obecnego pokoju", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "Teleportuje do ultra sekretnego pokoju#Droga spowrotem zostanie stworzona z czerwonych pokoi", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "Załącxa klątwe ciemności", -- XIX - The Sun?
	-- Full old Desc: "Aktywuje efekt Ducha Nocy {{Collectible159}}#↑ +1.5 Obrażeń#Dla obecnego piętra#Zmienia czerowne serca w kościane do końca trwania efektu#Załącxa klątwe ciemności"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "Pojawia maszynę do zmiany przedmiotów", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Pojawia przejście do Crawl space", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "Jednorazowe użycie czerwonego klucza {{Collectible580}}", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Kopiuje i używa efektu ostatnio użytej karty runy czy pigułki", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Zmienia przedmioty w obecnym pokoju#zmienia ponownie na orginalny przemiot#Efekt się powtarza", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Otacza postać czerwoną aurą do końca pokoju#Zabici przeciwnicy wyrzucają z siebie czerwone serduszka które znikają po 2 sekundach", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Tworzy 4 czerwone Pokoje niczym Czerwony klucz {{Collectible580}} W każdym możliwym miejscu w pokoju", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Zmienia postać w cień któy przenika przez pociski i przeciwników#Po kilku sekundach atakuje i otrzymuje czasowy bonus obrażeń za każdy trafiony cel#Efekt Mrocznych Technik {{Collectible705}}", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "Wywołuje 8 toksycznych pierdów wraz z zielonym szlamem#Po czym szlak bomb tyłkowych#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "Wywołuje 8 toksycznych pierdów wraz z zielonym szlamem#Po czym szlak bomb tyłkowych#Stanie w szlamie daje ↑ +1.35 szybkostrzelności i  ↑ +1 Obrażeń"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "14 Martwych ptaaków przylatuje i atakuje przeciwników# Do końca pokoju", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Zmienia w samosona berserka na 10 sekund#↑ +0.4 Prędkości#↑ Szybkostrzelności#↑ +3 Obrażeń", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Aktywuje efekt mega strału {{Collectible441}} na 7.5 sekundy", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Zabija i wskrzesza z określonym czasem nietyklaności#Używa się automatycznie przy śmierci gdy trzymany (like an extra life)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "aktywuje efekt D6 {{Collectible105}} i D20 {{Collectible166}}#Zmienione przedmioty używają losowych pul", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "Zamienia postać na the losta do końca pokoju", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Permanentny 1 sojusznik", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Pojawia 15 losowych much lokustów", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "Pojawia Forgottena jako drugą postać do końca pokoju", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "pojaiwa 6 płomyków z księgi płomyków {{Collectible584}}z losowymi efektami", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "Pojawia Esau jako drugą postać do końca pokoju", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Zamienia ilość bomb z kluczami#Złote bomby i klucze również", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "<MISSING>", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "Spowalnia ciebie oraz przeciwników w tym pokoju", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Przyspiesza ciebie oraz przeciwników w tym pokoju#Ponawia się po 30 oraz 60 sekundach", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Efekt losowej pigułki#Niszczy się po kilku użyciach", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "Zatruwa cały pokój", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Tracisz 2 serca", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Zamienia ilość bomb z kluczami#Zwiększa ilość kluczy i bomb o 50%#Złote bomby i klucze również są zamienione", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Tworzy kilka mega naprowadzanych troll bomb na twojej pozycji", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "Dostajesz 1 Dużego Fana (Big Fan) {{Collectible279}}#Nie ma górnego limitu", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Odładowuje twój przedmiot aktywny", -- 48 Hour Energy!
	-- Full old Desc: "Odładowuje twój przedmiot aktywny#Upuszcza baterie"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Opróżnia wszystkie zasobniki na serca poza jednym", -- Hematemesis
	-- Full old Desc: "Opróżnia wszystkie zasobniki na serca poza jednym#Tworzy czerwone serca"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Brak możliwości ruchu przez 4 sekundy", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "Oczarowuje wszystkich przeciwników w tym pokoju na stałe", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Tworzy na ziemi kałużę wypełniającą pokój, która rani nielatających wrogów", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Przez 60 sekund strzelasz na skos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Przez 4 sekundy tworzysz kupy pod nogami", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Efekt Klątwy Dezorientacji na całe piętro", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Mocno Rośniesz#Brak wpływu na twój hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Mocno Malejesz#Twój hitbox również się zmniejsza", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Tworzy 2 niebieskie pająki na każdą kupę w pokoju", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Tworzy 2 niebieskie pająki na każdego wroga w pokoju#Tworzy 2-6 pająków w przypadku braku przeciwników", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Rozpikselowuje ekran na 90 sekund", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Tworzy długotrwałą kałużę śliskiej mazi", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Tworzy długotrwałą kałużę spowalniającej mazi", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Spowalnia przeciwników w tym pokoju", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Przyspiesza przeciwników w tym pokoju", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Połykasz swój trynkiet, zyskując permanentnie jego efekt", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Wystrzeliwujesz serię łez z efektem Wymiotnicy", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Tworzy ostatnią połkniętą pigułkę jako końską pigułę", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Zwiększa 1 losową statystykę dwa razy#↓ Zmniejsza 1 inną, losową statystykę dwa razy#Nie zmniejsza, gdy masz Doktorat (PHD)", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Efekt losowej, końskiej pigułki#Niszczy się po kilku użyciach", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
