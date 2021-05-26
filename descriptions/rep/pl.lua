------------------------------------------------------------------
-----  Basic English descriptions based on Platinumgod.co.uk -----
------------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
}

local repCollectibles={
	[6] = {"6", "Numer Jeden", "↑ +1.5 Szybkostrzelności#↓ -1.5 Zasięgu#↓ -20% mnożnika Zasięgu#↑ +0.76 Wysokości lotu łez"}, -- Number One
	[13] = {"13", "Wirus", "Zatruwasz dotykiem#↑ +0.2 Prędkości"}, -- The Virus
	[14] = {"14", "Furia na Sterydach", "↑ +0.3 Prędkości#↑ +5.25 Zasięgu#↑ +0.5 Wysokości Łez"}, -- Roid Rage
	[22] = {"22", "Drugie Śniadanie", "↑ +1 Serce#Leczy jedno serce"}, -- Lunch
	[23] = {"23", "Obiad", "↑ +1 Serce#Leczy jedno serce"}, -- Dinner
	[24] = {"24", "Deser", "↑ +1 Serce#Leczy jedno serce"}, -- Dessert
	[25] = {"25", "Śniadanie", "↑ +1 Serce#Leczy jedno serce"}, -- Breakfast
	[29] = {"29", "Bielizna Mamy", "↑ +1.5 Zasięgu#↑ +0.5 Wysokości Łez#Tworzy od 3 do 6 Niebieskich Much"}, -- Moms Underwear
	[30] = {"30", "Szpilki Mamy", "↑ +1.5 Zasięgu#↑ +0.5 Wysokości Łez#Dotknięci wrogowie otrzymują 12 obrażeń"}, -- Mom's Heels
	[31] = {"31", "Szminka Mamy", "↑ +2.25 Zasięgu#↑ +0.5 Wysokości Łez#Tworzy 1 losowe serce"}, -- Mom's Lipstick
	[40] = {"40", "Kamikaze!", "Powoduje dużą eksplozję pod twoimi nogami#Zadaje 185 obrażeń"}, -- Kamikaze!
	[42] = {"42", "Zgniły Łeb Boba", "Trująca bomba do rzucania#Zadaje 185 obrażeń + wartość twoich obrażeń#Tworzy chmurę trucizny"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport!", "Teleportuje cię do dowolnego, losowego pokoju poza pokojem I AM ERROR#Porusz się w kierunku, w który chciałbyś się teleportować"}, -- Teleport
	[45] = {"45", "Serduszko", "Leczy 1 czerwone serce#W trybie kooperacji leczy innych po pół serca"}, -- Yum Heart
	[46] = {"46", "Szczęśliwa Stopa", "↑ +1.0 Szczęścia#Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju#Zmienia niektóre negatywne pigułki w pozytywne"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Przyciąga do ciebie Pickupy#Zdalne otwieranie skrzynek, ignoruje obrażenia od skrzynek z kolcami"}, -- Magneto
	[55] = {"55", "Oko Mamy", "Szansa na dodatkowy strzał z tyłu głowy"}, -- Mom's Eye
	[62] = {"62", "Urok Wampira", "↑ +0.3 Obrażeń#Leczy pół serca co 13 zabitych wrogów"}, -- Charm of the Vampire
	[64] = {"64", "Wyprzedaż Steam", "Zniżka -50% na wszystko w sklepie#Zebranie kolejnych obniży ceny jeszcze bardziej"}, -- Steam Sale
	[67] = {"67", "Siostra Madzia", "Sojusznik ze zwykłymi łzami#Zadaje 5 Obrażeń na łzę"}, -- Sister Maggy
	[70] = {"70", "Hormony Wzrostu", "↑ +1.0 Obrażeń#↑ +0.2 Prędkości"}, -- Growth Hormones
	[72] = {"72", "Różaniec", "+3 Serca Duszy#↑ 0.5 Szybkostrzelności#Biblia pojawia się częściej"}, -- Rosary
	[79] = {"79", "Znak", "↑ +1.0 Obrażeń#↑ +0.2 Prędkości#+1 Czarne Serce"}, -- The Mark
	[80] = {"80", "Pakt", "↑ +0.5 Obrażeń#↑ +0.7 Szybkostrzelności#+2 Czarne Serca"}, -- The Pact
	[83] = {"83", "Gwóźdź", "+ Pół Czarnego serca#↑ +0.7 Obrażeń#↓ -0.18 Prędkości#Zadajesz Obrażenia kontaktowe#Miażdżysz kamienie"}, -- The Nail
	[106] = {"106", "Pan Mega", "↑ Obrażenia od bomb x1.85#+5 Bomb"}, -- Mr. Mega
	[121] = {"121", "Dziwny Grzyb", "↑ +1 Pusty zasobnik na serce#↑ +1.0 Obrażeń#↑ +0.25 Zasięgu#↓ -0.2 Prędkości#↑ +0.5 Wysokości Łez"}, -- Odd Mushroom (Large)
	[123] = {"123", "Księga Potworów", "Tworzy losowego sojusznika#Zniknie po zmianie Piętra"}, -- Monster Manual
	[139] = {"139", "Torebka Mamy", "Możesz mieć 2 trynkiety na raz#Tworzy 1 losowy trynkiet"}, -- Mom's Purse
	[140] = {"140", "Przekleństwo Boba", "Trujące bomby#+5 bomb#Bomby tworzą chmurę trucizny"}, -- Bob's Curse
	[148] = {"148", "Zarażenie", "Tworzy 2-6 much, gdy zostaniesz trafiony"}, -- Infestation
	[147] = {"147", "Karbowana Siekiera", "Zamachując się niszczysz kamienie i ranisz wrogów#Trafianie redukuje naładowanie przedmiotu#Przejście na inne piętro odładuje przedmiot"}, -- Notched Axe
	[152] = {"152", "Technologia 2", "Permanentny laser!#Laser zadaje 13% twoich obrażeń#↓ Zmniejsza Szybkostrzelność o 33%"}, -- Technology 2
	[171] = {"171", "Tyłek Pająka", "Spowalnia wrogów na 4 sekundy#Zadaje 10 obrażeń wszystkim wrogom#Tworzy niebieskie pająki, jeśli przeciwnik zginie od tego przedmiotu"}, -- Spider Butt
	[178] = {"178", "Woda Święcona", "{{Throwable}} {{ColorOrange}}Do Rzucania{{CR}}#Tworzy kałużę mazi w miejscu, w które rzucisz"},
	[188] = {"188", "Abel", "Odzwierciedla twoje ruchy#Strzela w twoim kierunku#Zadaje 3.5 obrażeń na strzał#7.5 obrażeń, jeśli grasz Kainem"}, -- Abel
	[192] = {"192", "Telepatia Dla Opornych", "Naprowadzane łzy w obecnym pokoju#↑ +3 Zasięgu"}, -- Telepathy for Dummies
	[194] = {"194", "Magiczna Kula nr 8", "↑ +0.16 Prędkości Strzałów#+1 karta#+15% szans na Planetarium"}, -- Magic 8 Ball
	[203] = {"203", "Pokorny Pakiet", "Chance to spawn the double version of pickups"}, -- Humbling Bundle
	[205] = {"205", "Ostra Wtyczka", "- pół serca = daje ci jeden ładunek aktywnego przedmiotu przy naciśnięciu spacji"}, -- Sharp Plug
	[206] = {"206", "Gilotyna", "↑ +1 Obrażeń#↑ +0.33 Szybkostrzelności#Twoja głowa teraz orbituje wokół ciała#Strzelasz z głowy#Głowa zadaje 105 obrażeń kontaktowych"}, -- Guillotine
	[211] = {"211", "Pajęcze Dziecię", "Pojawia 3-5 pająków, gdy zostaniesz trafiony"}, -- Spider Baby
	[214] = {"214", "Anemik", "↑ +1.5 Zasięgu#Zostawiasz pod sobą maź, gdy zostaniesz trafiony"}, -- Anemic
	[224] = {"224", "Ciało Cricketa", "↓ -20% Zasięgu#Łzy rozdzielają się na 4 przy trafieniu#Powstałe łezki zadają połowiczne obrażenia#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Cricket's Body
	[228] = {"228", "Perfumy Mamy", "Szana na straszące wrogów strzały#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Moms Perfume
	[230] = {"230", "Abaddon", "↑ +1.5 Obrażeń#↑ +0.2 Prędkości#Straszące wrogów łzy#Zamienia wszystkie Czerwone Serca na Czarne#+2 Czarne Serca"}, -- Abaddon
	[232] = {"232", "Stop-Er", "Permanentny efekt spowolnienia#↑ +0.3 Prędkości"}, -- Stop Watch
	[240] = {"240", "Terapia Eksperymentalna", "↑ Losowe 4 Statystyki rosną i ↓2 maleją"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Podwaja wszystkie twoje strzały#↓ -25% Obrażeń"}, -- 20/20
	[256] = {"256", "Gorące Bomby", "Płonące bomby#+5 Bombs#Bomby zadają obrażenia kontaktowe"}, -- Hot Bombs
	[261] = {"261", "Wytrzeszcz", "↑ +0.5 Obrażeń#↓ Obrażenia spadają z każdą chwilą, w której łza znajduje się w powietrzu#300% Obrażeń w najlepszym wypadku"}, -- Proptosis
	[262] = {"262", "Zgubiona Kartka 2", "+1 Czarne Serce#Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju#Czarne Serca zadają podwójne obrażenia"}, -- Missing Page 2
	 
	[263] = {"263", "Przejrzysta Runa", "Kopiuje efekt trzymanej runy lub kamienia duszy#Upuszcza 1 losową runę przy podniesieniu"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "Mózg Boba", "Rzucany sojusznik w stylu bomby#Wybuch zadaje 100 Obrażeń#Obrażenia te ignorują pancerz"}, -- Bob's Brain
	[274] = {"274", "Najlepszy Kumpel", "Kiedy zostaniesz trafiony, dostajesz orbitującego sojusznika#Zadaje on 150 obrażeń na sekundę"}, -- Best Bud
	[276] = {"276", "Serce Izaaka", "Twoje ciało jest teraz nieśmiertelne#!!! Otrzymujesz obrażenia, gdy Serce zostanie trafione#Strzelając ładujesz Serce, które wystrzeli serię łez"}, -- Isaac's Heart
	[278] = {"278", "Mroczny Przybłęda", "!!! Zamienia:#1,5 Czerwonego Serca w 1 Serce Duszy/Czarne Serce, pająka, pigułkę, kartę lub runę"}, -- Dark Bum
	[280] = {"280", "Siostrzyczka Kosarzy", "Losowo tworzy niebieskie pająki w pokoju z wrogami#Zaurocza wrogów, z którymi wejdzie w kontakt"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Przelosowuje wszystkie piedestały i pickupy oraz wszystkie twoje statystyki i pasywne przedmioty#Duplikuje 1 losowy pickup w pokoju#Restartuje obecny pokój i odradza + przelosowuje przeciwników#Przelosowuje również kamienie"}, -- D100
	[285] = {"285", "D10", "Przelosowuje wszystkich przeciwników w pokoju#Stara się przelosować ich w przeciwników o podobnym maksymalnym HP"}, -- D10
	[287] = {"287", "Księga Tajemnic", "Daje efekt{{Collectible54}}Mapy Skarbów,{{Collectible21}}Kompasu lub{{Collectible246}}Niebieskiej Mapy na obecne piętro#Daje tylko efekty, których jeszcze nie posiadasz#Jeżeli wszystkie te efekty są aktywne, dostajesz efekt {{Collectible76}}X-Ray w Oczach"}, -- Book of Secrets
	[288] = {"288", "Pudełko Pająków", "Pojawia 4-8 niebieskich pająków"}, -- Box of Spiders
	[289] = {"289", "Czerwona Świeca", "Rzuca czerwony płomień#Płomień zniknie po zadaniu obrażeń 5 razy lub po 10 sekundach"}, -- Red Candle
	[291] = {"291", "Spłuczka!", "!!! Zabija przeciwników-kupy!#Zamienia normalnych przeciwników w kupy#Gasi ogniska#W Kopalni zamienia lawę w kładkę"}, -- Flush!
	[292] = {"292", "Biblia Szatana", "+1 Czarne serce#Użyta przed walką z bossem sprawi, że przedmiot po tej walce będzie z puli przedmiotów w pokoju diabła"}, -- Satanic Bible
	[294] = {"294", "Fasola Maślana", "Odrzuca pobliskich przeciwników i strzały#Wrogowie odbici w przeszkody otrzymują 10 obrażeń"}, -- Butter Bean
	[295] = {"295", "Cudowne Pudełeczko", "Rani wszystkich wrogów w pokoju twoimi obrażeniami x2 + 10 #Koszt: 1 moneta {{Coin}}"}, -- Magic Fingers
	[296] = {"296", "Przetwornik", "!!! Konwertuje:#1 Serce Duszy/Czarne w 1 Czerwone Serce"}, -- Converter
	[307] = {"307", "Koziorożec", "↑ +1 Serce{{Heart}}/Klucz{{Key}}/Bomba{{Bomb}}/Moneta{{Coin}}#↑ +0.93 Obrażeń#↑ +0.1 Prędkości#↑ +0.75 Zasięgu#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Capricorn
	[308] = {"308", "Wodnik", "Zostawiasz za sobą maź#Zadaje ona 6 obrażeń na sekundę#Maź łączy się z efektami łez"}, -- Aquarius
	[328] = {"328", "Negatyw", "↑ +1.0 Obrażeń#Gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak, ranisz wszystkich wrogów w pokoju"}, -- The Negative
	[331] = {"331", "Bóstwo", "Naprowadzane łzy#↑ +0.5 Obrażeń#↑ +0.5 Zasięgu#↓ -0.3 Szybkostrzelności#↓ -0.3 Prędkości Strzałów#↑ +0.8 Wysokości Lotu Łez#Łzy otrzymują aurę, zadającą obrażenia"}, -- Godhead
	[336] = {"336", "Martwa Cebula", "Penetrujące + Widmowe łzy#↓ -1.5 Zasięgu#↓ -0.4 Prędkości Strzałów#↑ +50% Wielkości łez"}, -- Dead Onion
	[339] = {"339", "Agrafka", "↑ +1.5 Zasięgu#↑ +0.16 Prędkości Strzałów#+1 Czarne Serce#↑ +0.5 Wysokości lotu łez"}, -- Safety Pin
	[344] = {"344", "Pudełko Zapałek", "+1 Czarne Serce#Tworzy 2-3 Bomby do podniesienia#Tworzy trynkiet{{Trinket41}}Zapałka"}, -- Match Book
	[345] = {"345", "Synthol", "↑ +1.0 Obrażeń#↑ +1.5 Zasięgu#↑ +0.5 Wysokości lotu łez"}, -- Synthoil
	[346] = {"346", "Przekąska", "↑ +1 Serce#Leczy 2 serca"}, -- A Snack
	[352] = {"352", "Szklana Armata", "Strzela wielką widmową, penetrującą, łzą ((Obrażenia+1) X 10)#Gdy otrzymujesz obrażenia, są one zwiększone o 2 serca"}, -- Glass Canon
	[355] = {"355", "Perły Mamy", "↑ +1.25 Zasięgu#↑ +1 Szczęścia#+1 Serce Duszy#↑ +0.5 Wysokości lotu łez"}, -- Mom's Pearl
	[369] = {"369", "Kontinuum", "↑ +3.0 Zasięgu#↑ +1.5 Wysokości lotu łez#Łzy przechodzą przez ściany i wylatują z drugiej strony"}, -- Continuum
	[370] = {"370", "Pan Laleczka", "↑ +0.7 Szybkostrzelności#↑ +1.5 Zasięgu#↑ +0.5 Wysokości lotu łez#Tworzy 3 losowe serca przy podniesieniu"}, -- Mr. Dolly
	[372] = {"372", "Energiczne Dziecko", "Losowa szansa na upuszczenie mikro-baterii lub zamrożenie przeciwników w pokoju#Szansa na dodanie jednego ładunku do twojego przedmiotu aktywnego"}, -- Charged Baby
	[375] = {"375", "Kapelusz Żywiciela", "20% szans na zablokowanie wrogiej łzy#Odporność na wybuchy"}, -- Host hat
	[376] = {"376", "Uzupełniacz", "Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz#Uzupełnione przedmioty zwiększają swoje ceny z każdym kolejnym zakupem"}, -- Restock
	[382] = {"382", "Kula Przyjaźni", "Rzucona w przeciwnika nie-bossa złapie go#Następny rzut wypuści złapanego przeciwnika, który będzie walczyć dla ciebie#Przejście po kuli, która złapała wroga natychmiast odładuje ją"}, -- Friendly Ball
	[393] = {"393", "Pocałunek Węża", "Losowa szansa na wystrzelenie trujących łez#Trujesz wrogów dotykiem#Wrogowie zabici trucizną z dotyku mają 20% szans na upuszczenie czarnego serca przy śmierci"}, -- Serpent`s Kiss
	[395] = {"395", "Tech X", "Strzelasz laserowym kręgiem, który możesz ładować#Krąg ten leci przez cały pokój#Obrażenia są zależne od naładowania#100% obrażeń na pełnym naładowaniu"}, -- Tech X
	[399] = {"399", "Paszcza z Pustki", "Po ciągłym strzelaniu przez 3 sekundy, na twojej głowie pojawi się czerwony krzyż. Po zaprzestaniu strzelania, tworzy krąg z czarnego lasera"}, -- Maw of the Void
	[405] = {"405", "GB Bug", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Rerolls enemies and pickup it comes in contact with"}, -- GB Bug
	[408] = {"408", "Athame", "When you take damage, a black brimstone ring will appear around Isaac"}, -- Athame
	[416] = {"416", "Deep Pockets", "Spawns 1-3 coins if a room didn't yield a reward#Increases coin cap to 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Bounces around the room with a damaging aura, dealing 7.5-10 damage every second#↑ +50% damage while standing in the aura"}, -- Succubus
	[437] = {"437", "D7", "Respawn all enemies of the room#Allows you to farm room clear rewards"}, -- D7
	[440] = {"440", "Kidney Stone", "Randomly while firing you will stop firing and release a burst of tears and a kidney stone#↓ -17 Range down#↑ +2.0 Tear height"},
	[448] = {"448", "Shard of Glass", "When taking damage, chance to get ↑ +5 Range, spew red tears and leave a trail of blood creep, or spawn a red heart"}, -- Shard of Glass
	[451] = {"451", "Tarot Cloth", "Drops a random card or rune on pickup#Some cards gain an extra or doubled effect"}, -- Tarot Cloth
	[456] = {"456", "Midnight Snack", "↑ +1 Health up"}, -- Midnight Snack
	[464] = {"464", "Glyph of Balance", "+2 Soul Hearts#Champion enemies and room drops appear more frequently#Priority of spawned pickups depends on what the player is missing most of"}, -- Glyph of Balance
	[472] = {"472", "King Baby", "Other familiars follow it and shoot automatically at enemies#Stops moving when you are shooting#Will teleport back to you when you stop shooting"}, -- King Baby
	[474] = {"474", "broken Glass Canon", "Turns into Glass Canon when used"}, -- broken Glass Canon
	[489] = {"489", "D Infinity", "Random Dice-effect each usage#Press the Drop button to cycle through the dices"}, -- D Infinity
	[491] = {"491", "Acid Baby", "Drops a random pill every 7 rooms#Using a pill poisons all enemies in the room"}, -- Acid Baby
	[494] = {"494", "Jacobs Ladder", "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half your damage#Sparks can jump between enemies"}, -- Jacobs Ladder
	[503] = {"503", "Little Horn", "Chance to fire tears that summon a Big Horn hand#The hand kills enemies instantly and deals damage to bosses#Running into enemies will deal 3.5 damage to them"}, -- Little Horn
	[504] = {"504", "Brown Nugget", "Spawns a fly turret that shoots at enemies#Each shot deals 3.5 damage"}, -- Brown Nugget
	[509] = {"509", "Bloodshot Eye", "Orbital that shoots a tear every 1/3rd second when enemy is nearby#Deals 3.5 damage per tear#Deals 30 contact damage per second"}, -- Bloodshot Eye
	[523] = {"523", "Moving Box", "When used, stores up to 6 Pick-Ups from the current room#Using it again will put them back on the floor again#This allows you to move things between rooms"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Tears will be connected with beams of electricity#Electricity damage equals 1/3 of your damage"}, -- Technology Zero
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
	[562] = {"562", "Rock Bottom", "Sets all stats to their base value#Prevents stats from being lowered for the rest of the run"}, --  Rock Bottom
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
	[577] = {"577", "Damocles", "{{Warning}} ONE TIME USAGE {{Warning}}#Spawns a sword above your head, which doubles all item pedestals and Beggar rewards#Kills you at a random time when taking damage and holding the sword up"}, --  Damocles
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
	[594] = {"594", "Jupiter", "+2 red Heart containers#↓ -0.3 Speed up#Charge up while standing still#Release a poisoning gas cloud when moving again"}, --  Jupiter
	[595] = {"595", "Saturnus", "A circle surrounds you#Upon entering a room, 7 tears will orbit in it#Chance to catch enemy projectiles in orbit"}, --  Saturnus
	[596] = {"596", "Uranus", "Shoot ice tears, which slow enemies and freeze monsters they kill#Touching frozen enemies slide away and explode into 6 ice shards"}, --  Uranus
	[597] = {"597", "Neptunus", "Builds a massive tears bonus over 3 seconds while not firing##Shooting again will release stored tears#The tear bonus falls off as you fire"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ +0.7 Tears up#Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"}, --  Pluto
	[599] = {"599", "Voodoo Head", "Spawns an additional curse room {{CursedRoom}} each floor"}, --  Voodoo Head
	[600] = {"600", "Eye Drops", "↑ Decreases tear delay in your left eye by 28%"}, --  Eye Drops
	[601] = {"601", "Act of Contrition", "↑ Tears up#+1 Eternal Heart#Allows Angel Rooms to appear even if a Devil deal has been taken before"}, --  Act of Contrition
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
	[623] = {"623", "Sharp Key", "+5 keys#Throw your key to deal damage, destroy obstacles, or open doors"}, --  Sharp Key
	[624] = {"624", "Booster Pack", "Spawns 5 random cards"}, --  Booster Pack
	[625] = {"625", "Mega Mush", "Gigantifies you for 30 seconds#Increases damage and range#Grants invulnerability and ability to crush enemies and obstacles#Effect persists between rooms"}, --  Mega Mush
	[626] = {"626", "Knife Piece 1", "First part of the knife familiar"}, --  Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Combined with Knife Piece 1 {{Collectible627}}, creates a knife familiar#Damages enemies#Can open a certain flesh door"}, --  Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} ONE TIME USAGE {{Warning}}#Takes you to a floor containing every item in the game#After taking an item, return to the room you came from"}, --  Death Certificate
	[629] = {"629", "Bot Fly", "Orbital that fires shielded tears"}, --  Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Meat Cleaver", "Splits enemies in the room into 2 smaller versions of themselves with much less health"}, --  Meat Cleaver
	[632] = {"632", "Evil Charm", "↑ +2 Luck up#+ half a soul heart each floor"}, --  Evil Charm
	[633] = {"633", "Dogma", "Grants flight and one-time Holy Mantle {{Collectible313}} effect#↑ +2.0 damage up#↑ +0.1 Speed up#If player has fewer than 6 hearts, heals him with combination of red and soul hearts"}, --  Dogma
	[634] = {"634", "Purgatory", "While in a room with enemies, spawns cracks on the ground#Walking over these cracks summons exploding ghosts"}, --  Purgatory
	[635] = {"635", "Stitches", "Passively spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and gains short invincibility#Teleporting onto things can damage or destroy them"}, --  Stitches
	[636] = {"636", "R Key", "{{Warning}} ONE TIME USAGE {{Warning}}#Teleports you back to the first floor of a new run#Items and pickups stay intact"}, --  R Key
	[637] = {"637", "Knockout Drops", "Chance to shoot a fist tear with extreme knockback and confusion effect"}, --  Knockout Drops
	[638] = {"638", "Eraser", "Throws an eraser that instantly kills an enemy#Prevents the enemy from spawning for the rest of the run#Can only be used once per floor"}, --  Eraser
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
	[668] = {"668", "Dad's Note", "Begins the sequence to access the Home floor"}, --  Dad's Note
	[669] = {"669", "Sausage", "↑ +1.33 Damage up#↑ +0.2 Speed up#↑ +1.2 Shot Speed up#↑ +0.16 Range up#↑ +1 Luck up"}, --  Sausage
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
	[684] = {"684", "Hungry Soul", "Chance to spawn ghosts when killing an enemy#Ghosts chase enemies and deal contact damage"}, --  Hungry Soul
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
	[709] = {"709", "Suplex!", "Allows you to dash into and pick up enemies or bosses, then slam them into the ground#Slam can be controlled#Slam deals 50 damage ans spawns rock waves"}, --  Suplex!
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
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["pl"].collectibles)

EID.descriptions["pl"].birthright ={
	{"Isaac", "Izak", "Wszystkie przedmioty przewijają się przez 2 opcje"},
	{"Magdalene", "Magdalena", "<No effect yet>"},
	{"Cain", "Kain", "<No effect yet>"},
	{"Judas", "Judasz", "<No effect yet>"},
	{"???", "???", "Soul hearts gained from health upgrades are doubled"},
	{"Eve", "Ewa", "Whore of Babylon is active regardless of health#Dead Bird is active without taking damage"},
	{"Samson", "Samson", "Bloody Lust can gain 4 more damage boosts at the same +0.2 intervals, for a new maximum total of +14.0"},
	{"Azazel", "Azazel", "Azazel's Brimstone beam becomes much wider, like Mega Blast#No effect on damage"},
	{"Lazarus", "Łazarz", "When dead, revive as Lazarus Risen#Lazarus Risen gains a slowly fading +21.6 damage bonus"},
	{"Eden", "Eden", "Spawns 3 random items from random item pools#Only one can be taken"},
	{"The Lost", "Zaginiony", "Prevents items not beneficial to The Lost from spawning#Examples: ones that only give health, flight, and/or spectral tears or activate upon taking damage"},
	{"Lazarus Risen", "Powstały Łazarz", "Grants a slowly fading +21.6 damage bonus"},
	{"Black Judas", "Czarny Judasz", "<No effect yet>"},
	{"Lilith", "Lilit", "<No effect yet>"},
	{"Keeper", "Dozorca", "<No effect yet>"},
	{"Apollyon", "Apollyon", "<No effect yet>"},
	{"The Forgotten", "Zapomniany", "The Soul is unchained and free to move"},
	{"The Forgotten Soul", "Dusza Zapomnianego", "The Soul is unchained and free to move"},
	{"Bethany", "Betania", "Activating an item using soul charges is sometimes free"},
	{"Jacob", "Jakub", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Esau", "Ezaw", "The character who picks up the item gains copies of three of the other character's passive items"},
	{"Tainted Isaac", "Splamiony Izak", "Adds 4 more slots for passive items"},
	{"Tainted Magdalene", "Splamiona Magdalena", "Adds 1 more red heart that doesn't drain"},
	{"Tainted Cain", "Splamiony Kain", "The amount of pickups spawned from collecting an item is doubled"},
	{"Tainted Judas", "Splamiony Judasz", "<No effect yet>"},
	{"Tainted ???", "Splamiony ???", "Increases the maximum number of carried poops to 29"},
	{"Tainted Eve", "Splamiona Ewa", "<No effect yet>"},
	{"Tainted Samson", "Splamiony Samson", "The berserk timer gains 3 seconds instead of 1 when Tainted Samson kills an enemy"},
	{"Tainted Azazel", "Splamiony Azazel", "Doubles the size of Tainted Azazel's Hemoptysis {{Collectible726}} sneeze attack"},
	{"Tainted Lazarus", "Splamiony Łazarz", "<No effect yet>"},
	{"Tainted Eden", "Splamiony Eden", "Passive items gained before Birthright will not be rerolled upon taking damage"},
	{"Tainted Lost", "Splamiony Zaginiony", "+1 extra life that revives Tainted Lost in the same room and deals 200 damage to nearby enemies#Can hit the same enemy multiple times"},
	{"Tainted Lilith", "Splamiona Lilit ", ""},
	{"Tainted Keeper", "Splamiony Dozorca", "Strongly attracts the coins dropped by defeating enemies from a short distance#No effect on other coins"},
	{"Tainted Apollyon", "Splamiony Apollyon", "<No effect yet>"},
	{"Tainted Forgotten", "Splamiony Zapomniany", "Tainted Soul gains the Recall ability {{Collectible714}}, to automatically retrieve the Tainted Forgotten from a distance"},
	{"Tainted Bethany", "Splamiona Betania", "<No effect yet>"},
	{"Tainted Jacob", "Splamiony Jakub", "<No effect yet>"},
	{"Dead Tainted Lazarus", "Marwy Splamiony Łazarz", "<No effect yet>"},
	{"Tainted Jacob 2", "Splamiony Jakub 2", "<No effect yet>"},
	{"Tainted Forgotten Soul", "Splamiona Dusza Zapomnianego", "Tainted Soul gains the Recall ability {{Collectible714}}, to automatically retrieve the Tainted Forgotten from a distance"},
}

EID.descriptions["pl"].spindownError = "Przedmiot znika"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Swallowed Penny", "Drop 1 coin when you get hit#0-1 if you play as Keeper"}, -- Swallowed Penny
	[10] = {"10", "Wiggle Worm", "Tears move in waves#↑ +0.4 Tears up#Grants spectral tears"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "Tears move in spirals with high speed#Grants spectral tears"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "33% chance to drop a coin when destroying rocks"},-- Lucky Rock
	[24] = {"24", "Butt Penny", "Fart when picking up coins#Farts knockback and poison enemies"}, -- Butt Penny
	[26] = {"26", "Hook Worm", "Tears move in angular patterns#↑ +10 Range#Grants spectral tears"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "Random mushroom effect per room"}, -- Liberty Cap
	[33] = {"33", "Umbilical Cord", "When entering a room with half a red heart or less, you get little Steven#High Chance to spawn a Gemini familar when taking damage"}, -- Umbilical Cord
	[33] = {"48", "A Missing Page", "When getting hit, chance to damage all enemies in the room#Black hearts and {{Collectible35}} Necronomicon-like effects deal double damage"}, -- A Missing Page
	[49] = {"49", "Bloody Penny", "25% chance to drop half a heart when picking up coins"}, -- Bloody Penny
	[50] = {"50", "Burnt Penny", "25% chance to drop a bomb when picking up coins"}, -- Burnt Penny
	[51] = {"51", "Flat Penny", "25% chance to drop a key when picking up coins"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Range up#-50% Tear height"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Shot Speed down#↑ +2 Tear height"}, -- Lazy Worm
	[69] = {"69", "Faded Polaroid", "Camouflages the player randomly#Confuses enemies#Can be used to open the door to the \"Home\" floor"}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ +0.5 Damage up for each evil item held"}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ Stat increases of your items are 20% more effective"}, -- Cracked Crown
	[101] = {"101", "Dim Bulb", "!!! While holding an uncharged active item:#↑ +1.5 Damage#↑ +0.5 Speed#↑ +1.5 Range#↑ +0.5 Tears#↑ +0.3 Shot Speed#↑ +2 Luck"},
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
	[155] = {"155", "Holy Crown", "Spawns a Treasure Room {{TreasureRoom}} in Cathedral"}, --  Holy Crown
	[156] = {"156", "Mother's Kiss", "Grants one heart container#Works for Keeper, too"}, --  Mother's Kiss
	[157] = {"157", "Torn Card", "Every 15 shots, shoot an Ipecac {{Collectible149}} + My Reflection {{Collectible5}} tear with a very high range value"}, --  Torn Card
	[158] = {"158", "Torn Pocket", "Upon hit, Isaac drops all of his Pickups#(Exception: Hearts, Cards, Pills, Runes)"}, --  Torn Pocket
	[159] = {"159", "Gilded Key", "Replaces all new chests, with Locked Chest#Exception: Mega Chest"}, --  Gilded Key
	[160] = {"160", "Lucky Sack", "Spawns a Grab Bag upon traveling to the next floor"}, --  Lucky Sack
	[161] = {"161", "Wicked Crown", "Spawns a Treasure Room {{TreasureRoom}} in Sheol"}, --  Wicked Crown
	[162] = {"162", "Azazel's Stump", "Chance to turn into Azazel when entering a new room"}, --  Azazel's Stump
	[163] = {"163", "Dingle Berry", "Spawns 2 friendly Dips upon clearing a room"}, --  Dingle Berry
	[164] = {"164", "Ring Cap", "Spawns two extra bombs for each bomb placed"}, --  Ring Cap
	[165] = {"165", "Nuh Uh!", "On Womb and beyond, replaces all pickup spawns with a random pickup#Bombs and Hearts are most common"}, --  Nuh Uh!
	[166] = {"166", "Modeling Clay", "Grants the effect of a random Passive Item each room"}, --  Modeling Clay
	[167] = {"167", "Polished Bone", "Chance to spawn a friendly Bony when clearing a room"}, --  Polished Bone
	[168] = {"168", "Hollow Heart", "+1 bone heart container upon entering a new floor"}, --  Hollow Heart
	[169] = {"169", "Kid's Drawing", "While held, counts towards the Guppy transformation"}, --  Kid's Drawing
	[170] = {"170", "Crystal Key", "Grants the chance to automatically create Red Key rooms {{Collectible580}}"}, --  Crystal Key
	[171] = {"171", "Keeper's Bargain", "Devil deals use coins instead of hearts"}, --  Keeper's Bargain
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
	[186] = {"186", "Apollyon's Best Friend", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (double-tap shoot button)#Grants 2 Familiar attack flies which he can aim and fire with"}, --  Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "33% chance of adding an extra blind item in item rooms#Reveals the blind item in alt path"}, --  Broken Glasses
	[188] = {"188", "Ice Cube", "Adds a chance to petrify an enemy when entering the room#Killing the petrified enemy freezes it"}, --  Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Activates a 1 second shield upon killing an enemy"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["pl"].trinkets)

EID.descriptions["pl"].goldenTrinket = "ZŁOTE: Zdwojony Efekt!"

---------- Cards ----------
local repCards={
	[27] = {"27", "As Trefl", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów w bomby"},
	[28] = {"28", "As Karo", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów w monety"},
	[29] = {"29", "As Pik", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów w klucze"},
	[30] = {"30", "As Kier", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów w serca"},
	[39] = {"39", "Algiz", "Nieśmiertelność na 20 sekund"},
	
	[55] = {"55", "Odłamek Runy", "Aktywuje efekt losowej runy#Efekt ten jest słabszy"},
	[56] = {"56", "0 - Głupiec?", "Drops all your hearts and pickups on the floor#Only half a heart left afterwards#Pickups can spawn as {{Collectible74}} {{Collectible19}} collectibles if amount is sufficient"},
	[57] = {"57", "I - Mag?", "Grants big projectile and enemy repelling aura#Duration 1 minute"},
	[58] = {"58", "II - Kapłanka?", "Mom's foot stomps down repeatedly for 1 minute"},
	[59] = {"59", "III - Cesarzowa?", "Temporary effect:#↑ +2 red hearts#↑ +1.35 Szybkostrzelności"},
	[60] = {"60", "IV - Cesarz?", "Teleports you to an extra Boss room with extra loot"},
	[61] = {"61", "V - Hierofant?", "Spawns 2 Bone Hearts"},
	[62] = {"62", "VI - Kochankowie?", "Spawns 1 item from current room's item pool#Turns 1 red heart Container or 2 Soul hearts into a broken heart"},
	[63] = {"63", "VII - Rydwan?", "Turn into invincible immobile statue for 10 seconds#Extreme fire rate for duration"},
	[64] = {"64", "VIII - Sprawiedliwość?", "Spawns 2-4 golden chests"},
	[65] = {"65", "IX - Eremita?", "Turns pickups and items in the room into coins#Coin values are equal to their shop value"},
	[66] = {"66", "X - Koło Fortuny?", "Random dice room effect"},
	[67] = {"67", "XI - Siła?", "Enemies in room are weakened, slowed and take double damage"},
	[68] = {"68", "XII - Wisielec?", "Turns player into the Keeper for 30 seconds#Grants triple shot and speed down#Killed enemies drop random coins"},
	[69] = {"69", "XIII - Śmierć?", "Invokes Book of the Dead effect {{Collectible545}}#(Spawns Bone entities for each enemy killed in room)"},
	[70] = {"70", "XIV - Umiarkowanie?", "Applies 5 random pill effects"},
	[71] = {"71", "XV - Diabeł?", "Invokes the Bible effect {{Collectible33}}#Grants Seraphim familiar {{Collectible390}}# For 30 seconds"},
	[72] = {"72", "XVI - Wieża?", "Spawns 6 clusters of random rocks and obstacles"},
	[73] = {"73", "XVII - Gwiazda?", "Removes oldest passive item#Spawns 2 random items from current room's item pool"},
	[74] = {"74", "XVIII - Księżyc?", "Teleports you to Ultra secret room#Pathway back will be made of red rooms"},
	[75] = {"75", "XIX - Słońce?", "Gain Spirit of the Night {{Collectible159}}#↑ +1.5 Obrażeń# For the current level#Turns red hearts into bone hearts, but reverts once the effect ends#Applies Curse of Darkness"},
	[76] = {"76", "XX - Sąd Ostateczny?", "Spawns a Restock Machine"},
	[77] = {"77", "XXI - Świat?", "Spawns a trap door to a crawl space"},
	[78] = {"78", "Złamany Klucz", "One time use Red Key {{Collectible580}}"},
	[79] = {"79", "Królowa Kier", "Spawns 1-12 red hearts"},
	[80] = {"80", "Dzika Karta", "Copies the effect of the most recently used pill, card, rune, soul stone or activated item"},
	[81] = {"81", "Dusza Izaaka", "Rerolls the items in the room#Cycle back to their original form after one second#Effect repeats"},
	[82] = {"82", "Dusza Magdaleny", "Surrounds Isaac with a bubbling red aura for the current room#Enemies killed drop red half hearts that disappear in 2 secs"},
	[83] = {"83", "Dusza Kaina", "Creates red rooms with Red Key {{Collectible580}} for every possible exit"},
	[84] = {"84", "Dusza Judasza", "Turns Isaac into a phantom that can pass through enemies to paralyze them#After a few seconds, will attack them all, gaining damage bonus per target"},
	[85] = {"85", "Dusza ???", "Causes 8 poison farts with brown creep#Then plants trail of 7 Butt Bombs#Standing in the creep gives ↑ +1.35 Tears and ↑ +1 Damage"},
	[86] = {"86", "Dusza Ewy", "14 Dead Bird familiars fly in and attack enemies# Lasts for current room"},
	[87] = {"87", "Dusza Samsona", "Turn into a berserk Samson with melee attack for 10 seconds#↑ +0.4 Prędkości#↑ Szybkostrzelności#↑ +3 Obrażeń"},
	[88] = {"88", "Dusza Azazela", "Activates Mega Blast {{Collectible441}} for 7.5 secs"},
	[89] = {"89", "Dusza Łazarza", "Die and immediately revive at half a heart with some invincibility time#Item is automatically used upon taking fatal damage (like an extra life)"},
	[90] = {"90", "Dusza Edena", "Activates D6 {{Collectible105}} and D20 {{Collectible166}} effect#The rerolled items use random pools"},
	[91] = {"91", "Dusza Zaginionego", "Die and turn into The Lost for current room"},
	[92] = {"92", "Dusza Lilit", "Adds 1 random familiar"},
	[93] = {"93", "Dusza Dozorcy", "Spawns 3-25 random coins"},
	[94] = {"94", "Dusza Apollyona", "Spawn 15 random locust flies"},
	[95] = {"95", "Dusza Zapomnianego", "Spawns The Forgotten as a temporary secondary character for current room"},
	[96] = {"96", "Dusza Betani", "Spawns 6 Book of Virtues {{Collectible584}} wisps with random properties"},
	[97] = {"97", "Dusza Jakuba i Ezawa", "Spawns Esau as a temporary secondary character for current room"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["pl"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "Bomby to Klucze", "Zamienia ilość bomb z kluczami#Złote bomby i klucze również"},
	[12] = {"11", "Zasięg Maleje", "↓ -0.6 Zasięgu"},
	[13] = {"12", "Zasięg Wzrasta", "↑ +0.75 Zasięgu"},
	[42] = {"41", "Jestem śpiący...", "Spowalnia ciebie oraz przeciwników w tym pokoju"},
	[43] = {"42", "Ekscytacja!", "Przyspiesza ciebie oraz przeciwników w tym pokoju#Ponawia się po 30 oraz 60 sekundach"},
	
	[48] = {"47", "Prędkość Strzałów Maleje", "↓ -0.15 Prędkości Strzałów"},
	[49] = {"48", "Prędkość Strzałów Wzrasta", "↑ +0.15 Prędkości Strzałów"},
	[50] = {"49", "Eksperymentalna Pigułka", "↑ Zwiększa 1 losową statystykę#↓ Zmniejsza 1 inną, losową statystykę#Nie zmniejsza, gdy masz Doktorat (PHD)"},
	[9999] = {"", "Złota Pigułka", "Efekt losowej pigułki#Niszczy się po kilku użyciach"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["pl"].pills)

EID.descriptions["pl"].horsepills={
	{"0", "Wzdęcia", "Zatruwa cały pokój"},
	{"1", "Potknięcie", "Tracisz 2 serca"},
	{"2", "Jaja e Stali", "+4 Serca Duszy"},
	{"3", "Bomby to Klucze", "Zamienia ilość bomb z kluczami#Zwiększa ilość kluczy i bomb o 50%#Złote bomby i klucze również są zamienione"},
	{"4", "Ostra Biegunka", "Tworzy kilka mega naprowadzanych troll bomb na twojej pozycji"},
	{"5", "Pełne Zdrowie", "Pełne Zdrowie#+3 Serca Duszy"},
	{"6", "Mniej Zdrowia", "↓ -2 Serca"},
	{"7", "Więcej Zdrowia", "↑ +2 Puste zasobniki na serca"},
	{"8", "Znalazłem Pigułki", "Brak efektu"},
	{"9", "Dorastanie", "Brak efektu"}, -- Puberty
	{"10", "Muszka", "Dostajesz 1 Dużego Fana (Big Fan) {{Collectible279}}#Nie ma górnego limitu"},
	{"11", "Zasięg Maleje", "↓ -1.2 Zasięgu"},
	{"12", "Zasięg Wzrasta", "↑ +0.9 Zasięgu"},
	{"13", "Prędkość Maleje", "↓ -0.24 Prędkości"},
	{"14", "Prędkość Wzrasta", "↑ +0.3 Prędkości"},
	{"15", "Szybkostrzelność Maleje", "↓ -0.56 Szybkostrzelności"},
	{"16", "Szybkostrzelność Wzrasta", "↑ +0.70 Szybkostrzelności"},
	{"17", "Szczęście Maleje", "↓ -2 Szczęścia"},
	{"18", "Szczęście Wzrasta", "↑ +2 Szczęścia"},
	{"19", "Telepigułka", "Teleport do losowego pokoju"}, -- TODO
	{"20", "Energia na 48h!", "Odładowuje twój przedmiot aktywny#Upuszcza baterie"}, -- TODO
	{"21", "Krwawe Wymioty", "Opróżnia wszystkie zasobniki na serca poza jednym#Tworzy czerwone serca"}, -- TODO
	{"22", "Paraliż", "Brak możliwości ruchu przez 4 sekundy"},
	{"23", "Mam wieczne widzenie!", "Otwiera przejścia do sekretnych pokoi na tym piętrze#Ujawnia całą mapę"},
	{"24", "Feromony", "Oczarowuje wszystkich przeciwników w tym pokoju na stałe"},
	{"25", "Amnezja", "Ukrywa mapę piętra"}, --TODO
	{"26", "Cytrynowa Zabawa", "Tworzy na ziemi kałużę wypełniającą pokój, która rani nielatających wrogów"},
	{"27", "JESTEŚ CZARODZIEJEM?", "Przez 60 sekund strzelasz na skos"},
	{"28", "Paracetamol", "W tym pokoju otrzymujesz maksymalnie pół serca obrażeń"},  --TODO
	{"29", "Uzależniony!", "W tym pokoju wszystko zrani cię za pełne serce"}, --TODO
	{"30", "Poluzowanie!", "Przez 4 sekundy tworzysz kupy pod nogami"}, --TODO
	{"31", "???", "Efekt Klątwy Dezorientacji na całe piętro"}, --TODO
	{"32", "Czyni cię większym", "Mocno Rośniesz#Brak wpływu na twój hitbox"},
	{"33", "Czyni cię małym", "Mocno Malejesz#Twój hitbox również się zmniejsza"},
	{"34", "Zarażony!", "Tworzy 2 niebieskie pająki na każdą kupę w pokoju"},
	{"35", "Zarażony?", "Tworzy 2 niebieskie pająki na każdego wroga w pokoju#Tworzy 2-6 pająków w przypadku braku przeciwników"},
	{"36", "Pigułka Mocy!", "Krótkotrwała nieśmiertelność#↑ #7 Obrażeń#↑ +3 Zasięgu#Efekt trwa na cały pokój"},
	{"37", "Retro-Widok", "Rozpikselowuje ekran na 90 sekund"},
	{"38", "Przyjaciele do końca", "Tworzy 6 niebieskich much"},
	{"39", "Przeczyszczenie", "Tworzy długotrwałą kałużę śliskiej mazi"},
	{"40", "Coś jest nie tak...", "Tworzy długotrwałą kałużę spowalniającej mazi"},
	{"41", "Jestem śpiący...", "Spowalnia przeciwników w tym pokoju"}, --TODO
	{"42", "Ekscytacja!", "Przyspiesza przeciwników w tym pokoju"}, --TODO
	{"43", "Łyk!", "Połykasz swój trynkiet, zyskując permanentnie jego efekt"}, --TODO
	{"44", "Paw!", "Wystrzeliwujesz serię łez z efektem Wymiotnicy"},
	{"45", "Jakbym stąpał po promykach słońca!", "Krótkotrwała nieśmiertelność bez zadawania obrażeń#Straszysz wszystkich wrogów# Odzyskujesz pół serca za 2 zjedzonych wrogów"},
	{"46", "Refluks!", "Tworzy ostatnią połkniętą pigułkę jako końską pigułę"},
	{"47", "Prędkość Strzałów Maleje", "↓ -0.3 Prędkości Strzałów"},
	{"48", "Prędkość Strzałów Wzrasta", "↑ +0.3 Prędkości Strzałów"},
	{"49", "Eksperymentalna Pigułka", "↑ Zwiększa 1 losową statystykę dwa razy#↓ Zmniejsza 1 inną, losową statystykę dwa razy#Nie zmniejsza, gdy masz Doktorat (PHD)"},
	[9999] = {"", "Złota Pigułka", "Efekt losowej, końskiej pigułki#Niszczy się po kilku użyciach"}, -- golden Pill
}

EID.descriptions["pl"].CraftingRoomContent = "Pickupy w pokoju:"
EID.descriptions["pl"].CraftingResults = "Wyniki:#(Przewiń: Trzymaj TAB + Strzał △/▽)"

