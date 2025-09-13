---------------------------------------
-----  Basic Czech descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "cs_cz"

-- init Czech table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Czech"
EID.descriptions[languageCode].alternativeLanguageCodes = {"czech", "cs"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------
EID.descriptions[languageCode].collectibles={
	{"1", "Smutná Cibulka", "↑ {{Tears}} +0.7 Více Slz"},
	{"2", "Vnitřní Oko", "Trojitý výstřel#↓ {{Tears}} Méně Slz"},
	{"3", "Ohnutá Lžíce", "Naváděné Slzy"},
	{"4", "Kriketova Hlava", "↑ {{Damage}} +0.5 Větší Poškození#↑ {{Damage}} +50% Násobič Poškození"},
	{"5", "Můj Odraz", "Dává slzám bumerangový efekt#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Shotspeed}} +0.6 Větší Rychlost Střel#↑ +1 Výška Slz"},
	{"6", "Číslo Jedna", "↑ {{Tears}} +1.5 Více Slz#↓ {{Range}} -17.62 Menší Dostřel#↑ +0.76 Výška Slz"},
	{"7", "Krev Mučedníka", "↑ {{Damage}} +1 Větší Poškození#{{Collectible34}} +50% pokud máš aktivní efekt Belialovy Knihy nebo Ďábelské Karty"},
	{"8", "Bráška Bobby", "Spojenec s normalními slzami#Uděluje 3.5 poškození za slzu"},
	{"9", "Skatol", "Všechny nepřátelské mouchy jsou nyní přátelské"},
	{"10", "Kruh z Much", "+2 orbitální mouchy#Blokuje nepřátelské střely"},
	{"11", "1 Život!", "↑ +1 život#Znovuzrození s plným zdravím"},
	{"12", "Kouzelná Houba", "↑ {{Heart}} +1 Zvýšení Zdraví#Plné zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Damage}} +50% Násobič Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ +0.5 Výška Slz#Zvětšení"},
	{"13", "Virus", "{{Poison}} Jedovatý dotek#↓ {{Speed}} -0.1 Snížení Rychlosti#{{BlackHeart}} Z nepřátel mohou spadnout Černá Srdce, pokud jsou otráveni"},
	{"14", "Steroidový Vztek", "↑ {{Speed}} +0.6 Zvýšení Rychlosti#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"15", "<3", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví"},
	{"16", "Syrová Játra", "↑ {{Heart}} +2 Zvýšení Zdraví#{{Heart}} Plné zdraví"},
	{"17", "Kostlivcův Klíč", "{{Key}} +99 Klíčů"},
	{"18", "Dolar", "{{Coin}} +99 mincí"},
	{"19", "Bum!", "{{Bomb}} +10 Bomb"},
	{"20", "Transcendence", "Létání!"},
	{"21", "Kompas", "Zobrazí všechny ikony na mapě#Nezobrazuje rozložení mapy"},
	{"22", "Oběd", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"23", "Večeře", "↑ {{Heart}}  +1 Zvýšení Zdraví"},
	{"24", "Dezert", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"25", "Snídaně", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"26", "Shnilé Maso", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"27", "Vařečka", "↑ {{Speed}} +0.3 Zvýšení Rychlosti"},
	{"28", "Pásek", "↑ {{Speed}} +0.3 Zvýšení Rychlosti"},
	{"29", "Mámino Spodní Prádlo", "↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"30", "Máminy Podpatky", "↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"31", "Mámina Rtěnka", "↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"32", "Drátěný Věšák", "↑ {{Tears}} +0.7 Více Slz"},
	{"33", "Bible", "Létání pro aktuální místnos#{{MomsHeart}} Okamžitě zabije Máminu Nohu a Mámino Srdce#!!! Zabije TEBE při použití na Satana"},
	{"34", "Kniha Belialova", "↑ {{Damage}} +2 Větší Poškození#{{AngelDevilChance}} +12.5% Šance na Ďábelskou/Andělskou místnost#{{Collectible7}} +50% Násobič Poškození pokud máš Krev Mučedníka"},
	{"35", "Necronomicon", "Uděluje 40 poškození všem nepřátelům v místnosti"},
	{"36", "Hovno", "Vytvoří jedno hovínko a odstrčí nepřátele zpět#Lze umístit vedle jámy a zničit bombou, aby se vytvořil most"},
	{"37", "Pan Bum", "Shodí pod hráče velkou bombu, která způsobí 110 poškození"},
	{"38", "Tammyho Hlava", "Vystřelí 10 slz v kruhu kolem Izáka"},
	{"39", "Mámina Podprsenka", "Zmrazí všechny nepřátele v aktuální místnosti na 4 sekundy"},
	{"40", "Kamikaze!", "Způsobí explozi v místě hráče#Způsobí 40 poškození"},
	{"41", "Mámina Vložka", "{{Fear}} Po dobu 5-ti sekund se nepřátelé budou bát v aktuální místnosti"},
	{"42", "Bobova Shnilá Hlava", "{{Poison}} Vrhací jedovatá bomba"},
	{"43", "", "<předmět neexistuje>"},
	{"44", "Teleport!", "Teleportuje Izáka do náhodné místnosti kromě místností JSEM ERROR"},
	{"45", "Mňamka Srdce", "Vyléčí 1 Červené Srdce"},
	{"46", "Šťastná Noha", "↑ {{Luck}} +1 Zvýšení Štěstí#Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci o 8% na odměnu z vyklizení místnosti"},
	{"47", "Doktorův Dálkový Ovladač", "{{Collectible168}} Při použití zaměřuješ pomocí kříže#Střela přistane na zaměřovacím kříži po 1,5 sekundě#způsobí 20násobek tvého poškození"},
	{"48", "Amorův Šíp", "Průrazné slzy"},
	{"49", "Shoop da Whoop!", "Laser s vysokým poškozením"},
	{"50", "Steven", "↑ {{Damage}} +1 Větší Poškození"},
	{"51", "Pentagram", "↑ {{Damage}} +1 Větší Poškození#{{AngelDevilChance}} +10% Šance na Ďábelskou/Andělskou místnost"},
	{"52", "Doktor Zárodek", "{{Bomb}} Bomby namísto slz#Každá bomba způsobí 5x tvoje poškození + 30#↓ {{Tears}} Zpoždění Slz x 2.5"},
	{"53", "Magneto", "Magneticky přitahuje pickupy"},
	{"54", "Mapa Pokladů", "Odhalí rozložení patra#Nezobrazuje ikony místností"},
	{"55", "Mámino Oko", "50% šance vystřelit slzu dozadu#{{Luck}} 100% šance při 2 Štěstí"},
	{"56", "Citronová Nehoda", "Vytvoří kaluž limonády#Způsobí 24 kontakního poškození za sekundu"},
	{"57", "Vzdálený Obdiv", "Orbitální muška střední vzdálenosti#Uděluje 75 kontaktního poškození za sekundu"},
	{"58", "Kniha Stínů", "Nepřemožitelnost na 10 sekund"},
	{"59", "", "<předmět neexistuje>"},
	{"60", "Žebřík", "Choď přes malé mezery"},
	{"61", "", "<předmět neexistuje>"},
	{"62", "Okouzlení Upíra", "{{HalfHeart}} Vyléčí půl srdce každých 13 zabitých nepřátel"},
	{"63", "Baterie", "Aktivní předměty lze nyní nabít dvakrát"},
	{"64", "Výprodej na Steamu", "{{Shop}} -50% na předměty v obchodě#Pokud tuto položku získáš dvakrát, bude vše zdarma"},
	{"65", "Anarchistická Kuchařka", "Vytvoří 6 trollích bomb blízko středu místnosti"},
	{"66", "Přesýpací Hodiny", "{{Slow}} Zpomaluje nepřátele na 8 sekund"},
	{"67", "Ségra Maggy", "Spojenec s normalními slzami#Uděluje 3.5 poškození za slzu"},
	{"68", "Technologie", "Slzy jsou nyní lasery"},
	{"69", "Čokoládové Mléko", "{{Chargeable}} Nabíjecí slzy#↑ {{Damage}} Až 400% Poškození#↓ {{Tears}} Méně Slz"},
	{"70", "Růstové Hormony", "↑ {{Damage}} +1 Větší Poškození#↑ {{Speed}} +0.4 Zvýšení Rychlosti"},
	{"71", "Mini Houbička", "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↓ {{Range}} -4.25 Menší Dostřel*#↑ +1.5 Výška Slz*#(*oba se sčítají do mírného Většího Dostřelu)#↑ Zmenšení"},
	{"72", "Růženec", "{{SoulHeart}} +3 Duševní Srdce#{{Collectible33}}Bible je přidána do všech skupin předmětů"},
	{"73", "Kostka Masa", "LVL1: Orbitální maso#LVL2: Orbitální a střílející maso#LVL3: Masový Kluk LVL1#LVL4: Masový Kluk LVL2"},
	{"74", "Čtvrťák", "{{Coin}} +25 mincí"},
	{"75", "PHD", "{{Pill}} Lepší pilulky#Vytvoří 1 Pilulku#{{Heart}} Vyléčí 2 Červená Srdce#{{BloodDonationMachine}} Více peněz ze Strojů na Darování Krve a {{Collectible135}} Infuzní vak "},
	{"76", "Rentgenové Vidění", "{{SecretRoom}} Odhalí vchody do tajných místností"},
	{"77", "Můj Malý Jednorožec", "Nepřemožitelnost#40 kontaktního poškození"},
	{"78", "Kniha Zjevení", "{{SoulHeart}} +1 Duševní Srdce#Vyšší šance na jezdce při použití#{{AngelDevilChance}} +17.5% Šance na Ďábelskou/Andělskou místnost"},
	{"79", "Značka", "↑ {{Damage}} +1 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{SoulHeart}} +1 Duševní Srdce"},
	{"80", "Pakt", "↑ {{Damage}} +0.5 Větší Poškození#↑ {{Tears}} +0.7 Více Slz#{{SoulHeart}} +2 Duševní Srdce"},
	{"81", "Mrtvá Kočka", "↑ +9 životů#Znovuzrození pouze s 1 životem#↓ Nastaví tvoje životy na 1 Červené Srdce#Postavy, které nemohou mít Červené Srdce, se nastaví na 1 Duševní/Černé Srdce"},
	{"82", "Lord Podzemí", "Létání#↑ {{Speed}} +0.3 Zvýšení Rychlosti"},
	{"83", "Hřebík", "{{SoulHeart}} +1 Duševní Srdce#↑ {{Damage}} +0.7 Větší Poškození#↓ {{Speed}} -0.18 Snížení Rychlosti#Uděluješ 40 kontaktního poškození#Rozdrcuješ kameny"},
	{"84", "Musíme Jít Hlouběji!", "Vytvoří padací dvířka pro přeskočení patra#{{LadderRoom}} 10% šance na padací dvířka vedoucí do průlezu"},
	{"85", "Balíček Karet", "{{Card}} Vytvoří 1 Kartu/y"},
	{"86", "Monstrův Zub", "Vyvolej Monstra na jedno dupnutí"},
	{"87", "Lokiho Rohy", "25% šance na vystřelení ve 4 směrech#{{Luck}} 100% šance při 7 Štěstí"},
	{"88", "Malý Tlouštík", "Spojenec, který se vystřelí dopředu#Způsobuje 52.5 kontaktního poškození za sekundu"},
	{"89", "Pavoučí Kousnutí", "{{Slow}} 25% šance vystřelit zpomalující slzy#{{Luck}} 100% šance při 15 Štěstí"},
	{"90", "Malý Kamínek", "↑ {{Damage}} +1 Větší Poškození#↑ {{Tears}} +0.2 Více Slz#↓ {{Speed}} -0.2 Snížení Rychlosti"},
	{"91", "Horníkova Helma", "Odhalí typ místnosti sousedních místností#{{SecretRoom}} Může také odhalit Tajné Místnosti, Super Tajné Místnosti a Mini-Boss Místnosti"},
	{"92", "Super Obvaz", "↑ {{Heart}} +1 Zvýšení Zdraví#{{SoulHeart}} +2 Duševní Srdce#{{Heart}} Vyléčí 1 Červené Srdce"},
	{"93", "Gamekid", "Krátká nesmrtelnost#{{Fear}} Všichni nepřátelé se bojí#Způsobuješ 40 kontaktního poškození#{{HalfHeart}} Dva sežraní nepřátelé ti doplní půl srdce"},
	{"94", "Pytel Peněz", "{{Coin}} Každé 2 místnosti vytvoří náhodnou minci"},
	{"95", "Robo-Děcko", "Laserové slzy#Uděluje 3.5 poškození za slzu"},
	{"96", "Malý C.H.A.D.", "{{HalfHeart}} Vytvoří půl srdce každé 3 místnosti"},
	{"97", "Kniha Hříchu", "Vytvoří náhodný pickup"},
	{"98", "Relikvie", "{{SoulHeart}} Vytvoří 1 Duševní Srdce každých 5-6 místností"},
	{"99", "Malý Gish", "{{Slow}} Zpomalující slzy#Uděluje 3.5 poškození za slzu"},
	{"100", "Malý Steven", "Naváděné slzy#Uděluje 3.5 poškození za slzu"},
	{"101", "Svatozář", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Tears}} +0.2 Více Slz#↑ {{Range}} +0.25 Větší Dostřel#↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ +0.5 Výška Slz"},
	{"102", "Mámina Lahvička s Pilulky", "{{Pill}} Vytvoří 1 Pilulku/y"},
	{"103", "Běžná Chřipka", "{{Poison}} 25% šance vystřelit Jedovaté slzy#{{Luck}} 100% šance při 12 Štěstí"},
	{"104", "Parazit", "Slzy se při kontaktu rozdělí na dvě části#Rozdělené slzy způsobí poloviční poškození"},
	{"105", "D6", "Zamíchá předměty v aktuální místnosti"},
	{"106", "Pan Mega", "↑ Poškození bomb x2.25#{{Bomb}} +5 Bomb"},
	{"107", "Velké Nůžky", "Létání#Tvé tělo útočí na nepřátele s 82.5 kontaktního poškození za sekundu"},
	{"108", "Oplatka", "Veškeré utrpěné poškození se sníží na polovinu srdce"},
	{"109", "Peníze = Moc", "↑ {{Damage}} +0.04 Větší Poškození za každou {{Coin}} minci, kterou máš"},
	{"110", "Mámina Čočka", "20% šance vystřelit Mrazivé Slzy#↑ +0.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"111", "Fazole", "{{Poison}} Jedovatý prd#Jed způsobuje tvoje poškození 6krát"},
	{"112", "Anděl Strážný", "Orbitální andílek#Zrychluje všechny orbitální spojence#Blokuje střely#Uděluje 105 kontaktního poškození za sekundu"},
	{"113", "Démoní Děcko", "Automaticky střílí#Uděluje 3 poškození za slzu"},
	{"114", "Mámin Nůž", "Kontrolovatelný nůž#Nůž způsobí 2x poškození Izáka při držení a 6x poškození v co největší vzdálenosti"},
	{"115", "Ouija Deska", "↑ {{Tears}} +0.4 Více slz#Spektrální slzy"},
	{"116", "9-Voltovka", "-1 nabití pro aktivní předměty#{{Battery}} Plně nabije tvůj aktivní předmět"},
	{"117", "Mrtvý Pták", "Vytvoří mrtvého ptáka, když dostaneš zasáh#Pták uděluje 4 kontaktního poškození za sekundu"},
	{"118", "Leviatanův Kříž", "{{Chargeable}} Nabijte krvavý laser, který způsobuje konstantní poškození"},
	{"119", "Sáček s Krví", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Speed}} +0.3 Zvýšení Rychlosti#{{Heart}} Vyléčí 4 Srdce"},
	{"120", "Zvláštní Houba (malá)", "↑ {{Tears}} +1.7 Více Slz#↑ {{Speed}} +0.3 Zvýšení Rychlosti#↓ {{Damage}} -38% Násobič Poškození#Penalta se zmenšuje, když získáváš zvýšení poškození z jiných předmětů"},
	{"121", "Zvláštní Houba (Velká)", "↑ {{EmptyHeart}} +1 Prázdné místo pro Srdce#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Range}} +0.25 Větší Dostřel#↓ {{Speed}} -0.1 Snížení Rychlosti#↑ +0.5 Výška Slz"},
	{"122", "Děvka Babylonská", "!!! Když máš půl Červeného Srdce nebo méně:#↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.3 Zvýšení Rychlosti"},
	{"123", "Manuál na Příšery", "Náhodný spojenec pro aktuální místnost"},
	{"124", "Svitky od Mrtvého Moře", "Náhodný efekt aktivního předmětu"},
	{"125", "Polda-Bomba", "Naváděné bomby#{{Bomb}} +5 Bomb"},
	{"126", "Žiletka", "↑ {{Damage}} +1.2 Větší Poškození pro aktuální místnost#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce"},
	{"127", "Zapomeň na Mě", "Zamíchá celé patro"},
	{"128", "Navždy Sám", "Orbitální muška#Daleko od tebe#Uděluje 30 kontaktního poškození za sekundu"},
	{"129", "Kbelík Sádla", "↑ +2 Prázdné místa pro srdce#↓ -0.2 Snížení Rychlosti#Vyléčí polovinu srdce"},
	{"130", "Poník", "Uděluje létání při držení předmětu#{{Speed}} Nastaví tvoji rychlost na 1.5 pokud máš méně než 1.5#Vzléteš ve směru použití"},
	{"131", "Pytel Bomb", "{{Bomb}} Každé 2-3 místnosti vytvoří bombu"},
	{"132", "Hrouda Uhlí", "{{Damage}} Více Poškození na základě procestované vzdálenosti slzy"},
	{"133", "Guppyho Tlapka", "!!! Přeměň:#1 místo pro Srdce na 3 Duševní Srdce"},
	{"134", "Guppyho Ocas", "{{Chest}} 33% šance, že odměna za pročištěnou místnost bude truhla#33% šance na žádnou odměnu za pročištěnou místnost"},
	{"135", "Infuzní vak", "Přenosná krevní banka#Půl srdce = 1-3 penízků#{{Player14}} 0-1 mincí za Keepera"},
	{"136", "Nejlepší Kámoš", "Explodující návnada#Přitahuje nepřátele"},
	{"137", "Dálková Rozbuška", "Odpalíš bomby na požádání#{{Bomb}} +5 Bomb"},
	{"138", "Stigmata", "↑ +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození"},
	{"139", "Mámina Kabelka", "{{Trinket}} Nyní můžeš mít 2 trinkety"},
	{"140", "Bobova Kletba", "{{Poison}} Jedovaté bomby#{{Bomb}} +5 Bomb"},
	{"141", "Král Krásy", "{{Coin}} Vytvoří 7 náhodných mincí"},
	{"142", "Škapulíř", "{{SoulHeart}} Při poškození až do zbývající poloviny srdce, dostaneš 1 Duševní Srdce (jednou za místnost)"},
	{"143", "Rychlokoule", "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ {{Shotspeed}} +0.2 Větší Rychlost Střel"},
	{"144", "Žebrácký Kámoš", "{{Coin}} Sbírá mince a převádí je na pickupy"},
	{"145", "Guppyho Hlava", "Vytvoří 2-4 modré mouchy"},
	{"146", "Modlitební Obrázek", "{{EternalHeart}} +1 Srdce Věčnosti"},
	{"147", "Notchův Krumpáč", "Na dotek rozbíjí kameny v aktuální místnosti"},
	{"148", "Zamoření", "Vytvoří mouchy, když dostaneš zásah"},
	{"149", "Ipekak", "{{Poison}} Výbušné jedovaté slzy#↑ {{Damage}} +40 Větší Poškození#↓ {{Tears}} Méně Slz"},
	{"150", "Tvrdá Láska", "10% šance vystřelit zuby#{{Damage}} Zuby udělují 3.2x tvého poškození#{{Luck}} 100% šance při 9 Štěstí"},
	{"151", "Mulligan", "1/6 šance na vytvoření mouchy při zasáhnutí nepřítele"},
	{"152", "Technologie 2", "Nahrazuje tvoje pravé oko nepřetržitým laserem#Laser způsobí 20 % tvého poškození#↓ {{Damage}} -35% Menší Poškození#↓ {{Tears}} Zpoždění Slz x 2"},
	{"153", "Mutantní Pavouk", "Čtyř výstřel!#↓ {{Tears}} Méně Slz"},
	{"154", "Chemické Oloupání", "↑ {{Damage}} +2 Větší Poškození pro levé oko"},
	{"155", "Kukadlo", "Poletuje po místnosti#Uděluje 17.1 kontaktního poškození za sekundu"},
	{"156", "Hábit", "{{Battery}} +1 nabití při utrpení zásahu"},
	{"157", "Krvavá Chtíč", "↑ {{Damage}} Větší Poškození pokaždé co dostaneš zásah#Aplikuje se až 6krát za patro#Trvá po celé patro"},
	{"158", "Křišťálová Koule", "Odhaluje celou mapu#Vytvoří náhodnou Kartu nebo Duševní Srdce"},
	{"159", "Přízrak Soumraku", "Létání#Spektrální slzy"},
	{"160", "Prolomení Oblohy", "V blízkosti nepřátel vytvoří 5 paprsků světla#Způsobuje tvoje poškození+20"},
	{"161", "Ankh", "{{Player4}} Znovuzrodiš se jako ??? (Blue Baby) po smrti"},
	{"162", "Keltský Kříž", "Šance na nesmrtelnost, když Izák utrpí zásah"},
	{"163", "Duchařské dítě", "Spojenec se spektrálními slzami#Uděluje 3.5 poškození za slzu"},
	{"164", "Modrá Svíčka", "Vystřelíš modrý plamen#Způsobuje kontaktní poškození#Blokuje nepřátelské slzy#Po 2 sekundách zmizí"},
	{"165", "Devítiocasá Kočka", "↑ {{Damage}} +1 Větší Poškození#↑ {{Shotspeed}} +0.23 Větší Rychlost Střel"},
	{"166", "D20", "Zamíchá pickupy"},
	{"167", "Harlekýnské Dítě", "Vystřelí dvě slzy ve tvaru písmene V#Uděluje 4 poškození za střelu"},
	{"168", "Epický Zárodek", "Kontrolovatelný nálet místo slz#Uděluje 20násobek tvého poškození"},
	{"169", "Polyfémos", "↑ {{Damage}} +100% Větší Poškození#↑ {{Damage}} +4 dodatečné Větší Poškození#↓ {{Tears}} Méně Slz#Slzy pokračují i ​​po zabití nepřítele"},
	{"170", "Taťka Dlouhonožka", "Dupe na nepřátele#Uděluje 40 poškození za sekundu"},
	{"171", "Pavoučí Prdel", "Zpomalí nepřátele na 4 sekundy#10 poškození všem nepřátelům"},
	{"172", "Obětní Dýka", "Orbitální dýka#Blokuje nepřátelské střely#Uděluje 225 poškození za sekundu"},
	{"173", "Mitra", "{{SoulHeart}} Větší šance k nalezení Duševních Srdcí"},
	{"174", "Duhové Dítě", "Střílí náhodné slzy#Uděluje 3-5 poškození za střelu"},
	{"175", "Tátův Klíč", "Otevírá všechny dveře v místnosti, včetně {{SecretRoom}}{{SuperSecretRoom}}Tajných Místností, {{ChallengeRoom}}{{BossRushRoom}}Vyzyvatelských Místností, a Mega Satan dveří"},
	{"176", "Kmenové Buňky", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel"},
	{"177", "Přenosný Automat", "Přenosný Hrací Automat"},
	{"178", "Svěcená Voda", "Při utrpení zásahu po sobě zanechá poškozující kaluž#Uděluje 24 poškození za sekundu"},
	{"179", "Osud", "Létání#{{EternalHeart}} +1 Srdce Věčnosti"},
	{"180", "Černá Fazole", "Při doteku prdíš a zanecháváš za sebou jedovaté prdy"},
	{"181", "Bílý Poník", "Uděluje létání při držení předmětu#{{Speed}} Nastaví tvoji rychlost na 1.5 pokud máš méně než 1.5#Svaté vzlétnutí ve směru použití"},
	{"182", "Nejsvětější Srdce", "↑ +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ 230% + 1 Větší Poškození#↓ -0.4 Méně Slz#↓ -0.25 Menší Rychlost Střel#↑ +0.38 Větší Dostřel#↑ +0.75 Výška Slz#Naváděné slzy"},
	{"183", "Párátka", "↑ {{Tears}} +0.7 Více Slz#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel"},
	{"184", "Svatý Grál", "Uděluje létání#↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"185", "Mrtvá Holubice", "Létání#Spektrální slzy"},
	{"186", "Pokrevní Práva", "↑ Udělí 40 poškození každému nepříteli#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce"},
	{"187", "Guppyho Chlupatá Koule", "Rostoucí koule z chlupů#Houpe se kolem tebe#Roste, když zabije nepřítele#Větší koule způsobí větší poškození"},
	{"188", "Ábel", "Zrcadlí tvůj pohyb#Střílí směrem k hráči#Uděluje 3.5 poškození za slzu"},
	{"189", "SMB Super Fanoušek", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Tears}} +0.2 Více Slz#↑ {{Range}} +0.5 Větší Dostřel#↑ {{Speed}} +0.2 Zvýšení Rychlosti#↑ +1 Výška Slz"},
	{"190", "Pyro", "{{Bomb}} +99 Bomb"},
	{"191", "3 Dolarová Bankovka", "Náhodný efekt slzy každé 2-3 sekundy"},
	{"192", "Telepatie pro Blbečky", "Naváděné slzy pro aktuální místnost"},
	{"193", "MASO!", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození"},
	{"194", "Magická Koule 8", "↑ {{Shotspeed}} +0.16 Větší Rychlost Střel#{{Card}} +1 Karta"},
	{"195", "Mámina Peněženka", "{{Pill}} Vytvoří 4 Pilulky"},
	{"196", "Mačkátko", "{{SoulHeart}} Vytvoří 2 Duševní Srdce#↑ {{Tears}} +0.4 Více Slz"},
	{"197", "Ježíšův Džus", "↑ +0.5 Větší Poškození#↑ +0.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"198", "Krabice", "Vytvoří 1 pickup od každého druhu"},
	{"199", "Mámin Klíč", "{{Key}} +2 Klíče#Více věcí z truhel"},
	{"200", "Máminy Oční Stíny", "{{Charm}} 10% šance vystřelit okouzlující slzy"},
	{"201", "Železná Cihla", "↑ {{Damage}} +0.3 Větší Poškození#{{Confusion}} 10% šance vystřelit matoucí slzy"},
	{"202", "Midasův Dotek", "Proměňuje nepřátele ve zlato při dotyku#Způsobuje kontaktní poškození na základě počtu tvých mincí#{{Coin}} Při zabíjení zlatých nepřátel padají mince"},
	{"203", "Skromný Balíček", "Zdvojnásobuje všechny pickupy"},
	{"204", "Ledvinka", "50% šance na náhodný pickup při zásahu nepřítelem"},
	{"205", "Ostrá Zástrčka", "{{Battery}} -2 Srdce = Plné nabití předmětu při stisknutí mezerníku#!!! Funguje pouze v případě, že položka nemá žádné nabití!"},
	{"206", "Gilotina", "↑ {{Damage}} +1 Větší Poškození#↑ {{Tears}} Více Slz#Tvoje Hlava je nyní orbitál#Budeš střílet z hlavy#Hlava uděluje kontaktní poškození 105"},
	{"207", "Koule z Obvazů", "LVL1: Orbitální koule#LVL2: Orbitální a střílející koule#LVL3: Obvazová Holka LVL1#LVL4: Obvazová Holka LVL2"},
	{"208", "Pás Šampionů", "↑ {{Damage}} +1 Větší Poškození#!!! +15% šance na objevení šampionů"},
	{"209", "Prdelní Bomby", "↑ {{Bomb}} +5 Bomb#{{Confusion}} Výbuchy udělí poškození a zmatou každého nepřítele v místnosti"},
	{"210", "Ohlodaný List", "Nesmrtelnost, když stojíš 1 sekundu na místě"},
	{"211", "Pavoučí Miláček", "Při utrpení poškození vytvoří 1-2 pavouky"},
	{"212", "Guppyho Obojek", "↑ 50% šance na oživení"},
	{"213", "Ztracená Čočka", "Štítované slzy#Slzy blokují nepřátelské střely#↓ {{Shotspeed}} -0.16 Menší Rychlost Střel"},
	{"214", "Anémie", "↑ {{Range}} +5 Větší Dostřel#Po utrpení zásahu zanechává na zemi poškozující kaluž"},
	{"215", "Kozí Hlava", "↑ {{AngelDevilChance}} 100% šance na Ďábelskou/Andělskou Místnost"},
	{"216", "Obřadní Róba", "↑ {{Damage}} +1 Větší Poškození#{{BlackHeart}} +3 Černé Srdce"},
	{"217", "Maminčina Paruka", "Náhodná šance na vytvoření modrého pavouka při střílení slz#{{Heart}} Vyléčí 1 Červené Srdce"},
	{"218", "Placenta", "↑ {{Heart}} +1 Zvýšení Zdraví#Šance vyléčit půl srdce každou minutu"},
	{"219", "Starý Obvaz", "↑ {{EmptyHeart}} +1 Prázdné místo pro Srdce#{{Heart}} Náhodná šance na vytvoření Červených Srdcí, když dostaneš zásah"},
	{"220", "Smutné Bomby", "Výbuchy bomby také vystřelí 10 slz v kruhu#{{Bomb}} +5 Bomb"},
	{"221", "Gumový Cement", "Poskakující slzy"},
	{"222", "Anti-Gravitace", "Podržením tlačítek pro střelbu se ve vzduchu budou vznášet slzy#Po uvolnění budou všechny slzy vystřeleny směrem, kterým byly vystřeleny původně#↑ {{Tears}} -2 Zpoždění Slz"},
	{"223", "Pyromaniak", "Výbuchy tě léčí#{{Bomb}} +5 Bomb"},
	{"224", "Kriketovo Tělo", "↑ {{Tears}} +1 Více Slz#↓ {{Range}} -10 Menší Dostřel#Slzy se při zásahu rozdělují na 4#Rozdělené slzy způsobí poloviční poškození"},
	{"225", "Fetišista", "{{SoulHeart}} Šance na vytvoření Duševního Srdce, když dostaneš poškození#{{HalfHeart}} Monstra mají šanci vytvořit půl Červeného Srdce po zabití"},
	{"226", "Černý Lotus", "↑ {{Heart}} +1 Zvýšení Zdraví#{{SoulHeart}} +1 Duševní Srdce#{{BlackHeart}} +1 Černé Srdce"},
	{"227", "Prasátko", "{{Coin}} +3 mince#Při utrpení zásahu vytvoří 1-2 mince#{{Player14}} 0-1 mincí za Keepera"},
	{"228", "Maminčin Parfém", "{{Fear}} 15% šance vystřelit zastrašující slzy#↑ {{Tears}} +1 Více Slz"},
	{"229", "Monstrova Plíce", "{{Chargeable}} Slzy lze nyní nabít a vystřelit ve stylu brokovnice#↓ {{Tears}} 4.3x Zpoždění Slz"},
	{"230", "Abaddón", "↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{Fear}} Zastrašující slzy#↓ {{EmptyHeart}} Odstraňuje všechny místa na srdce#{{BlackHeart}} +6 Černých Srdcí"},
	{"231", "Koule Dehtu", "{{Slow}} 10% šance vystřelit zpomalující slzy#{{Luck}} 100% při 18 Štěstí#Zanechává po sobě zpomalující kaluž"},
	{"232", "Stopky", "{{Slow}} Permanentní efekt zpomalení#(aktivuje se při zásahu)#↑ +0.3 Zvýšení Rychlosti"},
	{"233", "Maličká Planeta", "Slzy obíhají kolem tebe#↑ {{Range}} O Hodně Větší Dostřel!#↑ +7 Výška Slz#Spektrální slzy"},
	{"234", "Zamoření 2", "Vytvoří pavouky, když zabiješ nepřítele"},
	{"235", "", "<předmět neexistuje>"},
	{"236", "E. Coli", "Při dotyku proměníš nepřátele v hovno"},
	{"237", "Dotek Smrti", "Střílíš kosy!#↑ +1.5 Větší Poškození#↓ -0.3 Méně Slz#Průrazné slzy"},
	{"238", "První Část Klíče", "!!! Část klíče od dveří k Mega Satanovi!#25% vyšší šance na {{AngelRoom}}Andělské Místnosti"},
	{"239", "Druhá Část Klíče", "!!! Část klíče od dveří k Mega Satanovi!#25% vyšší šance na {{AngelRoom}}Andělské Místnosti"},
	{"240", "Experimentální Léčba", "Všechny Statistiky ↑/↓ o náhodné číslo"},
	{"241", "Smlouva z Podzemí", "Zdvojnásobuje všechny odměny za pročištěnou místnost#33% šance na žádnou odměnu za pročištěnou místnost#{{GreedMode}} Neovlivňuje režim Greed Mode"},
	{"242", "Hanba", "50% šance na zablokování nepřátelských slz"},
	{"243", "Štít Nejsvětější Trojice", "Štít blokující nepřátelské slzy"},
	{"244", "Tech.5", "Střílíš náhodné laserové výstřely"},
	{"245", "20/20", "Zdvojnásobí všechny tvoje střely"},
	{"246", "Modrá Mapa", "{{SecretRoom}} Odhaluje tajné místnosti"},
	{"247", "NEJKY!", "Tvoji spojenci mají dvojnásobné poškození"},
	{"248", "Úlové Myšlení", "Modří pavouci/mouchy působí dvojnásobné poškození"},
	{"249", "Jsou Tu Možnosti", "Namísto 1 se objeví 2 Boss předměty#!!! Vzít lze pouze jeden"},
	{"250", "1+1 Bomby", "{{Bomb}} Všechny bomby se stanou dvojitými bombami"},
	{"251", "Začátečnický Balíček", "{{Card}} Můžeš mít u sebe 2 Karty#Promění všechny Pilulky na Karty#Vytvoří 1 Kartu"},
	{"252", "Malý Pytlík", "{{Pill}} Můžeš mít u sebe 2 Pilulky#Promění všechny Karty na Pilulky#Vytvoří 1 Pilulku"},
	{"253", "Kouzelný Strup", "↑ {{Luck}} +1 Zvýšení Štěstí#↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"254", "Krevní Sraženina", "↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +5 Větší Dostřel#!!! Platí pouze pro levé oko"},
	{"255", "Šroub", "↑ {{Tears}} +0.5 Více Slz#↑ {{Shotspeed}} +0.2 Větší Rychlost Střel"},
	{"256", "Horké Bomby", "{{Burning}} Hořící bomby#{{Bomb}} +5 Bomb"},
	{"257", "Ohnivá Mysl", "{{Burning}} Slzy zapalují nepřátele#Šance, že slzy vybuchnou při zásahu nepřítele#{{Luck}} 100% šance výbuchu při 13 Štěstí#!!! Výbuch ti může ublížit!"},
	{"258", "Chybějící č.", "Zamíchá všechny tvoje předměty a statistiky při vyzvednutí tohoto předmětu a pokaždé, když změníš patro"},
	{"259", "Temná Hmota", "↑ {{Damage}} +1 Větší Poškození#{{Fear}} 33% šance vystřelit zastrašující slzy#{{Luck}} 100% šance při 20 Štěstí"},
	{"260", "Černá Svíčka", "{{CurseBlind}} Imunita vůči Prokletí#{{BlackHeart}} +1 Černé Srdce#{{AngelDevilChance}} +15% šance na Ďábelskou/Andělskou Místnost"},
	{"261", "Proptóza", "↑ {{Damage}} +100% Větší Poškození#↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy"},
	{"262", "Chybějící Kapitola 2", "{{BlackHeart}} +1 Černé Srdce#Když zdraví klesne na 1 Srdce, udělí poškození všem nepřátelům v místnosti"},
	{"263", "", "<předmět neexistuje>"},
	{"264", "Chytrá Muška", "Orbitální moucha#Když dostaneš zásah, zaútočí na nepřátele#Uděluje 22.5 poškození za sekundu"},
	{"265", "Vysušené Dítě", "Když jej zasáhnou nepřátelské slzy, má 10% šanci poškodit všechny nepřátele v místnosti"},
	{"266", "Šťavnatý Kokon", "Zanechává po sobě zpomalující kaluž#Po vyčištění místnosti vytvoří 1-2 přátelské pavouky"},
	{"267", "Robo-Děcko 2.0", "Střílí lasery#Uděluje 3.5 poškození za střelu#Pohybuje se ve směru, kterým střílíš"},
	{"268", "Shnilé Děcko", "Když hráč střílí, vytváří modré mouchy"},
	{"269", "Bezhlavé Dítě", "Zanechává po sobě kaluž udělující 6 poškození za sekundu"},
	{"270", "Pijavice", "{{HalfHeart}} Vyléčí polovinu Srdce, když zabije nepřítele#Uděluje 3.2 poškození za sekundu"},
	{"271", "Tajemný Pytel", "Každých pár pokojů vytvoří náhodné pickupy"},
	{"272", "VKM (Velká Kamarádská Moucha)", "Explodující moucha#Exploze způsobí 60 poškození"},
	{"273", "Bobův Mozek", "Společník jakožto vrhací bomba#Exploze způsobí 60 poškození"},
	{"274", "Nejlepší Kámoš", "Když dostaneš zásah, získáte orbitální mušku střední vzdálenosti#Uděluje 75 poškození za sekundu"},
	{"275", "Maličký Leviatan", "{{Collectible118}} Střílí brimstone laser#Jeho rána uděluje 31.5 poškození za sekundu"},
	{"276", "Izákovo Srdce", "Získáš nezranitelné tělo#!!! Když je ale zasaženo Srdce, utrpíš poškození"},
	{"277", "Maličký Bubák", "Přátelský společenský duch#Uděluje 4 poškození za sekundu a způsobuje strach"},
	{"278", "Temný Žebrák", "{{Heart}} Převádí 1.5 Červených Srdcí na Duševní/Černé srdce nebo pavouka"},
	{"279", "Velký Fanda", "Velká tlustá orbitální moucha#Uděluje 30 poškození za sekundu"},
	{"280", "Sissy Dlouhonožka", "Náhodně vytváří modré pavouky pokud je v nepřátelské místnosti"},
	{"281", "Boxovací Pytel", "Společník sloužící jakožto návnada#Místo na tebe se nepřátelé zaměří na něj"},
	{"282", "Jak Skákat", "Umožňuje ti skákat"},
	{"283", "D100", "Zamíchá všechny pickupy, předměty a tvoje pasivní předměty"},
	{"284", "D4", "Zamíchá všechny tvoje pasivní předměty"},
	{"285", "D10", "Zamíchá všechny nepřátele v místnosti"},
	{"286", "Prázdná Karta", "Napodobuje efekty tvojí držené karty"},
	{"287", "Kniha Tajemství", "Získáš jeden z těchto efektů pro patro: #{{Collectible54}} Mapa pokladů#{{Collectible21}} Kompas #{{Collectible246}} Modrá mapa"},
	{"288", "Krabice Plná Pavouků", "Vytvoří 1-4 modré/ých pavouků"},
	{"289", "Červená Svíčka", "Vyhodíte červený plamen#Plamen přetrvává, dokud pětkrát nezpůsobí 23 poškození nebo pětkrát nezablokuje střelu"},
	{"290", "Sklenice", "{{Heart}} Uloží až 4 Červené Srdce pro pozdější použití"},
	{"291", "Spláchnutej!", "!!! Instantně zabíjí hovnové nepřátele a bosse!#Proměňuje nepřátele v hovna"},
	{"292", "Satanská Bible", "{{BlackHeart}} +1 Černé Srdce"},
	{"293", "Krampusova Hlava", "Vystřelí krvavé lasery ve všech 4 směrech"},
	{"294", "Máslová Fazole", "Odrazí blízké nepřátele a jejich střely#10% šance na proměnění se v silnější {{Collectible484}}Počkat Co? při výměně za jiný aktivní předmět a opětovném sebrání"},
	{"295", "Kouzelné Prstíky", "Udělí 2x poškození hráče celé místnosti#{{Coin}} Cena: 1 mince"},
	{"296", "Konvertor", "!!! Přemění:#2 Duševní/Černé Srdce na 1 místo/a pro Červené Srdce"},
	{"297", "Pandořina Skříňka", "vytváří předměty podle patra:#B1: 2 {{SoulHeart}}; B2: 2 {{Bomb}} & 2 {{Key}}#C1: 1 {{BossRoom}} předmět; C2: B1+C1#D1: 4 {{SoulHeart}}; D2: 20 {{Coin}}#W1: 2 {{BossRoom}} předměty#W2: {{Collectible33}} Bible#???/Void: Nic#Sheol: 1 {{DevilRoom}} předmět + 1 {{BlackHeart}}#Cathe: 1 {{AngelRoom}} předmět + 1 {{EternalHeart}}#Dark Room: {{Collectible523}} Odemkne Stěhovací Krabici; Chest: 1 {{Coin}}"},
	{"298", "Jednorožčí Kopyto", "Nesmrtelnost a +0.28 Zvýšení Rychlosti na 6 sekund"},
	{"299", "Býk", "{{Speed}} Budeš zrychlovat v nepřátelských místnostech!#Nesmrtelnost pokud jsi dostatečně rychlý#↓ {{Speed}} -0.3 Snížení Rychlosti"},
	{"300", "Beran", "↑ {{Speed}} +0.25 Zvýšení Rychlosti#Tvůj dotyk uděluje nepřátelům poškození"},
	{"301", "Rak", "{{SoulHeart}} +3 Duševní Srdce#Utrpíš pouze polovinu poškození v místnosti, ve které jsi už byl zasažen"},
	{"302", "Lev", "Ničíš kameny, když přes ně chodíš#Zvětšení"},
	{"303", "Panna", "Šance získat nesmrtelnost při zásahu#{{Pill}} Převádí negativní pilulky na pozitivní#{{Luck}} 100% šance při 10 Štěstí"},
	{"304", "Váha", "+6 mincí / Klíčů / Bomb#Vyrovnává tvoje statistiky!#!!! Každá další nově změněná statistika ovlivní i ostatní statistiky"},
	{"305", "Štír", "{{Poison}} Jedovaté slzy"},
	{"306", "Střelec", "↑ {{Speed}} +0.2 Zvýšení Rychlosti#Průrazné slzy"},
	{"307", "Kozoroh", "↑ {{Heart}} +1 Zvýšení Zdraví #↑ {{Damage}} +0.5 Větší Poškození#↑ {{Speed}} +0.1 Zvýšení Rychlosti#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Tears}} +1 Více Slz#+1 Bomba, mincea klíč"},
	{"308", "Vodnář", "Zanecháváš po sobě stopu kaluže#Kaluž uděluje 6 poškození za sekundu"},
	{"309", "Ryba", "↑ {{Tears}} +1 Více Slz#Slzy více odrážejí nepřátele"},
	{"310", "Evina Řasenka", "↑ {{Damage}} +100% Větší Poškození#↓ {{Tears}} -50% Méně Slz#↓ {{Shotspeed}} -0.5 Menší Rychlost Střel"},
	{"311", "Jidášův Stín", "{{Player12}} Když zemřeš, znovuzrodíš se jako Temný Jidáš#↑ {{Damage}} Ten má 2x Násobič Poškození"},
	{"312", "Maggyina Mašle", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 Červené Srdce#Všechna Červená Srdce nyní léčí dvojnásobek své hodnoty"},
	{"313", "Svatý Plášť", "Ignoruje první zásah v každé místnosti"},
	{"314", "Boky Jako Skříň", "↑ {{Heart}} +1 Zvýšení Zdraví#↓ {{Speed}} -0.4 Snížení Rychlosti#Ničí kameny, když přes ně chodíš"},
	{"315", "Podivný Přitahovák", "Magnetické slzy#Ovlivňuje nepřátele, pickupy a trinkety"},
	{"316", "Prokleté Oko", "Nabitá salva slz#!!! Pokud tě něco zasáhne při nabíjení, teleportuje tě do náhodné místnosti#{{Collectible260}} Neteleportne tě, pokud máš Černou Svíčku"},
	{"317", "Záhadná Kapalina", "Slzy po sobě zanechávají kaluž#Kaluž uděluje 30 poškození za sekundu"},
	{"318", "Blíženec", "Spojenec pro blízký souboj#Uděluje 6 kontaktního poškození za sekundu "},
	{"319", "Kainovo Druhé Oko", "Odráží se po místnosti#Střílí směrem k Izákovi#{{Damage}} Jeho poškození se rovná tvému poškození"},
	{"320", "Jediný Přítel ???", "Ovladatelná moucha#Uděluje 5 kontaktního poškození za sekundu"},
	{"321", "Samsonovy Řetězy", "Přetahovatelná koule, která dokáže ničit kameny#Uděluje 10.7 kontaktního poškození za sekundu"},
	{"322", "Divné Dítě", "Kopíruje efekt jednoho z tvých spojenců#Působí dvojnásobné poškození"},
	{"323", "Izákovy Slzy", "Při použití vystřelíš 8 slz ve všech směrech#Nabíjí se při střílení"},
	{"324", "Nedefinováno", "Teleportuje tě do {{TreasureRoom}}Pokladnice, {{SecretRoom}}Tajné, {{SuperSecretRoom}}Super Tajné nebo JSEM ERROR Místnosti"},
	{"325", "Nůžky", "Uřízne ti hlavu#Hlava se změní na nehybného spojence#Ovládej své tělo odděleně"},
	{"326", "Dech Života", "Pro nesmrtelnost podržte mezerník, dokud nebude nabíjecí lišta prázdná#!!! Nedrž to příliš dlouho!"},
	{"327", "Polaroid", "Nesmrtelnost při zásahu pokud máš půl Červeného Srdce nebo méně"},
	{"328", "Negativ", "Způsobí poškození všem nepřátelům v místnosti při zásahu pokud máš půl Červeného Srdce nebo méně"},
	{"329", "Technika Ludovico", "Kontrolovatelná Slza"},
	{"330", "Sójové Mléko", "↑ {{Tears}} O HODNĚ Více Slz: (zdržení /4) - 2#↓ {{Damage}} -80% Menší Poškození"},
	{"331", "Božství", "Naváděné slzy#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Range}} +1.2 Větší Dostřel#↓ {{Tears}} -0.3 Méně Slz#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel#↑ +0.8 Výška Slz#Slzy získávají poškozující auru"},
	{"332", "Lazarovy Hadry", "{{Player11}} Když zemřeš, znovuzrodíš se jako Lazarus (Povstaný)"},
	{"333", "Mysl", "Úplné mapování"},
	{"334", "Tělo", "↑ {{Heart}} +3 Zvýšení Zdraví"},
	{"335", "Duše", "{{SoulHeart}} +2 Duševní Srdce#Poskytuje auru, která odpuzuje nepřátele a střely"},
	{"336", "Mrtvá Cibule", "Průrazné + spektrální slzy#↑ {{Range}} +0.25 Větší Dostřel#↓ {{Shotspeed}} -0.4 Menší Rychlost Střel#↑ {{Tearsize}} +50% Zvětšení Slz"},
	{"337", "Rozbité Hodinky", "Zpomaluje nebo zrychluje každou 4. místnost"},
	{"338", "Bumerang", "Vrhací bumerang#Omráčí nepřátele a uděluje 2x tvého poškození při zásahu#Může sbírat předměty"},
	{"339", "Spínací Špendlík", "↑ {{Range}} +5.25 Větší Dostřel#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel#↑ +0.5 Výška Slz#{{BlackHeart}} +1 Černé Srdce"},
	{"340", "Kofeinová Pilulka", "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ Zmenšení#{{Pill}} Při sebrání vytvoří náhodnou pilulku"},
	{"341", "Roztrhaná Fotografie", "↑ {{Tears}} +0.7 Více Slz#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel"},
	{"342", "Modrý Klobouček", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Tears}} +0.7 Více Slz#↓ {{Shotspeed}} -16% Menší Rychlost Střel"},
	{"343", "Klíč od Petlice", "↑ {{Luck}} +1 Zvýšení Štěstí#{{SoulHeart}} +1 Duševní Srdce#{{Key}} Vytvoří 2 Klíče"},
	{"344", "Knížečkové Zápalky", "{{BlackHeart}} +1 Černé Srdce#{{Bomb}} Vytvoří 2-3 Bomby"},
	{"345", "Synthol (steroidy)", "↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz"},
	{"346", "Svačina", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"347", "Diplopie", "Duplikuje všechny předměty/pickupy v aktuální místnosti"},
	{"348", "Placebo", "{{Pill}} Napodobuje efekt tvojí držené pilulky"},
	{"349", "Dřevěný Niklák", "50% šance na vytvoření náhodné mince"},
	{"350", "Toxický Šok", "{{Poison}} Na začátku každé místnosti otráví každého nepřítele#Zabití nepřátelé po sobě zanechají poškozující kaluž"},
	{"351", "Mega Fazole", "Zmrazíš všechny nepřátele v aktuální místnosti#Uděluje 5 poškození a otráví všechny nepřátele v okolí#Vyšle kamennou vlnu po místnosti#!!! Lze použít k otevření tajných místností"},
	{"352", "Skleněné Dělo", "↓ Sníží tvoje zdraví na polovinu srdce#Vystřelí jednu velkou průraznou spektrální slzu ((Poškození+1) x 10)"},
	{"353", "Bomber Kluk", "{{Bomb}} +5 Bomb#Bomby nyní vybuchují ve tvaru kříže"},
	{"354", "Crack-Jackův Karamelový Popcorn", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Trinket}} Vytvoří jeden náhodný trinket"},
	{"355", "Máminy Perly", "↑ {{Range}} +1.25 Větší Dostřel#↑ {{Luck}} +1 Zvýšení Štěstí#↑ +0.5 Výška Slz"},
	{"356", "Autobaterie", "Způsobí, že se tvůj aktivní předmět při použití aktivuje dvakrát"},
	{"357", "Krabice s Kamarády", "Duplikuje tvoje spojence pro aktuální místnost#Pokud žádné spojence nemáš, objeví se {{Collectible113}}Démoní Děcko pro aktuální místnost"},
	{"358", "Čaroděj", "Střílíš 2 slzy najednou diagonálně, podobně jako pilulka 'Jsi Čaroděj Harry!'#Spektrální slzy"},
	{"359", "8 Palcové Hřebíky", "↑ {{Damage}} +1.5 Větší Poškození#Slzy více odrážejí nepřátele"},
	{"360", "Inkubus", "Střílí stejné slzy jako Izák, z hlediska poškození, statistik a efektů"},
	{"361", "Odměna Osudu", "Vystřeluje slzy a kopíruje tvoje poškození"},
	{"362", "Maličká Truhla", "Každých pár místností vytvoří náhodný pickup"},
	{"363", "Zapřísáhlý Ochránce", "Orbitální spojenec#Uděluje 105 kontaktního poškození za sekundu#Blokuje a přitahuje střely#Zablokováním 10 slz v jedné místnosti vytvoří Srdce Věčnosti"},
	{"364", "Friend Zone", "Orbitální moucha#Uděluje 45 kontaktního poškození za sekundu"},
	{"365", "Ztracená Moucha", "Pohybuje se po stěnách/překážkách v místnosti#Uděluje 105 kontaktního poškození za sekundu"},
	{"366", "Rozptylové Bomby", "{{Bomb}} +5 Bomb#Způsobí, že tvoje bomby explodují a poté vytvoří další 2-4 malé bombičky"},
	{"367", "Lepkavé Bomby", "{{Bomb}} +5 Bomb#Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele"},
	{"368", "Epifora", "Střelba jedním směrem postupně snižuje Zpoždění Slz až o 200 %"},
	{"369", "Kontinuum", "↑ {{Range}} +2.25 Větší Dostřel#↑ +1.5 Výška Slz#Slzy procházejí stěnami a objevují se z protější stěny"},
	{"370", "Panenka", "↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz#{{UnknownHeart}} Po sebrání vytvoří 3 náhodná srdce"},
	{"371", "Prokletí Věže", "Pokaždé, když dostaneš zásah, vyšleš 6 trollích bomb#Tyto bomby jsou ovlivněny bombovými předměty"},
	{"372", "Nabité Dítě", "Náhodná šance na vytvoření baterie nebo zmrazení všech nepřátel v místnosti#Šance přidat jedno nabití k tvému aktivnímu předmětu"},
	{"373", "Ostrostřelec", "↑ {{Damage}} +25% Větší Poškození za každou slzu, která úspěšně zasáhne nepřítele (max +100%)#Šance ztratit násobitel, když mineš"},
	{"374", "Posvátné Světlo", "10% šance na vystřelení Posvátné slzy, která při zásahu vyšle paprsek světla#Paprsek způsobí 4x tvého poškození#{{Luck}} 50% šance při 9 Štěstí"},
	{"375", "Klobouk Hostitele", "Poskytuje imunitu proti výbuchům a imunitu proti dupání Mámy a Satanovy nohy#20% šance k zablokování slz"},
	{"376", "Doplnění Zásob", "Vytvoří 3 náhodné pickupy#Obchody okamžitě doplňují zásoby při nakupování"},
	{"377", "Prasklý Kokon", "Pavoučí nepřátelé již necílí na Izáka ani mu nezpůsobují kontaktní poškození"},
	{"378", "Číslo Dva", "Střílení slz po dobu 3 sekund vytvoří Prdelní Bombu"},
	{"379", "Duplexní Pupila", "Slzy dostanou mnohem větší hitbox#Spektrální slzy"},
	{"380", "Zaplať za Hraní", "{{Coin}} +5 minc#Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů"},
	{"381", "Edenovo Požehnání", "↑ {{Tears}} +0.7 Více Slz#Dá ti náhodný předmět na začátku tvojí další hry"},
	{"382", "Kamarádský Míček", "Můžeš ji vrhnout na nepřátele k jejich zachycení#Při dalším použití se znovu objeví stejný nepřítel ale jakožto přátelský společník"},
	{"383", "Slzní Rozbuška", "Odpálíš všechny slzy aktuálně na obrazovce, což způsobí, že se každá rozdělí na 6 dalších slz, které se budou šířit do kruhu"},
	{"384", "Maličký Gurdy", "{{Chargeable}} Vystřelí se a bude létat po místnosti#Uděluje 5-90 kontaktního poškození za sekundu, závisí to na jeho rychlosti"},
	{"385", "Bumbo", "Sbírá mince poblíž#Upgraduje se po získání 6, 12 a 24 mincí#LVL2: Šance na vytvoření předmětu po vyčištění místnosti#LVL3: Vystřeluje slzy, které mohou při zásahu upustit mince#LVL4: Pronásleduje nepřátele, příležitostně shazuje bomby a může při sběru mincí vytvořit předmět"},
	{"386", "D12", "Zamíchá jakýkoli objekt na jiný náhodný typ objektu (např. hovno, vázy, TNT, červené hovno, kamenné bloky atd.)"},
	{"387", "Kadidelnice", "Vytváří velkou světelnou auru, která zpomaluje nepřátele a projektily uvnitř"},
	{"388", "Klíčový Žebrák", "Převádí klíče na náhodné truhly"},
	{"389", "Pytel Run", "{{Rune}} Vytvoří náhodnou runu každých 5-6 místností"},
	{"390", "Serafim", "Střílí slzy Nejsvětějšího Srdce#Uděluje 10 poškození za střelu"},
	{"391", "Zrada", "{{Charm}} Pokaždé, když Izák utrpí poškození, okouzlí každého nepřítele v místnosti"},
	{"392", "Zvěrokruh", "Dává ti náhodný efekt předmětu zvěrokruhu v každém patře"},
	{"393", "Hadí Polibek", "{{Poison}} 15% šance vystřelit jedovaté slzy#{{Poison}} Otráví nepřátele při kontaktu#{{BlackHeart}} Nepřátelé, kteří byli otráveni, mají šanci vytvořit po smrti Černé Srdce"},
	{"394", "Označený", "Slzy automaticky míří na červený terč na zemi, který ovládá hráč#↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +3.15 Větší Dostřel#↑ +0.3 Výška Slz"},
	{"395", "Tech X", "{{Chargeable}} Získáš schopnost nabíjet a vystřelovat střely jakožto laserový prstenec, který se pohybuje po místnosti#Větší velikost prstence bude s delším nabíjením"},
	{"396", "Komorová Břitva", "Vytvoří až dva portály pro cestování mezi nimi#Lze umístit do různých místností"},
	{"397", "Vlečný Paprsek", "Izákovy slzy nyní putují přímo vpřed podle paprsku světla, ale budou se také pohybovat do stran v závislosti na pohybu tvého hráče#↑ {{Tears}} +0.5 Více Slz#↑ {{Range}} +5.25 Větší Dostřel#↑ {{Shotspeed}} +0.16 Větší Rychlost Střel#↑ +0.5 Výška Slz"},
	{"398", "Boží Maso", "Slzy mohou nepřátele zmenšit#Scvrklé nepřátele lze rozdrtit a zabít tím, že po nich přejdeš"},
	{"399", "Chřtán Prázdnoty", "↑ {{Damage}} +1 Větší Poškození#{{Chargeable}} Po 3 sekundách střílení slz se na Izákově hlavě objeví červený kříž. Po uvolnění tlačítka střelby vytvoří prstenec s černým laserem#{{BlackHeart}} Nepřátelé zabití černým prstencem mají šanci vytvořit Černé Srdce"},
	{"400", "Kopí Osudu", "Vytvoří před tebou kopí#Uděluje dvakrát tvoje poškození#Šance zastrašit nepřátele při kontaktu"},
	{"401", "Výbušnina", "25% šance na vystřelení přilepující se bombové slzy#Přilepující se bombové slzy nezpůsobí poškození při zásahu"},
	{"402", "Chaos", "Předměty budou nyní vybírány z náhodných skupin předmětů#Vytvoří 1-6 náhodných pickupů"},
	{"403", "Pavoučí Bot", "Umožňí ti vidět poškození způsobené slzami a ukazatele zdraví všech nepřátel#Vyvolává náhodný stavový efekt při kontaktu#Náhodně vytváří baterie"},
	{"404", "Prdící Děcko", "Blokuje projektily#Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět"},
	{"405", "Hru Rozbíjející Chyba", "Poskakuje po místnosti#Uděluje 120 kontaktního poškození za sekundu a aplikuje náhodný stavový efekt"},
	{"406", "D8", "Zamíchá tvoje statistiky#Ovlivní pouze poškození, slzy, dosah a rychlost"},
	{"407", "Čistota", "↑ Zvyšuje jednu z tvých statistik v závislosti na barvě aury kolem tebe#Když utrpíš poškození, získáš novou auru#{{ColorRed}}Červená{{CR}} = {{Damage}} +4 Větší Poškození#{{ColorBlue}}Modrá{{CR}} = {{Tears}} -4 Zpoždění Slz#{{ColorYellow}}Žlutá{{CR}} = {{Speed}} +0.5 Zvýšení Rychlosti#{{ColorOrange}}Oranžová{{CR}} = {{Range}} +7.5 Větší Dostřel, +1 Výška Slz"},
	{"408", "Athame", "Když utrpíš poškození, objeví se kolem Izáka prstenec černého laseru#{{BlackHeart}} Nepřátelé zabití laserem mají šanci vytvořit Černé Srdce"},
	{"409", "Prázdná Nádoba", "{{BlackHeart}} +2 Černé Srdce#Když Izák nemá Červené Srdce:#Získáš létání#Každých 40 sekund v nepřátelské místnosti získáš na 10 sekund štít"},
	{"410", "Oko Zla", "3.33% šance vystřelit oko, které střílí slzy stejným směrem jako Izák"},
	{"411", "Chutná Krev", "↑ {{Damage}} +0.5 Větší Poškození za každého zabitého nepřítele v aktuální místnosti#Maximálně +5 Větší Poškození po 10 zabitích"},
	{"412", "Početí Kambionu", "Po 15 utrpeného poškození získá Izák stálého společenského démona#Max. až 4 společníci"},
	{"413", "Neposkvrněné Početí", "Po sebrání 15 srdcí získá Izák trvalého andělského společníka#Max. až 5 společníků"},
	{"414", "Více Možností", "{{TreasureRoom}} Dva předměty se nyní objeví ve všech Pokladnicích#Můžeš si vybrat pouze jeden"},
	{"415", "Koruna Světla", "{{SoulHeart}} +2 Duševní Srdce#Pokud nemáš žádné poškozené místa s Červenými Srdci:#↑ {{Damage}} +100% Větší Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel#Deaktivuje se pro aktuální místnost, pokud utrpíš poškození"},
	{"416", "Hluboké Kapsy", "Umožňí ti nosit dvě karty/pilulky/runy"},
	{"417", "Sukuba", "Poskakuje po místnosti s poškozující aurou, která každou sekundu působí 129 % tvého poškození#↑ {{Damage}} +50 % poškození, když stojíš v auře"},
	{"418", "Ovocný Dort", "S každou slzou, kterou vystřelíš, ti poskytne jiný efekt pro další slzu"},
	{"419", "Teleport 2.0", "Teleportuje tě do náhodné místnosti, která ještě nebyla prozkoumána#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"},
	{"420", "Černý Prášek", "Chůze v kruhu vytvoří na podlaze symbol pentagramu, který působí 10 poškození za tik"},
	{"421", "Červená Fazole", "{{Charm}}Aplikuje efekt okouzlení na všechny nepřátele v blízkém dosahu a způsobí jim 5 poškození"},
	{"422", "Zářící Přesýpací Hodiny", "Přetočíš čas a vrátíš se zpět do předchozí místnosti, ve které jsi byl předtím a do stejného stavu oné místnosti#Po třech použitích se stanou obyčejnými přesýpacími hodinami"},
	{"423", "Kruh Ochrany", "Velký kruh kolem tebe, způsobující poškození při kontaktu každou sekundu#Šance na odražení nepřátelských projektilů"},
	{"424", "Pytel na Hlavu", "Pickupy mají 33% šanci, že budou nahrazeny pytlíkem#Vytvoří pytlík"},
	{"425", "Noční Světlo", "Vytváří před tebou kužel světla, který zpomaluje nepřátele a projektily uvnitř něj#Odstraňuje Prokletí Temnoty pro aktuální patro"},
	{"426", "Posedlý Fanoušek", "Sleduje tvůj přesný pohyb s 3 sekundovým zpožděním#Uděluje 30 kontaktního poškození za sekundu"},
	{"427", "Mine Crafťák", "Vytvoří tlačitelný TNT barel#Pokud jej použiješ podruhé ve stejné místnosti, zatímco tam je poslední TNT barel, tak ten starší na dálku exploduje"},
	{"428", "Pyžamo", "{{SoulHeart}} +4 Duševní Srdce#Plně obnoví tvoje červená srdce"},
	{"429", "Keeperova Hlava", "{{Coin}} Nepřátelé mají 5% šanci vytvořit minci při zasažení tvojí slzou"},
	{"430", "Táta Moucha", "Sleduje tvůj přesný pohyb s 1 sekundovým zpožděním#Střílí slzy na nepřátele poblíž, jeho slzy působí poškození rovnající se tvému poškození"},
	{"431", "Multidimenzionální Dítě", "Sleduje tvůj přesný pohyb s 2 sekundovým zpožděním#Slzy, které jím projdou, se rozdělí a získají zvýšení rychlosti"},
	{"432", "Třpytivé Bomby", "{{Bomb}} +5 Bomb#Bomby mají 25% šanci vytvořit náhodný pickup a 15% šanci okouzlit nepřátele, když explodují"},
	{"433", "Můj Stín", "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa#Červ uděluje 5 poškození za sekundu"},
	{"434", "Sklenice Much", "Pokaždé, když zabiješ nepřítele, bude do nádoby přidána modrá muška#Max. 20 much#Použití předmětu uvolní všechny mouchy"},
	{"435", "Maličký Loki", "Vystřelí 4 slzy do kříže#Uděluje 3.5 poškození za slzu"},
	{"436", "Mléko!", "{{Tears}} Po utrpení poškození získáš Více Slz pro zbytek místnosti"},
	{"437", "D7", "Obnovuje všechny nepřátele v místnosti#Umožňuje ti nahromadit odměny za pročištěné místnosti#!!! Pokud se použije v boji proti Greedovi, může místnost přehodit na Obchod"},
	{"438", "Dudlík", "{{SoulHeart}} +1 Duševní Srdce#↑ {{Tears}} +0.75 Více Slz#↑ Velmi zmenší Izáka a snižuje velikost jeho hitboxu"},
	{"439", "Mámina Krabička", "{{Trinket}} Vytvoří náhodný trinket#↑ {{Luck}} +1 Štěstí při držení předmětu#Při držení předmětu zdvojnásobí účinek trinketů"},
	{"440", "Ledvinový Kámen", "Náhodně při střelbě přestaneš střílet a uvolníš salvu slz a ledvinový kámen#↓ -0.2 Snížení Rychlosti#↓ -17 Menší Dostřel#↑ +2 Výška Slz"},
	{"441", "Mega Výstřel", "Vystřelí obrovský Mega Satanský laser na 15 sekund#Laser přetrvává mezi místnostmi a patry"},
	{"442", "Koruna Temného Prince", "!!! Zatímco máš přesně 1 plné Červené Srdce:#↑ +1.5 {{Range}} Větší Dostřel#↑ {{Tears}} +0.75 Více Slz#↑ +0.2 {{Shotspeed}} Větší Rychlost Střel#↑ +1 Výška Slz#Nefunguje s postavami bez Červených Srdcí"}, -- Dark Princes Crown (apostrophe added to the name in Repentance)
	{"443", "Jablko!", "Náhodně vystřelíš žiletku, která způsobí 400% poškození#↑ {{Tears}} +0.3 Více Slz"},
	{"444", "Tužka", "Každých 15 vystřelených slz vystřelíte shluk slz#Každá slza ve shluku způsobí dvojnásobné poškození"},
	{"445", "Psí Zub", "↑ {{Damage}} +0.3 Větší Poškození#↑ {{Speed}} +0.1 Zvýšení Rychlosti#{{SecretRoom}} Vlk zavyje pokud stoupíš do místnosti, která je vedle Tajné/Super Tajné Místnosti#{{LadderRoom}} Při vstupu do místnosti s padacími dvířky vedoucí do průlezu pod kamenem se ozve štěkání"},
	{"446", "Mrtvý Zub", "Při střelbě získáš zelenou auru, která otráví všechny nepřátele v ní#Jed působí tvoje poškození"},
	{"447", "Loudavá Fazole", "Při střelbě bez pauzy se každých 7.5 sekund vytvoří smradlavý oblak#Oblak způsobí 3.5 poškození pětkrát za sekundu#Oblak setrvává 15 sekund#Střelbou s ním lze pohybovat"},
	{"448", "Střípek Skla", "Při poškození:#{{Heart}} 25% šance na vytvoření Červeného Srdce#{{Collectible214}} 10% šance na získání ↑ +5 Větší Dostřel a zanecháš stopu krvavé kaluže pro aktuální místnost"},
	{"449", "Kovový Plát", "{{SoulHeart}} +1 Duševní Srdce#{{Confusion}} Nepřátelské střely mají 25% šanci, že se odrazí jako matoucí slzy"},
	{"450", "Greedovo Oko", "Každých 20 slz vystřelíš mincovou slzu, která promění nepřátele ve zlato#To stojí 1 minci#Zasažení nepřátelé po smrti vytvoří minci"},
	{"451", "Tarotový Ubrus", "{{Card}} Vytvoří náhodnou kartu nebo runu při sebrání#{{Card}} Zdvojnásobí účinek jakékoli použité karty"},
	{"452", "Křečové Žíly", "Při utrpení poškození vystřelíš 10 slz v kruhu kolem sebe#Slzy způsobí 125% tvého poškození"},
	{"453", "Otevřená Zlomenina", "Kostní slzy#Slzy se při zasažení čehokoli roztříští na 1-3 menší kostní úlomky#↑ +1.5 Větší Dostřel#↑ +1 Výška Slz"},
	{"454", "Polydaktylie", "Můžeš nosit dvě karty, runy nebo pilulky#Při sebrání vytvoří kartu, pilulku nebo runu"},
	{"455", "Tátova Ztracená Mince", "↑ {{Range}} +1.5 Větší Dostřel#↑ +1 Výška Slz#Vytvoří šťastnou minci"},
	{"456", "Plesnivý Chléb", "↑ {{Heart}} +1 Zvýšení Zdraví"},
	{"457", "Kuželová Hlava", "{{SoulHeart}} +1 Duševní Srdce#20% šance na ignorování poškození"},
	{"458", "Pupík", "{{Trinket}} Vytvoří náhodný trinket při sebrání#{{Trinket}} Udělí 1 místo pro trinket navíc"},
	{"459", "Sinusová Infekce", "20% šance vystřelit přilepující se jedovaté slzy#Uděluje tvoje poškození každou sekundu#Drží se na nepříteli 60 sekund"},
	{"460", "Glaukom", "{{Confusion}} 5% šance na vystřelení matoucí slzy#Trochu zatemní obrazovku"},
	{"461", "Parazitoid", "15% šance na vystřelení kokonu s vejci#{{Slow}} Při zásahu se objeví zpomalující kaluž#Po zásahu vytvoří modrého pavouka nebo mouchu"},
	{"462", "Oko Belialovo", "↑ {{Range}} +1.5 Větší Dostřel#↑ +1 Výška Slz#Poskytuje průrazné slzy#Po zasažení prvního nepřítele dále slza působí dvojnásobné poškození a získá naváděcí efekt"},
	{"463", "Kyselina Sírová", "↑ {{Damage}} +0.3 Větší Poškození#Slzy mají šanci zničit kameny a otevřít dveře"},
	{"464", "Symbol Rovnováhy", "{{SoulHeart}} +2 Duševní Srdce#Šampioni častěji vytvářejí pickupy po jejich smrti"},
	{"465", "Analogová Páčka", "↑ {{Tears}} +0.3 Více Slz#Umožňuje ti střílet slzy diagonálně střelbou ve dvou směrech"},
	{"466", "Nákaza", "{{Poison}} První zabitý nepřítel v místnosti exploduje a otráví všechny okolní nepřátele"},
	{"467", "Prst!", "{{Damage}} Uděluje konstantních 10 % tvého poškození nepřátelům ve směru, na který prst ukazuje"},
	{"468", "Stínovač", "Sleduje tvůj přesný pohyb s 1 sekundovým zpožděním#Uděluje 30 kontaktního poškození za sekundu#Poté, co způsobí 666 poškození, je pohlcen Izákem, čímž se zvýší jeho kontaktní poškození."},
	{"469", "Deprese", "Zanechává po sobě stopu kaluže#Kaluž uděluje 6 poškození za sekundu#Nepřátelé, kteří se dotknou mraku, mohou vytvořit Posvátný Světelný paprsek"},
	{"470", "Hushy", "Poskakuje po místnosti#Způsobuje kontaktní poškození#Při střelbě se přestane pohybovat#Když se zastaví, může blokovat projektily"},
	{"471", "Maličký Monstro", "{{Chargeable}} Nabíjí své slzy a střílí ve stylu brokovnice {{Collectible229}}Monstrových Plic#Uděluje 3.5 poškození za slzu"},
	{"472", "Královské Dítě", "Ostatní spojenci ho následují#Přestane se pohybovat, když střílíš#Když přestaneš střílet, teleportují se zpět k tobě"},
	{"473", "Velký Tlouštík", "Spojenec, který se velmi pomalu vystřelí dopředu#Uděluje 40.5 kontaktního poškození za sekundu"},
	{"474", "Mandle", "Blokuje nepřátelské projektily"},
	{"475", "Plán C", "Způsobí 9,999,999 poškození všem nepřátelům a tebe zabije o 3 sekundy později"},
	{"476", "D1", "Duplikuje 1 náhodný pickup v aktuální místnosti"},
	{"477", "Prázdnota", "!!! Při použití zkonzumuje všechny předměty v místnosti#Aktivní předmět: Jeho efekt bude přidán k efektu Prázdnoty (Složení efektů)#↑ Pasivní předmět: Malé vylepšení náhodné statistiky"},
	{"478", "Pauza", "Zmrazí všechny nepřátele v místnosti, dokud nezačneš znovu střílet#Kontakt se zmrzlým nepřítelem ti ublíží#Nepřátelé se po 30 sekundách rozmrazí"},
	{"479", "Tavící Pec", "{{Trinket}} Spotřebuje tvůj trinket a předá ti jeho efekt natrvalo#Objevuje se více trinketů"},
	{"480", "Kompost", "Převádí pickupy na modré mouchy nebo pavouky#Zdvojnásobuje tvoje současné modré mouchy/pavouky#Vytvoří 1 modrou mušku nebo pavouka, pokud žádného nemáš"},
	{"481", "Data Těžič", "Při použití ↑/↓ malé vylepšení náhodné statistiky#Slzy mají náhodný efekt pro aktuální místnost#Posere všechny textury"},
	{"482", "TV Ovladač", "Promění tě v jinou postavu#Odstraní poslední předmět, který jsi sebral"},
	{"483", "Máma Mega!", "Ovlivňuje celé patro#Všechny objekty explodují#Uděluje 200 poškození všem nepřátelům#Otevírá dveře do Boss Rush, Hush a všech Tajných Místností"},
	{"484", "Počkat Co?", "Po použití odstrčí nepřátele a vytvoří vlnu kamení#Dokáže otevřít místnosti a rozbít kameny"},
	{"485", "Pokřivená Mince", "50% šance na zdvojnásobení všech předmětů, pickupy a truhel v místnosti#50% šance na odstranění předmětů/pickupů/truhly v místnosti a vytvoření 1 mince"},
	{"486", "Tupá Žiletka", "Zraní tě, aniž by ti udělila poškození#Může spustit určité efekty"},
	{"487", "Škrabka na Brambory", "Odebere jedno místo s Červeným Srdcem a dá ti ↑ {{Damage}} +0.2 poškození a {{Collectible73}} Kostku Masa#↑ {{Range}} +5 Dostřel a zanecháš po sobě kaluž krve pro aktuální místnost"},
	{"488", "Metronom", "Udělí ti efekt náhodného předmětu pro aktuální místnost"},
	{"489", "D Nekonečno", "Náhodný efekt hracích kostek při každém použití"},
	{"490", "Edenova Duše", "Vytvoří 2 náhodné předměty v závislosti na aktuální skupině předmětů v místnosti"},
	{"491", "LSD Dítě", "{{Pill}} Každé 3 místnosti vytvoří náhodnou pilulku#{{Poison}} Použití pilulky otráví všechny nepřátele v místnosti"},
	{"492", "HEJ POSLOUCHEJ!", "↑ {{Luck}} +1 Zvýšení Štěstí#Zvýrazňuje umístění {{SecretRoom}} Tajných Místností, zbarvených kamenů a padacích dvířek vedoucí do průlezu"},
	{"493", "Adrenalin", "Za každé prázdné místo na Srdce:#↑ +0.2 Větší Poškození"},
	{"494", "Jákobův Žebřík", "Slzy při zásahu způsobí 1-2 jiskry elektřiny#Jiskry způsobí polovinu tvého poškození"},
	{"495", "Paprička Duchů", "Šance vystřelit červený plamen, který blokuje nepřátelské výstřely a působí kontaktní poškození#Plamen zůstane, dokud pětkrát nezpůsobí poškození nebo nezablokuje střelu"},
	{"496", "Eutanázie", "3,33% šance na vystřelení jehly#{{Luck}} 100% šance při 15 Štěstí#Jehly okamžitě zabijí normální nepřátele a roztříští je do 10 slz#Jehly způsobí 3x poškození Bossům"},
	{"497", "Kamuflážní Spodní Prádlo", "Zmate všechny nepřátele a maskuje tě při vstupu do místnosti, dokud nezačneš střílet"},
	{"498", "Dualita", "{{AngelDevilChance}} Vytvoří obě dveře do Ďábelské a Andělské Místnosti#Při vstupu do prvních dveří zmizí ty druhé"},
	{"499", "Eucharistie", "{{AngelChance}} 100% šance na Andělskou Místnost"},
	{"500", "Pytel Pytlů", "Vytvoří pytlík každých 5-6 místností"},
	{"501", "Greedův Jícen", "Za každých 25 mincí ti přidá 1 místo pro Srdce#{{Player14}} Keeper získá další místo pro Mincové Srdce"},
	{"502", "Velký Jebák", "Při střelbě občas vystřelíš bílou slzu s bílou kaluží, která způsobí dvojnásobné poškození#Při utrpení poškození vystřelíš bílou slzu"},
	{"503", "Malý Roh", "5% šance vystřelit slzu, která okamžitě zabijí nepřátele#Při kontaktu s nepřáteli způsobíš 3.5 poškození"},
	{"504", "Hnědý Nuget", "Vytvoří mouchu, která stojí na místě a střílí na nepřátele#Každý výstřel způsobí 2 poškození"},
	{"505", "Poké Go", "Možnost vytvoření očarovaného nepřítele při vstupu do nepřátelské místnosti"},
	{"506", "Kudlou Do Zad", "Pokud slzy zasáhnou nepřítele do zad, způsobí jim dvojnásobné poškození a také krvácení, které každých 5 sekund způsobí 10% poškození z maximálního zdraví nepřítele."},
	{"507", "Ostré Brčko", "{{Damage}} Způsobí tvoje poškození + 10 % maximálního zdraví nepřítele#Ovlivňuje všechny nepřátele v místnosti#{{HalfHeart}} Šance vytvoření půlky srdcí, když způsobí poškození#{{HalfSoulHeart}} Pokud nemáš Červené Srdce, může místo toho vytvořit poloviny Duševních Srdcí"},
	{"508", "Maminčin Holicí Strojek", "Orbitální žiletka, která způsobuje krvácení, které způsobí 10% poškození maximálního zdraví nepřítele každých 5 sekund#Uděluje 300% poškození při kontaktu za sekundu#Neblokuje střely"},
	{"509", "Krví Podlité Oko", "Orbitální oko, které vystřelí slzu každé 2 sekundy v náhodném směru#Uděluje 3.5 poškození za slzu#Uděluje 30 kontaktního poškození za sekundu"},
	{"510", "Blouznivec", "Vytvoří přátelskou Delíriovskou verzi bosse pro aktuální místnost"},
	{"511", "Naštvaná Moucha", "Obíhá kolem náhodného nepřítele, dokud tento nepřítel nezemře#Uděluje 30 kontaktního poškození za sekundu ostatním nepřátelům"},
	{"512", "Černá Díra", "Vrhatelná černá díra, která všechno nasává#Uděluje 0.4 poškození každý tik#Zničí okolní kameny#Vydrží 6 sekund#Tebe sice také přitahuje, ale tah je mnohem slabší"},
	{"513", "Klaun Bozo", "↑ +0.1 Větší Poškození#+1 Duševní Srdce#Náhodná šance na okouzlení/zastrašení nepřítele#Náhodná šance na vytvoření duhového hovínka při utrpení poškození"},
	{"514", "Rozbitý Modem", "Způsobuje, že se náhodní nepřátelé 'lagují' v náhodných intervalech, což způsobí jejich krátké zamrznutí#Efekt platí i pro nepřátelské střely a pickupy#25% šance na zdvojnásobení odměn z místnosti"},
	{"515", "Tajemný Dárek", "Vytvoří náhodný předmět ze skupiny předmětů aktuální místnosti#Šance místo toho vytvořit Hroudu Uhlí nebo Hovno"},
	{"516", "Rozstřikovač", "Vytvoří rozstřikovač, který se otáčí v kruhu a rozstřikuje tvoje slzy na všechny strany"},
	{"517", "Rychlé Bomby", "{{Bomb}} +7 Bomb#Umožňuje ti rychle umisťovat bomby"},
	{"518", "Kamarád v Bedně", "Spojenec, který vypadá jako náhodné dítě z coopu#Má náhodný efekt slz#Každé patro se náhodně mění"},
	{"519", "Maličký Delirium", "Spojenec, který se každých 10 sekund promění v dalšího náhodného spojence"},
	{"520", "Startovací Kabely", "+1 nabití na tvůj aktivní předmět za každých 15 zabitých nepřátel"},
	{"521", "Kupón", "Při použití udělá jeden náhodný předmět v {{Shop}}Obchodě nebo {{DevilRoom}}Ďábelské Místnosti zcela zdarma#{{Shop}} Během držení zaručuje, že jeden předmět v obchodu bude ve slevě"},
	{"522", "Telekineze", "Nepřátelské střely blízko tebe jsou drženy na místě po dobu 3 sekund#Poté jsou od tebe odhozeny#Po 3 sekundách se předmět znovu nabije"},
	{"523", "Stěhovací Krabice", "Při použití uloží všechny pickupy z aktuální místnosti#Opětovným použitím je vrátíš zpět na podlahu#To ti umožní přesouvat věci mezi místnostmi"},
	{"524", "Technologie Nula", "Slzy budou spojeny elektřinou#Poškození elektřinou se rovná tvému poškození"},
	{"525", "Lepra", "Utrpené poškození vytvoří orbitální kouli blokující střely#Maximálně 3 koule současně#Koule jsou zničeny, pokud utrpí příliš velké poškození"},
	{"526", "7 Pečetí", "Vytvoří malého jezdce Apokalypsy, který vytváří jeho speciální kobylky#Jezdec se mění každých 10 sekund"},
	{"527", "Pan JÁ!", "!!! Spojenec, který za tebe může dělat úkoly:#Otevírání dveří a truhel, přinášení předmětů, kradení z obchodu/od ďábla, bojuje s nepřáteli, exploduje a aktivuje nášlapné desky"},
	{"528", "Andělský Hranol", "Orbitální hranol#Slzy, které na něj dopadají, se rozdělí na 4"},
	{"529", "Plup!", "Slzy se budou chovat jako kulečníkové koule"},
	{"530", "Seznam Smrti", "Uděluje ti odměnu, pokud zabiješ nepřátele v pořadí, ve kterém jsou označeni"},
	{"531", "Hemolakrie", "Slzy létají obloukem#Slzy při dopadu propukají v další menší slzy#↓ Méně Slz#↑ 31% Větší Poškození"},
	{"532", "Lachryfagie", "Slzy při cestování zpomalují#Po zastavení explodují v 8 menších slz#Slzy mohou být vstřeleny do jiných slz, čímž se zvětší"},
	{"533", "Trisagion", "Střílíš průrazné záblesky světla#{{Damage}} Udělují 33% poškození, ale mohou zasáhnout nepřátele několikrát"},
	{"534", "Školní Aktovka", "Umožňuje ti držet 2 aktivní předměty#Přepínej mezi nimi stisknutím tlačítka Drop (tlačítko 'drž' za \"The Forgotten\")"},
	{"535", "Přikrývka", "{{SoulHeart}} +1 Duševní Srdce#{{HealingRed}} Léčí 1 Červené Srdce#{{Collectible313}} Uděluje štít při vstupu do místnosti s Bossem"},
	{"536", "Obětní Oltář", "Obětuje 1-2 spojence, aby vytvořil Ďábelský předmět#Promění tvé modré pavouky/mouchy na mince"},
	{"537", "Maličký Plivač", "{{Pill}} Vytvoří náhodnou pilulku#Spojenec, který střílí řadu kaluží#Typ kaluže se změní pokaždé, když použiješ pilulku"},
	{"538", "Kuličky", "{{Trinket}} Vytvoří 3 náhodné trinkety#{{Collectible479}} Utrpení poškození může spotřebovat tvůj trinket a přidá ti jeho efekt natrvalo"},
	{"539", "Tajemné Vejce", "Když dostaneš zásah, vytvoří okouzleného nepřítele#Vytvoří silnější přátele, čím více místností je vyčištěno bez poškození"},
	{"540", "Plochý Kámen", "Slzy se odrážejí od podlahy#Slzy způsobují poškození při každém odrazu"},
	{"541", "Kostní Dřeň", "{{EmptyBoneHeart}} +1 Kostěné Srdce#{{Heart}} Vytvoří 3 Červené Srdce"},
	{"542", "Vyklouzlé Žebro", "Orbitální kost#Odráží střely"},
	{"543", "Posvátná Země", "Vytvoří bílé hovínko, když utrpíš poškození#Pokud stojíš v auře:#↑ {{Tears}} -50% Zpoždění Slz#Šance blokovat poškození"},
	{"544", "Špičaté Žebro", "Ostré žebro, které levituje před Izákem#Uděluje tvoje poškození šestkrát za sekundu"},
	{"545", "Kniha Mrtvých", "Za každého zabitého nepřítele v aktuální místnosti vytvoří orbitální kost nebo okouzleného kostlivce"},
	{"546", "Tátův Prsten", "Poskytuje auru, která zmrazí nepřátele na místě"},
	{"547", "Rozvodové Papíry", "{{EmptyBoneHeart}} +1 Kostěné Srdce#↑ {{Tears}} +0.7 Více Slz#{{Trinket21}} Vytvoří trinket Tajemný Papír"},
	{"548", "Čelistní Kost", "Spojenec jakožto bumerang#Uděluje 7 kontaktního poškození#Umí přinést pickupy"},
	{"549", "Křehké Kosti", "{{EmptyBoneHeart}} Nahradí všechna tvoje místa s Červenými Srdci za 6 Kostěných Srdcí#Při ztrátě Kostěného Srdce:#Vystřelí 8 kostních slz ve všech směrech#↑ {{Tears}} +0.5 Více Slz natrvalo"},
	{"550", "Rozbitá Lopata", "Mámina Noha na tebe bude neustále šlapat#Použití zastaví Máminu Nohu pro aktuální pokoj#!!! (Zkus s tímto předmětem porazit Boss Rush!)"},
	{"551", "Rozbitá Lopata", "Druhá část rozbité lopaty#!!! Použij lopatu na kopec hlíny v \"Dark Room\""},
	{"552", "Mámina Lopata", "{{LadderRoom}} Vytvoří padací dvířka do dalšího patra#!!! Použij lopatu na kopec hlíny v \"Dark Room\"#!!! Odemyká něco hustého"},
}

---------- Trinkets ----------
EID.descriptions[languageCode].trinkets={
	{"1", "Spolknutá Mince", "{{Coin}} Vytvoří 1 minci, když dostaneš zásah"},
	{"2", "Zkamenělé Hovínko", "50% šance na odměnu z ničení hoven"},
	{"3", "AAA Baterie", "-1 potřebné nabití pro aktivní předměty"},
	{"4", "Rozbitý Ovladač", "Náhodně tě teleportuje při použití aktivního předmětu"},
	{"5", "Fialové Srdce", "2x šance na nepřátelské šampiony"},
	{"6", "Rozbitý Magnet", "Magnet na mince"},
	{"7", "Korálek z Růžence", "{{AngelChance}} 50% větší šance na Andělskou Místnost#{{Collectible33}} Větší šance k nalezení Bible v {{Shop}}Obchodech a {{Library}} Knihovnách"},
	{"8", "Kazeta", "{{Collectible93}} 5% šance na efekt Gamekidu při zásahu"},
	{"9", "Pulzující Červ", "Pulzující slzy#Ovlivňuje hitbox slz"},
	{"10", "Vrtivý Červ", "Slzy se pohybují vlnivě#↑ {{Tears}} +0.3 Více Slz"},
	{"11", "Kroužící Červ", "Slzy se vysokou rychlostí pohybují ve spirálách"},
	{"12", "Plochý Červ", "50% širší slzy#Slzy více odrážejí nepřátele"},
	{"13", "Obchodní Kredit", "{{Shop}} Jeden předmět z obchodu je zdarma"},
	{"14", "Mozol", "Zabraňuje poškození z kaluží a bodáků"},
	{"15", "Zdárný Kámen", "{{Coin}} Ničením kamenů vytváří mince"},
	{"16", "Mámin Nehet", "Mámina Noha dupe na nepřátele každých 60 sekund"},
	{"17", "Černá Rtěnka", "{{BlackHeart}} +1% šance na Černá Srdce"}, -- base chance is 0.5%
	{"18", "Trakt z Bible", "{{EternalHeart}} +3% šance na Srdce Věčnosti"}, -- base chance is 1.667%
	{"19", "Kancelářská Svorka", "Odemyká truhly bez použití klíčů"},
	{"20", "Opičí Tlapka", "{{BlackHeart}} Když jsi na polovině srdce, vytvoří 1 Černé Srdce#!!! 3 použití"},
	{"21", "Tajemný Papír", "Náhodně imituje: #{{Collectible327}}Polaroid#{{Collectible328}} Negativ#{{Trinket48}} Chybějící Kapitolu nebo#{{Trinket23}} Pohřešující Plakát"},
	{"22", "Démonův Ocas", "{{Heart}} Snižuje šanci na vytvoření srdcí na 20%#{{Key}} Větší šance na klíče#{{BlackHeart}} Spadlé Srdce se mění na Černé Srdce"},
	{"23", "Pohřešující Plakát", "{{Player10}} Znovuzrodíš se jako \"The Lost\", když zemřeš v {{SacrificeRoom}}Obětovní Místnosti#Pokud je odemčený, znovuzrodíš se za něj i mimo Obětovní Místnosti"},
	{"24", "Prdelní Mince", "{{Coin}} O 20% větší šance na minci z ničení hoven#Když sebereš minci, uprdneš si#Prd pouze odráží nepřátele"},
	{"25", "Tajemná Sladkost", "Uprdneš si nebo vytvoříš hovno každých 30 sekund"},
	{"26", "Hákový Červ", "Slzy se pohybují v hranatých vzorech#↑ {{Range}} +10 Větší Dostřel"},
	{"27", "Bičový Červ", "↑ {{Shotspeed}} +0.5 Větší Rychlost Střel"},
	{"28", "Rozbitý Ankh", "{{Player4}} 22% šance na znovuzrození jako \"Blue Baby\""},
	{"29", "Rybí Hlava", "Při zásahu vytvoří 1 modrou mouchu"},
	{"30", "Zrudlé Oko", "{{Poison}} 10% šance na vystřelení jedovatých slz"},
	{"31", "Špendlík", "10% šance na vystřelení spektrálních slz"},
	{"32", "Klobouček Svobody", "25% šance na náhodný efekt houby za místnost#Může odhalit speciální místnosti na minimapě"},
	{"33", "Pupeční Šňůra", "Když utrpíš poškození až k polovině Červeného Srdce, dostaneš: #{{Collectible100}} Malého Stevena pro konkrétní místnost"},
	{"34", "Dětské Srdce", "{{Heart}} 10% šance na náhodné srdce jakožto odměnu za vyčištění místnosti#Šance na bonusové srdce z truhel, zbarvených kamenů a rozbitých strojů"},
	{"35", "Zakřivený Roh", "↑ {{Damage}} +2 Větší Poškození"},
	{"36", "Zrezivělý Klíč", "{{Key}} 10% šance na klíč jakožto odměnu za vyčištění místnosti#{{Key}} Šance na bonusový klíč z truhel, zbarvených kamenů a rozbitých strojů"},
	{"37", "Kozí Kopyto", "↑ {{Speed}} +0.15 Zvýšení Rychlosti"},
	{"38", "Mámina Perla", "+10% šance na: #{{SoulHeart}} Duševní#{{BlackHeart}} Černé nebo#{{EmptyBoneHeart}} Kostěné Srdce"}, -- base chance is 10%
	{"39", "Rakovina", "↑ {{Tears}} -2 Zpoždění Slz"},
	{"40", "Červená Záplata", "{{Damage}} 20% šance na získání +1.8 Větší Poškození, když dostaneš zásah#{{Luck}} 100% šance při 8 Štěstí#Efekt trvá pro aktuální místnost"},
	{"41", "Zápalka", "{{Bomb}} 10% šance na bombu jakožto odměnu za vyčištění místnosti#{{Bomb}} Šance na bonusovou bombu z truhel, zbarvených kamenů a rozbitých strojů#!!! Odstraňuje {{Trinket53}} Klíště"},
	{"42", "Palec Štěstí", "↑ {{Luck}} +1 Zvýšení Štěstí#+8% šance na odměnu z vyčištěné místnosti#Extra pickupy z truhel, zbarvených kamenů a rozbitých strojů"},
	{"43", "Prokletá Lebka", "Když utrpíš poškození až k polovině Červeného Srdce nebo méně, teleportuje tě do náhodné místnosti"},
	{"44", "Bezpečnostní Uzávěr", "{{Pill}} 10% šance na pilulku jakožto odměnu za vyčištění místnosti#{{Pill}} Šance na bonusovou pilulku z truhel, zbarvených kamenů a rozbitých strojů"},
	{"45", "Pikové Eso", "{{Card}} 10% šance na kartu jakožto odměnu za vyčištění místnosti#{{Card}} Šance na bonusovou kartu z truhel, zbarvených kamenů a rozbitých strojů"},
	{"46", "Izákova Vidlička", "{{HalfHeart}} 10% šance na vyléčení poloviny srdce po vyčištění místnosti"},
	{"47", "", "<předmět neexistuje>"},
	{"48", "Chybějící Kapitola", "Když dostaneš zásah, máš 5% šanci na udělení 40 poškození všem nepřátelům v místnosti"},
	{"49", "Krvavá Mince", "{{HalfHeart}} 50% šance na vytvoření půlky srdce, když vezmeš minci"},
	{"50", "Spálená Mince", "{Bomb}} 50% šance na vytvoření bomby, když vezmeš minci"},
	{"51", "Plochá Mince", "{{Key}} 50% šance na vytvoření klíče, když vezmeš minci"},
	{"52", "Padělaná Mince", "{{Coin}} 50% šance na získání +1 mince, když vezmeš minci"},
	{"53", "Klíště", "{{BossRoom}} -15% bossova života#Vyléčí 1 Červené Srdce při vstupu do {{BossRoom}}Boss Místnosti#!!! Pokud klíště vezmeš, nemůžeš jej pak sundat#Ale lze jej odstranit pouze se {{Trinket41}} zápalkou nebo spolknutím pomocí pilulky"},
	{"54", "Izákova Hlava", "Spojenec s průraznými slzami#Uděluje 3.5 poškození za slzu"},
	{"55", "Maggyina Víra", "{{EternalHeart}} Získáš 1 Srdce Věčnosti na začátku každého patra"},
	{"56", "Jidášův Jazyk", "{{DevilRoom}} Snižuje ceny Dohod s Ďáblem ze 2 srdcí na 1 srdce"},
	{"57", "Duše ???", "Společník, který skáče po místnosti#Střílí stejným směrem jako hráč#Uděluje 3.5 poškození za slzu"},
	{"58", "Samsonova Kadeř", "{{Damage}} 1/15 šance na +0.5 Větší Poškození při zabití nepřítele#{{Luck}} 100% šance při 10 Štěstí#Efekt trvá pro aktuální místnost"},
	{"59", "Kainovo Oko", "25% šance odhalit ikony na mapě na začátku nového patra#100% šance při 3 Štěstí"},
	{"60", "Evina Ptačí Noha", "{{Collectible117}} 5% šance na vytvoření Mrtvého Ptáka při zabití nepřítele#{{Luck}} 100% šance při 8 Štěstí"},
	{"61", "Levá Ruka", "Přemění všechny truhly na červené truhly"},
	{"62", "Lesklý Kamínek", "Kameny skrývající průlez a zbarvené kameny budou blikat každých 10 sekund"},
	{"63", "Bezpečnostní Nůžky", "Přemění všechny trollí bomby na obyčejné bomby"},
	{"64", "Duhový Červ", "Náhodný červí efekt každé 3 sekundy"},
	{"65", "Tasemnice", "↑ {{Range}} Zdvojnásobí tvůj dostřel#-50% Výška Slz"},
	{"66", "Líný Červ", "↓ {{Shotspeed}} -0.4 Menší Rychlost Střel#↑ {{Range}} +4 Větší Dostřel#↑ +2 Výška Slz"},
	{"67", "Prasklá Kostka", "50% na použití:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 nebo #{{Collectible166}} D20 při utrpení zásahu"},
	{"68", "Super Magnet", "Magnet na pickupy a nepřátele"},
	{"69", "Vybledlý Polaroid", "Náhodně maskuje hráče#Mate nepřátele"},
	{"70", "Veš", "Šance na vytvoření 1 modrého pavouka, když jsi v nepřátelské místnosti"},
	{"71", "Bobův Měchýř", "Bomby po sobě zanechávají kaluž"},
	{"72", "Baterka do Hodinek", "6.66% šance na baterku jakožto odměnu za vyčištění místnosti#+10% šance, aby se z pickupů stala baterka#5% šance k přidání 1 nabití k aktivnímu předmětu po vyčištění místnosti"},
	{"73", "Rozbuška", "10% šance na vytvoření bomby jakožto pickup po explodování bomby"},
	{"74", "Detektor Kovů", "0.5% šance na odhalení {{LadderRoom}} průlezu po zničení kamene"},
	{"75", "Chyba 404", "Efekt náhodného trinketu každou místnost"},
	{"76", "Pokerový Žeton", "Truhly mají 50/50 šanci k vytvoření extra pickupů NEBO zlé mouchy"},
	{"77", "Puchýř", "Slzy více odrážejí nepřátele"},
	{"78", "Vteřinová Ručička", "2x delší statusové efekty na nepřátelích"},
	{"79", "Nekonečný Bezejmenný", "25% šance, že když použiješ pilulku/kartu, tak se vytvoří kopie této karty/pilulky"},
	{"80", "Černé Pírko", "↑ {{Damage}} +0.2 Větší Poškození za každý držený předmět zla"},
	{"81", "Slepý Hněv", "Nesmrtelnost trvá po zásahu 2x déle"},
	{"82", "Zlatá Podkova", "{{TreasureRoom}} +15% šance, aby Pokladnice obsahovala dva předměty v budoucích patrech#Můžeš si vybrat pouze jeden"},
	{"83", "Klíč od Obchodu", "{{Shop}} Otevře obchody zadarmo"},
	{"84", "Greedovo Žebro", "Greed a Super Greed se nemohou objevit v {{Shop}} Obchodech nebo {{SecretRoom}} Tajných Místnostech#O 5% více mincí a méně srdcí jakožto odměny z vyčištěných místností"},
	{"85", "Karma", "{{DonationMachine}} Používaní Darovacích Strojů ti může:#{{Heart}} vyléčit 1 srdce#{{Coin}} dát ti 1 minci#{{Luck}} dát +1 Zvýšení Štěstí#{{Beggar}} nebo vytvořit žebráka"},
	{"86", "Malá Larva", "Zničení hovna vytvoří 1 modrou mouchu"},
	{"87", "Maminčin Medailon", "Vyléčí půlku srdce když používáš klíče#Přeměňuje půlky srdcí na celé srdce"},
	{"88", "NE!", "Zabraňuje objevení aktivních předmětů"},
	{"89", "Dětské Vodítko", "Spojenci zůstávají blíže k tobě"},
	{"90", "Hnědá Rozbuška", "Hovna explodují a udělí 100 poškození při zničení"},
	{"91", "Smolka", "33% na vytvoření Černých Hoven#5% šance na vytvoření Černého Srdce, když zničíte Černé Hovno"},
	{"92", "Nakřáplá Koruna", "↑ Zvýšení statistik z tvých předmětů je o 33% více efektivnější#↑ +0.2 Více Slz#↑ -1 Zpoždění Slz"},
	{"93", "Použitá Plenka", "15% šance za místnost, aby se všechny nepřátelské mouchy staly přátelské"},
	{"94", "Rybí Ocas", "Zdvojnásobí všechny vytvořené Modré Mouchy / Pavouky"},
	{"95", "Černý Zub", "3% šance na vystřelení jedovatých zubů"},
	{"96", "Červ Ouroboros", "Slzy se rychle pohybují ve spirále#Spektrální slzy#↑ {{Range}} +4 Větší Dostřel#↑ +2 Výška Slz"},
	{"97", "Mandle", "Dostaneš společníka blokujícího střely po tom co utrpíš 12-20x poškození#Až +2 spojenci"},
	{"98", "Nosní Goblin (Sopel)", "10% šance vystřelit naváděné přilepující se jedovaté slzy#Uděluje tvoje poškození každou sekundu#Drží se na nepříteli 60 sekund"},
	{"99", "Super Míček", "10% šance na vystřelení skákající slzy"},
	{"100", "Živá Žárovka", "!!! Při držení plně nabitého aktivního předmětu:#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Speed}} +0.25 Zvýšení Rychlosti#↑ {{Range}} +0.75 Větší Dostřel#↑ {{Tears}} +0.2 Více Slz#↑ {{Shotspeed}} +0.1 Větší Rychlost Střel#↑ {{Luck}} +1 Zvýšení Štěstí"},
	{"101", "Ztlumená Žárovka", "!!! Při držení úplně vybitého aktivního předmětu:#↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.5 Zvýšení Rychlosti#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Tears}} +0.4 Více Slz#↑ {{Shotspeed}} +0.3 Větší Rychlost Střel	#↑ {{Luck}} +2 Zvýšení Štěstí"},
	{"102", "Roztržená Karta", "{{SecretRoom}} +1 extra Tajná Místnost za patro pokud trinket držíš"},
	{"103", "Rovnost!", "!!! Když počet mincí, klíčů a bomb je roven:#Promění pickupy na jejich dvojité verze"},
	{"104", "Kost Přání", "2% šance na vytvoření předmětu, když dostaneš zásah#Trinket bude poté zničen"},
	{"105", "Oběd v Sáčku", "{{Collectible22}} 2% šance na vytvoření oběda, když dostaneš zásah#Trinket bude poté zničen"},
	{"106", "Ztracený Korek", "Zvětší dosah jakékoli kaluže, kterou vytvoříš"},
	{"107", "Vraní Srdce", "Utrpené poškození bude ignorovat Duševní/Černá Srdce, což způsobí, že tvoje Červená Srdce budou vyčerpána jako první"},
	{"108", "Vlašský Ořech", "Po zásahu 1-9 výbuchy vytvoří klíč, minci, srdce a náhodný trinket#Není vyžadováno dostávat poškození#Trinket bude poté zničen"},
	{"109", "Lepící Páska", "Způsobí, že se každý spojenec přestane pohybovat"},
	{"110", "Stříbrný Dolar", "{{Shop}} Obchody se nyní objevují ve Womb"},
	{"111", "Krvavá Koruna", "{{TreasureRoom}} Pokladnice se nyní objevují ve Womb"},
	{"112", "Zaplať za Výhru", "{{RestockMachine}} Doplňovací boxy se vždy objeví v {{TreasureRoom}} Pokladnicích"},
	{"113", "Kobylka Války", "Vytvoří explodující útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození + poškození exploze"},
	{"114", "Kobylka Moru", "Vytvoří jedovatou útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození"},
	{"115", "Kobylka Hladomoru", "Vytvoří zpomalující útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození"},
	{"116", "Kobylka Smrti", "Vytvoří útočící kobylku, když vejdeš do nepřátelské místnosti#Kobylka uděluje čtyřnásobek tvého poškození"},
	{"117", "Kobylka Podmanění", "Vytvoří 1-4 útočící kobylky, když vejdeš do nepřátelské místnosti#Kobylka uděluje dvojnásobek tvého poškození"},
	{"118", "Netopýří Křídlo", "5% šance k získání létání po zabití nepřítele#Přetrvává pro aktuální místnost"},
	{"119", "Kmenová Buňka", "Vyléčí půl srdce při cestě do dalšího patra"},
	{"120", "Sponka do Vlasů", "Plně dobije tvůj aktivní předmět na začátku souboje s bossem"},
	{"121", "Dřevěný Kříž", "{{Collectible313}} Chrání tě před prvním poškozením, které utrpíš za každé patro"},
	{"122", "Máslo!", "Použitím aktivního předmětu jej upustíš, poté ho můžeš opět sebrat#Při utrpení poškození máš 2% šanci, že upustíš jeden z tvých pasivních předmětů"},
	{"123", "Filigránové Peříčko", "Způsobí, že tě Andělští bossové po jejich zabití namísto Částí Klíčů odmění normálními Andělskými předměty"},
	{"124", "Zarážka za Dveře", "Poslední dveře, které jsi použil, zůstanou otevřené"},
	{"125", "Prodlužovačka", "Propojuje tvé spojence paprsky elektřiny#Způsobí 6 poškození na paprsek"},
	{"126", "Zkažená Mince", "Vytvoří modrou mouchu, když sebereš minci"},
	{"127", "Ohnutá Dětská Lžička", "Uděluje tvým spojencům naváděné střely"},
	{"128", "Kost Prstu", "{{EmptyBoneHeart}} 2% šance na získání Kostěného Srdce když utrpíš poškození"},
}

---------- Cards ----------
EID.descriptions[languageCode].cards={
	{"1", "0 - Blázen", "Teleportuje tě zpět na start"},
	{"2", "I - Mág", "Naváděné slzy pro aktuální místnost"},
	{"3", "II - Velekněžka", "Mámina Noha dupne na nepřítele!"},
	{"4", "III - Císařovna", "↑ {{Damage}} +2.35 Větší Poškození#↑ {{Speed}} +0.3  Zvýšení Rychlosti pro aktuální místnost"},
	{"5", "IV - Císař", "{{BossRoom}} Teleportuje tě do Boss Místnosti"},
	{"6", "V - Velekněz", "{{SoulHeart}} Vytvoří 2 Duševní Srdce"},
	{"7", "VI - Zamilovaní", "{{Heart}} Vytvoří 2 Červené Srdce"},
	{"8", "VII - Vůz", "Nesmrtelnost + kontaktní poškození na 6 sekund"},
	{"9", "VIII - Spravedlnost", "Vytvoří 1 bombu, 1 klíč, 1 minci a 1 srdce"},
	{"10", "IX - Poustevník", "{{Shop}} Teleportuje tě do obchodu"},
	{"11", "X - Kolo Štěstí", "Vytvoří {{Slotmachine}} Hrací Automat nebo {{FortuneTeller}} Věštecký Stroj"},
	{"12", "XI - Síla", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Damage}} +50% Větší Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ +0.5 Výška Slz#↑ {{Speed}} +0.3 Zvýšení Rychlosti pro aktuální místnost"},
	{"13", "XII - Viselec", "Uděluje ti létání pro aktuální místnost"},
	{"14", "XIII - Smrt", "Způsobí 40 poškození všem nepřátelům v místnosti"},
	{"15", "XIV - Umírněnost", "{{DonationMachine}} Vytvoří Stroj na Darování Krve#{{GreedMode}} Vytvoří Ďábelského Žebráka v Greed Modu"},
	{"16", "XV - Ďábel", "↑ {{Damage}} +2 Větší Poškození pro aktuální místnost"},
	{"17", "XVI - Věž", "Vytvoří 6 trollích bomb"},
	{"18", "XVII - Hvězda", "{{TreasureRoom}} Teleportuje tě do Pokladnice"},
	{"19", "XVIII - Měsíc", "{{SecretRoom}} Teleportuje tě do Tajné Místnosti"},
	{"20", "XIX - Slunce", "Způsobí 100 poškození všem nepřátelům v místnosti#Plné zdraví#Odhalí celou mapu"},
	{"21", "XX - Soud", "Vytvoří Žebráka nebo Ďábelského Žebráka"},
	{"22", "XXI - Svět", "Odhalí celou mapu a zobrazí všechny typy místností"},
	{"23", "Křížová 2", "{{Bomb}} Duplikuje tvoje bomby"},
	{"24", "Kárová 2", "{{Coin}} Duplikuje tvoje peníze"},
	{"25", "Piková 2", "{{Key}} Duplikuje tvoje klíče"},
	{"26", "Srdcová 2", "{{Heart}} Duplikuje tvoje červené srdce#Má pouze efekt léčení"},
	{"27", "Křížové Eso", "{{Bomb}} Přemění všechny pickupy na bomby"},
	{"28", "Kárové Eso", "{{Coin}} Přemění všechny pickupy na mince"},
	{"29", "Pikové Eso", "{{Key}} Přemění všechny pickupy na klíče"},
	{"30", "Srdcové Eso", "{{Heart}} Přemění všechny pickupy na srdce"},
	{"31", "Žolík", "{{AngelDevilChance}} Teleportuje tě do Ďábelské nebo Andělské Místnosti"},
	{"32", "Hagalaz", "Zničí všechny kameny v místnosti"},
	{"33", "Jera", "Duplikuje všechny pickupy v místnosti"},
	{"34", "Ehwaz", "Vytvoří padací dvířka#8% šance na {{LadderRoom}} průlez se žebříkem"},
	{"35", "Dagaz", "{{SoulHeart}} +1 Duševní Srdce#{{CurseCursed}} Odstraňuje prokletí"},
	{"36", "Ansuz", "Kompletní mapování pro aktuální patro"},
	{"37", "Perthro", "Zamíchá všechny předměty na podstavcích"},
	{"38", "Berkano", "Vytvoří 3 modré pavouky a 3 modré mouchy"},
	{"39", "Algiz", "Nesmrtelnost na 30 sekund"},
	{"40", "Slepá Runa", "Efekt náhodné runy#25% šance na vytvoření další Slepé Runy"},
	{"41", "Černá Runa", "Způsobí 40 poškození všem nepřátelům#Náhodné zvýšení statistiky za každý předmět na podstavci v místnosti#Zničí všechny podstavce v místnosti"},
	{"42", "Chaos Karta", "Vrhací instantně zabíjející karta"},
	{"43", "Kreditka", "Odebere cenu ze všech položek v aktuálním {{Shop}} Obchodě nebo {{DevilRoom}} Ďábelské Dohodě, takže bude vše zdarma"},
	{"44", "Pravidla", "Ukáže \"pomocné\" tipy"},
	{"45", "Karta Proti Lidskosti", "Naplní celou místnost hovnama"},
	{"46", "Sebevražedný Král", "Okamžitě tě zabije a vytvoří 10 různých předmětů"},
	{"47", "Karta Dostaň se z Věžení", "Otevře všechny dveře v aktuální místnosti"},
	{"48", "? Karta", "Zdarma použije tvůj aktivní předmět"},
	{"49", "Úlomek Kostky", "Zamíchá předměty a pickupy v aktuální místnosti"},
	{"50", "Nouzový Kontakt", "Dvě Máminy Ruce sestoupí a popadnou nepřítele"},
	{"51", "Svatá Karta", "{{Collectible313}} Dostaneš efekt Svatého Pláště na jednu místnost#(Jednou zabrání poškození)#25% šance na vytvoření další Svaté Karty"},
	{"52", "Obrovský Růst", "↑ {{Damage}} +7 Větší Poškození#↑ {{Range}} +30 Větší Dostřel#Ničíš kameny, když přes ně chodíš#Zvětšení#Efekt trvá pro aktuální místnost"},
	{"53", "Starověké Odvolání", "{{Card}} Při použití vytvoří 3 náhodné karty"},
	{"54", "Érová Chůze", "{{Slow}} Zpomalí nepřátele#↑ {{Speed}} +0.5 Zvýšení Rychlosti#↓ {{Shotspeed}} -1 Menší Rychlost Střel#Efekt trvá pro aktuální místnost"},
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
	[9] = {"Vytvoří {{ColorShinyPurple}}2{{CR}} náhodná {{UnknownHeart}} srdce, {{Coin}} mince, {{Bomb}} bomby a {{Key}} klíče"}, -- VIII - Justice
	[11] = {" a ", " 2 ", "Hrací Automat", "{{CR}}Hrací Automaty", "Věštecký Stroj", "{{CR}}Věštecké Stroje"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", " Machine", " {{CR}}Machines", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Žebrák ", "{{CR}}Žebráci ", "Ďábelský žebrák", "{{CR}}Ďábelské žebráky"}, -- XX - Judgement
	[23] = {"Duplikuje", "Zčtyřnásobuje"}, -- 2 of Clubs
	[24] = {"Duplikuje", "Zčtyřnásobuje"}, -- 2 of Diamonds
	[25] = {"Duplikuje", "Zčtyřnásobuje"}, -- 2 of Spades
	[26] = {"Duplikuje", "Zčtyřnásobuje"}, -- 2 of Hearts
	[33] = {"Duplikuje", "Zčtyřnásobuje"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Přetočí dvakrát", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Spustí 2 runové efekty a pokusí se dvakrát duplikovat", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Použije se dvakrát", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}


---------- Pills ----------
EID.descriptions[languageCode].unidentifiedPill = "Neznámá Pilulka"

EID.descriptions[languageCode].pills={
	{"0", "Otravný Prd", "Vytvoří Mrak plynu"},
	{"1", "Špatnej Trip", "Způsobí ti 1 poškození"},
	{"2", "Koule z Oceli", "{{SoulHeart}} +2 Duševní Srdce"},
	{"3", "Bomby Jsou Klíčem", "Vymění počet bomb za počet klíčů"},
	{"4", "Výbušný Průjem", "Vytvoří 5 trollích bomb na tvoji pozici"},
	{"5", "Plné zdraví", "Plné zdraví"},
	{"6", "Snížení Zdraví", "↓ {{Heart}} Snížení Zdraví"},
	{"7", "Zvýšení Zdraví", "↑ {{EmptyHeart}} Zvýšení Zdraví"},
	{"8", "Našel Jsem Pilulky", "Žádný efekt"},
	{"9", "Puberta", "Snězení 3 pilulek ti poskytne transformaci na Dospělého (+1 Červené Srdce)"},
	{"10", "Pěkná Moucha", "Přidá 1 orbitální mouchu"},
	{"11", "Menší Dostřel", "↓ {{Range}} -2 Menší Dostřel"},
	{"12", "Větší Dostřel", "↑ {{Range}} +2.5 Větší Dostřel"},
	{"13", "Snížení Rychlosti", "↓ {{Speed}} -0.12 Snížení Rychlosti"},
	{"14", "Zvýšení Rychlosti", "↑ {{Speed}} +0.15 Zvýšení Rychlosti"},
	{"15", "Méně Slz", "↓ {{Tears}} -0.28 Méně Slz"},
	{"16", "Více Slz", "↑ {{Tears}} +0.35 Více Slz"},
	{"17", "Snížení Štěstí", "↓ {{Luck}} -1 Snížení Štěstí"},
	{"18", "Zvýšení Štěstí", "↑ {{Luck}} +1 Zvýšení Štěstí"},
	{"19", "Telepilulky", "Teleportuje tě do náhodné místnosti#{{ErrorRoom}} Malá šance na teleport do JSEM ERROR místnosti"},
	{"20", "48 Hodinová Energie!", "Plně nabije tvůj aktivní předmět#Vytvoří 1-2 baterie"},
	{"21", "Hematemeze", "Vyčerpá všechny tvoje červené srdce až na 1 celé#Vytvoří 1-4 Červené Srdce"},
	{"22", "Paralýza", "Nemůžeš se pohnout na 2 sekundy"},
	{"23", "Vidím Navždy!", "{{SecretRoom}} Otevírá vchody do tajných místností v aktuálním patře"},
	{"24", "Feromony", "{{Charm}} Okouzlí všechny nepřátele v místnosti"},
	{"25", "Amnézie", "{{CurseLost}} Skryje mapu aktuálního patra"},
	{"26", "Citronová Párty", "Na zemi vytvoří velkou limonádovou louži, která poškozuje nepřátele"},
	{"27", "Jsi Čaroděj Harry!", "Střílíš diagonálně po dobu 30 sekund"},
	{"28", "Proti-Bol!", "Utrpíš pouze poloviční poškození pro aktuální místnost"},
	{"29", "Závislák!", "Utrpíš plné poškození pro aktuální místnost"},
	{"30", "Re-Laxuj", "Při chůzi vytváříš hovna po dobu 2 sekund"},
	{"31", "???", "{{CurseMaze}} Efekt Prokletí Bludiště pro aktuální patro"},
	{"32", "Jedna Tě Zvětší", "Zvětšení#Nemá vliv na tvůj hitbox"},
	{"33", "Jedna Tě Zmenší", "Zmenšení#Tvůj hitbox je menší"},
	{"34", "Zamoření!", "Vytvoří 1 modrého pavouka za každé hovno v místnosti"},
	{"35", "Zamoření?", "Vytvoří 1 modrého pavouka za každého nepřítele v místnosti#Vytvoří 1-3 modré pavouky, když se v místnosti žádný nepřítel nenachází"},
	{"36", "Power Pilulka!", "Krátká nesmrtelnost#Uděluješ kontaktní poškození"},
	{"37", "Retro Vize", "Rozpixeluje obrazovku po dobu 30 sekund"},
	{"38", "Přátelé až do Konce!", "Vytvoří 3 modré mouchy"},
	{"39", "X-Lax", "Vytvoří za tebou klouzavou hovnovou kaluž"},
	{"40", "Něco je špatně...", "{{Slow}} Vytvoří zpomalující kaluž"},
	{"41", "Jsem ospalý...", "{{Slow}} Zpomalí všechny nepřátele v místnosti"},
	{"42", "Jsem vzrušený!!!", "Zrychlí všechny nepřátele v místnosti"},
	{"43", "Polk!", "{{Trinket}} Spotřebuje aktuálně držený trinket a získáš jeho účinek natrvalo"},
	{"44", "Blink!", "{{Collectible149}} Vystřelí jednu Ipekak slzu"},
	{"45", "Jako bych kráčel po slunečním svitu!", "Krátká nesmrtelnost"},
	{"46", "Brk!", "Vybrkneš posledně použitou pilulku"},
}

---------- Sacrifice Room ----------
EID.descriptions[languageCode].sacrificeHeader = "[Další Odměna za Obětování]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% šance na 1 minci#{{Bomb}} 100% šance na 1 Bombu, pokud jsi zabil Bosse v Basementu 1 pod 1 minutu"},
	{"2", "", "{{Coin}} 50% šance na 1 minci#{{Bomb}} 100% šance na 1 Bombu, pokud jsi zabil Bosse v Basementu 1 pod 1 minutu"},
	{"3", "", "{{AngelChance}} 67% šance na zvýšenou šanci na Andělskou Místnost"},
	{"4", "", "{{Chest}} 50% šance na 1 náhodnou truhlu"},
	{"5", "", "{{Coin}} 33% šance na 3 mince#{{AngelChance}} 67% šance na zvýšenou šanci na Andělskou Místnost"},
	{"6", "", "{{AngelRoom}} 33% šance na teleportování do Andělské Místnosti#{{DevilRoom}} Teleportuje tě do Ďábelské Místnosti pokud dveře do ní již na tomto patře by vytvořeny#{{Chest}} 67% šance na 1 náhodnou truhlu"},
	{"7", "", "{{AngelRoom}} 33% šance na 1 náhodný předmět z Andělské Místnosti#{{SoulHeart}}  67% šance na 1 Duševní Srdce"},
	{"8", "", "100% šance na 7 trollích bomb"},
	{"9", "", "100% šance na zrození \"Uriela\""},
	{"10", "", "{{SoulHeart}} 50% šance na 7 Duševních Srdcí#{{Coin}} 50% šance na 30 mincí"},
	{"11", "", "100% šance na zrození \"Gabriela\""},
	{"12", "", "50% šance na teleportování do \"Dark Room\""},
}

---------- Dice Room ----------
EID.descriptions[languageCode].diceHeader = "[Efekty Kostek]"

EID.descriptions[languageCode].dice={
	{"1", "", "Zamíchá všechny tvoje pasivní a aktivní předměty na náhodný předmět ze skupiny předmětů, ze které byl získán"},
	{"2", "", "Zamíchá všechny pickupy v místnosti"},
	{"3", "", "Zamíchá všechny pickupy a trinkety na celém patře#Neovlivňuje {{DevilRoom}} Ďábelskou nebo {{AngelRoom}} Andělskou Místnost"},
	{"4", "", "Zamíchá všechny předměty na podstavcích na patře#Neovlivňuje {{DevilRoom}} Ďábelskou nebo {{AngelRoom}} Andělskou Místnost"},
	{"5", "", "Zamíchá a restartuje aktuální patro"},
	{"6", "", "Zamíchá všechny tvoje předměty, pickupy, trinkety a předměty na podstavcích, prostě všechno na patře"}
}


---------- Modifikátory ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Žádný efekt",
	[35] = {40, 80}, -- The Necronomicon
	[37] = { " a ", " 2 ", "bomba/y", "{{CR}}bomby" }, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "srdce", "{{CR}}srdce"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "karta", "{{CR}}karty"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {" a ", " 2 ", "pickup", "{{CR}}pickupy"}, -- The Book of Sin
	[102] = {1, 2, "pilulka", "{{CR}}pilulky"}, -- Mom's Bottle of Pills
	[105] = "Přetočí dvakrát, čímž rychleji vyčerpá předměty ze seznamu předmětů", -- The D6
	[107] = "Vytvoří dvě těla", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" a ", " 2 ", "Spojenec", "{{CR}}spojenci"}, -- Monster Manual
	[124] = {" a ", " 2 ", "efekt", "{{CR}}efekt"}, -- Dead Sea Scrolls
	[136] = {" a ", " 2 ", "Izák", "{{CR}}Izáky"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, " Srdce", " {{CR}}Srdce"}, -- Prayer Card (should this just say +1 health...)
	[158] = {" a ", " 2 ", " Srdce", " {{CR}}Srdce", "runa", "{{CR}}runy", "karta", "{{CR}}karty"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Přetočí dvakrát, pomůže s transformacemi ale rychleji vyčerpá předměty ze seznamu předmětů", -- D100
	[284] = "Přetočí dvakrát, pomůže s transformacemi ale rychleji vyčerpá předměty ze seznamu předmětů", -- D4
	[286] = "Spustí se nadvakrát", -- Blank Card
	[287] = {"one", "two"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Zvýšený knockback", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Spustí se nadvakrát", -- Placebo
	[349] = "Vyvolá šanci dvakrát", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Duplikuje", "Triplikuje"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" a ", " 2 ", "barel", "{{CR}}barel"}, -- Mine Crafter
	[439] = {" a ", " 2 ", "trinket", "{{CR}}trinket"}, -- Mom's Box
	[476] = {" a ", " 2 ", "pickup", "{{CR}}pickup"}, -- D1
	[477] = "Aktivuje každou absorbovanou aktivní položku dvakrát", -- Void
	[480] = {"Duplikuje", "Čtyřnásobuje"}, -- Compost
	[481] = "Dvě zvýšení a snížení statistik", -- Dataminer
	[482] = "Dvakrát změní tvoji postavu a odstraní dva předměty", -- Clicker
	[485] = "25% šance na zčtyřnásobení, 25% šance na zdvojnásobení a odstranění originálů, 50% šance na odstranění", -- Crooked Penny
	[486] = {"efekty", "{{CR}}efekty {{BlinkYellowGreen}}dvakrát"}, -- Dull Razor
	[488] = "Aktivuje se dvakrát, ale zůstane pouze druhý efekt", -- Metronome
	[489] = {" a ", " 2 ", "efekt", "{{CR}}efekty"}, -- D Infinity
	[504] = {" a ", " 2 ", "střílí", "{{CR}}střílny"}, -- Brown Nugget
	[507] = "Spustí se nadvakrát", -- Sharp Straw
	[510] = {" a ", " 2 ", "verze", "{{CR}}verze"}, -- Delirious
	[516] = {" a ", " 2 ", "rozstřikuje", "{{CR}}Rozstřikovače"}, -- Sprinkler
	[521] = {"jeden náhodný předmět", "{{CR}}dva náhodné předměty"}, -- Coupon
	[523] = "Vymění obsah krabice za pickupy v místnosti", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Zastaví dupání ve dvou místnostech (nebo vlny v Boss Rushi)", -- Broken Shovel
}


-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Žádný účinek od {1}",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Dvojnásobné poškození", -- Cube of Meat
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
	["5.100.187"] = "Dvojnásobné poškození", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "Dvojnásobné poškození", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "Vytvoří dalšího modrého pavouka", -- Juicy Sack
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
	["5.100.319"] = {"Izákovo poškození", "dvojnásobné {{CR}}Izákovo poškození"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Dvojnásobné poškození", -- Incubus
	["5.100.361"] = "Dvojnásobné poškození", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Vyšší šance na vytvoření baterií", -- Charged Baby
	["5.100.384"] = {"5-90", "10-180"}, -- Lil Gurdy
	["5.100.385"] = "Dvojnásobné poškození", -- Bumbo
	["5.100.388"] = "Častěji vytváří truhly", -- Key Bum
	["5.100.389"] = {"5-6", "4-5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "Vyšší šance na vytvoření baterií", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "Poškozující aura se zvětší, ale samotné poškození aury ne", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"Izákovo poškození", "dvojnásobné {{CR}}Izákovo poškození"}, -- Papa Fly
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
	["5.100.518"] = "Dvojnásobné poškození", -- Buddy in a Box
	["5.100.519"] = "Dvojnásobné poškození", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "Kontaktní poškození jezdce je dvojnásobné", -- 7 Seals
	["5.100.537"] = "Zvyšuje velikost kaluže, ale ne její poškození", -- Lil Spewer
	["5.100.539"] = "Vytvoří šampionskou variantu nepřítele", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Kontaktní poškození kostního orbitálu je dvojnásobné", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone
	
	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Poškození inkubusů je dvojnásobné", -- Incubus (for BFFS pedestal)
}


---------- Transformations ----------
EID.descriptions[languageCode].transformations = {
	"",				    -- 0 = none
	"Guppy",			-- 1
	"Houbák",			-- 2
	"Beelzebub",		-- 3
	"Spojený",			-- 4
	"Feťák",			-- 5
	"Ano Mami?",		-- 6
	"A Sakra",			-- 7
	"Bob",				-- 8
	"Leviatan",			-- 9
	"Serafim",			-- 10
	"Super Žebrák",		-- 11
	"Knihomol",			-- 12
	"Pavoučátko",		-- 13
	"Dospělý",			-- 14
	"Dupal"			    -- 15
}


---------- MISC ----------
-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- replace {plural_X} placeholders inside the text with fitting textparts
	text = EID:ReplaceVariableStr(text, "plural_e", amount > 1 and "e" or "")
	text = EID:ReplaceVariableStr(text, "plural_ay", amount > 1 and "y" or "a")
	return text
end

EID.descriptions[languageCode].VoidText = "Pokud absorbuješ, získáš:"
EID.descriptions[languageCode].VoidNames = {"Rychlost", "Slzy", "Poškození", "Dostřel", "Rychlost Střel", "Štěstí"}

EID.descriptions[languageCode].CollectionPageInfo = "Tento předmět je potřeba sebrat, aby se ukázal ve tvojí sbírce!"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} JEDNO POUŽITÍ {{Warning}}"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Poškození", "↑ {{Tears}} -4 Zpoždění slz", "↑ {{Speed}} +0.5 Rychlost", "↑ {{Range}} +7.5 Rozsah#↑ +1 Výška slz"}

EID.descriptions[languageCode].CrookedPennyHeads = "Panna"
EID.descriptions[languageCode].CrookedPennyTails = "Orel"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} aktuálně držené předměty (+{2} poškození)"

EID.descriptions[languageCode].LuckModifier = "{1}% šance při {2} štěstí"

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Demo Jméno Objektu",
	DemoObjectTransformation = "Demo Transformace",
	DemoObjectText = "Tento text je v češtině#Velmi skvělý a dlouhý popis pro simulaci zalomení řádků způsobených šířkou textového pole EID!#{{Collectible4}} Toto je také skvělý řádek#{{Heart}} Tento řádek tě má rád#{{AngelDevilChance}} Tento řádek může být tvůj anděl nebo ďábel#{{Damage}} +1 Zvýšení statistiky"
}

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"↑ {{Heart}} +{1} Zdraví", "{{SoulHeart}} +{1} Duševní Srdce",
	"↑ {{EmptyHeart}} +{1} Místo na srdce", "{{SoulHeart}} +{1} Duševní Srdce",
	"↓ {{EmptyHeart}} {1} Zdraví", "↓ {{SoulHeart}} {1} Duševní Srdce"},
	
	["Red to Black"] = {"↑ {{Heart}} +{1} Zdraví", "{{BlackHeart}} +{1} Černé Srdce",
	"↑ {{EmptyHeart}} +{1} Místo na srdce", "{{BlackHeart}} +{1} Černé Srdce",
	"↓ {{EmptyHeart}} {1} Zdraví", "↓ {{BlackHeart}} {1} Černé Srdce"},
	
	["Red to Bone"] = {"↑ {{Heart}} +{1} Zdraví", "{{BoneHeart}} +{1} Kostěné Srdce",
	"↑ {{EmptyHeart}} +{1} Místo na srdce", "{{EmptyBoneHeart}} +{1} Prázdné kostěné srdce", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} Zdraví", "↓ {{EmptyBoneHeart}} {1} Kostěné Srdce"}, -- Red HP to Bone Hearts
	
	["Red to Coin"] = {"↑ {{Heart}} +{1} Zdraví", "{{CoinHeart}} +{1} Mincové Srdce",
	"↑ {{EmptyHeart}} +{1} Místo na srdce", "{{EmptyCoinHeart}} +{1} Prázdné Mincové Srdce",
	"{{HealingRed}} Vyléčí {1} srdce", "{{HealingCoin}} Vyléčí {1} minci", "{{HealingRed}}  Vyléčí půlku srdce", "{{HealingCoin}} Vyléčí 1 minci", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Zdraví", "↓ {{EmptyCoinHeart}} {1} Mincové Srdce"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {"↑ {{Heart}} +{1} Zdraví", "", "↑ {{EmptyHeart}} +{1} Místo na srdce", "", "↓ {{EmptyHeart}} {1} Zdraví", ""}, -- Red HP to None (The Lost)
}


EID.descriptions[languageCode].RoomTypeNames = { "Normální místnost", "Obchod", "JSEM ERROR místnost", "Pokladnice", "Boss Místnost", "Miniboss Místnost", "Tajná místnost", "Super tajná místnost", "Herna", "Místnost prokletí", "Vyzyvatelská Místnost", "Knihovna", "Obětní místnost", "Ďábelská místnost", "Andělská místnost", "Místnost prolézacího prostoru", "Boss Rush místnost", "Izákův pokoj", "Pustá místnost", "Truhlová místnost", "Kostková místnost", "Černý trh", "Východ místnosti", "Planetárium", "Vstup pro teleport", "Výstup pro teleport", "Padací dvířka alternativní cesty", "Místnost s modrým klíčem", "Ultra tajná místnost",
-- Not technically room types but still potentially useful to have localized
[666] = "Ďábelská/Andělská místnost", [1024] = "Červená místnost", [1025] = "Speciální červená místnost" }

-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "Nic",

	["5.10"] = "{{Heart}} Srdce",
	["5.10.1"] = "{{Heart}} Srdce", ["5.10.2"] = "{{HalfHeart}} Půlka Srdce", ["5.10.3"] = "{{SoulHeart}} Duševní Srdce", ["5.10.4"] = "{{EternalHeart}} Srdce Věčnosti", ["5.10.5"] = "{{Heart}} Dvojité Srdce", ["5.10.6"] = "{{BlackHeart}} Černé Srdce", ["5.10.7"] = "{{GoldHeart}} Zlaté Srdce", ["5.10.8"] = "{{HalfSoulHeart}} Půlka Duševního Srdce", ["5.10.9"] = "{{Heart}} Vystrašené Srdce", ["5.10.10"] = "{{BlendedHeart}} Zamíchané Srdce", ["5.10.11"] = "{{EmptyBoneHeart}} Kostěné Srdce", ["5.10.12"] = "{{RottenHeart}} Shnilé Srdce",

	["5.20"] = "{{Coin}} Mince",
	["5.20.1"] = "{{Crafting8}} Mince", ["5.20.2"] = "{{Crafting9}} Niklák (pěti-mince)", ["5.20.3"] = "{{Crafting10}} Deseti-mince", ["5.20.4"] = "{{Crafting8}} Dvojitá Mince", ["5.20.5"] = "{{Crafting11}} Mince Štěstí", ["5.20.6"] = "{{Crafting9}} Lepivý Niklák", ["5.20.7"] = "{{Crafting26}} Zlatá Mince",

	["5.30"] = "{{Key}} Klíč",
	["5.30.1"] = "{{Crafting12}} Klíč", ["5.30.2"] = "{{Crafting13}} Zlatý Klíč", ["5.30.3"] = "{{Crafting12}} Key Ring", ["5.30.4"] = "{{Crafting14}} Charged Key",

	["5.40"] = "{{Bomb}} Bomb",
	["5.40.1"] = "{{Crafting15}} Bomb", ["5.40.2"] = "{{Crafting15}} Double Bomb", ["5.40.3"] = "{{Crafting15}} Troll Bomb", ["5.40.4"] = "{{Crafting16}} Golden Bomb", ["5.40.5"] = "{{Crafting15}} Megatroll Bomb", ["5.40.7"] = "{{Crafting17}} Giga Bomb",

	["5.42"] = "{{Crafting29}} Hovnový Nuget", ["5.42.1"] = "{{Crafting29}} Velký Hovnový Nuget",

	["5.90"] = "{{Battery}} Baterie",
	["5.90.0"] = "{{Crafting19}} Malá Baterie", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Malá Baterie", ["5.90.2"] = "{{Crafting18}} Mikro Baterie", ["5.90.3"] = "{{Crafting20}} Mega Baterie", ["5.90.4"] = "{{Crafting28}} Zlatá Baterie",

	["5.50"] = "{{Chest}} Truhla", ["5.51"] = "{{BombChest}} Bombová Truhla", ["5.52"] = "{{SpikedChest}} Ostnatá Truhla", ["5.53"] = "{{EternalChest}} Věčná Truhla", ["5.54"] = "{{MimicChest}} Mimik Truhla", ["5.55"] = "{{OldChest}} Stará Truhla", ["5.56"] = "{{WoodenChest}} Dřevěnná Truhla", ["5.57"] = "{{MegaChest}} Mega Truhla", ["5.58"] = "{{HauntedChest}} Strašidelná Truhla", ["5.60"] = "{{GoldenChest}} Zlatá Truhla", ["5.360"] = "{{RedChest}} Červená Truhla",

	["5.69"] = "{{GrabBag}} Pytlík", ["5.69.1"] = "{{GrabBag}} Pytlík", ["5.69.2"] = "{{BlackSack}} Černý Pytlík",

	["5.70"] = "{{Pill}} Pilulka",
	["5.300"] = "{{Card}} Karta",
	["5.301"] = "{{Rune}} Runa", -- not a real id
	["5.350"] = "{{Trinket}} Trinket",

}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Výsledek",
	InventoryEmpty = "(Hráč nemá žádné předměty)",
	CategoryNames = {
		Overview = "Přehled inventáře",
		Wisps = "Bludičky Lemegetonu",
		Special = "Speciální",
		Actives = "Držené aktivní předměty",
		Pockets = "Držené kapesní předměty",
		Trinkets = "Držené Trinkety",
		Passives = "Držené pasivní předměty",
		Character = "Informace o postavě",
	}
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Izák", ""},
	[1] = {"Magdaléna", ""},
	[2] = {"Kain", ""},
	[3] = {"Jidáš", ""},
	[4] = {"???", "Nemůže mít červené srdce#{{SoulHeart}} Zvýšení zdraví mu dává Duševní srdce"},
	[5] = {"Eva", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Létání#{{Collectible118}} Krátký dosah Brimstonu místo slz"},
	[8] = {"Lazarus", "Když zemřeš, vzkříšíš se jako Povstalý Lazarus s 1 místem pro červené srdce"},
	[9] = {"Eden", "Začneš s náhodnými statistikami a předměty při každém běhu"},
	[10] = {"The Lost", "Létání#Spektrální slzy#{{Warning}} Žádné životy#{{DevilRoom}} Jeden ďábelský předmět za místnost je zdarma"},
	[11] = {"Povstalý Lazarus", "Zvýšené staty a x1.2 multiplikátor poškození"},
	[12] = {"Temný Jidáš", "{{Damage}} x2 multiplikátor poškození#{{Player3}} Počítá se jako Jidáš pro dokončení v menu u výběru postav"},
	[13] = {"Lilith", "Nemůže střílet slzy#{{Collectible360}} Její Inkubus střílí místo ní"},
	[14] = {"Keeper", "{{CoinHeart}} Uzdravíš se sbíráním mincí#Maximum jsou 2 Mincové srdce#Jakékoliv srdcové pickupy jsou přeměněny na modré mušky"},
	[15] = {"Apollyón", ""},
	[16] = {"Zapomenutý", "Máš útok na blízko, který lze nabít a i házet#{{BoneHeart}} Může mít až 6 kostěných srdcí#{{Player17}} Zmáčkni {{ButtonRT}} aby ses přepnul na Duši#{{SoulHeart}} Duše může mít až 6 duševních/černých srdcí, má létání a spektrální slzy#Duše je připoutána v malém okruhu kolem Zapomenutého"},
	[17] = {"Zapomenutého Duše", "Máš útok na blízko, který lze nabít a i házet#{{BoneHeart}} Může mít až 6 kostěných srdcí#{{Player17}} Zmáčkni {{ButtonRT}} aby ses přepnul na Duši#{{SoulHeart}} Duše může mít až 6 duševních/černých srdcí, má létání a spektrální slzy#Duše je připoutána v malém okruhu kolem Zapomenutého"},
}

-- Conditional descriptions
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs

EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Je přepsán předmětem {1}",
	["Overrides"] = "Přepíše {1}",
	["Almost No Effect"] = "Malý až žádný efekt pro {1}",
	["No Effect"] = "Žádný efekt pro {1}",
	["No Effect Replace"] = {"Žádný efekt pro {1}"},
	["No Effect From"] = "Žádný účinek od {1}",
	["Can't Charge"] = "Nelze nabíjet {1}",
	["Can't Be Charged"] = "Nelze být nabíjen {1}",
	["Can't Be Duplicated"] = "Nelze být duplikován",
	["No Effect (Greed)"] = "{{GreedMode}} Žádný efekt v Greed Módu",
	["No Effect (Copies)"] = "Žádný další efekt z více kopií", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Žádný další vliv na spojence", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Rozdílný efekt pro {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} zemře při použití", -- for Razor Blade and such as The Lost
	
	
	------ GREED MODE ------
	["Room to Wave"] = {"místnost", "vlna/kolo/skupina", "místnost", "vlna/kolo/skupina"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Šampioni nevytvářejí pickupy v Greed Módu!", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} Vytvoří ďábelského žebráka"}, -- Temperance (Greed)
	["5.300.19"] = {"Teleportuje Izáka do první místnosti na patře"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Plné Zdraví#Způsobí 100 poškození všem nepřátelům"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Nespustí se jednou za vlnu/kolo, pouze jednou za místnost", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} Žádný štít na Boss Waves, pouze na Ultra Greed", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} Žádné nabití na Boss Waves, pouze na Ultra Greed", -- Hairpin (Greed)
	["5.100.246"] = {"{{SuperSecretRoom}} Odhalí umístění supertajné místnosti na mapě"}, -- Blue Map (Greed)
	["5.100.333"] = {"{{SuperSecretRoom}} Odhalí umístění supertajné místnosti na mapě"}, -- The Mind (Greed)
	["5.100.514"] = {"Způsobí, že se někteří nepřátelé a jejich střely krátce zastaví v náhodných intervalech"}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 33% šance na bonusové srdce z truhel, zbarvených kamenů a zničených strojů"}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 33% šance na bonusové klíče z truhel, zbarvených kamenů a zničených strojů"}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 33% šance na bonusové bomby z truhel, zbarvených kamenů a zničených strojů#{{Warning}} Removes {{Trinket53}} Tick"}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 33% šance na bonusové pilulky z truhel, zbarvených kamenů a zničených strojů"}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 33% šance na bonusové karty z truhel, zbarvených kamenů a zničených strojů"}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} +10% šance, že náhodné pickupy budou baterie#{{Battery}} 5% šance na přidání 1 nabití k drženému aktivnímu předmětu za dokončení vlny"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"Vytváří odměny podle patra:#Sklep: 2{{Bomb}} + 2{{Key}}#Jeskyně: Boss předmět + 2{{SoulHeart}}#Hlubiny: 20{{Coin}}#Lůno: 2 Boss předměty#Šeol: Ďábelský předmět + 1{{BlackHeart}}#Obchod/Ultra Greed: 1{{Coin}}"}, -- Pandora's Box
	
	
	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Umírání v {{SacrificeRoom}} Obětní místnosti při držení tohoto trinketu odemkne Ztraceného", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Odemkne {{Collectible523}} Stěhovací krabici", "Nic"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 Duševní srdce"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 Duševní srdce#{{BlackHeart}} +1 Černé srdce"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 Duševní srdce#{{BlackHeart}} +1 Černé srdce"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 Duševní srdce#{{BlackHeart}} +2 Černá srdce"}, -- for Black Heart chars
	
	
	["5.100.135 (PHD)"] = "Vytvoří 2-3 mince pokud máš {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Vytvoří 0-1 minci za {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1} prostě získáš ↑ {{Tears}} +0.4 Slzy při sebrání", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1} může získat další místa na mince", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} umře", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Izák vystřelí další 3 slzy#Žádné další snížení statistik", -- The Inner Eye
	["5.100.153 (Copies)"] = "Izák vystřelí další 4 slzy#Žádné další snížení statistik", -- Mutant Spider
	["5.100.245 (Copies)"] = "Izák vystřelí další 2 slzy", -- 20/20
	["5.100.358 (Copies)"] = "Izák vystřelí další 2 slzy blíže ke středu", -- The Wiz
	["5.100.64 (Copies)"] = "Když budeš tento předmět vlastnit podruhé, všechny položky v Obchodě budou zdarma", -- Steam Sale
	["5.100.118 (Copies)"] = "Izák vystřelí další paprsek", -- Brimstone
	["5.100.224 (Copies)"] = "Další kopie poskytují rychlost pouze -0,2", -- Kidney Stone
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Střílny Hnědého Nugetu se počítají jako spojenci",
	["Sacrificial Conception"] = "Spojenci udělené {1} mohou být obětovány a znovu se objeví",
	["Sacrificial Angels"] = "{1} vytvoří 2 černá srdce, pokud jsou obětováni",
	["Sacrificial Void"] = "Může být použit vícekrát, pokud je absorbován Prázdnotou",
	
	["5.100.116 (1 Room)"] = "1 dobití v místnosti se změní na 15sekundové dobití v nedokončené místnosti", -- 9 Volt
	["5.100.116 (Timed)"] = "Časované dobíjení začíná z poloviny", -- 9 Volt
	["9 Volt 1 Room"] = "15 sekund dobití v nedokončené místnosti", -- Actives + 9 Volt
	["9 Volt Timed"] = "Po použití začne nabíjení z poloviny", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Snižuje použití na půl srdce", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} nemůže zabránit smrti", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Nezabrání smrti tím {1}", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "x1.5 Násobitel poškození, když je aktivní efekt {1}", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Násobitel poškození", -- Book of Belial
	["5.300.16"] = "x1.5 Násobitel poškození", -- XV - The Devil
	
	["5.100.81"] = "Postavy, které nemohou mít červené srdce, se nastaví na 1 duševní/černé srdce", -- Dead Cat
	["5.100.316"] = "{1} odstraní efekt teleportace", -- Cursed Eye
	["5.100.260"] = "Odstraňuje teleportační efekt {1}", -- Black Candle
	["Void Single Use"] = "Jednorázové předměty jsou aktivovány pouze jednou", -- Single Use Actives + Void
	["? Card Single Use"] = "Jednorázové předměty po použití '? Karty' zmizí ", -- Single Use Actives + ? Card
	["5.300.48"] = "Teleport do JSEM ERROR místnosti#Prázdná Karta a '? Karta' budou zničeny", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Pomocí ? Karty s Prázdnou Kartou tě teleportuje do JSEM ERROR místnosti a zničí obě karty", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Předměty zdarma nebudou znovu naskladněny", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} +0.2 Poškození", -- Black Feather items
	
	["Bulb Multiple"] = "Kontroluje pouze primární aktivní předmět", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Aktivní s 0 max. nabitími spustí žárovku", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "S časovaným dobíjením v podstatě k ničemu", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Spustí se při 1 červeném srdci jako {1}", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Izák místo toho střílí dopředu a do stran", -- R U A Wizard + The Wiz
	["5.100.523"] = "Počítá se jako pasivní předmět do {1}", -- Moving Box + Void
	["Mongo Babies"] = "Může být kopírován {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "S {1} laser zcela nahradí tvoje slzy",
	["Brimstone Proptosis"] = "Paprsky způsobí další 2x poškození v dosahu prázdného bodu, které se zmenšuje se vzdáleností",
	["Brimstone Ipecac"] = "Při nabíjení jsou vystřelovány Ipekakové slzy#Poškození +40 se vztahuje na laser",
	["Proptosis Anti-Gravity"] = "Slzy neztrácejí poškození, dokud se nezačnou pohybovat",
	["Epic Fetus Soy Milk"] = "Doba zaměřovacího kříže není zkrácena, ale poškození střely je drasticky sníženo",
	["Eye of Belial Dr. Fetus"] = "Bomby proráží, ale nejsou naváděné ani nezpůsobí další poškození",
	["Epic Fetus Brimstone"] = "{1} má prioritu#Rakety vystřelí 10 paprsků",
	["Epic Fetus Mom's Knife"] = "{1} má prioritu#Rakety vystřelí 10 nožů",
	["Haemolacria Brimstone"] = "{1} má prioritu#Slzy se rozdělí na 4-7 paprsků",
	["Brimstone Mom's Knife"] = "{1} má prioritu#Podle výše nabití se vystřelí palba nožů",
	["Ludovico Ipecac"] = "Slza dostane +4 poškození, ale neexploduje ani neotráví",
	["Technology Ipecac"] = "Laser dostane +4 poškození a otráví cíle",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} x1.25 Multiplikátor slz",
	["Chocolate Milk Marked"] = "Izák automaticky nabíjí na základě vzdálenosti od zaměřovače",
	["Ghost Pepper Fart"] = "Prdění způsobí, že se za Izákem vyšlehne plamen",
	["Damage Multiplier Stack"] = "Násobitel poškození se nesčítá",
	["White Poop"] = "Místo toho vytvoří bílé hovínko",
	["White Poop Chance"] = "Šance na vytvoření bílého hovínka",
	["Golden Poop Chance"] = "Šance na vytvoření zlatého hovna",
	["5.100.483"] = "{{GoldenBomb}} Při držení zlaté bomby + Máma Mega, je spotřebována zlatá bomba a tudíž umožňuje další použití Mámy Mega",
	
	["5.300.5"] = {"{{BossRoom}} Teleportuje Izáka do náhodné Boss Místnosti"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Teleportuje Izáka do náhodné místnosti, pokud zde není Pokladnice", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Teleportuje Izáka do náhodné Pokladnice"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Teleportuje Izáka do první místnosti na patře"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Teleportuje Izáka do náhodné místnosti, pokud zde není žádný obchod", -- IX - The Hermit (Womb and below)
	
}
