---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:d
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line	
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ro_ro"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "Ochiul Interior", "↓ {{Tears}} {{ColorGreen}}x0.51{{CR}} Viteză de atac#Isaac atacă cu 3 lacrimi"}, -- The Inner Eye
	[5] = {"5", "Reflexia Mea", "↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}x2{{CR}} {{ColorGreen}}+ 1.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}x1.6{{CR}} Viteza lacrimilor#↓ {{Luck}} {{ColorRed}}-1{{CR}} Noroc#Lacrimile au un efect de bumerang"}, -- My Reflection
	[6] = {"6", "Numărul Unu", "↑ {{Tears}} {{ColorGreen}}+1.5{{CR}} Viteză de atac#↓ {{Range}} {{ColorRed}}-1.5{{CR}} Distanță#↓ {{Range}} {{ColorGreen}}x0.8{{CR}} Distanță"}, -- Number One
	[12] = {"12", "Ciuperca Magică", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#Crește mărimea#{{HealingRed}} Vindecă inimile"}, -- Magic Mushroom
	[13] = {"13", "Virusul", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#{{Poison}} La atingerea inamicilor îi otrăvești#Isac cauzează 48 daune de contact pe secundă"}, -- The Virus
	[14] = {"14", "Furie cu steroizi", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță"}, -- Roid Rage
	[18] = {"18", "Un Leu", "{{Coin}} {{ColorGreen}}+100{{CR}} Bănuți"}, -- A Dollar
	[22] = {"22", "Prânz", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Lunch
	[23] = {"23", "Cină", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Dinner
	[24] = {"24", "Desert", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Dessert
	[25] = {"25", "Mic Dejun", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Breakfast
	[26] = {"26", "Carne Stricată", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Rotten Meat
	[29] = {"29", "Chiloții Mamei", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#Oferă 3-6 muște albastre"}, -- Mom's Underwear
	[30] = {"30", "Tocurile Mamei", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#Isaac cauzează 24 daune la contact pe secundă"}, -- Mom's Heels
	[31] = {"31", "Rujul Mamei", "↑ {{Range}} {{ColorGreen}}+3.75{{CR}} Distanță#{{UnknownHeart}} Oferă 1 inimă aleatorie pe jos"}, -- Mom's Lipstick
	[37] = {"37", "Dl. Bum", "Aruncă o bombă mare sub Isaac, care cauzează 185 de daune"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Provoacă o explozie mare la locația lui Isaac#Cauzează 185 de daune"}, -- Kamikaze!
	[41] = {"41", "Tamponul Mamei", "{{Fear}} Provoacă frică tuturor inamicilor din cameră#Oferă o muscă albastră"}, -- Mom's Pad
	[42] = {"42", "Capul Putred al lui Bob", "Capul este aruncat la folosire#{{Poison}} La aterizare capul explodează și creează un nor otrăvitor#Cauzează daunele lui Isac {{ColorGreen}}+ 185{{CR}}"}, -- Bob's Rotten Head
	[46] = {"46", "Picior Norocos", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#Șanse mai mari să câștigi la păcănele#Crește șansa de obținere a unui obiect la finalizarea unei camere#Transformă toate pastilele rele în pastile bune"}, -- Lucky Foot
	[49] = {"49", "Shoop da Whoop!", "Următoarea lacrimă este înlocuită cu o rază asemănătoare cu cea de la Brimstone#Provoacă de 24 de ori daunele lui Isac pe durata a 0,83 secunde"}, -- Shoop da Whoop!
	[52] = {"52", "Dr. Făt", "↓ {{Tears}} {{ColorGreen}}x0.4{{CR}} Viteză de atac#{{Bomb}} Isac trage cu bombe în loc de lacrimi#{{Damage}} Aceste bombe provoacă de {{ColorGreen}}10{{CR}} ori daunele lui Isac#Dacă rezultatul depășește 60, ele vor provoca {{ColorGreen}}5x{{CR}} {{ColorGreen}}+ 30{{CR}}"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Obiectele sunt atrase de Isac#Deschide cuferele de la distanță(2 pătrate), ignoră daunele provocate de cuferele capcană"}, -- Magneto
	[55] = {"55", "Ochiul Mamei", "Șansă de 50% să arunci cu o lacrimă în spate#{{Luck}} Șansă de 100% la 5 noroc"}, -- Mom's Eye
	[59] = {"59", "Cartea lui Belial", "{{AngelDevilChance}} {{ColorGreen}}+12.5%{{CR}} șansă de pacturi cu diavol sau înger în timp ce este ținută#{{Timer}} Primești pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune"}, -- The Book of Belial (Judas' Birthright)
	[62] = {"62", "Farmecul Vampirului", "↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#{{HealingRed}} La omorârea a 13 inamici vei fi vindecat cu o jumătate de inimă"}, -- Charm of the Vampire
	[67] = {"67", "Sora Maggy", "Aruncă cu lacrimi normale#Provoacă 6 daune"}, -- Sister Maggy
	[69] = {"69", "Lapte cu Ciocolată", "{{Chargeable}} Lacrimi Încărcabile#{{Damage}} Cu cât lacrima este mai încărcată cu atat dauna e mai mare, pană la {{ColorGreen}}4x{{CR}} din dauna de bază"}, -- Chocolate Milk
	[70] = {"70", "Hormoni de Creștere", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daună"}, -- Growth Hormones
	[71] = {"71", "Mush Mini", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ Micsorare"}, -- Mini Mush
	[72] = {"72", "Rozariu", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#{{SoulHeart}} {{ColorGreen}}+3{{CR}} Inimi Suflet#{{Collectible33}} Biblia este adăugată la fiecare pool de iteme"}, -- Rosary
	[78] = {"78", "Cartea Revelațiilor", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{AngelDevilChance}} {{ColorGreen}}+17.5%{{CR}} șansă de pact cu Diavolul sau Îngerul cât timp este ținută#La folosire, bossul va fi înlocuit cu un Călăreț al Apocalipsei (Horseman)"}, -- Book of Revelations
	[79] = {"79", "Marcajul", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimi Suflet"}, -- The Mark
	[80] = {"80", "Pactul", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#{{BlackHeart}} {{ColorGreen}}+2{{CR}} Inimi Negre"}, -- The Pact
	[83] = {"83", "Cuiul", "La folosire:#{{HalfBlackHeart}} {{ColorGreen}}+1{{CR}} jumătate de Inimă Neagră#{{Timer}} Primești pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Dăune#↓ {{Speed}} {{ColorRed}}-0.18{{CR}} Viteză#Isac provoacă 40 dăune la contact pe secundă#Poți distruge pietrele trecând prin ele"}, -- The Nail
	[84] = {"84", "Trebuie să Mergem mai Adânc!", "Deschide o trapă spre etajul urmator#{{LadderRoom}} Deschide o trapa spre beci(crawlspace) daca este folosit pe o bucata decorativa de pe podea (iarbă, pietricele, hartie, gemuri, etc.)"}, -- We Need To Go Deeper!
	[87] = {"87", "Coarnele lui Loki", "Șansă de 25% să arunci lacrimi în 4 direcții#{{Luck}} Dacă ai norocul la 15 șansa este de 100%"}, -- Loki's Horns
	[91] = {"91", "Pălăria Speologului", "Camerele de pe hartă sunt afișate de la distanță mai mare#{{SecretRoom}} Poate de asemenea să arate locația camerelor secrete și super secrete#Previne loviturile cauzate de obiecte căzătoare"}, -- Spelunker Hat
	[98] = {"98", "Relicva", "{{SoulHeart}} Oferă o Inimă Suflet la fiecare 7-8 camere"}, -- The Relic
	[101] = {"101", "Aureola", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#{{HealingRed}} Vindecă o inimă"}, -- The Halo
	[106] = {"106", "Dl. Mega", "↑ {{ColorGreen}}x1.85{{CR}} Daune cu bomba#{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe"}, -- Mr. Mega
	[107] = {"107", "Foarfecele Roz", "{{Timer}} Pe durata camerei:#Abilitatea de a zbura#Corpul lui Isaac este separat de cap și atacă inamicii cu 23.5 daune de contact pe secundă"}, -- The Pinking Shears
	[110] = {"110", "Contactele Mamei", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#Sansă de 20% ca lacrimile să pietrifice inamicii#{{Luck}} Șansă de 50% la 20 noroc"}, -- Mom's Contacts
	[114] = {"114", "Cuțitul Mamei", "Lacrimile lui Isaac sunt înlocuite cu un cuțit care poate fi aruncat#{{Damage}} Cuțitul cauzează {{ColorGreen}}2x{{CR}} din daunele lui Isac daca este ținut și maxim {{ColorGreen}}6x{{CR}} daune dacă este încărcat la 1/3(o treime)#Daca este încărcat mai mult de 1/3 numai raza de atac va fi marită#Daunele sunt reduse la {{ColorGreen}}2x{{CR}} în timp ce cuțitul se întoarce la Isac"}, -- Mom's Knife
	[115] = {"115", "Tabla Ouija", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#Lacrimi spectrale"}, -- Ouija Board
	[118] = {"118", "Sulf Arzător", "↓ {{Tears}} {{ColorGreen}}x0.33{{CR}} Viteză de atac#{{Chargeable}} Lacrimile lui Isaac sunt înlocuite cu rază laser mare de sânge#{{Damage}} Cauzează {{ColorGreen}}9x{{CR}} din dauna lui Isac pe durata a 0.63 secunde "}, -- Brimstone
	[121] = {"121", "Ciupercă Ciudată (Largă)" , "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↓ {{Speed}} {{ColorRed}}-0.2{{CR}} Viteză"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manualul Monstrului", "{{Timer}} Oferă un familiar pe durata etajului"}, -- Monster Manual
	[126] = {"126", "Lamă de Ras", "↑ {{Damage}} {{ColorGreen}}+1.2{{CR}} Daune pe durata camerei#{{Warning}} Isaac este rănit o inimă, iar la a doua folosire Isaac este rănit o jumătate de inimă (pe durata camerei)#{{Heart}} Prima dată inimile roșii sunt eliminate"}, -- Razor Blade
	[129] = {"129", "Găleată de Untură", "↑ {{Heart}} {{ColorGreen}}+2{{CR}} Inimi#↓ {{Speed}} {{ColorRed}}-0.2{{CR}} Viteză"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#{{HealingRed}} Vindecă o inimă"}, -- Stigmata
	[139] = {"139", "Geanta Mamei", "{{Trinket}} Oferă un trinket aleatoriu#{{Trinket}} Isaac poate ține 2 trinketuri"}, -- Mom's Purse
	[140] = {"140", "Blestemul lui Bob", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Poison}} Bombele lui Isaac creaza un nor otravitor#{{Poison}} Imunitate la otravă"}, -- Bob's Curse
	[142] = {"142", "Scapular", "{{SoulHeart}} Isaac primeste 1 Inimă Suflet dacă este rănit la mai puțin de jumate de inimă#Se poate intampla doar o data pe cameră#Ieșirea și reintrarea în cameră permite efectului să se declanșeze din nou#{{Warning}} Donațiile de viata nu declanșează efectul"}, -- Scapular
	[147] = {"147", "Topor Crestat", "La folosire îi permite lui Isaac să țină târnăcopul#Târnăcopul poate sparge pietre,intrările la camerele secrete sau să vătămeze inamicii#Nimerirea unei lovituri epuizeaza din baterie#Singura metodă de încărcare este să te duci la etajul următor"}, -- Notched Axe
	[148] = {"148", "Infestație", "Dacă Isaac este vătămat primeste între 2 și 6 muștele albastre"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} {{ColorGreen}}+40{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.33{{CR}} Viteză de atac#↓ {{Range}} {{ColorGreen}}x0.8{{CR}} Distanță#↓ {{Shotspeed}} {{ColorRed}}-0.2{{CR}} Viteza lacrimilor#Lacrimile sunt aruncate arcuit{{Poison}} lacrimile explodează și otrăvesc inamicii în locul în care aterizează"}, -- Ipecac
	[152] = {"152", "Tehnologie 2", "↓ {{Tears}} {{ColorGreen}}x0.67{{CR}} Viteză de atac#Înlocuiește lacrimile din ochiul drept cu un laser continu#{{Damage}} Laserul provoacă {{ColorGreen}}2x{{CR}} daune pe secundă"}, -- Technology 2
	[153] = {"153", "Păianjenul Mutant", "↓ {{Tears}} {{ColorGreen}}x0.42{{CR}} Viteză de atac#Isaac trage cu 4 lacrimi"}, -- Mutant Spider
	[155] = {"155", "Peeper-ul", "↑ {{Damage}} {{ColorGreen}}x1.35{{CR}} daune din ochiul stâng#Plutește prin cameră#Provoacă daune de 17.1 pe secundă"}, -- The Peeper
	[158] = {"158", "Mingea de Cristal", "Oferă {{SoulHeart}} Inimă Suflet, {{Rune}} rună sau {{Card}} o carte#{{Timer}} Viziune completă a hârtii pe durata etajului (cu excepția {{SuperSecretRoom}} camerelor super secete)#În timp ce este ținută:#{{PlanetariumChance}} Șansă {{ColorGreen}}+15%{{CR}} la planetariu #{{PlanetariumChance}} Șansă de {{ColorGreen}}+100%{{CR}} {{TreasureRoom}} daca camera Comorilor este evitată"}, -- Crystal Ball
	[169] =	{"169", "Polifem", "↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.42{{CR}} Viteză de atac#Lacrimile străpung inamicii uciși dacă există daune rămase pe lacrimă"}, -- Polyphemus
	[171] = {"171", "Fundul Păianjenului", "{{Slow}} Încetinește inamicii pentru 4 secunde#Provoacă 10 daune tuturor inamicilor#Inamicii uciși de item oferă păianjeni albaștrii"}, -- Spider Butt
	[172] = {"172", "Pumnalul de Sacrificii", "Orbital#Blochează gloanțele inamicilor#Provoacă daune de 112.5 pe secundă"}, -- Sacrificial Dagger
	[173] = {"173", "Mitră", "{{SoulHeart}} Șansă de 33% ca inimile roșii să apară ca Inimi Suflet"}, -- Mitre
	[176] = {"176", "Celule Stem", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor#{{HealingRed}} Vindecă 1 inimă"}, -- Stem Cells
	[178] = {"178", "Apă Sfințită", "{{Throwable}} Este aruncată în direcția în care Isaac trage#La contactul cu un inamic se sparge și provoacă daune de 7#Lasă o baltă de apă care pietrifică inimaicii și provoacă daune"}, -- Holy Water
	[180] = {"180", "Fasolea Neagră", "Isaac se bășește de mai multe ori cand este vătămat#{{Poison}} Bășinile lasă nori otravitori care deviază proiectilele"}, -- The Black Bean
	[182] = {"182", "Inima Sacră", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Damage}} {{ColorGreen}}x2.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daună↓# {{Tears}} {{ColorRed}}-0.4{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.25{{CR}} Viteza lacrimilor#{{HealingRed}} Umple toate inimile#Lacrimi teleghidate"}, -- Sacred Heart
	[184] = {"184", "Sfântul Graal", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă# {{HealingRed}} Vindecă 1 inimă#Abilitatea de a zbura"}, -- Holy Grail
	[186] = {"186", "Drepturi de Sânge", "Provoacă 40 de daune tuturor inamicilor din cameră#{{Warning}} Isaac este vătămat o inimă#După prima folosite Isaac va fi vătămat jumătate de inimă#{{Heart}} Inimile roșii sunt eliminate prima dată"}, -- Blood Rights
	[189] = {"189", "SMB Super Fan", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#{{HealingRed}} Umple toate inimile roșii"}, -- SMB Super Fan
	[192] = {"192", "Telepatie pentru Proști", "{{Timer}} Pe durata camerei:#↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#Lacrimi ghidate"}, -- Telepathy for Dummies
	[193] = {"193", "CARNE!", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#{{HealingRed}} Vindecă 1 inimă"}, -- MEAT!
	[194] = {"194", "Mingea 8 Magică", "↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor#{{Card}} Oferă o carte#{{PlanetariumChance}} Șansă de {{ColorGreen}}+15%{{CR}} la Planetariu"}, -- Magic 8 Ball
	[197] = {"197", "Sucul lui Iisus", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță"}, -- Jesus Juice
	[203] = {"203", "Humbleing Bundle", "Pickup-urile au șanse de 50% să fie dublate"}, -- Humbleing Bundle
	[205] = {"205", "Priză Ascuțită", "{{Battery}} Folosirea unui item activ neîncarcat, il rănește pe Isaac, dar încarcă itemul complet#{{Heart}} Pentru fiecare line neîncarcatată Isac este rănit jumătate de inimă#{{Heart}} Inimile roșii sunt eliminate prima dată"}, -- Sharp Plug
	[206] = {"206", "Ghilotină", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daună#Capul lui Isaac devine un orbital care îmușcă, nu poate fi rănit și provoacă 56 de daune de contact pe secundă"}, -- Guillotine
	[211] = {"211", "Bebeluș-păianjel", "Dacă ești rănit primești între 3-5 păianjeni albaștrii"}, -- Spiderbaby
	[214] = {"214", "Anemic", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#{{Timer}} Dacă Isaac e rănit lăsa o dâră de sânge pe durata camerei#Dâra provoacă 6 daune pe secundă"}, -- Anemic
	[218] = {"218", "Placentă", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă#{{HealingRed}} Șansă de 50% să vindece jumatate de inimă la fiecare minut"}, -- Placenta
	[219] = {"219", "Bandaj Vechi", "↑ {{EmptyHeart}} {{ColorGreen}}+1{{CR}} Inimă goală#{{Heart}} Șansă de 20% să primești o inimă dacă ești vătămat"}, -- Old Bandage
	[222] =	{"222", "Anti-Gravitație", "↑ {{Tears}} {{ColorGreen}}+1{{CR}} Viteză de atac#Dacă butonul de tragere este ținut apăsat, lacrimile vor fi suspenadate în aer#Eliberarea butoului face ca lacrimile să fie aruncate în direcția inițială"}, -- Anti-Gravity
	[223] = {"223", "Piroman", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe# Imunitate la explozii și foc#{{HealingRed}} Exploziile te vindecă jumatate de inimă"}, -- Pyromaniac
	[224] = {"224", "Corpul Greierului", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↓ {{Range}} {{ColorGreen}}x0.8{{CR}} Distanță#Lacrimile se împart în 4 la contact#Lacrimile împărțite cauzează jumătate din daune"}, -- Cricket's Body
	[225] = {"225", "Șchiopul", "{{SoulHeart}} Șansă de 8% să primești o inimă suflet dacă ești vătămat#{{Luck}} Șansă de {{ColorGreen}}+2%{{CR}} pe nivel de noroc{{HalfHeart}} Inamicii au o șansă să ofere jumătate de inimă roșie"}, -- Gimpy
	[226] = {"226", "Lotusul Negru", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- Black Lotus
	[228] = {"228", "Parfumul Mamei", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#{{Fear}} Șansă de 15% să tragi cu lacrimi provocatoare de frică"}, -- Mom's Perfume
	[229] =	{"229", "Plămânul lui Monstro", "↓ {{Tears}} {{ColorGreen}}x0.23{{CR}} Viteză de atac#{{Chargeable}} Lacrimile sunt încărcate și eliberate într-un efect de shotgun"}, -- Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#Transformă toate inimile roșii pe care le ai în Inimi Negre{{BlackHeart}} {{ColorGreen}}+2{{CR}} Inimi Negre#{{Fear}} Șansă de 15% să tragi cu lacrimi provocatoare de frică, șansa depinde de noroc"}, -- Abaddon
	[232] = {"232", "Cronometru", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}}#{{Slow}} Viteză Inamicii sunt încetiniți cu 80% din viteza și atatcul lor"}, -- Stop Watch
	[233] = {"233", "Planetă mică", "↑ {{Range}} {{ColorGreen}}+6.5{{CR}} Distanță#Lacrimi spectrale#Lacrimile lui Isaac orbitează în jurul lui"}, -- Tiny Planet
	[245] = {"245", "20/20", "↓ {{Damage}} {{ColorGreen}}x0.8{{CR}} Daune#Isaac trage cu 2 lacrimi o dată"}, -- 20/20
	[248] = {"248", "Mintea Stupului", "Păianjenii și muștele albastre provoacă daune duble#Familiari muște și păianjeni devin mai puternici"}, -- Hive Mind
	[253] = {"253", "Crusta Magică", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{HealingRed}} Vindecă o inimă"}, -- Magic Scab
	[254] = {"254", "Cheag de Sânge", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune pentru ochiu stâng#↑ {{Range}} {{ColorGreen}}+2.75{{CR}} Distanță pentru ochiul stâng"}, -- Blood Clot
	[256] = {"256", "Bombe Fierbinți", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Burning}} Bombele lui Isaac provoacă daune de contact#{{Burning}} După explozie bombele lasă un foc#{{Burning}} Imunitate la foc (cu excepția proiectilelor)"}, -- Hot Bombs
	[261] = {"261", "Proptoza", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↓ Lacrimile provoacă mai puține daune cu cât stau mai mult în aer#Lacrimile provoacă {{ColorGreen}}3x{{CR}} daune la punctul 0 și nicio daună după 0.8 secunde."}, -- Proptosis
	[262] = {"262", "Pagina Dispărută 2", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#Dacă ești vătămat până la o inimă va cauza daune tuturor inamicilor din cameră#{{Collectible35}} Efectele de tipul Inimilor Negre și Necronomiconului provoacă daune duble"}, -- Missing Page 2
	[263] = {"263", "Rună Clară", "{{Rune}} Oferă o rună la colectare#{{Rune}} Declanșează efectul runei pe care Isaac o deține fără a o folosi"}, -- Clear Rune (Repentance item)
	[264] = {"264", "Muscă Deșteaptă", "Orbital#Atacă inamici atunci când Isaac este rănit #Cauzeaza 6.5 daune de contact pe secundă"}, -- Smart Fly
	[272] = {"272", "BBF", "Muscă prietenoasă care explodează #Explozia cauzează 100 de daune#{{Warning}} Explozia poate să îl răcească pe Isac"}, -- BBF
	[273] = {"273", "Creierul lui Bob", "Este aruncat în direcția în care Isaac trage#Explodează la contactul cu inamicii#{{Poison}} Explozia cauzează 100 de daune și otrăvește inamici#{{Warning}} Explozia poate să îl vătămeze pe Isac"}, -- Bob's Brain
	[274] = {"274", "Cel mai bun Prieten", "Vătămarea oferă un orbital de rază medie pe durata camerei#Cauzează 150 daune de contact pe secundă"}, -- Best Bud
	[275] = {"275", "Micul Brimstone", "{{Chargeable}} Familiar care încarcă și trage cu o {{Collectible118}} rază de sânge(mini Brimstone)#Provoacă 24 de daune pe durata a 0.63 secunde"}, -- Lil Brimstone
	[276] = {"276", "Inima lui Isaac", "Isaac devine invincibil#Oferă un familiar inimă care îl urmărește pe Isaac#Inima se încarcă când Isac trage și eliberează o explozie de lacrimi când se oprește#{{Warning}} Dacă inima este lovită, Isac va fi vătămat"}, -- Isaac's Heart
	[278] = {"278", "Cerșetor Întunecat", "{{Heart}} Colectează inimile roșii#Pentru fiecare jumătate de inimă oferă: o Inimă Neagră, rună, carte, pastilă, sau un păianjen"}, -- Dark Bum
	[280] = {"280", "Sissy Picioare Mari", "Oferă la întâmplare un păianjen albastru într-o cameră neterminată#{{Charm}} Inamicii cu care intră în contact vor fi vrăjiți"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Dublează 1 pickup de pe jos#Schimbă aleatoriu viteza, lacrimile, daunele, raza de atac și itemele pasive a le lui Isac#Schimbă toate piedestalele, pickupurile și pietrele din cameră#Reîncepe camera, învie toți inamicii și îi involuează"}, -- D100
	[285] = {"285", "D10", "Involuează toți inamicii din cameră#De exemplu, toate muștele roșii devin muște negre"}, -- D10
	[286] = {"286", "Carte Albă", "Declanșează efectul cărții pe care Isaac o deține fără a o folosi"}, -- Blank Card
	[287] = {"287", "Cartea Secretelor", "Pietrele colorate(tinted) și beciul(crawlspace) din cameră sunt evidențiate(daca sunt prezente)#{{Timer}} Pe durata etajului primești unul dintre următoarele efecte:#{{Collectible54}} Harta Comorilor#{{Collectible21}} Busolă #{{Collectible246}} Harta Albastră#Oferă doar efecte care nu sunt deja active#{{Collectible76}} Dacă toate efectele sunt active, oferă Viziunea cu Raze X"}, -- Book of Secrets
	[288] = {"288", "Cutie cu Păianjeni", "Oferă intre 4-8 păianjeni"}, -- Box of Spiders
	[289] = {"289", "Lumânare Roșie", "Aruncă o flacără roșie#Provoacă daune, blochează lacrimile inamicilor și dispare când a cauzat daune, a blocat 4 proiectile sau după 10 secunde"}, -- Red Candle
	[291] = {"291", "Flush!", "Transformă toți inamici(nu boșii) în rahat#Elimină inamicii și boșii rahat#Stinge focurile și umple camera cu apă#Transformă găurile cu lava în poteci"}, -- Flush!
	[292] = {"292", "Biblie Satanică", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{DevilRoom}} Folosirea cărții înainte de lupta cu bossul face ca recompensa să fie un pact cu diavolul#Cumpărarea ofertelor are aceiași consecință cu cele din Devil Room#Nu are efect asupra piedestalelor din Abis(The Void)"}, -- Satanic Bible
	[293] = {"293", "Capul lui Krampus", "{{Collectible118}} Trage cu o rază de sânge în 4 direcții#Fiecare provoacă 200 de daune pe perioada a 1,33 secunde"}, -- Head of Krampus
	[294] = {"294", "Lintea", "Aruncă înapoi inamicii și proiectilele#Inamicii aruncați în obstacole primesc 10 daune"}, -- Butter Bean
	[295] = {"295", "Degete Magice", "Provoacă {{ColorGreen}}2x{{CR}} {{ColorGreen}}+ 10{{CR}} din daunele lui Isaac tuturor inamicilor din cameră #{{Coin}} costă o monedă"}, -- Magic Fingers
	[296] = {"296", "Convertor", "{{Heart}} Transformă 1 Inimă Suflet sau Inimi Negre într-un spațiu de inimă roșie"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Cutia Pandorei", "{{Warning}} O singură folosință {{Warning}} Oferă recompense în funcție de etaj:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Item de la Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Iteme de la Boss#W2: {{Collectible33}} Biblia#???/Abis(Void): Nimic#Sheol: Item din Camera Demonului + 1{{BlackHeart}}#Cathe: Item din Camera Îngerului + 1{{EternalHeart}}#{{NoLB}}Dark Room: Deblochează {{Collectible523}} Cutie de Mutat#Chest: 1{{Coin}}#Home: {{Collectible580}} Cheia Roșie"}, -- Pandora's Box
	[300] = {"300", "Berbec", "↑ {{Speed}} {{ColorGreen}}+0.25{{CR}} Viteză#Dacă ai peste 0.85 viteză, Isaac devine imun la daunele de contact și provoaca 25 de daune inamicilor la atingere"}, -- Aries
	[307] = {"307", "Capricorn", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.1{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.75{{CR}} Distanță#{{ColorGreen}}+1{{CR}} {{Coin}} Monede, {{Bomb}} bombe și {{Key}} chiei#{{HealingRed}} Vindecă o inimă"}, -- Capricorn
	[308] = {"308", "Vărsător", "Isaac lasă o dâră#{{Damage}} Dâra provoacă 66% din daunele lui Isaac pe secundă și preia din efecetele lacrimilor"}, -- Aquarius
	[309] =	{"309", "Pești", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Tearsize}} {{ColorGreen}}+0.12{{CR}} Mărimea lacrimilor#Mărește puterea lui Isaac de a arunca inamicii în spate"}, -- Pisces
	[310] =	{"310", "Rimelul Evei", "↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.66{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.5{{CR}} Viteza lacrimilor"}, -- Eve's Mascara
	[314] = {"314", "Coapse de Tunet", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↓ {{Speed}} {{ColorRed}}-0.4{{CR}} Viteză#{{HealingRed}} Vindecă 1 inimă#Isaac poate să sparga pietrele daca trece prin ele"}, -- Thunder Thighs
	[315] = {"315", "Atractor Ciudat", "Lacrimile lui Isaac atrag inamici,pickurile și trinketurile#Efectul de atracție este mult mai puternic la capătul drumului lacrimilor"}, -- Strange Attractor
	[316] = {"316", "Ochi Blestemat", "Val încărcat de 5 lacrimi#{{Warning}} Dacă Isaac este vătămat în timp ce se încarcă, el va fi teleportat într-o cameră aleatorie"}, -- Cursed Eye
	[319] = {"319", "Celălalt Ochi a lui Cain", "Aruncă lacrimi în direcții aleatorii cu același efecte a lui Isaac#{{Damage}} Provoacă 75% din daunele lui Isac"}, -- Cain's Other Eye
	[320] = {"320", "Singurul prieten a lui ???", "Muscă controlabilă#Provoaca 15 daune de contact pe secundă "}, -- ???'s Only Friend
	[323] = {"323", "Lacrimile lui Isaac", "Aruncă lacrimi în toate direcțiile#Lacrimile au același efecte cu cele a le lui Isaac + 5 daune#Este reîncărcat dacă tragi cu lacrimi"}, -- Isaac's Tears
	[325] = {"325", "Foarfece", "{{Timer}} Pe durata camerei capul lui Isaac devine un familiar staționar#Corpul este controlat separat și țâșnește lacrimi de sânge în direcția în care Isaac trage"}, -- Scissors
	[326] = {"326", "Respirația Vieții", "Ținând apăsat butonul USE bara se golește#Isaac devine invincibil temporar când bara de încărcare este goală#Isaac invocă raze de lumină la contactul cu inamicii când este invincibil#Dacă daunele sunt blocate cu sincronizare perfectă, Isaac trage o rază sfânt în 4 direcții și obțineți un scut scurt#{{Warning}} Daca butonul USE este apăsat pentru prea mult timp, Isaac va fi vătămat"}, -- Breath of Life
	[328] = {"328", "Negativul", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daună#Dacă primești daune la jumatate de inimă roșie sau nici una, va vătăma toți inamicii din cameră"}, -- The Negative
	[330] = {"330", "Lapte de Soia", "↑ {{Tears}} {{ColorGreen}}x5.5{{CR}} Viteză de atac#↓ {{Damage}} {{ColorGreen}}x0.2{{CR}} Daune#↓ {{Tearsize}} {{ColorRed}}-0.3{{CR}} Marimea Lacrimilor#Puterea lui Isac de a arunca inamici în spate este scăzută semnificativ"}, -- Soy Milk
	[331] = {"331", "Dumnezeire", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↓ {{Tears}} {{ColorRed}}-0.3{{CR}} Viteză de atac#↓{{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza lacrimilor#Lacrimi teleghidate#Lacrimile primesc o aură care provoacă 60 de daune pe secundă"}, -- Godhead
	[336] = {"336", "Ceapă Moartă", "↑ {{Tearsize}} {{ColorGreen}}+0.22{{CR}} Marimea lacrimilor#↓ {{Range}} {{ColorRed}}-1.5{{CR}} Distanță#↓ {{Shotspeed}} {{ColorRed}}-0.4{{CR}} Viteza lacrimilor#Lacrimi spectrale și care străpung inamicii"}, -- Dead Onion
	[339] = {"339", "Ac de Siguranță", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- Safety Pin
	[342] = {"342", "Capac Albastru", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.16{{CR}} Viteza lacrimilor#{{HealingRed}} Vindecă o inimă"}, -- Blue Cap
	[344] = {"344", "Cutie de Chibrituri", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{Bomb}} Oferă 3 Bombe#{{Trinket41}} Oferă Trinketul Chibrit"}, -- Match Book
	[345] = {"345", "Ulei Sintetic", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daună#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță"}, -- Synthoil
	[346] = {"346", "O Gustare", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- A Snack
	[349] = {"349", "Nichel de Lemn", "{{Coin}} Șansă de 59% să ofere un bănuț la întâmplare"}, -- Wooden Nickel
	[352] = {"352", "Tun de Sticlă", "{{Damage}} Trage cu lacrimă gigantă,străpungătoare și spectrală care provoacă {{ColorGreen}}10x{{CR}} din daunele lui Isac#{{Warning}} Dacă ești vătămat în timp ce o ții:#↓ Isac pierde 2 inimi în plus#↓ Tunul este spart pentru catva camere#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță + o dâră de sânge pe durata camerei#Nu poți murii de la cele 2 inimi pierdute în plus#Auto vătămarea nu provoacă fectele de mai sus"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă#{{Trinket}} Oferă un trinket"}, -- Crack Jacks
	[355] = {"355", "Perlele Mamei", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimi Suflet"}, -- Mom's Pearls
	[360] = {"360", "Incubus", "Aruncă lacrimi cu același efecte#{{Damage}} Provoaca 75% din daunele lui Isaac"}, -- Incubus
	[365] = {"365", "Muscă Pierdută", "Se deplasează de-a lungul pereților/obstacolelor din cameră#Provoacă 30 de daune de contact pe secundă#Inamicii din apropiere țintesc musca"}, -- Lost Fly
	[366] = {"366", "Bombe Împrăștiate", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe# Bombele lui Isaac sunt împărțite în 4-5 bombe mici"}, -- Scatter Bombs
	[367] = {"367", "Bombe Lipicioase", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Slow}} Bombele lui Isaac se lipesc de inamici și lasă o mâzgă albă care încetinește#Dacă omori inamicii cu bombele, o să primești păianjeni albaștrii"}, -- Sticky Bombs
	[368] =	{"368", "Epifora", "↑ {{Tears}} Tragerea într-o singură direcție crește treptat rata de tragere cu până la 200% și scade precizia"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#Lacrimi spectrale#Lacrimile pot trece printr-o parte a ecranului și pot ieși pe cealaltă parte"}, -- Continuum
	[370] = {"370", "Dl. Păpușă", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#{{UnknownHeart}} Oferă 3 inimi la întâmplare"}, -- Mr. Dolly
	[374] = {"374", "Lumina Sfântă", "Șansă de 10% să arunci cu lacrimi binecuvântare, care generează un fascicul de lumină la impact#{{Luck}} Șansă de 50% la 9 noroc#{{Damage}} Fasciculul cauzează {{ColorGreen}}3x{{CR}} din daunele lui Isaac"}, -- Holy Light
	[375] = {"375", "Pălăria Gazdei", "Oferă imunitate la explozii și proiectile care cad#Șansă de 25% să reflecte lacrimile inamicilor"}, -- Host Hat
	[376] = {"376", "Restocare", "Dacă cumperi un item de la magazin el va fi înoit#Itemele reprovizionate vorbombe fi mai scumpe"}, -- Restock
	[380] = {"380", "Plătește Pentru a Juca", "{{Coin}} {{ColorGreen}}+5{{CR}} Monede# Blocurile, ușile și cuferele încuiate trebuie deschise cu monede în loc de chei"}, -- Pay To Play
	[382] = {"382", "Minge Prietenoasă", "Dacă este aruncata în inamici, ei voi fi capturați#Folosirea obiectului după capturarea unui inamic oferă capturarea ca un însoțitor prietenos#Dacă mergi peste minge după capturare va încarca itemul instant"}, -- Friendly Ball
	[384] = {"384", "Micul Gurdy", "{{Chargeable}} Lansează și sare prin cameră cu viteza depinzând de cantitatea de încărcare#Provoacă între 5-10 daune. Daunele depind de viteză "}, -- Lil Gurdy
	[386] = {"386", "D12", "Schimbă obstacolele din cameră în alte obstacole la întâmplare (e.g. rahat, vase, TNT, rahat roșu, pietre etc.)#Sansa minsuscula să schimbe obstacolele în butoane, killswitche-uri, beci sau trape"}, -- D12
	[389] = {"389", "Plasă cu Rune", "{{Rune}} Oferă o rună sau o Piatra Suflet la fiecare 7-8 camere"}, -- Rune Bag
	[391] = {"391", "Trădarea", "Inamicii se pot lovi între ei cu lacrimi, incapăd ca după să se bată între ei"}, -- Betrayal
	[393] = {"393", "Sărutul Șarpelui", "{{Poison}} Șansă de 15% de a trage cu lacrimi otrăvitoare#{{Poison}} Inamicii sunt otrăviți la contact#{{BlackHeart}} Șansă de 20% să primești o Inimă Neagră dacă inamicii au fost omorâți de otrava de contact"}, -- Serpent's Kiss
	[394] = {"394", "Marcat", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#Isaac trage automat cu lacrimi într-o țintă roșie mobilă de pe pământ#Familiarii trag și ei după țintă#Puteți opri tragerea și reseta locația țintei apăsând pe butonul de drop ({{ButtonRT}})"}, -- Marked
	[395] = {"395", "Tehn X", "Lacrimile lui Isaac sunt înlocuite cu un inel laser reîncărcabil#Dimensiunea inelului și daunele cresc cu până la 100% depinzând de timpul de încărcare"}, -- Tech X
	[397] = {"397", "Rază de Atracție", "↑ {{Tears}} {{ColorGreen}}+1{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza de lacrimilor#Lacrimile lui Isaac călătoresc mereu de-a lungul unei raze de lumină din fața lui"}, -- Tractor Beam
	[399] = {"399", "Falca Vidului", "{{Chargeable}} Tragerea cu lacrimilor timp de 2,35 secunde și eliberarea butonului creează un inel negru de Brimstone în jurul lui Isaac#Provoacă {{ColorGreen}}30x{{CR}} din daunele lui Isaac și durează 1.97 secunde"}, -- Maw of the Void
	[401] = {"401", "Explozivul", "25% șansă să arunci cu o lacrimă lipicioasă#Lacrimile lipicioase cresc și explodează după câteva secunde, provocând daune lui Isaac {{ColorGreen}}+ 60{{CR}}"}, -- Explosivo
	[404] = {"404", "Bebeluș Pârțâit", "Blochează proiectilele#Șansă de 10% să se beșască și să {{Charm}} vrăjească, {{Poison}} otrăvească sau să împingă inamicii#Beșina provoacă între 5-6 daune"}, -- Farting Baby
	[405] = {"405", "Bug GB", "{{Throwable}} Aruncabil (apasă de 2 ori pe butonul de tragere)#Schimbă inamicii și pickupurile cu care intra în contact"}, -- GB Bug
	[407] = {"407", "Puritate", "↑ Amplifică una dintre statisticile lui Isaac în funcție de culoarea aurei#La vătămare efectul este eliminat, iar unul nou este oferit în următoarea cameră#{{ColorYellow}}Galben{{CR}} = ↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#{{ColorBlue}}Albastru{{CR}} = ↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteză de atac#{{ColorRed}}Roșu{{CR}} = ↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune#{{ColorOrange}}Portocaliu{{CR}} = ↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță"}, -- Purity
	[408] = {"408", "Athame", "25% Șansă ca un inel negru de Brimstone să apară în jurul inamicilor omorâți#Provoacă {{ColorGreen}}30x{{CR}} din daunele lui Isaac pe durata a 2 secunde#{{Luck}} {{ColorGreen}}+2.5%{{CR}} șansă pentru fiecare punct de noroc#100% la 30 noroc"}, -- Athame
	[415] = {"415", "Coroană de Lumină", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Daca Isac nu are inimi roșii rănite:#↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza lacrimilor#Daca Isac este ranit efectul v-a dispărea pe durata camerei"}, -- Crown Of Light
	[416] = {"416", "Buzunare Adânci", "{{Coin}} Dacă nu primesti o recompensă într-o cameră, oferă între 1-3 bănuți#{{Coin}} Poți ține pînă la 999 de bănuți"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Zboară prin cameră și este înconjurat de o aură care provoacă între 7.5-10 daune pe secundă#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune dacă stai în aură"}, -- Succubus
	[419] = {"419", "Teleportare 2.0", "Îl teleportează pe Isaac într-o cameră care nu a fost curățată#Ierarhia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Fasole Rinichi", "{{Charm}} Vrăjește toți inamicii din jur"}, -- Kidney Bean
	[422] = {"422", "Clepsidră Strălucitoare", "Îl aduce pe Isaac în camera anterioară și retrage acțiuniile făcute în camera în care a fost folosit#Poate fi folosit de 3 ori pe etaj#{{Collectible66}} După cele 3 folosiri se transformă în Clepsidra, care încetinește inamicii pentru 8 secunde#La etajul urmator vei primii cele 3 folosiri înapoi"}, -- Glowing Hourglass
	[426] = {"426", "Fan Obsedat", "Copiază mișcările lui Isaac cu o întârziere de 0.66 secunde#Provoacă 30 de daune pe secundă"}, -- Obsessed Fan
	[430] = {"430", "Tata Muscă", "Copiază mișcările lui Isaac cu o întârziere de 0.66 secunde#{{Damage}} Trage în inamicii din apropiere, provoacă daunele lui Isac"}, -- Papa Fly
	[431] = {"431", "Bebeluș Multidimensional", "Copiază mișcările lui Isaac cu o întârziere de 0.66 secunde#Lacrimile care trec prin el sunt dublate și primesc distanță + viteză"}, -- Multidimensional Baby
	[432] = {"432", "Bombe cu Sclipici", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Charm}} Bombele au o șansă de 63% să arunce un pickup aleatoriu și o șansă de 15% să vrăjească inamicii la explozie#Pentru fiecare pickup aruncat șansa scade cu 1% pe durata etajului"}, -- Glitter Bombs
	[433] = {"433", "Umbra Mea", "O umbră mică îl urmărește pe Isaac#{{Friendly}} Când un inamic atinge umbra, un charger negru prietenos apare în cameră#Chargerul provoacă 8.7 daune pe lovitură"}, -- My Shadow
	[437] = {"437", "D7", "Reîncepe camera și aduce la viață toți inamicii din ea#Poate fi folosit la obținerea mai multor recompense când aceiasi cameră e terminată"}, -- D7
	[440] = {"440", "Piatră la Rinichi", "Ocazional Isaac se oprește din tras și încarcă un atac care eliberează o furună de lacrimi și o piatră la rinichi#↑ {{Damage}} Piatra la rinchi provoacă {{ColorGreen}}10x{{CR}} din daunele lui Isac și distanță dublă#↑ {{Tears}} Furtuna de lacrimi oferă {{ColorGreen}}6x{{CR}} viteza lacrimilor"}, -- Kidney Stone
	[442] = {"442", "Coroana Prințului Întunecat", "Când ai o inimă:#↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteza lacrimilor#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimilor"}, -- Dark Prince's Crown
	[444] = {"444", "Creion de Plumb", "Isaac aruncă un amalgam de lacrimi la fiecare 15 lacrimi"}, -- Lead Pencil
	[448] = {"448", "Ciob de Sticlă", "Dacă Isaac e vătămat:#{{Heart}} 25% șansă ca o inimă roșie să apară#{{BleedingOut}} Isaac sângerează și aruncă lacrimi în direcția în care trage#Sângerarea îl vătămează pe Isaac o jumătate de inimă roșie la fiecare 20 de secunde#Sângerarea se oprește dacă Isaac este vindecat, nu are inimi roșii sau următoarea lovitură îl omoară"}, -- Shard of Glass
	[450] = {"450", "Ochi de Lăcomie", "{{Damage}} La fiecare 20 de lacrimi, Isaac aruncă o lacrimă monedă care provoacă {{ColorGreen}}x1.5{{CR}} {{ColorGreen}}+10{{CR}} daune#{{Petrify}} Inamicii loviți cu moneda sunt transformați în aur#{{Coin}} Dacă un inamic de aur este omorât aruncă între 1-3 monede#{{Warning}} Moneda aruncată va fi extrasă din banii lui Isaac"}, -- Eye of Greed
	[451] = {"451", "Pânză de Tarot", "{{Card}} Oferă o carte#{{Card}} Efectele cărtilor sunt dublate sau înbunătațite"}, -- Tarot Cloth
	[453] = {"453", "Fractură Compusă", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#Lacrimile se sparg în 1-3 bucăți la impact#Lacrimile sparte nu au pierderi de daune"}, -- Compound Fracture
	[455] = {"455", "Banul Pierdut al Tatei", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#{{Luck}} Oferă un banuț norocos"}, -- Dad's Lost Coin
	[456] = {"456", "Gustare de Seară", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă o inimă"}, -- Midnight Snack
	[459] = {"459", "Infecție de Sinus", "20% șansă să arunci cu un muc lipicios#{{Damage}} Mucii provoacă daunele lui Isac pe secundă și stau lipiți 10 secunde#{{Luck}} Șansa nu este afectată de noroc"}, -- Sinus Infection
	[462] = {"462", "Ochiul lui Belial", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#Lacrimi străpung inamicii#Lacrimile care trec prin inamici devin lacrimi care urmăresc inamicii și au daune duble"}, -- Eye of Belial
	[464] = {"464", "Gliful Echilibrului", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Recompensele la final de cameră sau inamicii campioni oferă ce îi trebuie cel mai mult lui Isaac"}, -- Glyph of Balance
	[468] = {"468", "Umbră", "Copiază mișcările lui Isaac cu o întârziere de 0.66 secunde#Provoacă 75 de daune de contact pe secundă#După ce provoacă 666 de daune va fi absorbit de Isaac și îi crește daunele de contact"}, -- Shade
	[472] = {"472", "Regele Bebeluș", "Ceilalți familiar îl urmăresc și atacă automat inamicii#Se oprește din deplasare când Isaac trage#Se teleportează înapoi la Isaac când nu mai trage"}, -- King Baby
	[474] = {"474", "Tun de Sticlă Spart", "Dacă folosești itemul se transformă în Tun de Sticlă"}, -- Broken Glass Cannon
	[476] =	{"476", "D1", "Dublează un pickup aleatoriu din cameră#Pickupurile duplicate nu sunt mereu ca originalul"}, -- D1
	[477] = {"477", "Vid", "Consumă toate piedestalele din cameră#Iteme active: Efectele lor vor fi folosite de fiecare când Vidul este folosit#↑ Itemele pasive cresc 2 statistici aleatorii"}, -- Void
	[487] = {"487", "Decojitor de Cartofi", "{{EmptyHeart}} Elimină o viață, dar oferă: #↑ {{Damage}} {{ColorGreen}}+0.2{{CR}} daune#{{Collectible73}} Un Cub de Carne#{{Timer}} Pe durata camerei:#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#{{Collectible214}} Lasă o baltă de sânge"}, -- Potato Peeler
	[489] = {"489", "D Infinit", "Poate fi folosit ca orice zar (cu excepția a {{Collectible723}} Spindown Dice) cu butonul de schimbare ({{ButtonRT}})#Liniile de încărcare variază în funcție de ultimul zar folosit și se schimbă cu fiecare folosință"}, -- D Infinity
	[491] = {"491", "Bebeluș Acid", "{{Pill}} Oferă o pastilă la fiecare 7 camere#{{Poison}} Folosirea unei pastile otravește toți inamicii din cameră"}, -- Acid Baby
	[493] = {"493", "Adrenalină", "↑ {{Damage}} daune pentru fiecare inimă roșie lipsă#Cu cât mai multe inimi lipsă, cu atât mai multe daune primite"}, -- Adrenaline
	[494] = {"494", "Scara lui Iacob", "Lacrimile provoacă o scânteie de electricitate la impact#Scânteia provoacă jumătate din daunele lui Isac#Scânteia poate traversa până la 4 inamici"}, -- Jacob's Ladder
	[495] = {"495", "Ardei Fantomă", "8% șansă să arunci cu un foc albastru care blochează proiectilele și cauzează daune inamicilor#{{Luck}} 50% șansă la 10 noroc#Focul se micește și dispare după 2 secunde"}, -- Ghost Pepper
	[496] = {"496", "Eutanasiere", "3.33% șansă să arunci cu un ac#{{Luck}} 25% șansă la 13 noroc#Acul omoară inamicii normali instant și arună 10 lacrimi când sunt eliminați#{{Damage}} Acul provoacă {{ColorGreen}}3x{{CR}} din daunele lui Isac împotriva șefilor"}, -- Euthanasia
	[497] = {"497", "Chiloți de camuflaj", "{{Confusion}} La intrarea într-o cameră Isaac este camunflat până trage cu o lacrimă#↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} viteză cand este camunflat#După tragerea unei Lacrimi Isac provoacă daune în jurul lui, viteza lacrimilor și daunele sunt crescute temporar"}, -- Camo Undies
	[500] = {"500", "Sacul cu săculeți", "Oferă un sac la fiecare 7-8 camere"}, -- Sack of Sacks
	[501] = {"501", "Punga Lăcomiei", "{{Heart}} {{ColorGreen}}+1{{CR}} Spațiu pentru inimi la fiecare 25 de banuți Isac deține"}, -- Greed's Gullet
	[503] = {"503", "Coarnele Mici", "5% șansă să arunci cu o lacrimă care aduce mâna lui Big Horn#{{Luck}} 20% șansă la 15 noroc#Mâna omoară inamicii instant și provoacă 36 de daune șefilor#Isac provoacă 7 daune de contact pe secundă"}, -- Little Horn
	[504] = {"504", "Nugă Maro", "Oferă o muscă care trage în inamici#Fiecare glonț provoacă 3.5 daune"}, -- Brown Nugget
	[506] = {"506", "Înjunghiator", "{{BleedingOut}} Dacă lovești un inamic în spate acesta primește daune duble și sângerează cauzândule daune dacă merg"}, -- Backstabber
	[507] = {"507", "Paie Ascuțite", "{{Damage}} Provoacă daunele lui Isaac {{ColorGreen}}+10%{{CR}} din viața inamicului cu cea mai mare viața tuturor inamicilor#{{HalfHeart}} 15% șansă să primești o jumătate de inimă dacă provoci daune cu paiul"}, -- Sharp Straw
	[508] = {"508", "Briciul Mamei", "{{BleedingOut}} Orbital care provoacă sângerare#Sângerarea provoacă daune inamicilor care se mișcă#{{Damage}} Provoacă {{ColorGreen}}1.5x{{CR}} din daunele lui Isac pe secundă"}, -- Mom's Razor
	[509] = {"509", "Ochi Însângerat", "Orbital care trage la fiecare 0.33 secunde către inamici din apropiere#daune de 3.5 pe lacrimă#20 de daune de contact pe secundă"}, -- Bloodshot Eye
	[514] = {"514", "Modem Stricat", "Inamicii și proiectilele sunt oprite la intrevale aleatorii#Proiectilele oprite dispar#25% șansă să dubleze recompensa camerei#{{Luck}} Intervalul este afectat de noroc"}, -- Broken Modem
	[517] = {"517", "Bombe Rapide", "{{Bomb}} {{ColorGreen}}+7{{CR}} Bombe#Elimină intervalul la care poți pune bombe#Bombele nu sunt împinse dacă explodează"}, -- Fast Bombs
	[522] = {"522", "Telekineză", "Blochează toate proiectilele inamicilor care se apropie de Isaac pentru 3 secunde, dupa ele sunt aruncate înapoi#Inamicii din apropiere sunt aruncați pe durata efectului"}, -- Telekinesis
	[523] = {"523", "Cutie de Mutare", "Poate ține până la 10 pickupuri și iteme din camera curentă#Dacă este folosită din nou tot ce a adunat va fi lăsat pe jos#Îi permite lui Isac să care lucruri dintr-o cameră în alta"}, -- Moving Box
	[524] = {"524", "Technologie Zero", "Lacrimile lui Isaac sunt conectate cu o undă de curent#Curentul provoacă {{ColorGreen}}4.5x{{CR}} din daunele lui Isac pe secundă"}, -- Technology Zero
	[531] = {"531", "Hemolacrie", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.33{{CR}} Viteza lacrimilor#↓ {{Range}} {{ColorGreen}}x0.8{{CR}} Distanță#Lacrimile lui Isac sunt aruncate arcuit și se sparg în lacrimi mai mici la impact"}, -- Haemolacria
	[543] = {"543", "Rahat Binecuvântat", "Vătămarea oferă un rahat alb#Dacă stai în aura rahatului:#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} Daune#Lacrimi teleghidate#Șansă să nu fi vătămat"}, -- Hallowed Ground
	[549] =	{"549", "Oase Fragile", "{{EmptyBoneHeart}} Înlocuiește toate Inimile lui Isaac cu 6 Inimi Os#Dacă pierzi o Inimă Os:#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac(permanentă)#Trage cu 9 oase în toate direcțile"}, -- Brittle Bones
	[552] = {"552", "Lopata Mamei", "Desc ide o trapa către următorul nivel#{{LadderRoom}} Deschide un bechi daca este folosită pe o decoratiune (iarbă, pietre micuțe, hârtie, gemuri, etc.)(beciul are o scară și nu te duce la urmatorul etaj)#{{Warning}} Folosește lopata în pamântul din  \"Dark Room\""}, -- Mom's Shovel
	[553] = {"553", "Mucormicoza", "25% șansă să arunci cu o lacrimă lipicioasă cu spori#{{Luck}} Șansa nu este afectată de noroc#{{Poison}} După 2.5 secunde sporii explodează, otravesc inamicii din jur și se răspândesc"}, -- Mucormycosis
	[554] = {"554", "DeSpaimă", "{{Fear}} Provoacă frică tutuor inamicilor din jurul lui Isaac"}, -- 2Spooky
	[555] = {"555", "Brici de Aur", "{{Coin}} {{ColorGreen}}+5{{CR}} Bănuți#{{Timer}} Plătește 5 {{Coin}} bănuți și primești pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+1.2{{CR}} Daune"}, -- Golden Razor
	[556] = {"556", "Sulf", "{{Timer}} {{Collectible118}} Brimstone pe durata camerei#Dacă este folosit de mai multe ori în aceiași cameră, daunele o să crască, dar și marimea undei"}, -- Sulfur
	[557] = {"557", "Prăjitură cu Răvaș", "Oferă una din următoarele recompense:#Un noroc#{{SoulHeart}} O Inimă Suflet#{{Rune}} O Rună sau Piatră Suflet#{{Card}} O Carte de Tarot#{{Trinket}} Un Trinket"}, -- Fortune Cookie
	[558] = {"558", "Durere de Ochi", "Șansă să arungi cu 1-3 lacrimi în direcții aleatorii#{{Luck}} Nu este afectat de noroc"}, -- Eye Sore
	[559] = {"559", "230 V", "Curentează inamicii din jur#{{Damage}} Curentul provoacă pană la {{ColorGreen}}3.75x{{CR}} daune pe secundă#Scânteia poate sării până la 4 inamici"}, -- 120 Volt
	[560] = {"560", "Doare", "{{Timer}} Dacă Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} {{ColorGreen}}+1.2{{CR}} Viteză de atac la prima lovitură#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac pentru alte lovituri#Eliberează un inel de 10 lacrimi în jurul lui Isac"}, -- It Hurts
	[561] = {"561", "Lapte de Migdale", "↑ {{Tears}} {{ColorGreen}}x4{{CR}} Viteza de atac#↓ {{Damage}} {{ColorGreen}}x0.3{{CR}} Daune#↓ {{Tearsize}} {{ColorRed}}-0.16{{CR}} Mărimea lacrimilor#Lacrimile primesc efecte aleatori de viermi(trinket) și câteva efecte de iteme"}, -- Almond Milk
	[562] = {"562", "La Pământ", "↑ Previne ca valorile lui Isaac să fie scăzute pe durata runului#Statisticile negative o să fie în continuare calculate, dar Isac nu o să fie afectat de ele"}, -- Rock Bottom
	[563] = {"563", "Bombe Homo", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac Explodează cu efecte aleatorii"}, -- Nancy Bombs
	[564] = {"564", "O Bucată de Săpun", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimilor"}, -- A Bar of Soap
	[565] = {"565", "Cățeluș Însângerat", "Urmărește inamicii#După ce omoară 15 inamici, provoacă mai multe daune, oferă o jumătate de Inimă Roșie la fiecare 10 inamici, dar încearcă să-l rănească pe Isac#După 40 de inamici, provoacă și mai multe daune, oferă Inimi Roșii întregi și poate distruge pietre#Dacă îi provoci suficient de multe daune, revine la prima formă"}, -- Blood Puppy
	[566] = {"566", "Prinzător de Vise", "{{HalfSoulHeart}} {{ColorGreen}}+1{{CR}} Jumătate de Inimă Suflet când intrii într-un etaj nou#Tranzitia dintre etaje arată șeful și itemul din Camera Comorilor"}, -- Dream Catcher
	[567] = {"567", "Lumânare Pascală", "↑ {{Tears}} Dacă cureți o cameră fără să fi lovit primești {{ColorGreen}}+0.4{{CR}} viteză de atac#Maxim {{ColorGreen}}+2{{CR}} viteză de atac {{ColorSilver}}(5 camere){{CR}}"}, -- Paschal Candle
	[568] = {"568", "Intervenție Divină", "Dubla apăsare a butonului de tragere oferă un scut#Scuturl durează 1 secundă, împinge inamici și reflectă proiectilele și laserele"}, -- Divine Intervention
	[569] = {"569", "Jurământul de Sânge", "{{Warning}} Când intrii într-un etaj nou Isaac rămâne fără Inimi Roșii, dar primește viteză și daune pentru fiecare inimă pierdută"}, -- Blood Oath
	[570] = {"570", "Biscuite de Plasterină", "Fiecare lacrimă are o culoare și un efect diferit"}, -- Playdough Cookie
	[571] = {"571", "Șosete de Orfan", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Imunitate la bălți și țepi"}, -- Orphan Socks
	[572] = {"572", "Ochiul Ocultului", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2{{CR}} Distanță#↓ {{Shotspeed}} {{ColorRed}}-0.16{{CR}} Viteza lacrimilor#Lacrimile lui Isac pot fi controlate în aer"}, -- Eye of the Occult
	[573] = {"573", "Inimă Imaculată", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} Daune#{{HealingRed}} Vindecă Inimile Roșii#20% șansă să arunci cu o lacrimă spectrală extra care orbitează"}, -- Immaculate Heart
	[574] = {"574", "Monstranţă", "Isaac este înconjurat de o aură care provoacă daune#Cu cât inamicii sunt mai aproape de Isac, cu atât o să primească daune mai multe"}, -- Monstrance
	[575] = {"575", "Intrusul", "{{Slow}} Este îngropat în capul lui Isaac și trage cu 4 lacrimi extra care încetinesc inamicii și provoacă 1.5 daune#Dacă Isac este vătămat păianjenul iasă și urmărește inamicii"}, -- The Intruder
	[576] = {"576", "Minte Murdară", "Toți inamicii Dip sunt prietenoși(rahații mici)#Distrugerea rahaților oferă 1-4 Dips#Tipul de Dip depinde de tipul de rahat#Pietrele pot fi înlocuite de rahați"}, -- Dirty Mind
	[577] = {"577", "Damocles", "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#O sabie atârnă deasupra lui Isaac care dublează toate piedestalele#Itemele care costa sau vin din chesturi nu sunt dublate#{{Warning}} După ce Isac este vătămat sabia are o șansă extrem de mică să îl omoare pe Isac la fiecare frame#Efectele de invincibilitate pot preveni acest efect"}, -- Damocles
	[578] = {"578", "Limonadă Gratis", "Varsă o baltă mare galbenă#Balta provoacă 24 de daune pe secundă"}, -- Free Lemonade
	[579] = {"579", "Sabie Spirit", "Nu mai ataci cu lacrim ci cu o sabie#{{Damage}} Sabia provoacă {{ColorGreen}}3x{{CR}} daune {{ColorGreen}}+3.5{{CR}} și viteza ei depinde de cat de repede apeși#{{Chargeable}} Dacă încarci atacul, vei ataca în cerc și vei arunca cu un proiectil#Aruncă cu proiectile când viața este pină"}, -- Spirit Sword
	[580] = {"580", "Cheie Roșie", "Deschide o cameră roșie lângă o cameră normală, un contur de ușă va apărea dacă este posibil#Camerele Roșii pot fi speciale(Camera Comorilor,Camere Înger,ultra secrete, etc)#{{ErrorRoom}} Dacă intri într-o cameră care depășește harta de 13x13, Isac va fi teleportat în camera I AM ERROR"}, -- Red Key
	[581] = {"581", "Muscă Psihică", "Urmărește și blochează proiectilele inamicilor#Provoacă 15 daune de contact pe secundă"}, -- Psy Fly
	[582] = {"582", "Ciupercă Îndoită", "↑ {{Tears}} {{ColorGreen}}+0.75{{CR}} Viteză de atac#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză#Distorsonează ecranul#Se încarcă mai greu cu fiecare folosire#La ieșira din cameră sau la terminarea ei, efectele o să fie reduse"}, -- Wavy Cap
	[583] = {"583", "Rachetă într-un Borcan", "{{Bomb}} {{ColorGreen}}+5{{CR}} bombe#Dacă plasezi o bombă în timp  ce tragi, o rachetă va fi aruncată în schimb"}, -- Rocket in a Jar
	[584] = {"584", "Cartea Virtuților", "{{AngelChance}} {{ColorGreen}}+12.5%{{CR}} Șansă la Camere Înger cât timp este ținută#Oferă un orbital musculiță care trag cu lacrimi spectrale, atenție musculița poate fi distrusă#Poate fi conbinat cu un alt item activ care oferă musculițe speciale#{{AngelRoom}} Transformă prima Cameră Diavol în una Înger#{{AngelRoom}} Permite ca Camerele Înger să apară după ce ai luat un pact cu Divolul"}, -- Book of Virtues
	[585] = {"585", "Cutie de Alabastru", "Este încărcată cu Inimi Suflet și oferă:#{{SoulHeart}} 3 Inimi Suflet#{{AngelRoom}} 2 iteme din Camera Înger#{{DevilRoom}} 2 Inimi Suflet și un item din Camera Înger dacă un pact cu Diavolul a fost luat"}, -- Alabaster Box
	[586] = {"586", "Scara", "La începutul fiecărui etaj o scară apare care duce la o cameră specială {{AngelRoom}} Înger unde itemele costă bani"}, -- The Stairway
	[587] = {"587", "", "<Itemul nu există>"},
	[588] = {"588", "Sol", "{{BossRoom}} Arată locația Camerei Șefului#{{Timer}} Când șeful este bătut primești pe durata etajului:#↑ {{Damage}} {{ColorGreen}}+3{{CR}} Daune#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{Card20}} Efectul Soarele#{{Battery}} Încarcă itemul activ#{{CurseBlind}} Elimină toate blestemele"}, -- Sol
	[589] = {"589", "Luna", "Adaugă o {{SecretRoom}} Cameră Secretă  și {{SuperSecretRoom}} Super Secretă extra la fiecare etajr#Arată locația la o cameră secretă la fiecare etaj#{{Timer}} Camerele Secrete conțin o rază de lumină care oferă pe durata etajului:#↑ {{Tears}} {{ColorGreen}}+1{{CR}} Viteză de atac#↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac adițională pentru fiecare rază#{{HalfSoulHeart}} Jumătate de Inimă Suflet"}, -- Luna
	[590] = {"590", "Mercur", "↑ {{Speed}} {{ColorGreen}}+0.4{{CR}} Viteză#Majoritatea ușilor rămân deschise permanent"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă 1 Inima#{{Charm}} Vrăjește inamicii din jur"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#Inlocuiește lacrimile lui Isaac cu pietre#Pietrele variază în daune și pot distruge obstacole și împing inamicii în spate"}, -- Terra
	[593] = {"593", "Marte", "Apăsarea de două ori a butonului de deplasare îl face pe Isaac să se miște rapid în direcția respectivă#{{Damage}} Cât timp Isac este în acțiunea de mișcare devine invincibil și provoacă {{ColorGreen}}4x{{CR}} daune {{ColorGreen}}+8{{CR}}{{Timer}} 3 secunde pauză"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} Containere goale de inimă#↓ {{Speed}} {{ColorRed}}-0.3{{CR}} Viteză#{{HealingRed}} Vindecă jumătate de Inimă#{{Speed}} Viteza crește până la {{ColorGreen}}+0.5{{CR}} cât timp stai pe loc#{{Poison}} Deplasarea cauzează nori otravitori#{{Poison}} Imunitate la otravă"}, -- Jupiter
	[595] = {"595", "Saturn", "La intrarea într-o cameră noua Isaac este orbitat de 7 lacrimi#Lacrimile orbitează pentru 13 secunde și cauzează {{ColorGreen}}1.5x{{CR}} daune {{ColorGreen}}+5{{CR}}#Proiectilele inamicilor au o șansă să îl orbiteze pe Isac"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac trage cu lacrimi de gheață care îngheață inamicii la moarte#La atingere inamicii înghețați alunecă și explodează în 10 bucăți de gheață"}, -- Uranus
	[597] = {"597", "Neptun", "{{Tears}} Dacă nu tragi, un bonus de lacrimă se acumulează  în 3 secunde#Bonusul de lacrimă scade pe măsură ce Isac trage"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#Mărimea lui Isaac este micită semnificativ, putând să treacă printre obiecte#Proiectilele pot trece peste el"}, -- Pluto
	[599] = {"599", "Cap Voodoo", "{{CursedRoom}} Deschide o Cameră Blestemată extra la fiecare etaj#Imbunătățește aspectul camerei și recompensele din ea#{{Coin}} Oferă un bănuț în fiecare Cameră Blestemată"}, -- Voodoo Head
	[600] = {"600", "Picături de Ochi", "↑ {{Tears}} {{ColorGreen}}x1.4{{CR}} Viteză de atac pentru ochiul sâng"}, -- Eye Drops
	[601] = {"601", "Act de Contriție", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#{{EternalHeart}} {{ColorGreen}}+1{{CR}} Inimă Eternă#{{AngelChance}} Perimite Camerelor Înger să apară  după un pact cu Diavolul#Dacă Isac este vătămat șansa de Camere Înger/Diavol nu este scăzută atât de mult"}, -- Act of Contrition
	[602] = {"602", "Card de Membru", "{{Shop}} Deschide o trapă în fiecare Magazin#Trapa duce către un magazin ascuns ce vinde trinkets, rune, cărți și iteme din toate poolurile"}, -- Member Card
	[603] = {"603", "Pachet cu Baterii", "{{Battery}} Oferă intre 2-4 bateri#{{Battery}} Încarcă itemul activ"}, -- Battery Pack
	[604] = {"604", "Brățara Mamei", "Îi perimite lui Isaac să ridice obstacole#Obstacolele pot fi cărate printre camere"}, -- Mom's Bracelet
	[605] = {"605", "Lingură pentru Înghețată", "↑ {{Damage}} {{ColorGreen}}x1.35{{CR}} Daune pentru ochiul drept#{{Timer}} Oferă un familiar Peeper pe durata camerei care lasă o baltă ce provoacă 36 de daune pe secundă"}, -- The Scooper
	[606] = {"606", "Ruptură oculară", "5% șansă să arunci cu o lacrimă care deschide o ruptură unde aterizează#{{Luck}} 20% șansă la 15 noroc#Ruptura cauzează {{ColorGreen}}3x{{CR}} daune pe secundă și atrage inamicii, pickupurile și proiectilele"}, -- Ocular Rift
	[607] = {"607", "Bebeluș Fiert", "Aruncă cu rafale de lacrimi în toate direcțile#Provoacă 3.5 sau 5.25 daune pe lacrimă"}, -- Boiled Baby
	[608] = {"608", "Bebeluș Congelat", "{{Freezing}} Trage cu lacrimi care îngheață și provoacă 3.5 daune"}, -- Freezer Baby
	[609] = {"609", "D6 Etern", "Reînnoiește toate piedestalele din cameră#25% șansă să le șteargă"}, -- Eternal D6
	[610] = {"610", "Colivie pentru Păsări", "Sare pe primul inamicul care îi vătămează pe Isaac#Provoacă 45 de daune și eliberează un val de pietre#După urmărește inamicii și provoacă 6.5 daune pe secundă"}, -- Bird Cage
	[611] = {"611", "Laringe", "Isaac urlă și provoacă daune inamicilor, distruge obstacolele și aruncă inamicii#Urletul e mai puternic cu cât este mai încărcat"}, -- Larynx
	[612] = {"612", "Suflet Pierdut", "Moare dintr-o lovitură și reapare în următorul etaj#Dacă este adus în viață la următorul etaj, oferă:#{{SoulHeart}} 3 Inimi Suflet#{{EternalHeart}} 2 Inimi Eterne#{{TreasureRoom}} Un item din Camera Comorilor#{{AngelRoom}} Un item din Camera Îngerilor"}, -- Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Bombe cu Sânge", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă 4 Inimi Roșii#{{HalfHeart}} Dacă Isac nu are bombe, o bombă poate fi pusă, dar costă o jumătate de inimă#Bombele lui Isac lasă o baltă roșie#"}, -- Blood Bombs
	[615] = {"615", "Micul Dumpy", "Deviază inamicii sau proiectilele chiar înainte ca Isaac să fie vătămat de acestea#Șansă să devieze proiectilele apropiate de el#Trebuie atins pentru a se reactiva după ce a deviat un pericol"}, -- Lil Dumpy
	[616] = {"616", "Ochi de Pasăre", "8% Șansă să arunci cu un foc roșu care blochează proiectilele inamicilor și provoacă daune de contact#{{Luck}} 50% șansă la 10 noroc#Focul dispare după:  4 lovituri, provoacă daune de 4 ori sau dupa 10 secunde"}, -- Bird's Eye
	[617] = {"617", "Piatră Magnetică", "{{Magnetize}} 17% șansă să tragi cu lacrimi magnetizate#{{Luck}} 100% șansă la 5 noroc#Inamicii magnetizați atrag: pickupuri proiectile și inamicii din apropiere"}, -- Lodestone
	[618] = {"618", "Roșie Stricată", "{{Bait}} 17% șansă să arunci cu lacrimi care marchează inamicii#{{Luck}} 100% șansă la 5 noroc#Inamicii marcați sunt atacați de alți inamici"}, -- Rotten Tomato
	[619] = {"619", "Drept Ereditar", "Are efecte diferite pentru fiecare personaj"}, -- Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Tocană Roșie", "↑ {{Damage}} {{ColorGreen}}+21.6{{CR}} Daune#{{HealingRed}} Vindecă viața#Daunele primite vor scădea pe perioada a 3 minute#Dacă omori inamici cât timp efectul este pornit, acesta va fi extins"}, -- Red Stew
	[622] = {"622", "Geneză", "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#Șterge toate itemele și pickupurile lui Isaac#Isaac este teleportat într-un dormitor cu pickupuri și cufere#Pentru fiecare item șters, Isaac poate alege dintre 3 iteme din același pool"}, -- Genesis
	[623] = {"623", "Cheie Ascuțită", "{{Key}} {{ColorGreen}}+5{{CR}} Chei#Aruncă cu o cheie în direcția în care Isaac trage#Cheile provoacă daune, distrug obstacole și deschid uși#cheia provoacă {{ColorGreen}}5x{{CR}} daune {{ColorGreen}}+30{{CR}}#Inamicii omorâți cu cheile pot oferii conținut de cufere, chiar și iteme"}, -- Sharp Key
	[624] = {"624", "Pachet Suplimentar", "{{Card}} Oferă 5 cărți"}, -- Booster Pack
	[625] = {"625", "Mega Ciupercă", "Isaac devine uriaș și primește:#↑ {{Damage}} {{ColorGreen}}x4{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2{{CR}} Distanță#↓ {{Tears}} {{ColorRed}}-1.9{{CR}} Viteză de atac#Invincibilitate#Isaac poate zdrobi inamicii și obstacolele#{{Timer}} Durează 30 de secunde și persistă printre camere și etaje"}, -- Mega Mush
	[626] = {"626", "Bucată de Cuțit 1", "Se transformă într-un cuțit aruncabil care provoacă 25 de pagube când e combinat cu {{Collectible627}} Bucata de Cuțit 2#Cuțitul poate deschide o ușă de carne"}, -- Knife Piece 1
	[627] = {"627", "Bucată de Cuțit 2", "Se transformă într-un cuțit aruncabil care provoacă 25 de pagube când e combinat cu {{Collectible626}} Bucata de Cuțit 1#Cuțitul poate deschide o ușă de carne"}, -- Knife Piece 2
	[628] = {"628", "Certificat de Deces", "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#Isaac este teleportat într-o care conține toate itemele din joc#Isaac poate alege doar un item și după este teleportat înapoi"}, -- Death Certificate
	[629] = {"629", "Muscă Robot", "Aruncă cu proiectile care distrug gloanțele inamicilor#Provoacă 3 daune de contact pe secundă"}, -- Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Satâr de Carne", "Taie inamicii în două versiuni mai mici cu 40% din viață#Provoacă 25 de daune inamicilor care nu se pot împărți"}, -- Meat Cleaver
	[632] = {"632", "Farmec Malefic", "↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc#Imunitate la {{Burning}} arsuri, {{Confusion}} confuzie, {{Fear}} teamă și {{Poison}} otravă"}, -- Evil Charm
	[633] = {"633", "Dogmă", "↑ {{Speed}} {{ColorGreen}}+0.1{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune#Zbor și {{HolyMantleSmall}} Manta Sfântă#{{Heart}} Îl vindecă pe Isac cu Inimi Roșii și Inimi Suflet dacă are mai puțin de 6 inimi"}, -- Dogma
	[634] = {"634", "Purgatoriu", "Crăpături roșii apar în camerele neterminate#Dacă mergi peste ele apar în cameră fantome teleghidate care explodează"}, -- Purgatory
	[635] = {"635", "Copcii", "Oferă un familiar care se deplasează în direcția în care Isaac trage#Cînd este folosit Isac schimbă poziția cu familiarul și devine pentru un moment invincibil#Teleportarea pe obiecte cauzează ca ele să fie distuse sau vătămate"}, -- Stitches
	[636] = {"636", "Cheie R", "{{Warning}} UNICĂ FOLOSINȚĂ {{Warning}}#Restartează runul#Tot ce deține Isac este păstrat#Timpul nu se resetează"}, -- R Key
	[637] = {"637", "Picături de Impact", "{{Confusion}} 10% șansă să arunci cu un pumn care provoacă confuzie și împinge inamicii masiv#{{Luck}} 100% șansă la 9 noroc#Inamici primesc daune când sunt împinși în obstacole/zid"}, -- Knockout Drops
	[638] = {"638", "Gumă de Șters", "Aruncă cu o gumă care omoară inamicii instant#Previne ca inamicii șterși să mai apară#Provoacă 15 daune șefilor#Poate fi folosit o singură dată pe etaj"}, -- Eraser
	[639] = {"639", "Inimă Dezgustătoare", "{{RottenHeart}} {{ColorGreen}}+1{{CR}} Inimă Putrezită"}, -- Yuck Heart
	[640] = {"640", "Urna Sufletelor", "Aruncă cu jet de flăcări#Dacă omori un inamic se adaugă o folosire la urnă"}, -- Urn of Souls
	[641] = {"641", "Acheldama", "Crează o dâră de lacrimi în spatele lui Isaac în camerele neterminate#Lacrimile provoacă 3.5 daune"}, -- Akeldama
	[642] = {"642", "Piele Magică", "Pune pe jos un item din poolul respectiv#{{BrokenHeart}} Transformă un spațiu de inimă sau o inimă os sau 2 Inimi Suflet într-o Inimă Spartă#{{Warning}} Înlocuiește itemele viitoare dacă Isaac nu îl ține {{ColorSilver}}(33% după 1, 50% după 2, 100% după 3){{CR}}#Șansă mai mică dacă Pielea Magică se află în etaj pe un piedestal"}, -- Magic Skin
	[643] = {"643", "Revelație", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Zbor#{{Chargeable}} Undă sfântă încărcabilă cu pagube mari#Nu înlocuiește lacrimile lui Isaac"}, -- Revelation
	[644] = {"644", "Premiu de Consolare", "↑ Înlocuiește cea mai mică valoare a lui Isaac dintre: Viteză, Viteză de atac, Daune, Distanță#Oferă 3 {{Coin}} bănuți, 1 {{Bomb}} bombă sau 1 {{Key}} cheie(depinde de ce are Isaac nevoie mai mult)"}, -- Consolation Prize
	[645] = {"645", "Minitoma", "Orbital mare care blochează proiectilele#Provoacă 3.5 daune pe secundă#Se sparge în versiuni mai mici dacă primește 3 lovituri#Versiunile mai mici se sparg în păianjeni albaștrii#Reapare după 5 secunde de când a dispărut"}, -- Tinytoma
	[646] = {"646", "Bombe Brimstone", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Collectible118}} Bombele lui Isaac eliberează lasere Brimstone în 4 direcții#Laserele nu îl rănesc pe Isac"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volți", "Dacă cureți camerele, itemul activ nu se mai încarcă#Dacă provoci daune inamicilor, itemul se va încărca încet#Daunele necesare pentru încărcare cresc cu fiecare etaj"}, -- 4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Prune Fructate", "Se mișcă diagonal prin cameră în timp ce aruncă cu lacrimi#Lacrimile provoacă 3 daune#Provoacă 6 daune de contact pe secundă"}, -- Fruity Plum
	[650] = {"650", "Fluierul lui Prună", "{{Timer}} Invocă un Baby Plum în cameră pentru 10 secunde"}, -- Plum Flute
	[651] = {"651", "Steaua din Betleem", "Traversează încet din prima cameră spre {{BossRoom}} Camera Șefului#Se mișcă mai rapid dacă este înaintea ei și mai încet dacă ești în spate#Aura Oferă:#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}x1.8{{CR}} Daune#Lacrimi teleghidate#{{ColorGreen}}50%{{CR}} șansă să oprească vătămarea"}, -- Star of Bethlehem
	[652] = {"652", "Bebeluș Cub", "Poate fi împins dacă te lovesti de el#{{Slow}} Încetinește și provoacă 17.5 de daune de contact(depinde de viteză)#{{Freezing}} Îngheață inamicii care îi omoară"}, -- Cube Baby
	[653] = {"653", "Vedere Retro", "Cât timp este ținut provoacă inamicii non fantomă să ofere fantome roșii la moarte#Fantomele explodează la folosirea itemului#Itemul omoară TOȚI inamicii fantomă care au mai puțin de 50% din viață"}, -- Retro Vision
	[654] = {"654", "Doctorat Fals", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{Pill}} Identifică toate pastilele#Transformă pastilele bune în pastile rele#↑ {{Damage}} Consumarea pastilelor care scad statusuri oferă {{ColorGreen}}+0.6{{CR}} daune#{{BlackHeart}} Consumarea altor pastile rele oferă o Inimă Neagră"}, -- False PHD
	[655] = {"655", "Învârte să Câștigi", "Oferă un orbital care blochează proiectilele inamicilor și provoacă 10.5 daune de contact pe secundă#Folosirea itemului oferă:#↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#Crește viteza și daunele orbitalului"}, -- Spin to Win
	[656] = {"656", "Damocle", "{{Warning}}#O sabie atârnă deasupra lui Isaac care dublează toate piedestalele#Itemele care costa sau vin din chesturi nu sunt dublate#{{Warning}} După ce Isaac este vătămat sabia are o șansă extrem de mică să îl omoare pe Isaac la fiecare frame#Efectele de invincibilitate pot preveni acest efect"}, -- Damocles (hidden passive version)
	[657] = {"657", "Vasculită", "Inamicii explodează în lacrimi când mor#Lacrimile primesc efectele lui Isaac"}, -- Vasculitis
    [658] = {"658", "Celulă Gigant", "Vătămarea cauzează ca un mini Isaac să apară#Mini Isaaci urmăresc și atacă inamicii din apropiere"}, -- Giant Cell
	[659] = {"659", "Tropicamida ", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Tearsize}} {{ColorGreen}}+0.22{{CR}} Mărimea lacrimelor"}, -- Tropicamide
    [660] = {"660", "Citit în Cărți", "Oferă două portale în prima cameră din noul etaj#Dacă ieși din cameră portalele dispar#{{Blank}} {{ColorRed}}Roșu: {{CR}}{{BossRoom}} Camera Șefilor#{{Blank}} {{ColorYellow}}Galben: {{CR}}{{TreasureRoom}} Camera Comorilor#{{Blank}} {{ColorBlue}}Albastru: {{CR}}{{SecretRoom}} Camera Secretă"}, -- Card Reading
    [661] = {"661", "Cvadrupleți", "Când ucizi un inamic în locul lui apare un familiar staționar#Maxim 5 familiari"}, -- Quints
	[662] = {"662", "", "<Item does not exist>"},
	[663] = {"663", "Dinte și Unghii", "1 secundă de invincibilitate la fiecare 6 secunde#Isaac se aprinde intermitent înainte ca efectul să apară"}, -- Tooth and Nail
	[664] = {"664", "Hiperfagie", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă inimile#Itemele se schimbă între ele și un item de mâncare#Itemele de mâncare oferă:#{{HealingRed}} Vindecă 2 vieți#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↑ 2 statusuri permanente (depinde de mâncare)#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză"}, -- Binge Eater
	[665] = {"665", "Ochiul lui Guppy", "Dezvăluie conținutul {{Chest}} cuferelor, {{GrabBag}} sacurilor, vânzătorilor, focurilor înainte să fie deschise"}, -- Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Sperietoare", "{{Bomb}} {{ColorGreen}}+1{{CR}} Bombă#{{Player14}} Keeper apare ca un caracter secundar#Când Keeper moare acesta oferă păianjeni albaștrii și toate itemele ce le-a luat o să dispară#{{DevilRoom}} Pacturile cu Diavolul costă bani cât timp Keeper este viu#{{Warning}} Keeper poate lua itemele pentru poveste"}, -- Strawman
	[668] = {"668", "Biletul Tatălui", "Începe ascensiunea#Trinketurile lăsate în {{TreasureRoom}} Camera Comorilor sau {{BossRoom}} Camera Șefilor se transformă în {{Card78}} Cheie Crăpată"}, -- Dad's Note
	[669] = {"669", "Cârnat", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{HealingRed}} Vindecă inimile#↑ {{AngelDevilChance}} {{ColorGreen}}+6.9%{{CR}} Șansă la Camerele Înger/Diavol#↑ {{PlanetariumChance}} {{ColorGreen}}+6.9%{{CR}} Șansă la Planetariu"}, -- Sausage
	[670] = {"670", "Opțiuni?", "Isaac poate alege dintre 2 recomense la finalizarea camerei"}, -- Options?
	[671] = {"671", "Inimă Bomboană", "↑ Dacă te vindeci cu {{Heart}} Inimi Roșii primești statusuri permanente pozitive#{{Heart}} Oferă o Inimă Roșie"}, -- Candy Heart
	[672] = {"672", "Un Kg de Carne", "{{DevilRoom}} Pacturile cu diavolul costă bani#{{Shop}} Itemele din magazin costă inimi#Consumabilele sunt încojurate de țepi"}, -- A Pound of Flesh
	[673] = {"673", "Mântuire", "{{DevilRoom}} Intrarea în noul etaj dacă ai vizitat Camera Diavolului fară să nimic, oferă:#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimi Suflet"}, -- Redemption
	[674] = {"674", "Lanțuri Spirit", "Vătămarea fatală îl transformă pe Isaac într-o fantomă legată de corpul lui mort cu lanțuri și îi permite să zboare cu o jumătate de inimă#Dacă fantoma supraviețuiește, Isaac revine la viață după 10 secunde#Este încărcat cu Inimi Suflet"}, -- Spirit Shackles
	[675] = {"675", "Sferă Spartă", "Vătămarea oferă:#Deschide toate ușile din cameră#Dezvăluie o cameră din cameră#Distruge toate pietrele colorate și care ascund un beci"}, -- Cracked Orb
	[676] = {"676", "Inimă Goală", "{{EmptyHeart}} {{ColorGreen}}+1{{CR}} O viață goală la o inimă roșie sau mai puțin la intrare într-un etaj nou"}, -- Empty Heart
	[677] = {"677", "Proiecție Astrală", "{{Timer}} Vătămarea într-o cameră netrerminată oferă:#Lacrimi spectrale#Zbor#Oprește următoarea vătămare#Oprește timpul pentru 2 secunde#Crește treptat viteza și viteza de atac pentru 2 secunde"}, -- Astral Projection
	[678] = {"678", "Cezariană", "{{Chargeable}} Înlocuiește lacrimile lui Isaac cu fetuși spectrali cu orientare#Lacrimile sunt încărcabile#{{Damage}} Fetuși provoacă {{ColorGreen}}2.8x{{CR}} daune pe secundă"}, -- C Section
	[679] = {"679", "Micul Abaddon", "{{Collectible399}} Familiar care eliberează un ceerc Maw of the Void#Provoacă 52.5 daune pe durata a 1 secundă"}, -- Lil Abaddon
	[680] = {"680", "Răzbunarea lui Montezuma", "{{Chargeable}} Cât timp tragi, o rază de distanță mică se încarcă care se eliberează prin spate#Nu înlocuiește lacrimile lui Isaac"}, -- Montezuma's Revenge
	[681] = {"681", "Micul Portal", "Provoacă daune de contact și zboară în față#Consumă pickupuri în durumul său cu care intă în contact#Fiecare pickup consumat îi crește daunele, mărimea și oferă o muscă albastră#Dacă consumă 4 pickupuri oferă un portal care duce spre o cameră ne explorată"}, -- Lil Portal
	[682] = {"682", "Prieten Vierme", "Câteodată sare din pământ și prinde un inamic#Inamicii prinși primesc 8 daune pe secundă, sunt încetiniți și nu se pot mișca"}, -- Worm Friend
	[683] = {"683", "Pinten Osos", "Inamicii oferă bucăți de oase când mor#Oasele provoacă daune de contact și blochează proiectilele"}, -- Bone Spurs
	[684] = {"684", "Suflet Înfometat", "Inamicii omorâți au o șansă să ofere o fantomă#Fantomele urmăresc inamicii, provoacă daune de contact și explodează după 5 secunde#Isaac nu este vătămat de explozii"}, -- Hungry Soul
	[685] = {"685", "Borcan cu Musculițe", "Oferă o musculiță aleatorie#Oferă o musculiță în plus cu fiecare folosire(maxim 12)"}, -- Jar of Wisps
	[686] = {"686", "Medalion Suflet", "↑ Dacă colectezi {{SoulHeart}} Inimi Suflet primești statusuri aleatorii pozitive#{{SoulHeart}} Oferă o Inimă Suflet"}, -- Soul Locket
	[687] = {"687", "Găsitor de Prieteni", "Oferă un inamic prietenos care copiază mișcările lui Isaac și atacă"}, -- Friend Finder
	[688] = {"688", "Copilul Interior", "{{ColorGreen}}+1{{CR}} Reînviere#La moarte:#Isaac este readus la viață cu o jumătate de inimă#↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ Micește mărimea masiv"}, -- Inner Child
	[689] = {"689", "Coroană Glichuită", "Piedestalele cu iteme se schimbă între 5 iteme"}, -- Glitched Crown
	[690] = {"690", "Burtă de Jeleu", "Inamicii sunt împinși de Isac#50% șansă să se evite vătămarea la contact#50% șansă să devieze proiectilele inamicilor"}, -- Belly Jelly
	[691] = {"691", "Glob Sacru", "Previne ca itemele de calitate {{Quality0}}/{{Quality1}} să mai apară#Itemele de calitate {{Quality2}} au o șansă de 33% să fie înoite"}, -- Sacred Orb
	[692] = {"692", "Legătură de Sânge", "{{DevilRoom}} Camerele Demon conțin un set de țepi#Dacă ești vătămat de țepi primești:#35%: Nimic#33%: ↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#15%: 6 {{Coin}} Bănuți#10%: 2 {{BlackHeart}} Inimi Negre#5%: {{DevilRoom}} Item din Camera Diavolului#2%: Transformarea Leviatan"}, -- Sanguine Bond
	[693] = {"693", "Roiul", "Primești 8 orbitali muște#Curățarea camerei oferă o muscă nouă#Muștele se transformă în muște albastre dacă sunt lovite"}, -- The Swarm
	[694] = {"694", "Rănit în Dragoste", "↑ {{Damage}} {{ColorGreen}}+0.25{{CR}} Daune pentru fiecare Inimă Ruptă#{{BrokenHeart}} {{ColorGreen}}+3{{CR}} Inimi Rupte#{{BrokenHeart}} Fiecare Lovitură fatală oferă {{ColorGreen}}+2{{CR}} Inimi Rupte#Isaac moare la 12 Inimi Rupte"}, -- Heartbreak
	[695] = {"695", "Rafală Sângeroasă", "Vătămarea cauzează pe durata etajului:#↑ {{Speed}} Viteză în plus#↑ {{Tears}} Viteză de atac în plus#Maxim {{ColorGreen}}+1.02{{CR}} viteză și {{ColorGreen}}+3{{CR}} viteză de atac"}, -- Bloody Gust
	[696] = {"696", "Mântuire", "Isaac este înconjurat de o aură#Inamicii care stau prea mult în aură sunt loviți de o undă de lumină în 4 direcți#Vătămarea cauzează ca aura să crească pe durata etajului"}, -- Salvation
	[697] = {"697", "Geamănul Dispărut", "Camera Șefului conține o dublură a șefului#Dublura oferă un item extra#Clona este mai înceată și are 75% din viață"}, -- Vanishing Twin
	[698] = {"698", "Pereche Răsucită", "Doi familiar care trag cu aceliași lacrimi ca a le lui Isaac#{{Damage}} Provoacă 37.5% din daunele lui Isaac"}, -- Twisted Pair
	[699] = {"699", "Furia lui Azazel", "{{Collectible118}} Dacă cureți 4 camere în următoarea tragi cu Brimstone mare"}, -- Azazel's Rage
	[700] = {"700", "Ecou", "Folosirea unei {{Rune}} rune , {{Card}} cărti sau {{Pill}} pastile folosește de asemenea ultimele 3 rune/cărți/pastile folosite#Efectul se aplică după ce itemul a fost luat"}, -- Echo Chamber
	[701] = {"701", "Sarcofagul lui Isac", "Oferă un {{DirtyChest}} Cufăr Vechi la începutul fiecărui etaj#Cuferele Vechi se deschid cu o cheie și conțin {{SoulHeart}} Inimi Suflet, {{Trinket}} trinketuri sau iteme Mamă, Tată sau Înger"}, -- Isaac's Tomb
	[702] = {"702", "Spirit Răzbunător", "Vătămarea oferă un orbital musculiță#Musculițele trag cu lacrimi, dar nu opresc lacrimile inamicilor și dispar în următorul etaj#Maxim 6 musculițe"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Simbă dintre caracterul curent și Esau Jr.#Esau Jr. are {{BlackHeart}} 3 Inimi Negre, {{Damage}} {{ColorGreen}}+2{{CR}} Daune, zbor, Iteme aleatorii egale cu jr de iteme jucătorul are la folosire itemului#Caracterele au iteme și viață diferită#{{Warning}} Moartea cu oricare dintre carctere  încheie runul"}, -- Esau Jr.
	[704] = {"704", "Berserk!", "{{Battery}} Se încarcă cu daunele provocate#{{Timer}} Pentru 5 secunde primești:#↑ {{Speed}} {{ColorGreen}}+0.4{{CR}} Viteză#↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Viteză de atac#↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+3{{CR}} Daune#Isaac atacă cu lamă care deviază proiectilele#{{Timer}} Fiecare eliminare oferă o secundă în plus la efect și invincibilitate scurtă"}, -- Berserk!
	[705] = {"705", "Arte Întunecate", "{{Timer}} Pentru 1 secundă (sau până tragi):↑ {{Speed}} {{ColorGreen}}+1{{CR}} Viteză#Isaac trece prin inamici și proiectile, oprindule în loc#Când efectul se termină inamici paralizați sunt vătămați, proiectilele sunt șterse și Isaac provoacă o explozie#Atacul și explozia sunt mai puternice cu cît Isaac trece prin mai mulți inamici și proiectile"}, -- Dark Arts
	[706] = {"706", "Abyss", "Consumă toate itemele de pe piedestale și oferă o locustă pentru fiecare#Locustele provoacă daunele lui Isaac de 2-3 ori pe atac#Unele iteme oferă locuste speciale"}, -- Abyss
	[707] = {"707", "Masă de Seară", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#{{HealingRed}} Vindecă 1 inimă"}, -- Supper 
	[708] = {"708", "Capsator", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#Toate lacrimile lui Isaac sunt trase din ochiul drept"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac se repede în direcția în care se mișcă#Repezirea într-un inamic sau șef îl ridică pe sus și îl trântește de pământ#Izbitura provoacă daune și generează un val de pietre(depinde de mărimea lui Isaac)#Invincibilitate în timpul repeziri și când trântește inamicii)"}, -- Suplex!
	[710] = {"710", "Geantă de Meșteșuguri", "Colectează până la 8 pickupuri(nu pot fi aruncate pe jos o dată ce au fost colectate)#Folosirea itemului cu 8 pickupuri oferă un item#Calitatea itemului depinde de calitatea pickupurilor"}, -- Bag of Crafting
	[711] = {"711", "Flip", "Camerele cu iteme arată un alt item fantomă lângă#Folosirea itemului îl schimbă cu cel fantomă#Folosirea itemului dupa ce primul item a fost luat îi permite lui Isaac să îl ia pe cel fantomă#{{Warning}} Itemul fantomă dispare după ce Isaac iese din cameră"}, -- Flip
	[712] = {"712", "Lemegeton", "Oferă un orbital care dă efectul unui item aleatoriu#Itemul are o șansă de 25% să fie din poolul curent și o șansă de 75% să fie din poolul din Camera comorilor, Șefului sau Magazin"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Șterge jumătate de inimă și oferă un cheag#Cheagul copiază lacrimile lui Isaac#Fiecare tip de inimă oferă un cheag cu viață, daune și efecte de lacrimi diferite"}, -- Sumptorium
	[714] = {"714", "Chemat", "Readuce corpul lui Forgotton de la orice distanță#Sufletul este invincibil cât timp Forgotten este readus"}, -- Recall
	[715] = {"715", "Ține", "Folosirea itemului când e gol păstrează următorul rahat#Folosirea itemului când e plin folosește rahatul din el"}, -- Hold
	[716] = {"716", "Sacul lui Keeper", "Oferă 3 {{Coin}} bănuți și 1 {{Key}} cheie#{{Shop}} Folosirea a 3 bănuți oferă:#↑ {{Speed}} {{ColorGreen}}+0.03{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță"}, -- Keeper's Sack
	[717] = {"717", "Ruda lui Keeper", "Pietrele și alte obstacole oferă 2 păianjeni albaștrii cand sunt distruse#Pietrele oferă ocazional păianjeni albaștrii în camerele neterminate"}, -- Keeper's Kin
	[718] = {"718", "", "<Item does not exist>"},
	[719] = {"719", "Cutia lui Keeper", "{{Shop}} Oferă un item/pickup aleatoriu din magazin pentru a fi cumpărat"}, -- Keeper's Box
	[720] = {"720", "Borcan cu de Toate", "Oferă pickupuri depinzând de numarul de încărcări#Nr de încărcări:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Oferă un efect aleatoriu puternic la 12 încărcări"}, -- Everything Jar
	[721] = {"721", "TMANTRENOR", "Toate itemele viitoare devin glitched#Itemele glitched au efecte complet aleatorii"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Înlănțuiește cel mai apropiat inamic timp de 5 secunde#Inamicii înlănțuiți nu se pot mișca"}, -- Anima Sola
	[723] = {"723", "Zar Coborâtor", "Înlocuiește itemele din cameră scăzând ID-ul cu 1"}, -- Spindown Dice
	[724] = {"724", "Hipercoagulare", "{{Heart}} Vătămarea aruncă o Inimă sau jumătate de Inimă Roșie(depinde cât de mult a fost Isac a pierdut)#Inimile sunt propulsate și dispar după 1.5 secunde"}, -- Hypercoagulation
	[725] = {"725", "SII", "Provocând destule daune, Isaac strălucește intermiten roșu#Eliberarea butonului de tragere când Isac strălucește ori:#Aruncă cu un rahat aleatoriu#Creează o baltă de alunecoasă#{{Poison}} Se beșește cu un nor otrăvitor#5 bombe vi apar"}, -- IBS
	[726] = {"726", "Hemoptizie", "Dubla apăsare a butonului de tragere cauzează ca Isaac să strănute sânge#Strănutul provoacă {{ColorGreen}}1.5x{{CR}} daune#1 secundă timp de așteptare#{{BrimstoneCurse}} Inamicii afectați primesc daune extra de la undele de Brimstone"}, -- Hemoptysis
	[727] = {"727", "Bombe Fantome", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac oferă fantome care urmăresc inamicii#Fantomele provoacă {{ColorGreen}}2x{{CR}} daune și explodează după 10 secunde"}, -- Ghost Bombs
	[728] = {"728", "Gelu", "Un familiar demon iese din Isaac pe durata camerei#Demonul trage după cel mai apropiat inamic#Copiază lacrimele, statusurile și efectele lui Isac#{{Damage}} Lacrimele provoacă 75% din daunele lui Isac"}, -- Gello
	[729] = {"729", "Atac Decapitat", "Aruncă capul lui Isaac într-o direcție#Capul provoacă daune de contact și aruncă cu lacrimi de unde a aterizat#Dacă itemul este folosit din nou sau Isac calcă peste cap, el va fi reatașat"}, -- Decap Attack
	[730] = {"730", "Ochi de Sticlă", "↑ {{Damage}} {{ColorGreen}}+0.75{{CR}} Daune#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc"}, -- Glass Eye
	[731] = {"731", "Orjelet ", "↑ {{Damage}} {{ColorGreen}}x1.28{{CR}} Daune pentru ochiul drept#↑ {{Range}} {{ColorGreen}}+6.5{{CR}} Distanță pentru ochiul drept#↓ {{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza lacrimilor pentru ochiul drept"}, -- Stye
	[732] = {"732", "Inelul Mamei", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{Rune}} Oferă o rună sau o piatră suflet la întâplare"}, -- Mom's Ring
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, în order to add Binge eater icon în front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Lunch
	[23] = "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimelor#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Dinner
	[24] = "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimelor#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Dessert
	[25] = "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimilor#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Breakfast
	[26] = "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Rotten Meat
	[346] = "↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza lacrimilor#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- A Snack
	[456] = "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Midnight Snack
	[707] = "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#↑ {{Damage}} {{ColorGreen}}+3.6{{CR}} Daune temporare#↓ {{Speed}} {{ColorRed}}-0.03{{CR}} Viteză", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, în order to add Book of Belial icon în front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "De asemenea invocă efectul {{Collectible35}} Necronomicon", -- Kamikaze!
	[126] = "De asemenea invocă efectul {{Collectible35}} Necronomicon", -- Razor Blade
	[127] = "↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune pentru următorul etaj", -- Forget me Now
	[133] = "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune", -- Guppy's Paw
	[135] = "Temporar ↑ {{Damage}} {{ColorGreen}}+0.66{{CR}} daune pentru fiecare folosire", -- IV Bag
	[147] = "Toporul are durabilitate și recul mărite, poate fi folosit mai repede, aprinde inamicii cu {{Burning}} foc și lasă mai multe pickup-uri când distrugi rahaturi și obstacole", -- Notched Axe
	[186] = "De asemenea invocă efectul {{Collectible126}} Lama de Ras", -- Blood Rights
	[282] = "Lasă o dâră de foc care frovoacă daune si dă {{Burning}} foc la inamici", -- How to Jump
	[290] = "La folosire consumă o inimă, oferă daune {{Damage}} și lasă o baltă roșie pe jos", -- The Jar
	[295] = "Are o șansă să ofere efectul {{Collectible555}} Brici de Aur", -- Magic Fingers
	[297] = "Oferă permanent un familiar demonic în paralel cu recompensele clasice", -- Pandora's Box
	[323] = "Aruncă cu 10 lacrimi spectrale și care penetrează inamici cu daune extra", -- Isaac's Tears
	[326] = "În loc să generezi lumină, ai o aură de foc cât timp ești invincibil#Temporar ↑ {{Damage}} creștere de daune și invocă efectul {{Collectible35}} Necronomicon la un blocaj perfect", -- Breath of Life
	[352] = "Activează efectul {{Collectible34}} Cartea lui Belial când este spart#Daunele extra persistă până este reparat", -- Glass Cannon
	[475] = "Judas este readus la viață ca Dark Judas dacă are o viață extra", -- Plan C
	[482] = "Înlocuiește cel mai recent item obținut cu {{Collectible51}} o Pentagramă în loc să îl șteargă", -- Clicker
	[487] = "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} daune adiționale", -- Potato Peeler
	[536] = "Pentru fiecare familiar sacrificat:#↑ {{Damage}} {{ColorGreen}}+10.8{{CR}} daune care scad încet", -- Sacrificial Altar
	[555] = "Provoacă daune tuturor inamicilor din cameră#Inamici omorâți de acest efect oferă 1-2 bănuți", -- Golden Razor
	[577] = "↑ {{Damage}} Daune extra permanente", -- Damocles
	[582] = "Permanent ↑ {{Damage}} Daunele cresc în funcție de cel mai mare număr de cumulări ale efectului itemului", -- Wavy Cap
	[585] = "Oferă în schimb 2 Inimi Negre și 1 item din Pactul cu Diavolul#Oferă 3 inimi și 2 iteme dacă un Pact cu Diavolul a fost luat", -- Alabaster Box
	[622] = "Oferă o {{Collectible51}} Pentagramă gratuită", -- Genesis
	[623] = "Oferă si efectul {{Collectible126}} Lamă de Ras", -- Sharp Key
	[635] = "Creează o linie de {{Collectible705}} Arte Întunecate între Judas și Copcii", -- Stitches
	[640] = "Aruncă {{Collectible118}} Brimstone în loc", -- Urn of Souls
	[642] = "↑ {{Damage}} {{ColorGreen}}x1.4{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune", -- Magic Skin
	[653] = "Creeaza fantome când inamici sunt omorâți care explodează cand itemul este folosit", -- Vade Retro
	[685] = "Oferă Musculițe {{Collectible292}} Biblia Satanică #{{DevilChance}} {{ColorGreen}}+10%{{CR}} Șansă la Pact cu Diavolul pentru fiecare musculiță", -- Jar of Wisps
	[705] = "Oferă ↑ {{Damage}} daune crescute pentru fiecare inamic/proiectil atins", -- Dark Arts
	[710] = "Colectarea de {{Heart}} Inimi Roșii are o șansă să le înlocuiască cu {{BlackHeart}} Inimi Negre", -- Bag of Crafting
	[729] = "Când capul este detașat:#↑ {{Tears}} {{ColorGreen}}x3{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].BookOfVirtuesWispTexts = {
	-- values inside {} brackets will be replaced with text parts below
	-- Wisp texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the wisp descriptions
	StatDescription = "{ringIcon}{{Wisp}} {amount}|{{Heart}} {health}|{{Damage}} {damage}",	-- {ringIcon} will be replaced with an icon representing the wisp movement, {amount} with the number of wisps, {health} with the HP, {damage} with the damage or the "CantShoot" text
	Shotspeed = "{1}% Viteza lacrimilor", 				-- {1} will be replaced with the shot speed changes in %
	Damage = "{1}% Daune", 					-- {1} will be replaced with the damage changes in %
	Chance = " ({1}% Șansă)",					-- {1} will be replaced with the chance
	SingleRoom = "Musculiță pe durata camerei",
	NoWisps = "Fără musculițe",
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[35] = "Musculițe de apropiere {{InnerWisp}}#3.5% șansă pentru {{Fear}} lacrimi care provoacă teamă#{{Collectible35}} Efectul Necronomicon când sunt distruse", -- The Necronomicon
	[37] = "Musculițe de mijloc {{MiddleWisp}}#Aruncă bombe împrăștiate când sunt distruse", -- Mr. Boom
	[38] = "Musculițe distanțate {{OuterWisp}}#Lacrimi rapide fără precizie", -- Tammy's Head
	[40] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi explozive#Explodează la distrugere", -- Kamikaze!
	[47] = "Musculițe de mijloc {{MiddleWisp}}#Aruncă cu 3 lacrimi explozive către țintă la folosire", -- Doctor's Remote
	[49] = "Musculițe distanțate {{OuterWisp}}#Nu pot trage cu lacrimi#Trage cu o rază la folosire", -- Shoop da Whoop!
	[56] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi rapide cu distanță mică#Musculițele lasă o baltă galbenă", -- Lemon Mishap
	[58] = "Musculițe de mijloc {{MiddleWisp}}#Musculițe cu viață redusă, dar imune la proiectile#Imune la daune pe perioada efectului {{Collectible58}}", -- Book of Shadows
	[65] = "Musculițe de mijloc {{MiddleWisp}}#Aruncă o Bombă Troll când sunt distruse", -- Anarchist Cookbook
	[66] = "Musculițe de mijloc {{MiddleWisp}}#{{Slow}} Încetinește inamicii pentru 3 secunde când sunt distruse", -- The Hourglass
	[77] = "Musculițe de mijloc {{MiddleWisp}}#Daune de contact extra", -- My Little Unicorn
	[78] = "Musculițe de apropiere {{InnerWisp}}#Nu pot trage cu lacrimi#Oferă o lăcustă pe durata camerei când sunt distruse", -- Book of Revelations
	[85] = "Musculițe de apropiere {{InnerWisp}}#Oferă o {{Card}} carte când sunt distruse", -- Deck of Cards
	[97] = "Oferă 1 sau 8 musculițe:#{{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#{{Warning}} Pot apărea efecte explozive", -- The Book of Sin
	[102] = "Musculițe de apropiere {{InnerWisp}}#Oferă 1 sau 6 musculițe:#lacrimi normale care oferă un păianjen inamic când sunt distruse sau au o șansă să ofere lacrimi otrăvitoare, care pietrifică, care provoacă confuzie, care ard sau Bombe Troll#Toate 6 oferă o {{Pill}} pastilă când sunt distruse", -- Mom's Bottle of Pills
	[105] = "Musculițe de mijloc {{MiddleWisp}}#{{ColorGreen}}+1{{CR}} musculiță pentru fiecare item reînnoit", -- The D6
	[111] = "Musculițe distanțate {{OuterWisp}}#{{Poison}} Beșină otrăvitoare cand sunt distruse", -- The Bean
	[123] = "Musculițe de apropiere {{InnerWisp}}#Lacrimi aleatorii", -- Monster Manual
	[124] = "Oferă musculița itemului care îl copiază", -- Dead Sea Scrolls
	[130] = "Musculițe de mijloc {{MiddleWisp}}#Nu poate trage cu lacrimi#Se duc în direcția în care Isaac trage", -- A Pony
	[137] = "Musculițe de apropiere {{InnerWisp}}#{{ColorGreen}}+1{{CR}} Musculiță pentru fiecare bombă detonată#Lacrimile musculițelor pot fi detonate", -- Remote Detonator
	[145] = "Musculițe distanțate {{OuterWisp}}#Primești musculițe în loc de muște#Oferă o muscă când sunt distruse", -- Guppy's Head
	[147] = "Șansă să ofere musculițe răhățel din rahat și 1 sau 5 musculițe minerale din pietre:#{{Collectible132}} Cărbune, {{Collectible201}} Fier, {{Collectible202}} Aur, {{Collectible68}} Piatră roșie, {{Collectible415}} Diamant", -- Notched Axe
	[160] = "Musculițe de mijloc {{MiddleWisp}}#Aduce o rază de lumină la contact", -- Crack the Sky
	[166] = "Musculițe de mijloc {{MiddleWisp}}#Distruge toate pickup-urile din cameră cu o șansă să primești o musculiță aleatorie pentru fiecare", -- D20
	[175] = "Musculițe de mijloc {{MiddleWisp}}#Musculițele deschid cufere/uși închise la atingere, poate descide ușa de la Mega Satan, Ascensiune, Cadavru#Musculițele se donează la {{KeyBeggar}} Cerșetorul de chei", -- Dad's Key
	[177] = "Oferă o musculiță bazată pe premiul câștigat", -- Portable Slot
	[263] = "Musculițe de mijloc {{MiddleWisp}}#15% șansă ca inamicii să ofere o {{Rune}} rună când sunt omorâți#Oferă o {{Rune}} rună când este distrusă", -- Clear Rune
	[283] = "Înlocuiește toate musculițele și oferă o musculiță aleatorie#Nu schimbă Cartea Virtuților", -- D100
	[284] = "Elimină toate musculițele și oferă o musculiță aleatorie pentru fiecare 2 iteme deținute#Nu schimbă Cartea Virtuților", -- D4
	[285] = "Musculițe de mijloc {{MiddleWisp}}#10% șansă pentru lacrimi cu efect D10", -- D10
	[286] = "Musculițe de mijloc {{MiddleWisp}}#15% șansă ca inamicii să ofere o {{Card}} carte când sunt omorâți#Oferă o {{Card}} carte când este distrusă", -- Blank Card
	[287] = "Musculițe de mijloc {{MiddleWisp}}#{{Collectible675}} Efectul Sferă Spartă când este distrusă", -- Book of Secrets
	[288] = "Musculițe distanțate {{OuterWisp}}#Oferă musculițe în loc de păianjeni#Oferă un păianjen albastru când este distrusă", -- Box of Spiders
	[290] = "Musculițe de mijloc {{MiddleWisp}}#Creează o musculiță pentru fiecare inimă în loc să le arunce#Are o șansă sa ofere o {{HalfHeart}} jumătate de Inimă Roșie când este distrusă", -- The Jar
	[291] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o musculiță extra pentru fiecare inamic scufundat", -- Flush!
	[292] = "Musculițe de mijloc {{MiddleWisp}}#{{ColorGreen}}+10%{{CR}} {{AngelDevilChance}} șansă la Diavol/Înger pentru fiecare musculiță de la Biblia Satanică", -- Satanic Bible
	[293] = "Musculițe de mijloc {{MiddleWisp}}#Trage cu o rază de {{Collectible118}} Brimstone în 4 direcții cand este distrusă", -- Head of Krampus
	[294] = "Musculițe de apropiere {{InnerWisp}}#Musculiță pe durata camerei cu viață redusă#Nu trage cu lacrimi#Activează efectul Fasole Lima când este distrusă", -- Butter Bean
	[295] = "Musculițe de apropiere {{InnerWisp}}#Șansă să ofere un {{Coin}} bănuț când este distrusă", -- Magic Fingers
	[296] = "Musculițe de mijloc {{MiddleWisp}}#Musculiță cu viață mai mare care poate fi vindecată cu {{Heart}} Inimi Roși", -- Converter
	[297] = "Musculițe de mijloc {{MiddleWisp}}#Oferă între 0-8 musculițe(depinde de etaj)", -- Pandora's Box
	[298] = "Musculițe de mijloc {{MiddleWisp}}#Nu trage cu lacrimi#Imun la daunele de contact#Provoacă daune de contact numai dacă efectele de tipul Șchiopătarea Unicornului", -- Unicorn Stump
	[323] = "Musculițe de mijloc {{MiddleWisp}}#Oferă 6 muculițe#Supraviețuiesc numai 3 secunde", -- Isaac's Tears
	[324] = "Musculițe de mijloc {{MiddleWisp}}#{{Collectible570}} Lacrimi Biscuite de Plasterină", -- Undefined
	[325] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi arcuite și grupate", -- Scissors
	[326] = "Musculițe de apropiere {{InnerWisp}}#Oferă 4 musculițe la o blocare perfectă", -- Breath of Life
	[347] = "Musculițe de mijloc {{MiddleWisp}}#Musculiță cu viață ridicată și lacrimi {{Collectible245}} 20/20#Dublează celălalte musculițe", -- Diplopia
	[348] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o {{Pill}} pastilă cand este disrusă", -- Placebo
	[349] = "Musculițe de mijloc {{MiddleWisp}}#50% șansă să ofere un {{Coin}} bănuț când este distrusă", -- Wooden Nickel
	[351] = "Musculițe de mijloc {{MiddleWisp}}#Lansează un val de pietre la folosire#Pietrifică și {{Poison}} otrăvește inamici cu o beșină când este distrusă", -- Mega Bean
	[352] = "Musculițe de mijloc {{MiddleWisp}}#Musculiță cu viață redusă care persistă printre camere#Toate Musculițele Tun de Sticlă sunt distuse când una este distrusă", -- Glass Cannon
	[357] = "Musculițe de mijloc {{MiddleWisp}}#Fără efect special#Dublează toate musculițele pe durata camerei", -- Box of Friends
	[382] = "Musculițe de mijloc {{MiddleWisp}}#Inamicii prietenoși generează 1 din 4 musculițe la moarte, în funcție de atac: lacrimi normale, care urmăresc, explozive sau Brimstone", -- Friendly Ball
	[383] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimile musculițelor pot fi detonate și se transformă in 6 lacrimi a le lui Isac#Persistă între camere#Explodează în lacrimile lui Isac când este distrusă", -- Tear Detonator
	[386] = "Musculițe de mijloc {{MiddleWisp}}#5% șansă ca lacrimile să schimbe pietrele, urnele, cranile sau ciupercile", -- D12
	[396] = "Nu poate trage#Fiecare portal are o musculiță", -- Ventricle Razor
	[406] = "Musculițe de mijloc {{MiddleWisp}}#Daune și viteză de atac aleatorie", -- D8
	[421] = "Musculițe de mijloc {{MiddleWisp}}#{{Charm}} Lacrimi care vrăjesc inamicii#{{Charm}} Pârț care vrăjește când este distrusă", -- Kidney Bean
	[422] = "Musculițe de mijloc {{MiddleWisp}}#30% șansă pentru lacrimi care pietrifică#Reînvie toate musculițele care au fost distruse în camera anterioară", -- Glowing Hourglass
	[427] = "Sare prin cameră și explodează când Isaac o lovește cu o lacrimă#Nu poate trage și nu oferă daune de contact", -- Mine Crafter
	[434] = "Musculițe de mijloc {{MiddleWisp}}#Oferă musculițe în loc de muște#Până la 5 muște oferă 1 musculiță cu viață și daunele ridicate", -- Jar of Flies
	[437] = "Musculițe de mijloc {{MiddleWisp}}#Efect D7 când este lovită prima dată", -- D7
	[441] = "Musculițe de mijloc {{MiddleWisp}}#{{Chargeable}} Lacrimi Brimstone încărcate#Trag ocazional pe perioada unui Mega Blast", -- Mega Blast
	[476] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o a doua musculiță dacă un pick-up nu a fost dublat", -- D1
	[477] = "Oferă musculițele tuturor itemelor active absorbite#Nu oferă musculițe pe cont propriu", -- Void
	[478] = "Musculițe de mijloc {{MiddleWisp}}#Oprește toți inamicii și proiectilele pentru 3 secunde când este distrusă", -- Pause
	[479] = "Musculițe de mijloc {{MiddleWisp}}#Șansă să ofere un {{Trinket}} trinket când este distrusă", -- Smelter
	[480] = "Musculițe de mijloc {{MiddleWisp}}#Viață crescută pentru fiecare pick-up convertit#Oferă numai o musculiță dacă cel puțin un pick-up a fost convertit", -- Compost
	[481] = "Musculițe de mijloc {{MiddleWisp}}#5% șansă ca lacrimile să transforme inamicii în musculițe aleatorii", -- Dataminer
	[482] = "Generează o musculiță aleatorie", -- Clicker
	[483] = "Musculițe de mijloc {{MiddleWisp}}#Oferă 8 musculițe care aruncă Bombe Trol de aur când sunt distruse", -- Mama Mega!
	[484] = "Musculițe de mijloc {{MiddleWisp}}#Musculiță pe durata camerei#Nu poate trage#Efectul Stai Ce? este activat când este distrusă", -- Wait What?
	[485] = "Musculițe de mijloc {{MiddleWisp}}#Toate musculițele Bănuț Strâmb sunt distruse sau dublate dacă una este lovită", -- Crooked Penny
	[486] = "Musculițe de mijloc {{MiddleWisp}}#Nu poate trage#Șansă de a anula daunele primite de Isac, dar sunt distruse pentru asta", -- Dull Razor
	[487] = "Musculiță indestructibilă și permanentă#Urmărește inamicii ca să tragă în ei#Nu blochează proiectilele și nu provoacă daune de contact", -- Potato Peeler
	[488] = "Oferă musculița item-ului mimat (musculiță aleatorie dacă itemul nu este activ)", -- Metronome
	[489] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o musculiță aleatorie#Efect extra bazat pe zarul folosit", -- D Infinity
	[490] = "Oferă o musculiță aleatorie#Reînvie după curățarea camerei dacă este distrusă", -- Eden's Soul
	[504] = "Musculițe de mijloc {{MiddleWisp}}#Musculiță pe durata camerei#Lacrimi controlate rapide cu daune reduse", -- Brown Nugget
	[507] = "Musculițe distanțate {{OuterWisp}}#Șansă să ofere o musculiță la eliminarea inamicilor", -- Sharp Straw
	[510] = "Musculițe de mijloc {{MiddleWisp}}#{{Collectible229}} Lacrimi Plămânul lui Monstro, {{Collectible268}} Bebeluș Putrezit, {{Collectible87}} Coarnele lui Loki sau {{Collectible118}} Brimstone", -- Delirious
	[515] = "Oferă o musculiță aleatorie#Reînvie după curățarea camerei dacă este distrusă", -- Mystery Gift
	[516] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi rapide#Lacrimile se duc în 8 direcții ca item-ul Stropitoare", -- Sprinkler
	[521] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi triple#Achiziționarea a orice distruge toate musculițele Cupon", -- Coupon
	[522] = "Musculițe distanțate {{OuterWisp}}#Proiectilele capturate se transformă în musculițe", -- Telekinesis
	[523] = "Musculițe de mijloc {{MiddleWisp}}#Musculița apare doar când se transformă pickup-uri#Generează un pickup aleatoriu când este distrusă", -- Moving Box
	[527] = "Musculițe de mijloc {{MiddleWisp}}#Nu poate trage#Când camera este curățată musculițele deschid uși/cufere", -- Mr. ME!
	[536] = "Musculițe de mijloc {{MiddleWisp}}#Schimbă toate musculițele în {{HalfHeart}} jumatate de Inimă Roșie#Oferă o musculiță cu viață și daunle ridicate la sacrificu", -- Sacrificial Altar
	[545] = "Musculițe de apropiere {{InnerWisp}}#Oferă un Bony prietenos când este distrusă", -- Book of the Dead
	[550] = "Musculițe de mijloc {{MiddleWisp}}#10% șansă ca lacrimile să provoace piciorul mamei să cadă pe inamici", -- Broken Shovel
	[552] = "Musculițe de mijloc {{MiddleWisp}}#10% șansă ca lacrimile să provoace piciorul mamei să cadă pe inamici#Deasemenea oferă o musculiță cu viață ridicată care nu poate să tragă", -- Mom's Shovel
	[556] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi {{Collectible118}} Brimstone cu distanță scăzută", -- Sulfur
	[557] = "Musculițe de mijloc {{MiddleWisp}}#↑ {{Luck}} {{ColorGreen}}+0.2{{CR}} Noroc pentru fiecare musculiță Prăjitură cu Răvaș", -- Fortune Cookie
	[578] = "Musculițe de mijloc {{MiddleWisp}}#Musculițele picură bălți galbene", -- Free Lemonade
	[580] = "Musculițe de mijloc {{MiddleWisp}}#Șansă să deschidă o Ușă Roșie la intrarea într-o cameră nouă", -- Red Key
	[582] = "Musculițe de mijloc {{MiddleWisp}}#Lacrimi cu daune scăzute#Maxim 1 musculiță Ciupercă Îndoită", -- Wavy Cap
	[584] = "Fără efect special pentru mai multe copii", -- Book of Virtues
	[604] = "Musculiță pe durata camerei#Oferă 1-3 musculițe în locul în care obiectele cad (maxim 8 musculițe)#10% șansă să provoace {{Confusion}} confuzie", -- Mom's Bracelet
	[609] = "Musculițe de mijloc {{MiddleWisp}}#50% șansă să ofere o musculișă invincibilă#50% șansă să distrugă toate musculițele D6 Etern", -- Eternal D6
	[611] = "Musculițe de mijloc {{MiddleWisp}}#Viața și daunele sunt mărite pe bază de cât de încărcat este item-ul", -- Larynx
	[622] = "Musculițe de mijloc {{MiddleWisp}}#Înlocuiește toate musculițele cu 3 musculițe normale", -- Genesis
	[631] = "Musculițe de mijloc {{MiddleWisp}}#Împarte toate musculițele în jumate(daune înjumătățite)#Musculițele sunt distruse dacă sunt împărțite a treia oară", -- Meat Cleaver
	[638] = "Musculițe de mijloc {{MiddleWisp}}#Imune la proiectile#Șterge inamicii non-șef la contact", -- Eraser
	[639] = "Musculițe de mijloc {{MiddleWisp}}#Oferă muște albastre în loc să tragă cu lacrimi", -- Yuck Heart
	[640] = "Musculițe de mijloc {{MiddleWisp}}#Șansă pentru lacrimi cu foc albastru", -- Urn of Souls
	[650] = "Musculițe de mijloc {{MiddleWisp}}#Când Baby Plum sare în diagonală toate musculițele Fluierul lui Plum sunt invincibile și fac la fel", -- Plum Flute
	[653] = "Fără musculițe#Fantomele Roșii pot trage cu lacrimi", -- Vade Retro
	[655] = "Musculițe de mijloc {{MiddleWisp}}#Musculițe temporare pe durata folosirei#Lacrimi rapide", -- Spin to Win
	[685] = "Triplează musuclițele oferite", -- Jar of Wisps
	[687] = "Oferă o musculiță aleatorie", -- Friend Finder
	[705] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o musculiță pe durata camerei pentru fiecare inamic omorât", -- Dark Arts
	[709] = "Musculiță pe durata camerei#Oferă 3 musculițe în locul în care Isaac aterizează", -- Suplex!
	[710] = "Oferă o musculiță aleatorie când Isaac folosește item-ul", -- Bag of Crafting
	[712] = "Musculița item-ului aruncă cu lacrimi teleghidate", -- Lemegeton
	[719] = "Musculițe de mijloc {{MiddleWisp}}#20% șansă să ofere un {{Coin}} bănuț la fiecare eliminare", -- Keeper's Box
	[720] = "Generează o musculiță aleatorie", -- Everything Jar
	[722] = "Orbitează inamicul legat și trage în acesta#Musculița dispare când inamicul este eliminat", -- Anima Sola
	[723] = "Musculițe de mijloc {{MiddleWisp}}#Oferă o musculiță aleatorie și schimbă toate musculițele", -- Spindown Dice
	[728] = "Musculițe de mijloc {{MiddleWisp}}#Toate musculițele îl orbitează pe Gello când este activ", -- Gello
}

---------- Abyss Locust description parts ----------
EID.descriptions[languageCode].AbyssTexts = {
 	-- values inside {} brackets will be replaced with text parts below
	-- Abyss texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the abyss locust descriptions
	InfoText = "{amount} {size}{speed}lăcustă ({dmg})",
	InfoTextPlural = nil, -- Can be used by translators to provide a pluralized version of the InfoText
	Chance = " ({1}% Șansă)", -- {1} will be replaced with the chance
	SpeedSlow = "încet ", -- Speed < 1
	SpeedFast = "rapid ", -- Speed > 1
	SpeedDash = "fulgerător ", -- Speed >= 6
	SizeSmall = "mic ", -- Size < 1
	SizeBig = "mare ", -- Size > 1
	DamageMult = "{1}x daunele lui Isaac", -- {1} will be replaced with the calculated damage multiplier 
}

---------- Abyss Locust special effects ----------
--- Special locust effects that dont correspond to TearFlags.
--- Displays an icon in front of the description that shows an item with the same effect
EID.descriptions[languageCode].AbyssLocustEffects = {
[0] = "{{Bomb}} Explodează când provoacă daune",
[1] = "{{QuestionMark}} Efect de lăcustă aleatoriu",
-- 2 = Multiple locusts act like one. Uninteresting info for the player in my opinion
[3] = "{{Collectible284}} Schimbare a inamicilor la rănire",
[4] = "{{Collectible35}} Provocă daune tuturor inamicilor când provoacă daune",
[5] = "{{Collectible638}} Șterge un inamic când provoacă daune",
[6] = "{{Collectible114}} Cuțit care se rotește în jurul locustei când atacă",
[7] = "{{Collectible611}} Folosește țipătul din Larynx, provocând daune inamicilor din apropiere",
[8] = "{{Collectible399}} Generează un inel Maw al Vidului",
[9] = "{{Collectible522}} Câștigă o aură care respinge proiectile când se încarcă",
[10] = "{{Collectible447}} Generează gaze otravitoare când provoacă daune",
[11] = "{{Collectible447}} Generează un gaz când provoacă daune",
[12] = "{{Collectible118}} Generează un Brimstone anti-gravitație când provoacă daune",
[13] = "{{Collectible317}} Generează muci verzi când provoacă daune",
[14] = "{{Collectible56}} Generează muci galbeni când provoacă daune",
[15] = "{{Collectible214}} Generează muci roșii când provoacă daune",
[16] = "{{Collectible178}} Generează muci albaștri când provoacă daune",
[17] = "{{Collectible420}} Generează aleatoriu o pentagramă",
[18] = "{{Collectible144}} Primește {{ColorGreen}}+0.25{{CR}} daune pentru fiecare pickup consumat. Maxim 25 pickup-uri",
}
	
	-- list of Tear flag descriptions used for Abyss locust effect description
	EID.descriptions[languageCode].TearFlagNames = {
		[0] = "spectrale",                 -- Ouija board type tear (goes thru obstacles)
		[1] = "perforare",                 -- Cupid's arrow type tear (goes thru enemy)
		[2] = "teleghidate",                 -- Spoon bender type tear (homes to enemy)
		[3] = "încetinesc",                  -- Spider bite type tear (slows on contact)
		[4] = "otrăvesc",                   -- Common cold type tear (poisons on contact)
		[5] = "pietrifică",                  -- Mom's contact type tear (freezes on contact)
		[6] = "împart",                    -- Parasite type tear (splits on collision)
		[7] = "crescu cu raza de atac",            -- Lump of coal type tear (grows by range)
		[8] = "bomerang",                -- My reflection type tear (returns back)
		[9] = "persistă",               -- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage
		[10] = "se clatină",         -- Wiggle worm type tear (wiggles)
		[11] = "creează o muscă la lovitură",        -- Mulligan type tear (creates fly on hit)
		[12] = "exploziv",               -- IPECAC type tear (explodes on hit)
		[13] = "fermecător",                -- Mom's Eyeshadow tear
		[14] = "confuzie",               -- Iron Bar tear
		[15] = "inamici lasă inimi",     -- These tears cause enemy to drop hearts if killed (33% chance)
		[16] = "orbitează în jurul jucătorului",     -- Used for Little Planet (orbit arounds the player)
		[17] = "așteaptă înainte să se miște",     -- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
		[18] = "se împarte în 4 la lovitură",     -- Splits into 4 smaller tears if it hits the ground
		[19] = "ricoșează de inamici",       -- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
		[20] = "frică",                    -- Mom's Perfume type tear of fear (fear on contact)
		[21] = "micșorare",                  -- Proptosis tears start large and shrink
		[22] = "ard",                    -- Fire Mind tears cause Burn effect on enemies
		[23] = "magnet pentru inamici și pickup-uri", -- Attracts enemies and pickups
		[24] = "împinge înapoi",               -- Tear impact pushes enemies back further
		[25] = "pulsează",               -- Makes the tear pulse
		[26] = "mișcare în spirală",         -- Makes the tear path spiral
		[27] = "formă ovală",              -- Makes the tear oval in the direction of travel
		[28] = "bombă tristă",                -- Used by Bombs (Sad Bomb)
		[29] = "bombă fund",               -- Used by Bombs (Butt Bomb)
		[30] = "mișcare pătrată",         -- Used for Hook Worm
		[31] = "aură care provoacă daune",     -- Used for GodHead (they will have a glow around them)
		[32] = "încetinesc + colorează inamicul în negru", -- Used for Gish player tears (to color enemy black on slowing)
		[33] = "lasă baltă verde la lovitură", -- Mysterious Liquid tears spawn damaging green creep when hit
		[34] = "protejate",                -- Lost Contact tears, block enemy projectiles
		[35] = "bombă sclipitoare",            -- Used by Bombs (Glitter Bomb)
		[36] = "bombă dispersie",            -- Used for Scatter bombs
		[37] = "lipicioase",                  -- Used for Sticky bombs and Explosivo tears
		[38] = "se rotesc pe ecran",     -- Tears loop around the screen
		[39] = "generează o rază de lumină la lovitură", -- Create damaging light beam on hit
		[40] = "aruncă un bănuț la lovitură",        -- Used by Bumbo, spawns a coin when tear hits
		[41] = "inamicul lasă o inimă neagră la moarte",    -- Enemy drops a black hp when dies
		[42] = "raza tractor",            -- Tear with this flag will follow parent player's beam
		[43] = "micșorează inamicii",          -- God's flesh flag to minimize enemies
		[44] = "creează bănuț la lovitură",      -- Greed coin tears that has a chance to generate a coin when hit
		[45] = "bombă cruce",              -- Bomber Boy
		[46] = "mișcare spirală mare",     -- Ouroboros Worm, big radius oscilating tears
		[47] = "confuzie permanentă la lovitură",   -- Glaucoma tears, permanently confuses enemies
		[48] = "muci",                  -- Booger tears, stick and do damage over time
		[49] = "generează păianjeni sau muște la lovitură",               -- Egg tears, leave creep and spawns spiders or flies
		[50] = "poate sparge obstacole la lovitură",            -- Sulfuric Acid tears, can break grid entities
		[51] = "creează 1-2 așchii de os la moartea inamicului",                    -- Bone tears, splits in 2
		[52] = "străpungătoare + daune duble și urmărire după", -- Belial tears, piecing tears gets double damage + homing
		[53] = "transformă inamicii în aur la atingere",           -- Midas touch tears
		[54] = "explodează în 10 lacrimi la lovitură",                -- Needle tears
		[55] = "electricitate la lovitură",           -- Jacobs ladder tears
		[56] = "Invocă mâna Big Horn la lovitură", -- Little Horn tears
		[57] = "conectate cu electricitate",   -- Technology Zero
		[58] = "ricosează una de alta",        -- Pop!
		[59] = "absorb alte lacrimi",               -- Hungry Tears
		[60] = "laser",               -- Trisagion, generates a laser on top of the tear
		[61] = "sare pe sol",          -- Flat Stone
		[62] = "explodează în mai multe",             -- Haemolacria
		[63] = "lasă dâră",             -- Bob's Bladder
		[64] = "efect de pumn la lovitură",     -- Knockout Drops
		[65] = "îngheață inamicul la moarte",   -- Uranus
		[66] = "magnet pentru inamici și pickup-uri", -- Lodestone
		[67] = "efect de momeală la lovitură",       -- Rotten Tomato
		[68] = "Ochiul Ocultului",       -- Eye of the Occult
		[69] = "mișcare orbitală îngustă",   -- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
		[70] = "sparg pietre",             -- Rock tears, chance to break rocks, deal extra damage to rock type enemies
		[71] = "mișcare la 90 de grade",      -- Brain Worm, tears turn and go horizontally when moving past an enemy
		[72] = "bombă de sânge",              -- Blood Bombs, leave blood creep on the ground
		[73] = "transformă inamicul în căcat",    -- E. Coli tears, turn enemies into poop
		[74] = "lasă bănuț la moarte",      -- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
		[75] = "bombă Brimstone",          -- Brimstone Bombs, explosion creates a brimstone cross
		[76] = "gaură neagră la lovitură",       -- Rift tears, creates a black hole on impact
		[77] = "se lipesc de inamic și se multiplică la moartea inamicului",  -- Spore tears, stick to enemies and multiply on enemy death
		[78] = "bombă fantomă",              -- Ghost bombs
		[79] = "lasă carte la moarte",      -- Killed enemies will drop a random tarot card
		[80] = "lasă rună la moarte",      -- Killed enemies will drop a random rune
		[81] = "teleportează inamicul la lovitură",   -- Hit enemies will teleport to a different part of the room
		[82] = "decelerează în timp",    -- Decelerate over time
		[83] = "accelerează în timp",    -- Accelerate over time
		[104] = "ricoșează (doar de pereți)",    -- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
		[106] = "daune suplimentare din spate + sângerare",   -- Deals extra damage from behind and inflicts bleeding
	}
	
	-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
	-- Kept in for backwards compatibility
	EID.descriptions[languageCode].abyssSynergies = {}


-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 3}, -- The Book of Belial
	[59] = {2, 3}, -- The Book of Belial (Birthright)
	[83] = {" Jumătate", "1"}, -- The Nail
	[263] = "Activare dublă", -- Clear Rune
	[283] = {1, 2, "pickupuri", "{{CR}}pickups"}, -- D100
	[285] = "Involuează inamicii de două ori", -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, " Inimă", " {{CR}}Inimi", 1, 2, "Spațiu de inimă", "{{CR}}Spații de inimi"}, -- Converter
	[323] = "lacrimile provoacă daune duble", -- Isaac's Tears
	[386] = "Șansă crescută pentru obstacole rare", -- D12
	[485] = "25% Șansă să cuatruplice, 75% șansă să șteargă", -- Crooked Penny
	[489] = "Folosește zarul selectat de două ori", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"unu", "doi"}, -- Fortune Cookie
	[582] = "Activare dublă", -- Wavy Cap
	[584] = "Oferă 2 musculițe", -- Book of Virtues
	[605] = {" un ", " 2 ", "familiari", "{{CR}}familiars"}, -- The Scooper
	[609] = {25, 44}, -- Eternal D6
	[611] = "Activează un urlet adițional de o încărcătură", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Pozițile se schimbă de două ori#Bun pentru teleportat în inamici, dar nu poate colecta itemele la care Isac nu poate ajunge", -- Stitches
	[639] = {1, 2, " Inimă", " {{CR}}Hearts"}, -- Yuck Heart
	[642] = "Activare dublă", -- Magic Skin
	[650] = {" un ", " 2 ", "Plum", "{{CR}}Plums"}, -- Plum Flute
	[685] = "Oferă musculițe duble și încărcătura scade numai cu 1", -- Jar of Wisps
	[687] = {" un ", " 2 ", "Monstru", "{{CR}}monștrii"}, -- Friend Finder
	[704] = "Durează 10 secunde, dar uciderea inamicilor blochează timpul rămas la 5 secunde", -- Berserk!
	[705] = {1, 2}, -- Dark Arts
	[712] = {" un ", " 2 ", "orbitali", "{{CR}}orbitals"}, -- Lemegeton
	[713] = {"Jumătate de inimă", "o inimă", "un cheag", "2 {{CR}}cheaguri"}, -- Sumptorium
	[719] = {" a ", " 2 ", "item/pickup", "{{CR}}items/pickups"}, -- Keeper's Box
	[720] = "Generează un rahat lângă pickup", -- Everything Jar
	[722] = "Leagă 2 inamici#Dacă este doar unul, îl leagă pentru 10 secunde#Folosirea din nou a Anima Sola dezleagă cel mai apropiat inamic", -- Anima Sola
	[723] = {"unu", "doi"}, -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

-- Effect of BFFS!/Hive Mind on Familiars
local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7-8", "6"}, -- The Relic
	["5.100.107"] = {23.5, 47}, -- The Pinking Shears
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.178"] = {7, 14, "Generează o flacără albastră la punctul de impact"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Trage suplimentar în direcții aleatorii și lasă o baltă mai mare de muci", -- Inima lui Isac
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.360"] = {75, 150, 100, 200}, -- Incubus (+ Lilith exception)
	["5.100.365"] = {30, 60}, -- Lost Fly
	["5.100.384"] = {"5-20", "10-40"}, -- Lil Gurdy
	["5.100.389"] = {"7-8", "6"}, -- Rune Bag
	["5.100.467"] = {10, 20}, -- Finger!
	["5.100.468"] = {75, 150}, -- Shade
	["5.100.491"] = {"7", "6"}, -- Acid Baby
	["5.100.500"] = {"7-8", "6"}, -- Sack of Sacks
	["5.100.504"] = {3.5, 7}, -- Brown Nugget
	["5.100.508"] = {1.5, 3}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 20, 40}, -- Bloodshot Eye
	
	["5.100.565"] = "Dublu daune cât timp este prietenos", -- Blood Puppy
	["5.100.569"] = "Dacă este activat, oferă daune și viteză suplimentară", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Cartea Virtuților
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "un val de pietre", "4 {{CR}}valuri de pietre", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Oferă Sufletului Pierdut efectul Mantiei Sfinte", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "La utilizare, trage 8 lacrimi din poziția jucătorului", -- Stitches
	["5.100.645"] = {3.5, 7}, -- Tinytoma
	["5.100.649"] = {3, 6, 2, 4}, -- Fruity Plum
	["5.100.650"] = "Daune dublate la contact", -- Fluierul lui Plum
	["5.100.652"] = {17.5, 35}, -- Cube Baby
	["5.100.655"] = {10.5, 21, "Fără bonus de daune BFFS! pentru orice familiar în timp ce Spin to Win este folosit"}, -- Spin to Win
	["5.100.679"] = {52.5, 105}, -- Lil Abaddon
	["5.100.681"] = "Daune dublate", -- Micul Portal
	["5.100.682"] = {8, 16}, -- Worm Friend
	["5.100.685"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Borcan cu Musculițe
	["5.100.698"] = {37.5, 75}, -- Twisted Pair
	["5.100.702"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Spirit Răzbunător
	["5.100.706"] = "Daunele lăcustelor sunt crescute cu 25%", -- Abyss
	["5.100.712"] = "Dubleză daunele la contact pentru orbitali", -- Lemegeton
	["5.100.713"] = "Daunele cheagurilor sunt dublate", -- Sumptorium
	["5.100.728"] = {75, 150, 100, 200}, -- Gello (+ Lilith exception)
	
	["5.300.96"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Sufletul lui Bethany
	["5.350.142"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Credința lui Beth
	["5.350.182"] = "Dubleză daunele lacrimilor și la contact pentru musculițe", -- Esența lui Beth
	["5.350.176"] = "Daunele cheagurilor sunt dublate", -- Cheag Mic
	["5.350.186"] = "Daunele lăcustelor sunt crescute cu 25%", -- Cel mai bun prieten al lui Apollyon
	["Tainted Lilith"] = "Daunele lacrimilor lui Gelu sunt dublate", -- Gello (pentru piedestalul BFFS)
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Vierme Neastâmpărat", "↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac#Lacrimi spectrale#Lacrimile lui Isac se mișcă în valuri"}, -- Wiggle Worm
	[11] = {"11", "Vierme Inel", "↑ {{Tears}} {{ColorGreen}}+0.47{{CR}} Viteză de atac#Lacrimi spectrale#Lacrimile lui Isac se mișcă spiralat cu viteză mare"}, -- Ring Worm
	[15] = {"15", "Piatră Norocoasă", "{{Coin}} Distrugerea pietrelor are o șansă de 33% să ofere un bănuț"},-- Lucky Rock
	[16] = {"16", "Unghia Mamei", "Piciorul Mamei cade în locuri aleatorii la fiecare 20 de secunde"}, -- Mom's Toenail
	[24] = {"24", "Bănuț Murdar", "{{Coin}} 20% șansă mai mare ca un bănuț să fie în rahați#{{Poison}} Colectând bani, Isac se beșește și otrăvește inamicii din jur și aruncă proiectilele"}, -- Butt Penny
	[26] = {"26", "Ancylostom", "↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#Lacrimi spectrale#Lacrimile lui Isac se mișcă triunghiular"}, -- Hook Worm
	[32] = {"32", "Ciupercă Pălarie", "25% Șansă pentru un efect aleatoriu de ciupercă la fiecare cameră"}, -- Liberty Cap
	[33] = {"33", "Cordonul Ombilicald", "{{HalfHeart}} Dacă ai o jumătate de Inima Roșie sau mai pușin {{Collectible100}} Micul Steven#{{Collectible318}} Dacă ești vătămat este o șansă mare să primști un familar geaman pe durarta camerei"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ {{Tears}} {{ColorGreen}}+1{{CR}} Viteză de atac"}, -- Cancer
	[48] = {"48", "O Pagină Lipsă", "5% șansă să provoci 80 de daune tuturor inamicilor din cameră dacă ești vătămat#{{Collectible35}} Efectele Inimilor Negre sau Necronomicon sunt dublate"}, -- A Missing Page
	[49] = {"49", "Bănuț Însângerat", "{{HalfHeart}} 25% șansă să primesti jumătate de Inimă Roșie dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși"}, -- Bloody Penny
	[50] = {"50", "Bănuț Ars", "{{Bomb}} 25% șansă să primesti o bombă dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși"}, -- Burnt Penny
	[51] = {"51", "Bănuț Plat", "{{Key}} 25% șansă să primesti o cheie dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși"}, -- Flat Penny
	[65] = {"65", "Tenie", "↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță"}, -- Tape Worm
	[66] = {"66", "Vierme Leneș", "↓ {{Shotspeed}} {{ColorRed}}-0.5{{CR}} Viteza lacrimilor"}, -- Lazy Worm
	[67] = {"67", "Zar Spart", "50% șansă să activeze unul din efectele urmatoare dacă Isac este vătămat:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Polaroid Decolorat", "Îl camunflează aleatoriu pe Isac#{{Confusion}} Derutează inamicii#Poate fi folosit să dschizi  \"Strange Door\" în \"Depths II\""}, -- Faded Polaroid
	[80] = {"80", "Pană Neagră", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune pentru fiecare item \"Rau\""}, -- Black Feather
	[92] = {"92", "Coroană Crăpată", "↑ {{ColorGreen}}x1.33{{CR}} Statistici (cu excepția vitezei de atac) pentru statisticile mai mari de 1 {{Speed}} viteză, 2.73 {{Tears}} lacrimi, 3.5 {{Damage}} daune, 6.5 {{Range}} Distanță, 1 {{Shotspeed}} viteza lacrimilor"}, -- Cracked Crown
	[96] = {"96", "Vierme Ouroboros", "↑ {{ColorGreen}}+0.4{{CR}} Viteză de atac#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#Lacrimi spectrale#Șansă pentru lacrimi teleghidate#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}9{{CR}} noroc#Lacrimile lui Isac se mișcă rapid și spiralat"}, -- Ouroboros Worm
	[98] = {"98", "Muci de Goblin", "{{ColorGreen}}10%{{CR}} șansă să arunci cu muci#{{ColorGreen}}50%{{CR}} să fie teleghidată#{{Damage}} Mucii provoacă pagubele lui Isac o dată pe secundă#Mucii stau lipiți 10 secunde"}, -- Nose Goblin
	[101] = {"101", "Bec Stins", "Dacă ții un item activ descărcat primești:#↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.3{{CR}} Viteza lacrimilor#↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc"}, -- Dim Bulb
	[107] = {"107", "Inimă de Cioară", "Vătămarea cauzează ca Inimile Roșii să fie eliminate înaintea Inimilor Suflet#{{Warning}} Vătămarea Inimilor Roșii scade șansa la camerele Diavol/Înger"}, -- Crow Heart
	[110] = {"110", "Dolar de Argint", "{{Shop}} Magazinele apar în  \"Womb\" și \"Corpse\""}, -- Silver Dollar
	[111] = {"111", "Coroană Însângerată", "{{TreasureRoom}} Camera Comorilor apare în \"Womb\" și \"Corpse\""}, -- Bloody Crown
	[119] = {"119", "Celule Stem", "{{HealingRed}} Intrarea într-un etaj nou jumătate din Inimile Roșii/Os goale a lui Isac#{{HealingRed}} Vindecă minim jumătate de inimă"}, -- Stem Cell
	[128] = {"128", "Osul Degetului", "{{EmptyBoneHeart}} Vătămarea are o șansă de 4% ca Isac să primească o Inimă Os"}, -- Finger Bone
	[129] = {"129", "Sfarmă-fălciz", "{{Damage}} 10% Șansă arunci cu dinți care provoacă {{ColorGreen}}3.2x{{CR}} daune#{{Luck}} 100% Șansă la 9 noroc"}, -- Jawbreaker
	[130] = {"130", "Pix Ros", "{{Slow}} 10% Șansă să arunci cu lacrimi ce încetinesc inamicii#{{Luck}} 100% Șansă la 18 noroc"}, -- Chewed Pen
	[131] = {"131", "Bănuț Binecuvântat", "{{HalfSoulHeart}} 17% Șansă să primeți jumătate de Inimă Suflet#Șansă mai mare de la banuții mai valoroși"}, -- Blessed Penny
	[132] = {"132", "Seringă Spartă", "25% șansă să primești un efect de seringă aleatorie la fiecare cameră"}, -- Broken Syringe
	[133] = {"133", "Fitil Scurt", "Bombele lui Isac explodează mai rapid"}, -- Short Fuse
	[134] = {"134", "Fasole Gigant", "Beșinile au raza mărită"}, -- Gigante Bean
	[135] = {"135", "O Brichetă", "{{Burning}} 20% Șansă ca inamicii să ardă la intrarea în cameră"}, -- A Lighter
	[136] = {"136", "Lacăt Spart", "Ușile, blocajele cu chei și cuferele de aur pot fi deschise cu explozii#Exploziile pot să deschidă de asemenea \"Strange Door\" în \"Depths II\""}, -- Broken Padlock
	[137] = {"137", "Nu-mă-uita", "Intrarea într-un nou etaj oferă până la 4 pickupuri necolectate din etajul anterior în camera de început"}, -- Myosotis
	[138] = {"138", "'M", "Schimbă itemul activ la folosire"}, -- 'M
	[139] = {"139", "Amuletă Lacrimă", "{{Luck}} {{ColorGreen}}+4{{CR}} Noroc pentru efectele pe lacrimi"}, -- Teardrop Charm
	[140] = {"140", "Măr de Sodoma", "Colectarea de inimi roșii poate să le convertească în păianjeni albaștrii#Funcționează și când viața este plină#Poate preveni vindecarea"}, -- Apple of Sodom
	[141] = {"141", "Cântec de Leagăn Uitat", "{{ColorGreen}}2x{{CR}} rată de atac pentru familiari"}, -- Forgotten Lullaby
	[142] = {"142", "Credința lui Beth", "{{Collectible584}} Isac primește 4 musculițe Cartea Virtuților la începerea unui nou etaj"}, -- Beth's Faith
	[143] = {"143", "Condensator Vechi", "{{Battery}} Previne iteme-le active să fie încărcate la curățarea unei camere#{{Battery}} 20% șansă să ofere o baterie la curățarea unei camere#{{Luck}} 33% șansă la 5 noroc"}, -- Old Capacitor
	[144] = {"144", "Vierme Cerebral", "Lacrimile se întorc 90 de grade ca să nimerească un inamic care ar fi fost ratat"}, -- Brain Worm
	[145] = {"145", "Perfecție", "↑ {{Luck}} {{ColorGreen}}+10{{CR}} Noroc#Este distrus la vătămare"}, -- Perfection
	[146] = {"146", "Coroana Diavolului", "{{RedTreasureRoom}} Itemele din Camera Comorilor sunt înlocuite cu pacturi cu diavolul"}, -- Devil's Crown
	[147] = {"147", "Bănuț Încărcat", "{{Battery}} Bănuții au o șansă de 17% sa adauge o încărcare la item-ul activ#Șansă mai mare pentru bănuții mai valoroși"}, -- Charged Penny
	[148] = {"148", "Lanț al Prieteniei", "Toți familiarii îl orbitază pe Isac"}, -- Friendship Necklace
	[149] = {"149", "Buton de Panică", "Înainte de vătămare folosește item-ul activ dacă este încărcat"}, -- Panic Button
	[150] = {"150", "Cheie Albastră", "Ușile închise pot fi deschise pe gratis, dar Isac trebuie să curețe o cameră Hush înainte"}, -- Blue Key
	[151] = {"151", "Pilă Plată", "Retrage majoritatea țepilor#Afectează {{CursedRoom}} Camera Blestemată și fiecare obiect cu țepi"}, -- Flat File
	[152] = {"152", "Lentile de Telescop", "{{PlanetariumChance}} {{ColorGreen}}+9%{{CR}} șansă la Planetariu#Adițional {{ColorGreen}}+15%{{CR}} șansă dacă un Planetariu nu a fost găsit încă#Planetariul poate fi găsit în etajele Uter sau Cadavru"}, -- Telescope Lens
	[153] = {"153", "Încuietoarea Mamei", "25% șansă pentru un item Mamă aleatoriu pentru fiecare cameră"}, -- Mom's Lock
	[154] = {"154", "Sac cu Zaruri", "50% șansă să ofere un zar de unică folosință în fiecare cameră#Zarul dispare dacă părăsești camera#Zarul nu consumă din spațiul pentru pastile/cărți"}, -- Dice Bag
	[155] = {"155", "Coroană Sfântă", "Oferă o {{TreasureRoom}} Cameră a Comorilor și un {{Shop}} Magazin în Catedrală"}, -- Holy Crown
	[156] = {"156", "Sărutul Mamei", "{{Heart}} {{ColorGreen}}+1{{CR}} Spațiu de Inimă când este ținut"}, -- Mother's Kiss
	[157] = {"157", "Carte Ruptă", "La fiecare 15 lacrimi Isac aruncă o lacrimă {{Collectible149}} Ipecac + {{Collectible5}} Reflecția Mea cu Distanță mare"}, -- Torn Card
	[158] = {"158", "Buzunar Rupt", "Vătămarea îl face pe Isac să își arunce 2 bănuți, chei sau bombe#Obiectele aruncate se pot transforma în variante mai bune(bombe aurite, bănuți mai valoroși, etc.)"}, -- Torn Pocket
	[159] = {"159", "Cheie Aurită", "{{Key}} {{ColorGreen}}+1{{CR}} Cheie#{{GoldenChest}} Înlocuiește toate cuferele (cu excepție Mega/Vechi) cu cufere de aur#{{GoldenChest}} Cuferele pot conține pickup-uri extra"}, -- Gilded Key
	[160] = {"160", "Sac Norocos", "{{GrabBag}} Începerea unui nou etaj oferă un sac"}, -- Lucky Sack
	[161] = {"161", "Coroană Rea", "Oferă o {{TreasureRoom}} Cameră a Comorilor și un {{Shop}} Magazin în Sheol"}, -- Wicked Crown
	[162] = {"162", "Copita lui Azazel", "{{Player7}} Curățarea unei camere are o șansă de 33% să îl transforme pe Isac în Azazel#{{Timer}} Efectul durează până la curățarea și terminarea camerei următoare"}, -- Azazel's Stump
	[163] = {"163", "Răhățel", "Toți inamicii răhățel mici sunt prietenoși#Curățarea unei camere oferă un răhățel"}, -- Dingle Berry
	[164] = {"164", "Capsule de Pistol", "{{Bomb}} Oferă o bombă suplimentară pentru fiecare bombă plasată"}, -- Ring Cap
	[165] = {"165", "Nu Nu!!", "De la Uter în sus înlocuiește toți bănuții și cheile cu bombe, inimi, pastile, cărți, trinket-uri, baterii sau muște inamici"}, -- Nuh Uh!
	[166] = {"166", "Lut de Modelat", "50% șansă să ofere un item pasiv aleatoriu pe durata camerei"}, -- Modeling Clay
	[167] = {"167", "Os Polișat", "Curățarea unei camere are o șansă de 25% să ofere un Bony prietenos"}, -- Polished Bone
	[168] = {"168", "Inimă Goală", "{{EmptyBoneHeart}} Începerea unui etaj nou oferă {{ColorGreen}}+1{{CR}} Inimă Os"}, -- Hollow Heart
	[169] = {"169", "Desenul Copilului", "{{Guppy}} Se numără ca 1 item pentru transformarea în Guppy"}, -- Kid's Drawing
	[170] = {"170", "Cheie de Cristal", "{{Collectible580}} Curățarea unei camere are o șansă de 33% să deschidă o Ușă Roșie#Șansă mai mică când te afli într-o cameră roșie"}, -- Crystal Key
	[171] = {"171", "Negocierea lui Keeper", "{{DevilRoom}} 50% șansă ca pacturile cu diavolul să coste bănuți"}, -- Keeper's Bargain
	[172] = {"172", "Bănuț Blestemat", "Colectarea de bănuți îl teleportează pe Isac intr-o cameră aleatorie#Poate fi teleportat în camera secretă"}, -- Cursed Penny
	[173] = {"173", "Sufletul Tău", "{{DevilRoom}} Îi permite lui Isac să ia 1 pact cu diavolul pe gratis#{{Warning}} Pactul va afecta șansa pentru Camera Îngerului"}, -- Your Soul
	[174] = {"174", "Magnet Număr", "{{DevilChance}} {{ColorGreen}}+10%{{CR}} șansă pentru Camera Diavolului#Îl previne pe krampus să apară#Camera Diavolului este specială cu mai multe pacturi, Inimi Negre și inamici"}, -- Number Magnet
	[175] = {"175", "Cheie Ciudată", "Deschide ușa la Hush fără să țină cont de timp#Dacă folosești {{Collectible297}} Cutia Pandorei, cheia va dispărea și primești 6 iteme din pool-uri diferite"}, -- Strange Key
	[176] = {"176", "Micul Cheag", "Oferă un chiag de sânge care copiază mișcările lui Isac#Copiază statisticile, efectele lacrimilor și provoacă 35% din daunele lui Isac#Reînvie în fiecare cameră"}, -- Lil Clot
	[177] = {"177", "Tatuaj Temporar", "{{Chest}} Dacă finalizezi {{ChallengeRoom}} Camera Provoacare oferă un cufăr#Dacă finalizezi {{BossRushRoom}} Camera Provocării Șefului oferă un item"}, -- Temporary Tattoo
	[178] = {"178", "M80 Înghițit", "Vătămarea are o șansă de 50% să îl facă pe Isac să explodeze#Nu distruge Mașina De Donat Sânge și Confesionalele pe perioada când oferă recompensa"}, -- Swallowed M80
	[179] = {"179", "Telecomandă RC", "Familiari imită mișcările lui Isac#Ține apăsat butonul de aruncare ({{ButtonRT}}) ca familiarii să rămână pe loc"}, -- RC Remote
	[180] = {"180", "Suflet Găsit", "Copiază mișcările lui Isac și trage cu lacrimi spectrale#Copiază statisticile, efectele lacrimilor și provoacă 50% din daunele lui Isac#Folosește majoritatea itemelor active când Isac o face#Moare dintr-o lovitură#Reînvie la etajul următor"}, -- Found Soul
	[181] = {"181", "Pachet de Expansiune", "Folosirea unui item activ declașează efectul unui item activ adițional cu 1-2 încărcări"}, -- Expansion Pack
	[182] = {"182", "Esența lui Beth", "Intrarea în {{AngelRoom}} Camera Îngerului oferă 5 musculițe#Donarea către un cerșetor are o șansă de 25% să ofere o musculiță"}, -- Beth's Essence
	[183] = {"183", "Gemenii", "50% șansă să copieze un familiar în fiecare cameră#Oferă {{Collectible8}} Fratele Bobby sau  {{Collectible67}} Sora Maggy dacă Isac nu are familiari"}, -- The Twins
	[184] = {"184", "Documente de Adopție", "{{Shop}} Magazinul vinde familiari la 10 bănuți"}, -- Adoption Papers
	[185] = {"185", "Piciorul lui Cricket", "Omorârea inimicilor are o șansă de 17% să ofere o lăcustă aleatorie"}, -- Cricket Leg
	[186] = {"186", "Cel Mai Bun Prieten A Lui Apollyon", "{{Collectible706}} Oferă 1 lăcustă Abis"}, -- Apollyon's Best Friend
	[187] = {"187", "Ochelari Sparți", "{{TreasureRoom}} 50% șansă să adauge un item ascuns în Camera Comorilor#50% șansă să dezvăluie itemul ascuns din Camera Comorilor din drumul alternativ"}, -- Broken Glasses
	[188] = {"188", "Cub de Gheață", "{{Petrify}} Intrarea într-o cameră are o șansă de 20% să pietrifice inamici aleatorii#{{Freezing}} Uciderea unui inamic pietrificat îl ingheață"}, -- Ice Cube
	[189] = {"189", "Sigiliul lui Baphomet", "Uciderea unui inamic îl face pe Isac invincibil pentru 1 secundă#Invincibilitatea se adună cu mai mulți inamici omorâți"}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "Efect dublu!"
EID.descriptions[languageCode].tripledTrinket = "Efect triplu!"
EID.descriptions[languageCode].quadrupledTrinket = "Efect cvadruplat!"

-- Most trinkets that can be doubled or tripled just have the numbers în their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Folosirea unui item activ îl teleportează pe Isac {{ColorGold}}într-o cameră care nu a fost curățată încă{{CR}}#Ierarhie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 în the localized description, change it to Phrase #2 for doubled
	[6] = { "bănuți", "pickup-uri" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Rozariu este adăugat în fiecare pool de iteme" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Îi permite lui Isaac să cumpere iteme din Magazin pe gratis{{CR}}#Șansă să se transforme în  {{Trinket13}} Credit de Magazin după fiecare achiziție" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Pietrele au șansă ofere 2 bănuți", "Pietrele au șansă ofere 2 bănuți", "Pietrele au șansă ofere 3 bănuți" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "rahat", "rahat de aur" },
	-- Isac's Fork (find+replace): find Phrase #1 în the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "jumătate de inimă", "o inimă", "o inimă jumătate" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit sau înghițind-o",
		"{{HealingRed}} Vindecă {{ColorGold}}3{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Boosturile de statistici ale viermelui sunt dublate", "Boosturile de statistici ale viermelui sunt triplate", "Boosturile de statistici ale viermelui sunt cvadruplate", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Efectul trinketului este dublat dacă este posibil", "Efectul trinketului este triplat dacă este posibil", "Efectul trinketului este cvadruplat dacă este posibil", },
	-- NO!
	[88] = { "Previne itemele de {{Quality0}} calitate să apară" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that might get fixed (maybe it'll give a Golden Key?)
	[159] = { "{{GoldenChest}} Înlocuiește toate cuferele (cu excepția celor Vechi/Mega) cu cufere aurii#{{GoldenChest}} Cuferele aurii pot conține cărți, pastile sau suveniruri suplimentare" },
	-- The Twins
	[183] = { "Poate copia/oferi 2 familiari", "Poate copia/oferi 2 familiari", "Poate copia/oferi 3 familiari" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData în this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
în their goldenTrinketEffects
]]
EID.descriptions[languageCode].goldenTrinketData = { }

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Magicianul", "{{Timer}} Pe durata camerei:#↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#Lacrimi teleghidate"}, -- I - The Magician
	[12] = {"12", "XI - Forța", "{{Timer}} Pe durata camerei:#↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță"}, -- XI - Strength
	[16] = {"16", "XV - Diavolul", "{{Timer}} Pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune"}, -- XV - The Devil
	[18] = {"18", "XVII - Steaua", "{{TreasureRoom}} Isaac este teleportat în Camera Comorilor#{{Planetarium}} Daca un Planetariu este prezent Isac va fi teleportat acolo"}, -- XVII - The Stars
	[20] = {"20", "XIX - Soarele", "{{HealingRed}} Viață plină#Provoacă 100 daune tuturor inamicilor#{{Timer}} Vezi toată harta etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete / {{UltraSecretRoom}} Camerei Ultra Secrete)#{{CurseDarkness}} Elimină Blestemul Întunericului"}, -- XIX - The Sun
	[21] = {"21", "XX - Judecata", "{{Beggar}} Generează un Cerșetor#{{DemonBeggar}} 33% șansă să fie un Cerșetor Demon#5% șansă să fie Key Master, Bomb Bum, Battery Bum sau Cerșetor Putrezit"}, -- XX - Judgement
	[22] = {"22", "XXI - Lumea", "{{Timer}} Vezi toată harta etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete / {{UltraSecretRoom}} Camerei Ultra Secrete)"}, -- XXI - The World
	[27] = {"27", "Asul de Treflă", "{{Bomb}} Transformă toate pickup-urile, cuferele si inamicii non-boss în bombe aleatorii"}, -- Ace of Clubs
	[28] = {"28", "Asul de Romb", "{{Coin}} Transformă toate pickup-urile, cuferele si inamicii non-boss în bănuți aleatorii"}, -- Ace of Diamonds
	[29] = {"29", "Asul de Pică", "{{Key}} Transformă toate pickup-urile, cuferele si inamicii non-boss în chei aleatorii"}, -- Ace of Spades
	[30] = {"30", "Asul de Inimă Roșie", "{{UnknownHeart}} Transformă toate pickup-urile, cuferele si inamicii non-boss în inimi aleatorii"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Oferă o trapă către etajul următor#{{LadderRoom}} Oferă un beci dacă este folosită pe o bucată de decor (iarbă, pietre mici, hârtie, gemuri, etc.)"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Isaac devine invincibil pentru 20 de secunde"}, -- Algiz
	[42] = {"42", "Chaos Card", "La folosire cartea este aruncată în direcția în care Isaac se mișcă#Omoară TOȚI inamicii care o ating (cu excepție Delirium si Bestia)"}, -- Chaos Card
	[51] = {"51", "Carte Sfântă", "{{HolyMantle}} Oferă o Mantaua Sfântă de unică folosință (Previne daunele o singură dată	)"}, -- Holy Card
	[52] = {"52", "Creștere Uriașă", "{{Timer}} Pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+7{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#Crește mărimea#Isac poate distruge pietrele dacă trece peste ele"}, -- Huge Growth
	[55] = {"55", "Ciob de Rună", "{{Rune}} Activează efectul unei rune așatorie#Efectul runei este mai slab"}, -- Rune Shard
	[56] = {"56", "0 - Nebunul?", "Aruncă toate inimile(rămâi cu una) lui Isaac pe jos și toate pickup-urile pe jos#Bănuții și bombele sunt aruncate ca {{Collectible74}} Un Sfert sau {{Collectible19}} Boom! dacă este posibil"}, -- 0 - The Fool?
	[57] = {"57", "I - Magicianul?", "{{Timer}} Oferă o aură care deviază inamicii și proiectilele pentru 60 de secunde"}, -- I - The Magician?
	[58] = {"58", "II - Marea Preoteasă?", "{{Timer}} Piciorul mamei încearcă să îl calce pe Isaac pentru 60 de secunde"}, -- II - The High Priestess?
	[59] = {"59", "III - Împărăteasa?", "{{Timer}} Pentru 60 de secunde:#↑ {{Heart}} {{ColorGreen}}+2{{CR}} Inimi roșii#↑ {{Tears}} {{ColorGreen}}+1.5{{CR}} Viteză de atac#↓ {{Speed}} {{ColorRed}}-0.1{{CR}} Viteză"}, -- III - The Empress?
	[60] = {"60", "IV - Împăratul", "Isaac este teleportat la un Șef extra care poate fi învins pentru o recompensă în plus#Șeful este ales de la 2 etaje mai jos"}, -- IV - The Emperor?
	[61] = {"61", "V - Marele Preot?", "{{EmptyBoneHeart}} Oferă 2 Inimi Os"}, -- V - The Hierophant?
	[62] = {"62", "VI - Îndrăgostiții?", "Generează un item din pool-ul camerei curente#{{BrokenHeart}} Transformă 1 container de inimă sau 2 Inimi Suflet într-o Inimă Spartă"}, -- VI - The Lovers?
	[63] = {"63", "VII - Carul?", "{{Timer}} Primești pentru 10 secunde:#↑ {{Tears}} {{ColorGreen}}x4{{CR}} Multiplicator viteză de foc#Invincibil dar nu te poți mișca"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Dreptatea?", "{{GoldenChest}} Generează 2-4 cufere aurii"}, -- VIII - Justice?
	[65] = {"65", "IX - Sihastrul?", "{{Coin}} Transformă toate pickup-urile și itemele din cameră într-un număr de monede egal cu valoarea lor din Magazin#Dacă nu este nimic de transformat, generează un bănuț în schimb"}, -- IX - The Hermit?
	[66] = {"66", "X - Roata Norocului?", "{{DiceRoom}} Declanșează un efect aleatoriu de Cameră Zaruri"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Forța?", "{{Timer}} Inamicii din cameră sunt {{Slow}} încetiniți și primesc daune duble timp de 30 de secunde"}, -- XI - Strength?
	[68] = {"68", "XII - Spânzuratul?", "{{Timer}} Primești pentru 30 de secunde:#↓ {{Speed}} {{ColorRed}}-0.1{{CR}} Viteză#Tir triplu#{{Coin}} Inamicii uciși lasă bănuți"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Moartea?", "{{Collectible545}} Activează Cartea Morților#Generează entități Oase pentru fiecare inamic ucis în cameră"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperanța?", "{{Pill}} Îl forțează pe Isaac să mănânce 5 pastile aleatorii"}, -- XIV - Temperance?
	[71] = {"71", "XV - Diavolul?", "{{Timer}} Primești pentru 60 de secunde:#{{Collectible33}} Activează Biblia (zbor)#{{Collectible390}} Familiar Seraphim#{{MomsHeart}} Omoară instant Piciorul Mamei și Inima Mamei#{{Warning}} Îl omoară pe Isaac dacă este folosit pe Satan"}, -- XV - The Devil?
	[72] = {"72", "XVI - Turnul?", "Generează 7 grupuri de pietre și obstacole aleatorii#Grupurile conțin adesea pietre colorate (tinted)"}, -- XVI - The Tower?
	[73] = {"73", "XVII - Stelele?", "Elimină cel mai vechi item pasiv colectat al lui Isaac (ignorând itemele de start)#Generează 2 iteme aleatorii din pool-ul camerei curente"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - Luna?", "{{UltraSecretRoom}} Teleportează-l pe Isaac în Ultra Secret Room#Calea înapoi va fi făcută din camere roșii"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - Soarele?", "{{Timer}} Primești pentru etaj:#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#Zbor și lacrimi spectrale#{{BoneHeart}} Convertește containerele de inimă în Inimi Os (revine la normal)#{{CurseDarkness}} Blestemul Întunericului"}, -- XIX - The Sun?
	[76] = {"76", "XX - Judecata?", "{{RestockMachine}} Generează o Mașină de Reaprovizionare"}, -- XX - Judgement?
	[77] = {"77", "XXI - Lumea?", "{{LadderRoom}} Generează o trapă către un beci (crawlspace)"}, -- XXI - The World?
	[78] = {"78", "Cheie Crăpată", "{{Collectible580}} Cheie Roșie de unică folosință"}, -- Cracked Key
	[79] = {"79", "Regina Inimilor", "{{Heart}} Generează 1-20 Inimi Roșii"}, -- Queen of Hearts
	[80] = {"80", "Card Sălbatic", "Copiază efectul celui mai recent item activat: pastilă, carte, rună, piatră suflet sau item activ"}, -- Wild Card
	[81] = {"81", "Sufletul lui Isaac", "Toate piedestalele de iteme din cameră alternează între două iteme diferite"}, -- Soul of Isaac
	[82] = {"82", "Sufletul lui Magdalene", "{{Timer}} Efectul durează pentru cameră:#{{HalfHeart}} Inamicii omorâți aruncă jumătăți de Inimă Roșie care dispar după 2 secunde"}, -- Soul of Magdalene
	[83] = {"83", "Sufletul lui Cain", "Deschide toate ușile din cameră#{{Collectible580}} Creează camere roșii pe fiecare perete posibil"}, -- Soul of Cain
	[84] = {"84", "Sufletul lui Judas", "{{Collectible705}} Activează Arte Întunecate cu o durată de 3 secunde#Temporar ↑ {{Damage}} creștere de daune pentru fiecare inamic/proiectil atins"}, -- Soul of Judas
	[85] = {"85", "Sufletul lui ???", "{{Poison}} Provoacă 8 pârțuri otrăvite cu muci maro, apoi generează rapid 7 Butt Bombs#Stând pe muci oferă:#↑ {{Tears}} {{ColorGreen}}+1.5{{CR}} Viteză de foc#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune"}, -- Soul of ???
	[86] = {"86", "Sufletul lui Eve", "{{Timer}} 14 familiari Pasăre Moartă zboară și atacă inamicii în cameră"}, -- Soul of Eve
	[87] = {"87", "Sufletul lui Samson", "{{Collectible704}} Activează Berserk! pentru 10 secunde#{{Timer}} Fiecare omor mărește durata cu 1 secundă"}, -- Soul of Samson
	[88] = {"88", "Sufletul lui Azazel", "{{Collectible441}} Trage o rază Mega Blast pentru 7.5 secunde"}, -- Soul of Azazel
	[89] = {"89", "Sufletul lui Lazarus", "Isaac moare și reînvie imediat cu o jumătate de inimă#Acest item este folosit automat la primirea unei lovituri fatale (o viață suplimentară)"}, -- Soul of Lazarus
	[90] = {"90", "Sufletul lui Eden", "Re-randează piedestalele de iteme și pickup-urile din cameră#Itemele re-randate provin din pool-uri aleatorii"}, -- Soul of Eden
	[91] = {"91", "Sufletul lui The Lost", "{{Player10}} Transformă jucătorul în The Lost pentru cameră#Permite luarea unui item din {{DevilRoom}} Camera Demonului gratuit#Permite intrarea în ușa Mausoleum sau Gehenna gratuit"}, -- Soul of the Lost
	[92] = {"92", "Sufletul lui Lilith", "Oferă permanent un familiar aleatoriu"}, -- Soul of Lilith
	[93] = {"93", "Sufletul lui Keeper", "{{Coin}} Generează 1-25 bănuți aleatorii"}, -- Soul of the Keeper
	[94] = {"94", "Sufletul lui Apollyon", "Generează 15 locuste aleatorii"}, -- Soul of Apollyon
	[95] = {"95", "Sufletul lui Forgotten", "{{Player16}} Generează The Forgotten ca personaj secundar pentru cameră"}, -- Soul of the Forgotten
	[96] = {"96", "Sufletul lui Bethany", "{{Collectible584}} Generează 6 musculițe Book of Virtues aleatorii"}, -- Soul of Bethany
	[97] = {"97", "Sufletul lui Jacob și Esau", "{{Player20}} Generează Esau ca personaj secundar pentru cameră#Apare cu atâtea iteme pasive câte are jucătorul"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "De asemenea oferă efectul {{Collectible34}} Cartea lui Belial", -- I - The Magician
	[3] = "Un al doilea picior lovește scurt după primul", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet dacă șeful n-a fost încă învins", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Generează {{ColorShinyPurple}}2{{CR}} inimi aleatorii {{UnknownHeart}}, {{Coin}} bănuți, {{Bomb}} bombe și {{Key}} chei"}, -- VIII - Justice
	[10] = "Previne generarea lui Greed în Magazin#Transformă un Magazin Greed într-un Magazin normal dacă Greed a fost deja învins acolo", -- IX - The Hermit
	[11] = {" a ", " 2 ", "Păcănea", "{{CR}}Păcănea", "Mașina Viitorului (Fortune)", "{{CR}}Mașina Viitorului (Fortune)"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", " Mașină", " {{CR}}Mașini", "Cerșetor Diavol", "{{CR}}Cerșetori Diavol"}, -- XIV - Temperance ( + Greed version)
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Dacă Camera Comorilor nu a fost încă vizitată, va avea două iteme între care să alegi", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Cerșetor ", "{{CR}}Cerșetori ", "Cerșetor Diavol", "{{CR}}Cerșetori Diavol"}, -- XX - Judgement
	[56] = "Aruncă ultimele 6 obiecte ale lui Isaac alături de pickup-uri", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Activează efectul de 2 ori", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Apare 1 {{Coin}} bănuț adițional", -- IX - The Hermit?
	[66] = {" a ", " 2 ", "efect", "{{CR}}efecte"}, -- X - Wheel of Fortune?
	[67] = {30, 60}, -- XI - Strength?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Elimină cele mai vechi {{ColorShinyPurple}}2{{CR}} iteme pasive colectate de Isaac (ignorând itemele de start)#Generează {{ColorShinyPurple}}4{{CR}} iteme aleatorii din pool-ul camerei curente"}, -- XVII - The Stars?
	[76] = {" o ", " 2 ", " mașină", " {{CR}}mașini"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Generează 1 mașină", -- X - Wheel of Fortune
	[12] = "Bonusurile de statistică nu sunt dublate", -- XI - Strength
	[14] = "Provocă 40 de daune", -- XIII - Death
	[15] = "Generează 1 mașină", -- XIV - Temperance
	[16] = "{{ColorGreen}}+2{{CR}} Daune", -- XV - The Devil
	[20] = "Provocă 200 de daune", -- XIX - The Sun
	[21] = "Generează 1 cerșetor", -- XX - Judgement
	[56] = "Lasă 3 iteme", -- 0 - The Fool?
	[64] = "Generează 2-7 cufere", -- VIII - Justice?
	[65] = "Nu generează un bănuț suplimentar", -- IX - The Hermit?
	[66] = "Declanșează 1 efect", -- X - Wheel of Fortune?
	[68] = "Durată 30 de secunde", -- XII - The Hanged Man?
	[72] = "Generează 7 grupuri", -- XVI - The Tower?
	[73] = "Elimină 1 item și generează 2", -- XVII - The Stars?
	[76] = "Generează 1 mașină", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombele sunt Chei", "Schimbă numărul de {{Bomb}} bombe și {{Key}} chei ale lui Isac#Bombe și chei de aur sunt de asemenea schimbate"}, -- Bombs are Key
	[12] = {"11", "Scade Distanța", "↓ {{Range}} {{ColorRed}}-1{{CR}} Distanță"}, -- Range Down
	[13] = {"12", "Crește Distanța", "↑ {{Range}} {{ColorGreen}}+1.25{{CR}} Distanță"}, -- Range Up
	[38] = {"37", "Vedere Retro", "{{Timer}} Pixelizează ecranul timp de 30 de secunde"},
	[42] = {"41", "Sunt Somnoros...", "{{Slow}} Îl încetinește pe Isac și pe toți inamicii din cameră"}, -- I'm Drowsy...
	[43] = {"42", "Sunt Entuziasmat!!", "{{Timer}} Îl grăbește pe Isac și pe toți inamicii din cameră#Se declanșează din nou după 30 și 60 de secunde"}, -- I'm Excited!!
	[48] = {"47", "Scade Viteza Lacrimilor", "↓ {{Shotspeed}} {{ColorRed}}-0.15{{CR}} Viteza lacrimilor"}, -- Shot speed Down
	[49] = {"48", "Crește Viteza Lacrimilor", "↑ {{Shotspeed}} {{ColorGreen}}+0.15{{CR}} Viteza lacrimilor"}, -- Shot speed Up
	[50] = {"49", "Pastilă Experimentală", "↑ Crește 1 statistică aleatorie#↓ Scade 1 statistică aleatorie"}, -- Experimental Pill
	[9999] = {"", "Pastilă de Aur", "Efect aleatoriu de pastilă#Are o șansă să se distrugă la fiecare folosire"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Gaz Toxic", "{{Poison}} Otrăvește întreaga cameră"}, -- Bad Gas
	{"1", "Călătorie Proastă", "{{Warning}} Provoacă 2 daune de inimă lui Isaac#Devine o pastilă 'Viață Plină' ( {{ColorGreen}}+3{{CR}} Inimi Suflet ) la 1 inimă sau mai puțin"}, -- Bad Trip
	{"2", "Inimi de Oțel", "{{SoulHeart}} {{ColorGreen}}+4{{CR}} Inimi Suflet"}, -- Balls of Steel
	{"3", "Bombe = Chei", "Schimbă numărul de {{Bomb}} bombe și {{Key}} chei ale lui Isaac#Crește numărul de bombe și chei cu 50%#Bombe și chei de aur sunt de asemenea schimbate"}, -- Bombs are Key
	{"4", "Diaree Explozivă", "Generează câteva bombe Mega Troll care urmăresc"}, -- Explosive Diarrhea
	{"5", "Sănătate Completă", "{{SoulHeart}} {{ColorGreen}}+3{{CR}} Inimi Suflet#{{HealingRed}} Viață completă"}, -- Full Health
	{"6", "Scade Viața", "↓ {{EmptyHeart}} {{ColorRed}}-2{{CR}} Containere goale de inimă#Se transformă într-o pastilă 'Crește Viața' la 0 sau 1 container de inimă"}, -- Health Down
	{"7", "Crește Viața", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} Containere goale de inimă"}, -- Health Up
	{"8", "Am Găsit Pastile", "Fără efect"}, -- I Found Pills
	{"9", "Pubertate", "Fără efect#Mâncatul a 3 pastile oferă transformarea Adult:#↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie"}, -- Puberty
	{"10", "Musca Drăguță", "{{Collectible279}} Oferă un orbital Big Fan#Nu există limită pentru numărul de Big Fan pe care Isaac îl poate avea"}, -- Pretty Fly
	{"11", "Scade Distanța", "↓ {{Range}} {{ColorRed}}-2{{CR}} Distanță"}, -- Range Down
	{"12", "Crește Distanța", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță"}, -- Range Up
	{"13", "Scade Viteza", "↓ {{Speed}} {{ColorRed}}-0.24{{CR}} Viteză"}, -- Speed Down
	{"14", "Crește Viteza", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză"}, -- Speed Up
	{"15", "Scade Lacrimile", "↓ {{Tears}} {{ColorRed}}-0.56{{CR}} Viteză de atac"}, -- Tears Down
	{"16", "Crește Lacrimile", "↑ {{Tears}} {{ColorGreen}}+0.70{{CR}} Viteză de atac"}, -- Tears Up
	{"17", "Scade Norocul", "↓ {{Luck}} {{ColorRed}}-2{{CR}} Noroc"}, -- Luck Down
	{"18", "Crește Norocul", "↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc"}, -- Luck Up
	{"19", "Telepilule", "Teleportează-l pe Isaac într-o cameră aleatorie"}, -- Telepills
	{"20", "Energie 48h!", "{{Battery}} Reîncarcă complet itemele active#{{Battery}} Lasă 3-4 baterii"}, -- 48 Hour Energy!
	{"21", "Hematemeză", "{{EmptyHeart}} Scurge toate containerele de inimă mai puțin unul#{{Heart}} Generează 1-4 Inimi Roșii"}, -- Hematemesis
	{"22", "Paralizie", "Îl împiedică pe Isaac să se miște și să tragă timp de 4 secunde"}, -- Paralysis
	{"23", "Pot să văd pentru totdeauna!", "{{SecretRoom}} Deschide intrările camerelor secrete de pe etaj#Efect de cartografiere completă"}, -- I can see forever!
	{"24", "Feromoni", "{{Charm}} Transformă permanent toți inamicii din cameră în prietenoși"}, -- Pheromones
	{"25", "Amnezie", "{{CurseLost}} Ascunde harta etajului"}, -- Amnesia
	{"26", "Petrecerea Lămâilor", "Generează o baltă de muci de dimensiunea unei camere care provoacă daune inamicilor"}, -- Lemon Party
	{"27", "Ești Vrăjitor?", "{{Timer}} Isaac trage pe diagonală timp de 60 de secunde"}, -- R U a Wizard?
	{"28", "Protecție!", "{{Timer}} Reduce toate daunele primite la jumătate de inimă pentru cameră"}, -- Percs!
	{"29", "Dependență!", "{{Timer}} Crește toate daunele primite la o inimă întreagă pentru cameră"}, -- Addicted!
	{"30", "Relaxă", "Isaac lasă rahat în urma lui timp de 10 secunde"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Efectul Blestemului Labirintului pentru etaj"}, -- ???
	{"32", "Te Mărește", "Crește mult dimensiunea lui Isaac#Nu afectează hitbox-ul"}, -- One makes you larger
	{"33", "Te Micșorează", "Scade mult dimensiunea lui Isaac#Scade și dimensiunea hitbox-ului"}, -- One makes you small
	{"34", "Infestat!", "Generează 2 păianjeni albaștri pentru fiecare rahat din cameră"}, -- Infested!
	{"35", "Infestat?", "Generează 2 păianjeni albaștri pentru fiecare inamic din cameră#Generează 2-6 păianjeni albaștri dacă nu sunt inamici în cameră"}, -- Infested?
	{"36", "Pastilă Putere!", "{{Timer}} Primești pentru cameră:#↑ {{Damage}} {{ColorGreen}}+7{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță#{{Timer}} Primești pentru 6.5 secunde:#Invincibilitate#Isac nu poate trage dar provoacă 40 daune de contact pe secundă#{{HealingRed}} Mâncatul a 2 inamici vindecă o jumătate de inimă#{{Fear}} Sperie toți inamicii din cameră"}, -- Power Pill!
	{"37", "Viziune Retro", "Pixelizează ecranul timp de 90 de secunde"}, -- Retro Vision
	{"38", "Prieteni Până la Sfârșit!", "Generează 6 muște albastre"}, -- Friends Till The End!
	{"39", "X‑Lax", "Generează o baltă de muci alunecoși de durată lungă"}, -- X-Lax
	{"40", "Ceva nu e în regulă...", "{{Slow}} Generează o baltă de muci încetinitori de durată lungă"}, -- Something's wrong...
	{"41", "Sunt Somnoros...", "{{Slow}} Îl încetinește pe Isaac și pe toți inamicii din cameră"}, -- I'm Drowsy...
	{"42", "Sunt Entuziasmat!!", "Îl grăbește pe Isaac și pe toți inamicii din cameră#Se declanșează din nou după 30 și 60 de secunde"}, --I'm Excited!!
	{"43", "Înghite!", "Consumă suvenirul lui Isaac și îi oferă efectele permanent"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Trage un grup de lacrimi Ipecac"}, -- Horf!
	{"45", "Parcă merg pe soare!", "{{Timer}} Primești pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar provoacă 40 daune de contact pe secundă#{{HealingRed}} Mâncatul a 2 inamici vindecă o jumătate de inimă#{{Fear}} Sperie toți inamicii din cameră"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Generează ultima pastilă folosită de Isaac ca pastilă 'cal'"}, -- Vurp!
	{"47", "Scade Viteza Lacrimilor", "↓ {{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza lacrimilor"}, -- Shot speed Down
	{"48", "Crește Viteza Lacrimilor", "↑ {{Shotspeed}} {{ColorGreen}}+0.3{{CR}} Viteza lacrimilor"}, -- Shot speed Up
	{"49", "Pastilă Experimentală", "↑ Crește o statistică aleatorie de două ori#↓ Scade o statistică aleatorie de două ori"}, -- Experimental Pill
	[9999] = {"", "Pastilă de Aur", "Efect aleatoriu de pastilă 'cal'#Are o șansă să se distrugă la fiecare folosire"}, -- Golden Pill
}

---------- Character Info ----------
	local repCharacterInfo = {
	[4] = {"???", "Nu poate avea Inimi Roșii#{{SoulHeart}} Creșterile de viață oferă Inimi Suflet#{{DevilRoom}} Pactele Diavolului care ar costa 1 sau 2 Inimi Roșii vor costa în schimb 1 sau 2 Inimi Suflet#Distrugerea rahatului generează 1 muscă albastră"},
	[8] = {"Lazarus", "O dată pe etaj, când mori:#Reînvii ca Lazarus Risen#Pierzi 1 container de Inimă Roșie#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune"},
	[11] = {"Lazarus Risen", "Statistici mărite și multiplicator de daune {{ColorGreen}}x1.4{{CR}}#La intrarea pe un etaj nou, revii la Lazarus"},
	[12] = {"Dark Judas", "{{Damage}} Multiplicator daune {{ColorGreen}}x2{{CR}}#Nu poate avea Inimi Roșii#{{BlackHeart}} Creșterile de viață oferă Inimi Negre#{{Player3}} Contorizat ca Judas pentru completări"},
	[14] = {"Keeper", "{{CoinHeart}} Se vindecă prin colectarea bănuților#Maximum 3 Inimi Monedă#Pickup-urile de inimă sunt transformate în muște albastre#{{DevilRoom}} Pactele Diavolului costă 15 sau 30 de bănuți"},
	[18] = {"Bethany", "{{SoulHeart}} Folosește Inimile Suflet pentru a încărca obiectul activ#Nu poți folosi Inimile Suflet ca viață"},
	[19] = {"Jacob", "Controlezi simultan Jacob și Esau#Ambele personaje lasă o bombă când unul este folosit#Esau rămâne pe loc ținând {{ButtonRT}}#{{ButtonLT}} folosește activul lui Jacob, {{ButtonRB}} folosește activul lui Esau, ține {{ButtonRT}} pentru a folosi cartea/pastila lor#Când e o alegere între iteme, Jacob și Esau pot apuca două simultan"},
	[20] = {"Esau", "Controlezi simultan Jacob și Esau#Ambele personaje lasă o bombă când unul este folosit#Esau rămâne pe loc ținând {{ButtonRT}}#{{ButtonLT}} folosește activul lui Jacob, {{ButtonRB}} folosește activul lui Esau, ține {{ButtonRT}} pentru a folosi cartea/pastila lor#Când e o alegere între iteme, Jacob și Esau pot apuca două simultan"},

	[21] = {"Tainted Isaac", "Piedestalele de iteme alternează între 2 opțiuni#Poți purta doar 8 iteme pasive#Schimbă care item va fi aruncat pentru al 9-lea item cu {{ButtonRT}}"},
	[22] = {"Tainted Magdalene", "Viața peste 2 Inimi Roșii se scurge încet#La contact, fă o lovitură corp-la-corp pentru {{ColorGreen}}6x{{CR}} daune#{{HalfRedHeart}} Șansă pentru inamici să arunce Jumătăți de Inimă Roșie care dispar în 2 secunde#Drop garantat la omoare corp-la-corp#{{Collectible45}} Vindecă de două ori mai mult din surse non-pickup#{{AngelDevilChance}} Daunele primite la inimile care se scurg nu afectează șansa pentru Pactul Diavolului"},
	[23] = {"Tainted Cain", "Atingerea unui piedestal de item îl transformă într-o varietate de pickup-uri"},
	[24] = {"Tainted Judas", "Nu poate avea Inimi Roșii#{{BlackHeart}} Creșterile de viață oferă Inimi Negre"},
	[25] = {"Tainted ???", "Bombe sunt înlocuite de Vrăji Rahat#{{Crafting29}} Provocând daune generează pickup-uri de rahat#{{Collectible715}} Poți stoca următoarea vrajă pentru mai târziu folosind Hold"},
	[26] = {"Tainted Eve", "Ținând tasta de foc convertești inimile în familiari Clot#Diferite tipuri de Inimi nasc Clot-uri cu mai multă viață și efecte pe lacrimi#Clot-urile pierd viață în timp#Clot-urile rămân pe loc ținând {{ButtonRT}}#La jumătate de inimă rămasă fără Clot-uri, primești un atac asemănător cu Cuțitul Mamei până te vindeci și părăsești camera"},
	[27] = {"Tainted Samson", "Provocând sau primind daune acumulezi starea Berserk#{{Timer}} Când intri în Berserk, primești pentru 5 secunde:#↑ {{Speed}} {{ColorGreen}}+0.4{{CR}} Viteză#↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Multiplicator viteză de foc#↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteză de foc#↑ {{Damage}} {{ColorGreen}}+3{{CR}} Daune#Restricționează atacurile la o lovitură corp-la-corp care reflectă proiectilele#{{Timer}} Fiecare ucidere mărește durata cu 1 secundă și oferă invincibilitate scurtă"},
	[28] = {"Tainted Azazel", "Când începi încărcarea, scuipi sânge#Lovind un inamic cu scuipat reduce la jumătate timpul de încărcare#Scuipatul provoacă {{ColorGreen}}1.5x{{CR}} daunele lui Azazel#{{BrimstoneCurse}} Inamicii afectați primesc daune suplimentare din razele Brimstone#La moarte, inamicii blestemați explodează și transmit blestemul mai departe"},
	[29] = {"Tainted Lazarus", "Lazarus are două stări, fiecare cu propriile iteme și viață#Curățarea unei camere/val sau folosirea Flip comută la cealaltă stare"},
	[30] = {"Tainted Eden", "Când primești daune, re-rand statisticile, itemele, bibelourile și consumabilele#Itemele se re-rand în iteme din același pool#Autovătămarea nu re-randează"},
	[31] = {"Tainted Lost", "{{Card51}} Cărțile generate au 10% șansă să fie Carte Sfântă#Itemele de Calitate {{Quality2}} sau mai mici au 20% șansă să fie re-randate#Numai itemele 'ofensive' pot apărea"},
	[32] = {"Tainted Lilith", "Apăsând tasta de foc lansezi un atac corp-la-corp cu fătul de rază scurtă care provoacă {{ColorGreen}}3x{{CR}} daune#Ținând Fire menții fătul activ care trage lacrimi către cel mai apropriat inamic"},
	[33] = {"Tainted Keeper", "Maximum 2 Inimi Monedă#Inamicii lasă bănuți care dispar în 2 secunde#Majoritatea piedestalelor costă 15 bănuți#Pactele Diavolului și itemele Înger costă 15 sau 30 bănuți#Magazinele nu necesită cheie și au stoc mărit"},
	[34] = {"Tainted Apollyon", ""},
	[35] = {"Tainted Forgotten", "The Forgotten este un morman de oase imobil care este ridicat și aruncat de The Soul pentru {{ColorGreen}}3x{{CR}} daune#Numai The Soul poate primi daune#Bombe sunt plasate la locația lui Forgotten#Nu poate avea Inimi Roșii#{{SoulHeart}} Creșterile de viață oferă Inimi Suflet"},
	[36] = {"Tainted Bethany", "{{Heart}} Folosește Inimi Roșii pentru a încărca obiectul activ#Nu poate avea Inimi Roșii#{{SoulHeart}} Creșterile de viață oferă Inimi Suflet și încărcări de sânge#Creșterile de statistici sunt doar 75% eficiente"},
	[37] = {"Tainted Jacob", "Dark Esau te urmărește, alergând spre tine când te apropii#Încărcarea provoacă multe daune inamicilor#Dacă te lovește, devii un fantomă care moare dintr-o lovitură pentru restul etajului#Ca fantomă, un pact cu diavolul per cameră poate fi luat gratuit"},
	[38] = {"Dead Tainted Lazarus", "Lazarus are două stări, fiecare cu propriile iteme și viață#Curățarea unei camere/val sau folosirea Flip comută la cealaltă stare"},
	[39] = {"Tainted Jacob's Soul", "Zbor#Lacrimi spectrale#{{Warning}} Fără viață#{{Warning}} Mori dacă ești lovit de Dark Esau#{{DevilRoom}} Un pact cu diavolul pe cameră poate fi luat gratuit#Revii la Tainted Jacob la următorul etaj"},
	[40] = {"Tainted Forgotten Soul", "The Forgotten este un morman de oase imobil care este ridicat și aruncat de The Soul pentru {{ColorGreen}}3x{{CR}} daune#Numai The Soul poate primi daune#Bombe sunt plasate la locația lui Forgotten#Nu poate avea Inimi Roșii#{{SoulHeart}} Creșterile de viață oferă Inimi Suflet"},
	}
	EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

EID.descriptions[languageCode].birthright ={
	{"Isac", "", "Toate piedestalele cu iteme alternează între două opțiuni"},
	{"Magdalene", "", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#Numărul maxim de containere de inimă crește la 18"},
	{"Cain", "", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{ArcadeRoom}} Toate etajele viitoare vor conține o Cameră Arcade îmbunătățită (cu excepția Dark Room și Chest)#{{Collectible46}} Crește mult șansa de câștig a efectului Lucky Foot"},
	{"Judas", "", "{{Collectible34}} Cartea lui Belial devine un item pasiv similar cu {{Collectible584}} Cartea Virtuților#{{Collectible34}} Oferă Cartea lui Belial dacă Judas nu o ține deja#↑ {{Damage}} Bonusul de daune se scalează cu numărul de încărcări pe care îl are itemul activ combinat cu acesta#Oferă efecte speciale pentru anumite iteme active"},
	{"???", "", "{{SoulHeart}} Inimile Suflet obținute din creșteri de viață sunt dublate"},
	{"Eve", "", "{{Collectible122}} Whore of Babylon este activ indiferent de viață#{{Collectible117}} Dead Bird este mereu activ"},
	{"Samson", "", "{{Collectible157}} Bloody Lust se poate declanșa de încă 4 ori pe etaj, până la {{ColorGreen}}+14{{CR}} daune după 10 declanșări"},
	{"Azazel", "", "Fasciculul Brimstone al lui Azazel devine mult mai lat#Nu crește daunele"},
	{"Lazarus", "", "↑ Reînvierea ca Lazarus Risen oferă {{Damage}} {{ColorGreen}}+7.2{{CR}} daune#{{Timer}} Bonusul de daune dispare în 60 de secunde#{{Blank}} Uciderea inamicilor cât timp efectul este activ îi extinde durata"},
	{"Eden", "", "Generează 3 iteme aleatorii din pool-uri aleatorii#Poate fi luat doar unul"},
	{"The Lost", "", "Previne apariția itemelor inutile pentru The Lost#Exemple: iteme care oferă doar viață, zbor, lacrimi spectrale sau se activează când primești daune"},
	{"Lazarus Risen", "", "↑ {{Damage}} {{ColorGreen}}+7.2{{CR}} Daune#Bonusul de daune dispare în 60 de secunde#Uciderea inamicilor cât timp efectul este activ îi extinde durata#Efectul se declanșează de fiecare dată când Lazarus reînvie ca Lazarus Risen"},
	{"Black Judas", "", "{{Collectible34}} Cartea lui Belial devine un item pasiv similar cu {{Collectible584}} Cartea Virtuților#{{Collectible34}} Oferă Cartea lui Belial dacă Judas nu o ține deja#↑ {{Damage}} Bonusul de daune se scalează cu numărul de încărcări pe care îl are itemul activ combinat cu acesta#Oferă efecte speciale pentru anumite iteme active"},
	{"Lilith", "", "Familiarii sunt poziționați în fața lui Lilith"},
	{"Keeper", "", "↑ {{CoinHeart}} {{ColorGreen}}+1{{CR}} Viață#Numărul maxim de containere de Inimă Monedă crește la 4"},
	{"Apollyon", "", "{{Collectible477}} Folosirea Void are o șansă să genereze un item care a fost absorbit anterior#Nu elimină bonusurile de statistici#Cu cât sunt mai multe iteme absorbite, cu atât șansa de a genera un item la folosire este mai mare"},
	{"The Forgotten", "", "Îndepărtează lanțul care leagă The Soul de The Forgotten"},
	{"The Forgotten Soul", "", "Îndepărtează lanțul care leagă The Soul de The Forgotten"},
	{"Bethany", "", "{{Battery}} Activarea unui item folosind încărcări de suflet este uneori gratuită"},
	{"Jacob", "", "Personajul care ridică itemul primește copii ale a trei iteme pasive ale celuilalt personaj"},
	{"Esau", "", "Personajul care ridică itemul primește copii ale a trei iteme pasive ale celuilalt personaj"},
	{"Tainted Isac", "", "Adaugă 4 sloturi pentru iteme pasive#Nu consumă el însuși un slot"},
	{"Tainted Magdalene", "", "{{Heart}} Adaugă 1 container de inimă care nu se scurge"},
	{"Tainted Cain", "", "Dublează numărul de pickup-uri lăsate la colectarea unui item"},
	{"Tainted Judas", "", "{{Collectible705}} Mărește raza în care Dark Arts lovește inamicii și lacrimile"},
	{"Tainted ???", "", "{{PoopPickup}} Mărește numărul maxim de rahați care pot fi purtate la 29"},
	{"Tainted Eve", "", "{{HalfHeart}} Cheagurile de Inimă Roșie lasă Jumătăți de Inimă Roșie la moarte care dispar după 2 secunde"},
	{"Tainted Samson", "", "{{Collectible704}} Uciderea unui inamic adaugă 3 secunde la temporizatorul Berserk! în loc de 1"},
	{"Tainted Azazel", "", "{{Collectible726}} Dublează dimensiunea atacului de strănut Hemoptysis al lui Tainted Azazel"},
	{"Tainted Lazarus", "", "Forma inactivă a lui Tainted Lazarus apare ca un al doilea personaj fantomatic#Este invincibil și provoacă 25% daune#Ambele forme primesc itemul Birthright"},
	{"Tainted Eden", "", "Orice iteme obținute înainte de Birthright nu mai pot fi rerandate#Itemele active pot fi rerandate din nou dacă sunt aruncate și ridicate iar"},
	{"Tainted Lost", "", "Oferă o viață în plus care îl reînvie pe Tainted Lost în aceeași cameră și provoacă 200 daune inamicilor din apropiere"},
	{"Tainted Lilith", "", "{{Collectible728}} Familiarii care în mod normal îl urmăresc pe Tainted Lilith o vor urmări pe Gello#Atacul corp-la-corp primește {{ColorGreen}}+3{{CR}} daune per familiar"},
	{"Tainted Keeper", "", "{{Coin}} Atrage puternic bănuții lăsați de înfrângerea inamicilor#Nu are efect asupra altor bănuți"},
	{"Tainted Apollyon", "", "Lăcustele provoacă daune continuu inamicilor fără a se întoarce cât timp butonul de tragere este ținut"},
	{"Tainted Forgotten", "", "{{Collectible714}} Tainted Soul primește abilitatea Recall pentru a recupera Tainted Forgotten de la distanță#The Soul este invincibil cât timp Forgotten se întoarce"},
	{"Tainted Bethany", "", "Generează patru wispi de item aleatorii de Calitate {{Quality3}} și {{Quality4}} cu mult mai mult HP decât normal"},
	{"Tainted Jacob", "", "Dark Esau se desparte în două, creând o clonă umbroasă#Amândoi Esaus se încarcă mereu în același timp#{{Collectible722}} Reîncărcarea lui Anima Sola este redusă la 10 secunde#Folosirea Anima Sola îi înlănțuie pe amândoi Esaus timp de 6.67 secunde"},
	{"Dead Tainted Lazarus", "", "Forma inactivă a lui Tainted Lazarus apare ca un al doilea personaj fantomatic#Este invincibil și provoacă 25% daune#Ambele forme primesc itemul Birthright"},
	{"Tainted Jacob's Soul", "", "Dark Esau se desparte în două, creând o clonă umbroasă#Amândoi Esaus se încarcă mereu în același timp#{{Collectible722}} Reîncărcarea lui Anima Sola este redusă la 10 secunde#Folosirea Anima Sola îi înlănțuie pe amândoi Esaus timp de 6.67 secunde"},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Tainted Soul primește abilitatea Recall pentru a recupera Tainted Forgotten de la distanță#Tainted Soul este invincibil cât timp Forgotten se întoarce"},
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	-- These texts are affected by the PluralizeFunction (ab+ file)
	AddBlackHearts = "{{BlackHeart}} {1} Inimă Neagră",
	AddBombs = "{{Bomb}} {1} Bombă",
	AddCoins = "{{Coin}} {1} Bănuț",
	AddHearts = "{{HealingRed}} Vindecă {1} inimă",
	AddKeys = "{{Key}} {1} Cheie",
	AddMaxHearts = "{{EmptyHeart}} {1} Container de inimă",
	AddSoulHearts = "{{SoulHeart}} {1} Inimă Suflet",

	-- Cache Flag names
	cacheFlagStart = "Poate afecta ",
	[0] = "{{Damage}} Daune", "{{Tears}} Viteză de foc", "{{Shotspeed}} Viteza lacrimilor", "{{Range}} Distanță", "{{Speed}} Viteză", "Efecte pe lacrimi", "Culoare lacrimi", "Zbor", "Tip atac", "Familiari", "{{Luck}} Noroc", "Dimensiune", "Culoare", "Conținut cufăr", [16] = "Toate statisticile",

	-- Attribute triggers
	active = "La folosire:#",
	pickup_collected = "La colectarea unui pickup:#",
	enemy_kill = "Ucigerea unui inamic are 20% șansă să:#",
	damage_taken = "La primirea de daune:#",
	entity_spawned = "Când este generat un/o {T1}:#",
	tear_fire = "Tragerea unei lacrimi are 5% șansă să:#",
	enemy_hit = "Lovirea unui inamic are 5% șansă să:#",
	room_clear = "La curățarea unei camere:#",
	chain = " Apoi:{{CR}} ",

	-- Attribute effects
	area_damage = "Provoacă {1} daune în {2} plăci în jurul lui Isaac",
	add_temporary_effect = "Oferă {1} pentru cameră",
	convert_entities = "Transformă toate {1} din cameră în {2}",
	use_active_item = "Folosește {1}",
	spawn_entity = "Generează un/o {1}",
	fart = "Pârț pe {1} plăci în jurul lui Isaac",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "bombă aprinsă",
	["5.0"] = "pickup",
	["5.10"] = "inimă",
	["5.20"] = "bănuț",
	["5.30"] = "cheie",
	["5.40"] = "bombă pickup",
	["5.69"] = "sac",
	["5.70"] = "pastilă",
	["5.90"] = "baterie",
	["5.300"] = "carte",
	["5.301"] = "rună", -- not a real ID
	["9.-1"] = "proiectil inamic",
	["999.-1"] = "obiect de grilă",
	["1000.0"] = "efect",

	-- Text for the base item that is granted
	grants = "Oferă ",
}

---------- Bag of Crafting Text ----------
EID.descriptions[languageCode].CraftingBagContent = "Sac:"
EID.descriptions[languageCode].CraftingRoomContent = "Cameră:"
EID.descriptions[languageCode].CraftingFloorContent = "Etaj:"
EID.descriptions[languageCode].CraftingSearch = "Caută:"
EID.descriptions[languageCode].CraftingBagQuality = "Calitate sac:"
EID.descriptions[languageCode].CraftingBestQuality = "Cea mai bună calitate:"
EID.descriptions[languageCode].CraftingHideKey = "Ascunde:"
EID.descriptions[languageCode].CraftingPreviewKey = "Previzualizare:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+încă {1}"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} din 8 iteme disponibile"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Necesită cel puțin 8 pentru a afișa rețetele de meșteșugit!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Ascuns în prezent (Afișează cu {1})"
-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Derulare: Ține {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Blocare: {{ButtonX}}, Reîmprospătare: {{ButtonB}}, Resetare Sac: Ține {{ButtonRB}}, Căutare: {1})"

-- Strings for Tainted Cain's pedestal salvaging; the non-base lines will have the corresponding icon automatically
EID.descriptions[languageCode].TaintedCainPedestalBase = "Se transformă în 3-8 pickup-uri aleatorii la atingere"
EID.descriptions[languageCode].TaintedCainPedestalBaseBirthright = "Se transformă în {{BlinkBirthright}}6-16{{CR}} pickup-uri aleatorii la atingere"
EID.descriptions[languageCode].TaintedCainPedestalGuaranteed = "Garantat să genereze {1}" -- Room type spawns
EID.descriptions[languageCode].TaintedCainPedestalBonus = "33% șansă pentru un bonus {1}" -- "Safety Cap" type spawns
EID.descriptions[languageCode].TaintedCainPedestalLuckyToe = "66% șansă pentru un pickup bonus"
EID.descriptions[languageCode].TaintedCainPedestalLuckyToeBirthright = "66% șansă pentru {{BlinkBirthright}}2{{CR}} pickup-uri bonus"
EID.descriptions[languageCode].TaintedCainPedestalDaemonsTail = "Inimile sunt cu 80% mai puțin probabile"


---------- Misc. Text ----------

EID.descriptions[languageCode].ResultsWithX = "(Rezultate cu {1})"
EID.descriptions[languageCode].VariableCharge = "{1} încărcare:"

EID.descriptions[languageCode].poopSpells = {
	{"Rahat", "Rahat normal care poate lăsa pickup-uri"},
	{"Rahat cu Porumb", "Generează muște albastre cât timp este intact"},
	{"Rahat Arzător", "Provoacă daune la contact cât timp este intact#Lasă foc în urmă când este distrus"},
	{"Rahat de Piatră", "Poate provoca daune de 3 ori când este aruncat#Necesită multe lovituri pentru a fi distrus"},
	{"Rahat Împuțit", "Emite un nor toxic#{{Warning}} Norul explodează dacă atinge focul!"},
	{"Rahat Negru", "{{Slow}} Creează muci încetinitori#{{Confusion}} Provoacă 10 daune și amețește toți inamicii când este distrus"},
	{"Rahat Sfânt", "{{Collectible543}} Creează un Rahat Alb#Cât timp ești în aura rahătului:#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} Multiplicator daune#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} Multiplicator viteză de foc#Lacrimi care urmăresc#Șansă să blocheze daune"},
	{"Muci Maronii", "Lasă o dâră de muci#Stând pe muci crește viteză de foc și daunele lui Isac#Dacă mucii ating alte rahaturi, primește atributul lor"},
	{"Pârț", "Împinge înapoi inamicii și gloanțele din apropiere și generează un nor toxic#{{Warning}} Norul explodează dacă atinge focul!"},
	{"Bombă", "Bombă aruncabilă normală"},
	{"Diaree Explozivă", "Isac generează rapid 5 bombe aprinse"},

	--Undetected poop, for Poop API
	--[Poop name în code] = {Icon, Name, Description}
	["Unknown"] = {"{{PoopSpell1}}", "Rahat Necunoscut", "Efectele acestui rahat sunt necunoscute"}
}

EID.descriptions[languageCode].itemPoolFor = "Pool pentru item:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Comoară", "Magazin", "Șef", "Diavol", "Înger", "Secretă", "Bibliotecă", "Joc de Coajă", "Cufăr Auriu", "Cufăr Roșu", "Cerșetor", "Cerșetor Demon", "Blestem", "Maestru Cheilor", "Cerșetor Baterie", "Cufărul Mamei", "Comoară Lăcomiei", "Șef Lăcomiei", "Magazin Lăcomiei", "Diavol Lăcomiei", "Înger Lăcomiei", "Blestem Lăcomiei", "Secretă Lăcomiei", "Joc de Macara", "Ultra Secretă", "Cerșetor Bombă", "Planetariu", "Cufăr Vechi", "Magazin Bebeluș", "Cufăr de Lemn", "Cerșetor Putrezit",
}

EID.descriptions[languageCode].VoidShopText = "Dacă este absorbit imediat după ridicare, primești:"
EID.descriptions[languageCode].VoidOptionText = " va fi absorbit în schimb"
EID.descriptions[languageCode].VoidNames[2] = "{1} Viteză de foc"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune", "↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteză de atac", "↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză", "↑ {{Range}} {{ColorGreen}}+3{{CR}} Distanță"}

EID.descriptions[languageCode].spindownError = "Itemul dispare"

EID.descriptions[languageCode].BlankCardEffect = "Efect Blank Card:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Ține {{CONFIG_BoC_Toggle}} pentru a afișa descrierea)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "(Apasă {{CONFIG_BoC_Toggle}} pentru a afișa următoarea descriere: {1})"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Se va transforma înapoi în Clepsidră Strălucitoare la următorul etaj"

EID.descriptions[languageCode].FalsePHDHeart = "Generează 1 {{BlackHeart}} Inimă Neagră"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} {{ColorGreen}}+0.6{{CR}} Daune"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} {{ColorGreen}}+1.2{{CR}} Daune"

EID.descriptions[languageCode].ExperimentalPillPHD = "Fără scădere de statistică"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "Fără creștere aleatorie de statistică"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "În schimb, consumă cheia și generează 6 iteme din pool-uri aleatorii"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} ATENȚIE {{Warning}}{{CR}}"
EID.descriptions[languageCode].AchievementWarningText = "Realizările sunt dezactivate!#Pentru a activa progresul și realizările, trebuie mai întâi să o omori pe Mom (Depths II) fără niciun mod activat.#(Dacă ai învins-o pe Mom, acest mesaj este un bug și poate fi ignorat)#(Această avertizare poate fi dezactivată în config)"
EID.descriptions[languageCode].OldGameVersionWarningText = "EID este actualizat pentru cea mai nouă versiune Steam#Versiunea ta de joc nu este suportată oficial, deci unele descrieri și funcții vor fi inexacte#(Această avertizare poate fi dezactivată în config)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Itemele modate pot face calculul rețetelor de meșteșugit inexact!#Instalează REPENTOGON pentru suport îmbunătățit la rețete modate#(Această avertizare poate fi dezactivată în config)"


-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
local repConditions = {
	------ GENERAL STRINGS ------
	["Tainted Revive"] = "{1} pur și simplu reînvie",
	["Ice Tears"] = "Înghețarea unui inamic nu se consideră ucidere", -- Uranus Anti-Synergy
	
	------ GREED MODE ------
	["5.100.344"] = {"{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{Bomb}} Generează 3 bombe"}, -- Match Book (Greed)
	["5.300.74"] = {"Îl teleportează pe Isac în prima cameră a etajului"}, -- The Moon? (Greed)
	["5.100.416"] = {"{{Coin}} Mărește limita de bănuți la 999"}, -- Deep Pockets (Greed)
	["5.100.566"] = {"{{HalfSoulHeart}} {{ColorGreen}}+1{{CR}} jumătate de Inimă Suflet la intrarea pe un etaj nou#!!! Ecranul de tranziție al etajului arată iteme greșite în Greed Mode"}, -- Dream Catcher (Greed)
	["5.100.580"] = "{{GreedMode}} Poate crea doar rar camere speciale în Greed Mode#{{SuperSecretRoom}} Poate totuși ajuta la găsirea Camerei Super Secrete", -- Red Key (Greed)
	["5.300.83"] = "{{GreedMode}} Poate crea doar rar camere speciale în Greed Mode#{{SuperSecretRoom}} Poate totuși ajuta la găsirea Camerei Super Secrete", -- Soul of Cain (Greed)
	["5.100.514"] = {"Face ca unii inamici și proiectile să se oprească pe scurt la intervale aleatorii#Proiectilele oprite dispar"}, -- Broken Modem (Greed)
	["5.350.162"] = {"{{Player7}} Curățarea unui val are 50% șansă să transforme jucătorul în Azazel#{{Timer}} Efectul durează până la curățarea altui val"}, -- Azazel's Stump (Greed)
	
	
	------ ACHIEVEMENT CHECKS ------
	-- todo...
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	["5.100.642"] = {"!!!FOLOSIRE UNICĂ!!!#Generează un item din pool-ul camerei curente"}, -- Magic Skin + Lost
	["5.100.240"] = "{1} păstrează modificările de statistici când îl lasă jos", -- Experimental Treatment + Tainted Isac
	["5.100.644"] = "{1} păstrează creșterea de statistici când îl lasă jos", -- Consolation Prize + Tainted Isac
	["5.100.549"] = {"↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac"}, -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = "Funcționează pentru {1}, permițându-i să supraviețuiască la 4 lovituri", -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = {"↑ {{Damage}} {{ColorGreen}}+0.25{{CR}} Daune pentru fiecare Inimă Frântă#{{BrokenHeart}} {{ColorGreen}}+1{{CR}} Inimă Frântă#{{BrokenHeart}} Fiecare lovitură fatală oferă {{ColorGreen}}+1{{CR}} Inimă Frântă#{{Warning}} Keeper moare la 3 Inimi Frânte"}, -- Heartbreak + Normal Keeper
	["5.100.694 (Tainted Keeper)"] = {"{{Warning}} {1} va muri dintr-o lovitură după ce ia acest item#↑ {{Damage}} {{ColorGreen}}+0.25{{CR}} Daune pentru fiecare Inimă Frântă#{{BrokenHeart}} {{ColorGreen}}+1{{CR}} Inimă Frântă#{{BrokenHeart}} Fiecare lovitură fatală oferă {{ColorGreen}}+1{{CR}} Inimă Frântă#Tainted Keeper moare la 2 Inimi Frânte"}, -- Heartbreak + Tainted Keeper
	["5.100.501"] = "{1} poate obține containere de monedă suplimentare#Itemele de viață pot oferi un container extra la fiecare 25 bănuți", -- Greed's Gullet + Keeper
	["5.100.188"] = "Provoacă 7.5 daune ca {1}", -- Cain + Abel
	["5.100.360"] = "Provoacă 100% daune ca {1}", -- Lilith + Incubus
	["5.100.728"] = "Provoacă 100% daune ca {1}", -- Lilith + Gello
	["5.100.230 (Keeper)"] = "{1} rămâne cu 1 container de monedă", -- Abaddon
	["5.100.230 (Bethany)"] = "{1} rămâne cu o jumătate de inimă", -- Abaddon
	["5.100.230 (Tainted Bethany)"] = "{1} nu își pierde încărcările de sânge", -- Abaddon
	["5.100.245 (Keeper)"] = {"↑ {{Tears}} Viteză de foc crescută#↑ Împrăștiere a lacrimilor redusă#↓ {{Damage}} {{ColorGreen}}x0.8{{CR}} Multiplicator daune"}, -- 20/20 + Keeper
	["5.100.205 (Tainted Magdalene)"] = "Permite folosirea infinită a Yum Heart", -- Sharp Plug + Tainted Magdalene
	
	["5.100.705"] = "Creștere temporară de {{ColorGreen}}+1{{CR}} daune pentru fiecare glonț/inamic", -- Dark Arts + Dark/Tainted Judas
	["5.100.722"] = {"Îl înlănțuie pe Dark Esau#După 5 secunde sau la refolosirea Anima Sola, se eliberează și se năpustește spre Jacob"}, -- TJacob + Anima Sola
	["5.100.713"] = {"Recheamă toate cheagurile la bara de viață a Evei#Cheagurile în exces sunt mutate pur și simplu la locația ei#{{Timer}} Timp de reîncărcare: 1 secundă"}, --Teve + Sumptorium
	["5.100.711"] = {"Entering", "{{Player38}} Îl comută pe Lazarus în cealaltă stare#Entering"}, -- Tlaz + Flip
	["5.100.710"] = {"La folosire, atacând lovești cu sacul în direcția aleasă#Lovind un pickup îl pune în sac#Conținutul sacului poate fi rearanjat cu {{ButtonRT}} pentru a înlocui pickup-uri specifice când este plin#Ținând tasta de Folosire când sacul este plin meșteșugește itemul previzualizat#Calitatea itemului depinde de calitatea pickup-urilor"}, -- Tcain Bag of Crafting
	
	["Mother's Kiss Soul"] = {"{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet cât timp este ținut"},
	["Mother's Kiss Bone"] = {"{{BoneHeart}} {{ColorGreen}}+1{{CR}} Inimă Os cât timp este ținut"},
	["Mother's Kiss Coin"] = {"{{CoinHeart}} {{ColorGreen}}+1{{CR}} Inimă Monedă cât timp este ținut#Mărește limita de Inimi Monedă cu 1"},
	
	-- Vibrant/Dim Bulb
	["5.350.100 (Bethany)"] = "Funcționează cu încărcările de suflet ale lui {1}",
	["5.350.100 (Tainted Bethany)"] = "Funcționează cu încărcările de sânge ale lui {1}",
	["5.350.101 (Bethany)"] = "Ignoră încărcările de suflet ale lui {1}",
	["5.350.101 (Tainted Bethany)"] = "Ignoră încărcările de sânge ale lui {1}",
	["Health Up Soul Charges"] = "{{ColorGreen}}+{1}{{CR}} încărcări de suflet",
	["Health Up Blood Charges"] = "{{ColorGreen}}+{1}{{CR}} încărcări de sânge",
	
	-- Tainted Bethany stuff
	["2 of Hearts Blood Charges"] = "Dublează încărcările de sânge ale lui {1}",
	["Vampire Blood Charges"] = {"↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#Ucigerea a 13 inamici adaugă 1 încărcare de sânge"},
	["Fork Blood Charges"] = {"Curățarea unei camere are 10% șansă să adauge 1 încărcare de sânge"},
	["Stem Cell Blood Charges"] = {"Intrarea pe un etaj nou adaugă 1 încărcare de sânge"},
	
	["Salvaging Bonus"] = {"și aparate distruse", "aparate distruse și iteme recuperate"},
	["Salvaging Lucky Toe"] = "66% șansă pentru un pickup extra din itemele recuperate",
	
	
	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac trage încă 1 lacrimă#Fără scădere suplimentară de statistică", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac trage încă 2 lacrimi#Fără scădere suplimentară de statistică", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac trage încă 1 lacrimă#Fără scădere suplimentară de statistică", -- 20/20
	["5.100.358 (Copies)"] = "Isaac trage încă 1 lacrimă în centru", -- The Wiz
	["5.100.64 (Copies)"] = "Deținerea acestui item de mai multe ori reduce prețul și mai mult", -- Steam Sale
	["5.100.118 (Copies)"] = "Brimstone-uri multiple oferă daune crescute și un fascicul mai mare", -- Brimstone
	["5.100.531 (Copies)"] = "Copiile suplimentare oferă doar {{ColorGreen}}+1{{CR}} daune", -- Haemolacria
	["5.100.224 (Copies)"] = "Copiile suplimentare oferă doar {{ColorGreen}}+0.5{{CR}} viteză de foc", -- Cricket's Body
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Transformă turelele Brown Nugget în bănuți",
	["Sacrificial Item Wisps"] = "Familiarii creați de Lemegeton pot fi sacrificați#Transformă toți wispii Lemegeton în {{HalfSoulHeart}} jumătăți de Inimă Suflet",
	["Sacrificial Plum"] = "Plum-ul invocat este considerat un familiar și nu elimină Plum Flute",
	["Sacrificial Quints"] = "Dacă un familiar Quints este sacrificat, pierzi Quints",
	["Sacrificial Abyss"] = "Lăcustele Abis sunt considerate familiari",
	["Sacrificial Star"] = "Star of Bethlehem este considerat un familiar",
	["Sacrificial Clots"] = "Transformă cheagurile în bănuți",
	
	["1000.76.1"] = "{{Warning}} Re-randează doar personajul care activează zarul", -- Dice Room 1 (Co-op)
	["1000.76.6"] = "{{Warning}} Toate itemele personajelor vor fi re-randate în co-op!", -- Dice Room 6 (Co-op)
	["5.100.45"] = "Vindecă ceilalți jucători cu o jumătate de inimă", -- Yum Heart (Co-Op)
	["5.350.125"] = "Fasciculele arcează și între jucători", -- Extension Cord (Co-Op)
	
	["5.100.245"] = "Elimină penalizarea de viteză de foc a lui {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["20/20"] = "Fără penalizare de viteză de foc cu {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	
	["5.100.135 (Hard Mode)"] = {"1-2 bănuți", "1 bănuț", "2-3 bănuți", "2 bănuți"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.201"] = "Reîncarcă încărcarea lui {1} la ridicare", -- Iron Bar + Notched Axe
	["5.350.172"] = "{1} elimină efectul de teleportare", -- Cursed Penny + Black Candle
	["5.100.501 (Deep Pockets)"] = "{{ColorGreen}}+1{{CR}} container pentru fiecare 100 bănuți peste 99", -- Greed's Gullet + Deep Pockets
	["? Card Single Use"] = "Itemele de folosire unică pot fi folosite de mai multe ori cu ? Card", -- Single Use Actives + ? Card
	["Both Peppers"] = "Cu {1}, șansa de bază de a trage o flacără este 12.5%, până la 100% la 7 noroc", -- Ghost Pepper + Bird's Eye
	["Black Feather"] = "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune", -- Black Feather items
	["Hemoptysis"] = "Funcționează cu {1}", -- Hemoptysis + Brimstone items
	["5.100.600"] = "{{ColorGreen}}x1.2{{CR}} Multiplicator viteză de foc pentru {1}", -- Eye Drops (items and some players)
	["5.100.482"] = "Personajele Tainted se schimbă în alte personaje Tainted", -- Clicker
	
	["4.5 Volt Timed"] = "Nu are efect asupra reîncărcărilor cu timp", -- 4.5 Volt + Timed Recharges
	["4.5 Volt Multiple"] = "Itemele active secundare primesc încărcare doar dacă activul principal este complet încărcat", -- 4.5 Volt + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Activele cu 0 încărcări maxime nu se iau în calcul", -- Vibrant/Dim Bulb + zero charge actives
	
	["Brimstone Proptosis"] = "Fasciculele provoacă {{ColorGreen}}6x{{CR}} daune de aproape, scăzând cu distanța",
	["Brimstone Ipecac"] = "Laserul primește {{ColorGreen}}+2{{CR}} daune și explodează pe inamici și obstacole",
	["Brimstone Pop!"] = "Fascicul mai scurt care trage {1} lacrimi la final",
	["Eye of Belial Dr. Fetus"] = "Bombe care străpung, fac {{ColorGreen}}2.5x{{CR}} daune, dar nu urmăresc și nu provoacă daune suplimentare de explozie",
	["Spirit Sword C Section"] = "{1} are prioritate#Fetușii țin săbii și fac atacuri rotative",
	["Spirit Sword Mom's Knife"] = "{1} are prioritate#Atacul rotativ aruncă sabia înainte",
	["Spirit Sword Technology"] = "Sabia devine un lightsaber care poate reflecta proiectilele inamice",
	["Spirit Sword Ipecac"] = "Sabia primește {{ColorGreen}}+6{{CR}} daune și otrăvește, dar nu explodează#Fasciculele de sabie explodează",
	["Ludovico Ipecac"] = "Lacrima primește {{ColorGreen}}+2{{CR}} daune, dar nu explodează sau otrăvește",
	["Technology Ipecac"] = "Laserul primește {{ColorGreen}}+2{{CR}} daune și explodează la țintă",
	["Eye of the Occult Beam"] = "Isaac trage automat cu un cursor care modifică traiectoria fasciculului",

	["Lullaby Clots"] = "(Inclusiv cheaguri)",
	["Lullaby Incubus"] = "(Inclusiv Incubus)",

	-- Jacob's Ladder / 120 Volt battery synergies
	["Sparks Damage"] = "Scânteile provoacă cu 50% mai multă daune",
	["Sparks Arc Length"] = "Scânteile au o distanță de arc mai mare",
	["Sparks Arc Count"] = "Scânteile pot arca la încă 2 inamici",
	["Sparks Arc Back"] = "Scânteile pot arca înapoi la același inamic",

	["White Poop Jar"] = "Generează White Poop la folosirea unei încărcări",
	["Golden Poop Jar"] = "Șansă de a genera un Rahat Auriu la folosirea unei încărcări",

	["Binge Eater Healing"] = {"Vindecă 1 inimă", "Vindecă {{BlinkGreen}}2{{CR}} inimi", "{{ColorGreen}}+4{{CR}} încărcări de sânge", "{{ColorGreen}}+6{{CR}} încărcări de sânge"},
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)




-- If Debug enabled, add overwrite tables to the languagepack în order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Automatul de donații", "Următoarea realizare la {1} monede, au mai rămas {2} monede#{{Luck}} 2% șansă de {{ColorGreen}}+1{{CR}} Noroc la donare#{{AngelRoom}} Donarea a 10 monede mărește șansa pentru Camera Înger"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Automatul de donații Greed", "Următoarea realizare la {1} monede, au mai rămas {2} monede"}
end
