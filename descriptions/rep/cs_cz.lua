---------------------------------------
----- Basic Czech descriptions -----
---------------------------------------

-- Last Update: 11.11.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning
local languageCode = "cs_cz"

local repCollectibles={
	[2] = {"2", "Vnitřní Oko", "Trojitý výstřel#↓ {{Tears}} -49% Méně Slz"},
	[5] = {"5", "Můj Odraz", "Dává slzám bumerangový efekt#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Range}} +60% Větší Dosah#↑ {{Shotspeed}} +0.6 Vyšší Rychlost Střel#↑"}, -- My Reflection
	[6] = {"6", "Číslo Jedna", "↑ {{Tears}} +1.5 Více Slz#↓ {{Range}} -1.5 Menší Dostřel#↓ {{Range}} -20% Menší Dosah"}, -- Number One
	[12] = {"12", "Kouzelná Houba", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Damage}} +50% Násobič Poškození#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Speed}} +0.3 Zvýšení Rychlosti#Zvětšení"}, -- Magic Mushroom
	[13] = {"13", "Virus", "{{Poison}} Jedovatý dotek#↑ {{Speed}} +0.2 Zvýšení Rychlosti"}, -- The Virus
	[14] = {"14", "Steroidový Vztek", "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ {{Range}} +1.5 Větší Dostřel"}, -- Roid Rage
	[18] = {"18", "Dolar", "{{Coin}} +100 mincí"}, -- A Dollar
	[22] = {"22", "Oběd", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Lunch
	[23] = {"23", "Večeře", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Dinner
	[24] = {"24", "Dezert", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Dessert
	[25] = {"25", "Snídaně", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Breakfast
	[26] = {"26", "Shnilé Maso", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Rotten Meat
	[29] = {"29", "Mámino Spodní Prádlo", "↑ {{Range}} +1.5 Větší Dostřel#Vytvoří 3-6 modrých mušek"}, -- Mom's Underwear
	[30] = {"30", "Máminy Podpatky", "↑ {{Range}} +1.5 Větší Dostřel#Při kontaktu, nepřátelé dostanou 12 poškození"}, -- Mom's Heels
	[31] = {"31", "Mámina Rtěnka", "↑ {{Range}} +2.25 Větší Dostřel#{{Heart}} Vytvoří 1 náhodné srdce"}, -- Mom's Lipstick
	[37] = {"37", "Pan Bum!", "Shodí pod hráče velkou bombu, která způsobí 185 poškození"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Shodí pod hráče velkou bombu#způsobí 185 poškození"}, -- Kamikaze!
	[41] = {"41", "Mámina Vložka", "{{Fear}} Po dobu 5 sekund se nepřátelé budou bát v aktuální místnosti"},
	[42] = {"42", "Bobova Shnilá Hlava", "{{Poison}} Vrhací jedovatá bomba#způsobí 185 + tvoje poškození#Vytvoří jedovatý oblak"}, -- Bob's Rotten Head
	[44] = {"44", "Teleport", "Teleportuje Izáka do náhodné místnosti kromě JSEM ERROR místnosti#Jeho směr trochu ovlivníš pohybem do požadovaného směru"}, -- Teleport
	[45] = {"45", "Mňamka Srdce", "{{Heart}} Vyléčí 1 červené srdce#Také vyléčí půl srdce u ostatních hráčů"}, -- Yum Heart
	[46] = {"46", "Šťastná Noha", "↑ +1 {{Luck}} Zvýšení Štěstí#Lepší šance na výhru při hraní hazardních her#Zvyšuje šanci na odměnu za vyklizení místnosti#Promění některé špatné pilulky na dobré"}, -- Lucky Foot
	[52] = {"52", "Dr. Zárodek", "{{Bomb}} Bomby namísto slz#{{Damage}} Každá bomba způsobí 10x tvoje poškození + 30#Pokud to způsobí poškození více než 60, způsobí to 5x tvoje poškození + 30#↓ {{Tears}} -60% Méně Slz"}, --Dr. Fetus
	[53] = {"53", "Magneto", "Magneticky přitahuje pickupy#Otevírá truhly na dálku, ignoruje poškození truhel s hroty"}, -- Magneto
	[55] = {"55", "Mámino Oko", "50% šance na vystřelení slzy dozadu#{{Luck}} 100% šance při 5 Štěstí"}, -- Mom's Eye
	[59] = {"59", "Kniha Belialova", "↑ {{Damage}} +2 Větší Poškození#{{Collectible7}} +50% poškození, pokud máš Krev mučedníka#{{AngelDevilChance}} +12.5% šance na Ďábelskou/Andělskou místnost při držení knihy"}, -- The Book of Belial (Judas's Birthright Version)
	[62] = {"62", "Okouzlení Upíra", "↑ {{Damage}} +0.3 Větší Poškození#{{HalfHeart}} Vyléčí půl srdce každých 13 zabitých nepřátel"}, -- Charm of the Vampire
	[64] = {"64", "Výprodej na Steamu", "{{Shop}} -50% na předměty v obchodě#Při získání této položky vícekrát, více sníží cenu"}, -- Steam Sale
	[67] = {"67", "Ségra Maggy", "Spojenec s normalními slzami#Uděluje 6 poškození za slzu"}, -- Sister Maggy
	[69] = {"69", "Čokoládové Mléko", "{{Chargeable}} Nabíjetelné slzy#↑ {{Damage}} Až 400% poškození"}, -- Chocolate Milk
	[70] = {"70", "Růstové Hormony", "↑ {{Damage}} +1 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti"}, -- Growth Hormones
	[71] = {"71", "Mini Houbička", "↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ {{Range}} +1.5 Větší Dostřel#↑ Zmenšení"}, -- Mini Mush
	[72] = {"72", "Růženec", "{{SoulHeart}} +3 Duševní Srdce#↑ {{Tears}} +0.5 Více Slz#{{Collectible33}}Bible je přidána do všech položek"}, -- Rosary
	[77] = {"77", "Můj Malý Jednorožec", "Nepřemožitelnost a +0.28 Zvýšení Rychlosti po dobu 6 sekund#Uděluje 40 kontaktního poškození během nějž nemůžeš střílet"}, -- My Little Unicorn
	[78] = {"78", "Kniha Zjevení", "{{SoulHeart}} +1 Duševní Srdce#Při použití nahradí bosse jeden Jezdec Apokalypsy#↑ {{AngelDevilChance}} +17.5% šance na Ďábelskou nebo Andělskou místnost"}, -- Book of Revelations
	[79] = {"79", "Značka", "↑ {{Damage}} +1 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{BlackHeart}} +1 Černé srdce"}, -- The Mark
	[80] = {"80", "Pakt", "↑ {{Damage}} +0.5 Větší Poškození#↑ {{Tears}} +0.7 Více Slz#{{BlackHeart}} +2 Černá srdce"}, -- The Pact
	[83] = {"83", "Hřebík", "{{HalfBlackHeart}} + Půlka černého srdce#↑ {{Damage}} +2 Větší Poškození#↓ {{Speed}} -0.18 Snížení Rychlosti#Uděluje kontaktní poškození#Ničí kameny po jejich přejití"}, -- The Nail
	[84] = {"84", "Musíme jít hlouběji!", "Vytvoří padací dveře do dalšího patra#{{LadderRoom}} Vytvoří průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)"}, -- We Need To Go Deeper!
	[87] = {"87", "Lokiho Rohy", "25% šance na vystřelení ve 4 směrech#{{Luck}} 100% šance při 15 Štěstí"}, -- Loki's Horns
	[91] = {"91", "Horníkova Helma", "Odhalí typ místnosti sousedních místností#{{SecretRoom}} Může také odhalit Tajné Místnosti, Super Tajné Místnosti a Mini-Boss Místnosti#Blokuje střely padající shora"}, -- Spelunker Hat
	[98] = {"98", "Relikvie", "{{SoulHeart}} Vytvoří 1 Duševní Srdce každých 7-8 místností"}, -- The Relic
	[101] = {"101", "Svatozář", "↑ {{Heart}} +1  Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Tears}} +0.2 Více Slz#↑ {{Range}} +0.38 Větší Dostřel#↑ {{Speed}} +0.3 Zvýšení Rychlosti"}, -- The Halo
	[106] = {"106", "Pan Mega", "↑ Poškození bomb x1.85#{{Bomb}} +5 Bomb"}, -- Mr. Mega
	[110] = {"110", "Mámina Kontaktní Čočka", "20% šance na vystřelení Mrazivé Slzy#{{Luck}} 50% šance při 20 Štěstí#↑ {{Range}} +0.38 Větší Dostřel"}, -- Mom's Contacts
	[114] = {"114", "Mámin Nůž", "Kontrolovatelný nůž#Nůž způsobí 2x poškození Izáka při držení a 6x poškození v co největší vzdálenosti"}, -- Mom's Knife
	[115] = {"115", "Ouija Deska", "↑ {{Tears}} +0.4 Více slz#Spektrální slzy"},
	[118] = {"118", "Brimstone", "{{Chargeable}} Nabíjecí krvavý laser, který způsobuje konstantní poškození#↓ {{Tears}} -67% Méně Slz"}, -- Brimstone
	[121] = {"121", "Zvláštní Houba (Velká)", "↑ {{Heart}} +1  Zvýšení Zdraví#↑ +1 {{Damage}} Větší Poškození#↑ +0.38 {{Range}} Větší Dostřel#↓ {{Speed}} -0.2 Snížení Rychlosti"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuál Příšer", "Náhodný spojenec pro aktuální patro"}, -- Monster Manual
	[126] = {"126", "Žiletka", "↑ {{Damage}} +1.2 Větší Poškození pro aktuální místnost#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce"},
	[129] = {"129", "Kbelík Sádla", "↑ +2 {{Heart}}  Zvýšení Zdraví#↓ {{Speed}} -0.2 Snížení Rychlosti"}, -- Bucket of Lard
	[135] = {"135", "Infuzní vak", "Přenosná krevní banka#Půl srdce = 1-2 mince#1 mince při {{HardMode}}#{{Player14}} 0-1 mince u Keepera"}, -- IV Bag
	[138] = {"138", "Stigmata", "↑ +1 {{Heart}}  Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození#{{Heart}} Vyléčí 1 červené srdce"}, -- Stigmata
	[139] = {"139", "Mámina Kabelka", "{{Trinket}} Nyní můžeš nosit 2 trinkety#Vytvoří 1 trinket"}, -- Mom's Purse
	[140] = {"140", "Bobova Kletba", "{{Poison}} Jedovaté bomby#{{Bomb}} +5 Bomb#Bomby zanechají jedovatý oblak#Budeš imunní vůči poškození jedem"}, -- Bob's Curse
	[142] = {"142", "Škapulíř", "{{SoulHeart}} Jednou za místnost, při poškození na polovinu srdce, získáš 1 Duševní Srdce#!!! Nespouští se u efektů dárcovství"}, -- Scapular
	[147] = {"147", "Notchův Krumpáč", "Ničí kameny a poškozuje nepřátele#Při úderu se snižuje jeho nabití#Plně se nabije při přechodu do dalšího patra"}, -- Notched Axe
	[148] = {"148", "Zamoření", "Vytvoří 2-6 modrých mušek když dostaneš zásah"}, -- Infestation
	[149] = {"149", "Ipekak", "{{Poison}} Výbušné jedovaté slzy#↑ {{Damage}} +40 Větší Poškození#↓ {{Shotspeed}} -0.2 Nižší Rychlost Střel#↓ {{Tears}} -67% Méně Slz#↓ {{Range}} Nepatrý Menší Dostřel"}, -- Ipecac
	[152] = {"152", "Technologie 2", "Nahrazuje slzy pravého oka pronikavým laserem s neomezeným dosahem, který nepřetržitě střílí#{{Damage}} Laser způsobuje 13% tvého poškození#↓ {{Tears}} -33% Méně Slz"}, -- Technology 2
	[153] = {"153", "Mutantní Pavouk", "Čtyř-výstřel!#↓ {{Tears}} -58% Méně Slz"}, -- Mutant Spider
	[155] = {"155", "Kukadlo", "Poletuje po místnosti#Uděluje 17.1 kontaktního poškození za sekundu#↑ {{Damage}} Slzy vystřelené z Izákova levého oka způsobí o 34 % větší poškození"}, -- The Peeper
	[158] = {"158", "Křišťálová Koule", "Odhalí celou mapu#{{SoulHeart}} Vytvoří duševní srdce#{{Card}} náhodnou kartu#{{Rune}} či runu#Při držení :#{{PlanetariumChance}} +15% šance na Planetárium#100% šance pokud {{TreasureRoom}} Pokladnice byla přeskočena"}, -- Crystal Ball
	[161] = {"161", "Ankh", "{{Player4}} Znovuzrodiš se jako ??? (Blue Baby) po smrti#{{Player25}} Poskvrněný ??? se sám oživí"}, -- Ankh
	[169] = {"169", "Polyfémos", "↑ {{Damage}} +100% Větší Poškození#↑ {{Damage}} +4 dodatečné Větší Poškození#↓ {{Tears}} -58% Méně Slz#Slzy pokračují i ​​po zabití nepřítele"},
	[171] = {"171", "Pavoučí Prdel", "{{Slow}} Zpomalí nepřátele na 4 sekundy#10 poškození všem nepřátelům#Zabití nepřátelé vytvoří modré pavouky"}, -- Spider Butt
	[172] = {"172", "Obětní Dýka", "Orbitální nůž#Blokuje nepřátelské střely#Udává 112.5 poškození za sekundu"}, -- Sacrificial Dagger
	[176] = {"176", "Kmenové Buňky", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Shotspeed}} +0.16 Vyšší Rychlost Střel#{{Heart}} Vyléčí 1 červené srdce"}, -- Stem Cells
	[178] = {"178", "Svěcená Voda", "{{Throwable}} {{ColorOrange}}Vrhatelné{{CR}}#Spustí se v tom směru, ve kterém Izák střílí#Při dotyku s nepřítelem se rozbije a způsobí 7 poškození#Zanechá po sobě poškozující kaluž, která zkamení nepřátele"}, -- Holy Water
	[180] = {"180", "Černá Fazole", "Při doteku prdíš a zanecháváš za sebou jedovaté prdy"},
	[182] = {"182", "Nejsvětější Srdce", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} 230% + 1 Větší Poškození#↓ {{Tears}} -0.4 Méně Slz#↓ {{Shotspeed}} -0.25 Nižší Rychlost Střel#Naváděné slzy"}, -- Sacred Heart
	[184] = {"184", "Svatý Grál", "Uděluje létání#↑ {{Heart}} +1 Zvýšení Zdraví# {{Heart}} Vyléčí 1 červené srdce"}, -- Holy Grail
	[186] = {"186", "Pokrevní Práva", "↑ Udělí 40 poškození každému nepříteli#↓ Způsobí ti 1 poškození#Upřednostňuje Červené Srdce"},
	[188] = {"188", "Ábel", "Zrcadlí tvůj pohyb#Střílí směrem k hráči#Uděluje 3.5 poškození za střelu#{{Player2}} Uděluje 7.5 poškození u Kaina"}, -- Abel
	[189] = {"189", "SMB Super Fanda", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Tears}} +0.2 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Speed}} +0.2 Zvýšení Rychlosti"}, -- SMB Super Fan
	[192] = {"192", "Telepatie pro Blbečky", "Pro aktuální místnost: #↑ {{Range}} +3 Dostřel#Naváděné slzy"}, -- Telepathy for Dummies
	[193] = {"193", "MASO!", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození#{{Heart}} Vyléčí 1 červené srdce"}, -- MEAT!
	[194] = {"194", "Magická Koule 8", "↑ {{Shotspeed}} +0.16 Vyšší Rychlost Střel#{{Card}} +1 karta#{{PlanetariumChance}} +15% šance na Planetárium"}, -- Magic 8 Ball
	[197] = {"197", "Ježíšův Džus", "↑ {{Damage}} +0.5 Větší Poškození#↑ {{Range}} +0.38 Větší Dostřel"}, -- Jesus Juice
	[203] = {"203", "Skromný Balíček", "Šance na zdvojnásobení všech pickupů"}, -- Humbling Bundle
	[205] = {"205", "Ostrá Zástrčka", "{{Battery}} Při použití plně dobije tvůj aktivní předmět za cenu poloviny srdce na jedno nabití#Upřednostňuje červené srdce"}, -- Sharp Plug
	[206] = {"206", "Gilotina", "↑ {{Damage}} +1 Větší Poškození#↑ {{Tears}} +0.5 Více Slz#Tvoje hlava je nyní orbitál, který neutrpí poškození a způsobuje 105 kontaktního poškození#Budeš střílet z hlavy"}, -- Guillotine
	[211] = {"211", "Pavoučí Miláček", "Při utrpení poškození vytvoří 3-5 modrých pavouků"}, -- Spiderbaby
	[214] = {"214", "Anémie (Chudokrevost)", "↑ {{Range}} +1.5 Větší Dostřel#Po utrpení zásahu zanechává na zemi poškozující kaluž"}, -- Anemic
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce#{{HalfHeart}} Šance na vyléčení půl srdce každou minutu"}, -- Placenta
	[222] = {"222", "Anti-Gravitace", "Podržením tlačítka pro střelbu se ve vzduchu budou vznášet slzy#Po uvolnění budou všechny slzy vystřeleny tím směrem, kterým byly vystřeleny původně#↑ {{Tears}} +1 Více Slz"}, -- Anti-Gravity
	[223] = {"223", "Pyromaniak", "Výbuchy tě léčí#{{Bomb}} +5 Bomb"},
	[224] = {"224", "Kriketovo Tělo", "Slzy se při zásahu rozdělují na 4#Rozdělené slzy způsobí poloviční poškození#↑ {{Tears}} +0.5 Více Slz#↓ {{Range}} -20% Menší Dostřel"}, -- Cricket's Body
	[226] = {"226", "Černý Lotus", "↑ {{Heart}} +1 Zvýšení Zdraví#{{SoulHeart}} +1 Duševní Srdce#{{BlackHeart}} +1 Černé Srdce"},
	[228] = {"228", "Maminčin Parfém", "{{Fear}} 15% šance vystřelit zastrašující slzy#↑ {{Tears}} +0.5 Více Slz"}, -- Mom's Perfume
	[229] = {"229", "Monstrova plíce", "{{Chargeable}} Slzy jsou nabíjeny a vypouštěny ve stylu brokovnice#↓ {{Tears}} -77% Méně Slz"}, -- Monstro's Lung
	[230] = {"230", "Abaddón", "↑ {{Damage}} +1.5 Větší Poškození#↑ {{Speed}} +0.2 Zvýšení Rychlosti#{{Fear}} Zastrašující slzy#{{Heart}} Přemění všechna červená srdce na {{BlackHeart}} černá srdce#{{BlackHeart}} +2 Černé srdce"}, -- Abaddon
	[232] = {"232", "Stopky", "{{Slow}} Permanentní efekt zpomalení pro nepřátele#↑ {{Speed}} +0.3 Zvýšení Rychlosti"}, -- Stop Watch
	[233] = {"233", "Maličká Planetka", "Slzy obíhají kolem tebe#↑ {{Range}} +6.5 Větší Dostřel#Spektrální slzy"}, -- Tiny Planet
	[240] = {"240", "Experimentální Léčba", "↑ Náhodně zvýší 4 staty#↓ Náhodně sníží 2 staty"}, -- Experimental Treatment
	[241] = {"241", "Smlouva z Podzemí", "Zdvojnásobuje všechny odměny za pročištěnou místnost#30% šance na žádnou odměnu za pročištěnou místnost#Neovlivňuje režim Greed Mode"}, -- Contract from Below
	[245] = {"245", "20/20", "Zdvojnásobí všechny tvoje střely#↓ {{Damage}} -25% Poškození"}, -- 20/20
	[248] = {"248", "Skupinová mysl", "Modří pavouci/mušky způsobí dvojité poškození#Pavoučí/muší spojenci budou silnější"}, -- Hive Mind
	[253] = {"253", "Kouzelný Strup", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Luck}} +1  Zvýšení Štěstí#{{Heart}} Vyléčí 1 červené srdce"}, -- Magic Scab
	[254] = {"254", "Krevní Sraženina", "!!! Platí pouze pro levé oko#↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +1.5 Větší Dostřel"}, -- Blood Clot
	[256] = {"256", "Horké Bomby", "{{Burning}} Hořící bomby#{{Bomb}} +5 Bomb#Už nemůžeš utrpět poškození ohněm#Bomby způsobují kontaktní poškození"}, -- Hot Bombs
	[261] = {"261", "Proptóza", "↑ {{Damage}} +0.5 Větší Poškození#↓ Udělené poškození se snižuje podle uražené vzdálenosti slzy#300% poškození u přímého (a blízkého) kontaktu"}, -- Proptosis
	[262] = {"262", "Chybějící Stránka 2", "{{BlackHeart}} +1 Černé Srdce#Když zdraví klesne na 1 srdce, udělí poškození všem nepřátelům v místnosti#{{Collectible35}} Černá srdce a efekt u Necronomiconu způsobí dvakrát větší poškození"}, -- Missing Page 2
	[263] = {"263", "Čistá Runa", "{{Rune}} Kopíruje efekt momentálně držené runy nebo kamene duší#Vytvoří 1 náhodnou runu"}, -- Clear Rune   (REPENTANCE ITEM)
	[264] = {"264", "Chytrá Muška", "Orbitální moucha#Když dostaneš zásah, zaútočí na nepřátele#Uděluje 22.5 poškození za sekundu"},
	[273] = {"273", "Bobův Mozek", "{{Throwable}} {{ColorOrange}}Vrhatelná{{CR}} bomba#Exploze způsobí 100 poškození#Poškození ignoruje brnění"}, -- Bob's Brain
	[274] = {"274", "Nejlepší Kámoš", "Když dostaneš zásah, získáš orbitální mušku střední vzdálenosti#Orbitál uděluje 150 poškození za sekundu"}, -- Best Bud
	[275] = {"275", "Malej Brimstone", "{{Collectible118}} Střílí brimstone laser#Jeho rána uděluje 2 poškození za tik, za celkovou škodu 20"}, -- Lil Brimstone
	[276] = {"276", "Izákovo Srdce", "Získáš nezranitelné tělo#!!! Když je zasaženo Srdce, utrpíš poškození#Spojenec se při výstřelech nabíjí, při vypouštění uvolňuje salvu slz"}, -- Isaac's Heart
	[278] = {"278", "Temný Žebrák", "{{Heart}} Převádí 1.5 červeného srdce buď na duševní/černé srdce, nepřátelského pavouka, modrého pavouka, pilulku, kartu nebo runu"}, -- Dark Bum
	[280] = {"280", "Sissy Dlouhonožka", "Náhodně vytváří modré pavouky pokud je v nepřátelské místnosti#{{Charm}} Okouzlí nepřátele, se kterými přijde do kontaktu"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Zamíchá všechny pickupy, předměty a všechny tvoje pasivní předměty#Duplikuje 1 náhodný pickup v místnosti#Restartuje aktuální místnost, respawne tě a zamíchá nepřátele v oné místnosti#Zamíchá kameny v místnosti"}, -- D100
	[285] = {"285", "D10", "Zamíchá nepřátele v místnosti#Pokusí se je zamíchat na nepřátele s podobným maximálním HP"}, -- D10
	[287] = {"287", "Kniha Tajemství", "Dá ti {{Collectible54}}Mapu pokladů, {{Collectible21}}Kompas nebo {{Collectible246}}Modrou Mapu pro aktuální patro#Poskytuje pouze efekty mapování, které ještě nemáš#Pokud všechny efekty jsou už aktivní, dá ti {{Collectible76}}Rentgenové Vidění"}, -- Book of Secrets
	[288] = {"288", "Bedna Plná Pavouků", "Vytvoří 4-8 modré pavouky"}, -- Box of Spiders
	[289] = {"289", "Červená Svíčka", "Vytvoří červený plamen#Plamen zůstává do té doby dokud nezpůsobí poškození nebo pětkrát nezablokuje střely anebo po 10 sekundách"}, -- Red Candle
	[291] = {"291", "Spláchnutej!", "Proměňuje ne-bossové nepřátele na hovna#Instantně zabíjí hovnové nepřátele a bosse#Hasí ohniště a naplňí místnost vodou#Proměňuje jámy naplněné lávou na půdu"}, -- Flush!
	[292] = {"292", "Satanská Bible", "{{BlackHeart}} +1 Černé srdce#{{DevilRoom}} Pokud je předmět použitý před bossem, pak po dokončení místnosti budeš moci uzavřít obchod s ďáblem#!!! Vezmeš-li si tento předmět, nechť budeš uzamčen do ďábelských obchodů po zbytek tohoto běhu!"}, -- Satanic Bible
	[294] = {"294", "Máslová Fazole", "Odrazí blízké nepřátele a jejich střely#Nepřátelé zatlačení do překážek utrpí 10 poškození"}, -- Butter Bean
	[295] = {"295", "Kouzelné Prstíky", "Udělí 2x hráčovo poškození v celé místnosti + 10 #{{Coin}} Cena: 1 mince"}, -- Magic Fingers
	[296] = {"296", "Konvertor", "Převádí 1 Duševní nebo Černé srdce na 1 slot pro červené srdce"}, -- Converter
	--NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	--For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Pandořina Skříňka", "{{Warning}} JEDNO POUŽITÍ, vytváří předměty dle patra:#B1: 2 {{SoulHeart}}#B2: 2 {{Bomb}} a 2 {{Key}}#C1: 1 {{BossRoom}}#C2: B1+C1#D1: 4 {{SoulHeart}}#D2: 20 {{Coin}}#W1: 2 Boss předměty#W2: {{Collectible33}}Bible#???/Void: Nic#Sheol: 1 {{DevilRoom}} + 1 {{BlackHeart}}#Dark Room: Odemkne {{Collectible523}}Krabici#Cat: 1 {{AngelRoom}} + 1 {{SoulHeart}}#Chest: 1 {{Coin}}#Home: {{Collectible580}}"}, -- Pandora's Box
	[300] = {"300", "Beran", "↑ {{Speed}} +0.25 Zvýšení Rychlosti#Tvůj dotyk uděluje nepřátelům poškození#Dostatečně rychlý běh zabrání kontaktnímu poškození"}, -- Aries
	[307] = {"307", "Kozoroh", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Speed}} +0.1 Zvýšení Rychlosti#↑ {{Range}} +0.75 Větší Dostřel#↑ {{Tears}} +0.5 Více Slz#Dostaneš bombu, minci a klíč"}, -- Capricorn
	[308] = {"308", "Vodnář", "Zanecháváš po sobě stopu kaluže#{{Damage}} Kaluž uděluje 66% tvého poškození za sekundu#Kaluž synergizuje s účinky tvých slz"}, -- Aquarius
	[309] = {"309", "Ryby", "↑ {{Tears}} +0.5 Více Slz#Slzy více odrážejí nepřátele"}, -- Pisces
	[310] = {"310", "Evina Řasenka", "↑ {{Damage}} +100% Větší Poškození#↓ {{Tears}} -33% Méně Slz#↓ {{Shotspeed}} -0.5 Nižší Rychlost Střel"}, -- Eve's Mascara
	[311] = {"311", "Jidášův Stín", "{{Player12}} Když zemřeš, znovuzrodíš se jako Temný Jidáš#{{Damage}} Ten má 2x Násobič Poškození#{{Player24}} Poskvrněný Jidáš se sám oživí"}, -- Judas' Shadow
	[314] = {"314", "Boky Jako Skříň", "↑ {{Heart}} +1 Zvýšení Zdraví#↓ {{Speed}} -0.4 Snížení Rychlosti#{{Heart}} Vyléčí 1 červené srdce#Při chůzi přes kameny je zničí"}, -- Thunder Thighs
	[315] = {"315", "Podivný Přitahovák", "Magnetické slzy#Ovlivňuje nepřátele, pickupy a trinkety#Předměty budou přitahovány tam kam slza dopadne"}, -- Strange Attractor
	[319] = {"319", "Cainovo Druhé Oko", "Odráží se po místnosti#Střílí směrem k Izákovi#{{Damage}} Jeho poškození se rovná tvému poškození"},
	[320] = {"320", "Jediný Přítel ???", "Ovladatelná muška#Uděluje 3.5 kontaktního poškození za tik"}, -- ???'s Only Friend
	[323] = {"323", "Izákovy Slzy", "Při použití vystřelíš 8 slz ve všech směrech#Slzy kopírují ty tvoje#Nabíjí se při střílení"},
	[326] = {"326", "Dech Života", "Pro neporazitelnost podrž mezerník, dokud nebude nabíjecí lišta prázdná#Paprsky světla zasáhnou nepřátele, kteří se tě dotkli, během tvé neporazitelnosti#!!! Nedržto to příliš dlouho!"}, -- Breath of Life
	[328] = {"328", "Negativ", "↑ {{Damage}} +1 Větší Poškození#Poškodí všechny nepřátele v místnosti při zásahu a při polovičním nebo žádném červeném srdci"}, -- The Negative
	[330] = {"330", "Sójové Mléko", "↑ {{Tears}} 5.5x Více Slz#↓ {{Damage}} -80% Menší Poškození#Drasticky snižuje knockback"}, -- Soy Milk
	[331] = {"331", "Božství", "↑ {{Speed}} +0.5 Větší Poškození#↓ {{Tears}} -0.3 Méně Slz#↓ {{Shotspeed}} -0.3 Nižší Rychlost Střel#Slzy získávají poškozující auru, která způsobí 2 poškození za tik#Naváděné slzy"}, -- Godhead
	[332] = {"332", "Lazarovy Hadry", "{{Player11}} Když zemřeš, znovuzrodíš se jako Lazarus (Povstaný)#{{Player29}} Poskvrněný Lazarus se sám oživí"}, -- Lazarus' Rags
	[336] = {"336", "Mrtvá Cibulka", "Průrazné a spektrální slzy#↓ {{Range}} -1.5 Menší Dostřel#↓ {{Shotspeed}} -0.4 Nižší Rychlost Střel#↑ {{Tearsize}} +50% Zvětšení Slz"}, -- Dead Onion
	[339] = {"339", "Spínací Špendlík", "↑ {{Range}} +1.5 Větší Dostřel#↑ {{Shotspeed}} +0.16 Vyšší Rychlost Střel#{{BlackHeart}} +1 Černé Srdce"}, -- Safety Pin
	[342] = {"342", "Modrý Klobouček", "↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Tears}} +0.7 Více Slz#↓ {{Shotspeed}} -16% Nižší Rychlost Střel#{{Heart}} Vyléčí 1 červené srdce"}, -- Blue Cap
	[344] = {"344", "Zápalky", "{{BlackHeart}} +1 Černé srdce#{{Bomb}} Vytvoří 2-3 bomby a {{Trinket41}}Sirku"}, -- Match Book
	[345] = {"345", "Synthol (steroidy)", "↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +1.5 Větší Dostřel"}, -- Synthoil
	[346] = {"346", "Svačina", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- A Snack
	[350] = {"350", "Toxický Šok", "{{Poison}} Na začátku každé místnosti otrávíš každého nepřítele#Zabití nepřátelé zanechávají po sobě louži#Poskytuje imunitu vůči toxickým oblakům"}, -- Toxic Shock
	[352] = {"352", "Skleněné Dělo", "Vystřelí jednu velkou průraznou spektrální slzu ((DMG x 10) + 10)#!!! Když dostaneš poškození:#↓ Ztratíš navíc 2 srdce ze zdraví#↑ {{Range}} +1.5 Větší Dostřel a zanecháš krvavou kaluž v místnosti#To extra poškození tě nazabije#Sebepoškození se nepočítá"}, -- Glass Cannon
	[354] = {"354", "Crack-Jackův Karamelový Popcorn", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Trinket}} Vytvoří náhodný trinket#{{Heart}} Vyléčí 1 červené srdce"}, -- Crack Jacks
	[355] = {"355", "Máminy Perly", "↑ {{Range}} +0.38 Větší Dostřel#↑ {{Luck}} +1 Zvýšení Štěstí#{{SoulHeart}} +1 Duševní srdce"}, -- Mom's Pearls
	[360] = {"360", "Inkubus", "Získáš démonického spojence, který střílí stejné slzy jako Izák#{{Damage}} Uděluje 75% tvého poškození#{{Player13}} 100% pokud hraješ za Lilith"}, -- Incubus
	[365] = {"365", "Ztracená Moucha", "Pohybuje se po stěnách/překážkách v místnosti#Uděluje 56 kontaktního poškození za sekundu#Blízkí nepřátelé se zaměří na mouchu"}, -- Lost Fly
	[366] = {"366", "Rozptylové Bomby", "{{Bomb}} +5 bomb#Způsobí, že tvoje bomby explodují a poté vytvoří dalších 4-5 menších bombiček"}, -- Scatter Bombs
	[367] = {"367", "Lepkavé Bomby", "{{Bomb}} +5 Bomb#Když bomba zabije nepřítele, vytvoří modré pavouky#Tvoje bomby se přilepí na nepřátele"},
	[368] = {"368", "Epifora", "{{Tears}} Střelba jedním směrem postupně zvyšuje tvoji rychlost střílení slz až o 200%"}, -- Epiphora
	[369] = {"369", "Kontinuum", "↑ {{Range}} +3 Větší Dostřel#Spektrální slzy#Slzy procházejí stěnami a objevují se z protější stěny"}, -- Continuum
	[370] = {"370", "Panenka", "↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#{{Heart}} Vytvoří 3 náhodná srdce"}, -- Mr. Dolly
	[372] = {"372", "Nabité Dítě", "Náhodná šance na baterie nebo zmrazení všech nepřátel v místnosti#Šance přidat jedno nabití tvému aktivnímu předmětu"}, -- Charged Baby
	[374] = {"374", "Posvátné Světlo", "10% šance na vystřelení posvatné slzy, která při zásahu vyšle paprsek světla#{{Damage}} Paprsek způsobí 3x tvého poškození#{{Luck}} 50% šance při 9 Štěstí"}, -- Holy Light
	[375] = {"375", "Hostitelova Lebka", "Poskytuje imunitu proti výbuchům#20% šance na zablokování slz#Blokuje střely padající shora"}, -- Host hat
	[376] = {"376", "Doplnění Zásob", "Obchody okamžitě doplní své položky, když si je koupíš#Doskladněné zboží pomalu zdražuje"}, -- Restock
	[380] = {"380", "Zaplať za hraní", "{{Coin}} +5 mincí#Nyní otevíráš zamčené dveře a truhly pomocí mincí namísto klíčů"}, -- Pay To Play
	[382] = {"382", "Kamarádský Míč", "Můžeš jej vrhnout na nepřátele k jejich zachycení#Při dalším použití se znovu objeví stejný nepřítel, ale už jako přátelský společník#Chůze po míči (po zachycení ) předmět okamžitě dobije"}, -- Friendly Ball
	[384] = {"384", "Malý Gurdy", "{{Chargeable}} Vystřelí se a bude létat po místnosti#Způsobí 5-25 kontaktního poškození v závislosti na jeho rychlosti"}, -- Lil Gurdy
	[389] = {"389", "Pytlíček Run", "{{Rune}} Vytvoří náhodnou runu každých 7-8 místností#Také může vytvořit kámen duší"}, -- Rune Bag
	[391] = {"391", "Zrada", "{{Charm}} Pokaždé, když Izák utrpí poškození, okouzlí každého nepřítele v místnosti a ti pak můžou bojovat mezi sebou"},
	[393] = {"393", "Hadí Polibek", "{{Poison}} 15% šance vystřelit jedovaté slzy#{{Luck}} Není ovlivněno štěstím#{{Poison}} Otráví nepřátelé při doteku#{{BlackHeart}} Nepřátelé zabití kontaktním jedem mají 20% šanci vytvořit černé srdce"}, -- Serpent's Kiss
	[394] = {"394", "Označený", "Slzy automaticky míří na červený terč na zemi, který ovládá hráč#↑ {{Tears}} +0.7 Více Slz#↑ {{Range}} +3 Větší Dostřel#Spojenci rovněž střílejí na cíl"}, -- Marked
	[395] = {"395", "Technologie X", "{{Chargeable}} Získáš schopnost nabíjet a vystřelovat střely jakožto laserový prstenec, který se pohybuje po místnosti#Vyšší poškození při delším nabíjení#100% poškození při plném nabití"}, -- Tech X
	[397] = {"397", "Vlečný Paprsek", "Izákovy slzy nyní putují přímo podle paprsku světla, ale budou se také pohybovat do stran v závislosti na pohybu hráče#↑ {{Tears}} +1 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Shotspeed}} +0.16 Vyšší Rychlost Střel"},
	[399] = {"399", "Chřtán Prázdnoty", "{{Chargeable}} Po 3 sekundách střílení slz se na Izákově hlavě objeví červený kříž. Po uvolnění tlačítka střelby vytvoří prstenec z černého brimstonu"}, -- Maw of the Void
	[401] = {"401", "Explozívo", "25% šance na vystřelení lepkavé bombové slzy#{{Luck}} Není ovlivněno štěstím#Po několika sekundách explodují a způsobí tvoje poškození + 60"}, -- Explosivo
	[404] = {"404", "Prdící Děcko", "Blokuje projektily#Pokud je zasaženo, prdne si, což nepřátele okouzlí, otráví nebo odrazí zpět#Prdy způsobí 5-6 poškození"}, -- Farting Baby
	[405] = {"405", "Hru Rozbíjející Chyba", "{{Throwable}} {{ColorOrange}}Vrhatelné{{CR}} (vystřelení dvojitým kliknutím)#Zamíchá nepřátele a pickupy, se kterými přijde do kontaktu"}, -- GB Bug
	[407] = {"407", "Čistota", "↑ Zvyší jednu z tvých statistik v závislosti na barvě aury kolem tebe#Když utrpíš poškození a následně vstoupíš do nové místnosti, získáš novou auru ale náhodné barvy:#{{ColorRed}}Red{{CR}} = {{Damage}} +4 Větší Poškození#{{ColorBlue}}Blue{{CR}} = {{Tears}} +2 Více Slz#{{ColorYellow}}Yellow{{CR}} = {{Speed}} +0.5 Zvýšení Rychlosti#{{ColorOrange}}Orange{{CR}} = {{Range}} +3 Větší Dostřel"},
	[408] = {"408", "Athame", "Při poškození, se objeví kolem Izáka prstenec černého brimstonu"}, -- Athame
	[415] = {"415", "Koruna Světla", "{{SoulHeart}} +2 Duševní srdce#Pokud nemáš žádné poškozené místo pro červené srdce:#↑ {{Damage}} +100% Větší Poškození#↑ {{Range}} +1.5 Větší Dostřel#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel#Deaktivuje se pro aktuální místnost, pokud je poškozena"}, -- Crown Of Light
	[416] = {"416", "Hluboké Kapsy", "Vytvoří 1-3 mince pokud ti místnost nedala žádnou odměnu#{{Coin}} Zvýší maximální počet mincí na 999"}, -- Deep Pockets
	[417] = {"417", "Sukubus", "Poskakuje po místnosti s poškozující aurou, která každou sekundu udělí 7,5-10#↑ {{Damage}} +50% poškození při stání v auře"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Teleportuje tě do náhodné místnosti, která ještě nebyla prozkoumána#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Červená Fazole", "{{Charm}}Aplikuje efekt okouzlení na všechny nepřátele v blízkém dosahu"}, -- Kidney Bean
	[422] = {"422", "Zářící Přesýpací Hodiny", "Přetočíš čas a vrátíš se zpět do předchozí místnosti, ve které jsi byl předtím a do stejného stavu oné místnosti#Po třech použitích se stanou obyčejnými přesýpacími hodinami"},
	[426] = {"426", "Posedlý Fanoušek", "Následuje tvůj přesný pohyb s 0.66 sekundovým zpožděním#Uděluje 30 kontaktního poškození ua sekundu"}, -- Obsessed Fan
	[430] = {"430", "Táta Moucha", "Následuje tvůj přesný pohyb s 0.66 sekundovým zpožděním#Vystřelí slzy na blízké nepřátele, které způsobí poškození rovnající se tomu tvému"}, -- Papa Fly
	[431] = {"431", "Multidimenzionální Dítě", "Následuje tvůj přesný pohyb s 0.66 sekundovým zpožděním#Slzy, které jím projdou, se rozdělí na dvě a získají zvýšení rychlosti"}, -- Multidimensional Baby
	[432] = {"432", "Třpytivé Bomby", "{{Bomb}} +5 bomb#Bomby mají 63% šanci na vytvoření náhodného pickupu a 15% šanci na okouzlení nepřátel když vybuchnou#Šance na vytvoření se sníží o 1 % za každý spawn v tomto patře"}, -- Glitter Bombs
	[433] = {"433", "Můj Stín", "Pokaždé, když utrpíš poškození, aplikuje efekt zastrašení na všechny nepřátele a vytvoří přátelského černého červa#Červ uděluje 5 poškození za sekundu"},
	[437] = {"437", "D7", "Obnoví všechny nepřátele v místnosti#Umožňí ti nahromadit odměny za pročištěné místnosti"}, -- D7
	[440] = {"440", "Ledvinový Kámen", "Šance na dobití útoku během střelby#Uvolni tlačítko pro střelbu a vystřelíš ledvinový kámen následovaný rychlou salvou slz"}, -- Kidney Stone
	[442] = {"442", "Koruna Temného Prince", "!!! Při 1 plném červené srdci:#↑ {{Tears}} +2 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel#Nefunguje s postavami bez červených srdcí"}, -- Dark Prince's Crown
	[444] = {"444", "Tužka", "Po každých 15 vystřelených slz, vystřelíš shluk slz"}, -- Lead Pencil
	[448] = {"448", "Střípek Skla", "Při utrpení poškození:#{{Heart}} 25% šance na vytvoření Červeného srdce#Začneš krvácet a chrlit slzy směrem, kterým střílíš#Krvácení způsobí poloviční poškození Červeného srdce každých 20 sekund#Přestaneš krvácet pokud vyléčíš poškození červeného srdce, pokud nemáš žádné červené srdce, tak zemřeš"}, -- Shard of Glass
	[450] = {"450", "Greedovo Oko", "Každých 20 slz vystřelíš mincovou slzu, která promění nepřátele ve zlato#To stojí 1 minci#Zasažení nepřátelé po smrti vytvoří 1-4 mince"}, -- Eye of Greed
	[451] = {"451", "Tarotový Ubrus", "{{Card}} Vytvoří náhodnou kartu nebo runu při prvním sebrání#{{Card}} Některé karty získají extra nebo zdvojnásobený efekt"}, -- Tarot Cloth
	[453] = {"453", "Otevřená Zlomenina", "↑ {{Range}} +0.38 Větší Dostřel#Kostěnné slzy#Slzy se při zasažení čehokoli roztříští na 1-3 menší kostěnné úlomky"}, -- Compound Fracture
	[455] = {"455", "Tátova Ztracená Mince", "↑ {{Range}} +0.38 Větší Dostřel#Vytvoří šťastnou minci"}, -- Dad's Lost Coin
	[456] = {"456", "Půlnoční Sváča", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 červené srdce"}, -- Midnight Snack
	[459] = {"459", "Sinusitida", "{{Poison}} 20% šance na vystřelení přilepující se jedovaté slzy#{{Luck}} Není ovlivněno štěstím#Udělí tvé poškození každou sekundu#Slza bude přilepená po dobu 10 sekund"}, -- Sinus Infection
	[462] = {"462", "Oko Belialovo", "↑ {{Range}} +1.5 Větší Dostřel#Průrazné slzy#Po zasažení prvního nepřítele dále slza způsobí dvojnásobné poškození a získá naváděcí efekt"}, -- Eye of Belial
	[464] = {"464", "Symbol Rovnováhy", "{{SoulHeart}} +2 Duševní Srdce#Šampioni a odměny se vyskytují mnohem častěji#Priorita spawnovaných pickupů závisí na tom, co hráči nejvíce chybí"}, -- Glyph of Balance
	[468] = {"468", "Stínovač", "Sleduje tvůj přesný pohyb s 1 sekundovým zpožděním#Uděluje 30 kontaktního poškození za sekundu#Poté, co způsobí 666 poškození, je pohlcen Izákem, čímž se zvýší jeho kontaktní poškození."},
	[472] = {"472", "Královské Dítě", "Ostatní spojenci ho následují a automaticky střílejí na nepřátele#Přestanou se pohybovat, když střílíš#Když přestaneš střílet, teleportují se zpět k tobě"}, -- King Baby
	[474] = {"474", "Rozbité Skleněné Dělo", "Při použití se změní na Skleněné Dělo"}, -- Broken Glass Cannon
	[476] = {"476", "D1", "Duplikuje 1 náhodný pickup v místnosti#Duplikované pickupy nemusí být identicky stejné jako originál"}, -- D1
	[477] = {"477", "Prázdnota", "!!! Při použití zkonzumuje všechny (aktivní) předměty v místnosti#Aktivní předmět: jeho efekt bude přidán k efektu Prázdnoty (Sloočení efektů)#↑ Pasivní předmět: malé vylepšení pro dvě náhodné statistiky"}, -- Void
	[487] = {"487", "Škrabka na Brambory", "Odebere jedno místo s Červeným Srdcem a dá ti: #↑ {{Damage}} +0.2 Větší Poškození#{{Collectible73}} Kostku Masa#↑ {{Range}} +5 Dosah a zanecháš za sebou krvavou stopu pro aktuální místnost"}, -- Potato Peeler
	[489] = {"489", "D Nekonečno", "Chová se jako jakákoli kostka kromě {{Collectible723}}Spindown Kostky#Změň aktuální kostku pomocí tlačítka pro upuštění{{ButtonRT}}#Doba nabíjení se liší v závislosti na aktuální kostce a aktualizacích při použití"}, -- D Infinity
	[491] = {"491", "LSD Dítě", "{{Pill}} Vytvoří náhodnou pilulku každých 7 místností#Při použití pilulky otráví všechny nepřátele v místnosti"}, -- Acid Baby
	[493] = {"493", "Adrenalin", "↑ {{Damage}} Větší Poškození za každé prázdné místo pro červené srdce#Následuje vzorec, například:#+0.3 na 1#+0.92 na 2#+1.76 na 3#+2.79 na 4#+3.98 na 5"}, -- Adrenaline
	[494] = {"494", "Jákobův Žebřík", "Slzy při zásahu způsobí jiskru elektřiny#Jiskry způsobí polovinu tvého poškození#Jiskry mohou přeskakovat mezi nepřáteli"}, -- Jacobs Ladder
	[495] = {"495", "Naga Jolokia (Chilli Paprička)", "8% šance na vystřelení modrého plamene, který blokuje nepřátelské výstřely a působí kontaktní poškození#{{Luck}} 50% šance při 10 Štěstí#The flame disappears after 2 seconds"}, -- Ghost Pepper
	[496] = {"496", "Eutanázie", "3.33% šance na vystřelení jehel#{{Luck}} 50% šance při 15 Štěstí#Jehly okamžitě zabijí normální nepřátele a roztříští je do 10 slz#Jehly způsobí 3x poškození Bossům"}, -- Euthanasia
	[497] = {"497", "Maskáčové Spodní Prádlo", "Když vejdeš do místnosti, budeš zamaskován a zmáteš všechny nepřátele, dokud nezačneš střílet#↑ {{Speed}} +0.5 Zvýšení Rychlosti při zahalení#Po odmaskování, způsobíš poškození kolem sebe a získáš Více Slz a Větší Poškození"}, -- Camo Undies
	[501] = {"501", "Greedův Jícen", "Za každých 25 mincí ti přibyde 1 místo pro srdce#{{Player14}} Keeper může získat další místo pro Mincové Srdce#{{Collectible416}} Získáš místo pro srdce za každých 100 mincí, které máš po 99"}, -- Greed's Gullet
	[503] = {"503", "Little Horn", "5% šance na vystřelení slzy, která vyvolá ruku Big Horna#{{Luck}} 20% šance při 15 Štěstí#Ruka instantně zabijí nepřátele a uděluje poškození Bossům#Při kontaktu s nepřáteli udělí 3.5 poškození"}, -- Little Horn
	[504] = {"504", "Hnědý Nuget", "Vytvoří mouchu, která stojí na místě a střílí na nepřátele#Každý výstřel způsobí 3.5 poškození"}, -- Brown Nugget
	[506] = {"506", "Kudlou Do Zad", "Pokud slzy zasáhnou nepřítele do zad, způsobí dvojnásobné poškození a způsobí krvácení, takže nepřátelé zanechávají kaluž a utrpí poškození, při pohybu"}, -- Backstabber
	[507] = {"507", "Ostré Brčko", "{{Damage}} Uděluje tvoje poškození + 10% maximálního zdraví nepřítele#Ovlivňuje všechny nepřátele v místnosti#{{HalfHeart}} Šance upustit půl srdce, když způsobí poškození"}, -- Sharp Straw
	[508] = {"508", "Maminčin Holicí Strojek", "Orbitál, který způsobuje krvácení, díky němuž nepřátelé zanechávají kaluž a utrpí poškození, při pohybu#Uděluje 20% tvého poškození při kontaktu za tik"}, -- Mom's Razor
	[509] = {"509", "Krví Podlité Oko", "Orbitál, který vystřelí slzu každé 1/3 sekundy když je nepřítel poblíž#Uděluje 3.5 poškození za slzu#Uděluje 30 kontaktního poškození za sekundu"}, -- Bloodshot Eye
	[514] = {"514", "Rozbitý Modem", "Způsobuje, že se náhodní nepřátelé 'lagují' v náhodných intervalech, což způsobí jejich krátké zamrznutí#Efekt platí i pro nepřátelské střely a pickupy#25% šance na zdvojnásobení odměn z místnosti"}, -- Broken Modem
	[517] = {"517", "Rychlo-Bomby", "{{Bomb}} +7 Bomb#Umožňí ti rychleji umístit bomby#Bomby se navzájem neodstrkují"}, -- Fast Bombs
	[523] = {"523", "Stěhovací Krabice", "Při použití uloží až 10 pickupů z aktuální místnosti#Opětovným použitím je vrátíš zpět na podlahu#To ti umožní přesouvat věci mezi místnostmi"}, -- Moving Box
	[524] = {"524", "Technologie Nula", "Slzy budou spojeny elektřinou#Elektřina způsobí 33 % tvého poškození"}, -- Technology Zero
	[531] = {"531", "Hemolakrie", "Slzy létají obloukem a při dopadu se rozdělí v menší slzy#↑ {{Damage}} +1 Větší Poškození#↑ {{Damage}} +50% Násobič Poškození#↓ {{Tears}} Méně Slz#↓ {{Range}} -20% Menší Dostřel"}, -- Haemolacria
	[535] = {"535", "Přikrývka", "{{SoulHeart}} +1 Duševní Srdce#{{Heart}} Vyléčí 1 Červené Srdce#{{HolyMantle}} Uděluje štít při vstupu do boss místnosti"}, -- Blanket
	[541] = {"541", "Kostní Dřeň", "+1 Kostěné Srdce#Vytvoří 3 Červené Srdce"}, -- Marrow
	[543] = {"543", "Posvátné Hovno", "Vytvoří bílé hovno, když utrpíš poškození#Pokud stojíš v auře:#↑ {{Damage}} +25% Větší Poškození#↑ {{Tears}} +150% Více Slz#Naváděné slzy#Šance na blokaci poškození"}, -- Hallowed Ground
	[549] = {"549", "Křehké Kosti", "{{EmptyBoneHeart}} Nahradí všechna místa s Červenými Srdci za 6 Kostěných Srdcí#Při ztrátě Kostěného Srdce:#Vystřelí 8 kostních slz do všech směrů#↑ {{Tears}} +0.4 Více Slz natrvalo"}, -- Brittle Bones
	[552] = {"552", "Mámina lopata", "Vytvoří padací dveře do dalšího patra#{{LadderRoom}} Vytvoří průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)"}, -- Mom's Shovel
	[553] = {"553", "Mukormykóza", "25% šance na vystřelení lepkavé spórové slzy#{{Luck}} Není ovlivněno štěstím#Spóry vybuchnou po 2.5 sekundách, udělí poškození, otráví nepřátele poblíž a uvolní další spóry"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Zastrašuje nepřátele v malém okruhu kolem tebe"}, -- 2Spooky
	[555] = {"555", "Zlatá Žiletka", "{{Coin}} Přemění 5 mincí na {{Damage}} +1.2 Větší Poškození pro aktuální místnost#{{Coin}} +5 mincí"}, -- Golden Razor
	[556] = {"556", "Síra", "Udělí ti {{Collectible118}}Brimstone pro aktuální místnost"}, -- Sulfur
	[557] = {"557", "Koláček Štěstí", "Dá Izákovi: #předpověď osudu (proroctví)#{{SoulHeart}} Duševní Srdce#{{Card}} Kartu#{{Rune}} Runu nebo Duševní Kámen#{{Trinket}} trinket"}, -- Fortune Cookie
	[558] = {"558", "Bolest Očí", "Šance na vystřelení 1-3 slz navíc v náhodných směrech#{{Luck}} Není ovlivněno štěstím#"}, -- Eye Sore
	[559] = {"559", "120 Voltů", "Opakovaně elektrizuje nepřátele poblíž#{{Damage}} Elektřina způsobí 75 % tvého poškození"}, -- 120 Volt
	[560] = {"560", "To bolí", "Vytvoří kruh 10 slz, které působí 10 poškození a dostaneš Více Slz při zásahu pro aktuální místnost#↑ {{Tears}} +1.2 Více Slz za první zásah#↑ {{Tears}} +0.4 za každý další zásah"}, -- It Hurts
	[561] = {"561", "Mandlové Mléko", "↑ {{Tears}} 4x Více Slz#↓ {{Damage}} -70% Menší Poškození#Slzy získávají efekty náhodných červových trinketů a některé efekty předmětů"}, -- Almond Milk
	[562] = {"562", "Samé Dno", "Absolutně zabraňuje snížení všech statistik po zbytek hry"}, -- Rock Bottom
	[563] = {"563", "Vzrušující Bomby", "{{Bomb}} +5 bomb#Bomby explodují s náhodným bombovým efektem"}, -- Nancy Bombs
	[564] = {"564", "Kostka Mýdla", "↑ {{Tears}} +0.5 Více Slz#↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel"}, -- A Bar of Soap
	[565] = {"565", "Krvavé Štěně", "Spojenec, který pronásleduje nepřátele#Po zabití 15 nepřátel působí větší poškození, každých 10 zabití vytvoří půl srdce, ale také se pokusí zranit tebe#Po zabití 40 nepřátel působí ještě větší poškození, vytváří plná srdce a dokáže ničit kameny#Útočením na štěně ho vrátíš do normálu"}, -- Blood Puppy
	[566] = {"566", "Lapač Snů", "{{HalfSoulHeart}} +1  a půl Duševního Srdce při vstupu do nového patra#{{TreasureRoom}} Zobrazuje nadcházející předmět v Pokladnici#{{BossRoom}} Boss v noční můře při přechodu mezi patry"}, -- Dream Catcher
	[567] = {"567", "Paškál", "↑ {{Tears}} +0.4 Více Slz za každou vyčištěnou místnost bez poškození#{{Tears}} možno až +2 Více Slz#Při utrpení poškození se bonus resetuje"}, -- Paschal Candle
	[568] = {"568", "Boží Zásah", "Dvojité kliknutí klávesy střelby vytvoří štít#Štít trvá 1 sekundu, odstrčí nepřátele a odráží nepřátelské projektily a lasery"}, -- Divine Intervention
	[569] = {"569", "Pokrevní Přísaha", "!!! Bodne tě na začátku každého patra a vysaje všechny životy kromě poloviny Červeného Srdce#Poté zvyšuje statistiky na patro:#↑ {{Damage}} Poškození + 0.15 * ZtracenéSrdce^2#↑ {{Speed}} Rychlost + 0.05*ZtracenéSrdce#Každá ztracená polovina srdce může způsobit poškození-způsobené předměty"}, -- Blood Oath
	[570] = {"570", "Playdough Sušenka", "Uděluje vícebarevné slzy s různými stavovými efekty"}, -- Playdough Cookie
	[571] = {"571", "Sirotkovy Ponožky", "Zabraňuje poškození způsobeného kalužemi a podlahovými hroty#↑ {{Speed}} +0.3 Zvýšení Rychlosti#↑ {{SoulHeart}} +2 Duševní Srdce"}, -- Orphan Socks
	[572] = {"572", "Okultní Oko", "Kontrolovatelné slzy#↑ {{Damage}} +1 Větší Poškození#↑ {{Range}} +2 Větší Dostřel#↓ {{Shotspeed}} -0.16 Menší Rychlost Střel"}, -- Eye of the Occult
	[573] = {"573", "Neposkvrněné Srdce", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +20% Větší Poškození#20% šance na vystřelení orbitující spektrální slzy"}, -- Immaculate Heart
	[574] = {"574", "Monstrance", "Získáš dvě kruhové aury, které poškozují nepřátele#Vnitřní aura způsobuje větší poškození"}, -- Monstrance
	[575] = {"575", "Vetřelec", "Spojenec ukrytý v tvojí hlavě, vystřelující 4 zpomalující slzy#Po utrpení poškození může vystoupit z hlavy"}, -- The Intruder
	[576] = {"576", "Špinavá Mysl", "Všichni Dipové (malé hovínka) jsou přátelští#Zničení hovna vytvoří 1–4 Dipů#Typ Dipa závisí na typu hovna#Kameny mohou být nahrazeny hovny"}, -- Dirty Mind
	[577] = {"577", "Damoklův Meč", "{{Warning}} JEDNO POUŽITÍ {{Warning}}#Vytvoří meč nad tvojí hlavou, který zdvojnásobí všechny podstavce s předměty#Nezdvojí položky v obchodě, v Truhle či dohody s ďáblem#!!! Zabije tě náhodně poté, co utrpíš poškození od nepřítele"}, -- Damocles
	[578] = {"578", "Limča Zadáčo", "Vytvoří velkou dlouhotrvající kaluž limonády#Způsobí 24 poškození kontaktem za sekundu"}, -- Free Lemonade
	[579] = {"579", "Duchovní Meč", "Místo slz bojuje Izák s mečem#Uděluje 3x tvého poškození#{{Chargeable}} Rotační útok + vystřelení při podržení útoku#Vystřeluje střely normálními švihy při plném zdraví"}, -- Spirit Sword
	[580] = {"580", "Červený Klíč", "Vytvoří novou místnost sousedící s možnou stěnou, označenou červeným obrysem dveří#Místnosti mohou být speciální#{{ErrorRoom}} Místnost mimo mapu patra o rozloze 13x13 tě teleportuje do místnosti JSEM ERROR"}, -- Red Key
	[581] = {"581", "Psychická Muška", "Orbitální muška#Pronásleduje a odklání střely#Uděluje kontaktní poškození"}, -- Psy Fly
	[582] = {"582", "Lysohlávka", "↑ {{Tears}} +0.75 Více Slz#↓ {{Speed}} -0.03 Snížení Rychlosti#Deformuje obrazovku#Efekt lze naskládat na sebe"}, -- Wavy Cap
	[583] = {"583", "Raketa ve Sklenici", "{{Bomb}} +5 bomb#Při střelbě se umístěné bomby promění v rakety, které vystřelí ve směru střelby"}, -- Rocket in a Jar
	[584] = {"584", "Kniha Ctností", "Vytvoří orbitální bludičku, která vystřeluje spektrální slzy, ale může být zničena#Lze zkombinovat s druhým aktivním předmětem k vytvoření různých typů bludiček#Promění první {{DevilRoom}}Ďábelskou místnost na {{AngelRoom}}Andělskou#{{AngelChance}} 12.5% vyšší šance na Andělskou místnost#{{AngelChance}} Umožňuje aby se Andělské místnosti vyskytovali, i když jsi uzavřel dohodu s ďáblem"}, -- Book of Virtues
	[585] = {"585", "Alabastrová krabička", "{{SoulHeart}} Vytvoří tři Duševní Srdce#{{AngelRoom}} Dva předměty z Andělské místnosti#Musí být nabita sebráním Duševních Srdcí#{{DevilRoom}} Vytvoří pouze 2 Duševní Srdce a 1 Andělský předmět, pokud byla dříve uzavřena dohoda s Ďáblem"}, -- Alabaster Box
	[586] = {"586", "Schodiště", "{{AngelRoom}} Na začátku každého patra vytvoří žebřík, který vede do jedinečného obchodu s předměty z Andělské Místnosti"}, -- The Stairway
	[587] = {"587", "Menora (Nepoužité, ale naskriptované)", "<Předmět neexistuje>"}, -- Menorah (Nepoužité, ale naskriptované)
	[588] = {"588", "Slunce", "{{BossRoom}}Odhaluje umístění Boss Místnosti#Po porážce Bosse:#Aktivuje {{Card20}}Slunce#{{Battery}} Plně dobíje tvůj aktivní předmět#{{CurseBlind}} Odstraní veškeré kletby#↑ {{Damage}} +3 Větší Poškození#↑ {{Luck}} +1 Štěstí"}, -- Sol
	[589] = {"589", "Měsíc", "Přidá další {{SecretRoom}}Tajnou Místnost a {{SuperSecretRoom}}Supertajnou Místnost do každého patra#Tajné Místnosti obsahují paprsek světla, který ti přidá:#{{HalfSoulHeart}} půlku Duševního Srdce#↑ {{Tears}} +0.5 Více Slz pro aktuální patro#↑ {{Tears}} +0.5 Více Slz navíc od prvního paprsku na patro"}, -- Luna
	[590] = {"590", "Merkur", "↑ {{Speed}} +0.4 Zvýšení Rychlosti#Po vstupu do místnosti zůstávají dveře otevřené"}, -- Mercurius
	[591] = {"591", "Venuše", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 Červené Srdce#{{Charm}} Okouzlí nepřátele poblíž"}, -- Venus
	[592] = {"592", "Země", "↑ {{Damage}} +1 Větší Poškození#Nahrazuje slzy kameny#Udělují proměnlivé poškození#Dokážou zničit objekty#Více odrazuje nepřátele"}, -- Terra
	[593] = {"593", "Mars", "Vystřelíš se dopředu dvojitým kliknutím na klávesu pohybu, budeš nesmrtelný a způsobíš 4x tvého poškození#3 sekundy cooldown"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{Heart}} +2 Zvýšení Zdraví#{{HalfHeart}} Vyléčí půlku Červeného Srdce#↓ {{Speed}} -0.3 Snížení Rychlosti#{{Poison}} Učiní tě imunní vůči jedu#{{Speed}} Vybuduj až +0,5 rychlosti, pokud stojíš na místě#{{Poison}} Při pohybu se za tebou uvolňují jedovaté prdové mraky"}, -- Jupiter
	[595] = {"595", "Saturn", "Obklopuje tě kruh#Při vstupu do místnosti v něm bude obíhat 7 slz#Šance na zachycení nepřátelských projektilů do kruhu"}, -- Saturnus
	[596] = {"596", "Uran", "{{Freezing}} Střílíš ledové slzy, které zpomalují nepřátele a zmrazují monstra, které slzy zabijou#Při dotyku zmrzlých nepřátel je odstrčíš, poté explodují a rozdělí se na 6 ledových střepů"}, -- Uranus
	[597] = {"597", "Neptun", "{{Chargeable}} Nabíjetelné (automatické)#Vybuduješ masivní slzný bonus během 3 sekund při nestřílení#Opětovná střelba uvolní uložené slzy#Slzný bonus odpadá, když střílíš"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0.7 Více Slz#Výrazně zmenší Izáka, což mu umožní vmáčknout se mezi objekty#Projektily přes něj mohou přeletět"}, -- Pluto
	[599] = {"599", "Voodoo Hlava", "{{CursedRoom}} Vytvoří další Prokletou místnost na každém patře#Vylepšuje rozvržení a odměny Prokletých místností"}, -- Voodoo Head
	[600] = {"600", "Oční Kapky", "↑ {{Tears}} +30% Více Slz pouze pro levé oko#První výstřel po chvíli je vždy dvojitý#{{Tears}} +20% Více Slz pro útoky bez slz"}, -- Eye Drops
	[601] = {"601", "Akt Lítosti", "↑ {{Tears}} +0.7 Více Slz#{{EternalHeart}} +1 Srdce Věčnosti#{{AngelChance}} Umožňuje aby se Andělské místnosti vyskytovali, i když jsi uzavřel dohodu s ďáblem#Při poškození Červeného Srdce tolik nesníží šanci na ďábelskou/andělskou místnost"}, -- Act of Contrition
	[602] = {"602", "Členská Karta", "{{Shop}} Přidá padací dveře do každého obchodu, které vedou do druhého obchodu s jedinečným zbožím"}, -- Member Card
	[603] = {"603", "Balíček baterií", "{{Battery}} Vytvoří 2-4 baterky#Plně dobije tvůj aktivní předmět"}, -- Battery Pack
	[604] = {"604", "Maminčin Náramek", "Umožňuje zvedat a házet kameny, TNT, hovna, Dipy, Hostitele a další překážky#Umožňuje i jejich přenášení mezi místnostmi"}, -- Mom's Bracelet
	[605] = {"605", "Lžíce Na Zmrzlinu", "Vyvolá Kukadlového spojence pro aktuální místnost, což zanechá stopu červené kaluže#↑ {{Damage}} Slzy vystřelené z pravého oka způsobí o 34 % větší poškození"}, -- The Scooper
	[606] = {"606", "Oční Trhlina", "5% šance na vystřelení slzy, která vytvoří trhlinu tam, kam dopadne#{{Luck}} Nejasně ovlivněno Štěstím#Trhliny přitahují blízké nepřátele, pickupy a projektily"}, -- Ocular Rift
	[607] = {"607", "Uvařené Dítě", "Spojenec, který vystřeluje chaotické návaly slz na všechny strany#Způsobí 3.5 nebo 5.3 poškození za slzu"}, -- Boiled Baby
	[608] = {"608", "Zmrazené Děcko", "Spojenec, který vystřeluje zkameňující slzy#Zmrazí monstra při jejich zabití"}, -- Freezer Baby
	[609] = {"609", "Věčná D6", "Zamíchá s podstavci v aktuální místnosti#Předměty mají 30% šanci, že zmizí"}, -- Eternal D6
	[610] = {"610", "Ptačí Klec", "Spojenec který skočí na nepřítele při prvním zásahu v místnosti#Způsobí 45 poškození a uvolní kamennou vlnu#Poté pronásledujte nepřátele"}, -- Bird Cage
	[611] = {"611", "Hrtan", "Přinutí tě křičet, poškozovat a tlačit nepřátele v okolí#Výkřik je tím silnější, čím více nábojů má předmět"}, -- Larynx
	[612] = {"612", "Ztracená Duše", "Duševní spojenec, který zemře při jednom zásahem a znovu se objeví na začátku dalšího patra#Pokud přežije celé patro, vytvoří {{SoulHeart}} 3 Duševní Srdce, {{EternalHeart}} 2 Srdce Věčnosti nebo {{TreasureRoom}} předmět z Pokladnice anebo {{AngelRoom}} předmět z Andělské místnosti"}, -- Lost Soul
	[613] = {"613", "", "<předmět neexistuje>"},
	[614] = {"614", "Krvavé Bomby", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 5 srdcí#{{HalfHeart}} Pokud hráč nemá žádné bomby, lze jednu umístit za cenu poloviny srdce#{{Bomb}} Bomby zanechávají červenou kaluž#"}, -- Blood Bombs
	[615] = {"615", "Malej Dumpy", "Dumpy spojenec#Těsně předtím, než se Izák srazí s nepřítelem nebo projektilem, Dumpy si prdne, aby je odvrátil#Po uprdutí se musíš dostat blízko k Dumpymu, abys ho znovu získal"}, -- Lil Dumpy
	[616] = {"616", "Ptačí Oko (Chilli Paprička)", "8% šance na vystřelení červených ohňů, které blokují nepřátelské střely a způsobují kontaktní poškození#{{Luck}} 50% šance při 10 Štěstí#Ohně mohou zablokovat až 4 výstřely a/nebo způsobit poškození 4krát, než budou zničeny, a mohou trvat až 10 sekund"}, -- Bird's Eye
	[617] = {"617", "Magnetovec", "{{Magnetize}} 17% šance střílet slzy, které zmagnetizují nepřátele#{{Luck}} 100% šance při 5 Štěstí#Zmagnetizovaní nepřátelé přitahují blízké pickupy, projektily a nepřátele"}, -- Lodestone
	[618] = {"618", "Shnilé Rajče", "{{Bait}} 17% šance na slzu, která označí nepřátele#{{Luck}} 100% šance při 5 Štěstí#Označení nepřátelé jsou napadeni jinými nepřáteli"}, -- Rotten Tomato
	[619] = {"619", "Prvorozenství", "Pro každou postavu má jiný účinek"}, -- Birthright
	[620] = {"620", "", "<předmět neexistuje>"},
	[621] = {"621", "Červený Guláš", "↑ {{Damage}} +21.6 Větší Poškození#{{Heart}} Plné zdraví#Poškození pomine během následujících 3 minut#Čas se prodlužuje při zabíjení nepřátel během aktivního efektu"}, -- Red Stew
	[622] = {"622", "Genesis", "{{Warning}} JEDNO POUŽITÍ {{Warning}}#Odstraní všechny Izákovy předměty a pickupy#Teleportuje tě do jedinečné ložnice se pickupy, truhlami a padacími dveřmi#U každého ztraceného předmětu se zobrazí sada 3 položek, ze kterých si můžeš vybrat"}, -- Genesis
	[623] = {"623", "Ostrý Klíč", "{{Key}} +5 klíčů#Hoď svým klíčem, abys způsobil poškození, zničil překážky nebo otevřel dveře#Nepřátelé s ním zabití mají šanci vytvořit obsah truhly včetně předmětů"}, -- Sharp Key
	[624] = {"624", "Startovací Balíček Karet", "{{Card}} Vytvoří 5 náhodných karet"}, -- Booster Pack
	[625] = {"625", "Mega Houba", "Zgigantizuje tě na 30 sekund, a účinek přetrvává mezi místnostmi#Zatímco jsi obrem, máš:#↑ {{Damage}} +300 % násobitel poškození#↑ {{Range}} +7 Větší Dostřel#↓ {{Tears}} -60% Méně Slz#Poskytuje neporazitelnost a schopnost rozdrtit nepřátele a překážky#"}, -- Mega Mush
	[626] = {"626", "Kus Nože 1", "První část nožního spojence"}, -- Knife Piece 1
	[627] = {"627", "Kus Nože 2", "Vytvoří nožního spojence společně s {{Collectible626}}Kusem Nože 1#Poškozuje nepřátele#Dokáže otevřít určité masové dveře"}, -- Knife Piece 2
	[628] = {"628", "Úmrtní List", "{{Warning}} JEDNO POUŽITÍ {{Warning}}#Zavede tě do patra obsahujícího všechny předměty ve hře#Po sebrání předmětu se vrátíš do místnosti, ze které jsi přišel"}, -- Death Certificate
	[629] = {"629", "Robo-Moucha", "Orbitál, který vystřeluje ochráněné slzy"}, -- Bot Fly
	[630] = {"630", "", "<předmět neexistuje>"},
	[631] = {"631", "Sekáček Na Maso", "Rozdělí nepřátele v místnosti na 2 menší verze s mnohem menším zdravím"}, -- Meat Cleaver
	[632] = {"632", "Zlé Kouzlo", "↑ {{Luck}} +2 Zvýšení Štěstí#Učiní tě imunní vůči spálení, zmatku, strachu, jedu a toxickému plynu"}, -- Evil Charm
	[633] = {"633", "Dogma", "Udělí ti létání a jednorázový {{Collectible313}} efekt Svatého pláště#↑ {{Damage}} +2 Větší Poškození#↑ {{Speed}} +0.1 Zvýšení Rychlosti#Pokud má hráč méně než 6 srdcí, vyléčí ho kombinace Červených a Duševních Srdcí"}, -- Dogma
	[634] = {"634", "Očistec", "V místnosti s nepřáteli se na zemi objeví trhliny#Chůze přes tyto trhliny vyvolává explodující duchy"}, -- Purgatory
	[635] = {"635", "Steháček", "Pasivně vytvoří spojence, který se pohybuje směrem, kterým Izák střílí#Při použití si Izák s ním vymění místo a získá krátkou neporazitelnostTeleportování nad věcmi je může poškodit nebo zničit"}, -- Stitches
	[636] = {"636", "Klávesa R ", "{{Warning}} JEDNO POUŽITÍ {{Warning}}#Přivede tě zpět do prvního patra nového běhu#Předměty, statistiky a pickupy zůstanou nedotčeny"}, -- R Key
	[637] = {"637", "Knockout Kapky", "10% šance na vystřelení pěsti s extrémním zpětným rázem a efektem zmatku#{{Luck}} 100% šance při 9 Štěstí"}, -- Knockout Drops
	[638] = {"638", "Guma", "Hodíš gumu, která okamžitě zabije nepřítele#Zabrání nepříteli v spawnování po zbytek běhu#Způsobí 15 poškození bossům#Lze ji použít pouze jednou za podlaží"}, -- Eraser
	[639] = {"639", "Fuj Srdce", "{{RottenHeart}} Při použití ti udělí Shnilé Srdce"}, -- Yuck Heart
	[640] = {"640", "Urna duší", "Chrlí proud plamenů#Pokaždé když nepřítel zemře, získá náboj"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "V boji za tebou vytvoří řetěz slz#Slzy způsobí 3.5 poškození"}, -- Akeldama
	[642] = {"642", "Kouzelná Kůže", "Vytvoří předmět z seznamu předmětů aktuální místnosti#{{BrokenHeart}} Promění 1 místo pro srdce nebo 2 Duševní Srdce na Zlomené Srdce#Čím víckrát použita, tím vyšší šance, že nahradí budoucí předměty, pokud ji Izák zrovna nedrží (33% po prvním použití, 50% po 2, 100% po 3)#Menší šance, pokud je Kouzelná Kůže na podstavci na aktuálním patře#{{Player10}} Předmět na jedno použití pro Ztraceného"}, -- Magic Skin
	[643] = {"643", "Zjevení", "{{Chargeable}} Nabíjecí Svatý Laser#Poskytne ti let a {{SoulHeart}} 2 Duševní Srdce"}, -- Revelation
	[644] = {"644", "Cena Útěchy", "Zvyšuje tvoji nejnižší statistiku#Vytvoří buď {{Coin}} 3 mince, {{Bomb}} 1 bombu nebo {{Key}} 1 klíč v závislosti na tom, čeho máš nejmíň"}, -- Consolation Prize
	[645] = {"645", "Malý Teratom", "Teratoma orbitál#Blokuje střely#Způsobuje kontaktní poškození #Rozdělí se na menší verze sebe sama po 3 zásazích#Menší verze se rozpadají na modré pavouky#Znovu se objeví 5 sekund poté, co je úplně pryč"}, -- Tinytoma
	[646] = {"646", "Brimstonové Bomby", "{{Bomb}} +5 bomb#{{Collectible118}} Bomby vypouštějí 4 brimstonové lasery v hlavních 4 směrech#Ony lasery ti neublíží"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Voltovka", "Aktivní předměty se nedobíjejí při vyklízení místností#Místo toho se nabíjí při udělování poškození nepřátelům#Vzorec: 40 + 20 * patro"}, -- 4.5 Volt
	[648] = {"648", "", "<předmět neexistuje>"},
	[649] = {"649", "Švestička", "Malý Baby Plum spojenec#Pohybuje se diagonálně po místnosti a střílí za sebou slzy"}, -- Fruity Plum
	[650] = {"650", "Švestkova Flétna", "Vyvolá přátelskou Baby Plum v aktuální místnosti na 10 sekund"}, -- Plum Flute
	[651] = {"651", "Betlémská Hvězda", "Spojenec, který pomalu putuje směrem k {{BossRoom}} místnosti s Bossem#Pokud stojíš v její auře, uděluje:#↑ {{Damage}} +1 Větší Poškození#↑ {{Damage}} +20% násobič poškození#↑ {{Tears}} +150% Slzný násobič#Naváděné slzy"}, -- Star of Bethlehem
	[652] = {"652", "Ledové Dítě", "Spojenec, který se klouže po místnosti, když do něj strčíte#{{Freezing}} Zpomaluje, způsobuje kontaktní poškození a zmrazí příšery, které zabije"}, -- Cube Baby
	[653] = {"653", "Ustup", "Když předmět držíš, nepřátelé, kteří nejsou duchové, vytvářejí po smrti malé červené duchy#Při použití způsobí, že duchové explodují"}, -- Vade Retro
	[654] = {"654", "Falešné PHD", "{{BlackHeart}} +1 Černé Srdce#{{Pill}} Identifikuje všechny pilulky#Převádí dobré pilulky na špatné pilulky#↑ {{Damage}} Pilulky snižující statistiky ti dá Větší Poškození#{{BlackHeart}} Ostatní pilulky při použití vytvářejí Černá Srdce"}, -- False PHD
	[655] = {"655", "Zatoč a Vyhraj", "Přidává káču jako orbitál, který blokuje nepřátelské střely#Uděluje 10.5 kontaktního poškození za sekundu#Při použití se {{Speed}} ↑ Zvyšuje Rychlost o +0.5 a výrazně zvyšuje rychlost rotace orbitálů"}, -- Spin to Win
	[656] = {"656", "Damoklův Meč", "<Předmět není k dispozici>"}, -- Damocles
	[657] = {"657", "Vaskulitida", "Nepřátelé po smrti vybuchnou v slzy, které sdílí účinky Izákových slz"}, -- Vasculitis
	[658] = {"658", "Obrovská Buňka", "Vytváří mikro postavičky při utrpení poškození #Pronásledují a střílejí na nepřátele v okolí"}, -- Giant Cell
	[659] = {"659", "Tropikamid", "↑ {{Range}} +1.5 Větší Dostřel#{{Tearsize}} Zvětšení Slz"}, -- Tropicamide
	[660] = {"660", "Čtení z Karet", "Vytvoří dva portály na začátku každého patra#Portály zmizí, když opustíte místnost#{{ColorRed}}Červený: {{CR}}{{BossRoom}}Boss Místnost#{{ColorYellow}}Žlutý: {{CR}}{{TreasureRoom}}Pokladnice#{{ColorBlue}}Modrý: {{CR}}{{SecretRoom}}Tajná Místnost"}, -- Card Reading
	[661] = {"661", "Paterčata", "Vytvoří dočasného střílejícího společníka stojícího na místě, kde zemřel nepřítel#Max. 5 společníků"}, -- Quints
	[662] = {"662", "Pacifista (Cut item)", "<předmět neexistuje>"}, -- Pacifist (Cut item)
	[663] = {"663", "Zuby-Nehty", "Staneš se nesmrtelným každých 6 sekund na 1 sekundu#Bliká těsně před přechodem"}, -- Tooth and Nail
	[664] = {"664", "Záchvatové Přejídání", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#Jídlo ti vyléčí 3 Červená Srdce#Předměty se pravidelně cyklují mezi jídlem a předmětem, který by se tam jinak objevil#Sebrání jídla poskytuje: #↑ {{Damage}} dočasné +3.6 Větší Poškození#↑ 2 menší trvalé vylepšení#↓ {{Speed}} -0.03 Snížení Rychlosti"}, -- Binge Eater
	[665] = {"665", "Guppyho Oko", "Zobrazuje obsah {{Chest}} truhel, {{GrabBag}} pytlíků, obchodníků a ohnišť před jejich otevřením/rozbitím"}, -- Guppy's Eye
	[666] = {"666", "", "<předmět neexistuje>"},
	[667] = {"667", "Slamák", "{{Bomb}} +1 Bomba#{{Player14}} Vytvoří Keepera jako druhou postavu#Pokud zemře, objeví se modří pavouci a předmět je poté odstraněn#{{DevilRoom}} Dohody s ďáblem stojí peníze, dokud je Keeper naživu#!!! Může sbírat předměty, včetně těch příběhových, po smrti je trvale odstraní"}, -- Strawman
	[668] = {"668", "Tátův Dopis", "Zahájí příběhovou linii směřující Domů#Trinkety, které jsi nechal v předchozích {{TreasureRoom}} Pokladnicích nebo {{BossRoom}} Boss Místností se promění na {{Card78}} Zlomené Klíče"}, -- Dad's Note
	[669] = {"669", "Klobása", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Plné zdraví#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Tears}} +1.5 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#↑ {{Speed}} +0.2 Zvýšení Rychlosti#↑ {{Shotspeed}} +0.16 Vyšší Rychlost Střel#↑ {{Luck}} +1 Zvýšení Štěstí#↑ {{AngelDevilChance}} +6.9% šance na Ďábelskou nebo Andělskou Místnost#↑ {{PlanetariumChance}} +6.9% šance na Planetárium"}, -- Sausage
	[670] = {"670", "Možnosti?", "Pokud místnost udělí odměnu za vyčištění, budeš si moci vybrat ze dvou různých odměn#Vyzvednutím jedné způsobí to, že druhá zmizí"}, -- Options?
	[671] = {"671", "Cukrové Srdce", "Dává náhodné trvalé zvýšení statistik při léčení pomocí Červených Srdcí#{{Heart}} Vytvoří 1 Červené Srdce"}, -- Candy Heart
	[672] = {"672", "Kilo masa", "{{DevilRoom}} Předměty u Dohod s Ďáblem nyní stojí peníze#{{Shop}}Předměty v Obchodě nyní stojí životy#Spotřební materiál v Obchodech je sice zdarma, ale je obklopen hroty"}, -- A Pound of Flesh
	[673] = {"673", "Vykoupení", "{{SoulHeart}} + 1 Duševní Srdce#↑ {{Damage}} +1 Větší Poškození, když vstoupíš do {{DevilRoom}} Ďábelské Místnosti a nevezmeš si žádný předmět/pickup"}, -- Redemption
	[674] = {"674", "Duševní Pouta", "Po smrti je Izákův duch připoután k jeho mrtvému ​​tělu a může pokračovat v boji s půlkou srdce#Po 10 sekundách se vrátíš k životu#Předmět musí být dobit sebráním Duševního Srdce"}, -- Spirit Shackles
	[675] = {"675", "Popraskaný Orb", "Když utrpíš poškození:#Odemkne zamčené dveře v aktuální místnosti#Odhalí náhodnou místnost#Zničí všechny zbarvené kameny a kameny vedoucí do průlezu#Dokáže otevřít příběhové dveře#Může odhalit {{UltraSecretRoom}} Ultra Tajnou Místnost"}, -- Cracked Orb
	[676] = {"676", "Prázdné Srdce", "Když při začátku nového patra máš 1 Červené Srdce nebo méně, udělí ti {{EmptyHeart}} prázdné místo pro srdce#Žádný efekt pro postavy, které nemohou mít Červené Srdce"}, -- Empty Heart
	[677] = {"677", "Astrální Projekce", "Když dostaneš zásah, zastaví se čas na 3 sekundy#Izák se stane duchem a opouští své tělo#V podobě ducha získáš schopnost létat, spektrální slzy a také neguješ další zásah, který dostaneš"}, -- Astral Projection
	[678] = {"678", "Císařský Řez", "{{Chargeable}} Získáš nabíjecí útok, který vystřelí naváděné, spektrální zárodky"}, -- C Section
	[679] = {"679", "Malej Abaddón", "{{Collectible399}} Spojenec, který střílí mini útok Chřtánu Prázdnoty"}, -- Lil Abaddon
	[680] = {"680", "Montezumova Pomsta", "{{Chargeable}} Při střelbě nabíjíš krátký hovnový brimstonový laser#Vystřelí se za tebou"}, -- Montezuma's Revenge
	[681] = {"681", "Malý Portál", "Způsobuje kontaktní poškození a létá vpřed#Konzumuje pickupy ve své cestě#Každý z nich mu zvýší jeho velikost, poškození a vytvoří modrou mušku#Každé čtyři pickupy vyvolá portál do neprozkoumané místnosti"}, -- Lil Portal
	[682] = {"682", "Červí Kámoš", "Způsobí, že chapadlo vyletí ze země a zachytí nepřítele#Uchopení nepřátelé utrpí poškození, jsou zpomaleni a nemohou se pohybovat"}, -- Worm Friend
	[683] = {"683", "Kostní Ostruha", "Nepřátelé po smrti vytvoří levitující kosti#Blokují střely a způsobují kontaktní poškození"}, -- Bone Spurs
	[684] = {"684", "Hladová Duše", "Šance na vytvoření duchů po zabití nepřítele#Duchové pronásledují nepřátele a způsobují kontaktní poškození#Po 5 sekundách duch exploduje a způsobí 7 poškození okolním nepřátelům#Výbuch ti neudělí žádné poškození"}, -- Hungry Soul
	[685] = {"685", "Nádoba s Bludičkami", "Vytváří náhodné bludičky, které střílí různé slzy, blokují výstřely a způsobují kontaktní poškození#Počet vytvořených bludiček se zvyšuje, čím více předmět používáš"}, -- Jar of Wisps
	[686] = {"686", "Duševní Medailónek", "{{SoulHeart}} Poskytuje trvalé zvýšení statistik, kdykoli sebereš Duševní Srdce#{{SoulHeart}} Při sebrání tohoto předmětu vytvoří Duševní Srdce"}, -- Soul Locket
	[687] = {"687", "Hledač Přátel", "Vytvoří náhodné přátelské monstrum, které napodobuje Izákovy pohyby a útoky"}, -- Friend Finder
	[688] = {"688", "Vnitřní Dítě", "+1 život#Znovuzrození v aktuální místnosti s půl srdcem, masivním zmenšením velikosti a +0.2 Zvýšení Rychlosti"}, -- Inner Child
	[689] = {"689", "Poškozená Koruna", "Předměty na podstavcích rychle cyklují mezi 5 náhodnými předměty"}, -- Glitched Crown
	[690] = {"690", "Břišní Želé", "Způsobí, že se nepřátelé odráží od Izáka#Odrážení nepřátel do překážek způsobí poškození#50% šance, že Izák bude ignorovat kontaktní poškození#50% šance na odražení nepřátelských projektilů"}, -- Belly Jelly
	[691] = {"691", "Posvátný Orb", "Zabraňuje tomu, aby se předměty kvality {{Quality0}}/{{Quality1}} vytvořily#33% šance na zamíchání předmětů s kvalitou {{Quality2}} na kvalitu {{Quality3}} nebo {{Quality4}}"}, -- Sacred Orb
	[692] = {"692", "Krvežíznivé Pouto", "Vytvoří sadu bodců v {{DevilRoom}}Ďábelské Místnosti#Utrpení poškození z bodců může poskytnout odměnu:#35%: Nic#33%: ↑ {{Damage}} +0.5  Větší Poškození#15%: {{Coin}} 6 mincí#10%: {{BlackHeart}} 2 Černá Srdce#5%: {{DevilRoom}} Náhodný předmět z Ďábelské Dohody#2%: Transformace na Leviatana"}, -- Sanguine Bond //PERCENTAGES NOT CONFIRMED, updated in patch, taken from Wiki
	[693] = {"693", "Roj", "Udělí ti 8 orbitálních mušek, které se po zablokování výstřelu promění v Modré Mušky#Vytvoří novou mouchu za každou vyčištěnou místnost"}, -- The Swarm
	[694] = {"694", "Zlomené Srdce", "{{BrokenHeart}} Přidá ti 3 Zlomené Srdce#↑ {{Damage}} +0.25 Větší Poškození za každé Zlomené Srdce#Každý smrtelný zásah přidá další 2 zlomená srdce#Doopravdy zemřeš až při 12 zlomených srdcích"}, -- Heartbreak
	[695] = {"695", "Krvavý Závan", "Při poškození získáš {{Speed}} Zvýšení Rychlosti a {{Tears}} Více Slz pro aktuální patro#Maximálně až +1.02 Zvýšení Rychlosti a +3 Více Slz"}, -- Bloody Gust
	[696] = {"696", "Spása", "Poskytne ti svatozář, která vrhá paprsky světla na nepřátele uvnitř#Svatozář se zvětšuje, podle utrpeného poškození po zbytek patra#Tento bonus se každé patro resetuje"}, -- Salvation
	[697] = {"697", "Mizející Dvojče", "Spojenec, který se stane nepřátelským klonem Bosse, když vstoupíš do Boss Místnosti#Po jeho porážce se vytvoří další předmět#Klon je pomalejší a má 75 % původního zdraví Bosse"}, -- Vanishing Twin
	[698] = {"698", "Zvrácený Pár", "Dva spojenci, kteří stojí po tvém boku#Střílí slzy, které jsou stejné jako tvé, ale udělují pouze 37.5 % tvého poškození"}, -- Twisted Pair
	[699] = {"699", "Azazelův Hněv", "Vybuduje vztek pokaždé, když pročistíš místnost#Po 4 místnostech vystřelíš velký {{Collectible118}} Brimstone laser v následující místnosti"}, -- Azazel's Rage
	[700] = {"700", "Echo Komora", "Když Izák použije kartu, pilulku nebo runu, použije se také kopie posledních 3 karet/pilulek/run, které použil poté, co sebral Echo Komoru"}, -- Echo Chamber
	[701] = {"701", "Izákova Hrobka", "Na začátku každého patra vytvoří {{DirtyChest}} Starou Truhlu, jejíž odemknutí vyžaduje klíč#Může obsahovat {{SoulHeart}} Duševní Srdce, trinkety nebo předměty#Předměty jsou ze sady předmětů z {{AngelRoom}} Andělské Místnosti, nebo s tématikou Mámy a Táty"}, -- Isaac's Tomb
	[702] = {"702", "Pomstychtivá Duše", "Po utrpení poškození se objeví orbitální bludička, který přetrvává po celé patro#Maximálně 6 bludiček#Střílí slzy, ale neblokují výstřely"}, -- Vengeful Spirit
	[703] = {"703", "Esau ml.", "Výměna mezi aktuální postavou a Esauem mladším, který má {{BlackHeart}} 3 Černá Srdce, {{Damage}} +2 Větší Poškození a možnost létání#Postavy mají nezávislé předměty a zdraví#Při prvním použití získá náhodné pasivní předměty rovnající se počtu předmětů, které máš ty#{{Warning}} Umřeš úplně, když zemře jedna z postav"}, -- Esau Jr.
	[704] = {"704", "Zběsilost!", "Zběsilost po dobu 5 sekund:#↑ {{Speed}} +0.4 Zvýšení Rychlosti#↑ {{Damage}} +3 Větší Poškození#Omezuje útoky pouze na zbraň na blízko#Zabití během Zběsilosti prodlouží dobu trvání o 1 sekundu"}, -- Berserk!
	[705] = {"705", "Temné Umění", "Při použití získáš {{Speed}} +1 Zvýšení Rychlosti a procházíš nepřáteli a střelami po dobu 1 sekundy#Při doteku způsobíš 2x své poškození + 3.5 poškození za každého zasaženého nepřítele#Výbuch na konci efektu, který způsobí poškození rovnající se výši, kterou jsi způsobil ty"}, -- Dark Arts
	[706] = {"706", "Hlubina", "Zničí všechny předměty v místnosti a vytvoří spojeneckou útočnou mušku za každý předmět#Efekty mušek závisí na předmětech"}, -- Abyss
	[707] = {"707", "Hostina", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Vyléčí 1 Červené Srdce"}, -- Supper
	[708] = {"708", "Sešívačka", "↑ {{Damage}} +1 Větší Poškození#Zabraňuje Izákovi vystřelit slzy z jednoho oka"}, -- Stapler
	[709] = {"709", "Suplex!", "Umožňuje ti vrhnout se na nepřátele nebo Bosse, sebrat je a pak s nimi praštit do země#Místo dopadu lze ovládat#Bouchnutí způsobí 50 poškození a vyvolá kamenné vlny#Mění se poškození a oblast účinku podle velikosti hráče"}, -- Suplex!
	[710] = {"710", "Craftovací Pytlík", "Shromažďuje a pojme až 8 pickupů, které nelze vyhodit#Jakmile je 8 pickupů v pytlíku, můžeš s jeho použitím vytvořit nový předmět#Kvalita předmětu závisí na kvalitě a vzácnosti pickupů"}, -- Bag of Crafting
	[711] = {"711", "Převrácení", "Při vstupu do místnosti s předmětem na podstavci se zobrazí druhý duchařský předmět#Při použití Převrácení se skutečný a duchařský předmět prohodí#Oba předměty si lze vzít, pokud použiješ Převrácení po sebrání prvního předmětu#!!! Duchařský předmět zmizí, pokud vezmeš první předmět a místnost opustíš"}, -- Flip
	[712] = {"712", "Lemegeton", "Vytvoří spojeneckou orbitální bludičku, která hráči uděluje efekt předmětu, ale může být zničena#Předměty mají 25% šanci, že pocházejí ze sady předmětů pro aktuální místnost nebo ze sady předmětů z Pokladnice, Boss Místnosti nebo Obchodů"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Odstraňuje půlku srdce a vytváří krevní sraženinu jakožto spojence#Každý typ srdce vytváří sraženinu s různým HP, poškozením a efektem slz"}, -- Sumptorium
	[714] = {"714", "Přivolání", "Získáš zpět tělo Zapomenutého z jakékoliv vzdálenosti"}, -- Recall
	[715] = {"715", "Podrž To", "Uvnitř uchovává jednu hovnovou bombu, kterou lze použít později"}, -- Hold
	[716] = {"716", "Keeperův Pytel", "Vytvoří {{Coin}} 3 náhodné mince a {{Key}} 1 klíč#{{Shop}} Každé 3 mince utracené při nákupu přinese jednu z následujících možností:#↑ {{Damage}} +0.5 Větší Poškození#↑ {{Range}} +0.25 Větší Dostřel#↑ {{Speed}} +0.03 Zvýšení Rychlosti"}, -- Keeper's Sack
	[717] = {"717", "Keeperovi Příbuzní", "Kameny a ostatní kamenné překážky vytvoří 2 modré pavouky, když jsou zničeny#Kameny mohou příležitostně vytvořit modré pavouky, když jste v nepřátelské místnosti"}, -- Keeper's Kin
	[718] = {"718", "Keeperovo Roucho (Cut item)", "<Předmět Neexistuje>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Keeperova Bedna", "{{Shop}} Vytvoří náhodný předmět z Obchodu nebo pickup, který se musí koupit za jeho běžnou cenu"}, -- Keeper's Box
	[720] = {"720", "Sklenice Všeho Možného", "Vytvoří určitý pickup podle toho, kolik má nabití#Pokud je plně nabitá, má silný náhodný efekt#Odměny za nabití:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Způsobí, že všechny budoucí předměty budou 'chybné/rozbité'#Udělí jim zcela náhodné efekty"}, -- TMTRAINER
	[722] = {"722", "Osamělá Duše", "Spoutej nejbližšího nepřítele na 5 sekund a zabraň mu v pohybu a akci"}, -- Anima Sola
	[723] = {"723", "Roztáčející Kostka", "Transformuje všechny předměty v místnosti snížením jejich ID o jedno číslo"}, -- Spindown Dice
	[724] = {"724", "Hyperkoagulace", "{{Heart}} Po utrpení poškození od nepřítele se vyhodí poloviční nebo celé Červené Srdce směrem od tebe#Ono srdce se po 1.5 sekundy vypaří"}, -- Hypercoagulation
	[725] = {"725", "Syndrom Dráždivého Střeva", "Po způsobení dostatečného poškození, přestaneš útočit a spustíš náhodný efekt {{Player25}}Poskvrněného ???:#Vyhodíš náhodné hovno#Vytvoříš posilující kaluž#Jedovatý prdový mrak#Vyšleš 5 trollích bomb"}, -- IBS
	[726] = {"726", "Hemoptýza", "Dvojitým kliknutím střelby vykýchneš krev#Kýchnutí uděluje 150% poškození nepřátelům před tebou#1 sekunda pro cooldown#{{BrimstoneCurse}} Označení nepřátelé utrpí bonusové poškození od Brimstonu"}, -- Hemoptysis
	[727] = {"727", "Strašidelné Bomby", "{{Bomb}} +5 bomb#Bomby vytvářejí duchy, kteří způsobují kontaktní poškození a explodují po 10 sekundách"}, -- Ghost Bombs
	[728] = {"728", "Gello", "Vytvoří démona jakožto spojence, který je připojen k Izákovi#Napodobuje jeho slzy, statistiky a efekty"}, -- Gello
	[729] = {"729", "Bezhlavý Útok", "Můžeš vyhodit Izákovu, která způsobí kontaktní poškození a střílí slzy z místa, kam dopadla#Reaktivace předmětu nebo přejetí přes hlavu jí opět připojí k tělu"}, -- Decap Attack
	[730] = {"730", "Skleněné Oko", "↑{{Damage}} +0.75 Větší Poškození#↑ {{Luck}} +1 Zvýšení Štěstí"}, -- Glass Eye
	[731] = {"731", "Ječné Zrno", "!!! Platí pouze pro pravé oko#↑ {{Damage}} +28% Větší Poškození#↑ {{Range}} +7 Větší Dostřel#↓ {{Shotspeed}} -0.3 Menší Rychlost Střel"}, -- Stye
	[732] = {"732", "Mámin Prsten", "↑ {{Damage}} +1 Větší Poškození#{{Rune}} Při sebrání vytvoří náhodnou runu nebo kámen duší"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)


---------- Modifikátory ----------

EID.descriptions[languageCode].birthright ={
	{"Izák", "", "Všechny předměty cyklují mezi dvěma možnostmi"},
	{"Magdaléna", "", "↑ {{Heart}} +1 Zvýšení Zdraví#{{Heart}} Maximální limit srdcí je zvýšen na 18"},
	{"Kain", "", "↑ {{Luck}} +1 Zvýšení Štěstí#{{ArcadeRoom}} Všechna patra budou obsahovat vylepšenou Hernu kromě Temné Místnosti a Truhly#{{Collectible46}} Výrazně zvyšuje šance na výhru trinketu Šťastná Noha"},
	{"Jidáš", "", "{{Collectible34}} Kniha Belialova se stane pasivním předmětem podobně jako {{Collectible584}} Kniha Ctností#{{Collectible34}} Získáš Knihu Belialovu pokud ji momentálně nemáš#↑ {{Damage}} Posílení poškození, které od ní obdržíš, se mění podle množství nabití, které aktivní předmět nad ním má#Uděluje speciální efekty pro určité aktivní předměty"},
	{"???", "", "Duševní Srdce získané vylepšením zdraví se zdvojnásobí"},
	{"Eva", "", "Děvka Babylonská je aktivní bez ohledu na zdraví#Mrtvý Pták je stále aktivní bez nutného poškození"},
	{"Samson", "", "Krvavá Chtíč může získat 4 další zvýšení poškození ve stejných +0.2 intervalech, na nový maximální součet +14"},
	{"Azazel", "", "Azazelův Brimstone je mnohem širší, jako Mega Výstřel#Žádný vliv na poškození"},
	{"Lazar", "", "Pokaždé, když se Lazar oživí jako Povstalý Lazarus:#↑ {{Damage}} +7.2 Větší Poškození#Poškození mizí během další minuty#Zabíjení nepřátel, když je efekt aktivní, prodlužuje čas"},
	{"Eden", "", "Vytvoří 3 náhodné předměty z náhodných skupin předmětů# Můžeš vzít pouze jeden"},
	{"Ztracený", "", "Zabraňuje nalezení předmětů, které nejsou pro Ztraceného přínosné#Příklady: Předměty, které pouze udělují zdraví, létání, spektrální slzy nebo se aktivují po poškození"},
	{"Povstalý Lazarus", "", "↑ {{Damage}} +7.2 Větší Poškození#Poškození mizí během další minuty#Zabíjení nepřátel, když je efekt aktivní, prodlužuje čas#Tento efekt se spustí pokaždé, když se Lazarus oživí jako Povstalý Lazarus"},
	{"Temný Jidáš", "", "{{Collectible34}} Kniha Belialova se stane pasivním předmětem podobně jako {{Collectible584}} Kniha Ctností#{{Collectible34}} Získáš Knihu Belialovu pokud ji momentálně nemáš#↑ {{Damage}} Posílení poškození, které od ní obdržíš, se mění podle množství nabití, které aktivní předmět nad ním má#Uděluje speciální efekty pro určité aktivní předměty"},
	{"Lilith", "", "Spojenci jsou umístěni před Lilith"},
	{"Keeper", "", "+1 Zvýšení Zdraví#Zvyšuje maximální zdraví o 1"},
	{"Apollyón", "", "{{Collectible477}} Použití Prázdnoty má šanci vytvořit předmět, který byl dříve zkonzumován Prázdnotou#Bonusy statistik jsou zachovány#Čím více předmětů je zkonzumováno, tím vyšší je šance, že se předmět při použití objeví"},
	{"Zapomenutý", "", "Duše je odpoutaná a může se volně pohybovat"},
	{"Zapomenutého Duše", "", "Duše je odpoutaná a může se volně pohybovat"},
	{"Bethany", "", "Aktivace předmětu pomocí Duševních Srdcí je někdy zdarma"},
	{"Jákob", "", "Postava, která tento předmět sebere, získá kopie tří pasivních předmětů druhé postavy"},
	{"Ezau", "", "Postava, která tento předmět sebere, získá kopie tří pasivních předmětů druhé postavy"},
	{"Poskvrněný Izák", "", "Přidá 4 další místa pro pasivní předměty#Nespotřebuje místo pro sebe sama"},
	{"Poskvrněná Magdaléna", "", "{{Heart}} Přidá 1 další Červené Srdce, které se samo nespotřebovává"},
	{"Poskvrněný Kain", "", "Počet pickupů vzniklých sbíráním předmětů se zdvojnásobí"},
	{"Poskvrněný Jidáš", "", "{{Collectible705}} Zvyšuje rozsah, ve kterém Temné Umění zasahuje nepřátele a slzy"},
	{"Poskvrněný ???", "", "{{PoopPickup}} Zvyšuje maximální počet nesených hoven na 29"},
	{"Poskvrněná Eva", "", "Sraženiny z Červených Srdcí vytváří srdce, po jejich smrti, která zmizí po 2 sekundách"},
	{"Poskvrněný Samson", "", "Časovač Zběsilosti získá 3 sekundy namísto 1, když Poskvrněný Samson zabije nepřítele"},
	{"Poskvrněný Azazel", "", "{{Collectible726}} Zdvojnásobí velikost Hemoptýzového kýchacího útoku Poskvrněného Azazela"},
	{"Poskvrněný Lazar", "", "Druhá verze P. Lazaruse bude přítomná jako duch#Je imunní vůči poškození, ale může střílet slzy#Obě postavy získají efekt Prvorozenství"},
	{"Poskvrněný Eden", "", "Pasivní a aktivní předměty získané před Prvorozenstvím nebudou při utrpení poškození znovu zamíchány#Aktivní předměty přestanou být chráněny, pokud je zahodíš nebo vyměníš"},
	{"Poskvrněný Ztracený", "", "Poskytne život navíc, který oživí P. Ztraceného ve stejné místnosti a způsobí 200 poškození okolním nepřátelům#Může zasáhnout stejného nepřítele vícekrát"},
	{"Poskvrněná Lilith", "", "{{Collectible728}} Spojenci, kteří normálně sledují P. Lilith, se namísto toho budou chovat jako její Gello#Útok na blízko způsobí o 3 více poškození za každého spojence"},
	{"Poskvrněný Keeper", "", "Silně přitahuje mince vytvořené poražením nepřátel z krátké vzdálenosti#Žádný vliv na ostatní mince"},
	{"Poskvrněný Apollyón", "", "Pokud držíš tlačítko střelby, kobylky budou neustále poškozovat nepřátele namísto toho, aby se vracely"},
	{"Poskvrněný Zapomenutý", "", "{{Collectible714}} Poskvrněná Duše Zapomenutého získá schopnost Přivolání, která může získat tělo P. Zapomenutého vrátit zpět k tobě"},
	{"Poskvrněná Bethany", "", "Vytvoří čtyři náhodné předmětové bludičky v kvalitě {{Quality3}} a {{Quality4}} s výrazně vyšším počtem životů než normálně"},
	{"Poskvrněný Jákob", "", "Temný Esau se rozdělí na dva a vytvoří svého stínového klona#Oba se vždy vystřelí směrem k tobě a ve stejnou dobu#{{Collectible722}} Použití Osamělé Duše je oba spoutá"},
	{"Mrtvý Poskvrněný Lazarus", "", "Druhá verze P. Lazaruse bude přítomná jako duch#Je imunní vůči poškození, ale může střílet slzy#Obě postavy získají efekt Prvorozenství"},
	{"Poskvrněný Jákob 2", "", "Temný Esau se rozdělí na dva a vytvoří svého stínového klona#Oba se vždy vystřelí směrem k tobě a ve stejnou dobu#{{Collectible722}} Použití Osamělé Duše je oba spoutá"},
	{"Poskvrněná Duše Zapomenutého", "", "{{Collectible714}} Poskvrněná Duše Zapomenutého získá schopnost Přivolání, která může získat tělo P. Zapomenutého vrátit zpět k tobě"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Více Slz#↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Dinner
	[24] = "↑ +{{Damage}} 1 Větší Poškození#↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Dessert
	[25] = "↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel#↑ {{Range}} +1.5 Větší Dostřel#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Breakfast
	[26] = "↑ +{{Damage}} 1 Větší Poškození#↑ {{Range}} +1.5 Větší Dostřel#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Rotten Meat
	[456] = "↑ +{{Damage}} 1 Větší Poškození#↑ {{Luck}} +1 Zvýšení Štěstí#↓ {{Speed}} -0.03 Snížení Rychlosti", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0.2 Vyšší Rychlost Střel#↑ {{Luck}} +1 Zvýšení Štěstí#↓ {{Speed}} -0.03 Snížení Rychlosti", -- A Snack
	[707] = "↑ {{Tears}} +0.5 Více Slz#↑ {{Luck}} +1 Zvýšení Štěstí#↓ -0.03 Snížení Rychlosti", -- Supper
}

-- Buffy způsobené knihou Beliala s Jidášovým Prvorozenstvím
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Také vyvolává efekt {{Collectible35}}Necronomiconu", -- Kamikaze!
	[126] = "Také vyvolává efekt {{Collectible35}}Necronomiconu", -- Razor Blade
	[127] = "Uděluje poškození za celé další patro", -- Forget me Now
	[133] = "Uděluje trvalé poškození", -- Guppy's Paw
	[135] = "Způsobuje poškození při každém použití", -- IV Bag
	[147] = "Krumpáč má zvýšenou odolnost, zpětný ráz, lze jej použít rychleji, zapaluje nepřátele a při ničení hoven a překážek shazuje více pickupů", -- Notched Axe
	[186] = "Také vyvolává efekt {{Collectible126}}Žiletky", -- Blood Rights
	[282] = "Zanechává ohnivou stopu, která způsobuje kontaktní poškození a zapaluje nepřátele", -- How to Jump
	[290] = "Vydá jedno srdce za čas, udělí poškození a zanechá na zemi červenou kaluž", -- The Jar
	[295] = "Má šanci vyvolat účinek {{Collectible555}}Zlaté Žiletky", -- Magic Fingers
	[297] = "Vytvoří démonického spojence spolu s podlahově-založenými dropy", -- Pandora's Box
	[323] = "Vypuštěné slzy mají zvýšené poškození", -- Isaac's Tears
	[326] = "Místo vytvoření světla máš ohnivou auru a zároveň jsi neporazitelný#Dočasné Zvýšení Poškození a vyvolává efekt {{Collectible35}}Necronomiconu na dokonalý blok", -- Breath of Life
	[352] = "Při rozbití aktivuje Kniha Belialovu - poškození přetrvává, dokud není dělo opraveno", -- Glass Cannon
	[475] = "Znovu se objevíš jako Temný Jidáš, pokud máš život navíc", -- Plan C
	[482] = "Nahradí naposledy získaný předmět {{Collectible51}}Pentagramem", -- Clicker
	[487] = "Zvýšené poškození", -- Potato Peeler
	[536] = "Poskytne +10.8 dočasného poškození za každého obětovaného spojence, které pomalu mizí podobně jako u {{Collectible621}}Červeného Guláše", -- Sacrificial Altar
	[555] = "Poškodí vše v místnosti a aplikuje na ně efekt{{Collectible202}} Midasův Dotek", -- Golden Razor
	[577] = "Uděluje trvalé poškození", -- Damocles
	[582] = "Uděluje další poškození po zbytek patra na základě aktuálního množství použití", -- Wavy Cap
	[585] = "Změní výplatu na 2 Černá Srdce a 1 předmět z dohody s ďáblem#Stane se 3 srdci a 2 předměty, pokud byla uzavřena dohoda s ďáblem", -- Alabaster Box
	[622] = "Poskytne ti zdarma {{Collectible51}}Pentagram", -- Genesis
	[623] = "Také vyvolává efekt {{Collectible126}}Žiletky", -- Sharp Key
	[635] = "Vytvoří čáru u {{Collectible705}}Temného Umění mezi tebou a Steháčkem", -- Stitches
	[640] = "Místo toho spustí {{Collectible118}}Brimstone paprsek", -- Urn of Souls
	[642] = "Uděluje trvalé poškození", -- Magic Skin
    [653] = "Duchové zaútočí na nepřátele", -- Vade Retro
	[685] = "Udělí bludičky ze{{Collectible292}}Satanské Bible, které zvyšují šanci na Dohody s Ďáblem", -- Jar of Wisps
	[705] = "Umožňuje získat dočasné poškození", -- Dark Arts
	[710] = "Sebráním Červených srdcí má šanci je nahradit Černými Srdci", -- Bag of Crafting
	[729] = "Způsobí obrovské poškození a Více Slz, když se hlava oddělí", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Naváděné slzy", -- The Bible
	[34] = "Dvojité poškození slz", -- The Book of Belial
	[35] = "3.5% šance na zastrašující slzy#Efekt Necronomiconu při zničení", -- The Necronomicon
	[36] = "2.5% šance na E. Coli slzy", -- The Poop
	[37] = "Vytvoří rozptylové bomby při zničení", -- Mr. Boom
	[38] = "Rychlé, nepřesné slzy", -- Tammy's Head
	[39] = "5% šance na zkameňující slzy", -- Mom's Bra
	[40] = "Výbušné slzy#Při zničení exploduje", -- Kamikaze!
	[41] = "7.5% šance na zastrašující slzy", -- Mom's Pad
	[42] = "7.5% šance na Ipekakové slzy", -- Bob's Rotten Head
	[44] = "10% šance na slzy, které teleportují nepřátele#Bludičky blikají každých 5 sekund", -- Teleport!
	[45] = "20% šance na vytvoření srdce při zabití nepřítele ", -- Yum Heart
	[47] = "Poloviční poškození slz#Všechny bludičky vystřelí při použití 3 výbušné slzy směrem k zaměřovacímu kříži", -- Doctor's Remote
	[49] = "Nemůžou střílet slzy#Všechny Shoop da Whoop! bludičky vystřelí Brimstone při použití", -- Shoop da Whoop!
	[56] = "Rychlé, nízkorozsahové slzy#Z bludiček kape žlutá kaluž", -- Lemon Mishap
	[58] = "Imunní vůči projektilům", -- Book of Shadows
	[65] = "Když je zničena, vytvoří trollí bombu", -- Anarchist Cookbook
	[66] = "Po zničení zpomalí nepřátele na 3 sekundy", -- The Hourglass
	[77] = "Extra kontaktní poškození", -- My Little Unicorn
	[78] = "Nemůžou střílet slzy#Když je zničena, vytvoří spojence ze 7 Pečetí pro místnost, ", -- Book of Revelations
	[83] = "Knockback slzy", -- The Nail
	[84] = "Žádný speciální efekt", -- We Need to Go Deeper!
	[85] = "Vytvoří kartu při zničení", -- Deck of Cards
	[86] = "Zubní slzy", -- Monstro's Tooth
	[93] = "Antigravitační slzy#Šance na zastrašující slzy", -- The Gamekid
	[97] = "Vytvoří 1 až 8 bludiček: {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#Výbušné účinky jsou velmi pravděpodobné", -- The Book of Sin
	[102] = "Vytvoří 1 až 6 barevných bludiček s náhodnými efekty u každého běhu#Šance na jed, zkamenění, zmatek, spálení, slzy jako trollí bomby nebo vytvoření nepřátelského pavouka, když je bludička zničena#Všech 6 po zničení vytvoří pilulku", -- Mom's Bottle of Pills
	[105] = "Vytvoří bludičku navíc za zamíchaný předmět", -- The D6
	[107] = "Průrazné slzy", -- The Pinking Shears
	[111] = "Jedovatý prd při zničení", -- The Bean
	[123] = "Náhodné slzy", -- Monster Manual
	[124] = "Vytváří bludičku toho, co napodobuje", -- Dead Sea Scrolls
	[126] = "Bludička s vysokým počtem životů", -- Razor Blade
	[127] = "Bludička s nekonečnem životů pro nové patro", -- Forget Me Now
	[130] = "Nemůžou střílet slzy#Bludičky se nabíjí ve směru, ve kterém střílíš", -- A Pony
	[133] = "3 bludičky s vysokým počtem životů", -- Guppy's Paw
	[135] = "Žádný speciální efekt", -- IV Bag
	[136] = "7.5% šance pro označené slzy#Označení nepřátelé jsou napadeni jinými nepřáteli", -- Best Friend
	[137] = "1 bludička za odpálenou bombu#Slzy bludiček lze také odpálit na dálku", -- Remote Detonator
	[145] = "Místo mušek se vytvoří bludičky#Když je zničena, vytvoří modrou mušku", -- Guppy's Head
	[146] = "Naváděné slzy", -- Prayer Card
	[147] = "Při ničení kamenů může nahodně vytvořit 1 až 5 materiálních bludiček#Šance pro uhlí, zmatek, minci, dvojité poškození nebo laserové slzy", -- Notched Axe
	[158] = "Rychlé, cílené slzy", -- Crystal Ball
	[160] = "Při kontaktu vyvolává paprsky světla", -- Crack the Sky
	[164] = "Bludička pro jednu místnost", -- The Candle
	[166] = "Zničí všechny pickupy a u každého má šanci vytvořit bludičku", -- D20
	[171] = "7.5% šance na zpomalovací slzy", -- Spider Butt
	[175] = "Bludičky na dotyk otevírají zamčené truhly/dveře, včetně dveří Mega Satana, Výstupu a dveře u Mrtvoly", -- Dad's Key
	[177] = "Vytvoří bludičku na základě odměny, kterou vyhraješ", -- Portable Slot
	[181] = "10% šance na slzy Posvátného Světla", -- White Pony
	[186] = "Bludička s vysokým počtem životů", -- Blood Rights
	[192] = "Naváděné slzy", -- Telepathy for Dummies
	[263] = "15% šance, že nepřítel vytvoří runu při zabití#Při zničení vytvoří runu", -- Clear Rune
	[282] = "Až 6 stacionárních bludiček", -- How to Jump
	[283] = "Přetočí tvoje bludičky plus 1 náhodnou#Nezamíchá Knihu Ctností", -- D100
	[284] = "Odebere všechny bludičky a dá náhodnou bludičku za 2 vlastněné předměty#Nezamíchá Knihu Ctností", -- D4
	[285] = "10% šance na účinek D10 při zásahu", -- D10
	[286] = "15% šance, že nepřítel vytvoří karty při zabití#Při zničení vytvoří kartu", -- Blank Card
	[287] = "Efekt Popraskaného Orbu při zničení", -- Book of Secrets
	[288] = "Místo pavouků se vytvoří bludičky#Když je zničena, vytvoří modrého pavouka", -- Box of Spiders
	[289] = "Bludička pro jednu místnost#Slzy z červeného plamene", -- Red Candle
	[290] = "Místo toho vytvoří bludičku na srdce#Šance na vytvoření polovičního srdce, když je zničena", -- The Jar
	[291] = "Vytvoří bludičku navíc za každého nepřítele", -- Flush!
	[292] = "+10% šance na {{DevilRoom}}Ďábelksou nebo {{AngelRoom}}Andělskou místnost  za každou bludičku ze Satanské Bible", -- Satanic Bible
	[293] = "Při zničení vystřelí laser do 4 hlavních směrů", -- Head of Krampus
	[294] = "Bludička pro jednu místnost#Nemůžou střílet slzy#Efekt Máslové fazole při zničení", -- Butter Bean
	[295] = "Šance na minci, když je zničena", -- Magic Fingers
	[296] = "Žádný speciální efekt", -- Converter
	[297] = "Žádný speciální efekt", -- Pandora's Box
	[298] = "Nemůžou střílet slzy#Imunita vůči kontaktnímu poškození#Nezpůsobuje kontaktní poškození, pokud není aktivní Jednorožčí Pahýl", -- Unicorn Stump
	[323] = "Vytvoří 6 bludiček#3 sekundy životnost", -- Isaac's Tears
	[324] = "Slzy Playdoughové Sušenky", -- Undefined
	[325] = "Jiskřivé shlukové slzy", -- Scissors
	[326] = "Vytvoří bludičku při poškození", -- Breath of Life
	[338] = "Bludička pro jednu místnost#Bumerangové slzy", -- The Boomerang
	[347] = "20/20 slzy#Zdvojnásobí tvé ostatní bludičky", -- Diplopia
	[348] = "Při zničení vytvoří pilulku", -- Placebo
	[349] = "50% šance na vytvoření mince, když je zničena", -- Wooden Nickel
	[351] = "Všechny bludičky Mega Fazole při použití vyšlou kamennou vlnu#Zkamenění + jedovatý prd při zničení", -- Mega Bean
	[352] = "Všechny bludičky Skleněného Děla jsou zničeny, když je zničena jedna z nich#Přetrvává mezi místnostmi", -- Glass Cannon
	[357] = "Duplikuje tvé bludičky pro aktuální místnost", -- Box of Friends
	[382] = "Zajatí nepřátelé po smrti vytvoří normální, naváděcí, výbušnou nebo Brimstonovou bludičku v závislosti na jejich pohybu", -- Friendly Ball
	[383] = "Slzy bludiček lze odpálit a proměnit se v 6 Izákových slz#Když je zničena, propukne v Izákovy slzy#Přetrvává mezi místnostmi", -- Tear Detonator
	[386] = "5% šance, že slzy při zásahu zamíchá s objekty na mřížce (kromě hoven a TNT).", -- D12
	[396] = "Nemůžou střílet slzy#Každý portál má 1 bludičku", -- Ventricle Razor
	[406] = "Náhodné poškození a rychlost střelby", -- D8
	[419] = "20% šance na slzy, které teleportují nepřátele#Bludičky blikají každých 5 sekund", -- Teleport 2.0
	[421] = "Okouzlující prd když je zničena", -- Kidney Bean
	[422] = "30% šance na zkameňující slzy", -- Glowing Hour Glass
	[427] = "Neškodně poskakuje po místnosti a exploduje, když ji Izák zasáhne#Nemůže střílet slzy nebo způsobit kontaktní poškození", -- Mine Crafter
	[434] = "Místo mušek se vytvoří bludičky#Až 5 mušek udělá 1 bludičku se zvýšeným zdravím a poškozením", -- Jar of Flies
	[437] = "D7 účinek při prvním zásahu", -- D7
	[439] = "Žádný speciální efekt", -- Mom's Box
	[441] = "Slzy Malého Brimstona (vyžaduje uvolnění tlačítka pro střelbu)#Všechny bludičky Mega Výstřelu nepřetržitě střílejí během Mega Výstřelu", -- Mega Blast
	[475] = "8 bludiček s vysokým poškozením", -- Plan C
	[476] = "Vytvoří druhou bludičku, pokud nebyl duplikován žádné pickup", -- D1
	[477] = "Vytvoří bludičky ze všech absorbovaných aktivních předmětů#Sám o sobě bludičku nevytvoří", -- Void
	[478] = "Při zničení pozastaví všechny nepřátele a výstřely po dobu 3 sekund", -- Pause
	[479] = "Šance na vytvoření trinketu, když je zničena", -- Smelter
	[480] = "Zdraví bludičky se zvyšuje, čím více pickupů bylo zničeno", -- Compost
	[481] = "5% šance, že slzy promění nepřátele v náhodné bludičky", -- Dataminer
	[482] = "Vytvoří náhodnou bludičku", -- Clicker
	[483] = "8 bludiček, které při zničení vytvoří zlatou trollí bombu", -- Mama Mega!
	[484] = "Bludička pro jednu místnost#Nemůžou střílet slzy#Počkat Co? efekt při zničení", -- Wait What?
	[485] = "Všechny bludičky u Pokřivené Mince jsou zničeny nebo duplikovány, když je jedna poškozena", -- Crooked Penny
	[486] = "Nemůžou střílet slzy#Šance na negaci poškození, které Izák dostane", -- Dull Razor
	[487] = "Trvalé bludičky#Honí nepřátele, aby je zastřelili#Neblokuje výstřely ani nezpůsobuje kontaktní poškození", -- Potato Peeler
	[488] = "Vytvoří bludičku toho, co napodobuje (náhodné, pokud se nejedná o aktivní předmět)", -- Metronome
	[489] = "Kromě efektů napodobených kostek vytvoří normální bludičku", -- D Infinity
	[490] = "Vytvoří náhodný bludičku#Znovu se objeví po vyčištění místnosti, pokud je zničena", -- Eden's Soul
	[504] = "Bludička pro jednu místnost#Rychlé, cílené slzy", -- Brown Nugget
	[507] = "Šance zplodit bludičku za zabití", -- Sharp Straw
	[510] = "Monstrova plíce, Shnilé Dítě, Lokiho Rohy nebo Brimstone slzy", -- Delirious
	[512] = "Magnetické slzy", -- Black Hole
	[515] = "Vytvoří náhodnou bludičku#Znovu se objeví po vyčištění místnosti, pokud je zničena", -- Mystery Gift
	[516] = "Slzy se vystřelí do 8 směrů jako Rozprašovač", -- Sprinkler
	[521] = "Trojitý výstřel#Při nákupu, všechny kupónové slzy jsou zničeny", -- Coupon
	[522] = "Zachycené projektily se mění v bludičky", -- Telekinesis
	[523] = "Bludička se objeví pouze při odhození předmětů#Při zničení vytvoří náhodný pickup", -- Moving Box
	[527] = "Nemůžou střílet slzy#Když je místnost čistá, bludičky otvírají truhly/dveře", -- Mr. ME!
	[536] = "Převede všechny bludičky na půlky Červených Srdcí#Při obětování vytvoří silnou bludičku", -- Sacrificial Altar
	[545] = "Když je zničena, vytvoří přátelského Kosťáka", -- Book of the Dead
	[550] = "10% šance, že slzy vyvolají dupání na nepřítele", -- Broken Shovel
	[552] = "10% šance, že slzy vyvolají dupání na nepřítele#Also spawns a high HP wisp that cannot shoot tears", -- Mom's Shovel
	[555] = "15% šance a slzy Midasova Doteku", -- Golden Razor
	[556] = "Laserové slzy krátkého dosahu", -- Sulfur
	[557] = "+0.2 Štěstí za bludičku z Koláčku Štěstí", -- Fortune Cookie
	[577] = "Žádný speciální efekt", -- Damocles
	[578] = "Z bludiček kape žlutá kaluž", -- Free Lemonade
	[580] = "Šance na vytvoření Červených Dveří při vstupu do nové místnosti", -- Red Key
	[582] = "Maximálně 1 Lysohlávková bludička", -- Wavy Cap
	[584] = "Žádná výhoda z více kopií", -- Book of Virtues
	[585] = "8 bludiček", -- Alabaster Box
	[604] = "Bludička pro jednu místnost#3 bludičky vytvořené tam, kde něco přistane#10% šance na slzy zmatenosti", -- Mom's Bracelet
	[605] = "Žádný speciální efekt", -- The Scooper
	[609] = "Nepřemožitelná bludička#50% šance na zničení všech Věčných D6 bludiček při použití", -- Eternal D6
	[611] = "Zdraví a poškození se zvyšují na základě nabití", -- Larynx
	[622] = "3 bludičky#Odstraní všechny ostatní bludičky", -- Genesis
	[623] = "Žádný speciální efekt", -- Sharp Key
	[631] = "Rozdělí tvé bludičky na poloviny (polovina zdraví a poškození)#Bludička se zničí, pokud se rozdělí potřetí", -- Meat Cleaver
	[635] = "Zanechává za sebou nehybnou bludičku#Až 6 stacionárních bludiček", -- Stitches
	[636] = "Žádná bludička", -- R Key
	[638] = "Při kontaktu vymaže nepřátele (nesmaže bosse)", -- Eraser
	[639] = "Nemůžou střílet slzy#Vytvoří modrou mušku na vyčištěnou místnost", -- Yuck Heart
	[640] = "Šance na slzy z modrého plamene", -- Urn of Souls
	[642] = "Jedovaté slzy", -- Magic Skin
	[650] = "Když Baby Plum skáče diagonálně, všechny bludičky Švestkové Flétny to udělají také", -- Plum Flute
	[653] = "Žádná bludička#Červení duchové mohou střílet slzy", -- Vade Retro
	[655] = "Dočasné bludičky během používání", -- Spin to Win
	[685] = "Zdvojnásobí počet vytvořených bludiček plus 1", -- Jar of Wisps
	[687] = "Vytvoří náhodnou bludičku", -- Friend Finder
	[703] = "Žádný speciální efekt", -- Esau Jr.
	[704] = "Bludička s vysokým počtem životů#Nemůžou střílet slzy", -- Berserk
	[705] = "Bludička pro jednu místnost za každého zabitého nepřítele", -- Dark Arts
	[706] = "Bludička s vysokým počtem životů#Nemůžou střílet slzy", -- Abyss
	[709] = "Bludička pro jednu místnost#3 bludičky se vytvoří tam, kam dopadneš", -- Suplex
	[710] = "Vytvoří náhodnou bludičku při craftování", -- Bag of Crafting
	[711] = "Žádný speciální efekt", -- Flip
	[712] = "Předmětové bludičky můžou vystřelit naváděcí slzy", -- Lemegeton
	[713] = "Žádná bludička", -- Sumptorium
	[719] = "20% šance, že nepřítel při zabití vytvoří minci", -- Keeper's Box
	[720] = "Vytvoří náhodnou bludičku", -- Everything Jar
	[722] = "Obíhá spoutané nepřítele a střílí na ně#Bludička zemře, když zemře nepřítel", -- Anima Sola
	[723] = "Zamíchá tvoje bludičky na stejný typ", -- Spindown Dice
	[728] = "Všechny bludičky budou obíhat kolem Gella", -- Gello
	[729] = "Stacionární bludička", -- Decap Attack

}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
	[2] = "Tři normální kobylky", -- The Inner Eye
	[3] = "Fialová naváděná kobylka", -- Spoon Bender
	[4] = "Velká červená kobylka, která způsobí trojité poškození", -- Cricket's Head
	[6] = "Žlutá rychlá kobylka krátkého dosahu, která uděluje rychlejší poškození", -- Number One
	[7] = "Velká červená kobylka, která způsobí dvojité poškození", -- Blood of the Martyr
	[10] = "Dvě šedé kobylky, které způsobí poloviční poškození", -- Halo of Flies
	[13] = "Zelená kobylka, která tráví nepřátele", -- The Virus
	[103] = "Zelená kobylka, která tráví nepřátele", -- The Common Cold
	[118] = "Velká šedá kobylka, která je jinak normální", -- Brimstone
	[149] = "Velká, pomalá, zelená kobylka která udává x1.5 tvého poškození a tráví nepřátele", -- Ipecac
	[153] = "Čtyři normální kobylky", -- Mutant Spider
	[257] = "Oranžová, hořící kobylka, která zapaluje nepřátele", -- Fire Mind
	[305] = "Zelená kobylka, která tráví nepřátele", -- Scorpio
	[374] = "Azurová, zářící kobylka, která dokáže vytvořit paprsky světla, které způsobí 3x tvého poškození", -- Holy Light
	[494] = "Světle modrá kobylka s elektrickými oblouky, která způsobí 0.1 poškození za tik", -- Jacob's Ladder
	[559] = "Světle modrá kobylka s elektrickými oblouky, která způsobí 0.1 poškození za tik", -- 120 Volt
}


---------- Trinkety ----------

local repTrinkets={
	[1] = {"1", "Spolknutá Mince", "{{Coin}} Vytvoříš 1 minci při zásahu#{{Player14}} 0-1 u Keepera"}, -- Swallowed Penny
	[10] = {"10", "Vrtivý Červ", "Slzy se pohybují vlnivě#↑ {{Tears}} +0.4 Více Slz#Poskytuje spektrální slzy"}, -- Wiggle Worm
	[11] = {"11", "Prstencový Červ", "Slzy se pohybují ve spirálách vysokou rychlostí#↑ {{Tears}} +0.4 Více Slz#Poskytuje spektrální slzy"}, -- Ring Worm
	[15] = {"15", "Kamínek Štěstí", "{{Coin}} 33% šance na minci při ničení kamenů"}, -- Lucky Rock
	[16] = {"16", "Mámin Nehet", "Mámina Noha dupe na nepřátele každých 60 sekund"},
	[23] = {"23", "Pohřešující Plakát", "{{Player10}} Znovuzrodíš se jako Ztracený, když zemřeš v {{SacrificeRoom}}Obětovní Místnosti#Pokud je odemčený, znovuzrodíš se za něj i mimo Obětovní Místnosti#{{Player31}} Poskvrněný Ztracený se sám oživí"}, -- Missing Poster
	[24] = {"24", "Prdelní Mince", "{{Coin}} O 20 % vyšší šance, že se mince objeví z hovna#Prd při sbírání mincí#{{Poison}} Prd otráví a odrazí nepřátele a projektily"}, -- Butt Penny
	[26] = {"26", "Hákový Červ", "Slzy se pohybují v úhlech#↑ +0.4 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#Poskytuje spektrální slzy"}, -- Hook Worm
	[32] = {"32", "Lysohlávka", "25% šance na náhodný houbičkový efekt na místnost"}, -- Liberty Cap
	[33] = {"33", "Pupeční Šňůra", "Při polovičním červeném srdci nebo méně získáš#{{Collectible100}} Malého Stevena#{{Collectible318}} Vysoká šance, že se při poškození objeví v místnosti Blíženec"}, -- Umbilical Cord
	[39] = {"39", "Rakovina", "↑ {{Tears}} +1 Více Slz"},
	[48] = {"48", "Chybějící Stránka", "Při zásahu je 5% šance udělení 80 poškození všem nepřátelům v místnosti#{{Collectible35}} Černá Srdce a efekt podobný Necronomiconu způsobí 2x poškození"}, -- A Missing Page
	[49] = {"49", "Krvavá Mince", "{{HalfHeart}} 25% šance na vytvoření půlky srdce při sebrání mince"}, -- Bloody Penny
	[50] = {"50", "Spálená Mince", "{{Bomb}} 25% šance na vytvoření bomby při sebrání mince"}, -- Burnt Penny
	[51] = {"51", "Plochá Mince", "{{Key}} 25% šance na vytvoření klíče při sebrání mince"}, -- Flat Penny
	[58] = {"58", "Samsonovy Kadeře", "{{Damage}} 1/15 šance na +0.5 poškození při zabití nepřítele#{{Luck}} 100% šance při 10 Štěstí#Účinek trvá pro aktuální místnost"},
	[65] = {"65", "Tasemnice", "↑ {{Range}} +3 Větší Dostřel"}, -- Tape Worm
	[66] = {"66", "Líný Červ", "↓ {{Shotspeed}} -0.5 Menší Rychlost Střel"}, -- Lazy Worm
	[67] = {"67", "Prasklá Kostka", "50% na použití:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 nebo #{{Collectible166}} D20 při utrpení zásahu"},
	[69] = {"69", "Vybledlý Polaroid", "Náhodně maskuje hráče#Zmate nepřátele#Lze použít k otevření dveří do \"Domov\" patra"}, -- Faded Polaroid
	[80] = {"80", "Černé Pírko", "↑ {{Damage}} +0.5 Poškození za každý držený {{DevilRoom}} ďábelský předmět"}, -- Black Feather
	[92] = {"92", "Popraskaná Koruna", "↑ Zvýšení statistik tvých předmětů je o 20 % efektivnější"}, -- Cracked Crown
	[96] = {"96", "Červ Ouroboros", "Slzy se rychle pohybují ve spirále#↑ +0.4 Více Slz#↑ {{Range}} +1.5 Větší Dostřel#Poskytuje spektrální slzy#Šance na naváděcí slzy"}, -- Ouroboros Worm
	[98] = {"98", "Nosní Goblin (Sopel)", "{{Poison}} 10% šance na vystřelení naváděcí, lepkavé a jedovaté slzy#Způsobuje poškození každou sekundu#Drží se na 10 sekund"},
	[101] = {"101", "Tlumená Žárovka", "!!! Při držení zcela nenabitého aktivního předmětu:#↑ {{Damage}} +1.5 Poškození#↑ {{Speed}} +0.5 Rychlost#↑ {{Range}} +1.5 Rozsah#↑ {{Tears}} +0.5 Slzy#↑ {{Shotspeed}} +0.3 Vyšší Rychlost Střel#↑ {{Luck}} +2 Štěstí"},
	[107] = {"107", "Vraní Srdce", "Utrpené poškození bude ignorovat Duševní/Černá Srdce, což způsobí, že tvoje Červená Srdce budou vyčerpána jako první"},
	[110] = {"110", "Stříbrný Dolar", "{{Shop}} Obchody se nyní objeví v Lůně a Mrtvole"},
	[111] = {"111", "Krvavá Koruna", "{{TreasureRoom}} Pokladnice se nyní objeví v Lůně a Mrtvole"}, -- Bloody Crown
	[119] = {"119", "Kmenová Buňka", "Léčí polovinu tvých prázdných červených/kostěných srdcí při cestě do dalšího patra#Minimálně polovina srdce uzdravena"}, -- Stem Cell
	[125] = {"125", "Prodlužovačka", "Propojuje tvé spojence paprsky elektřiny#Způsobí 6 poškození na paprsek"}, -- Extension Cord
	[128] = {"128", "Kost z Prstu", "{{EmptyBoneHeart}} 4% šance získat Kostěné Srdce při poškození"}, -- Finger Bone
	[129] = {"129", "Jawbreaker (bonbón)", "10% šance na vystřelení zubů#Zuby způsobí 3.2x tvého poškození#100% šance při 9 Štěstí"}, -- Jawbreaker
	[130] = {"130", "Okousané Pero", "{{Slow}} 10% šance na vystřelení zpomalující slzy#{{Luck}} 100% šance při 18 Štěstí"}, -- Chewed Pen
	[131] = {"131", "Požehnaná Mince", "{{SoulHeart}} 17% šance na půlky Duševních Srdcí při sbírání mincí"}, -- Blessed Penny
	[132] = {"132", "Rozbitá Stříkačka", "25% šance na náhodný efekt injekční stříkačky na místnost"}, -- Broken Syringe
	[133] = {"133", "Krátká Pojistka", "Bomby umístěné Izákem explodují rychleji"}, -- Short Fuse
	[134] = {"134", "Obrovská Fazole", "Zvyšuje velikost prdu"}, -- Gigante Bean
	[135] = {"135", "Zapalovač", "{{Burning}} 20% šance na efekt hoření u nepřátel při vstupu do místnosti"}, -- A Lighter
	[136] = {"136", "Rozbitý Visací Zámek", "Dveře, klíčové bloky a zlaté truhly lze otevřít pomocí výbuchů#Může také otevřít dveře do Domova"}, -- Broken Padlock
	[137] = {"137", "Pomněnka", "Při vstupu do nového patra se ve startovní místnosti objeví až 4 nevyzvednuté pickupy z předchozího patra"}, -- Myosotis
	[138] = {"138", "'M", "Použití aktivního předmětu jej znovu zamíchá"}, -- 'M
	[139] = {"139", "Slzný Přívěšek", "{{Luck}} +3 Štěstí k slzným efektům založeným na štěstí"}, -- Teardrop Charm
	[140] = {"140", "Sodomské Jablko", "Sebráním červených srdcí je můžeš přeměnit na modré pavouky#Funguje i při plném zdraví#Účinek může pohltit srdce potřebná k uzdravení"}, -- Apple of Sodom
	[141] = {"141", "Zapomenutá Ukolébavka", "Zvyšuje rychlost střelby u spojenců"}, -- Forgotten Lullaby
	[142] = {"142", "Bethina Víra", "{{Collectible584}} Když vstoupíš do nového patra, vytvoří se 4 bludičky z Knihy Ctností"}, -- Beth's Faith
	[143] = {"143", "Starý Kondenzátor", "Zabraňuje nabíjení aktivního předmětu#{{Battery}} ovšem je 20% šance na vytvoření baterie (ne mikro-baterie!) po vyklizení místnosti#{{Luck}} 33% šance při 5 Štěstí"}, -- Old Capacitor
	[144] = {"144", "Mozkový Červ", "Slzy se otáčí o 90 stupňů a zaměří se na nepřátele, které mohly minout"}, -- Brain Worm
	[145] = {"145", "Dokonalost", "↑ {{Luck}} +10 Zvýšení Štěstí#Trinket se sám zničí, když utrpíš poškození"}, -- Perfection
	[146] = {"146", "Ďáblova Koruna", "{{RedTreasureRoom}} Pokladnice místo předmětů zdarma nyní obsahují dohody s ďáblem"}, -- Devil's Crown
	[147] = {"147", "Nabitá Mince", "17% šance na přidání jednoho náboje k tvému aktivnímu předmětu při sebrání mince"}, -- Charged Penny
	[148] = {"148", "Řetízek Přátelství", "Spojenci krouží kolem Izáka"}, -- Friendship Necklace
	[149] = {"149", "Tlačítko na Paniku", "Aktivuje tvůj aktivní předmět při poškození"}, -- Panic Button
	[150] = {"150", "Modrý Klíč", "Vstup do místnosti, který vyžaduje klíč, se dostaneš do místnosti připomínající Hushovu místnost#Místnost funguje jako mezi-místnost mezi dvěma místnostmi"}, -- Blue Key
	[151] = {"151", "Pilník", "Způsobí, že se hroty a bodliny otupí a činí je neškodnými#Ovlivňuje také {{CursedRoom}}Dveře do Proklété místnosti, mimické truhly a jakékoliv překážky s hroty"}, -- Flat File
	[152] = {"152", "Objektiv Dalekohledu", "{{PlanetariumChance}} +24% Planetární šance, pokud se žádné Planetárium ještě nevytvořilo#+9% pokud se Planetárium už vytvořilo#Planetária se nyní mohou vytvořit v Lůně a Mrtvole"}, -- Telescope Lens
	[153] = {"153", "Mámina Kadeř", "25% šance na náhodný efekt mámina předmětu na místnost"}, -- Mom's Lock
	[154] = {"154", "Sáček s Kostkami", "50% šance na udělení jednorázového spotřebního předmětu jako kostka za každou novou místnost#Kostka při odchodu z místnosti zmizí#Nezabírá slot na pilulky/kartu"}, -- Dice Bag
	[155] = {"155", "Svatá Koruna", "Vytvoří {{TreasureRoom}} Pokladnici a Obchod {{Shop}} v Katedrále"}, -- Holy Crown
	[156] = {"156", "Maminčin Polibek", "{{Heart}} Při držení udělí 1 místo pro srdcem#{{Player14}} Funguje také u Keepera"}, -- Mother's Kiss
	[157] = {"157", "Roztrhaná Karta", "Každých 15 střel vystřelíš {{Collectible149}} Ipekak + {{Collectible5}} Slza Mého Odrazu s velmi vysokou hodnotou rozsahu"}, -- Torn Card
	[158] = {"158", "Roztrhaná Kapsa", "Po zásahu Izák upustí 2 své mince, klíče nebo bomby#Pickupy můžou být nahrazeny jinými variantami, jako jsou zlaté klíče, nikláky, desetníky atd."}, -- Torn Pocket
	[159] = {"159", "Pozlacený Klíč", "{{Key}} +1 klíč při prvním sebrání#{{GoldenChest}} Nahradí všechny truhly (kromě Staré/Mega) za zlaté truhly#{{GoldenChest}} Zlaté truhly mohou obsahovat extra karty, pilulky nebo trinkety"}, -- Gilded Key
	[160] = {"160", "Pytlíček Štěstěny", "{{GrabBag}} Když vstoupíš do nového patra, vytvoří 1 pytlík"}, -- Lucky Sack
	[161] = {"161", "Zlá Koruna", "Vytvoří {{TreasureRoom}} Pokladnici {{Shop}} Obchod v Šeolu"}, -- Wicked Crown
	[162] = {"162", "Azazelův Pahýl", "{{Player7}} 50% šance, že se po vyklizení místnosti proměníš v Azazela#Účinek trvá do vyklizení a opuštění jiné místnosti"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "Všichni Dipové (malá hovínka) jsou teď přátelští#Po vyklizení místnosti vytvoří 1 náhodný Dipa"}, -- Dingle Berry
	[164] = {"164", "Prstencový Uzávěr", "{{Bomb}} Za každou umístěnou bombu vytvoří 1 bombu navíc"}, -- Ring Cap
	[165] = {"165", "Ne Ne!", "{{Coin}} V Lůně a mimo ni, nahradí všechny spawny klíčů a mincí za bombu, srdce, pilulku, kartu, cetku, baterii nebo nepřátelskou mušku."}, -- Nuh Uh!
	[166] = {"166", "Modelářská Hlína", "50% šance na udělení efektu náhodného pasivního předmětu v každé místnosti"}, -- Modeling Clay
	[167] = {"167", "Vyleštěná Kost", "25% šance na vytvoření přátelského Kosťáka při vyklizení místnosti"}, -- Polished Bone
	[168] = {"168", "Duté Srdce", "{{EmptyBoneHeart}} +1 Kostěné Srdce při vstupu do nového patra"}, -- Hollow Heart
	[169] = {"169", "Dětská Kresba", "{{Guppy}} Při držení se počítá jako 1 předmět do Guppyho transformace"}, -- Kid's Drawing
	[170] = {"170", "Křišťálový Klíč", "{{Collectible580}} 33% šance na vytvoření místností s červeným klíčem pokaždé, když vyčistíš místnost#Nižší pravděpodobnost výskytu už v červené místnosti"}, -- Crystal Key
	[171] = {"171", "Keeperova Smlouva", "{{DevilRoom}} 50% šance, že nabídky s ďáblem budou stát mince místo srdcí"}, -- Keeper's Bargain
	[172] = {"172", "Prokletá Mince", "{{Coin}} Teleportuje tě do náhodné místnosti po sebrání mince#Může tě teleportovat do tajných místností"}, -- Cursed Penny
	[173] = {"173", "Tvoje Duše", "{{DevilRoom}} Zdarma jeden předmět z ďáblovy dohody"}, -- Your Soul
	[174] = {"174", "Magnetka", "{{DevilChance}} +10% šance na Ďábelskou Místnost#Zabrání tomu, aby se Krampus objevil v Ďábelských Místnostech#Ďábelské Místnosti budou speciální varianty s více nabídkami, Černými Srdci a nepřáteli"}, -- Number Magnet
	[175] = {"175", "Podivný Klíč", "Odemkne průchod k Hushovi bez ohledu na dobu trvání běhu#Použití {{Collectible297}} Pandořiny Skříňky spotřebuje klíč a vytvoří 6 náhodných předmětů"}, -- Strange Key
	[176] = {"176", "Malá Sraženina", "Vytvoří 1 krevní sraženinu, jako spojence, která napodobuje Izákův pohyb, směr střelby a slzné efekty#Familiar se respawnuje každou místnost, pokud zemře"}, -- Lil Clot
	[177] = {"177", "Dočasné Tetování", "Vytvoří {{Chest}} truhlu po vyčištění {{ChallengeRoom}} Místnosti s Výzvou anebo předmět po vyčištění {{BossRushRoom}} Boss místnosti"}, -- Temporary Tattoo
	[178] = {"178", "Spolknutá M80", "50% šance že vybouchneš při utrpení poškození"}, -- Swallowed M80
	[179] = {"179", "RC Dálkové Ovládání", "Spojenci se pohybují pomocí pohybových vstupů zadané hráčem#Podržením tlačítka upuštění, držíš spojence na místě, jako u Jákoba a Ezaua"}, -- RC Remote
	[180] = {"180", "Nalezená Duše", "Spojenec, který následuje Izákovy přesné pohyby a střílí spektrální slzy#Kopíruje tvoje statistiky, způsobuje poloviční poškození#Zemře na jeden zásah#Znovu se zrodí na novém patře"}, -- Found Soul
	[181] = {"181", "Rozšiřující Balíček", "Když použiješ aktivní předmět, aktivuje další náhodný efekt aktivního předmětu s 1-2 nabitím"}, -- Expansion Pack
	[182] = {"182", "Bethina Esence", "Při vstupu do {{AngelRoom}} Andělské místnosti vytvoří 5 bludiček#25% šance na bludičku při darování žebrákům"}, -- Beth's Essence
	[183] = {"183", "Dvojčata", "50% šance na duplikování jednoho z Izákových spojenců při vstupu do nové místnosti#Pokud nemáš žádné spojence, udělí ti místo toho {{Collectible8}} brášku Bobbyho nebo {{Collectible67}} Ségru Maggy"}, -- The Twins
	[184] = {"184", "Adopční Papíry", "{{Shop}} Obchody nyní prodávají spojence za 10 mincí"}, -- Adoption Papers
	[185] = {"185", "Noha Kobylky", "17% šance, že se při zabití nepřítele objeví náhodná kobylka"}, -- Cricket Leg
	[186] = {"186", "Apollyónův Nejlepší Kámoš", "{{Collectible706}} Udělí ti 1 kobylku Hlubiny"}, -- Apollyon's Best Friend
	[187] = {"187", "Rozbité Brýle", "{{TreasureRoom}} 50% šance na přidání dalšího slepého předmětu do Pokladnice#50% šance na odhalení slepého předmětu v alternativních cestách"}, -- Broken Glasses
	[188] = {"188", "Kostka Ledu", "20% šance na zkamenění nepřátel při vstupu do místnosti#{{Freezing}} Zabití zkamenělého nepřítele jej zmrazí"}, -- Ice Cube
	[189] = {"189", "Bafometova Pečeť", "Po zabití nepřítele aktivuje štít na 1 sekundu#Zabíjení nepřátel, když jsi v ochraně, přidá 1 sekundu navíc#Maximálně lze nastřádat až 5 sekund neporazitelnosti "}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)
EID.descriptions[languageCode].goldenTrinket = "Zdvojnásobený účinek!"
EID.descriptions[languageCode].tripledTrinket = "Ztrojnásobený účinek!"
EID.descriptions[languageCode].quadrupledTrinket = "Zčtyřnásobený účinek!!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Použití aktivního předmětu teleportuje Izáka do {{ColorGold}} místnosti, která dosud nebyla vyklizena{{CR}}#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "mince", "pickupy" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Růženec je přidán do všech položek" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Umožňuje Izákovi si vzít zdarma předměty v obchodě{{CR}}#Šance proměnit se na obyčejný {{Trinket13}}Obchodní Kredit po každém nákupu" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Kameny mohou upustit 2 mince", "Kameny mohou upustit 2 mince", "Kameny mohou upustit 3 mince" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "Hovno", "Zlaté hovno" },
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "Půl Srdce", "Srdce", "Jedno a půl Srdce" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"-{{ColorGold}}30{{CR}}% bossovo zdraví#Vyléčí {{ColorGold}}2{{CR}} Červená Srdce při vstupu do {{BossRoom}}Boss Místnosti#{{ColorGold}}Odnímatelné!",
		"-{{ColorGold}}30{{CR}}% bossovo zdraví#Vyléčí {{ColorGold}}2{{CR}} Červená Srdce při vstupu do {{BossRoom}}Boss Místnosti#!!! Po sebrání již nelze odstranit#Lze odstranit pouze pomocí {{Trinket41}}Zápalek nebo spolknutím",
		"-{{ColorGold}}30{{CR}}% bossovo zdraví#Vyléčí {{ColorGold}}3{{CR}} Červená Srdce při vstupu do {{BossRoom}}Boss Místnosti#{{ColorGold}}Odnímatelné!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Zvýšení statistik Červa se zdvojnásobí", "Zvýšení statistik Červa se ztrojnásobí", "Zvýšení statistik Červa se zčtyřnásobí", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Pokud možné, efekt trinketu se zdvojnásobí", "Pokud možné, efekt trinketu se ztrojnásobí", "Pokud možné, efekt trinketu se zčtyřnásobí", },
	-- NO!
	[88] = { "Zabraňuje vytváření předmětů o kvalitě {{Quality0}}" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Nahradí všechny truhly (kromě Staré/Mega) zlatými truhlami#Zlaté truhly mohou obsahovat extra karty, pilulky nebo trinkety" },
	-- The Twins
	[183] = { "Může zkopírovat/udělit 2 spojence", "Může zkopírovat/udělit 2 spojence", "Může zkopírovat/udělit 3 spojence" },
}

---------- Karty ----------

local repCards={
    [2] = {"2", "I - Mág", "Pro aktuální místnost poskytuje: #Naváděné slzy#↑ {{Range}} +3 Dosah"}, -- I - The Magician
	[4] = {"4", "III - Císařovna", "Pro aktuální místnost poskytuje: #↑ {{Damage}} +2.35 Větší Poškození#↑ {{Speed}} +0.3 Zvýšení Rychlosti"},
	[12] = {"12", "XI - Síla", "Pro aktuální místnost poskytuje: #↑ {{Heart}} +1 Zvýšení Zdraví#↑ {{Damage}} +0.3 Větší Poškození#↑ {{Damage}} +50% Poškození#↑ {{Range}} +5.25 Větší Dostřel#↑ {{Speed}} +0.3 Zvýšení Rychlosti"}, -- XI - Strength
	[16] = {"16", "XV - Ďábel", "↑ {{Damage}} +2 Větší Poškození pro aktuální místnost"},
	[18] = {"18", "XVII - Hvězda", "{{TreasureRoom}} Teleportuje tě do Pokladnice#{{Planetarium}} Pokud tady je Planetárium, teleportuje tě to tam"},
	[27] = {"27", "Křížové Eso", "{{Bomb}} Promění všechny pickupy, truhly a ne-bossové nepřátele v bomby"}, -- Ace of Clubs
	[28] = {"28", "Kárové Eso", "{{Coin}} Promění všechny pickupy, truhly a ne-bossové nepřátele v mince"}, -- Ace of Diamonds
	[29] = {"29", "Pikové Eso", "{{Key}} Promění všechny pickupy, truhly a ne-bossové nepřátele v klíče"}, -- Ace of Spades
	[30] = {"30", "Srdcové Eso", "{{Heart}} Promění všechny pickupy, truhly a ne-bossové nepřátele v srdce"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Vytvoří padací dveře do dalšího patra#Vytvoří {{LadderRoom}} průlezný prostor při použití na dekoraci (tráva, kamínky, papíry, drahokamy, apod.)"},
	[39] = {"39", "Algiz", "Neporazitelnost na 20 sekund"}, -- Algiz
	[42] = {"42", "Chaos Karta", "Po použití odhodí kartu ve směru, kterým se pohybuješ#Okamžitě zabije JAKÉHOKOLI nepřítele, kterého se dotkne (kromě Delíria)"},
	[51] = {"51", "Svatá Karta", "{{HolyMantle}} Poskytuje efekt Svatého Pláště#(Jednou zabrání poškození)#Účinek trvá, dokud nedojde k poškození"}, -- Holy Card
	[52] = {"52", "Obrovský Růst", "↑ {{Damage}} +7 Větší Poškození#↑ {{Range}} +3 Větší Dostřel#Při chůzi po kamenech je zničíš#Zvětšení#Účinek trvá pro aktuální místnost"}, -- Huge Growth
	[54] = {"54", "Érová Chůze", "{{Slow}} Zpomalí nepřátele#↑ {{Speed}} +0.5 Zvýšení Rychlosti#↓ {{Shotspeed}} -1 Menší Rychlost Střel#Účinek trvá pro aktuální místnost"},
	[55] = {"55", "Střípek Runy", "{{Rune}} Aktivuje efekt náhodné runy#Onen efekt je ale slabší"}, -- Rune Shard
	[56] = {"56", "0 - Blázen?", "Upustí všechna tvoje srdce a pickupy na podlahu, takže ti zůstane půl srdce#Mince a bomby mohou být upuštěny jako {{Collectible74}}Čtvrťák nebo {{Collectible19}}Bum! pokud možno"}, -- 0 - The Fool?
	[57] = {"57", "I - Mág?", "Na 1 minutu ti poskytne auru, která odpuzuje nepřátele a projektily"}, -- I - The Magician?
	[58] = {"58", "II - Velekněžka?", "Mámina noha opakovaně dupe po dobu 1 minuty"}, -- II - The High Priestess?
	[59] = {"59", "III - Císařovna?", "Po dobu 1 minuty ti poskytne: #↑ {{Heart}} +2 Zvýšení Zdraví#↑ {{Tears}} +1.35 Více Slz"}, -- III - The Empress?
	[60] = {"60", "IV - Císař?", "Teleportuje tě do extra Boss místnosti s extra kořistí#Boss je vybrán ze dvou hlubších pater, než je to aktuální"}, -- IV - The Emperor?
	[61] = {"61", "V - Velekněz?", "{{EmptyBoneHeart}} Vytvoří 2 Kostěné Srdce"}, -- V - The Hierophant?
	[62] = {"62", "VI - Zamilovaní?", "Vytvoří 1 předmět z nabídky předmětů aktuální místnosti#{{BrokenHeart}} Promění 1 místo s červeným srdcem nebo 2 Duševní Srdce na zlomené srdce"}, -- VI - The Lovers?
	[63] = {"63", "VII - Vůz?", "Na 10 sekund se proměníš v neporazitelnou nehybnou sochu#↑ {{Tears}} Extrémní rychlost střelby po dobu trvání"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Spravedlnost?", "Vytvoří 2-4 zlaté truhly"}, -- VIII - Justice?
	[65] = {"65", "IX - Poustevník?", "Promění pickupy a předměty v místnosti na mince#{{Shop}} Hodnoty mincí se rovnají těm hodnotám jako těm v obchodu"}, -- IX - The Hermit?
	[66] = {"66", "X - Kolo štěstí?", "Náhodný efekt kostkové místnosti"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Síla?", "{{Weakness}} Nepřátelé v aktuální místnosti jsou oslabeni, zpomaleni a utrpí dvojnásobné poškození#Trvá 1 minutu"}, -- XI - Strength?
	[68] = {"68", "XII - Viselec?", "{{Player14}} Promění hráče na Keepera na 30 sekund#Udělí ti trojitý výstřel a zpomalení#Zabití nepřátelé vytváří náhodné mince"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Smrt?", "Vyvolá efekt {{Collectible545}}Knihy Mrtvých#Za každého zabitého nepřítele v místnosti vytvoří kostěné entity"}, -- XIII - Death?
	[70] = {"70", "XIV - Umírněnost?", "Sníš 5 náhodných pilulek"}, -- XIV - Temperance?
	[71] = {"71", "XV - Ďábel?", "Vyvolá efekt {{Collectible33}}Bible#Udělí {{Collectible390}}Serafima a létaní na 30 sekund"}, -- XV - The Devil?
	[72] = {"72", "XVI - Věž?", "Vytvoří 6 shluků náhodných kamenů a překážek#Shluky budou často obsahovat Označené Kameny"}, -- XVI - The Tower?
	[73] = {"73", "XVII - Hvězda?", "Odebere nejstarší pasivní předmět (ignoruje počáteční předmět)#Vytvoří 2 náhodné předměty z seznamu předmětů aktuální místnosti"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - Měsíc?", "Teleportuje tě do {{UltraSecretRoom}}Ultratajné místnosti#Cesta zpět bude tvořena červenými místnostmi"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - Slunce?", "Pro aktuální patro:#↑ Získáš létání a spektrální slzy#↑ {{Damage}} +1.5 Větší Poškození#{{BoneHeart}} Promění tvoje červené srdce na kostěné srdce#Aplikuje Prokletí Temnoty"}, -- XIX - The Sun?
	[76] = {"76", "XX - Soud?", "{{RestockMachine}} Vytvoří stroj na doplnění zásob"}, -- XX - Judgement?
	[77] = {"77", "XXI - Svět?", "Vytvoří padací dveře do {{LadderRoom}} prolézacího prostoru"}, -- XXI - The World?
	[78] = {"78", "Prasklý Klíč", "Jednorázové použití {{Collectible580}} Červeného Klíče"}, -- Cracked Key
	[79] = {"79", "Srdcová Královna", "{{Heart}} Vytvoří 1-20 červených srdcí"}, -- Queen of Hearts
	[80] = {"80", "Divoká Karta", "Kopíruje efekt naposledy použité pilulky, karty, runy, kamene duší nebo aktivovaného předmětu"}, -- Wild Card
	[81] = {"81", "Izákova Duše", "Zamíchá s předměty v místnosti#Po jedné sekundě se vrátí do původní podoby#Efekt se opakuje"}, -- Soul of Isaac
	[82] = {"82", "Magdalénina Duše", "Obklopí Izáka bublající červenou aurou pro aktuální místnost#{{HalfHeart}} Zabití nepřátelé vytvoří červené poloviční srdce, které zmizí do 2 sekund"}, -- Soul of Magdalene
	[83] = {"83", "Kainova Duše", "Otevře všechny dveře v místnosti#Vytváří červené místnosti pomocí {{Collectible580}}Červeného Klíče pro každý možný východ"}, -- Soul of Cain
	[84] = {"84", "Jidášova Duše", "Promění Izáka ve fantoma, který dokáže projít nepřáteli a ochromit je#Po několika sekundách na ně všechny zaútočí a získáš bonus ke škodě na cíl"}, -- Soul of Judas
	[85] = {"85", "??? Duše", "{{Poison}} Způsobíš 8 jedovatých prdů s hnědou kaluží#Poté položíš 7 Prdelních Bomb#Stání v kaluži ti dá: #↑ {{Tears}} +1.35 Slz#↑ {{Damage}} +1 Poškození"}, -- Soul of ???
	[86] = {"86", "Evina Duše", "Přiletí 14 Mrtvých Ptáků spojenců útočí na nepřátele# Platí pro aktuální místnost"}, -- Soul of Eve
	[87] = {"87", "Samsonova Duše", "Proměňíš se v zběsilého Samsona s útokem na blízko na 10 sekund#↑ {{Speed}} +0.4 Zvýšení Rychlosti#↑ {{Damage}} +3 Větší Poškození	"}, -- Soul of Samson
	[88] = {"88", "Azazelova Duše", "Aktivuje {{Collectible441}}Mega Výstřel na 7.5 sekundy"}, -- Soul of Azazel
	[89] = {"89", "Lazarova Duše", "Zemřeš a okamžitě se oživíš s půlkou srdce a neporazitelnost na nějaký čas#Předmět se automaticky použije při fatálním poškození (jako další život)"}, -- Soul of Lazarus
	[90] = {"90", "Edenova Duše", "Zamíchá podstavce a pickupy v aktuální místnosti#Zamíchané předměty jsou z náhodných seznamů předmětů"}, -- Soul of Eden
	[91] = {"91", "Duše Ztraceného", "{{Player10}} Zemřeš a proměňíš se v Ztraceného pro aktuální místnost#Můžeš si vzít jeden předmět z {{DevilRoom}}Ďábelské Místnosti zdarma, ostatní zmizí#Do dveří Mauzolea nebo Gehenny můžeš vstoupit zdarma"}, -- Soul of the Lost
	[92] = {"92", "Lilithina Duše", "Permanentně ti přidá 1 náhodného spojence"}, -- Soul of Lilith
	[93] = {"93", "Keeperova Duše", "{{Coin}} Vytvoří 1-25 náhodných mincí"}, -- Soul of the Keeper
	[94] = {"94", "Apollyónova Duše", "Vytvoří 15 náhodných mušek/kobylek"}, -- Soul of Apollyon
	[95] = {"95", "Duše Zapomenutého", "{{Player16}} Vytvoří Zapomenutého jako dočasnou sekundární postavu pro aktuální místnost"}, -- Soul of the Forgotten
	[96] = {"96", "Bethina Duše", "Vytvoří 6 {{Collectible584}} bludiček Knihy Ctností s náhodnými vlastnostmi"}, -- Soul of Bethany
	[97] = {"97", "Duše Jákoba a Ezaua", "{{Player20}} Vytvoří Ezaua jako dočasnou sekundární postavu pro aktuální místnost#Objeví se náhodnými pasivními předměty, které se rovnají tomu, kolik jich máš"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Karetní vylepšení způsobené Tarotovým Ubrusem
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Také poskytne efekt {{Collectible34}}Knihy Belialovy", -- I - The Magician
	[3] = "Druhá noha dopadá krátce po první", -- II - The High Priestess
	[4] = "Zdvojnásobení statistiky", -- III - The Empress
	[5] = "Pokud boss ještě nebyl poražen, udělí ti 1 Duševní Srdce", -- IV - The Emperor
	[6] = "{{SoulHeart}} Vytvoří 3 Duševní Srdce", -- V - The Hierophant
	[7] = "{{Heart}} Vytvoří 3 Červená Srdce", -- VI - The Lovers
	[8] = "Dvojnásobné trvání", -- VII - The Chariot
	[9] = "Zdvojené vytváření pickupů", -- VIII - Justice
	[10] ="Zabraňí tomu, aby se v obchodě objevil Greed#Promění obchod v normální obchod, pokud se v něm již s Greedem bojovalo", -- IX - The Hermit
	[11] = "Vytvoří 2 výherní automaty", -- X - Wheel of Fortune
	[12] = "Dvojnásobné zvýšení statistik, kromě multiplikátoru poškození", -- XI - Strength
	[14] = "Způsobí 80 poškození", -- XIII - Death
	[15] = "Vytvoří 2 stroje na darování krve", -- XIV - Temperance
	[16] = "Zdvojnásobení poškození", -- XV - The Devil
	[17] = "Vytvoří 12 trollích bomb", -- XVI - The Tower
	[18] = "Pokud jsi do Pokladnice předtím nevstoupil, budeš mít na výběr ze dvou předmětů", -- XVII - The Stars
	[21] = "Vytvoří 2 žebráky", -- XX - Judgement
	[56] = "Zahodí posledních 6 předmětů spolu s pickupy", -- 0 - The Fool?
	[59] = "↑ {{Heart}} +3 Zvýšení Zdraví", -- III - The Empress?
	[61] = "{{EmptyBoneHeart}} Vytvoří 3 Kostěné Srdce", -- V - The Hierophant?
	[62] = "{{BrokenHeart}} Přidá 2 Zlomená Srdce a vytvoří 2 předměty", -- VI - The Lovers?
	[64] = "Vytvoří 4-14 zlatých truhel", -- VIII - Justice?
    [65] = "Vytvoří 1 další minci", -- IX - The Hermit?
	[66] = "Vyvolá další efekt místnosti s kostkou", -- X - Wheel of Fortune?
	[68] = "Zdvojnásobí dobu účinku", -- XII - The Hanged Man?
	[70] = "{{Pill}} Sníš 10 náhodných pilulek", -- XIV - Temperance?
	[72] = "Vytvoří 14 kamenných shluků", -- XVI - The Tower?
	[73] = "Odebere 2 předměty a vytvoří 4", -- XVII - The Stars?
	[76] = "{{RestockMachine}} Vytvoří 2 stroje na doplnění zásob", -- XX - Judgement?
}

---------- Pilulky ----------

local repPills={
	[4] = {"3", "Bomby jsou klíčem", "Přehodí počet bomb s počtem klíčů#Zlaté bomby a klíče jsou také vyměněny"}, -- Bombs are Key
	[12] = {"11", "Menší Dostřel", "↓ {{Range}} -0.6 Menší Dostřel"}, -- Range Down
	[13] = {"12", "Větší Dostřel", "↑ {{Range}} +0.75 Větší Dostřel"}, -- Range Up
	[14] = {"13", "Snížení Rychlosti", "↓ {{Speed}} -0.12 Snížení Rychlosti"}, -- Speed Down
	[15] = {"14", "Zvýšení Rychlosti", "↑ {{Speed}} +0.15 Zvýšení Rychlosti"}, -- Speed Up
	[16] = {"15", "Méně Slz", "↓ {{Tears}} -0.28 Méně Slz"}, -- Tears Down
	[17] = {"16", "Více Slz", "↑ {{Tears}} +0.35 Více Slz"}, -- Tears Up
	[18] = {"17", "Snížení Štěstí", "↓ {{Luck}} -1 Snížení Štěstí"}, -- Luck Down
	[19] = {"18", "Zvýšení Štěstí", "↑ {{Luck}} +1 Zvýšení Štěstí"}, -- Luck Up
	[38] = {"37", "Retro Vize", "Rozpixeluje všechny sprity po dobu 30 sekund"},
	[42] = {"41", "Jsem ospalý...", "{{Slow}} Zpomalí všechny nepřátele a Izáka v místnosti"}, -- I'm Drowsy...
	[43] = {"42", "Jsem vzrušený!!!", "Zrychlí všechny nepřátele a Izáka v místnosti#Znovu se spustí po 30 a 60 sekundách"}, -- I'm Excited!!!
	[48] = {"47", "Menší Rychlost Střel", "↓ {{Shotspeed}} -0.15 Menší Rychlost Střel"}, -- Shot Speed Down
	[49] = {"48", "Vyšší Rychlost Střel", "↑ {{Shotspeed}} +0.15 Vyšší Rychlost Střel"}, -- Shot Speed Up
	[50] = {"49", "Experimentální Pilulka", "↑ Zvyší 1 náhodný stat#↓ Sniží 1 náhodný jiný stat#Nesníží se s {{Collectible75}}PHD, {{Collectible46}}Šťastnou Nohou nebo {{Collectible303}}Pannou#Nezvýší se s {{Collectible654}}falešným PHD"}, -- Experimental Pill
	[9999] = {"", "Zlatá Pilulka", "Efekt náhodné pilulky#Po několika použitích se zničí"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Otravný Prd", "{{Poison}} Otráví celou místnost"}, -- Bad Gas
	{"1", "Špatnej Trip", "Udělí ti poškození 2 srdcí#Stane se koňskou pilulkou s plným zdravím (+3 Duševní Srdce), pokud máš 1 srdce nebo míň"}, -- Bad Trip
	{"2", "Koule z Oceli", "{{SoulHeart}} +4 Duševní Srdce"}, -- Balls of Steel
	{"3", "Bomby Jsou Klíčem", "Přehodí počet bomb s počtem klíčů#Zvyšuje počet klíčů a bomb o 50% #Zlaté bomby a klíče jsou také vyměněny"}, -- Bombs are Key
	{"4", "Výbušný Průjem", "Zplodí nějaké mega naváděcí trollí bomby na tvoji pozici"}, -- Explosive Diarrhea
	{"5", "Plné Zdraví", "Plné zdraví#{{SoulHeart}} +3 Duševní Srdce"}, -- Full Health
	{"6", "Snížení Zdraví", "↓ -2 Snížení Zdraví#Stane se koňskou pilulkou se zvýšením zdraví, pokud máš 0 - 1 místo pro srdce"}, -- Health Down
	{"7", "Zvýšení Zdraví", "↑ {{EmptyHeart}} +2 prázdná místa pro srdce"}, -- Health Up
	{"8", "Našel Jsem Pilulky", "Žádný efekt"}, -- I Found Pills
	{"9", "Puberta", "Žádný efekt"}, -- Puberty
	{"10", "Pěkná Moucha", "{{Collectible279}} Přidá 1 velkou mušku jako orbitál#Není tu žádný horní limit"}, -- Pretty Fly
	{"11", "Menší Dostřel", "↓ {{Range}} -1.2 Menší Dostřel"}, -- Range Down
	{"12", "Větší Dostřel", "↑ {{Range}} +0.9 Větší Dostřel"}, -- Range Up
	{"13", "Snížení Rychlosti", "↓ {{Speed}} -0.24 Snížení Rychlosti"}, -- Speed Down
	{"14", "Zvýšení Rychlosti", "↑ {{Speed}} +0.3 Zvýšení Rychlosti"}, -- Speed Up
	{"15", "Méně Slz", "↓ {{Tears}} -0.56 Méně Slz"}, -- Tears Down
	{"16", "Více Slz", "↑ {{Tears}} +0.70 Více Slz"}, -- Tears Up
	{"17", "Snížení Štěstí", "↓ {{Luck}}-2 Snížení Štěstí"}, -- Luck Down
	{"18", "Zvýšení Štěstí", "↑ {{Luck}} +2 Zvýšení Štěstí"}, -- Luck Up
	{"19", "Telepilulky", "Teleportujě do náhodné místnosti"}, -- Telepills
	{"20", "48 Hodinová Energie!", "Plně nabije tvůj aktivní předmět#{{Battery}} Vytvoří 3-4 baterií"}, -- 48 Hour Energy!
	{"21", "Hematemeze", "Vyčerpá všechna místa pro srdce až na 1 celé#{{Heart}} Vytvoří 1-4 Červených Srdcí"}, -- Hematemesis
	{"22", "Paralýza", "Nemůžeš se pohnout na 4 sekundy"}, -- Paralysis
	{"23", "Vidím Navždy!", "{{SecretRoom}} Otevírá vchody do tajných místností na aktuálním patře#Poskytuje úplné zmapování aktuálního patra"}, -- I can see forever!
	{"24", "Feromony", "{{Charm}} Udělá každého nepřítele v místnosti natrvalo přátelským"}, -- Pheromones
	{"25", "Amnézie", "{{CurseLost}} Skryje mapu aktuálního patra"}, -- Amnesia
	{"26", "Citronová Párty", "Na zemi vytvoří velkou limonádovou louži, která poškozuje nepřátele"}, -- Lemon Party
	{"27", "Jsi Čaroděj Harry!", "Střílíš diagonálně po dobu 60 sekund"}, -- R U a Wizard?
	{"28", "Proti-Bol!", "Utrpíš pouze poloviční poškození pro aktuální místnost"}, -- Percs!
	{"29", "Závislák!", "Utrpíš plné poškození pro aktuální místnost"}, -- Addicted!
	{"30", "Re-Laxuj", "Vytváříš hovna při chůzi po dobu 4 sekund"}, -- Re-Lax
	{"31", "???", "Efekt Prokletí Bludiště pro aktuální patro"}, -- ???
	{"32", "Jedna tě Zvětší", "Zvětšíš se#Nemá vliv na tvůj hitbox"}, -- One makes you larger
	{"33", "Jedna tě Zmenší", "Zmenšíš se#Nemá vliv na tvůj hitbox"}, -- One makes you small
	{"34", "Zamoření!", "Vytvoří 2 modré pavouky za hovno v místnosti"}, -- Infested!
	{"35", "Zamoření?", "Vytvoří 2 modré pavouky za nepřítele v místnosti#Vytvoří 2-6 modrých pavouků když v místnosti není žádný nepřítel"}, -- Infested?
	{"36", "Power Pilulka!", "Efekt nesmrtelnosti na krátkou dobu#↑ {{Damage}} 7 Zvýšení Poškození#↑ {{Range}} +3 Větší Dostřel#Přetrvává pro aktuální místnost"}, -- Power Pill!
	{"37", "Retro Vize", "Rozpixeluje obrazovku po dobu 90 sekund"}, -- Retro Vision
	{"38", "Přátelé až do Konce!", "Vytvoří 6 modrých mušek"}, -- Friends Till The End!
	{"39", "X-Lax", "Vytvoří za tebou klouzavou hovnovou kaluž"}, -- X-Lax
	{"40", "Něco je špatně...", "Vytvoří zpomalující kaluž"}, -- Something's wrong...
	{"41", "Jsem ospalý...", "Zpomalí všechny nepřátele v místnosti"}, -- I'm Drowsy...
	{"42", "Jsem vzrušený!!!", "Zrychlí všechny nepřátele v místnosti"}, --I'm Excited!!!
	{"43", "Polk!", "Spolkneš aktuálně držený trinket a získáš jeho účinek natrvalo"}, -- Gulp!
	{"44", "Blink!", "{{Collectible149}} Vystřelíš salvu Ipekakových slz"}, -- Horf!
	{"45", "Mám Pocit, Jako Bych Kráčel po Slunečním Svitu!", "Krátká nesmrtelnost#Nepřátelé se tě bojí#Uděluješ 40 kontaktního poškození#Dva sežraní nepřátelé ti doplní půl srdce"}, -- Feels like I'm walking on sunshine!
	{"46", "Brk!", "Vybrkneš posledně použitou pilulku jako koňskou pilulku"}, -- Vurp!
	{"47", "Menší Rychlost Střel", "↓ {{Shotspeed}} -0.3 Menší Rychlost Střel"}, -- Shot Speed Down
	{"48", "Vyšší Rychlost Střel", "↑ {{Shotspeed}} +0.3 Vyšší Rychlost Střel"}, -- Shot Speed Up
	{"49", "Experimentální Pilulka", "↑ Zvyší 1 náhodný stat dvakrát#↓ Sniží 1 náhodný jiný stat dvakrát#Nesníží se s {{Collectible75}}PHD, {{Collectible46}}Šťastnou Nohou nebo {{Collectible303}}Pannou#Nezvýší se s {{Collectible654}}falešným PHD"}, -- Experimental Pill
	[9999] = {"", "Zlatá Pilulka", "Efekt náhodné koňské pilulky#Po několika použitích se zničí"}, -- Golden Pill
}

---------- Popisy Glitchnutých předmětů ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "s",

	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Černé Srdce",
	AddBombs = "{{Bomb}} {1} Bomba",
	AddCoins = "{{Coin}} {1} Mince",
	AddHearts = "Vyéčí {{Heart}} {1} Červené Srdce",
	AddKeys = "{{Key}} {1} Klíč",
	AddMaxHearts = "{{EmptyHeart}} {1} Místo pro srdce",
	AddSoulHearts = "{{SoulHeart}} {1} Duševní Srdce",

	-- Cache Flag names
	cacheFlagStart = "Může ovlivnit ",
	[0] = "{{Damage}} Poškození", "{{Tears}} Rychlost Střelby", "{{Shotspeed}} Rychlost Střel", "{{Range}} Dostřel", "{{Speed}} Rychlost", "Efekt Slz", "Barva Slz", "Létání", "Typ Útoku", "Spojenci", "{{Luck}} Štěstí", "Velikost", "Barva", "Obsah Truhly", [16] = "Všechny Statistiky",

	-- Spouštěče atributů
	chain = "Pak:{{CR}} ",
	active = "Při použití:#",
	pickup_collected = "Když sebereš pickup:#",
	enemy_kill = "Při zabití, šance na:#",
	damage_taken = "Když utrpíš poškození:#",
	entity_spawned = "Když se vytvoří {T1}:#",
	tear_fire = "Když vystřelíš slzu, šance na:#",
	enemy_hit = "Při zasažení nepřítele máš šanci:#",
	room_clear = "Při vyčištění místnosti:#",

	-- Efekty atributů
	area_damage = "Udělíš {1} poškození v oblasti kolem sebe",
	add_temporary_effect = "Získáš {1} za místnost",
	convert_entities = "Převést všechny {1} v místnosti na {2}",
	use_active_item = "Použít {1}",
	spawn_entity = "Vytvořit {1}",
	fart = "Prd o velikosti {1}",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "zapálená bomba",
	["5.0"] = "pickup",
	["5.10"] = "Srdce",
	["5.20"] = "Mince",
	["5.30"] = "Klíč",
	["5.40"] = "Bomba-pickup",
	["5.69"] = "Pytlík",
	["5.70"] = "Pilulka",
	["5.90"] = "Baterie",
	["5.300"] = "Karta",
	["9.-1"] = "nepřátelský projektil",
	["999.-1"] = "objekt mřížky",
	["1000.0"] = "efekt",

}

---------- Smíšený text ----------

EID.descriptions[languageCode].poopSpells = {
	{"Hovno", "Normální hovno které může vytvořit pickupy"},
	{"Kukuřičný Hovno", "Vytváří modré mušky pokud je neporušené"},
	{"Hořící Hovno", "Způsobuje kontaktní poškození pokud je neporušené#Při zničení za sebou zanechává oheň"},
	{"Kamenné Hovno", "Při hození může způsobit poškození 3krát#K jeho zničení je potřeba hodně zásahů"},
	{"Smradlavé Hovno", "Vytváří jedovatý oblak#!!! Oblak exploduje, pokud se dotkne ohně!"},
	{"Černé Hovno", "Vytváří zpomalující kaluž#Způsobí 10 poškození a při zničení zmate všechny nepřátele"},
	{"Svaté Hovno", "{{Collectible543}} Vytvoří bílé hovno#Zatímco jsi uvnitř aury hovna:#↑ {{Damage}} +20% Větší Poškození#↑ {{Tears}} +150% Více Slz#Naváděné slzy#Šance zablokovat poškození"},
	{"Hnědá Kaluž", "Zanecháš po sobě kaluž#Stání na kaluži ti zvýší rychlost střelby a poškození#Pokud se kaluž dotýká jiných hoven, získává jejich atributy"},
	{"Prd", "Odtlačí okolní nepřátele a projektily zpět a vytvoří jedovatý oblak#!!! Oblak exploduje, pokud se dotkne ohně!"},
	{"Bomba", "Normální vrhatelná bomba"},
	{"Výbušný Průjem", "Během několika příštích sekund vytvoříš na svojí pozici 5 zapálených bomb"},
}

EID.descriptions[languageCode].VoidShopText = "Pokud se absorbuje hned po pickupu, získáš:"
EID.descriptions[languageCode].VoidOptionText = "bude místo toho pohlcen"
EID.descriptions[languageCode].VoidNames = {"Zvýšení Rychlosti {{Speed}}", "Více Slz {{Tears}}", "Větší Poškození {{Damage}}", "Větší Dostřel {{Range}}", "Vyšší Rychlost Střel {{Shotspeed}}", "Zvýšení Štěstí {{Luck}}"}


EID.descriptions[languageCode].spindownError = "Předmět zmizí"

EID.descriptions[languageCode].CraftingBagContent = "Pytlík:"
EID.descriptions[languageCode].CraftingRoomContent = "Místnost:"
EID.descriptions[languageCode].CraftingFloorContent = "Patro:"

EID.descriptions[languageCode].CraftingBagQuality = "Kvalita Pytlíku:"
EID.descriptions[languageCode].CraftingBestQuality = "Nejlepší kvalita:"

EID.descriptions[languageCode].CraftingHideKey = "Skrýt:"
EID.descriptions[languageCode].CraftingPreviewKey = "Náhled:"
EID.descriptions[languageCode].CraftingPreviewBackup = "!!! Pokud je tento předmět uzamčen, změní se na"

EID.descriptions[languageCode].CraftingResults = "(Posouvání: Podrž {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Uzamknout: {{ButtonX}}, Obnovit: {{ButtonB}}, Resetovat pytlík: Podržet {{ButtonRB}})"

EID.descriptions[languageCode].BlankCardCharge = "Nabití Prázdné Karty:"
EID.descriptions[languageCode].BlankCardQCard = "Teleportuje tě do JSEM ERROR místnosti#Prázdná Karta a ?-Karta bude zničena"
EID.descriptions[languageCode].ClearRuneCharge = "Nabití Čisté Runy:"
EID.descriptions[languageCode].PlaceboCharge = "Nabití Placeba:"
EID.descriptions[languageCode].FlipItemToggleInfo = "(Podržením tlačítka {{ButtonSelect}} (Mapa) zobrazíš popis)"


EID.descriptions[languageCode].FalsePHDHeart = "{{BlackHeart}} Vytvoří 1 Černé Srdce"
EID.descriptions[languageCode].FalsePHDDamage = "{{Damage}} +0.6 Větší Poškození"
EID.descriptions[languageCode].FalsePHDHorseDamage = "{{Damage}} +1.2 Větší Poškození"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Namísto toho spotřebuje klíč a vytvoří 6 předmětů z náhodných seznamů předmětů"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}!!! VAROVÁNÍ !!!"
EID.descriptions[languageCode].AchievementWarningText = "Achievementy jsou zakázány!#Abys  povolil postup a achievementy, musíš nejprve zabít mámu (Hloubka II) bez aktivovaných modů.#(If you've defeated Mom, this message is a bug and can be ignored)#(Pokud jsi porazil mámu, tato zpráva je chyba a lze ji ignorovat)#(Toto varování lze vypnout v konfiguraci)"

EID.descriptions[languageCode].OldGameVersionWarningText = "Tvoje verze Repentance není aktuální!#Oficiálně je podporována pouze ta nejnovější verze (1.7.9b)#(Toto varování lze vypnout v konfiguraci)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Modované předměty by mohly způsobit nepřesnost výpočtu receptu na výrobu!#Použij režim zobrazení Žádné recepty (Item Probability) nebo vypni zobrazení u Craftovacího Pytlíku, pokud jsou tvé recepty nesprávné#(Toto varování lze deaktivovat v konfiguraci)"


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

EID.descriptions[languageCode].ResultsWithX = "(Výsledky s {1})"

EID.descriptions[languageCode].HoldMapTitle = "Item Reminder"
-- the Hold Map description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].HoldMapHeader = " Result"

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Normal Room", "Shop", "I AM ERROR Room", "Treasure Room", "Boss Room", "Miniboss Room", "Secret Room", "Super Secret Room", "Arcade Room", "Curse Room", "Challenge Room", "Library", "Sacrifice Room", "Devil Room", "Angel Room", "Crawlspace Room", "Boss Rush Room", "Isaac's Room", "Barren Room", "Chest Room", "Dice Room", "Black Market", "Exit Room", "Planetarium", "Teleporter Entrance", "Teleporter Exit", "Alt Path Trapdoor", "Blue Key Room", "Ultra Secret Room",
-- Not technically room types but still potentially useful to have localized
[666] = "Angel/Devil Room", [1024] = "Red Room", [1025] = "Special Red Room" }

-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "None",

	["5.10"] = "{{Heart}} Heart",
	["5.10.1"] = "{{Heart}} Heart", ["5.10.2"] = "{{HalfHeart}} Half Heart", ["5.10.3"] = "{{SoulHeart}} Soul Heart", ["5.10.4"] = "{{EternalHeart}} Eternal Heart", ["5.10.5"] = "{{Heart}} Double Heart", ["5.10.6"] = "{{BlackHeart}} Black Heart", ["5.10.7"] = "{{GoldHeart}} Gold Heart", ["5.10.8"] = "{{HalfSoulHeart}} Half Soul Heart", ["5.10.9"] = "{{Heart}} Scared Heart", ["5.10.10"] = "{{BlendedHeart}} Blended Heart", ["5.10.11"] = "{{EmptyBoneHeart}} Bone Heart", ["5.10.12"] = "{{RottenHeart}} Rotten Heart",

	["5.20"] = "{{Coin}} Coin",
	["5.20.1"] = "{{Crafting8}} Penny", ["5.20.2"] = "{{Crafting9}} Nickel", ["5.20.3"] = "{{Crafting10}} Dime", ["5.20.4"] = "{{Crafting8}} Double Penny", ["5.20.5"] = "{{Crafting11}} Lucky Penny", ["5.20.6"] = "{{Crafting9}} Sticky Nickel", ["5.20.7"] = "{{Crafting26}} Golden Penny",

	["5.30"] = "{{Key}} Key",
	["5.30.1"] = "{{Crafting12}} Key", ["5.30.2"] = "{{Crafting13}} Golden Key", ["5.30.3"] = "{{Crafting12}} Key Ring", ["5.30.4"] = "{{Crafting14}} Charged Key",

	["5.40"] = "{{Bomb}} Bomb",
	["5.40.1"] = "{{Crafting15}} Bomb", ["5.40.2"] = "{{Crafting15}} Double Bomb", ["5.40.3"] = "{{Crafting15}} Troll Bomb", ["5.40.4"] = "{{Crafting16}} Golden Bomb", ["5.40.5"] = "{{Crafting15}} Megatroll Bomb", ["5.40.7"] = "{{Crafting17}} Giga Bomb",

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