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
	[5] = {"5", "Moje Odbicie", "Daje łzom efekt bumerangu#↑ +1.5 Zasięgu#↑ +60% dodatkowego Zasięgu#↑ +0.6 Prędkości strzałów#↑ +1 Wysokości lotu łez"}, -- My Reflection
	[6] = {"6", "Numer Jeden", "↑ +1.5 Szybkostrzelności#↓ -1.5 Zasięgu#↓ -20% mnożnika Zasięgu#↑ +0.76 Wysokości lotu łez"}, -- Number One
	[12] = {"12", "Magiczny Grzyb", "↑ +1 Zdrowia#↑ +0.3 Obrażeń#↑ +50% Mnożnik Obrażeń#↑ +1.5 Zasięgu#↑ +0.3 Prędkości#↑ +0.5 Wysokości lotu łez#Pełne zdrowie!"},
	[13] = {"13", "Wirus", "Zatruwasz dotykiem#↑ +0.2 Prędkości"}, -- The Virus
	[14] = {"14", "Furia na Sterydach", "↑ +0.3 Prędkości#↑ +1.5 Zasięgu#↑ +0.5 Wysokości lotu łez"}, -- Roid Rage
	[18] = {"18", "Dolar", "+100 Monet"}, -- A Dollar
	[22] = {"22", "Drugie Śniadanie", "↑ +1 Serce#Leczy jedno serce"}, -- Lunch
	[23] = {"23", "Obiad", "↑ +1 Serce#Leczy jedno serce"}, -- Dinner
	[24] = {"24", "Deser", "↑ +1 Serce#Leczy jedno serce"}, -- Dessert
	[25] = {"25", "Śniadanie", "↑ +1 Serce#Leczy jedno serce"}, -- Breakfast
	[26] = {"26", "Zgniłe Mięso", "↑ +1 Serce#Leczy jedno serce"}, -- Rotten Meat
	[29] = {"29", "Bielizna Mamy", "↑ +1.5 Zasięgu#↑ +0.5 Wysokości Łez#Tworzy od 3 do 6 Niebieskich Much"}, -- Moms Underwear
	[30] = {"30", "Szpilki Mamy", "↑ +1.5 Zasięgu#↑ +0.5 Wysokości Łez#Dotknięci wrogowie otrzymują 12 obrażeń"}, -- Mom's Heels
	[31] = {"31", "Szminka Mamy", "↑ +2.25 Zasięgu#↑ +0.5 Wysokości Łez#Tworzy 1 losowe serce"}, -- Mom's Lipstick
	[40] = {"40", "Kamikaze!", "Powoduje dużą eksplozję pod twoimi nogami#Zadaje 185 obrażeń"}, -- Kamikaze!
	[42] = {"42", "Zgniły Łeb Boba", "Trująca bomba do rzucania#Zadaje 185 obrażeń + wartość twoich obrażeń#Tworzy chmurę trucizny"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport!", "Teleportuje cię do dowolnego, losowego pokoju poza pokojem I AM ERROR#Porusz się w kierunku, w którym chciałbyś się teleportować"}, -- Teleport
	[45] = {"45", "Serduszko", "Leczy 1 czerwone serce#W trybie kooperacji leczy innych po pół serca"}, -- Yum Heart
	[46] = {"46", "Szczęśliwa Stopa", "↑ +1.0 Szczęścia#Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju#Zmienia niektóre negatywne pigułki w pozytywne"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Przyciąga do ciebie Pickupy#Zdalne otwieranie skrzynek, ignoruje obrażenia od skrzynek z kolcami"}, -- Magneto
	[55] = {"55", "Oko Mamy", "Szansa na dodatkowy strzał z tyłu głowy"}, -- Mom's Eye
	[62] = {"62", "Urok Wampira", "↑ +0.3 Obrażeń#Leczy pół serca co 13 zabitych wrogów"}, -- Charm of the Vampire
	[64] = {"64", "Wyprzedaż Steam", "Zniżka -50% na wszystko w sklepie#Zebranie kolejnych obniży ceny jeszcze bardziej"}, -- Steam Sale
	[67] = {"67", "Siostra Madzia", "Sojusznik ze zwykłymi łzami#Zadaje 6 Obrażeń na łzę"}, -- Sister Maggy
	[70] = {"70", "Hormony Wzrostu", "↑ +1.0 Obrażeń#↑ +0.2 Prędkości"}, -- Growth Hormones
	[71] = {"71", "Mini Grzybek", "↑ +0.3 Prędkości#↓ +1.5 Zasięgu#↑ Malejesz"}, -- Mini Mush
	[72] = {"72", "Różaniec", "+3 Serca Duszy#↑ 0.5 Szybkostrzelności#Biblia pojawia się częściej"}, -- Rosary
	[77] = {"77", "Mój Mały Jednorożec", "Nieśmiertelność#Zadajesz 20 obrażeń kontaktowych"}, -- My Little Unicorn
	[79] = {"79", "Znak", "↑ +1.0 Obrażeń#↑ +0.2 Prędkości#+1 Czarne Serce"}, -- The Mark
	[80] = {"80", "Pakt", "↑ +0.5 Obrażeń#↑ +0.7 Szybkostrzelności#+2 Czarne Serca"}, -- The Pact
	[83] = {"83", "Gwóźdź", "+ Pół Czarnego serca#↑ +2 Obrażeń#↓ -0.18 Prędkości#Zadajesz Obrażenia kontaktowe#Miażdżysz kamienie"}, -- The Nail
	[98] = {"98", "Relikt", "Tworzy 1 Serce duszy co 7-8 pokoi"}, -- The Relic
	[101] = {"101", "Aureola", "↑ +1 Zdrowia#↑ +0.3 Obrażeń#↑ +0.2 Szybkostrzelności#↑ +0.38 Zasięgu#↑ +0.3 Prędkości#↑ +0.5 Wysokości lotu łez"}, -- The Halo
	[106] = {"106", "Pan Mega", "↑ Obrażenia od bomb x1.85#+5 Bomb"}, -- Mr. Mega
	[110] = {"110", "Soczewki Mamy", "Szansa na wystrzelenie Zamrażających Łez#↑ +0.38 Zasięgu#↑ +0.5 Wysokości lotu łez"}, -- Mom's Contacts
	[121] = {"121", "Dziwny Grzyb", "↑ +1 Pusty zasobnik na serce#↑ +1.0 Obrażeń#↑ +0.38 Zasięgu#↓ -0.2 Prędkości#↑ +0.5 Wysokości Łez"}, -- Odd Mushroom (Large)
	[123] = {"123", "Księga Potworów", "Tworzy losowego sojusznika#Zniknie po zmianie Piętra"}, -- Monster Manual
	[129] = {"129", "Wiadro Smalcu", "↑ +2 Zasobniki na serce#↓ -0.2 Prędkości#Leczy połowę serca"}, -- Bucket of Lard
	[138] = {"138", "Znamię", "↑ +1 Zdrowia#↑ +0.3 Obrażeń#Leczy 1 czerwone serce"}, -- Stigmata
	[139] = {"139", "Torebka Mamy", "Możesz mieć 2 trynkiety na raz#Tworzy 1 losowy trynkiet"}, -- Mom's Purse
	[140] = {"140", "Przekleństwo Boba", "Trujące bomby#+5 bomb#Bomby tworzą chmurę trucizny"}, -- Bob's Curse
	[147] = {"147", "Karbowana Siekiera", "Zamachując się niszczysz kamienie i ranisz wrogów#Trafianie redukuje naładowanie przedmiotu#Przejście na inne piętro odładuje przedmiot"}, -- Notched Axe
	[148] = {"148", "Zarażenie", "Tworzy 2-6 much, gdy zostaniesz trafiony"}, -- Infestation
	[149] = {"149", "Wymiotnica", "Wybuchowe, trujące łzy#↑ +40 Obrażeń#↓ -0.2 Prędkości Strzałów#↓ Szybkostrzelność"}, -- Ipecac
	[152] = {"152", "Technologia 2", "Permanentny laser!#Laser zadaje 13% twoich obrażeń#↓ Zmniejsza Szybkostrzelność o 33%"}, -- Technology 2
	[158] = {"158", "Kryształowa Kula", "Ujawnia całą mapę#Upuszcza losową Kartę albo Serce duszy#Gdy trzymasz:#↑ +15% Szansy na Planetatium#100%, jeżeli pominąłeś Pokój Skarbów{{TreasureRoom}}"}, -- Crystal Ball
	[171] = {"171", "Tyłek Pająka", "Spowalnia wrogów na 4 sekundy#Zadaje 10 obrażeń wszystkim wrogom#Tworzy niebieskie pająki, jeśli przeciwnik zginie od tego przedmiotu"}, -- Spider Butt
	[176] = {"176", "Komórki Macierzyste", "↑ +1 Zdrowia#↑ +0.16 Prędkości Strzałów#Leczy 1 czerwone serce"}, -- Stem Cells
	[178] = {"178", "Woda Święcona", "{{Throwable}} {{ColorOrange}}Do Rzucania{{CR}}#Tworzy kałużę mazi w miejscu, w które rzucisz"}, -- Holy Water
	[182] = {"182", "Najświętsze Serce", "Naprowadzane łzy#↑ +1 Zdrowia#↑ 230% + 1 Obrażeń#↓ -0.4 Szybkostrzelności#↓ -0.25 Prędkości Strzałów#↑ +0.5 Zasięgu"}, -- Sacred Heart
	[184] = {"184", "Święty Graal", "Daje latanie#↑ +1 Zdrowia#Leczy 1 czerwone serce"}, -- Holy Grail
	[188] = {"188", "Abel", "Odzwierciedla twoje ruchy#Strzela w twoim kierunku#Zadaje 3.5 obrażeń na strzał#7.5 obrażeń, jeśli grasz Kainem"}, -- Abel
	[192] = {"192", "Telepatia Dla Opornych", "Naprowadzane łzy w obecnym pokoju#↑ +3 Zasięgu"}, -- Telepathy for Dummies
	[193] = {"193", "MIĘSO!", "↑ +1 Zdrowia#↑ +0.3 Obrażeń#Leczy 1 czerwone serce"}, -- MEAT!
	[194] = {"194", "Magiczna Kula nr 8", "↑ +0.16 Prędkości Strzałów#+1 karta#+15% szans na Planetarium"}, -- Magic 8 Ball
	[197] = {"197", "Sok z Winogron", "↑ +0.5 Obrażeń#↑ +0.38 Zasięgu#↑ +0.5 Wysokości lotu łez"}, -- Jesus Juice
	[203] = {"203", "Pokorny Pakiet", "Chance to spawn the double version of pickups"}, -- Humbling Bundle
	[205] = {"205", "Ostra Wtyczka", "- pół serca = daje ci jeden ładunek aktywnego przedmiotu przy naciśnięciu spacji"}, -- Sharp Plug
	[206] = {"206", "Gilotyna", "↑ +1 Obrażeń#↑ +0.33 Szybkostrzelności#Twoja głowa teraz orbituje wokół ciała#Strzelasz z głowy#Głowa zadaje 105 obrażeń kontaktowych"}, -- Guillotine
	[211] = {"211", "Pajęcze Dziecię", "Pojawia 3-5 pająków, gdy zostaniesz trafiony"}, -- Spider Baby
	[214] = {"214", "Anemik", "↑ +1.5 Zasięgu#Zostawiasz pod sobą maź, gdy zostaniesz trafiony"}, -- Anemic
	[218] = {"218", "Łożysko", "↑ +1 Zdrowia#Leczy 1 czerwone serce#Powoli regeneruje zdrowie"}, -- Placenta
	[224] = {"224", "Ciało Cricketa", "↓ -20% Zasięgu#Łzy rozdzielają się na 4 przy trafieniu#Powstałe łezki zadają połowiczne obrażenia#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Cricket's Body
	[228] = {"228", "Perfumy Mamy", "Szana na straszące wrogów strzały#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Moms Perfume
	[230] = {"230", "Abaddon", "↑ +1.5 Obrażeń#↑ +0.2 Prędkości#Straszące wrogów łzy#Zamienia wszystkie Czerwone Serca na Czarne#+2 Czarne Serca"}, -- Abaddon
	[232] = {"232", "Stop-Er", "Permanentny efekt spowolnienia#↑ +0.3 Prędkości"}, -- Stop Watch
	[240] = {"240", "Terapia Eksperymentalna", "↑ Losowe 4 Statystyki rosną i ↓2 maleją"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Podwaja wszystkie twoje strzały#↓ -25% Obrażeń"}, -- 20/20
	[248] = {"248", "Jeden Umysł", "Niebieskie Pająki/Muchy zadają podwójne obrażenia#Sojusznicy z rodziny pająków/much są silniejsi"}, -- Hive Mind
	[253] = {"253", "Magiczny Strup", "↑ +1 Szczęścia#↑ +1 Zdrowia#Leczy 1 czerwone serce"}, -- Magic Scab
	[254] = {"254", "Zakrzep", "↑ +1 Obrażeń#↑ +1.5 Zasięgu#!!! Wpływa tylko na lewe oko"}, -- Blood Clot
	[256] = {"256", "Gorące Bomby", "Płonące bomby#+5 Bomb#Nie otrzymujesz już obrażeń od ognia#Bomby zadają obrażenia kontaktowe"}, -- Hot Bombs
	[261] = {"261", "Wytrzeszcz", "↑ +0.5 Obrażeń#↓ Obrażenia spadają z każdą chwilą, w której łza znajduje się w powietrzu#300% Obrażeń w najlepszym wypadku"}, -- Proptosis
	[262] = {"262", "Zgubiona Kartka 2", "+1 Czarne Serce#Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju#Czarne Serca i efekt Nekronomikonu zadają podwójne obrażenia"}, -- Missing Page 2
	 
	[263] = {"263", "Przejrzysta Runa", "Kopiuje efekt trzymanej runy lub kamienia duszy#Upuszcza 1 losową runę przy podniesieniu"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "Mózg Boba", "Rzucany sojusznik w stylu bomby#Wybuch zadaje 100 Obrażeń#Obrażenia te ignorują pancerz"}, -- Bob's Brain
	[274] = {"274", "Najlepszy Kumpel", "Kiedy zostaniesz trafiony, dostajesz orbitującego sojusznika#Zadaje on 150 obrażeń na sekundę"}, -- Best Bud
	[275] = {"275", "Mały Piekielnik", "Strzela laserem z Ognia Piekielnego{{Collectible118}}#Strzały zadają 2 obrażeń na tick czasu, łącznie zadając 20 obrażeń"}, -- Lil Brimston
	[276] = {"276", "Serce Izaaka", "Twoje ciało jest teraz nieśmiertelne#!!! Otrzymujesz obrażenia, gdy Serce zostanie trafione#Strzelając ładujesz Serce, które wystrzeli serię łez"}, -- Isaac's Heart
	[278] = {"278", "Mroczny Przybłęda", "!!! Zamienia:#1,5 Czerwonego Serca w 1 Serce Duszy/Czarne Serce, pająka, pigułkę, kartę lub runę"}, -- Dark Bum
	[280] = {"280", "Siostrzyczka Kosarzy", "Losowo tworzy niebieskie pająki w pokoju z wrogami#Zaurocza wrogów, z którymi wejdzie w kontakt"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Przelosowuje wszystkie piedestały i pickupy oraz wszystkie twoje statystyki i pasywne przedmioty#Duplikuje 1 losowy pickup w pokoju#Restartuje obecny pokój i odradza + przelosowuje przeciwników#Przelosowuje również kamienie"}, -- D100
	[285] = {"285", "D10", "Przelosowuje wszystkich przeciwników w pokoju#Stara się przelosować ich w przeciwników o podobnym maksymalnym HP"}, -- D10
	[287] = {"287", "Księga Tajemnic", "Daje efekt{{Collectible54}}Mapy Skarbów,{{Collectible21}}Kompasu lub{{Collectible246}}Niebieskiej Mapy na obecne piętro#Daje tylko efekty, których jeszcze nie posiadasz#Jeżeli wszystkie te efekty są aktywne, dostajesz efekt {{Collectible76}}X-Ray w Oczach"}, -- Book of Secrets
	[288] = {"288", "Pudełko Pająków", "Pojawia 4-8 niebieskich pająków"}, -- Box of Spiders
	[289] = {"289", "Czerwona Świeca", "Rzuca czerwony płomień#Płomień zniknie po zadaniu 23 obrażeń 5 razy lub po 10 sekundach"}, -- Red Candle
	[291] = {"291", "Spłuczka!", "!!! Zabija przeciwników-kupy!#Zamienia normalnych przeciwników w kupy#Gasi ogniska#W Kopalni zamienia lawę w kładkę"}, -- Flush!
	[292] = {"292", "Biblia Szatana", "+1 Czarne serce#Użyta przed walką z bossem sprawi, że przedmiot po tej walce będzie z puli przedmiotów w pokoju diabła"}, -- Satanic Bible
	[294] = {"294", "Maślana Fasola", "Odrzuca pobliskich przeciwników i strzały#Wrogowie odbici w przeszkody otrzymują 10 obrażeń"}, -- Butter Bean
	[295] = {"295", "Cudowne Pudełeczko", "Rani wszystkich wrogów w pokoju twoimi obrażeniami x2 + 10 #Koszt: 1 moneta {{Coin}}"}, -- Magic Fingers
	[296] = {"296", "Przetwornik", "!!! Konwertuje:#1 Serce Duszy/Czarne w 1 Czerwone Serce"}, -- Converter
	[297] = {"297", "Puszka Pandory", "!!! JEDNORAZOWE !#!!! Upuszcza przedmioty zależnie od piętra:#B1: 2 Serca Duszy#B2: 2 klucze i bomby#C1: 1 Przedmiot z bossa#C2: B1+C1#D1: 4 Serca Duszy#D2: 20 Monet#W1: 2 Przedmioty z bossów#W2: Biblia#Szeol: 1 Przedmiot Diabła{{DevilRoom}} + Czarne Serce#Katedra: 1 Przedmiot Anioła{{AngelRoom}} + Serce Duszy#Skrzynia: 1 Moneta#Dom: Czerwony Klucz {{Collectible580}}"}, -- Pandora's box
	[300] = {"300", "Baran", "↑ +0.25 Prędkości#Dotykanie przeciwników ich rani#Odpowiednio szybki bieg sprawi, że nie otrzymasz obrażeń kontaktowych"}, -- Aries
	[307] = {"307", "Koziorożec", "↑ +1 Serce{{Heart}}/Klucz{{Key}}/Bomba{{Bomb}}/Moneta{{Coin}}#↑ +0.5 Obrażeń#↑ +0.1 Prędkości#↑ +0.75 Zasięgu#↑ -1 opóźnienia wystrzału, które może zejść poniżej zablokowanej wartości"}, -- Capricorn
	[308] = {"308", "Wodnik", "Zostawiasz za sobą maź#Zadaje ona 66% twoich obrażeń na sekundę#Maź łączy się z efektami łez"}, -- Aquarius
	[314] = {"314", "Masywne Uda", "↑ +1 Zdrowia#↓ -0.4 Prędkości#Leczy 1 serce#Niszczysz kamienie wchodząc w nie"}, -- Thunder Thighs
	[315] = {"315", "Nietypowy Przyciągacz", "Magnetyczne łzy#Wpływa na wrogów, pickupy i trynkiety#Przedmioty będą przyciągane do miejsca, w którym wyląduje strzał"}, -- Strange Attractor
	[320] = {"320", "Jedyny Przyjaciel ???", "Kontrolowana Mucha#Zadaje 5 obrażeń kontaktowych na tick czasu"}, -- ???'s Only Friend
	[326] = {"326", "Tchnienie Życia", "Trzymanie spacji do wyczerpania ładunków da ci nieśmiertelność#Słupy światła trafią wrogów, którzy wejdą z tobą w kontakt, gdy jesteś nieśmiertelny#!!! Nie trzymaj za długo!"}, -- Breath of Life
	[328] = {"328", "Negatyw", "↑ +1.0 Obrażeń#Gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak, ranisz wszystkich wrogów w pokoju"}, -- The Negative
	[330] = {"330", "Mleko Sojowe", "↑ Ogromna Szybkostrzelność:#{{Blank}} (x 5.5)#↓ -80% Obrażeń#Znacząco zmniejsza odpychanie"}, -- Soy Milk
	[331] = {"331", "Bóstwo", "Naprowadzane łzy#↑ +0.5 Obrażeń#↑ +0.5 Zasięgu#↓ -0.3 Szybkostrzelności#↓ -0.3 Prędkości Strzałów#↑ +0.8 Wysokości Lotu Łez#Łzy otrzymują aurę, zadającą obrażenia"}, -- Godhead
	[336] = {"336", "Martwa Cebula", "Penetrujące + Widmowe łzy#↓ -1.5 Zasięgu#↓ -0.4 Prędkości Strzałów#↑ +50% Wielkości łez"}, -- Dead Onion
	[339] = {"339", "Agrafka", "↑ +1.5 Zasięgu#↑ +0.16 Prędkości Strzałów#+1 Czarne Serce#↑ +0.5 Wysokości lotu łez"}, -- Safety Pin
	[342] = {"342", "Niebieściak", "↑ +1 Zdrowia#↑ +0.7 Szybkostrzelności#↓ -16% Prędkości Strzałów#Leczy 2 serca"}, -- Blue Cap
	[344] = {"344", "Pudełko Zapałek", "+1 Czarne Serce#Tworzy 2-3 Bomby do podniesienia#Tworzy trynkiet{{Trinket41}}Zapałka"}, -- Match Book
	[345] = {"345", "Synthol", "↑ +1.0 Obrażeń#↑ +1.5 Zasięgu#↑ +0.5 Wysokości lotu łez"}, -- Synthoil
	[346] = {"346", "Przekąska", "↑ +1 Serce#Leczy 1 serce"}, -- A Snack
	[350] = {"350", "Wstrząs Toksyczny", "Przy wejściu do pokoju zatruwa wszystkich obecnych wrogów#Jesteś niewrażliwy na chmury toksyn"}, -- Toxic Shock
	[352] = {"352", "Szklana Armata", "Strzela wielką widmową, penetrującą, łzą ((Obrażenia+1) X 10)#Gdy otrzymujesz obrażenia, wynoszą one 2 serca#↑+1.5 Zasięgu"}, -- Glass Canon
	[355] = {"355", "Perły Mamy", "↑ +0.38 Zasięgu#↑ +1 Szczęścia#+1 Serce Duszy#↑ +0.5 Wysokości lotu łez"}, -- Mom's Pearl
	[360] = {"360", "Inkub", "Strzela takimi samymi łzami jak ty, w odniesieniu do statystyk i efektów#Zadaje 100% twoich obrażeń, gdy grasz jako Lilit#W innym przypadku zadaje 75% twoich obrażeń"}, -- Incubus
	[366] = {"366", "Bomby Rozpryskowe", "+5 bomb#Przy wybuchu twoje bomby rozpadają się na 4-5 mniejszych"}, -- Scatter Bombs
	[369] = {"369", "Kontinuum", "↑ +3.0 Zasięgu#↑ +1.5 Wysokości lotu łez#Łzy przechodzą przez ściany i wylatują z drugiej strony"}, -- Continuum
	[370] = {"370", "Pan Laleczka", "↑ +0.7 Szybkostrzelności#↑ +1.5 Zasięgu#↑ +0.5 Wysokości lotu łez#Tworzy 3 losowe serca przy podniesieniu"}, -- Mr. Dolly
	[372] = {"372", "Energiczne Dziecko", "Losowa szansa na upuszczenie mikro-baterii lub zamrożenie przeciwników w pokoju#Szansa na dodanie jednego ładunku do twojego przedmiotu aktywnego"}, -- Charged Baby
	[374] = {"374", "Święta Światłość", "Losowa szansa na wystrzał Świętej łzy, która tworzy słup światła przy trafieniu#Promień światła zadaje 3x twoje obrażenia"}, -- Holy Light
	[375] = {"375", "Kapelusz Żywiciela", "20% szans na zablokowanie wrogiej łzy#Odporność na wybuchy"}, -- Host hat
	[376] = {"376", "Uzupełniacz", "Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz#Uzupełnione przedmioty zwiększają swoje ceny z każdym kolejnym zakupem"}, -- Restock
	[382] = {"382", "Kula Przyjaźni", "Rzucona w przeciwnika nie-bossa złapie go#Następny rzut wypuści złapanego przeciwnika, który będzie walczyć dla ciebie#Przejście po kuli, która złapała wroga natychmiast odładuje ją"}, -- Friendly Ball
	[384] = {"384", "Tyci Gurdy", "Wystrzeliwuje i ślizga się po pokoju#Zadaje 5-20#{{Blank}} obrażeń kontaktowych przy trafieniu,#{{Blank}} w zależności od naładowania"}, -- Lil Gurdy
	[389] = {"389", "Wór na Runy", "Upuszcza losową runę co 7-8 pokoi#Może również upuścić Kamienie Duszy"}, -- Rune Bag
	[393] = {"393", "Pocałunek Węża", "Losowa szansa na wystrzelenie trujących łez#Trujesz wrogów dotykiem#Wrogowie zabici trucizną z dotyku mają 20% szans na upuszczenie czarnego serca przy śmierci"}, -- Serpent`s Kiss
	[394] = {"394", "Oznaczony", "Twoje strzały lecą w kierunku położonego na ziemi celownika, którym sterujesz#↑ +0.7 Szybkostrzelności#↑ +3.0 Zasięgu#↑ +0.3 Wysokości lotu łez#Sojusznicy strzelają w stronę celownika"}, -- Marked
	[395] = {"395", "Tech X", "Strzelasz laserowym kręgiem, który możesz ładować#Krąg ten leci przez cały pokój#Obrażenia są zależne od naładowania#100% obrażeń na pełnym naładowaniu"}, -- Tech X
	[397] = {"397", "Wiązka Holownicza", "Łzy podążają za słupem światła, dopasowując się do zmiany kierunku#↑ +0.5 Szybkostrzelności#↑ +1.5 Zasięgu#↑ +0.16 Prędkości Strzałów#↑ +0.5 Wysokości lotu łez"},
	[399] = {"399", "Paszcza z Pustki", "Po ciągłym strzelaniu przez 3 sekundy, na twojej głowie pojawi się czerwony krzyż. Po zaprzestaniu strzelania, tworzy krąg z czarnego lasera"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Szansa na wystrzelenie czegoś na wzór klejącej się bomby#Przyklejone łzy zadają obrażenia cyklicznie"}, -- Explosivo
	[404] = {"404", "Pierdzący Dzieciak", "Blokuje pociski#Pierdzi, gdy zostanie trafiony, przy czym może przeciwników oczarować, zatruć lub odepchnąć#Pierdy zadają 5-6 obrażeń"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} {{ColorOrange}}Do Rzucania{{CR}}#Przelosowuje przeciwników i pickupy, z którymi wejdzie w kontakt"}, -- GB Bug
	[407] = {"407", "Czystość", "↑ Zwiększa jedną z twoich statystyk zależnie od koloru aury#Dostajesz nową aurę po otrzymaniu obrażeń#{{ColorRed}}Czerwona{{CR}} =#{{Blank}} +4.0 Obrażeń#{{ColorBlue}}Niebieska{{CR}} =#{{Blank}} -4 Opóźnienia wystrzału#{{ColorYellow}}Żółta{{CR}} = +0.5 Prędkości#{{ColorOrange}}Pomarańczowa{{CR}} =#{{Blank}} +3.0 Zasięgu,#{{Blank}} +1 Wysokości lotu łez"},
	[408] = {"408", "Athame", "Po otrzymaniu obrażeń, wokół ciebie pojawi się krąg z czarnego lasera"}, -- Athame
	[416] = {"416", "Głębokie Kieszenie", "Tworzy 1-3 monety, jeżeli nie dostałeś nagrody za pokój#Zwiększa limit monet do 999"}, -- Deep Pockets
	[417] = {"417", "Sukkub", "Lata po pokoju mając na sobie raniącą aurę, która zadaje 7.5-10 obrażeń na sekundę#↑ +50% obrażeń, gdy stoisz w tej aurze"}, -- Succubus
	[421] = {"421", "Fasola Nerkowata", "Nakłada efekt oczarowania na wszystkich pobliskich przeciwników"}, -- Kidney Bean
	[426] = {"426", "Fan z Obsesją", "Śledzi każdy twój ruch z 0.66-sekundowym opóźnieniem#Zadaje 30 obrażeń kontaktowych na sekundę"}, -- Obsessed Fan
	[430] = {"430", "Tata-Mucha", "Śledzi każdy twój ruch z 0.66-sekundowym opóźnieniem#Strzela w najbliższych wrogów łzami, zadającymi twoje obrażenia"}, -- papa Fly
	[431] = {"431", "Wielowymiarowe Dziecko", "Śledzi każdy twój ruch z 0.66-sekundowym opóźnieniem#Łzy, które przez nie przelecą rozdzielą się na dwie i przyspieszą"},
	[437] = {"437", "D7", "Odradza wszystkich przeciwników w pokoju#Pozwala na kilkukrotne zdobycie nagród za oczyszczenie pokoju"}, -- D7
	[440] = {"440", "Kamień Nerkowy", "Losowo w trakcie strzelania przestaniesz strzelać, po czym wypuścisz serię pocisków i kamień nerkowy"},
	[448] = {"448", "Kawałek Szkła", "Gdy otrzymasz obrażenia na czerwone serca. plujesz czerwonymi łazami#Wybierasz kierunek strzelając#Gdy jest aktywne, rani cię pół serca co 20 sekund#Zatrzymaj krwawienie lecząc czerwone serca"}, -- Shard of Glass
	[451] = {"451", "Obrus do Tarota", "Przy podniesieniu upuszcza losową#{{Blank}} kartę {{Card}} lub runę {{Rune}}#Niektóre karty otrzymują dodatkowe lub zdwojone efekty"}, -- Tarot Cloth
	[453] = {"453", "Złamanie Otwarte", "Kościane łzy#Po trafieniu w cokolwiek, Łzy rozpadają się#{{Blank}} na 1-3 mniejsze#↑ +0.38 Zasięgu#↑ +1.0 Wysokości lotu łez"}, -- Compound Fracture
	[455] = {"455", "Zgubiona Moneta Taty", "↑ +0.38 Zasięgu#Tworzy szczęśliwą monetę"},
	[456] = {"456", "Nocna Przekąska", "↑ +1 Zdrowia#Leczy 1 czerwone serce"}, -- Midnight Snack
	[464] = {"464", "Glif Równowagi", "+2 Serca Duszy#Pickupy z mistrzowskich przeciwników i za oczyszczenie pokoju wypadają częściej#Tworzone pickupy uzależnione są od tego, czego brakuje ci najbardziej"}, -- Glyph of Balance
	[472] = {"472", "Dziecięcy Król", "Podążają za nim inni sojusznicy, którzy automatycznie strzelają we wrogów#Nie porusza się, gdy strzelasz#Gdy przestaniesz strzelać, teleportuje się do ciebie"}, -- King Baby
	[474] = {"474", "Zepsuta Szklana Armata", "Użyta, zmienia się w#{{Blank}} Szklaną Armatę {{Collectible352}}"}, -- broken Glass Canon
	[489] = {"489", "D Nieskończoność", "Efekt losowej Kości przy każdym użyciu#Naciśnij przycisk odpowiedzialny za wyrzucanie rzeczy, żeby zmieniać kości"}, -- D Infinity
	[491] = {"491", "Kwaśne Dziecko", "Upuszcza losową pigułkę {{Pill}} co 7 pokoi#Użycie pigułki zatruwa wszystkich przeciwników w pokoju"}, -- Acid Baby
	[493] = {"493", "Adrenalina", "Za każdy pusty w połowie zasobnik na serce:#↑ Zwiększone Obrażenia, obliczane metodą#{{Blank}} ((2 * BrakPołówki)#{{Blank}} ^ 1.6) * 0.1"}, -- Adrenaline
	[494] = {"494", "Drabina Jakuba", "Przy kontakcie,#{{Blank}} łzy tworzą iskrę elektryczną#Iskry zadają połowę twoich obrażeń#Mogą przeskakiwać między wrogami"}, -- Jacobs Ladder
	[503] = {"503", "Mały Róg", "Szansa na wystrzelenie łzy przyzywającej rękę bossa Big Horn#Ręka natychmiastowo zabija przeciwników nie-bossów, a bossom zadaje obrażenia#Wbieganie we wrogów#{{Blank}} zada im 3.5 obrażeń"}, -- Little Horn
	[504] = {"504", "Brązowy Bobek", "Tworzy muchę-wieżyczkę, strzelającą w przeciwników#Każdy strzał zadaje 3.5 obrażeń"}, -- Brown Nugget
	[509] = {"509", "Przekrwione Oko", "Orbituje wokół ciebie#Strzela łzą co 1/3 sekundy, gdy wróg jest w pobliżu#Zadaje 3.5 obrażeń na łzę#Zadaje 30 obrażeń kontaktowych na sekundę"}, -- Bloodshot Eye
	[523] = {"523", "Pudło na Przenosiny", "Użyte, przechowuje do 10 losowych Pickupów z obecnego pokoju#Użyte ponownie wyrzuci swoją zawartość na ziemię#Możesz w ten sposób przenosić rzeczy między pokojami"}, -- Moving Box
	[524] = {"524", "Technology Zero", "Łzy są połączone wiązką elektryczną#Elektryczność zadaje obrażenia równe 1/3 twoich"}, -- Technology Zero
	[531] = {"531", "Hemolakria", "Łzy lecą łukiem#Przy kontakcie rozpadają się na wiele mniejszych#↓ Mniejsza Szybkostrzelność#↑ +50% Obrażeń#↑ Dodatkowo +1 Obrażeń"}, -- Haemolacria
	[541] = {"541", "Szpik", "+1 Kościane Serce {{BoneHeart}}#Tworzy 3 Czerwone Serca#Szansa na stworzenie {{Trinket167}} Polished Bone, gdy opróźnisz Kościany zasobnik"}, -- Marrow
	[543] = {"543", "Poświęcona Ziemia", "Tworzy białą kupę, gdy zostaniesz trafiony#Biała kupa może blokować obrażenia i ma aurę zwiększającą Obrażenia i Szybkostrzelność, oraz dającą efekt naprowadzanych łez"}, -- Hallowed Ground
	
	[553] = {"553", "Mucormycosis", "Losowa szansa na wystrzelenie przylepnych zarodników#Zarodniki wybuchają po 2.5 sekundach, zadają obrażenia, zatruwają pobliskich przeciwników i wypuszczają więcej zarodników"}, --  Mucormycosis
	[554] = {"554", "2Spooky", "Straszy przeciwników w małym zasięgu od ciebie"}, --  2Spooky
	[555] = {"555", "Golden Razor", "Zamienia twoje 5 monet na +1.2 Obrażeń w aktualnym pokoju"}, --  Golden Razor
	[556] = {"556", "Sulfur", "W obecnym pokoju otrzymujesz#{{Blank}} Ogień Piekielny {{Collectible118}}"}, --  Sulfur
	[557] = {"557", "Fortune Cookie", "Daje wróżbę, trynkiet, Serce Duszy lub Kartę tarota"}, --  Fortune Cookie
	[558] = {"558", "Eye Sore", "Losowa szansa na wystrzelenie 1-2 dodatkowych łez w losowym kierunku"}, --  Eye Sore
	[559] = {"559", "120 Volt", "Co chwilę poraża pobliskich przeciwników#Porażenie zadaje 75% twoich obrażeń"}, --  120 Volt
	[560] = {"560", "It Hurts", "Wypuszcza krąg 10 łez, kiedy otrzymasz obrażenia#↑ +1.2 Szybkostrzelności za pierwsze otrzymane obrażenia#↑ +0.4 Za każde kolejne"}, --  It Hurts
	[561] = {"561", "Almond Milk", "↑ Szybkostrzelność x 4#↓ Obrażenia x 0.3#Łzy zyskują efekt losowego trynkietu robaka"}, --  Almond Milk
	[562] = {"562", "Rock Bottom", "Uniemożliwia obniżenie statystyk przez resztę tej rozgrywki"}, --  Rock Bottom
	[563] = {"563", "Nancy Bombs", "+5 Bomb#Bomby wybuchają z losowym efektem"}, --  Nancy Bombs
	[564] = {"564", "A Bar of Soap", "↑ +0.5 Szybkostrzelności#↑ +0.2 Prędkości Strzałów"}, --  A Bar of Soap
	[565] = {"565", "Blood Puppy", "Sojusznik goniący przeciwników#Po zabiciu wystarczającej ilości przeciwników, staje się silniejszy, ale również będzie próbował zranić ciebie#Zaatakowanie go przywróci go do normy"}, --  Blood Puppy
	[566] = {"566", "Dream Catcher", "+1 Pół Serca Duszy, kiedy wchodzisz na nowe piętro#Wyświetla w Koszmarze między piętrami, jakie przedmioty będą w Pokoju Skarbów {{TreasureRoom}} oraz za pokonanie Boss'a"}, --  Dream Catcher
	[567] = {"567", "Paschal Candle", "↑ +0.4 Szybkostrzelności za każdy pokój zaliczony bez otrzymania obrażeń#Efekt nakłada się maksymalnie do 5 razy"}, --  Paschal Candle
	[568] = {"568", "Divine Intervention", "Podwójne naciśnięcie klawisza strzału tworzy tarczę#Tarcza istnieje przez 1 sekundę, odpycha przeciwników i odbija wrogie pociski i lasery"}, --  Divine Intervention
	[569] = {"569", "Blood Oath", "Dźga cię na początku każdego piętra, zostawiając ci tylko pół Czerwonego Serca#Zwiększa statystyki na całe piętro:#↑ Obrażenia + 0.15 * Stracone Serca^2#↑ Prędkość + 0.05 * Stracone Serca"}, --  Blood Oath
	[570] = {"570", "Playdough Cookie", "Daje różnokolorowe łzy z różnymi efektami"}, --  Playdough Cookie
	[571] = {"571", "Orphan Socks", "Odporność na obrażenia od mazi i podłogowych kolców#↑ +0.3 Prędkości#↑ +2 Serca Duszy"}, --  Orphan Socks
	[572] = {"572", "Eye of the Occult", "Kontrolowane łzy#↑ +1 Obrażeń#↑ +7.5 Zasięgu#↓ -0.16 Prędkości Strzałów"}, --  Eye of the Occult
	[573] = {"573", "Immaculate Heart", "+1 Zdrowia#↑ +20% Obrażeń#Pełne zdrowie#Losowa szansa na wystrzelenie orbitujących, widmowych łez"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Daje dwie aury, które ranią przeciwników#Mniejsza aura zadaje więcej obrażeń"}, --  Monstrance
	[575] = {"575", "The Intruder", "Sojusznik ukryty w twojej głowie, strzelający 4 powolnymi łzami#Może opuścić twoją głowę po otrzymaniu obrażeń"}, --  The Intruder
	[576] = {"576", "Dirty Mind", "Zniszczenie kupy tworzy 1-4 sojuszniczych kupek#Typ kupki zależy od typu zniszczonej kupy"}, --  Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} JEDNORAZOWE {{Warning}}#Tworzy miecz wiszący nad twoją głową, który podwaja wszystkie przedmioty na piedestałach i nagrody od Żebraków#Zabije cię w losowym momencie przy otrzymaniu obrażeń"}, --  Damocles
	[578] = {"578", "Free Lemonade", "Tworzy dużą kałużę żółtej mazi"}, --  Free Lemonade
	[579] = {"579", "Spirit Sword", "Zamiast łez, machasz mieczem#Zadaje 3x twoje obrażenia#Naładowanie ataku wykonuje obrót + wystrzeliwuje pocisk#Mając pełne życie, strzelasz również przy normalnym ataku"}, --  Spirit Sword
	[580] = {"580", "Red Key", "Używając go przy czerwonym obrysie drzwi na ścianie, stworzysz nowy pokój#Pokoje mogą być specjalne# Pokój poza mapą piętra 13x13 teleportuje cię do I AM ERROR"}, --  Red Key
	[581] = {"581", "Psy Fly", "Latający, orbitujący sojusznik#Goni i niszczy pociski#Zadaje obrażenia kontaktowe"}, --  Psy Fly
	[582] = {"582", "Wavy Cap", "↑ +0.75 Szybkostrzelności#↓ -0.03 Prędkości#Zniekształca obraz#Efekt może być nałożony kilka razy"}, --  Wavy Cap
	[583] = {"583", "Rocket in a Jar", "+5 Bomb#Podczas chodzenia, upuszczenie bomby puści rakietę w kierunku chodzenia"}, --  Rocket in a Jar
	[584] = {"584", "Book of Virtues", "Tworzy orbitujący sojuszniczy ognik, który strzela widmowymi łzami ale może zostać zgaszony#Może zostać połączony z drugim aktywnym przedmiotem, nadając ognikom specjalny efekt zależny od przedmiotu#Zamienia pierwszy Pokój Diabła {{DevilRoom}} w#{{Blank}} Pokój Anioła {{AngelRoom}}"}, --  Book of Virtues
	[585] = {"585", "Alabaster Box", "Tworzy trzy#{{Blank}} Serca Duszy {{SoulHeart}} i#{{Blank}} dwa przedmioty z Pokoju Anioła {{AngelRoom}}#Musi zostać naładowany poprzez podnoszenie Serc Dusz"}, --  Alabaster Box
	[586] = {"586", "The Stairway", "Tworzy drabinę na początku każdego piętra, prowadzącą do specjalnego sklepu Anielskiego Pokoju"}, --  The Stairway
	[587] = {"587", "Menorah (Unused but skripted)", "<Item does not exist>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Ujawnia lokację Pokoju Bossa {{BossRoom}}#Po pokonaniu bossa, aktywuje XIX - Słońce {{Card20}}#Naładowuje twój aktywny przedmiot, oraz daje +3 Obrażeń i +1 Szczęścia na całe piętro"}, --  Sol
	[589] = {"589", "Luna", "Pojawia dodatkowy Sekretny Pokój{{SecretRoom}} i Super Sekretny Pokój{{SuperSecretRoom}} na każdym piętrze#Sekretne Pokoje zawierają światło, które zwiększa szybkostrzelność na aktualne piętro oraz daje pół Serca Duszy"}, --  Luna
	[590] = {"590", "Mercurius", "↑ +0.4 Prędkości#Drzwi pozostają otwarte po wejściu do pokoju"}, --  Mercurius
	[591] = {"591", "Venus", "+1 Czerwone Serce#Pełne zdrowie#Pobliscy przeciwnicy stają się oczarowani"}, --  Venus
	[592] = {"592", "Terra", "↑ +1.0 Obrażeń#Zamiast łez, strzelasz kamieniami#Zadają różne obrażenia#Mogą niszczyć przeszkody#Zwiększony odrzut"}, --  Terra
	[593] = {"593", "Mars", "Wykonujesz zryw poprzez podwójne naciśnięcie przycisku ruchu#W trakcie trwania jesteś nieśmiertelny i zadajesz 4x twoje obrażenia#3 sekundy odnowienia"}, --  Mars
	[594] = {"594", "Jupiter", "+2 Czerwone serca#↓ -0.3 Prędkości#Ładujesz stojąc w miejscu#Wypuszczasz chmurę trującego gazu kiedy się znów ruszysz"}, --  Jupiter
	[595] = {"595", "Saturnus", "Otacza cię kółko#Przy wejściu do pokoju, 7 łez będzie w nim orbitować#Szansa, że wrogie pociski również zaczną orbitować"}, --  Saturnus
	[596] = {"596", "Uranus", "Strzelasz lodowymi łzami, które spowalniają wrogów i zamrażają ich przy zabiciu#Dotknięcie zamrożonego przeciwnika odepchnie go i eksploduje, wypuszczając 6 sopli"}, --  Uranus
	[597] = {"597", "Neptunus", "Ładujesz ogromny bonus do szybkostrzelności, gdy nie strzelasz przez 3 sekundy#Strzał po tym czasie wypuści uzbierane łzy#Bonus ten maleje, im dłużej strzelasz"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ +0.7 Szybkostrzelności#Zmniejsza cię i możesz prześlizgnąć się między obiektami#Pociski mogą przelecieć nad tobą"}, --  Pluto
	[599] = {"599", "Voodoo Head", "Tworzy dodatkowy Przeklęty Pokój {{CursedRoom}} na każdym piętrze"}, --  Voodoo Head
	[600] = {"600", "Eye Drops", "↑ Zmniejsza opóźnienie wystrzału lewego oka o 28%"}, --  Eye Drops
	[601] = {"601", "Act of Contrition", "↑ 0.7 Szybkostrzelności#+1 Wieczne Serce#Pokój Anioła może się pojawić nawet po handlu z Diabłem"}, --  Act of Contrition
	[602] = {"602", "Member Card", "Dodaje w każdym sklepie zejście do dodatkowego sklepu z unikatowym zaopatrzeniem"}, --  Member Card
	[603] = {"603", "Battery Pack", "Pojawia 2-4 baterii#W pełni naładowuje aktywny przedmiot"}, --  Battery Pack
	[604] = {"604", "Mom's Bracelet", "Pozwala podnosić i rzucać obiektami takimi jak kamienie, TNT, kupy i inne przeszkody#Pozwala przenosić je między pokojami"}, --  Mom's Bracelet
	[605] = {"605", "The Scooper", "Przyzywa Sojusznika 'Podglądacza' {{Collectible155}} na aktualny pokój, który zostawia ścieżkę czerwonej mazi"}, --  The Scooper
	[606] = {"606", "Ocular Rift", "Szansa na wystrzelenie łez tworzących kratery na podłodze#Przyciąga pobliskich przeciwników, pickupy i pociski"}, --  Ocular Rift
	[607] = {"607", "Boiled Baby", "Sojusznik chaotycznie strzelający łzami w każdą stronę#Zadaje 3.5 lub 5.3 obrażeń na łze"}, --  Boiled Baby
	[608] = {"608", "Freezer Baby", "Sojusznik strzelający lodowymi łzami#Zamraża przeciwników po zabiciu"}, --  Freezer Baby
	[609] = {"609", "Eternal D6", "Przelosowuje wszystkie przedmioty w pokoju#Przedmioty przy przelosowaniu mają szansę zniknąć"}, --  Eternal D6
	[610] = {"610", "Bird Cage", "Przy otrzymaniu obrażeń tworzy Sojusznika, który naskakuje na wroga#Zadaje 45 obrażeń i tworzy falę kamieni#Goni przeciwników"}, --  Bird Cage
	[611] = {"611", "Larynx", "Krzyczysz, zadając obrażenia i popychając przeciwników#Krzyk jest tym mocniejszy, im więcej naładowań przedmiot posiada"}, --  Larynx
	[612] = {"612", "Lost Soul", "Duchowy Sojusznik który umiera po jednym ciosie, odradzając się na następnym piętrze#Jeśli przetrwa całe piętro, tworzy 3 Serca Duszy, 2 Wieczne Serca lub przedmiot"}, --  Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Blood Bombs", "+1 Czerwone Serce#Leczy 5 Serc#Bomby zostawiają czerwoną maź#Jeśli nie masz bomb, możesz je kłaść za koszt połowy Serca"}, --  Blood Bombs
	[615] = {"615", "Lil Dumpy", "Pękaty Sojusznik#Kiedy otrzymuje obrażenia, odpycha, unieruchamia lub zatruwa przeciwników"}, --  Lil Dumpy
	[616] = {"616", "Bird's Eye", "Szansa na wystrzelenie ognia, który blokuje wrogie pociski i zadaje obrażenia kontaktowe#Maksymalnie może zadać 4x twoje obrażenia"}, --  Bird's Eye
	[617] = {"617", "Lodestone", "Szansa na wystrzelenie łzy, która magnetyzuje przeciwników#Tacy wrogowie przyciągają innych przeciwników oraz pickupy, pociski czy bomby"}, --  Lodestone
	[618] = {"618", "Rotten Tomato", "Szansa na wystrzelenie łez, które oznaczają przeciwników#Oznaczeni przeciwnicy będą atakowani przez innych przeciwników"}, --  Rotten Tomato
	[619] = {"619", "Birthright", "Ma różne efekty dla każdej z postaci"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Red Stew", "Pełne zdrowie#↑ +21.6 Obrażeń#Obrażenia spadają przez następne 3 minuty"}, --  Red Stew
	[622] = {"622", "Genesis", "{{Warning}} JEDNORAZOWE {{Warning}}#Usuwa wszystkie twoje przedmioty i pickupy#Teleportuje cię do unikatowej Sypialni z zapadnią, skrzynkami i pickupami#Za każdy utracony przedmiot, oferuje ci zestaw 3 przedmiotów, z którego możesz#{{Blank}} wziąć 1"}, --  Genesis
	[623] = {"623", "Sharp Key", "+5 Kluczy#Możesz rzucić kluczem aby zadać obrażenia, niszczyć obiekty, lub otworzyć drzwi"}, --  Sharp Key
	[624] = {"624", "Booster Pack", "Tworzy 5 losowych kart"}, --  Booster Pack
	[625] = {"625", "Mega Mush", "Wyolbrzymia cię na 30 sekund#Zwiększa obrażenia i zasięg#Daje nieśmiertelność i możliwość zdeptania wrogów i obiektów#Efekt utrzymuje się między pokojami"}, --  Mega Mush
	[626] = {"626", "Knife Piece 1", "Pierwsza część noża"}, --  Knife Piece 1
	[627] = {"627", "Knife Piece 2", "Połączony z pierwszą częścią noża {{Collectible627}}, tworzy sojuszniczy nóż#Zadaje obrażenia przeciwnikom#Może otworzyć pewne mięsne drzwi"}, --  Knife Piece 2
	[628] = {"628", "Death Certificate", "{{Warning}} JEDNORAZOWE {{Warning}}#Zabiera cię na piętro zawierające wszystkie przedmioty w grze#Po podniesieniu przedmiotu, wraca cię tam, skąd przybyłeś"}, --  Death Certificate
	[629] = {"629", "Bot Fly", "Orbitujący Sojusznik strzelający osłonionymi łzami"}, --  Bot Fly
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
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["pl"].collectibles)

EID.descriptions["pl"].birthright ={
	{"Isaac", "Izaak", "Wszystkie przedmioty przewijają się przez 2 opcje"},
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
	{"Tainted Isaac", "Splamiony Izaak", "Adds 4 more slots for passive items"},
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

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint
EID.descriptions["pl"].bingeEaterBuffs = {
	[22] = {"22", "", "↑+0.5 Szybkostrzelności#↑+1.5 Zasięgu"}, -- Lunch
	[23] = {"23", "", "↑+0.5 Szybkostrzelności#↑+0.2 Prędkości Strzałów"}, -- Dinner
	[24] = {"24", "", "↑+1.0 Obrażeń#↑+0.2 Prędkości"}, -- Dessert
	[25] = {"25", "", "↑+0.2 Prędkości#↑+1.5 Zasięgu"}, -- Breakfast
	[26] = {"26", "", "↑+1.0 Obrażeń#↑+1.5 Zasięgu"}, -- Rotten Meat
	[456] = {"456", "", "↑+1.0 Obrażeń#↑+1.0 Szczęścia"}, -- Midnight Snack
	[346] = {"346", "", "↑+0.2 Prędkości Strzałów#↑+1.0 Szczęścia"}, -- A Snack
	[707] = {"707", "", "↑+0.5 Szybkostrzelności#↑+1.0 Szczęścia"}, -- Supper
}

EID.descriptions["pl"].spindownError = "Przedmiot znika"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Połknięty Pieniążek", "Upuszcza 1 monetę, gdy otrzymasz obrażenia#0-1, gdy grasz Dozorcą/Keeperem"}, -- Swallowed Penny
	[10] = {"10", "Rozhuśtany Robak", "Falujące łzy#↑ +0.4 Szybkostrzelności#Gwarantuje widmowe łzy"}, -- Wiggle Worm
	[11] = {"11", "Pierścienny Robak", "Łzy poruszają się spiralnie z dużą prędkością#Gwarantuje widmowe łzy"}, -- Ring Worm
	[15] = {"15", "Szczęśliwy Kamyczek", "33% szans na upuszczenie monety, gdy rozwalasz kamienie"},-- Lucky Rock
	[24] = {"24", "Dupny Pieniążek", "Pierdzisz, gdy podnosisz monety#Pierd odrzuca i truje przeciwników"}, -- Butt Penny
	[26] = {"26", "Haczykowaty Robak", "Łzy poruszają się#{{Blank}} pod kątem#↑ +10 Zasięgu#Gwarantuje widmowe łzy"}, -- Hook Worm
	[32] = {"32", "Czapka Wolności", "Losowy efekt grzyba#{{Blank}} co pokój"}, -- Liberty Cap
	[33] = {"33", "Pępowina", "Wchodząc do pokoju z połową czerwonego serca lub mniej, otrzymujesz#{{Blank}} Małego Steven'a {{Collectible100}}#Duża szansa na pojawienie się sojusznika Gemini {{Collectible318}}, gdy otrzymujesz obrażenia"}, -- Umbilical Cord
	[48] = {"48", "Brakująca Kartka", "Szansa na zadanie obrażeń wszystkim w pokoju, gdy otrzymasz obrażenia#Czarne serca i efekt Necronomicon'u {{Collectible35}} zadają podwójne obrażenia"}, -- A Missing Page
	[49] = {"49", "Krwawy Pieniążek", "25% szans na upuszczenie połowy serca, gdy podniesiesz monetę"}, -- Bloody Penny
	[50] = {"50", "Spalony Pieniążek", "25% szans na upuszczenie bomby, gdy podniesiesz monetę"}, -- Burnt Penny
	[51] = {"51", "Płaski Pieniążek", "25% szans na upuszczenie klucza, gdy podniesiesz monetę"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Zasięgu#-50% Wysokości lotu łez"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Zmniejszona Prędkość Strzałów#↑ +2 Wysokości lotu łez"}, -- Lazy Worm
	[69] = {"69", "Faded Polaroid", "Losowo kamufluje gracza#Dezorientuje przeciwników#Może zostać użyty do otwarcia drzwi na piętro \"Dom/Home\""}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ +0.5 Obrażeń za każdy diabelski przedmiot, jaki mamy."}, -- Black Feather
	[92] = {"92", "Cracked Crown", "↑ Przedmioty zwiększające Twoje statystyki są o 20% bardziej efektywne"}, -- Cracked Crown
	[101] = {"101", "Dim Bulb", "!!! Gdy trzymasz nienaładowany przedmiot aktywny:#↑ +1.5 Obrażeń#↑ +0.5 Prędkości#↑ +1.5 Zasięgu#↑ +0.5 Szybkostrzelności#↑ +0.3 Prędkości strzałów#↑ +2 Szczęścia"},
	[110] = {"110", "Silver Dollar", "Sklepy{{Shop}} mogą się pojawić na piętrze W1/W2 i odpowiedniku#{{Blank}} z alternatywnej ścieżki"},
	[111] = {"111", "Bloody Crown", "Pokój Skarbów{{TreasureRoom}} pojawia się na piętrach W1-W2"}, -- Bloody Crown
	[119] = {"119", "Stem Cell", "Ustawia twoje czerwone serca na 50% maksymalnej wartości po przejściu na kolejne piętro#Jeśli Twoje zdrowie jest powyżej tego, leczy Cię połowę czerwonego serca"}, -- Stem Cell
	[128] = {"128", "Finger Bone", "5% szans na otrzymanie Kościanego Serca, gdy otrzymasz obrażenia"}, -- Finger Bone

	[129] = {"129", "Jawbreaker", "Szansa na strzał zębowymi łzami"}, --  Jawbreaker
	[130] = {"130", "Chewed Pen", "Szansa na strzał spowolniającymi łzami"}, --  Chewed Pen
	[131] = {"131", "Blessed Penny", "Szansa na upuszczenie połowy serca duszy, gdy podniesiesz monetę"}, --  Blessed Penny
	[132] = {"132", "Broken Syringe", "Szansa na otrzymanie losowego efektu strzykawki dla aktualnego pokoju"}, --  Broken Syringe
	[133] = {"133", "Short Fuse", "Bomby położone przez Ciebie, będą eksplodować szybciej"}, --  Short Fuse
	[134] = {"134", "Gigante Bean", "Zwiększona wielkość pierda"}, --  Gigante Bean
	[135] = {"135", "A Lighter", "Szansa na aktywację efektu podpalenia na przeciwnikach wchodząc do pokoju"}, --  A Lighter
	[136] = {"136", "Broken Padlock", "Wybuchami można teraz otworzyć drzwi, blokady na klucz i złote skrzynki#Otwiera również drzwi od Domu (Home)"}, --  Broken Padlock
	[137] = {"137", "Myosotis", "Wchodząc na nowym poziom, do 4 niepodniesionych pickupów z poprzedniego poziomu, pojawią się na startowej lokacji"}, --  Myosotis
	[138] = {"138", "'M", "Użycie aktywnego przedmiotu, przelosowuje go"}, --  'M
	[139] = {"139", "Teardrop Charm", "Efekty łez bazujące na szczęściu będą występować częściej"}, --  Teardrop Charm
	[140] = {"140", "Apple of Sodom", "Podnoszenie czerwonego serca może przemienić je w niebieskie pająki#Działa również mając pełne zdrowie#Efekt może konsumować serca potrzebne do leczenia"}, --  Apple of Sodom
	[141] = {"141", "Forgotten Lullaby", "Zwiększa szybkostrzelność sojuszników"}, --  Forgotten Lullaby
	[142] = {"142", "Beth's Faith", "Na starcie każdego poziomu, pojawia 4 sojuszników z#{{Blank}} Book of Virtues{{Collectible584}}"}, --  Beth's Faith
	[143] = {"143", "Old Capacitor", "Zapobiega ładowaniu aktywnego przedmiotu#Szansa na pojawienie się małej baterii po wyczyszczeniu pokoju"}, --  Old Capacitor
	[144] = {"144", "Brain Worm", "Łzy obracają się o 90 stopni, aby wycelować w przeciwników, których mogły przegapić"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ +10 Szczęścia#Niszczy się po otrzymaniu obrażeń"}, --  Perfection
	[146] = {"146", "Devil's Crown", "Pokoje Skarbów{{TreasureRoom}} zawierają teraz oferty Diabła"}, --  Devil's Crown
	[147] = {"147", "Charged Penny", "Podnoszenie monet może ładować Aktywny Przedmiot"}, --  Charged Penny
	[148] = {"148", "Friendship Necklace", "Powoduje, że sojusznicy krążą wokół Ciebie"}, --  Friendship Necklace
	[149] = {"149", "Panic Button", "Aktywuje Twój Aktywny Przedmiot po otrzymaniu obrażeń"}, --  Panic Button
	[150] = {"150", "Blue Key", "Wchodząc do pokoju, do którego potrzebny jest klucz, przenosi Cię do pokoju przypominającego poziom Husha#Pokój pełni rolę pośrednika między dwoma pokojami"}, --  Blue Key
	[151] = {"151", "Flat File", "Powoduje schowanie się kolców, zmieniając je w nieszkodliwe#Efekt działa również w Przeklętym Pokoju, skrzynki mim i jakiekolwiek inne przeszkody z kolcami"}, --  Flat File
	[152] = {"152", "Telescope Lens", "Sprawia, że możliwe jest pojawienie się drugiego Planetarium#Planetarium może się teraz pojawić na piętrach W1-W2"}, --  Telescope Lens
	[153] = {"153", "Mom's Lock", "Każdy pokój, gwarantuje efekt losowego przedmiotu Matki"}, --  Mom's Lock
	[154] = {"154", "Dice Bag", "Wchodząc do nowego pokoju, gwarantuje tymczasową Kostkę#Kostka znika po opuszczeniu pokoju#Gwarantuje zdolność do trzymania dwóch przedmiotów jednocześnie"}, --  Dice Bag
	[155] = {"155", "Holy Crown", "Pokój Skarbów{{TreasureRoom}} i Sklep{{Shop}} pojawiają się w Katedrze"}, --  Holy Crown
	[156] = {"156", "Mother's Kiss", "Gwarantuje 1 zasobnik na serca#Działa również u Dozorcy/Keepera"}, --  Mother's Kiss
	[157] = {"157", "Torn Card", "Co 15 strzałów, strzelasz łzą Wymiotnicy{{Collectible149}} + Moje Odbicie{{Collectible5}}, która ma bardzo daleki zasięg"}, --  Torn Card
	[158] = {"158", "Torn Pocket", "Po otrzymaniu obrażeń, upuszczasz wszystkie swoje pickupy#(Wyjątkiem są: Serca, Karty, Tabletki, Runy)"}, --  Torn Pocket
	[159] = {"159", "Gilded Key", "+1 klucz#Zamienia wszystkie nowe skrzynki w Złote Skrzynki#Wszystkie Złote Skrzynki zawierają dodatkowe karty, pigułki lub trynkiety#Wyjątek: Olbrzymia Skrzynia, Stara Skrzynia"}, --  Gilded Key
	[160] = {"160", "Lucky Sack", "Pojawia Worek po podróży na kolejny poziom"}, --  Lucky Sack
	[161] = {"161", "Wicked Crown", "Pokój Skarbów{{TreasureRoom}} i Sklep{{Shop}} pojawiają się w Szeolu"}, --  Wicked Crown
	[162] = {"162", "Azazel's Stump", "Szansa na zamienienie się w Azazela po wejściu do pokoju"}, --  Azazel's Stump
	[163] = {"163", "Dingle Berry", "Pojawia 2 przyjazne Kupy po wyczyszczeniu pokoju"}, --  Dingle Berry
	[164] = {"164", "Ring Cap", "Stawiasz dwie bomby zamiast jednej#Tylko jedna zostaje usunięta z ekwipunku"}, --  Ring Cap
	[165] = {"165", "Nuh Uh!", "Na poziomie W1 i dalszym, zamienia wszystkie monety i klucze na inne losowe pickupy#Bomby i Serca są bardziej powszechne"}, --  Nuh Uh!
	[166] = {"166", "Modeling Clay", "Gwarantuje efekt losowego Pasywnego Przedmiotu w każdym pokoju"}, --  Modeling Clay
	[167] = {"167", "Polished Bone", "Szansa na pojawienie się sojuszniczego Bony'ego po wyczyszczeniu pokoju"}, --  Polished Bone
	[168] = {"168", "Hollow Heart", "+1 Kościany zasobnik na serca po wejściu na nowy poziom"}, --  Hollow Heart
	[169] = {"169", "Kid's Drawing", "Gdy trzymasz, liczy się do transformacji w Guppy'iego"}, --  Kid's Drawing
	[170] = {"170", "Crystal Key", "Gwarantuje szansę na automatyczne stworzenie pokoju Czerwonym Kluczem{{Collectible580}} przy każdym oczyszczeniu pokoju"}, --  Crystal Key
	[171] = {"171", "Keeper's Bargain", "Oferty Diabła są teraz za monety zamiast za serca"}, --  Keeper's Bargain
	[172] = {"172", "Cursed Penny", "Teleportuje Cię do losowego pokoju po podniesieniu monety#Może teleportować do Sekretnego Pokoju"}, --  Cursed Penny
	[173] = {"173", "Your Soul", "{{Warning}} JEDNORAZOWE UŻYCIE {{Warning}}#Może zostać użyte w ofercie Diabła zamiast tracić serca"}, --  Your Soul
	[174] = {"174", "Number Magnet", "+10% szansy na Pokój Diabła"}, --  Number Magnet
	[175] = {"175", "Strange Key", "Odblokowuje przejście do walki z Hushem, niezależnie od trwania przebiegu rozgrywki#Użycie Puszki Pandory{{Collectible297}} pojawia 6 przedmiotów z losowej puli"}, --  Strange Key
	[176] = {"176", "Lil Clot", "Pojawia sojuszniczego blood clota, który porusza się jak Ty, strzela w tym samym kierunku i z tymi samymi efektami łez"}, --  Lil Clot
	[177] = {"177", "Temporary Tattoo", "Pojawia skrzynkę po ukończeniu Wyzwania walki z przeciwnikami lub przedmiot po ukończeniu Wyzwania z Bossem"}, --  Temporary Tattoo
	[178] = {"178", "Swallowed M80", "Wybuchasz po otrzymaniu obrażenia"}, --  Swallowed M80
	[179] = {"179", "RC Remote", "Poruszanie się sojuszników może być kontrolowane przez Ciebie"}, --  RC Remote
	[180] = {"180", "Found Soul", "Sojusznik, który porusza się jak Ty i strzela widmowymi łzami#Posiada takie same obrażenia i efekt łez jak Ty"}, --  Found Soul
	[181] = {"181", "Expansion Pack", "Używa innego losowego Aktywnego Przedmiotu, gdy używasz swojego Aktywnego Przedmiotu"}, --  Expansion Pack
	[182] = {"182", "Beth's Essence", "Raz na pokój, gdy dostaniesz obrażenie, tworzysz sojuszniczy Ognik{{Collectible584}} i gwarantuje nietykalność#Tworzy 5 sojuszniczych Ogników po wejściu do Pokoju Aniołów#Tworzy sojuszniczy Ognik, gdy dajesz monety żebrakom"}, --  Beth's Essence
	[183] = {"183", "The Twins", "Co pokój:#Bez sojuszników: Szansa na Braciszka Robercika{{Collectible8}} i/lub Siostrę Madzię{{Collectible67}}# Z sojusznikami: Szansa na kopię swojego sojusznika"}, --  The Twins
	[184] = {"184", "Adoption Papers", "Sklep może sprzedawać sojuszników#Sojusznicy będą zawsze na przecenie"}, --  Adoption Papers
	[185] = {"185", "Cricket Leg", "Szansa na pojawienie się Szarańczy (Locust) po zabiciu przeciwnika"}, --  Cricket Leg
	[186] = {"186", "Apollyon's Best Friend", "{{Throwable}} {{ColorOrange}}Do rzucania{{CR}} (podwójne kliknięcie przycisku strzału)#Gwarantuje 1 sojuszniczą muchę, którą możesz celować i strzelać"}, --  Apollyon's Best Friend
	[187] = {"187", "Broken Glasses", "33% szans na otrzymanie dodatkowego niewidzialnego przedmiotu w Pokoju Skarbów#Odkrywa niewidzialny przedmiot w alternatywnej ścieżce"}, --  Broken Glasses
	[188] = {"188", "Ice Cube", "Szansa na sparaliżowanie przeciwnika, kiedy wchodzisz do pokoju#Zabicie sparaliżowanego przeciwnika zamraża go"}, --  Ice Cube
	[189] = {"189", "Sigil of Baphomet", "Aktywuje tarczę na 1 sekundę po zabiciu przeciwnika"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["pl"].trinkets)



-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}} " automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint
EID.descriptions["pl"].tarotClothBuffs = {
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



EID.descriptions["pl"].goldenTrinket = "ZŁOTE: Zdwojony Efekt!"

---------- Cards ----------
local repCards={
	[27] = {"27", "As Trefl", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w bomby"},
	[28] = {"28", "As Karo", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w monety"},
	[29] = {"29", "As Pik", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w klucze"},
	[30] = {"30", "As Kier", "Zmienia wszystkie pickupy, skrzynki i wrogów nie-bossów#{{Blank}} w serca"},
	[39] = {"39", "Algiz", "Nieśmiertelność na 20 sekund"},
	[51] = {"51", "Święta Karta", "Daje efekt#{{Blank}} Świętego Okrycia {{Collectible313}}#(Neguje następne otrzymane obrażenia)#Efekt utrzymuje się do następnego otrzymania obrażeń"}, -- Holy card
	
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

EID.descriptions["pl"].CraftingBagContent = "torbie:"
EID.descriptions["pl"].CraftingRoomContent = "pokoju:"
EID.descriptions["pl"].CraftingResults = "Wyniki:#(Przewiń: Trzymaj TAB + Strzał △/▽)"
EID.descriptions["pl"].CraftingBagModError = "!!! {{ColorRed}}BŁĄD:#{{ColorRed}}Ta funkcja nie wspiera obecnie zmodowanych przedmiotów"

