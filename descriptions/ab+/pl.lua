---------------------------------------
-----  Basic Polish descriptions  -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "pl"

-- init pl table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Polish (WIP) AB+"
EID.descriptions[languageCode].alternativeLanguageCodes = {"polish, pl"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default"}, {name="inverted"}, {name="borderless"}}

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "Smutna Cebula", "↑ {{Tears}} +0.7 Tears"}, -- The Sad Onion, !!MODULAR!! ✓
	{"2", "Wewnętrzne Oko", "↓ {{Tears}} x0.48 Mnożnik Szybkostrzelności#↓ {{Tears}} +3 Opóźnienie Wystrzału#Izaak wystrzeliwuje 3 pociski na raz"}, -- The Inner Eye ✓
	{"3", "Wygięta Łyżka", "Homing tears"}, -- Spoon Bender, !!MODULAR!! ✓
	{"4", "Głowa Cricketa", "↑ {{Damage}} +0.5 Damage#↑ {{Damage}} x1.5 Damage multiplier"}, -- Cricket's Head, !!MODULAR!! ✓
	{"5", "Moje Odbicie", "↑ {{Range}} +1.5 Zasięgu#↑ +1 Wysokości lotu łez#↑ {{Shotspeed}} x1.6 Mnożnik Prędkości Strzałów#Daje łzom efekt bumerangu"}, -- My Reflection, ✓
	{"6", "Numer Jeden", "↑ {{Tears}} +1.5 Tears#↑ +0.76 Tear height#↓ {{Range}} -17.62 Range"}, -- Number One, !!MODULAR!! ✓
	{"7", "Krew Męczennika", "↑ {{Damage}} +1 Obrażeń#{{Collectible34}} x1.5 Mnożnik obrażeń"}, -- Blood of the Martyr, !!MODULAR!! X ✓
	{"8", "Brat Bercik", "Strzela normalnymi łzami#Zadaje 3.5 obrażeń na łzę"}, -- Brother Bobby ✓
	{"9", "Skatol", "Wszystkie wrogie muchy są teraz przyjaciółmi"}, -- Skatole ✓
	{"10", "Aureola z Much", "+2 Orbitujące muchy#Blokują wrogie pociski"}, -- Halo of Flies, !!MODULAR!! ✓
	{"11", "1up!", "↑ +1 Życie#Po śmierci, Izaak odradza się z pełnym zdrowiem"}, -- 1up! ✓
	{"12", "Magiczny Grzyb", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#Size up#{{HealingRed}} Full health"}, -- Magic Mushroom, !!MODULAR!! ✓
	{"13", "Wirus", "↓ {{Speed}} -0.1 Prędkości#{{Poison}} Zatruwasz wrogów dotykiem#{{BlackHeart}} Zatruci wrogowie mają 20% szans na upuszczenie Czarnych Serc"}, -- The Virus ✓
	{"14", "Furia na Sterydach", "↑ {{Speed}} +0.6 Speed#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Roid Rage, !!MODULAR!! ✓
	{"15", "<3", "↑ {{Heart}} +1 Health#{{HealingRed}} Full health"}, -- <3, !!MODULAR!! ✓
	{"16", "Surowa Wątroba", "↑ {{Heart}} +2 Serca#{{HealingRed}} Pełne zdrowie"}, -- Raw Liver, !!MODULAR!! ✓
	{"17", "Klucz Uniwersalny", "{{Key}} +99 Kluczy"}, -- Skeleton Key, !!MODULAR!! ✓
	{"18", "Dolar", "{{Coin}} +99 Monet"}, -- A Dollar, !!MODULAR!! ✓
	{"19", "Bum!", "{{Bomb}} +10 Bomb"}, -- Boom!, !!MODULAR!! ✓
	{"20", "Transcendencja", "Flight"}, -- Transcendence, !!MODULAR!! ✓
	{"21", "Kompas", "Ujawnia wszystkie ikony na mapie {{Shop}}{{TreasureRoom}}{{BossRoom}}{{MiniBoss}}{{Library}}{{ArcadeRoom}}{{CursedRoom}}{{SacrificeRoom}}#!!! Nie ujawnia jej układu#Nie ujawnia sekretów {{SecretRoom}}{{SuperSecretRoom}}"}, -- The Compass ✓
	{"22", "Drugie Śniadanie", "↑ {{Heart}} +1 Health"}, -- Lunch, !!MODULAR!! ✓
	{"23", "Obiad", "↑ {{Heart}} +1 Health"}, -- Dinner, !!MODULAR!! ✓
	{"24", "Deser", "↑ {{Heart}} +1 Health"}, -- Dessert, !!MODULAR!! ✓
	{"25", "Śniadanie", "↑ {{Heart}} +1 Health"}, -- Breakfast, !!MODULAR!! ✓
	{"26", "Zgniłe Mięso", "↑ {{Heart}} +1 Health"}, -- Rotten Meat, !!MODULAR!! ✓
	{"27", "Drewniana Łyżka", "↑ {{Speed}} +0.3 Speed"}, -- Wooden Spoon, !!MODULAR!! ✓
	{"28", "Pas", "↑ {{Speed}} +0.3 Speed"}, -- The Belt, !!MODULAR!! ✓
	{"29", "Bielizna Mamy", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Underwear, !!MODULAR!! ✓
	{"30", "Szpilki Mamy", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Heels, !!MODULAR!! ✓
	{"31", "Szminka Mamy", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Mom's Lipstick, !!MODULAR!! ✓
	{"32", "Druciany Wieszak", "↑ {{Tears}} +0.7 Tears"}, -- Wire Coat Hanger, !!MODULAR!! ✓ 
	{"33", "Biblia", "{{Timer}} Latanie w pomieszczeniu#{{MomsHeart}} Natychmiastowo zabije Stopę Mamy oraz Serce Mamy#{{Warning}} Zabije Izaaka, gdy użyjesz na Szatanie"}, -- The Bible ✓
	{"34", "Księga Beliala", "{{AngelDevilChance}} +12.5% Devil/Angel Room chance while held#{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- The Book of Belial, !!MODULAR!! ✓
	{"35", "Nekronomikon", "Deals 40 damage to all enemies in the room"}, -- The Necronomicon, !!MODULAR!! ✓
	{"36", "Kupa", "Tworzy kupę i odpycha przeciwników#Można utworzyć z niej most przy pomocy bomby, gdy ustawisz ją przy szczelinie"}, -- The Poop ✓
	{"37", "Pan Bum", "Upuszcza pod Izaakiem dużą bombę, która zadaje 110 obrażeń"}, -- Mr. Boom ✓
	{"38", "Głowa Tammy", "Wystrzeliwuje 10 pocisków wokół Izaaka#Pociski mogą kopiować efekty łez Izaaka, dodatkowo jeszcze również zadają 25 obrażeń"}, -- Tammy's Head ✓
	{"39", "Stanik Mamy", "{{Petrify}} Zmraża wszystkich wrogów w pomieszczeniu na 4 sekundy"}, -- Mom's Bra ✓
	{"40", "Kamikaze!", "Wywołuje eksplozję tam, gdzie znajduje się Izaak#Zadaje 40 obrażeń"}, -- Kamikaze! ✓
	{"41", "Podpaska Mamy", "{{Fear}} Straszy wszystkich wrogów w pomieszczeniu na 4 sekundy"}, -- Mom's Pad ✓
	{"42", "Zgniły Łeb Boba", "Używając przedmiotu, strzel w wybranym kierunku aby rzucić tam tę bombę#{{Poison}} Wybucha przy kontakcie i zatruwa wrogów"}, -- Bob's Rotten Head ✓
	{"43", "", "<item does not exist>"}, -- !!MODULAR!! ✓
	{"44", "Teleport!", "Teleportuje Izaaka do losowego pomieszczenia, z wyjątkiem pokoju I AM ERROR"}, -- Teleport! ✓
	{"45", "Serduszko", "{{HealingRed}} Heals 1 heart"}, -- Yum Heart, !!MODULAR!! ✓
	{"46", "Szczęśliwa Stopa", "↑ {{Luck}} +1 Szczęścia#+8% szansy na nagrodę za oczyszczenie pomieszczenia#Większa szansa na sukces w hazardzie"}, -- Lucky Foot ✓
	{"47", "Pilot Doktora", "{{Collectible168}} Po użyciu kontrolujesz celownik#Po 1.5 sekundzie, rakieta spadnie tam, gdzie celujesz#Zadaje 20x obrażeń Izaaka"}, -- Doctor's Remote ✓
	{"48", "Strzała Kupidyna", "Piercing tears"}, -- Cupid's Arrow, !!MODULAR!! ✓
	{"49", "Shoop da Whoop!", "Następny strzał zostaje zastąpiony laserem#Zadaje 26x obrażeń Izaaka w ciągu 0.9 sekund"}, -- Shoop da Whoop! ✓
	{"50", "Steven", "↑ {{Damage}} +1 Damage"}, -- Steven, !!MODULAR!! ✓
	{"51", "Pentagram", "↑ {{Damage}} +1 Damage#{{AngelDevilChance}} +10% Devil/Angel Room chance"}, -- Pentagram, !!MODULAR!! ✓
	{"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Mnożnik Szybkostrzelności#{{Bomb}} Izaak strzela bombami, zamiast łzami#{{Damage}} Te bomby zadają obrażenia Izaaka x5 oraz + 30"}, -- Dr. Fetus ✓
	{"53", "Magneto", "Zasoby przyciągają się do Izaaka"}, -- Magneto ✓
	{"54", "Mapa Skarbów", "Ujawnia układ mapy#!!!Nie ujawnia ikon pomieszczeń"}, -- Treasure Map ✓
	{"55", "Oko Mamy", "50% szansy na wystrzeleniu dodatkowej łzy do tyłu#{{Luck}} 100% szansy przy 2 szczęścia"}, -- Mom's Eye ✓
	{"56", "Wypadek z Cytryną", "Rozlewa kałużę mazi#Maź zadaje 24 obrażeń na sekundę"}, -- Lemon Mishap ✓
	{"57", "Podziw z Oddali", "Mucha orbitująca w średniej odległości od Izaaka#Zadaje 75 obrażeń na sekundę przy kontakcie z wrogiem"}, -- Distant Admiration ✓
	{"58", "Księga Cieni", "{{Timer}} Invincibility for 10 seconds"}, -- Book of Shadows, !!MODULAR!! ✓
	{"59", "", "<item does not exist>"}, --, !!MODULAR!! ✓
	{"60", "Drabina", "Pozwala ci przechodzić nad przepaściami o wielkości 1 pola"}, -- The Ladder ✓
	{"61", "", "<item does not exist>"}, --, !!MODULAR!! ✓
	{"62", "Urok Wampira", "{{HealingRed}} Zabicie 13 wrogów leczy pół czerwonego serca"}, -- Charm of the Vampire ✓
	{"63", "Bateria", "{{Battery}} Przedmioty aktywne można naładować dwukrotnie"}, -- The Battery ✓
	{"64", "Wyprzedaż Steam", "{{Shop}} Zakupy sklepie kosztują 50% mniej"}, -- Steam Sale ✓
	{"65", "Książka Kucharska Anarchisty", "Tworzy 6 Troll Bomb w obrębie środka pomieszczenia"}, -- Anarchist Cookbook ✓
	{"66", "Klepsydra", "{{Slow}} Spowalnia wrogów na 8 seconds"}, -- The Hourglass ✓
	{"67", "Siostra Madzia", "Strzela normalnymi łzami#Zadaje 3.5 obrażeń na łzę"}, -- Sister Maggy ✓
	{"68", "Technologia", "Izaak strzela laserami zamiast łzami"}, -- Technology ✓
	{"69", "Mleko Czekoladowe", "{{Chargeable}} Ładowane łzy#{{Damage}} Obrażenia rosną wraz z czasem ładowania, do 4x#{{Tears}} Maksymalne naładowanie to 2.5x opóźnienia wystrzału"}, -- Chocolate Milk ✓
	{"70", "Hormony Wzrostu", "↑ {{Speed}} +0.4 Speed#↑ {{Damage}} +1 Damage"}, -- Growth Hormones, !!MODULAR!! ✓
	{"71", "Mini Grzybek", "↑ {{Speed}} +0.3 Prędkości#↑ +1.5 Wysokości lotu łez#↑ Malejesz#↓ {{Range}} -4.25 Zasięgu#Wyżej lecące łzy + zmniejszony zasięg = ostatecznie większy zasięg"}, -- Mini Mush ✓
	{"72", "Różaniec", "{{SoulHeart}} +3 Serca Duszy#{{Collectible33}} Biblia zostaje dodana do każdej puli przedmiotów"}, -- Rosary ✓
	{"73", "Kostka Mięsa", "Lv1: Orbituje#Lv2: Orbituje i strzela#Lv3: Meat Boy#Lv4: Super Meat Boy"}, -- Cube of Meat ✓
	{"74", "Ćwierćdolarówka", "{{Coin}} +25 Monet"}, -- A Quarter, !!MODULAR!! X ✓
	{"75", "Doktorat", "{{HealingRed}} Leczy 2 serca#{{Pill}} Tworzy 1 pigułkę#{{Pill}} Zamienia negatywne pigułki na pozytywne#{{BloodDonationMachine}} Automat krwiodawstwa wypłaca więcej {{Coin}} monet"}, -- PHD ✓
	{"76", "X-Ray w Oczach", "{{SecretRoom}} Otwiera wejścia do wszystkich sekretów"}, -- X-Ray Vision ✓
	{"77", "Mój Mały Jednorożec", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot but deals 40 contact damage per second"}, -- My Little Unicorn, !!MODULAR!! ✓
	{"78", "Księga Objawień", "{{SoulHeart}} +1 Serce Duszy#{{AngelDevilChance}} +17.5% Szansy na Pomieszczenie Diabła/Anioła, gdy to trzymasz #Użycie tego przedmiotu niemal gwarantuje zastąpienie bossa jednym z jeźdźców"}, -- Book of Revelations ✓
	{"79", "Znak", "↑ {{Damage}} +1 Damage#↑ {{Speed}} +0.2 Speed#{{SoulHeart}} +1 Soul Heart"}, -- The Mark, !!MODULAR!! ✓
	{"80", "Pakt", "↑ {{Tears}} +0.7 Szybkostrzelności#↑ {{Damage}} +0.5 Obrażeń#{{SoulHeart}} +2 Serca Duszy"}, -- The Pact, !!MODULAR!! ✓
	{"81", "Martwy Kot", "↑ +9 Żyć#Izaak po śmierci odradza się z 1 zasobnikiem na serce#{{Warning}} Przy podniesieniu ustawia zasobniki na serce na 1 "}, -- Dead Cat ✓
	{"82", "Pan Otchłani", "↑ {{Speed}} +0.3 Speed#Flight"}, -- Lord of the Pit, !!MODULAR!! ✓
	{"83", "Gwóźdź", "Przy użyciu:#{{SoulHeart}} +1 Serce Duszy#{{Timer}} Dostajesz na pomieszczenie:#↑ {{Damage}} +0.7 Obrażeń#↓ {{Speed}} -0.18 Prędkości#Izaak zadaje 40 obrażeń kontaktowych na sekundę#Umożliwia Izaakowi niszczenie kamieni poprzez wchodzenie w nie"}, -- The Nail ✓
	{"84", "Musimy Kopać Dalej!", "Otwiera przejście na następne piętro#{{LadderRoom}} 10% szans na odsłonięcie wejścia do szczeliny"}, -- We Need To Go Deeper! ✓
	{"85", "Talia Kart", "{{Card}} Spawns 1 card"}, -- Deck of Cards, !!MODULAR!! ✓
	{"86", "Ząb Monstro", "Monstro spada na wroga i zadaje 120 obrażeń#{{Warning}} Monstro spada na Izaaka, jeżeli pomieszczenie nie zawiera wrogów"}, -- Monstro's Tooth ✓
	{"87", "Rogi Loki'ego", "25% szansy na strzał w 4 kierunkach#{{Luck}} 100% szansy przy 7 szczęścia"}, -- Loki's Horns ✓
	{"88", "Mały Chubby", "Szarżuje tam, dokąd Izaak strzela#Zadaje 52.5 obrażeń kontaktowych na sekundę"}, -- Little Chubby ✓
	{"89", "Ugryzienie Pająka", "{{Slow}} 25% szans na wystrzelenie spowalniających łez#{{Luck}} 100% szansy przy 15 szczęścia"}, -- Spider Bite ✓
	{"90", "Kamyczek", "↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +1 Damage#↓ {{Speed}} -0.2 Speed"}, -- The Small Rock, !!MODULAR!! ✓
	{"91", "Czapka Speleologa", "Ujawnia typy sąsiadujących pomieszczeń#{{SecretRoom}} Może ujawnić Sekretne i Super Sekretne pomieszczenia"}, -- Spelunker Hat ✓
	{"92", "Super Bandaż", "↑ {{Heart}} +1 Serce#{{SoulHeart}} +2 Serca Duszy#{{HealingRed}} Leczy jedno czerwone serce"}, -- Super Bandage, !!MODULAR!! ✓
	{"93", "Gamekid", "{{Timer}} Na 6.5 sekundy otrzymujesz:#Nieśmiertelność#Izaak nie może strzelać, ale zadaje 40 obrażeń kontaktowych na sekundę#{{HealingRed}} Zabicie 2 wrogów leczy pół czerwonego serca#{{Fear}} Straszy wszystkich wrogów w pomieszczeniu"}, -- The Gamekid ✓
	{"94", "Sakiewka z Monetami", "{{Coin}} Co 2 pomieszczenia tworzy losową monetę"}, -- Sack of Pennies ✓
	{"95", "Robo-Dziecko", "Strzela laserami#Zadaje 3.5 obrażeń na strzał"}, -- Robo-Baby ✓
	{"96", "Mały C.H.A.D.", "{{HalfHeart}} Tworzy pół czerwonego serca co 3 pomieszczenia"}, -- Little C.H.A.D. ✓
	{"97", "Księga Grzechu", "Spawns 1 random pickup"}, -- The Book of Sin, !!MODULAR!! ✓
	{"98", "Relikt", "{{SoulHeart}} Tworzy 1 Serce Duszy co każde 5-6 pomieszczeń"}, -- The Relic ✓
	{"99", "Mały Gish", "{{Slow}} Strzela spowalniającymi łzami#Zadaje 3.5 obrażeń na łzę"}, -- Little Gish ✓
	{"100", "Mały Steven", "Strzela naprowadzanymi łzami#Zadaje 3.5 obrażeń na łzę"}, -- Little Steven ✓
	{"101", "Aureola", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height"}, -- The Halo, !!MODULAR!! ✓
	{"102", "Butelka Pigułek Mamy", "{{Pill}} Spawns 1 pill"}, -- Mom's Bottle of Pills, !!MODULAR!! ✓
	{"103", "Przeziębienie", "{{Poison}} 25% szansy na wystrzelenie trujących łez#{{Luck}} 100% szansy przy 12 szczęścia"}, -- The Common Cold ✓
	{"104", "Pasożyt", "Łzy rozdzielają się na 2 przy kontakcie z czymkolwiek#Rozdzielone łzy zadają połowę obrażeń"}, -- The Parasite ✓
	{"105", "D6", "Przelosowuje przedmioty na piedestałach w pomieszczeniu"}, -- The D6 ✓
	{"106", "Pan Mega", "↑ {{Bomb}} x1.83 Bomb damage#{{Bomb}} +5 Bombs"}, -- Mr. Mega, !!MODULAR!! ✓
	{"107", "Nożyce do Tkaniny", "{{Timer}} Otrzymujesz na pomieszczenie:#Latanie#Ciało Izaaka odrywa się od jego głowy i atakuje wrogów, zadając 82.5 obrażeń kontaktowych na sekundę"}, -- The Pinking Shears ✓
	{"108", "Opłatek", "Redukuje znaczną większość obrażeń do pół serduszka"}, -- The Wafer ✓
	{"109", "Pieniądze = Siła", "↑ {{Damage}} +0.04 Obrażeń za każdą posiadaną {{Coin}} monetę"}, -- Money = Power ✓
	{"110", "Soczewki Mamy", "↑ {{Range}} +0.25 Zasięgu#↑ +0.5 Wysokości lotu łez#{{Petrify}} 20% szans na wystrzelenie mrożących łez#{{Luck}} 50% szans przy 20 szczęścia"}, -- Mom's Contacts ✓
	{"111", "Fasola", "Trujący pierd"},
	{"112", "Anioł Stróż", "Orbituje#Przyspiesza orbitujących sojuszników#Blokuje pociski#Zadaje 105 obrażeń kontaktowych na sekundę"},
	{"113", "Demoniczne Dziecko", "Samostrzelający sojusznik#Zadaje 3 obrażeń na strzał"},
	{"114", "Nóż Mamy", "Kontrolowany atak nożem#Trzymany, nóż zadaje 2x twoje obrażenia oraz 6x twoich obrażeń będąc w najdalszym, możliwym punkcie"},
	{"115", "Plansza Ouija", "Spectral tears"}, -- Ouija Board, !!MODULAR!!
	{"116", "Bateria 9V", "-1 Wymagany Ładunek aktywnych przedmiotów#W pełni ładuje obecny aktywny przedmiot"},
	{"117", "Martwy Ptak", "Tworzy ptaka, gdy zostaniesz trafiony#Ptak zadaje 4 obrażeń kontaktowych na sekundę"},
	{"118", "Ogień Piekielny", "Krwawy, ładowany laser zamiast łez, zadający ciągłe obrażenia"},
	{"119", "Worek na Krew", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#{{HealingRed}} Heals 4 hearts"}, -- Blood Bag, !!MODULAR!!
	{"120", "Dziwaczny Grzyb", "↑ {{Speed}} +0.3 Speed#↑ {{Tears}} +1.7 Tears#↓ {{Damage}} x0.9 Damage multiplier#↓ {{Damage}} -0.4 Damage"}, -- Odd Mushroom (Thin), !!MODULAR!!
	{"121", "Dziwny Grzyb", "↑ {{EmptyHeart}} +1 Empty heart container#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height#↓ {{Speed}} -0.1 Speed"}, -- Odd Mushroom (Large), !!MODULAR!!
	{"122", "Nierządnica z Babilonu", "!!! Mając pół czerwonego serca lub mniej:#↑ +1.5 Obrażeń#↑ +0.3 Prędkości"},
	{"123", "Księga Potworów", "Losowy sojusznik na obecny pokój"},
	{"124", "Zwoje znad Morza Martwego", "Losowy efekt aktywnego przedmiotu"},
	{"125", "Berci-Bomba", "Naprowadzane bomby#+5 Bomb"},
	{"126", "Żyletka", "↑ +1.2 Obrażeń w obecnym pokoju#↓ Zadaje ci 1 serce obrażeń"},
	{"127", "Zapominajka", "Przelosowuje całe piętro"},
	{"128", "Wiecznie Samotny", "Orbitująca mucha#Trzyma się daleko#Zadaje 30 obrażeń kontaktowych na sekundę"},
	{"129", "Wiadro Smalcu", "↑ {{EmptyHeart}} +2 Empty heart containers#↓ {{Speed}} -0.2 Speed#{{HealingRed}} Heals half a heart"}, -- Bucket of Lard, !!MODULAR!!
	{"130", "Kucyk", "Latanie, gdy trzymasz ten przedmiot#Ustawia twoją prędkość na 1.5 jeżeli masz mniejszą#Przy użyciu Szarża w wybranym kierunku#"},
	{"131", "Torba na Bomby", "Upuszcza 1 Bombę do podniesienia co 2-3 pokoje"},
	{"132", "Bryła Węgla", "Obrażenia wzrastają wraz z przebytym przez łzę dystansem"},
	{"133", "Łapka Guppy'ego", "!!! Zamienia:#1 Czerwone serce na 3 Serca duszy"},
	{"134", "Ogon Guppy'ego", "Pojawia się więcej skrzynek"},
	{"135", "Kroplówka", "Przenośny automat krwiodawsta#Pół serca = 1-3 Monet"},
	{"136", "Najlepszy Przyjaciel", "Wybuchowa przynęta#Wabi przeciwników"},
	{"137", "Zdalny Detonator", "Detonacja bomb na życzenie#+5 bomb"},
	{"138", "Znamię", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage"}, -- Stigmata, !!MODULAR!!
	{"139", "Torebka Mamy", "Możesz mieć 2 drobiazgi na raz"},
	{"140", "Przekleństwo Boba", "Trujące bomby#+5 bomb"},
	{"141", "Balowy Chłopak", "{{Coin}} Spawns 7 random coins"}, -- Pageant Boy, !!MODULAR!!
	{"142", "Szkaplerz", "Gdy obrażenia sprowadzą twoje zdrowie do połowy serca, dostajesz 1 Serce duszy#(Raz na pokój)"},
	{"143", "Mieszanka", "↑ +0.3 Prędkości#↑ +0.2 Prędkości Strzałów"},
	{"144", "Przybłęda", "Zamienia Monety w Zasoby"},
	{"145", "Głowa Guppy'ego", "Spawns 2-4 blue flies"}, -- Guppy's Head, !!MODULAR!!
	{"146", "Modlitewnik", "{{EternalHeart}} +1 Eternal Heart"}, -- Prayer Card, !!MODULAR!!
	{"147", "Karbowana Siekiera", "W tym pokoju niszczysz kamienie dotykiem"},
	{"148", "Zarażenie", "Tworzy muchy, gdy zostaniesz trafiony"},
	{"149", "Wymiotnica", "Wybuchowe, trujące łzy#↑40 Obrażeń#↓ Szybkostrzelność"},
	{"150", "Miłosne Poświęcenie", "Szansa na strzał zębem#Zęby zadają 3.2x twoich obrażeń"},
	{"151", "Mucharz", "1/6 szansy na stworzenie muchy, gdy twoje łzy trafią przeciwnika"},
	{"152", "Technologia 2", "Permanentny laser!#↓ -35% Obrażeń"},
	{"153", "Zmutowany Pająk", "Poczwórny Strzał!#↓ Szybkostrzelność Maleje"},
	{"154", "Peeling Chemiczny", "↑ {{Damage}} +2 Damage for the left eye"}, -- Chemical Peel, !!MODULAR!!
	{"155", "Podglądacz", "Lata po pokoju#Zadaje 17.1 obrażeń kontaktowych na sekundę"},
	{"156", "Habit", "+1 Ładunek, gdy otrzymujesz obrażenia"},
	{"157", "Krwawa Żądza", "↑ Obrażenia rosną za każdym razem, gdy zostaniesz trafiony#Działa do 6 razy na piętro#Efekt utrzymuje się przez całe piętro"},
	{"158", "Kryształowa Kula", "Ujawnia całą mapę#Upuszcza losową Kartę albo Serce duszy"},
	{"159", "Duch Nocy", "Spectral tears#Flight"}, -- Spirit of the Night, !!MODULAR!!
	{"160", "Rozerwanie Nieba", "Tworzy 5 promieni światła przy przeciwnikach #Zadają twoje obrażenia +20"},
	{"161", "Anch", "Po śmierci odrodzisz się jako ??? (Blue Baby)"},
	{"162", "Krzyż Celtycki", "Szansa na Nieśmiertelność, gdy zostaniesz trafiony"},
	{"163", "Dziecko-Duch", "Sojusznik z Widowymi łzami#Zadaje 3.5 obrażeń na strzał"},
	{"164", "Świeca", "Tworzy niebieski ogień#Zadaje obrażenia kontaktowe#Blokuje wrogie łzy#Znika po 2 sekundach"},
	{"165", "Kańczug", "↑ {{Damage}} +1 Damage#↑ {{Shotspeed}} +0.23 Shot speed"}, -- Cat-o-nine-tails, !!MODULAR!!
	{"166", "D20", "Przelosowuje Zasoby"},
	{"167", "Arlekinowe Dziecko", "Strzela dwiema łzami w kształcie V#Zadaje 4 obrażeń na strzał"},
	{"168", "Epicki Fetus", "Kontrolowany nalot zamiast łez#Zadaje twoje obrażenia x20"},
	{"169", "Polifem", "Mega Łzy!#↑ +100% Obrażeń#↑ +4 dodatkowe Obrażenia#↓ Szybkostrzelność Maleje"},
	{"170", "Tatuś Kosarzy", "Depta wrogów#Zadaje 40 obrażeń na sekundę"},
	{"171", "Pajęczy Odbyt", "Spowalnia wrogów na 4 sekundy#Zadaje 10 obrażeń wszystkim wrogom"},
	{"172", "Sztylet Ofiarny", "Orbital#Blocks enemy shots#Deals 225 contact damage per second"}, -- Sacrificial Dagger, !!MODULAR!!
	{"173", "Mitra", "Większa szansa na znalezienie serc dusz"},
	{"174", "Tęczowe Dziecko", "Strzela losowymi łzami#Zadaje 3-5 obrażeń na strzał"},
	{"175", "Klucz Taty", "Otwiera wszystkie drzwi w obecnym pokoju, nawet do sekretnych pokoi"},
	{"176", "Komórki Macierzyste", "↑ {{Heart}} +1 Health#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Stem Cells, !!MODULAR!!
	{"177", "Przenośny Automat", "Przenośny automat do gier"},
	{"178", "Woda Święcona", "Tworzy kałużę mazi, gdy zostaniesz trafiony#Zadaje 24 obrażeń na sekundę"},
	{"179", "Przeznaczenie", "{{EternalHeart}} +1 Eternal Heart#Flight"}, -- Fate, !!MODULAR!!
	{"180", "Czarna Fasola", "Pierd przy dotyku"},
	{"181", "Biały Kucyk", "Latanie, gdy trzymasz ten przedmiot#Ustawia twoją prędkość na 1.5 jeżeli masz mniejszą#Przy użyciu Szarża w wybranym kierunku#Szarżując, tworzysz raniące wrogów słupy światła"},
	{"182", "Najświętsze Serce", "↑ {{Heart}} +1 Health#↑ {{Damage}} x2.3 Damage multiplier#↑ {{Damage}} +1 Damage#↑ {{Range}} +0.38 Range#↑ +0.75 Tear height#↓ {{Tears}} -0.4 Tears#↓ {{Shotspeed}} -0.25 Shot speed#{{HealingRed}} Full health#Homing tears"}, -- Sacred Heart, !!MODULAR!!
	{"183", "Wykałaczki", "↑ {{Tears}} +0.7 Tears#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Tooth Picks, !!MODULAR!!
	{"184", "Święty Graal", "↑ {{Heart}} +1 Health#Flight"}, -- Holy Grail, !!MODULAR!!
	{"185", "Martwy Gołąb", "Spectral tears#Flight"}, -- Dead Dove, !!MODULAR!!
	{"186", "Prawo Krwi", "Zadaje 40 obrażeń każdemu przeciwnikowi#Zadaje ci 1 serce obrażeń"},
	{"187", "Kłaczek Guppy'ego", "Rosnąca kula włosów#Huśta się w okół ciebie#Rośnie, gdy zabija wrogów#Im jest większa, tym większe obrażenia zadaje"},
	{"188", "Abel", "Odzwierciedla twoje ruchy#Strzela w twoim kierunku#Zadaje 3.5 obrażeń na strzał"},
	{"189", "Super Fan SMB", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.2 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.3 Damage#↑ {{Range}} +0.5 Range#↑ +1 Tear height#{{HealingRed}} Full health"}, -- SMB Super Fan, !!MODULAR!!
	{"190", "Piromania", "{{Bomb}} +99 Bombs"}, -- Pyro, !!MODULAR!!
	{"191", "Banknot 3 Dolarowy", "Losowy efekt łez co 2-3 sekundy"},
	{"192", "Telepatia Dla Bystrzaków", "{{Timer}} Homing tears for the room"}, -- Telepathy For Dummies, !!MODULAR!!
	{"193", "MIĘSO!", "↑ {{Heart}} +1 Health#↑ {{Damage}} +0.3 Damage"}, -- MEAT!, !!MODULAR!!
	{"194", "Magiczna Kula nr 8", "↑ {{Shotspeed}} +0.16 Shot speed#{{Card}} Spawns a card"}, -- Magic 8 Ball, !!MODULAR!!
	{"195", "Portmonetka Mamy", "{{Pill}} Spawns 4 pills"}, -- Mom's Coin Purse, !!MODULAR!!
	{"196", "Gniotek", "↑ {{Tears}} +0.4 Tears#{{SoulHeart}} Spawns 2 Soul Hearts"}, -- Squeezy, !!MODULAR!!
	{"197", "Sok Jezusa", "↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.25 Range#↑ +0.5 Tear height"}, -- Jesus Juice, !!MODULAR!!
	{"198", "Pudełko", "Tworzy 1 zasób każdego rodzaju"},
	{"199", "Klucz Mamy", "+2 Klucze#Ze skrzynek wypada więcej rzeczy"},
	{"200", "Cień do Powiek Mamy", "Szansa na wystrzelenie czarujących przeciwników łez"},
	{"201", "Sztabka Żelaza", "↑ +0.3 Obrażeń#Szansa na wystrzelenie ogłuszających łez"},
	{"202", "Dotyk Midasa", "Przy dotyku zamienia wrogów w złoto#Zadaje obrażenia kontaktowe dostosowane do liczby twoich monet#Złoci wrogowie upuszczają monety"},
	{"203", "Paczka Charytatywna", "Podwaja wszystkie zasoby"},
	{"204", "Nerka", "50% na upuszczenie losowego zasobu, gdy zostaniesz trafiony"},
	{"205", "Ostra Wtyczka", "-2 Serca = W pełni ładuje twój przedmiot przy wciśnięciu spacji#!!! Działa tylko, gdy przedmiot nie ma ładunków!"},
	{"206", "Gilotyna", "↑ +1 Obrażeń#↑ Szybkostrzelność#Twoja głowa teraz orbituje wokół ciała#Strzelasz z głowy#Głowa zadaje 105 obrażeń kontaktowych"},
	{"207", "Kula z Bandaży", "LVL1: Orbituje#LVL2: Orbituje i strzela#LVL3: Dziewczyna z bandaży poziomu 1#LVL4: Dziewczyna z bandaży poziomu 2"},
	{"208", "Pas Mistrza", "↑ +1 Obrażeń#!!! Więcej Mistrzowskich Przeciwników"},
	{"209", "Dupne Bomby", "↑ +5 Bomb#Wybuchy ogłuszają i ranią każdego przeciwnika w pokoju"},
	{"210", "Nadgryziony Listek", "Jesteś nietykalny, jeśli stoisz nieruchomo przez conajmniej 1 sekundę"},
	{"211", "Pajęcze Dziecię", "Pojawia 1-2 pająki, gdy zostaniesz trafiony"},
	{"212", "Obroża Guppy'ego", "↑ 50% szansy na odrodzenie"},
	{"213", "Zgubiona Soczewka", "Łzy z tarczą#Blokują wrogie pociski#↓ -0.16 Prędkości Strzałów"},
	{"214", "Anemik", "↑ +5 Zasięgu#Zostawiasz pod sobą maź, gdy zostaniesz trafiony"},
	{"215", "Kozia Głowa", "{{AngelDevilChance}} 100% Devil/Angel Room chance"}, -- Goat Head, !!MODULAR!!
	{"216", "Szaty Ceremonialne", "↑ {{Damage}} +1 Damage#{{BlackHeart}} +3 Black Hearts"}, -- Ceremonial Robes, !!MODULAR!!
	{"217", "Peruka Mamy", "Losowa szansa na stworzenie niebieskiego pająka gdy strzelasz#Leczy 1 czerwone serce przy podniesieniu"},
	{"218", "Łożysko", "↑ +1 Serce#Powoli regeneruje zdrowie"},
	{"219", "Stary Bandaż", "↑ +1 Pusty zasobnik na serce#Losowa szansa na upuszczenie serca, gdy zostaniesz trafiony"},
	{"220", "Smutne Bomby", "Wybuch łez!#+5 Bomb"},
	{"221", "Klej Kauczukowy", "Odbijające się łzy"},
	{"222", "Antygrawitacja", "↑ 2 Szybkostrzelności#Antygrawitacyjne łzy"},
	{"223", "Piroman", "Wybuchy cię leczą#+5 Bomb"},
	{"224", "Ciało Cricketa", "↑ +1 Szybkostrzelności#↓ -10 Zasięgu#Łzy rozdzielają się na 4 przy trafieniu#Powstałe łezki zadają połowiczne obrażenia"},
	{"225", "Pokraka", "Szansa na upuszczenie Serca Duszy/Czarnego Serca, gdy zostaniesz trafiony#Szansa na stworzenie połówki serca przy zabiciu wroga"},
	{"226", "Czarny Lotos", "↑ {{Heart}} +1 Health#{{SoulHeart}} +1 Soul Heart#{{BlackHeart}} +1 Black Heart"}, -- Black Lotus, !!MODULAR!!
	{"227", "Świnka Skarbonka", "+3 Monety#Upuszczasz 1-2 monet, gdy zostaniesz trafiony#Dozorca/Keeper upuszcza 0-1 monet"},
	{"228", "Perfumy Mamy", "Szana na straszące wrogów strzały#↑ +1 Szybkostrzelności"},
	{"229", "Płuco Monstro", "Łzy muszą być teraz naładowane i wystrzelone w stylu strzelby"},
	{"230", "Abaddon", "↑ +1.5 Obrażeń#↑ +0.2 Prędkości#Straszące wrogów łzy#↓ Usuwa wszystkie czerwone serca#+6 Czarnych Serc"},
	{"231", "Kulka Smoły", "Szansa na wystrzelenie spowalniającyh łez#Zostawiasz spowalniającą maź#"},
	{"232", "Stop-Er", "Permanentny efekt spowolnienia#(aktywowany przy zostaniu trafionym)#↑ +0.3 Prędkości"},
	{"233", "Tycia Planeta", "Łzy orbitują wokół ciebie#↑ +7.0 Wysokość lotu łez#Widmowe łzy"},
	{"234", "Zarażenie 2", "Tworzy pająki, gdy zabijasz wrogów"},
	{"235", "", "<przedmiot nie istnieje>"},
	{"236", "Pałeczka Okrężnicy", "Dotykiem zamieniasz przeciwników w kupy"},
	{"237", "Dotyk Śmierci", "↑ {{Damage}} +1.5 Damage#↑ {{Tearsize}} x2 Tear size#↓ {{Tears}} -0.3 Tears#Piercing tears"}, -- Death's Touch, !!MODULAR!!
	{"238", "Fragment Klucza 1", "!!! Kawałek klucza do drzwi Mega Szatana!#Pojawia się więcej Pokoi Anioła{{AngelRoom}}"},
	{"239", "Fragment Klucza 2", "!!! Kawałek klucza do drzwi Mega Szatana!#Pojawia się więcej Pokoi Anioła{{AngelRoom}}"},
	{"240", "Terapia Eksperymentalna", "↑ Increases 4 random stats#↓ Decreases 2 random stats"}, -- Experimental Treatment, !!MODULAR!!
	{"241", "Kontrakt Spod Ziemi", "Podwaja wszystkie Zasoby#Brak efektu w Trybie Chciwym/Greed Mode"},
	{"242", "Niesława", "50% Szans na zablokowanie wrogich łez"},
	{"243", "Tarcza Trójcy", "Tarcza blokująca łzy"},
	{"244", "Tech.5", "Losowo strzelasz laserowym typem łez"},
	{"245", "20/20", "Podwaja wszystkie twoje strzały"},
	{"246", "Niebieska Mapa", "Ujawnia Sekretne Pokoje"},
	{"247", "BFFS!", "Twoi Sojusznicy zadają podwójne obrażenia"},
	{"248", "Jeden Umysł", "Niebieskie Pająki/Muchy zadają podwójne obrażenia"},
	{"249", "Istnieją Możliwości", "2 Przedmioty za pokonanie Bossa zamiast 1#!!! Tylko jeden może być wzięty"},
	{"250", "Druga Bomba Gratis", "Podwaja wszystkie pojawienia się bomb"},
	{"251", "Talia Startowa", "Możesz trzymać 2 Karty#Zamienia wszystkie Pigułki w Karty"},
	{"252", "Torebeczka", "Możesz trzymać 2 Pigułki#Zamienia wszystkie Karty w Pigułki"},
	{"253", "Magiczny Strup", "↑ {{Heart}} +1 Health#↑ {{Luck}} +1 Luck"}, -- Magic Scab, !!MODULAR!!
	{"254", "Zakrzep", "↑ {{Damage}} +1 Damage for the left eye#↑ {{Range}} +5 Range for the left eye#↑ +0.5 Tear height"}, -- Blood Clot, !!MODULAR!!
	{"255", "Wkręt", "↑ {{Tears}} +0.5 Tears#↑ {{Shotspeed}} +0.2 Shot speed"}, -- Screw, !!MODULAR!!
	{"256", "Gorące Bomby", "Płonące bomby#+5 Bomb"},
	{"257", "Płomienny Umysł", "Szansa na wybuchowe łzy#Łzy zapalają wrogów"},
	{"258", "Missing No.", "Przelosowuje twoje przedmioty i statystyki przy podniesieniu oraz z każdą zmianą piętra"},
	{"259", "Ciemna Materia", "↑ +1 Obrażeń#Szansa na wystrzelenie straszących strzałów"},
	{"260", "Czarna Świeca", "Odporność na klątwy#+1 Czarne Serce#Zwiększona szansa na Pokój Diabła{{DevilRoom}}/Anioła{{AngelRoom}}"},
	{"261", "Wytrzeszcz", "↑ +100% Obrażeń#↓ Obrażenia spadają wraz z przebytym dystansem łez"},
	{"262", "Zgubiona Kartka 2", "+1 Czarne Serce#Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju"},
	{"263", "", "<przedmiot nie istnieje>"},
	{"264", "Mądra Muszka", "Orbituje#Atakuje wrogów, gdy zostaniesz trafiony#Zadaje 22.5 obrażeń na sekundę"},
	{"265", "Suchelec", "Ma 10% szans na zranienie wszystkich wrogów w pokoju, gdy zostanie trafiony łzą przeciwnika"},
	{"266", "Soczysty Wór", "Zostawia spowalniającą maź#Tworzy 1-2 przyjazne pająki po oczyszczeniu pokoju"},
	{"267", "Robo-Dziecko 2.0", "Strzela laserem#Zadaje 3.5 obrażeń na strzał#Porusza się w kierunku, w którym strzelasz"},
	{"268", "Zgniłe Dziecko", "Tworzy niebieskie muchy, gdy strzelasz"},
	{"269", "Bezgłowe Dziecko", "Zostawia na ziemi maź, zadającą 6 obrażeń na sekundę"},
	{"270", "Pijawka", "Leczy pół serca przy zabiciu wroga#Zadaje 3.2 obrażeń na sekundę"},
	{"271", "Sakiewka Tajemnic", "Co kilka pokoi upuszcza losowe Zasoby"},
	{"272", "DPM", "Przyjazna wybuchowa mucha#Wybuch zadaje 60 Obrażeń"},
	{"273", "Mózg Boba", "Rzucany sojusznik w stylu bomby#Wybuch zadaje 60 Obrażeń"},
	{"274", "Najlepszy Kumpel", "Kiedy zostaniesz trafiony, dostajesz orbitującego sojusznika#Zadaje on 75 obrażeń na sekundę"},
	{"275", "Mały Piekielnik", "Strzela laserem z Ognia Piekielnego{{Collectible118}}"},
	{"276", "Serce Izaaka", "Twoje ciało jest teraz nieśmiertelne#!!! Otrzymujesz obrażenia, gdy Serce zostanie trafione"},
	{"277", "Straszak", "Przyjazny Sojusznik-Duch#Zadaje 4 obrażenia na sekundę"},
	{"278", "Mroczny Przybłęda", "!!! Zamienia:#1,5 Czerwonego serca w 1 Serce Duszy lub Pająka"},
	{"279", "Duży Fan", "Duży, gruby orbitujący Sojusznik#Zadaje 30 obrażeń na sekundę"},
	{"280", "Siostrzyczka Kosarzy", "Losowo tworzy niebieskie pająki w pokoju z wrogami"},
	{"281", "Kumpel Do Bicia", "Sojusznik-przynęta#Wrogowie będą atakować jego"},
	{"282", "Poradnik do Skakania", "Pozwala ci skakać"},
	{"283", "D100", "Przelosowuje wszystkie Zasoby, piedestały i twoje pasywne przedmioty"},
	{"284", "D4", "Przelosowuje wszystkie twoje pasywne przedmioty"},
	{"285", "D10", "Przelosowuje wszystkich przeciwników w pokoju"},
	{"286", "Czysta Karta", "Kopiuje efekt twojej trzymanej karty, nie zużywając jej"},
	{"287", "Księga Tajemnic", "Ujawnia części mapy"},
	{"288", "Pudełko Pająków", "Spawns 1-4 blue spiders"}, -- Box of Spiders, !!MODULAR!!
	{"289", "Czerwona Świeca", "Rzuca czerwony płomień#Płomień zniknie po zadaniu obrażeń 5 razy"},
	{"290", "Słoik", "Może przechować do 4 czerwonych serc"},
	{"291", "Spłuczka!", "!!! Zabija przeciwników-kupy!#Zamienia normalnych przeciwników w kupy"},
	{"292", "Biblia Szatana", "+1 Czarne serce"},
	{"293", "Głowa Krampusa", "Strzela laserem z Ognia Piekielnego{{Collectible118}} w 4 kierunkach"},
	{"294", "Maślana Fasola", "Odrzuca pobliskich przeciwników i strzały#Przy zmianie na inny przedmiot aktywny, po czym podniesieniu tego ponownie, ma 10% szans na zmianę w silniejszy przedmiot Chwila, Co?{{Collectible484}}"},
	{"295", "Cudowne Pudełeczko", "Rani wszystkich wrogów w pokoju twoimi obrażeniami x2#Koszt: 1 moneta{{Coin}}"},
	{"296", "Przetwornik", "!!! Konwertuje:#2 Serca Duszy/Czarne w 1 Czerwone Serce"},
	{"297", "Puszka Pandory", "Upuszcza przedmioty zależnie od piętra:#B1: 2 Serca Duszy#B2: 2 klucze i bomby#C1: 1 Przedmiot z bossa#C2: 2 Serca Duszy + 1 Przedmiot z bossa#D1: 4 Serca Duszy#D2: 20 Monet#W1: 2 Przedmioty z bossów#W2: Biblia#Szeol: 1 Przedmiot Diabła{{DevilRoom}} + Czarne Serce#Katedra: 1 Przedmiot Anioła{{AngelRoom}} + Serce Duszy#Skrzynia: 1 Moneta"},
	{"298", "Odłamek Jednorożca", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot (No contact damage)"}, -- Unicorn Stump, !!MODULAR!!
	{"299", "Byk", "Jesteś szybszy w pokoju z przeciwnikami!#Daje nietykalność gdy jesteś wystarczająco szybki"},
	{"300", "Baran", "↑ +0.25 Prędkości#Dotykanie przeciwników ich rani"},
	{"301", "Rak", "+3 Serca Duszy#Po otrzymaniu obrażeń, każde następne w tym samym pokoju zada połowę obrażeń"},
	{"302", "Lew", "Niszczysz kamienie wchodząc w nie"},
	{"303", "Panna", "Szansa na nietykalność, gdy zostaniesz trafiony#Zamienia negatywne pigułki w pozytywne"},
	{"304", "Waga", "+6 Monet{{Coin}}/Kluczy{{Key}}/Bomb{{Bomb}}#Balansuje twoje statystyki!#!!! Każde następne podniesienie statystyk wpłynie również na pozostałe"},
	{"305", "Skorpion", "{{Poison}} Poison tears"}, -- Scorpio, !!MODULAR!!
	{"306", "Strzelec", "↑ {{Speed}} +0.2 Speed#Piercing tears"}, -- Sagittarius, !!MODULAR!!
	{"307", "Koziorożec", "↑ {{Heart}} +1 Health#↑ {{Speed}} +0.1 Speed#↑ {{Tears}} -1 Tear delay#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +1.5 Range#+1 {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"}, -- Capricorn, !!MODULAR!!
	{"308", "Wodnik", "Zostawiasz za sobą maź#Zadaje ona 6 obrażeń na sekundę"},
	{"309", "Ryby", "↑ Większa Szybkostrzelność#Odrzucające łzy"},
	{"310", "Maskara Ewy", "↑ {{Damage}} x2 Damage multiplier#↓ {{Tears}} x0.5 Tears multiplier#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Eve's Mascara, !!MODULAR!!
	{"311", "Cień Judasza", "Po śmierci odradzasz się jako Czarny Judasz#↑ (Obrażenia x 2)"},
	{"312", "Kokardka Madzi", "↑ +1 Serce#Wszystkie czerwone serca leczą teraz podwójnie"},
	{"313", "Święte Okrycie", "Ignoruje pierwsze otrzymane obrażenia w każdym pokoju"},
	{"314", "Masywne Uda", "↑ +1 Serce#-0.4 Prędkości#Niszczysz kamienie wchodząc w nie"},
	{"315", "Nietypowy Przyciągacz", "Magnetyczne łzy#Wpływa na wrogów, zasoby i drobiazgi"},
	{"316", "Przeklęte Oko", "Ładowalna fala łez#Kiedy ładujesz i zostaniesz trafiony, teleportuje cię do losowego pokoju"},
	{"317", "Tajemnicza Ciecz", "Łzy zostawiają maź#Zadaje ona 30 obrażeń na sekundę"},
	{"318", "Bliźnięta", "Sojusznik trzymający się blisko#Zadaje 6 obrażeń kontaktowych na sekundę"},
	{"319", "Drugie Oko Kaina", "Odbija się po pokoju#Strzela w twoją stronę#Jego obrażenia równe są twoim"},
	{"320", "Jedyny Przyjaciel ???", "Kontrolowana Mucha#Zadaje 5 obrażeń kontaktowych na sekundę"},
	{"321", "Łańcuch Samsona", "Niszcząca kamienie kula na łańcuchu, którą ciągniesz za sobą#Zadaje 10.7 obrażeń kontaktowych na sekundę"},
	{"322", "Mały Naśladowca", "Kopiuje efekt jednego z twoich sojuszników#Zadaje ich obrażenia x2"},
	{"323", "Łzy Izaaka", "Wystrzeliwujesz 8 łez we wszystkie kierunki#Ładuje się podczas strzelania"},
	{"324", "Niezdefiniowane", "Teleportuje cię do:#{{TreasureRoom}}Pokoju Skarbów, {{SecretRoom}}{{SuperSecretRoom}}Sekretu lub Pokoju Error"},
	{"325", "Nożyczki", "Odcina ci głowę#Twoja głowa od teraz stoi w miejscu#Kontrolujesz swoje ciało oddzielnie"},
	{"326", "Tchnienie Życia", "Trzymanie spacji do wyczerpania ładunków da ci nieśmiertelność#!!! Nie trzymaj za długo!"},
	{"327", "Polaroid", "Nieśmiertelność, gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak"},
	{"328", "Negatyw", "Gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak, ranisz wszystkich wrogów w pokoju"},
	{"329", "Technika Ludovica", "Kontrolowana łza"},
	{"330", "Mleko Sojowe", "↑ {{Tears}} x4 Tears multiplier#↑ {{Tears}} -2 Tear delay#↓ {{Damage}} x0.2 Damage multiplier#↓ {{Tearsize}} x0.5 Tear size"}, -- Soy Milk, !!MODULAR!!
	{"331", "Bóstwo", "Naprowadzane łzy#↑ +0.5 Obrażeń#↑ +1.2 Zasięgu#↓ -0.3 Szybkostrzelności#↓ -0.3 Prędkości Strzałów#↑ +0.8 Wysokości lotu łez#Łzy otrzymują aurę, zadającą obrażenia"},
	{"332", "Łachmany Łazarza", "Po śmierci odradzasz się jako Łazarz (Powstały)"},
	{"333", "Umysł", "Odkrywa całą mapę"},
	{"334", "Ciało", "↑ {{Heart}} +3 Health"}, -- The Body, !!MODULAR!!
	{"335", "Dusza", "+2 Serca Duszy#Dostajesz aurę odpychającą od ciebie wrogów oraz pociski"},
	{"336", "Martwa Cebula", "↑ {{Range}} +0.25 Range#↑ {{Tearsize}} x1.5 Tear size#↓ -0.5 Tear height#↓ {{Shotspeed}} -0.4 Shot speed#Piercing + spectral tears"}, -- Dead Onion, !!MODULAR!!
	{"337", "Zepsuty Zegarek", "Spowalnia lub przyspiesza co czwarty pokój"},
	{"338", "Bumerang", "Rzucany bumerang#Przy trafieniu wroga ogłusza go i zadaje mu twoje obrażenia x2#Może zbierać zasoby"},
	{"339", "Agrafka", "↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#↑ {{Shotspeed}} +0.16 Shot speed#{{BlackHeart}} +1 Black Heart"}, -- Safety Pin, !!MODULAR!!
	{"340", "Kofeina w Kapsułce", "↑ {{Speed}} +0.3 Speed#↑ Size down#{{Pill}} Spawns a random pill"}, -- Caffeine Pill, !!MODULAR!!
	{"341", "Rozdarte Zdjęcie", "↑ {{Tears}} +0.7 Tears#↑ {{Shotspeed}} +0.16 Shot speed"}, -- Torn Photo, !!MODULAR!!
	{"342", "Niebieściak", "↑ {{Heart}} +1 Health#↑ {{Tears}} +0.7 Tears#↓ {{Shotspeed}} -0.16 Shot speed"}, -- Blue Cap, !!MODULAR!!
	{"343", "Klucz od Mieszkania", "↑ {{Luck}} +1 Luck#{{SoulHeart}} +1 Soul Heart#{{Key}} Spawns 2 keys"}, -- Latch Key, !!MODULAR!!
	{"344", "Pudełko Zapałek", "{{BlackHeart}} +1 Black Heart#{{Bomb}} Spawns 3 bombs"}, -- Match Book, !!MODULAR!!
	{"345", "Synthol", "↑ {{Damage}} +1 Damage#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- Synthoil, !!MODULAR!!
	{"346", "Przekąska", "↑ {{Heart}} +1 Health"}, -- A Snack, !!MODULAR!!
	{"347", "Diplopia", "Duplikuje piedestały / zasoby w pokoju"},
	{"348", "Placebo", "Kopiuje efekt twojej trzymanej pigułki"},
	{"349", "Drewniany Pieniążek", "50% szansy na stworzenie losowej monety"},
	{"350", "Wstrząs Toksyczny", "Przy wejściu do pokoju zatruwa wszystkich obecnych przeciwników"},
	{"351", "Mega Fasola", "Zamraża wrogów w pokoju#Zadaje 5 obrażeń i zatruwa pobliskich przeciwników#Wysyła falę kolców#!!! Może być użyte do otwarcia {{SecretRoom}}Sekretnych Pokoi"},
	{"352", "Szklana Armata", "↓ Redukuje twoje zdrowie do pół serca#Strzela wielką widmową, penetrującą, łzą ((Obrażenia+1) X 10)"},
	{"353", "Bombowy Chłopak", "+5 Bomb#Bomby będą wybuchać w kształcie krzyżyka"},
	{"354", "Przysmak z Niespodzianką", "↑ {{Heart}} +1 Health#{{Trinket}} Spawns a trinket"}, -- Crack Jacks, !!MODULAR!!
	{"355", "Perły Mamy", "↑ {{Range}} +1.25 Range#↑ +0.5 Tear height#↑ {{Luck}} +1 Luck"}, -- Mom's Pearls, !!MODULAR!!
	{"356", "Akumulator Samochodowy", "Sprawia, że twój przedmiot aktywny aktywuje się podwójnie"},
	{"357", "Pudełko z Przyjaciółmi", "Duplikuje twoich sojuszników na jeden pokój"},
	{"358", "Czaruś", "Strzelasz równocześnie dwiema łzami na skos, jak przy pigułce {{Pill}}JESTEŚ CZARODZIEJEM?#Widmowe łzy"},
	{"359", "Stalowe Gwoździe", "↑ +1.5 Obrażeń#Zwiększa odrzut"},
	{"360", "Inkub", "Strzela takimi samymi łzami jak ty, w odniesieniu do obrażeń, statystyk czy efektów"},
	{"361", "Nagroda od Losu", "Strzela łzami z takimi samymi obrażeniami, jak ty"},
	{"362", "Skrzyneczka", "Tworzy losowy zasób co kilka pokoi"},
	{"363", "Zaprzysiężony Obrońca", "Orbitujący sojusznik#Zadaje 105 obrażeń kontaktowych na sekundę#Blokuje i przyciąga pociski#Zablokowanie 10 łez w jednym pokoju da ci wieczne serce"},
	{"364", "Strefa Przyjaźni", "Orbitujący sojusznik#Zadaje 45 obrażeń kontaktowych na sekundę"},
	{"365", "Utracona Mucha", "Porusza się wzdłuż ścian/przeszkód w pokoju#Zadaje 105 obrażeń kontaktowych na sekundę"},
	{"366", "Bomby Rozpryskowe", "+5 bomb#Przy wybuchu twoje bomby rozpadają się na 2-4 mniejsze"},
	{"367", "Lepkie Bomby", "+5 bomb#Gdy bomba zabije przeciwnika, tworzy niebieskie pająki#Twoje bomby lepią się do wrogów"},
	{"368", "Łzawienie", "Strzelanie w jednym kierunku zwiększa szybkostrzelność maksymalnie o 200%"},
	{"369", "Kontinuum", "↑ +2.25 Zasięgu#↑ +1.5 Wysokości lotu łez#Łzy przechodzą przez ściany i wylatują z drugiej strony"},
	{"370", "Pan Laleczka", "↑ {{Tears}} +0.7 Tears#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height#{{UnknownHeart}} Spawns 3 random hearts"}, -- Mr. Dolly, !!MODULAR!!
	{"371", "Klątwa Wieży", "Tworzy 6 troll bomb za każdym razem, gdy zostaniesz trafiony#Przedmioty zmieniające bomby mają na to wpływ"},
	{"372", "Energiczne Dziecko", "Losowa szansa na upuszczenie baterii lub zamrożenie przeciwników w pokoju#Szansa na dodanie jednego ładunku do twojego przedmiotu aktywnego"},
	{"373", "Prosto w Cel", "↑ +12.5% obrażeń za każdą łzę, która trafi przeciwnika#(max. +100%)"},
	{"374", "Święta Światłość", "Losowa szansa na wystrzał Świętej łzy, która tworzy słup światła przy trafieniu#Promień światła zadaje 4x twoje obrażenia"},
	{"375", "Czapka Żywiciela", "20% szans na zablokowanie wrogiej łzy#Odporność na wybuchy/nadepnięcia Mamy i Szatana"},
	{"376", "Uzupełniacz", "Tworzy 3 losowe Zasoby#Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz"},
	{"377", "Pękający Wór", "Wrogie pająki już cię nie atakują ani nie zadają ci obrażeń kontaktowych"},
	{"378", "Numer Dwa", "Ciągłe strzelanie przez 3 sekundy upuści Dupną Bombę"},
	{"379", "Podwójna Źrenica", "↑ {{Tearsize}} x2 Tear size#Spectral tears"}, -- Pupula Duplex, !!MODULAR!!
	{"380", "Płać By Grać", "+5 monet#Otwierasz drzwi monetami, zamiast kluczami"},
	{"381", "Błogosławieństwo Edena", "↑ +0.7 Szybkostrzelności#Na początku następnej rozgrywki dostajesz losowy przedmiot"},
	{"382", "Kula Przyjaźni", "Rzucona w przeciwnika nie-bossa złapie go#Następny rzut wypuści złapanego przeciwnika, który będzie walczyć dla ciebie"},
	{"383", "Detonator Łez", "Detonuje wszystkie łzy znajdujące się na ekranie, a każda z nich rozpada się na 6 kolejnych łez"},
	{"384", "Tyci Gurdy", "Wystrzeliwuje i ślizga się po pokoju#Zadaje 90 obrażeń kontaktowych na sekundę"},
	{"385", "Bumbo", "Zjada pobliskie monety#Co każde 6 monet zwiększa swój poziom, poza poziomem 4, który zajmuje mu 12 monet#Poziom 2: może upuścić losowy zasób#Poziom 3: Strzela w tym samym kierunku, co ty#Poziom 4: Zamiast strzelać goni wrogów. Losowo upuszcza bomby#Po Poziomie 4: dalej zjada monety i upuszcza losowe zasoby"},
	{"386", "D12", "Przelosowuje wszystkie obiekty-przeszkody, w inny losowy typ obiektu (np. kupę, wazony, TNT, grzyby itp.)"},
	{"387", "Kadzielnica", "Tworzy wielką aurę światła, która spowalnia przeciwników i ich pociski"},
	{"388", "Klucznik", "Zbiera klucze, w zamian dając losowe skrzynki"},
	{"389", "Wór na Runy", "Upuszcza losową runę co 5-6 pokoi"},
	{"390", "Serafin", "Strzela łzami z Najświętszego Serca{{Collectible182}}#Zadaje 10 obrażeń na strzał"},
	{"391", "Zdrada", "Przy każdym otrzymaniu przez ciebie obrażeń, wszyscy przeciwnicy w pokoju zostają oczarowani"},
	{"392", "Zodiak", "Dostajesz efekt losowego znaku zodiaku co każde piętro"},
	{"393", "Pocałunek Węża", "Losowa szansa na wystrzelenie trujących łez#Trujesz wrogów dotykiem#Zatruci wrogowie mogą upuścić czarne serca przy śmierci"},
	{"394", "Oznaczony", "Twoje strzały lecą w kierunku położonego na ziemi celownika, którym sterujesz#↑ +0.7 Szybkostrzelności#↑ +3.15 Zasięgu#↑ +0.3 Wysokości lotu łez"},
	{"395", "Tech X", "Strzelasz laserowym kręgiem, który możesz ładować#Krąg ten leci przez cały pokój"},
	{"396", "Przekrojowa Brzytwa", "Tworzy do dwóch portali, między którymi możesz się przemieszczać#Możesz je zostawić w innych pokojach"},
	{"397", "Wiązka Holownicza", "Łzy podążają za słupem światła, dopasowując się do zmiany kierunku#↑ +0.5 Szybkostrzelności#↑ +5.25 Zasięgu#↑ +0.16 Prędkości Strzałów#↑ +0.5 Wysokości lotu łez"},
	{"398", "Święty Grzyb", "Łzy mogą zmniejszyć wrogów#Zmniejszeni wrogowie mogą być zadeptani na śmierć"},
	{"399", "Paszcza z Pustki", "↑ +1.0 Obrażeń#Po ciągłym strzelaniu przez 3 sekundy, na twojej głowie pojawi się czerwony krzyż. Po zaprzestaniu strzelania, tworzy krąg z czarnego lasera#Wrogowie zabici czarnym kręgiem mają szansę na upuszczenie Czarnego Serca"},
	{"400", "Włócznia Przeznaczenia", "Pojawia przed tobą włócznię#Zadaje twoje obrażenia x2#Szansa na straszenie przeciwników przy kontakcie"},
	{"401", "Explosivo", "Szansa na wystrzelenie czegoś na wzór klejącej się bomby"},
	{"402", "Chaos", "Przedmioty na piedestałach będą teraz wybierane z losowych puli przedmiotów#Tworzy 1-6 losowych zasobów"},
	{"403", "Spider Mod", "Widzisz obrażenia twoich łez oraz paski zdrowia przeciwników#Nakłada losowy efekt przy kontakcie z wrogiem#Losowo upuszcza baterie"},
	{"404", "Pierdzący Dzieciak", "Blokuje pociski#Pierdzi, gdy zostanie trafiony. Ten pierd może przeciwników odrzucić, zatruć lub oczarować"},
	{"405", "GB Bug", "Lata po pokoju#Zadaje 120 obrażeń na sekundę i nakłada losowe efektu"},
	{"406", "D8", "Przelosowuje twoje statystyki#Wpływa jedynie na obrażenia, szybkostrzelność, zasięg i prędkość"},
	{"407", "Czystość", "↑ Zwiększa jedną z twoich statystyk zależnie od koloru aury#Dostajesz nową aurę po otrzymaniu obrażeń#{{ColorRed}}Czerwona{{CR}} =#{{Blank}} +4.0 Obrażeń#{{ColorBlue}}Niebieska{{CR}} =#{{Blank}} -4 Opóźnienia wystrzału#{{ColorYellow}}Żółta{{CR}} = +0.5 Prędkości#{{ColorOrange}}Pomarańczowa{{CR}} =#{{Blank}} +7.5 Zasięgu,#{{Blank}} +1 Wysokości lotu łez"},
	{"408", "Athame", "Po otrzymaniu obrażeń, wokół ciebie pojawi się krąg z czarnego lasera#Zabici nim wrogowie mogą upuścić czarne serce"},
	{"409", "Puste Naczynie", "+2 Czarne Serca#Gdy nie posiadasz czerwonych serc, otrzymujesz latanie i szansę na uzyskanie tarczy"},
	{"410", "Złe Oko", "Szansa na wystrzelenie oka, które leci przez cały ekran strzelając łzami w tym samym kierunku, co ty"},
	{"411", "Żądna Krew", "↑ +0.5 Obrażeń za każdego zabitego przeciwnika w tym pokoju#Maksymalnie +5 Obrażeń po 10 zabiciach"},
	{"412", "Poczęcie Kambiona", "Po otrzymaniu obrażeń 15 razy, dostajesz na stałe demonicznego sojusznika#Maksymalnie 4 sojuszników"},
	{"413", "Niepokalane Poczęcie", "Po podniesieniu 15 serc, dostajesz na stałe anielskiego sojusznika#Maksymalnie 5 sojuszników"},
	{"414", "Więcej Możliwości", "2 przedmioty zamiast 1 w Pokoju Skarbów{{TreasureRoom}}#Możesz podnieść tylko 1"},
	{"415", "Korona Światłości", "+2 Serca Duszy#↑ Obrażenia X 2, jeśli nie posiadasz żadnych rannych, czerwonych zasobników#Bez względu na zasobniki, wyłączy się na pokój przy otrzymaniu obrażeń"},
	{"416", "Głębokie Kieszenie", "Pozwala ci nosić na raz dwie karty/pigułki/runy"},
	{"417", "Sukkub", "Lata po pokoju mając na sobie raniącą aurę, która zadaje 129% twoich obrażeń na sekundę#↑ +50% obrażeń, gdy stoisz w tej aurze"},
	{"418", "Ciasto Owocowe", "Przy każdym strzale otrzymujesz inny efekt łez"},
	{"419", "Teleport 2.0", "Teleportuje cię do innego, losowego pokoju w którym jeszcze nie byłeś#Kolejność: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> Pokój-Error"},
	{"420", "Czarny Proszek", "Poruszając się na wzór koła, stworzysz na ziemi symbol pentagramu, który zadaje 10 obrażeń na jeden tick czasu"},
	{"421", "Fasola Nerkowata", "Nakłada efekt oczarowania na wszystkich pobliskich przeciwników#{{Blank}} oraz zadaje im 5 obrażeń"},
	{"422", "Świecąca Klepsydra", "Cofa czas do poprzedniego pokoju,#{{Blank}} wracając cię do tego samego stanu, w jakim wtedy byłeś"},
	{"423", "Okrąg Ochrony", "Masz wokół siebie dużą otoczkę, która zadaje twoje obrażenia przy kontakcie z wrogiem#{{Blank}} co sekundę#Szansa na odbicie wrogiego pocisku"},
	{"424", "Sakiewkowa Głowa", "Zasoby mają 33% szans na zmianę w sakiewkę#Tworzy sakiewkę"},
	{"425", "Lampka Nocna", "Tworzy przed tobą słup światła, który spowalnia wrogów i pociski znajdujące się w nim"},
	{"426", "Fan z Obsesją", "Mimics Isaac's exact movement on a 3 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan, !!MODULAR!!
	{"427", "Górnik", "Tworzy przesuwalną beczkę z TNT#Użyte drugi raz w pokoju z pojawioną beczką, zdalnie ją wysadzi"},
	{"428", "Piżamka", "{{HealingRed}} Full health#{{SoulHeart}} +4 Soul Hearts"}, -- PJs, !!MODULAR!!
	{"429", "Głowa Chciwca", "Wrogowie mają 5% szans na upuszczenie Centa, gdy zostaną trafieni twoim pociskiem"},
	{"430", "Tata-Mucha", "Śledzi każdy twój ruch z sekundowym opóźnieniem#Strzela w najbliższych wrogów łzami, zadającymi twoje obrażenia"},
	{"431", "Wielowymiarowe Dziecko", "Śledzi każdy twój ruch z 2-sekundowym opóźnieniem#Łzy, które przez nie przelecą rozdzielą się na dwie i przyspieszą"},
	{"432", "Brokatowe Bomby", "+5 bomb#Bomby mogą upuścić losowy zasób przy wybuchu"},
	{"433", "Mój Cień", "Za każdym razem gdy otrzymasz obrażenia, nakłada strach na wszystkich wrogów#{{Blank}} i tworzy przyjazny cień, szarżujący na przeciwników#Zadaje on 5 obrażeń na sekundę"},
	{"434", "Słój na Muchy", "Za każdym razem gdy zabijesz przeciwnika, niebieska mucha zostanie dodana do Słoika#Maksymalnie 20 much#Użycie przedmiotu wypuści wszystkie muchy"},
	{"435", "Mały Loki", "Wystrzeliwuje 4 łzy na krzyż#Zadaje 3.5 obrażeń na strzał"},
	{"436", "Mleko!", "Po otrzymaniu obrażeń zwiększa się twoja Szybkostrzelność na resztę pokoju"},
	{"437", "D7", "Odradza wszystkich przeciwników w pokoju#Pozwala na kilkukrotne zdobycie nagród za oczyszczenie pokoju#!!! Użyte na walce z Chciwością, może przelosować pokój w Sklep{{Shop}}"},
	{"438", "Smoczek", "↑ {{Tears}} +0.75 Tears#↑ Size down#{{SoulHeart}} +1 Soul Heart"}, -- Binky, !!MODULAR!!
	{"439", "Pudełko Mamy", "Tworzy losowy drobiazg{{Trinket}}#↑ +1 Szczęścia, gdy to trzymasz#Gdy to trzymasz, podwaja efekty drobiazgów"},
	{"440", "Kamień Nerkowy", "Losowo w trakcie strzelania przestaniesz strzelać, po czym wypuścisz serię pocisków i kamień nerkowy#↓ -0.2 Prędkości#↓ -17 Zasięgu#↑ +2.0 Wysokości lotu łez"},
	{"441", "Mega Strzał", "Przez 15 sekund strzelasz wielkim laserem Mega Szatana#Efekt utrzymuje się przy zmianie pokoju czy piętra"},
	{"442", "Korona Księcia Mroku", "!!! Mając 1 pełne, czerwone serce:#↑ +1.5 Zasięgu#↑ +0.7 Szybkostrzelności#↑ +0.2 Prędkości Strzałów#(Nie działa na postaciach bez czerwonych serc)"},
	{"443", "Jabłko!", "Losowo strzelasz żyletkami, które zadają 400% obrażeń#↑ +0.3 Szybkostrzelności"},
	{"444", "Ołówek", "Co 15 strzałów, wystrzeliwujesz chmarę łez#Każda wystrzelona w ten sposób łza zadaje podwójne obrażenia"},
	{"445", "Psi Ząb", "↑ +0.3 Obrażeń#↑ +0.1 Prędkości#Słyszysz wycie w pomieszczeniu, obok Sekretnego Pokoju#Słyszysz szczekanie w pokoju, w którym znajduje się szczelina"},
	{"446", "Martwy Ząb", "W trakcie strzelania dostajesz zieloną aurę, która zatruwa przeciwników#Ta trucizna zadaje twoje obrażenia"},
	{"447", "Uporczywa Fasola", "Tworzy chmurkę smrodu co 7.5 sekund, gdy strelasz bez przerwy#Chmura ta zadaje 3.5 obrażeń, 5 razy#{{Blank}} na sekundę#Chmura utrzymuje się 15 sekund#Możesz nią poruszać, strzelając w nią"},
	{"448", "Kawałek Szkła", "Gdy otrzymasz obrażenia, masz szansę na dostanie ↑ +5 Zasięgu + zostawiasz za sobą krawą maź, albo tworzysz czerowne serce"},
	{"449", "Metalowa Płyta", "+1 Serce Duszy#25% szans na odbicie wrogiego pocisku, zmieniając go przy tym#{{Blank}} w ogłuszający"},
	{"450", "Chciwe Oko", "Co 20 strzałów, wystrzeliwujesz monetę zmieniającą przeciwników w złoto#Kosztuje cię to 1 monetę#Trafieni przeciwnicy upuszczają monetę"},
	{"451", "Obrus do Tarota", "Przy podniesieniu upuszcza losową#{{Blank}} kartę {{Card}} lub runę {{Rune}}#Podwaja efekt użytej karty"},
	{"452", "Żylaki", "Gdy otrzymasz obrażenia, wystrzeliwujesz 10 łez w kręgu#{{Blank}} wokół ciebie#Łzy te zadają 125% twoich obrażeń"},
	{"453", "Złamanie Otwarte", "Kościane łzy#Po trafieniu w cokolwiek, Łzy rozpadają się#{{Blank}} na 1-3 mniejsze#{{Blank}} odłamki kości#↑ +1.5 Zasięgu#↑ +1.0 Wysokości lotu łez"},
	{"454", "Polidaktylia", "Możesz trzymać dwie karty, runy czy pigułki#Przy podniesieniu tworzy losową kartę, pigułkę lub runę"},
	{"455", "Zgubiona Moneta Taty", "↑ +1.5 Zasięgu#Tworzy szczęśliwą monetę"},
	{"456", "Spleśniały Chleb", "↑ {{Heart}} +1 Health"}, -- Moldy Bread, !!MODULAR!!
	{"457", "Stożkogłowy", "+1 Serce Duszy#20% Szans na zignorowanie obrażeń"},
	{"458", "Pępek", "Przy podniesieniu tworzy losowy drobiazg {{Trinket}}#Dodaje 1 miejsce na drobiazgi"},
	{"459", "Zapalenie Zatok", "Lepkie, trujące Łzy#Zadaje twoje obrażenia co sekundę#Przykleja się do wroga, aż ten umrze#{{Blank}} lub minie 60 sekund"},
	{"460", "Jaskra", "Szansa na wystrzał ogłuszających łez"},
	{"461", "Parazytoid", "Szansa na strzał jajem#Tworzy spowalniającą maź przy trafieniu#Tworzy niebieskiego pająka lub muchę przy trafieniu"},
	{"462", "Oko Beliala", "↑ +1.5 Zasięgu#↑ +1.0 Wysokości lotu łez#Dostajesz penetrujące łzy#Po trafieniu pierwszego wroga, łza zadaje podwójne obrażenia i dostaje efekt naprowadzania"},
	{"463", "Kwas Siarkowy", "↑ +0.3 Obrażeń#Szansa na niszczenie kamieni i otwarcie drzwi twoimi łzami"},
	{"464", "Glif Równowagi", "+2 Serca Duszy#Mistrzowscy przeciwnicy częściej upuszczają zasoby"},
	{"465", "Gałka Analogowa", "↑ +0.3 Szybkostrzelności#Pozwala strzelać ci w dowolnym kierunku"},
	{"466", "Zakażenie", "Pierwszy zabity wróg w pokoju wybuchnie i zarazi pobliskich przeciwników"},
	{"467", "Paluch!", "Nieprzerwanie zadaje 10% twoich obrażeń przeciwnikom, na których wskazujesz"},
	{"468", "Cień", "Śledzi każdy twój ruch z sekundowym opóźnieniem#Zadaje 30 obrażeń kontaktowych na sekundę"},
	{"469", "Depresja", "Zostawia za sobą maź#Maź ta zadaje 6 obrażeń na sekundę#Przy dotknięciu wroga może stworzyć słup Świętej Światłośći {{Collectible374}}"},
	{"470", "Hushy", "Lata po pokoju#Zadaje obrażenia kontaktowe#Nie porusza się, gdy strzelasz#Blokuje pociski, gdy jest nieruchomy"},
	{"471", "Tyci Monstro", "Ładowany strzał na wzór strzelby#(Podobnie jak#{{Blank}} Płuco Monstro {{Collectible229}})#Każda łza zadaje 3.5 obrażeń"},
	{"472", "Dziecięcy Król", "Podążają za nim inni sojusznicy#Nie porusza się, gdy strzelasz#Gdy przestaniesz strzelać, teleportuje się do ciebie"},
	{"473", "Duży Chubby", "Powoli szarżuje przed siebie#Zadaje 40.5 obrażeń kontaktowych na sekundę"},
	{"474", "Migdałek", "Blocks enemy projectiles"}, -- Tonsil, !!MODULAR!!
	{"475", "Plan C", "Zadaje 9,999,999 obrażeń wszystkim przeciwnikom w pokoju i zabija cię 3 sekundy później"},
	{"476", "D1", "Duplikuje 1 losowy zasób w obecnym pokoju"},
	{"477", "Pustka", "!!! Użyta, 'pożera' wszystkie przedmioty na piedestałach w pokoju#Przedmiot aktywny: Jego efekt zostanie dodany do efektu Pustki (Nakładając je na siebie)#↑ Przedmiot pasywny: Małe ulepszenie losowej statystyki"},
	{"478", "Pauza", "Zamraża wszystkich wrogów w pokoju, dopóki nie zaczniesz strzelać#Dotknięcie zamrożonego wroga cię zrani#Wrogowie się odmrożą po 30 sekundach"},
	{"479", "Wytapiacz", "Zjadasz swój drobiazg, zyskując na stałe jego efekt#Pojawia się więcej drobiazgów {{Trinket}}"},
	{"480", "Kompost", "Zmienia zasoby w niebieskie muchy lub pająki#Podwaja twoją obecną ilość niebieskich much/pająków#Tworzy 1 niebieską muchę lub pająka, gdy nie masz żadnych"},
	{"481", "Kopacz Danych", "Przy użyciu zwiększa bądź zmniejsza losowe statystyki#Losowe łzy w obecnym pokoju#Psuje wyświetlane sprite'y i muzykę"},
	{"482", "Klikacz", "Zmienia cię w inną postać#Usuwa ostatni przedmiot, jaki zdobyłeś"},
	{"483", "Mama Mega!", "Wpływa na całe piętro#Wysadza wszystkie obiekty#Zadaje 200 obrażeń wszystkim przeciwnikom#Otwiera:#drogę na Boss Rush#drzwi do Husha#Sekretne Pokoje"},
	{"484", "Czekaj, Co?", "Przy użyciu odpycha przeciwników i tworzy falę kamieni#Może otwierać pokoje i niszczyć kamienie"},
	{"485", "Skrzywiony Pieniążek", "50% szans na podwojenie przedmiotów, zasobów i skrzynek#{{Blank}} w pokoju#50% szans usunięcie przedmiotów/zasobów w pokoju i stworzenie#{{Blank}} 1 monety"},
	{"486", "Tępa Żyletka", "Rani cię, bez zadawania ci obrażeń#Może być użyta do aktywowania efektów przedmiotów"},
	{"487", "Obieraczka do Ziemniaków", "Usuwa jeden zasobnik na czerwone serce i daje ci ↑ +0.2 Obrażeń i \"Kostkę Mięsa\"{{Collectible73}}"},
	{"488", "Metronom", "Dostajesz efekt losowego przedmiotu w każdym pokoju"},
	{"489", "D Nieskończoność", "Efekt losowej Kości przy każdym użyciu"},
	{"490", "Dusza Edena", "Tworzy 2 losowe przedmioty z puli pokoju, w którym zostanie użyte"},
	{"491", "Kwaśne Dziecko", "Upuszcza losową pigułkę {{Pill}} co 3 pokoje#Użycie pigułki zatruwa wszystkich przeciwników w pokoju"},
	{"492", "EJ, SŁUCHAJ!", "↑ +1 Szczęścia#Wskazuje położenie sekretnych pokoi, kamieni z X oraz szczelin"},
	{"493", "Adrenalina", "Za każdy pusty zasobnik na serce:#↑ +0.2 Obrażeń"},
	{"494", "Drabina Jakuba", "Przy kontakcie,#{{Blank}} łzy tworzą 1-2 iskry elektryczne#Iskry zadają połowę twoich obrażeń"},
	{"495", "wyZionięcie Ducha", "Szansa na wystrzelenie Ognia zamiast łez#Ogień utrzyma się, dopóki nie zada obrażeń 5 razy"},
	{"496", "Eutanazja", "Szansa na wystrzelenie strzykawki#Strzykawki natychmiastowo zabijają zwykłuch przeciwników#W innym przypadku zadają 3x twoje obrażenia"},
	{"497", "Portki Kamuflarzu", "Po wejściu do pokoju wszyscy wrogowie dostają dezorientację i cię nie widzą, dopóki nie zaczniesz strzelać"},
	{"498", "Dualizm", "Tworzy pokoje#{{Blank}} Diabła{{DevilRoom}} i Anioła{{AngelRoom}}#Po wejściu do jednego, drugi zniknie"},
	{"499", "Eucharystia", "{{AngelChance}} 100% chance for Angel Rooms to spawn"}, -- Eucharist, !!MODULAR!!
	{"500", "Sakiewka na Sakiewki", "Tworzy sakiewkę co 5-6 pokoi"},
	{"501", "Przełyk Chciwości", "Dostajesz 1 zasobnik na serca za każde 25 monet#Dozorca / Keeper otrzyma dodatkowe Pieniężne Serca {{CoinHeart}}"},
	{"502", "Spory Pryszcz", "Szansa na strzelenie zadającą podwójne obrażenia łzą, pozostawiającą Maź"},
	{"503", "Mały Róg", "Szansa na wystrzelenie łzy, która natychmiastowo zabija wrogów nie-bossów#Wbieganie we wrogów#{{Blank}} zada im 3.5 obrażeń"},
	{"504", "Brązowy Bobek", "Tworzy muchę-wieżyczkę, strzelającą w przeciwników#Każdy strzał zadaje 2 obrażeń"},
	{"505", "Poke Go", "Szansa na stworzenie Oczarowanego przeciwnika przy wejściu do pokoju z wrogami"},
	{"506", "Nóż w Plecy", "Łzy mogą wywołać u wrogów krwawienie, które co 5 sekund zadaje im obrażenia o wartości 10% ich pełnego zdrowia"},
	{"507", "Ostra Słomka", "Zadaje twoje obrażenia +10% wartości maksymalnego zdrowia przeciwnika#Wpływa na wszystkich wrogów w pokoju#Szansa na upuszczenie połówki serca przy zadawaniu obrażeń"},
	{"508", "Żyletka Mamy", "Orbituje wokół ciebie#Nakłada na wrogów krwawienie, które co 5 sekund zadaje im obrażenia o wartości 10% ich maksymalnego zdrowia#Przy kontakcie zadaje 300% twoich obrażeń na sekundę"},
	{"509", "Przekrwione Oko", "Orbituje wokół ciebie#Strzela łzą w losowym kierunku co 2 sekundy#Zadaje 3.5 obrażeń na łzę#Zadaje 30 obrażeń kontaktowych na sekundę"},
	{"510", "Delirious", "Tworzy przyjazną wersję Delirium na jeden pokój, który przyjmuje formę bossa"},
	{"511", "Wściekła Mucha", "Orbituje wokół losowego wroga, dopóki ten nie umrze#Zadaje 30 obrażeń kontaktowych na sekundę"},
	{"512", "Czarna Dziura", "Rzucana czarna dziura, która wszystko wciąga#Zadaje 0.4 obrażeń na każdy tick czasu#Niszczy pobliskie kamienie#Utrzymuje się 6 sekund"},
	{"513", "Bozo", "↑ +0.1 Obrażeń#+1 Serce Duszy#Losowa szansa na oczarowanie/wystraszenie wroga#Losowa szansa na stworzenie tęczowej kupy, gdy otrzymasz obrażenia"},
	{"514", "Zepsuty Modem", "Sprawia, że losowi wrogowie mają 'lagi' w losowych odstępach czasu, przez co chwilowo stają w miejscu#25% szans na podwojenie nagrody za oczyszczenie pokoju"},
	{"515", "Tajemniczy Prezent", "Tworzy losowy przedmiot z puli obecnego pokoju#Szansa na stworzenie Bryły Węgla{{Collectible132}} lub Kupy{{Collectible36}}"},
	{"516", "Zraszacz", "Tworzy Zraszacz, który obraca się w stylu koła, strzelając łzami we wszystkie kierunki"},
	{"517", "Szybkie Bomby", "+7 Bomb#Pozwala ci bardzo szybko stawiać bomby na ziemi"},
	{"518", "Kumpel z Pudełka", "Sojusznik o wyglądzie losowego Dziecka z trybu kooperacji#Losowy efekt łez#Losowy co każde piętro"},
	{"519", "Tyci Delirium", "Sojusznik, który zmienia się w innych losowych sojuszników co 10 sekund"},
	{"520", "Kable Rozruchowe", "+1 ładunek dla twojego przedmiotu aktywnego co każde 15 zabitych wrogów"},
	{"521", "Kupon", "Użyte sprawia, że losowy przedmiot w Sklepie{{Shop}} lub#{{Blank}} Pokoju Diabła{{DevilRoom}} stanie się darmowy"},
	{"522", "Telekineza", "Pobliskie pociski wrogów zatrzymują się na 3 sekundy#Następnie są one od ciebie odrzucane#Odnawia się co#{{Blank}} 3 sekundy"},
	{"523", "Pudło do Przeprowadzki", "Użyte, przechowuje wszystkie Zasoby z obecnego pokoju#Użyte ponownie wyrzuci swoją zawartość na ziemię#Możesz w ten sposób przenosić rzeczy między pokojami"},
	{"524", "Technologia Zero", "Łzy są połączone wiązką elektryczną#Elektryczność zadaje obrażenia równe twoim"},
	{"525", "Trąd", "Przy otrzymaniu obrażeń tworzy orbitujący wokół ciebie strzęp blokujący wrogie pociski#Maks. 3 na raz#Strzępy są niszczone. gdy otrzymają zbyt wiele obrażeń"},
	{"526", "7 Pieczęci", "Tworzy małych jeźdźców w roli sojuszników, którzy tworzą własne szarańcze#Jeźdźcy zmieniają się co 10 sekund"},
	{"527", "Pan JA!", "!!! Sojusznik wykonujący twoje polecenia:#Otwiera drzwi & skrzynki, Przynosi przedmioty, Kradnie ze Sklepu / od Diabła, walczy z wrogami, wybucha, oraz naciska przyciski"},
	{"528", "Anielski Pryzmat", "Orbitujący pryzmat#Przy kontakcie z nim, łzy rozdzielają się na 4"},
	{"529", "Pop!", "Łzy zachowują się jak kule od bilarda"},
	{"530", "Lista Śmierci", "Dostaniesz nagrodę za zabicie wrogów w kolejności, w której są oznaczeni czaszką"},
	{"531", "Hemolakria", "Łzy lecą łukiem#Przy kontakcie rozpadają się na wiele mniejszych#↓ Mniejsza Szybkostrzelność#↑ +31% Obrażeń"},
	{"532", "Wygłodniałe Łzy", "Łzy spowalniają wraz z przebytym dystansem#Po zatrzymaniu, eksplodują w 8 mniejszych łez#Strzelając łzami w łzy, możesz je powiększać"},
	{"533", "Trisagion", "Strzelasz białymi promieniami światła"},
	{"534", "Plecak Szkolny", "Pozwala ci trzymać 2 przedmioty aktywne#Przełącz się między nimi wciskając przycisk od upuszczania rzeczy (przytrzymaj jako \"The Forgotten / Zapomniany\")"},
	{"535", "Kocyk", "+1 Serce Duszy#Leczy 1 Czerwone Serce#Dostajesz tarczę po wejściu do pokoju z bossem {{BossRoom}}"},
	{"536", "Ołtarz Ofiarny", "Poświęcasz 1-2 sojuszników i tworzysz przedmiot z puli Pokoju Diabła{{DevilRoom}}#Zmienia twoje niebieskie pająki/muchy w monety"},
	{"537", "Tyci Spewer", "Tworzy losową pigułkę#Sojusznik, który wymiotuje mazią#Typ mazi zmienia się wraz z każdą spożytą pigułką"},
	{"538", "Marmurki", "Tworzy 3 losowe drobiazgi {{Trinket}}#Przy otrzymaniu obrażeń istnieje szansa, że połkniesz drobiazg, zyskując jego efekt na stałe"},
	{"539", "Jajko Niespodzianka", "Tworzy zauroczonego przeciwnika, gdy zostaniesz trafiony#Stworzysz tym silniejszego kolegę, im więcej pokoi wyczyścisz bez otrzymania obrażeń"},
	{"540", "Płaski Kamień", "Łzy odbijają się od podłogi#Zadają obrażenia rozpryskowe przy każdym odbiciu"},
	{"541", "Szpik", "{{Heart}} Spawns 3 Red Hearts#{{EmptyBoneHeart}} +1 Bone Heart"}, -- Marrow, !!MODULAR!!
	{"542", "Przesunięte Żebro", "Orbituje#Odbija pociski"},
	{"543", "Poświęcona Ziemia", "Tworzy białą kupę, gdy zostaniesz trafiony#Biała kupa może blokować obrażenia i ma aurę zwiększającą Szybkostrzelność"},
	{"544", "Spiczaste Żebro", "Unosi się przed tobą#Zadaje obrażenia równe twoim 6 razy na sekundę"},
	{"545", "Księga Umarłych", "Tworzy orbitującą kość lub oczarowanego Bony'ego za każdego zabitego w pokoju wroga"},
	{"546", "Pierścień Taty", "Daje ci aurę, która zamraża przeciwników"},
	{"547", "Papiery Rozwodowe", "+1 Kościane Serce#↑ +0.7 Szybkostrzelności#Tworzy drobiazg#{{Blank}} {{Trinket21}} Tajemnicza Kartka"},
	{"548", "Szczęka", "Sojusznik Bumerangowy#Zadaje 7 obrażeń kontaktowych#Może zbierać dla ciebie zasoby"},
	{"549", "Łamliwe Kości", "Zamienia wszystkie twoje czerwone zasobniki na 6 Kościanych Serc#Utrata kościanego serca wystrzeli Kościane Łzy we wszystkie kierunki oraz da ci na stałe +0.5 Szybkostrzelności"},
	{"550", "Rozwalona Łopata", "Stopa mamy będzie cię ciągle atakować#Użycie wyłączy ataki stopy mamy w tym pokoju#!!! Spróbuj przejść Bossrush z jej pomocą!"},
	{"551", "Rozwalona Łopata", "Druga część rozwalonej łopaty#!!! Użyj na stercie brudu w#{{Blank}} \"Ciemni/Dark Room\""},
	{"552", "Łopata Mamy", "Tworzy zapadnię na następne piętro#!!! Użyj na stercie brudu w#{{Blank}} \"Ciemni/Dark Room\"#!!! Odblokujesz coś czadowego"},
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
	["5.100.322"] = {7, 14}, -- Mongo Baby
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
	["5.100.525"] = {105, 210}, -- Leprosy
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
	{"1", "Połknięty Pieniążek", "Upuszcza 1 monetę, gdy otrzymasz obrażenia"},
	{"2", "Skamieniała Kupa", "50% więcej zasobów z kup"},
	{"3", "Bateria AAA", "-1 potrzebnego ładunku do przedmiotu aktywnego"},
	{"4", "Zepsuty Pilot", "Teleportuje cię w losowe miejsce, kiedy używasz przedmiotu"},
	{"5", "Purpurowe Serce", "Więcej mistrzowskich przeciwników#Większa szansa na pokoje wyzwań z bossami{{BossRushRoom}}"},
	{"6", "Zepsuty Magnes", "Magnes na monety"},
	{"7", "Koralik Różańcowy", "Większa szansa na pokój anioła{{AngelRoom}}#Większa szansa na znalezienie Biblii {{Collectible33}}"},
	{"8", "Kartridż", "Szansa na efekt#{{Blank}} {{Collectible93}} Gamekid, gdy otrzymasz obrażenia"},
	{"9", "Pulsujący Robak", "Pulsujące łzy#Wpływa na hitbox łez"},
	{"10", "Rozhuśtany Robak", "Falujące łzy#↑ +0.3 Szybkostrzelności"},
	{"11", "Pierścienny Robak", "Łzy poruszają się spiralnie z dużą prędkością"},
	{"12", "Płaski Robak", "50% szersze łzy"},
	{"13", "Bon Podarunkowy", "Jeden darmowy przedmiot w sklepie"},
	{"14", "Modzel", "Zapobiega obrażeniom od mazi i kolców"},
	{"15", "Szczęśliwy Kamyczek", "Rozwalanie kamieni tworzy monety"},
	{"16", "Paznokieć Mamy", "Stopa Mamy stąpa na przeciwników co 60 sekund"},
	{"17", "Czarna Szminka", "Więcej pojawiających się czarnych serc {{BlackHeart}}"},
	{"18", "Fragment Biblii", "Wiecej pojawiających się wiecznych serc {{EternalHeart}}"},
	{"19", "Spinacz", "Otwieranie skrzynek bez użycia kluczy"},
	{"20", "Małpia Łapka", "Gdy masz połowę serca, tworzy czarne serca {{BlackHeart}}#!!! Do 3 użyć"},
	{"21", "Tajemnicza Kartka", "Imituje \"Polaroid\"{{Collectible327}}, \"Negatyw\"{{Collectible328}}, \"Brakującą Kartkę\"{{Trinket48}} oraz \"Plakat Zaginionego\"{{Trinket23}}"},
	{"22", "Ogon Demona", "Obniża współczynnik tworzenia serc do 20%#Zwiększa szanse na upuszczenie kluczy#Serca do podniesienia zmieniane są na czarne serca"},
	{"23", "Plakat o Zaginięciu", "Odradzasz się jako \"Zaginiony/The Lost\" kiedy zginiesz w Pokoju Poświęceń {{SacrificeRoom}} #Jeśli jest już odblokowany, odrodzisz się jako on nawet poza Pokojami Poświęceń"},
	{"24", "Dupny Pieniążek", "Pierdzisz, gdy podnosisz monety#Pierdy odrzucają przeciwników"},
	{"25", "Tajemnicze Ciuciu", "Pierdzisz lub tworzysz kupy co#{{Blank}} 30 sekund"},
	{"26", "Haczykowaty Robak", "Łzy poruszają się#{{Blank}} pod kątem#↑ +10 Zasięgu"},
	{"27", "Batowy Robak", "↑ {{Shotspeed}} +0.5 Shot speed"}, -- Whip Worm, !!MODULAR!!
	{"28", "Złamany Anch", "22% szans na odrodzenie się jako \"???\""},
	{"29", "Głowa Ryby", "Tworzy niebieskie muchy, kiedy otrzymujesz obrażenia"},
	{"30", "Czerwone Oko", "Losowo strzelasz trującymi łzami"},
	{"31", "Pinezka", "Losowo strzelasz penetrującymi łzami"},
	{"32", "Czapka Wolności", "Losowy efekt grzyba#{{Blank}} co pokój#Może odkrywać specjalne pokoje na minimapie."},
	{"33", "Pępowina", "Gdy masz połowę serca, dostajesz#{{Blank}} Małego Steven'a {{Collectible100}}"},
	{"34", "Serce Dziecka", "Powstaje więcej czerwonych serc"},
	{"35", "Zakrzywiony Róg", "↑ {{Damage}} +2 Damage"}, -- Curved Horn, !!MODULAR!!
	{"36", "Zardzewiały Klucz", "Pojawia się więcej kluczy"},
	{"37", "Kozie Kopyto", "↑ {{Speed}} +0.15 Speed"}, -- Goat Hoof, !!MODULAR!!
	{"38", "Perła Mamy", "Powstaje więcej#{{Blank}} Serc Duszy {{SoulHeart}}"},
	{"39", "Rak", "↑ {{Tears}} -2 Tear delay"}, -- Cancer, !!MODULAR!!
	{"40", "Czerwona Łatka", "↑ Szansa na +1.8 Obrażeń na pokój,#{{Blank}} gdy otrzymujesz obrażenia"},
	{"41", "Zapałka", "Więcej pojawiających się bomb#!!! Usuwa \"Kleszcza\"{{Trinket53}}"},
	{"42", "Szczęśliwy Paluch", "↑ +1 Szczęścia#Szansa na dodatkowe zasoby"},
	{"43", "Przeklęta Czaszka", "Gdy twoje zdrowie spadnie do połowy serca lub jego braku, teleportuje cię do losowego pokoju"},
	{"44", "Nakrętka Bezpieczna", "Więcej pojawiających się pigułek"},
	{"45", "As Pik", "Więcej pojawiających się kart"},
	{"46", "Widelec Izaaka", "Szansa na uleczenie połowy serca po wyczyszczeniu pokoju"},
	{"47", "", "<Przedmiot nie istnieje>"},
	{"48", "Brakująca Kartka", "Sszansa na zadanie obrażeń wszystkim w pokoju, gdy otrzymasz obrażenia"},
	{"49", "Krwawy Pieniążek", "50% szans na upuszczenie połowy serca, gdy podniesiesz monetę"},
	{"50", "Spalony Pieniążek", "50% szans na upuszczenie bomby, gdy podniesiesz monetę"},
	{"51", "Płaski Pieniążek", "50% szans na upuszczenie klucza, gdy podniesiesz monetę"},
	{"52", "Podrobiony Pieniążek", "50% szans na +1 monetę, gdy podniesiesz monetę"},
	{"53", "Kleszcz", "-15% zdrowia bossa#Leczy 1 czerwone serce, gdy wchodzisz bo pokoju bossa {{BossRoom}}#!!! Raz podniesionego nie da się pozbyć#Zdejmiesz go jedynie przy pomocy Zapałki {{Trinket41}}#{{Blank}} lub poprzez połknięcie"},
	{"54", "Głowa Izaaka", "Sojusznik z penetrującymi łzami#Zadaje 3.5 obrażeń na łzę"},
	{"55", "Wiara Madzi", "Dostajesz jedno wieczne serce {{EternalHeart}} na start kolejnego piętra"},
	{"56", "Język Judasza", "Ustawia ceny przedmiotów u Diabła na 1 serce"},
	{"57", "Dusza ???", "Sojusznik latający po pokoju#Strzela w tym samym kierunku, co ty#Zadaje 3.5 obrażeń na łzę"},
	{"58", "Włosy Samsona", "↑ 1/15 szans na +0.5 Obrażeń, gdy zabijesz przeciwnika#Efekt utrzymuje się przez aktualny pokój"},
	{"59", "Oko Kaina", "25% Szanss na odkrycie ikon na mapie na start nowego piętra"},
	{"60", "Skok Ptaka Ewy", "Szansa na stworzenie Martwego Ptaka {{Collectible117}}, gdy zabijesz wroga"},
	{"61", "Lewa Ręka", "Zamienia wszystkie skrzynki na czerwone"},
	{"62", "Błyszczący Kamień", "Kamienie kryjące Szczelinę i Kamienie z X'em migają co 10 sekund"},
	{"63", "Nożyce Bezpieczeństwa", "Zamienia troll bomby w bomb zasoby"},
	{"64", "Tęczowy Robak", "Losowy wężowy efekt co 3 sekundy"},
	{"65", "Tasiemiec", "↑ {{Range}} x2 Range multiplier#↓ x0.5 Tear height"}, -- Tape Worm, !!MODULAR!!
	{"66", "Leniwy Robak", "↑ {{Range}} +4 Range#↑ +2 Tear height#↓ {{Shotspeed}} -0.5 Shot speed"}, -- Lazy Worm, !!MODULAR!!
	{"67", "Pęknięta kość", "Szansa na losowy efekt kostki, gdy otrzymujesz obrażenia."},
	{"68", "Super Magnes", "Magnes na zasoby i przeciwników"},
	{"69", "Spłowiały Polaroid", "Losowo kamufluje gracza#Dezorientuje przeciwników"},
	{"70", "Wesz", "Szansa na stworzenie pająka we wrogim pokoju"},
	{"71", "Pęcherz Boba", "Bomby pozostawiają maź"},
	{"72", "Bateria Guzikowa", "Więcej pojawiających się baterii#5% szans na doładowanie jednego ładunku twoje przedmiotu aktywnego"},
	{"73", "Zapalnik", "Wybuchające bomby mogą upuścić bomby do podniesienia"},
	{"74", "Wykrywacz Profili", "Większa szansa na znalezienie Szczeliny przy niszczeniu kamieni"},
	{"75", "Błąd", "Efekt losowego drobiazgu co pokój"},
	{"76", "Żeton do Pokera", "Skrzynie mają 50/50 szans na stworzenie większych zasobów LUB nic/przeciwników"},
	{"77", "Bąbel", "Zwiększony odrzut"},
	{"78", "Sekundnik", "Dłużej działające efekty na przeciwnikach"},
	{"79", "Bez końca bez znaczenia", "Gdy użyjesz pigułki/karty, istnieje 25% szans na pojawienie się jej kopii."},
	{"80", "Czarne Pióro", "↑ +0.2 Obrażeń za każdy diabelski przedmiot, jaki mamy."},
	{"81", "Ślepa Furia", "Nietykalność trwa dłużej po dostaniu obrażenia."},
	{"82", "Złota Podkowa", "+15% na podwójne przedmioty w Pokoju Skarbów na kolejnym piętrze"},
	{"83", "Klucz do Sklepu", "Otwiera sklepy{{Shop}} za darmo"},
	{"84", "Żebro Pychy", "Greed/Super Greed nie pojawia się więcej w sklepie#Więcej pojawiających się monet"},
	{"85", "Karma", "Użycie Automatu do Wpłat może Cię uleczyć lub stworzyć żebraka"},
	{"86", "Tycia Larwa", "Rozwalanie kup tworzy niebieskie muchy"},
	{"87", "Naszyjnik Mamy", "Leczy połowę serca, gdy używamy klucza#Zamienia połowy serc w całe"},
	{"88", "NIE!", "Bardzo mała szansa na przedmioty aktywne w Pokojach Skarbów{{TreasureRoom}}"},
	{"89", "Dziecięca Smycz", "Sojusznicy są bliżej Ciebie"},
	{"90", "Brązowy Zapalnik", "Kupy eksplodują przy rozwaleniu"},
	{"91", "Smółka", "Zwiększona szansa na pojawienie się Czarnych Kup#Szansa na stworzenie czarnego serca, gdy rozwalasz czarną kupę"},
	{"92", "Pęknięta Korona", "↑ Przedmioty zwiększające Twoje statystyki są 33% bardziej efektywne#↑ +0.2 Szybkostrzelności#↑ -1 Opóźnienie Wystrzału"},
	{"93", "Używana Pielucha", "Latający przeciwnicy stają się przyjaźni"},
	{"94", "Rybi Ogon", "Podwaja wszystkie niebieskie muchy/pająki"},
	{"95", "Czarny Ząb", "Losowo strzelasz trującymi Zębowymi łzami"},
	{"96", "Uroboros", "Strzały poruszają się szybkim, spiralnym wzorem#Widmowe łzy#↑ +4 Zasięg"},
	{"97", "Migdałek", "Szansa na orbitującego sojusznika, który blokuje strzały, po dostaniu obrażenia 12-20 razy#Do +2 Możliwych sojuszników"},
	{"98", "Goblin z Nosa", "Szansa na klejąco-trujące łzy"},
	{"99", "Piłka Kauczukowa", "Szansa na odbijające łzy"},
	{"100", "Jaskrawa Żarówka", "!!! Gdy trzymasz naładowany aktywny przedmiot:#↑ +0.5 Obrażeń#↑ +0.25 Prędkości#↑ +0.75 Zasięgu#↑ +0.2 Szybkostrzelności#↑ +0.1 Prędkości strzałów#↑ +1 Szczęścia"},
	{"101", "Wygaszona Żarówka", "!!! Gdy trzymasz nienaładowany aktywny przedmiot:#↑ +1.5 Obrażeń#↑ +0.5 Prędkości#↑ +1.5 Zasięgu#↑ +0.4 Szybkostrzelności#↑ +0.3 Prędkości strzałów#↑ +2 Szczęścia"},
	{"102", "Rozerwana Karta", "+1 dodatkowy sekretny pokój na każde piętro, gdy to trzymasz"},
	{"103", "Równość!", "!!! Gdy liczba monet, kluczy i bomb jest równa:#Zamienia ich połowiczne wersje w podwójne wersje"},
	{"104", "Widełki", "Szansa na stworzenie przedmiotu z piedestału, gdy otrzymasz obrażenia#Zostaje po tym zniszczony"},
	{"105", "Śniadanie do Pracy", "Szansa na stworzenie Drugiego Śniadania{{Collectible22}}, gdy otrzymasz obrażenia#Zostaje po tym zniszczony"},
	{"106", "Zagubiony Korek", "Zwiększa promień każdej mazi, jaką produkujesz"},
	{"107", "Krucze Serce", "Otrzymanie obrażeń ignoruje w pierwszej kolejności serca duszy/czarne serca/zgniłe serca, przed czerwonymi"},
	{"108", "Orzech", "Szansa na drop losowego zasobu / drobiazgu, gdy otrzymasz obrażenia od eksplozji#Zostaje po tym zniszczony"},
	{"109", "Taśma", "Powoduje, że wszyscy sojusznicy przestają się poruszać"},
	{"110", "Srebrny Dolar", "Sklepy{{Shop}} mogą się pojawić na piętrze W1/W2"},
	{"111", "Krwawa Korona", "Pokój Skarbów {{TreasureRoom}} pojawia się w Womb'ie"},
	{"112", "Płać, by Wygrać", "Automat z zapasami będzie się zawsze pojawiał w Pokoju Skarbów{{TreasureRoom}}"},
	{"113", "Szarańcza Wojny", "Tworzy eksplodującą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia + obrażenia od eksplozji"},
	{"114", "Szarańcza Zarazy", "Tworzy trującą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia"},
	{"115", "Szarańcza Głodu", "Tworzy spowalniającą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia"},
	{"116", "Szarańcza Śmierci", "Tworzy atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje poczwórne Twoje obrażenia"},
	{"117", "Szarańcza Podboju", "Tworzy 1-4 atakujących much w pokoju z wrogami#Każda z much zadaje podwójne Twoje obrażenia"},
	{"118", "Skrzydło Nietoperza", "Szansa na otrzymanie latania po zabiciu przeciwnika#Działa w danym pokoju"},
	{"119", "Komórka Macierzysta", "Leczy połowę serca po podróży na kolejne piętro"},
	{"120", "Szpila", "Pełne naładowanie aktywnego przedmiotu na start walki z bossem"},
	{"121", "Drewniany Krzyż", "Co poziom, chroni Cię przed otrzymaniem pierwszego obrażenia"},
	{"122", "Masło!", "Użycie aktywnego przedmiotu upuszcza go z powrotem na piedestał"},
	{"123", "Pióro Filigranowe", "Powoduje, że Anioły w Pokoju Aniołów będą dropić zwykłe przedmioty zamiast części klucza"},
	{"124", "Klin", "Ostatnie użyte drzwi pozostaną nadal otwarte"},
	{"125", "Przedłużacz", "Łączy Twoich sojuszników elektrycznymi wiązkami#Zadaje 6 obrażeń co uderzenie"},
	{"126", "Zgniły Pieniążek", "Tworzy niebieską muchę, gdy podnosisz monetę"},
	{"127", "Bobo-łyżka", "Gwarantuje Twoim sojusznikom naprowadzane łzy"},
	{"128", "Kość Palca", "2% szans na otrzymanie Kościanego Serca, gdy otrzymasz obrażenia"},
}

---------- Cards ----------
EID.descriptions[languageCode].cards={
	{"1", "0 - Głupiec", "Teleportuje cię na start piętra"},
	{"2", "I - Mag", "{{Timer}} Homing tears for the room"}, -- I - The Magician, !!MODULAR!!
	{"3", "II - Kapłanka", "Stopa Mamy depta przeciwnika, zadając mu 300 obrażeń"},
	{"4", "III - Cesarzowa", "{{Timer}} Receive for the room:#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +1.5 Damage"}, -- III - The Empress, !!MODULAR!!
	{"5", "IV - Cesarz", "Teleportuje cię do pokoju Bossa {{BossRoom}}"},
	{"6", "V - Hierofant", "{{SoulHeart}} Spawns 2 Soul Hearts"}, -- V - The Hierophant, !!MODULAR!!
	{"7", "VI - Kochankowie", "{{Heart}} Spawns 2 Red Hearts"}, -- VI - The Lovers, !!MODULAR!!
	{"8", "VII - Rydwan", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Speed#Invincibility#Isaac can't shoot but deals 40 contact damage per second"}, -- VII - The Chariot, !!MODULAR!!
	{"9", "VIII - Sprawiedliwość", "Tworzy 1 bombę,#{{Blank}} 1 klucz, 1 monetę#{{Blank}} oraz 1 serce"},
	{"10", "IX - Eremita", "Teleportuje cię#{{Blank}} do Sklepu {{Shop}}"},
	{"11", "X - Koło Fortuny", "Tworzy Automat do Gier lub z Wróżbami"},
	{"12", "XI - Siła", "{{Timer}} Receive for the room:#↑ {{Heart}} +1 Health#↑ {{Speed}} +0.3 Speed#↑ {{Damage}} +0.3 Damage#↑ {{Damage}} x1.5 Damage multiplier#↑ {{Range}} +5.25 Range#↑ +0.5 Tear height"}, -- XI - Strength, !!MODULAR!!
	{"13", "XII - Wisielec", "{{Timer}} Flight for the room"}, -- XII - The Hanged Man, !!MODULAR!!
	{"14", "XIII - Śmierć", "Deals 40 damage to all enemies in the room"}, -- XIII - Death, !!MODULAR!!
	{"15", "XIV - Umiarkowanie", "Tworzy Automat Krwiodawstwa"},
	{"16", "XV - Diabeł", "{{Timer}} Receive for the room:#↑ {{Damage}} +2 Damage"}, -- XV - The Devil, !!MODULAR!!
	{"17", "XVI - Wieża", "Tworzy 6 troll bomb"},
	{"18", "XVII - Gwiazda", "Teleportuje cię do Pokoju Skarbów {{TreasureRoom}}"},
	{"19", "XVIII - Księżyc", "Teleportuje cię do sekretnego pokoju {{SecretRoom}}"},
	{"20", "XIX - Słońce", "Zadaje 100 obrażeń przeciwnikom#{{Blank}} w tym pokoju#Pełne wyleczenie#Odsłania całą mapę"},
	{"21", "XX - Sąd Ostateczny", "Tworzy żebraka"},
	{"22", "XXI - Świat", "{{Timer}} Full mapping effect for the floor (except {{SuperSecretRoom}} Super Secret Room)"}, -- XXI - The World, !!MODULAR!!
	{"23", "2 Trefl", "Podwaja twoje bomby"},
	{"24", "2 Karo", "Podwaja twoje monety"},
	{"25", "2 Pik", "Podwaja twoje klucze"},
	{"26", "2 Kier", "Podwaja twoje czerwone serca#Ma jedynie efekt leczący"},
	{"27", "As Trefl", "Zmienia wszystkie zasoby w bomby"},
	{"28", "As Karo", "Zmienia wszystkie zasoby w monety"},
	{"29", "As Pik", "Zmienia wszystkie zasoby w klucze"},
	{"30", "As Kier", "Zmienia wszystkie zasoby w serca"},
	{"31", "Joker", "Teleportuje cię do Pokoju Diabła{{DevilRoom}} lub Pokoju Anioła{{AngelRoom}}"},
	{"32", "Hagalaz", "Niszczy wszystkie kamienie w tym pokoju"},
	{"33", "Jera", "Podwaja wszystkie zasoby w tym pokoju"},
	{"34", "Ehwaz", "Tworzy zapadnię na następne piętro"},
	{"35", "Dagaz", "+1 Serce Duszy#Usuwa obecne klątwy"},
	{"36", "Ansuz", "{{Timer}} Full mapping effect for the floor"}, -- Ansuz, !!MODULAR!!
	{"37", "Perthro", "Przelosowuje przedmioty na piedestałach"},
	{"38", "Berkano", "Summons 3 blue spiders and 3 blue flies"}, -- Berkano, !!MODULAR!!
	{"39", "Algiz", "{{Timer}} Makes Isaac invincible for 30 seconds"}, -- Algiz, !!MODULAR!!
	{"40", "Pusta Runa", "Efekt losowej runy#25% szans, że stworzy swoją kopię"},
	{"41", "Czarna Runa", "Zadaje 40 obrażeń przeciwnikom#{{Blank}} w tym pokoju#Wzrost losowej statystyki za każdy przedmiot na piedestale#(Niszczy wszystkie piedestały w pokoju)"},
	{"42", "Karta Chaosu", "Rzucasz w kierunku ruchu kartą, która zabije prawie wszystko na swojej drodze"},
	{"43", "Karta Kredytowa", "Usuwa ceny wszystkiego w tym sklepie lub#{{Blank}} pokoju Diabła {{DevilRoom}}"},
	{"44", "Karta Zasad", "Pokazuje \"przydatne\" porady"},
	{"45", "Karta Przeciw Ludzkości", "Wypełnia cały pokój kupami"},
	{"46", "Król Samobójca", "Zabija cię i tworzy 10 zasobów/przedmiotów na podłodze"},
	{"47", "Karta Wyjścia z Więzienia", "Otwiera wszystkie drzwi w tym pokoju"},
	{"48", "Karta ?", "Używa twojego aktywnego przedmiotu, bez zużywania jego ładunku"},
	{"49", "Odłamek Kości", "Przelosowuje piedestały i zasoby w tym pokoju"},
	{"50", "W Nagłym Wypadku", "Przyzywa dwie dłonie Mamy, które łapią wrogów"},
	{"51", "Święta Karta", "Daje efekt Świętego Okrycia{{Collectible313}} w tym pokoju#(Neguje następne otrzymane obrażenia)#25% Szans na stworzenie kopii tej karty"},
	{"52", "Wielkie Bydle", "↑ +7 Obrażeń#↑ +30 Zasięgu#↑ +Rośniesz#Miażdżysz kamienie!#Efekt tylko na ten pokój"},
	{"53", "Starożytne Wezwanie", "{{Card}} Spawns 3 random cards"}, -- Ancient Recall, !!MODULAR!!
	{"54", "Historyczna Przechadzka", "Spowalnia wrogów#↓ -0.5 Prędkości#-1 Prędkości Strzałów#Efekt tylko na ten pokój"},
}

--[[ Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple) ]]
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 6}, -- III - The Empress
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

EID.descriptions[languageCode].unidentifiedPill = "Nieznana Pigułka"

EID.descriptions[languageCode].pills={
	{"0", "Wzdęcia", "Tworzy chmurę Gazu"},
	{"1", "Potknięcie", "Tracisz 1 serce"},
	{"2", "Jaja ze Stali", "{{SoulHeart}} +2 Soul Hearts"}, -- Balls of Steel, !!MODULAR!!
	{"3", "Bomby to Klucze", "Zamienia ilość bomb z kluczami"},
	{"4", "Ostra Biegunka", "Tworzy 5 troll bomb pod twoimi nogami"},
	{"5", "Pełne Zdrowie", "{{HealingRed}} Fully heals all heart containers"}, -- Full Health, !!MODULAR!!
	{"6", "Mniej Zdrowia", "↓ {{EmptyHeart}} -1 Health#Becomes a Health Up pill at 0 or 1 heart containers"}, -- Health Down, !!MODULAR!!
	{"7", "Więcej Zdrowia", "↑ {{EmptyHeart}} +1 Empty heart container"}, -- Health Up, !!MODULAR!!
	{"8", "Znalazłem Pigułki", "No effect"}, -- I Found Pills, !!MODULAR!!
	{"9", "Dorastanie", "No effect#Eating 3 grants the Adult transformation:#↑ {{Heart}} +1 Health"}, -- Puberty, !!MODULAR!!
	{"10", "Muszka", "+1 Fly orbital"}, -- Pretty Fly, !!MODULAR!!
	{"11", "Zasięgu Maleje", "↓ {{Range}} -2 Range"}, -- Range Down, !!MODULAR!!
	{"12", "Zasięgu Wzrasta", "↑ {{Range}} +2.5 Range"}, -- Range Up, !!MODULAR!!
	{"13", "Prędkość Maleje", "↓ {{Speed}} -0.12 Speed"}, -- Speed Down, !!MODULAR!!
	{"14", "Prędkość Wzrasta", "↑ {{Speed}} +0.15 Speed"}, -- Speed Up, !!MODULAR!!
	{"15", "Szybkostrzelność Maleje", "↓ {{Tears}} -0.28 Tears"}, -- Tears Down, !!MODULAR!!
	{"16", "Szybkostrzelność Wzrasta", "↑ {{Tears}} +0.35 Tears"}, -- Tears Up, !!MODULAR!!
	{"17", "Szczęście Maleje", "↓ {{Luck}} -1 Luck"}, -- Luck Down, !!MODULAR!!
	{"18", "Szczęście Wzrasta", "↑ {{Luck}} +1 Luck"}, -- Luck Up, !!MODULAR!!
	{"19", "Telepigułka", "Teleport do losowego pokoju"},
	{"20", "Energia na 48h!", "{{Battery}} Fully recharges the active item#{{Battery}} Spawns 1-2 batteries"}, -- 48 Hour Energy!, !!MODULAR!!
	{"21", "Krwawe Wymioty", "{{Warning}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"}, -- Hematemesis, !!MODULAR!!
	{"22", "Paraliż", "Brak możliwości ruchu na 2 sekundy"},
	{"23", "Mam wieczne widzenie!", "Otwiera przejścia do sekretnych pokoi na tym piętrze"},
	{"24", "Feromony", "Oczarowuje wszystkich przeciwników w tym pokoju"},
	{"25", "Amnezja", "Ukrywa mapę piętra"},
	{"26", "Cytrynowa Zabawa", "Tworzy na ziemi kałużę, która rani nielatających wrogów"},
	{"27", "JESTEŚ CZARODZIEJEM?", "Przez 30 sekund strzelasz na skos"},
	{"28", "Paracetamol", "W tym pokoju otrzymujesz maksymalnie pół serca obrażeń"},
	{"29", "Uzależniony!", "W tym pokoju wszystko zrani cię za pełne serce"},
	{"30", "Poluzowanie!", "Przez 2 sekundy tworzysz kupy pod nogami"},
	{"31", "???", "Efekt Klątwy Dezorientacji na całe piętro"},
	{"32", "Czyni cię większym", "Increases Isaac's size#Doesn't affect his hitbox"}, -- One makes you larger, !!MODULAR!!
	{"33", "Czyni cię małym", "Decreases Isaac's size#Also decreases his hitbox"}, -- One makes you small, !!MODULAR!!
	{"34", "Zarażony!", "Tworzy 1 niebieskiego pająka na każdą kupę w pokoju"},
	{"35", "Zarażony?", "Tworzy 1 niebieskiego pająka na każdego wroga w pokoju#Tworzy od 1 do 3 pająków w przypadku braku przeciwników"},
	{"36", "Pigułka Mocy!", "{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Power Pill!, !!MODULAR!!
	{"37", "Retro-Widok", "Rozpikselowuje ekran na 30 sekund"},
	{"38", "Przyjaciele do końca", "Spawns 3 blue flies"}, -- Friends Till The End!, !!MODULAR!!
	{"39", "Przeczyszczenie", "Tworzy kałużę śliskiej mazi"},
	{"40", "Coś jest nie tak...", "Tworzy kałużę spowalniającej mazi"},
	{"41", "Jestem śpiący...", "Spowalnia przeciwników w tym pokoju"},
	{"42", "Ekscytacja!", "Przyspiesza przeciwników w tym pokoju"},
	{"43", "Łyk!", "Połykasz swój drobiazg, zyskując permanentnie jego efekt"},
	{"44", "Paw!", "Wystrzeliwujesz jedną łzę z efektem Wymiotnicy"},
	{"45", "Jakbym stąpał po promykach słońca!", "{{Timer}} Receive for 6 seconds:#Invincibility#Isaac can't shoot (No contact damage)"}, -- Feels like I'm walking on sunshine!, !!MODULAR!!
	{"46", "Refluks!", "Tworzy ostatnią połkniętą pigułkę"},
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Izaak", ""},
	[1] = {"Magdalena", ""},
	[2] = {"Kain", ""},
	[3] = {"Judasz", ""},
	[4] = {"???", "Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts"},
	[5] = {"Ewa", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Flight#{{Collectible118}} Short range Brimstone instead of tears"},
	[8] = {"Łazarz", "When you die, resurrect as Lazarus Risen with 1 Red Heart container"},
	[9] = {"Eden", "Start with random stats and items each run"},
	[10] = {"Zaginiony", "Flight#Spectral tears#{{Warning}} No health#{{DevilRoom}} Devil deals can be taken for free"},
	[11] = {"Powstały Łazarz", "Increased stats and x1.2 damage multiplier"},
	[12] = {"Mroczny Judas", "{{Damage}} x2 Damage multiplier#{{Player3}} Counts as Judas for completion marks"},
	[13] = {"Lilit", "Cannot shoot tears#{{Collectible360}} Her Incubus shoots for her"},
	[14] = {"Chciwiec", "{{CoinHeart}} Heal by picking up coins#Maximum of 2 Coin Hearts#Heart pickups are turned into Blue Flies"},
	[15] = {"Apollyon", ""},
	[16] = {"Zapomniany", "You have a melee attack which can be charged and thrown#{{BoneHeart}} Can have up to 6 Bone Hearts#{{Player17}} Press {{ButtonRT}} to switch to The Soul"},
	[17] = {"Dusza Zapomnianego", "{{SoulHeart}} The Soul can have up to 6 Soul/Black Hearts and has flight and spectral tears#The Soul is chained to a small radius around The Forgotten#{{Player16}} Press {{ButtonRT}} to switch to The Forgotten"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Next Sacrifice Room payout]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "50% szans na 1 Monetę#100% szans na 1 Bombę na piętrze Piwnica 1 po zabiciu Bossa w mniej niż minutę"},
	{"2", "", "50% szans na 1 Monetę#100% szans na 1 Bombę na piętrze Piwnica 1 po zabiciu Bossa w mniej niż minutę"},
	{"3", "", "67% szans na zwiększenie szansy na otwarcie Pokoju Anioła{{AngelRoom}}"},
	{"4", "", "50% szans na 1 losową Skrzynkę"},
	{"5", "", "33% szans na 3 Monety#67% szans na zwiększenie szansy na otwarcie Pokoju Anioła {{AngelRoom}}"},
	{"6", "", "33% szans na teleport do Pokoju Anioła{{AngelRoom}}/Diabła{{DevilRoom}}#67% szans na losową Skrzynkę"},
	{"7", "", "33% szans na 1 losowy przedmiot z Pokoju Anioła{{AngelRoom}}#67% szans na 1 serce duszy"},
	{"8", "", "100% szans na 7 troll bomb"},
	{"9", "", "100% szans na walkę z \"Urielem\""},
	{"10", "", "50% szans na 7 serc dusz#50% szans na 30 monet"},
	{"11", "", "100% szans na walkę z \"Gabrielem\""},
	{"12", "", "50% szans na teleport do \"Ciemnego Pokoju\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Efekt kości]"

EID.descriptions[languageCode].dice={
	{"1", "", "Przelosowuje twoje przedmioty#(brak wpływu na zasoby np. klucze)"},
	{"2", "", "Przelosowuje zasoby w pokoju"},
	{"3", "", "Przelosowuje zasoby na całym piętrze"},
	{"4", "", "Przelosowuje wszystkie przedmioty na piętrze#Brak wpływu na oferty Diabła"},
	{"5", "", "Przelosowuje i restartuje całe piętro"},
	{"6", "", "Przelosowuje twoje przedmioty oraz przedmioty i zasoby na piętrze"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fajny Kolo",		-- 2
	"Belzebub",			-- 3
	"Syjamczyk",		-- 4
	"Ćpun",				-- 5
	"Tak, Matko?",		-- 6
	"O kurka",			-- 7
	"Bob",				-- 8
	"Lewiatan",			-- 9
	"Serafin",			-- 10
	"Super Przybłęda",	-- 11
	"Mól książkowy",	-- 12
	"Pajęczak",			-- 13
	"Dorosły",			-- 14
	"Stąpacz"			-- 15
}

---------- MISC ----------

-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)

    local function pluralize(one, few, many)
        local last = amount % 10
        local lastTwo = amount % 100

        if amount == 1 then
            return one
        elseif last >= 2 and last <= 4 and not (lastTwo >= 12 and lastTwo <= 14) then
            return few
        else
            return many
        end
    end

    text = text:gsub("{plural:([^|]+)|([^|]+)|([^}]+)}", pluralize)

    return text
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
	["Overridden"] = "Zastąpione przez {1}",
	["Overrides"] = "Zastępuje {1}",
	["Almost No Effect"] = "Znikomy efekt z {1}",
	["No Effect"] = "Brak efektu dla {1}",
	["No Effect Replace"] = {"Brak efektu dla {1}"},
	["No Effect From"] = "Brak efektu z {1}",
	["Can't Charge"] = "Nie można naładować {1}",
	["Can't Be Charged"] = "Nie może być naładowane przez {1}",
	["Can't Be Duplicated"] = "Nie można zduplikować",
	["No Effect (Greed)"] = "{{GreedMode}} Brak efektu w Greed Mode",
	["No Effect (Copies)"] = "Brak dodatkowych efektów przy ponownym podniesieniu", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Brak dodatkowych efektów na sojusznikach", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Inny efekt dla {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} umrze, jeśli użyje", -- for Razor Blade and such as The Lost
	
	
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
	["5.100.549"] = "{1} simply gets ↑ {{Tears}} +0.5 Tears on pickup", -- Brittle Bones (Keeper+Lost)
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
	
	["5.100.7"] = "x1.5 Mnożnik obrażeń, gdy {1} efekt jest aktywny", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Mnożnik obrażeń", -- Book of Belial
	["5.300.16"] = "x1.5 Mnożnik obrażeń", -- XV - The Devil
	
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
	["Epic Fetus Brimstone"] = "{1} has priority#Missiles shoot out 10 beams",
	["Epic Fetus Mom's Knife"] = "{1} has priority#Missiles shoot out 10 knives",
	["Haemolacria Brimstone"] = "{1} has priority#Tears split into 4-7 beams",
	["Brimstone Mom's Knife"] = "{1} has priority#A barrage of knives shoot out based on charge amount",
	["Ludovico Ipecac"] = "The tear gets +4 damage but doesn't explode or poison",
	["Technology Ipecac"] = "The laser gets +4 damage and poisons targets",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} x1.25 Mnożnik Szybkostrzelności",
	["Chocolate Milk Marked"] = "Izaak automatycznie ładuje łzy w zależności od odległości od celownika",
	["Ghost Pepper Fart"] = "Farting causes a flame to shoot out behind Isaac",
	["Damage Multiplier Stack"] = "Mnożniki obrażeń się nie łączą",
	["White Poop"] = "Zamiast tego tworzy Białą Kupę",
	["White Poop Chance"] = "Chance to spawn White Poop",
	["Golden Poop Chance"] = "Chance to spawn Golden Poop",
	["5.100.483"] = "{{GoldenBomb}} Having a golden bomb when using the item consumes it and allows for another use of Mama Mega",
	
	["5.300.5"] = {"{{BossRoom}} Teleports Isaac to a random Boss Room"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Teleports Isaac to a random room if there's no Treasure Room", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Teleports Isaac to a random Treasure Room"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Teleports Isaac to the first room of the floor"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Teleports Isaac to a random room if there's no Shop", -- IX - The Hermit (Womb and below)
}
