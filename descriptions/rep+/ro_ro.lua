---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ro_ro"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "Accidentul Lămâii", "Varsă o baltă de acid#Acidul provoacă 24 de daune pe secundă#Acidul persistă până când părăsești camera" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Pasăre Moartă", "Când primești daune, apare o pasăre care atacă inamicii#Pasărea provoacă 4.3 daune de contact pe secundă#Persistă între camere dacă jucătorul are 1/2 inimi" }, -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "Băiatul Misterios", "{{Coin}} Creează 7 monede aleatorii#Creează un suvenir penny aleatoriu" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "Drepturi de Sânge", "Provoacă 40 de daune tuturor inamicilor#{{Tears}} {{ColorGreen}}+0.48{{CR}} Viteză de atac pentru camera curentă#{{Warning}} Provoacă 1 inimă de daune lui Isaac#După prima utilizare într-o cameră, provoacă doar o jumătate de inimă#{{Heart}} Elimină inimile roșii mai întâi" }, -- Blood Rights
	-- Change: added random tear effects information	
	[244] = { "244", "Tech.5", "Ocazional tragi lasere pe lângă lacrimile lui Isaac#Șansă mică ca laserele să aibă efecte aleatorii"}, -- Tech.5
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Sac de Box", "Familiar momeală#Inamicii îl vizează pe el în locul lui Isaac#Blochează lacrimile inamice" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Tehnica Ludovico", "↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} viteză lacrimi#Înlocuiește lacrimile lui Isaac cu o singură lacrimă uriașă controlabilă" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Fasole", "{{Petrify}} Provoacă 100 de daune și pietrifică toți inamicii din cameră#{{Poison}} Provoacă 5 daune și otrăvește inamicii apropiați#Poate deschide camere secrete și sparge pietre" }, -- Mega Bean
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[420] = { "420", "Pudră Neagră", "Mersul în cerc desenează o pentagramă pe podea, care provoacă 130 de daune în 4 secunde#Oferă explozii mai mari#Șemineele explodează când sunt stinse" }, -- Black Powder
	-- Change: Complete rewrite
	[436] = { "436", "Lapte!", "Blochează proiectilele inamice#{{Tears}} După 10 lovituri, se sparge și oferă un bonus de lacrimi pentru restul etajului" }, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "Fasole Persistentă", "Dacă tragi fără pauză timp de 4 secunde, apare un nor de gaz#Norul își mărește dimensiunea în 10 secunde#Norul provoacă mai puține daune cu cât devine mai mare#Poate fi mutat trăgând în el" }, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Tăcutul", "Se lovește prin cameră#Provoacă 30 de daune de contact pe secundă#Se oprește când Isaac trage#Blochează proiectilele când e oprit și trage rafale radiale de lacrimi" }, -- Hushy
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[475] = { "475", "Planul C", "Provoacă 9.999.999 de daune tuturor inamicilor#{{Warning}} Îl omoară pe Isaac după 3 secunde#10 până la 12 secunde pentru Delirium și Mother" }, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Dataminer", "↑ Crește aleatoriu o caracteristică#↓ Scade aleatoriu o caracteristică#{{Timer}} Efecte aleatorii de lacrimi pentru cameră#Transformă piedestalele de obiecte în obiecte glitched#{{Blank}} Corupe toate sprite-urile și muzica din cameră" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Clicker", "Îți schimbă personajul cu unul aleatoriu#50% șansă de a elimina cel mai recent obiect colectat" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirant", "Generează o versiune prietenoasă Delirium a unui boss#Persistă între camere#{{Warning}} Doar un boss poate fi activ în același timp#Sănătatea bossului scade în timp" }, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "Prea Înfricoșător", "{{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de atac#{{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza Lacrimilor#{{Fear}} Îi sperie pe inamicii dintr-un mic radius în jurul lui Isaac" }, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Durează", "{{Timer}} Când primești daune, pentru camera respectivă:#↑ {{Tears}} {{ColorGreen}}+1.2{{CR}} Viteză de atac la prima lovitură#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac pentru fiecare lovitură suplimentară#Eliberează un inel de 10 lacrimi în jurul lui Isaac#Lacrimile lasă o baltă de acid la impact" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Marte", "Dublu-apăsarea unei taste de mișcare îl face pe Isaac să se arunce#{{Damage}} În timpul aruncării, Isaac este invincibil și provoacă {{ColorGreen}}4x{{CR}} dauna lui {{ColorGreen}}+8{{CR}}#{{Timer}} 3 secunde timp de reîncărcare#{{Burning}} Creează un inel de foc la impact" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Jupiter", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} containere de inimă goale#↓ {{Speed}} {{ColorRed}}-0.3{{CR}} viteză#{{HealingRed}} Vindecă 2 inimi#{{Speed}} Viteza crește până la {{ColorGreen}}+0.5{{CR}} dacă stai pe loc#{{Poison}} Mișcarea eliberează nori de otravă#{{Poison}} Imunitate la otravă" }, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "Farmec Rău", "↑ {{Luck}} {{ColorGreen}}+2{{CR}} noroc#Imun la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} frică, {{Slow}} pânze de păianjen și {{Poison}} efecte de otravă#Oferă 1 secundă de imunitate la acid" }, -- Evil Charm
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "Revelație", "Zbor#{{Chargeable}} Fascicul sfânt încărcabil cu daune mari#Nu înlocuiește lacrimile lui Isaac" }, -- Revelation
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Steaua din Betleem", "Călătorește încet de la prima cameră a etajului la {{BossRoom}} Camera Boss#Se mișcă mai repede dacă ești înaintea ei și mai încet dacă ești în urma ei#Stând în aura ei oferă:#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} multiplicator lacrimi#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} multiplicator daune#Lacrimi cu urmărire#50% șansă să ignori daunele" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Citirea Cărților", "Creează două portaluri în prima cameră a fiecărui etaj#Părăsirea camerei face portalurile să dispară#{{Blank}} {{ColorRed}}Roșu: {{CR}}{{BossRoom}} Camera Boss#{{Blank}} {{ColorYellow}}Galben: {{CR}}{{TreasureRoom}} Camera de Obiecte#{{Blank}} {{ColorBlue}}Albastru: {{CR}}{{SecretRoom}} Camera Secretă#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Magazin" }, -- Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "Portal Mic", "Dublu-apăsarea unui buton de tragere lansează portalul#Provoacă daune de contact când este lansat#Consumă obiectele din cale#Fiecare obiect consumat îi mărește dimensiunea, daunele și creează o muscă albastră#Dacă consumă 2-3 obiecte, creează un portal către o cameră specială și familiarul dispare pentru restul etajului#Conținutul camerei persistă pentru restul rundei" }, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Borcan cu Spirite", "Creează 2 spirite aleatorii#Creează încă un spirit la fiecare utilizare, până la 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abis", "Consumă toate piedestalele de obiecte din cameră și creează o lăcustă familiară pentru fiecare#Unele obiecte creează o lăcustă specială când sunt consumate#{{Damage}} Lăcustele provoacă daunele lui Isaac înmulțite cu calitatea obiectului consumat:#{{Quality0}} - {{ColorGreen}}0.5x{{CR}}#{{Quality1}} - {{ColorGreen}}0.75x{{CR}}#{{Quality2}} - {{ColorGreen}}1.0x{{CR}}#{{Quality3}} - {{ColorGreen}}1.5x{{CR}}#{{Quality4}} - {{ColorGreen}}2.0x{{CR}}" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "Inimă Violet", "Șansă de {{ColorGreen}}2x{{CR}} pentru inamici campioni#50% șansă ca inamicii campioni să lase loot#Dubleză loot-ul inamicilor campioni"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Mărgea de Rozariu", "{{AngelChance}} {{ColorGreen}}+50%{{CR}} șansă la Camera Îngerului#{{Collectible33}} Șansă mai mare să găsești Biblia în {{Shop}} Magazine și {{Library}} Biblioteci#Forțează {{DevilChance}}Ofertele Diavolului să fie {{AngelChance}}Oferte ale Îngerului"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "Unghia Mamei", "{{MomBoss}} Aruncarea suvenirului în camere ostile va face ca Piciorul Mamei să calce acea locație"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Poster Lipsă", "{{Player10}} Reînvii ca The Lost la moarte#{{SuperSecretRoom}} 33% șansă să se dezvăluie Camera Super Secretă pe un etaj nou"}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Căpușă", "{{HealingRed}} Vindecă 1 inimă când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-15%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o" }, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "Viermele Leneș", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↓ {{Shotspeed}} {{ColorRed}}-0.5{{CR}} Viteză lacrimi"}, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = {"70", "Păduche", "Creează un păianjen albastru la fiecare 30 de secunde în camere ostile#Creează un păianjen albastru la curățarea camerei"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "Jeton de Poker", "↑ 50% șansă ca cuferele să ofere extra obiecte#↓ 50% șansă ca cuferele să conțină doar o muscă#Crește șansele de câștig la sloturi și alte aparate#Dacă cufărul conține un obiect, acesta va fi de calitate 3 sau mai mare#Conținutul cufărului poate fi uneori obiecte din afara pool-ului de cufere aurii"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "Karma", "{{DonationMachine}} Folosirea oricărui tip de Mașină de Donații are 33% șansă să:#{{HealingRed}} Vindece 1 inimă (40%)#{{Coin}} Oferă 1 monedă (40%)#{{Luck}} Oferă {{ColorGreen}}+1{{CR}} noroc (15%)#{{Beggar}} Creează un Cerșetor (5%)#{{DonationMachine}} Mașinile de donații se blochează mai rar#Afectează și donațiile la Cerșetori și Mașinile de Reaprovizionare"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "Lesă de Copil", "Familiarii stau mai aproape de Isaac#{{Damage}} {{ColorGreen}}+25%{{CR}} daune pentru familiari"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Scutec Folosit", "33% șansă pe cameră ca toți inamicii zburători să devină prietenoși#Creează 1 muscă albastră la intrarea într-o cameră nouă"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Amigdală", "După ce primești daune de 6-12 ori, creează un familiar care blochează proiectile#Dispare după ce creează 2 familiari" }, -- Tonsil
	-- Change: now affected by luck, maxing at 18 luck
	[99] = { "99", "Super Minge", "10% șansă să tragi lacrimi săltărețe#{{Luck}} 100% șansă la 18 noroc" }, -- Super Ball
	-- Change: Added +2 Tears
	[103] = {"103", "Egalitate!", "Când numărul de {{Coin}} monede, {{Bomb}} bombe și {{Key}} chei ale lui Isaac este egal:#↑ {{Tears}} {{ColorGreen}}+2{{CR}} Viteză de atac#Transformă obiectele simple în obiecte duble"}, -- Equality!
	-- Change: "2%" to "5%"
	[104] = { "104", "Osul Dorinței", "5% șansă să se distrugă și să creeze un obiect pe piedestal când primești daune" }, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "Prânz la Pachet", "{{Collectible22}} 5% șansă să se distrugă și să creeze Prânzul când primești daune" }, -- Bag Lunch
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Fitil Scurt", "Bombe lui Isaac explodează mai repede#Bombe provoacă cu 15% mai multe daune" }, -- Short Fuse
	-- Change: added "Removes Tick"
	[135] = {"135", "O Brichetă", "{{Burning}} Intrarea într-o cameră are 20% șansă să ardă inamici aleatorii#{{Warning}} Îndepărtează {{Trinket53}} Căpușa"}, -- A Lighter
	-- Change: Added coin type based information
	[172] = {"172", "Bănuț Blestemat", "Ridicarea unei monede îl teleportează pe Isaac într-o cameră aleatorie#Poate teleporta în camere secrete#Tipul monedei influențează tipul camerei alese"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Purple Heart (find replace):
	[5] = { 2, 3, 4,  50, 66, 75 },
	-- Callus (append):
	[14] = { "{{SacrificeRoom}} Reduce daunele țepilor din camera de sacrificiu la o jumătate de inimă", "{{Collectible108}} Reduce majoritatea daunelor la o jumătate de inimă" },
	-- Mom's Toenail (find replace):
	[16] = {"locație", "{{CR}}locație {{ColorGold}}de două ori{{CR}}", "{{CR}}locație {{ColorGold}}de 3 ori{{CR}}"},
	-- Paper Clip (find replace):
	[19] = {"Cufere aurii", "{{CR}}Cufere aurii {{ColorGold}}și Blocuri Încuiate{{CR}}", "{{CR}}Cufere aurii, {{ColorGold}}Blocuri Încuiate și Uși Încuiate{{CR}}"},
	-- Mysterious Paper (find replace):
	[21] = {"efectul de", "{{ColorGold}}două{{CR}} dintre următoarele efecte", "{{ColorGold}}două{{CR}} dintre următoarele efecte"},
	-- Daemon's Tail (append):
	[22] = {"{{BlackHeart}} Șemineele albastre și mov vor lăsa acum inimi negre"},
	-- Broken Ankh (find replace):
	[28] = { 22, 33, 50 },
	-- Umbilical Cord (find replace):
	[33] = {"o jumătate de inimă roșie", "o inimă", "o inimă și jumătate"},
	-- Child's Heart (find replace):
	[34] = { 10, 20, 50,  33, 66, 100 },
	-- Rusted Key (find replace):
	[36] = { 10, 20, 50,  33, 66, 100 },
	-- Match Stick (find replace):
	[41] = { 10, 20, 50,  33, 66, 100 },
	-- Cursed Skull (replace):
	[43] = {
		"Când primește daune până la o jumătate de inimă sau mai puțin, Isaac este teleportat într-o cameră {{ColorGold}}specială{{CR}}",
		"Când primește daune până la {{ColorGold}}o inimă{{CR}} sau mai puțin, Isaac este teleportat într-o cameră {{ColorGold}}specială{{CR}}",
	},
	-- Safety Cap (find replace):
	[44] = { 10, 20, 50,  33, 66, 100 },
	-- Ace of Spades (find replace):
	[45] = { 10, 20, 50,  33, 66, 100 },
	-- Counterfeit Penny (find replace):
	[52] = {"încă o monedă", "{{ColorGold}}2{{CR}} monede", "{{ColorGold}}3{{CR}} monede"},
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	       [53] = {
		       "{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
		       "{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o",
		       "{{HealingRed}} Vindecă {{ColorGold}}3{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
	       },
	-- Isaac's Head (find replace):
	[54] = {"3.5 daune", "daunele lui Isaac", "{{ColorGreen}}1.5x{{CR}} daunele lui Isaac"},
	-- Judas' Tongue (replace):
	[56] = {
		"{{DevilRoom}} Reduce {{ColorGold}}toate{{CR}} prețurile ofertelor diavolului la 1 container de inimă",
		"{{DevilRoom}} Reduce {{ColorGold}}toate{{CR}} prețurile ofertelor diavolului la 1 container de inimă#{{ColorGold}}Forțează ofertele țepilor de sacrificiu să plătească la prima încercare{{CR}}"
	},
	-- ???'s Soul (find replace):
	[57] = {"Familiar care sare", "{{CR}}Oferă {{ColorGold}}2 {{CR}}familiari care sar", "{{CR}}Oferă {{ColorGold}}3 {{CR}}familiari care sar"},
	-- Samson's Lock (find replace):
	[58] = { 6.66, 13, 25 },
	-- The Left Hand (append):
	[61] = {
		"{{RedChest}} Cuferele roșii vor conține acum loot suplimentar",
		"{{RedChest}} Cuferele roșii vor conține acum loot suplimentar#{{ColorGold}}Cuferele roșii nu vor mai genera păianjeni roșii{{CR}}",
	},
	-- Shiny Rock (replace):
	[62] = {
		"Pietrele cu crawlspace, pietrele colorate {{ColorGold}}și ușile camerelor secrete/super secrete{{CR}} clipesc la fiecare 10 secunde",
		"Pietrele cu crawlspace, pietrele colorate {{ColorGold}}și ușile camerelor secrete/super secrete{{CR}} clipesc la fiecare {{ColorGold}}5{{CR}} secunde",
	},
	-- Safety Scissors (append):
	[63] = {
		"Reduce raza exploziei inamicilor",
		"Reduce foarte mult raza exploziei inamicilor",
	},
	-- Super Magnet (find replace):
	[68] = {"obiecte și inamici", "{{CR}}obiecte, inamici, {{ColorGold}}saci și suveniruri{{CR}}", "{{CR}}obiecte, inamici, {{ColorGold}}saci, suveniruri și cufere{{CR}}"},
	-- Louse (find replace):
	[70] = {"un păianjen albastru", "2{{CR}} păianjeni albaștri", "3{{CR}} păianjeni albaștri"},
	-- Bob's Bladder (appendix):
	[71] = {"Mărime crescută a acidului", "Mărime și durată crescută a acidului"},
	-- Poker Chip (append):
	[76] = {"{{Slotmachine}} Dublează câștigurile de la jocurile de noroc", "{{Slotmachine}} Triplează câștigurile de la jocurile de noroc"},
	-- Store Key (append):
	[83] = {"{{Shop}} Previne magazinele să folosească aranjamente de calitate scăzută", "{{Shop}} Îmbunătățește aranjamentele magazinelor"},
	-- Rib of Greed (append):
	[84] = {"{{Coin}} Șansă crescută pentru bănuți dubli, nicheluri, dime-uri, bănuți norocoși și bănuți de aur"},
	-- Karma (find replace):
	[85] = {"1 noroc", "2{{CR}} noroc", "3{{CR}} noroc"},
	-- Mom's Locket (find replace):
	[87] = {"o jumătate de inimă", "o inimă", "o inimă și jumătate"},
	-- Meconium (find replace):
	[91] = { 33, 66, 100,  5, 7, 10 },
	-- Used Diaper (find replace):
	[93] = {"1 muscă albastră", "2{{CR}} muște albastre", "3{{CR}} muște albastre"},
	-- Fish Tail (append):
	[94] = {"20% șansă să creeze 3 muște/păianjeni albaștri", "20% șansă să creeze 4 muște/păianjeni albaștri"},
	-- Tonsil (find replace):
	[97] = {"2 familiari", "3{{CR}} familiari", "4{{CR}} familiari"},
	-- Nose Goblin (replace):
	[98] = {
		"{{ColorGold}}20%{{CR}} șansă să tragi o lacrimă lipicioasă#{{ColorGold}}75%{{CR}} șansă să fie cu urmărire#{{Damage}} Mucii provoacă daunele lui Isaac o dată pe secundă#Mucii rămân lipiți 10 secunde",
		"{{ColorGold}}30%{{CR}} șansă să tragi o lacrimă lipicioasă cu {{ColorGold}}urmărire{{CR}}#{{Damage}} Mucii provoacă daunele lui Isaac o dată pe secundă#Mucii rămân lipiți 10 secunde",
	},
	-- Fragmented Card (append):
	[102] = {"{{SecretRoom}} Dezvăluie locația unei camere secrete", "{{SecretRoom}} Dezvăluie locația ambelor camere secrete"},
	-- Lost Cork
	[106] = {"Crește", "Crește foarte mult{{CR}}"},
	-- Crow Heart (append):
	[107] = {
		"{{AngelDevilChance}} 25% șansă să nu scadă șansa la Camera Diavolului/Îngerului după ce primești daune la Inima Roșie",
		"{{AngelDevilChance}} 50% șansă să nu scadă șansa la Camera Diavolului/Îngerului după ce primești daune la Inima Roșie",
	},
	-- Walnut (find replace):
	[108] = {
		"o inimă {{UnknownHeart}} aleatorie, {{Coin}} monedă, {{Key}} cheie și {{Trinket}} suvenir aleatoriu",
		"2{{CR}} inimi {{UnknownHeart}} aleatorii, {{Coin}} monede, {{Key}} chei și {{Trinket}} suveniruri aleatorii",
		"3{{CR}} inimi {{UnknownHeart}} aleatorii, {{Coin}} monede, {{Key}} chei și {{Trinket}} suveniruri aleatorii",
	},
	-- Duct Tape (append):
	[109] = {"Apăsarea butonului de aruncare va schimba între diverse formații de familiari"},
	-- Silver Dollar (find replace):
	[110] = {"Magazine", "Magazine îmbunătățite"},
	-- Bloody Crown (append):
	[111] = {"Vor conține 2 obiecte din care Isaac poate alege"},
	-- Pay To Win (append):
	[112] = {"{{RestockMachine}} Cutiile de reaprovizionare au șanse mai mici să explodeze"},
	-- Locust of War (find replace):
	[113] = {"o muscă explozivă de atac", "2{{CR}} muște explozive de atac", "3{{CR}} muște explozive de atac"},
	-- Locust of Pestilence (find replace):
	[114] = {"o muscă de atac otrăvitoare", "2{{CR}} muște de atac otrăvitoare", "3{{CR}} muște de atac otrăvitoare"},
	-- Locust of Famine (find replace):
	[115] = {"o muscă de atac încetinitoare", "2{{CR}} muște de atac încetinitoare", "3{{CR}} muște de atac încetinitoare"},
	-- Locust of Death (find replace):
	[116] = {"o muscă de atac", "2{{CR}} muște de atac", "3{{CR}} muște de atac"},
	-- Locust of Conquest (full replace):
	[117] = {
		"{{CR}}Intrarea într-o cameră ostilă creează {{ColorGold}}2-5{{CR}} muște de atac#Fiecare muscă provoacă {{ColorGreen}}2x{{CR}} daunele lui Isaac",
		"{{CR}}Intrarea într-o cameră ostilă creează {{ColorGold}}3-7{{CR}} muște de atac#Fiecare muscă provoacă {{ColorGreen}}2x{{CR}} daunele lui Isaac",
	},
	-- Stem Cell (find replace):
	[119] = {"jumătate", "toate"},
	-- Hairpin (find replace):
	[120] = {"reîncarcă complet", "supraîncarcă"},
	-- Wooden Cross (find replace):
	[121] = {"un scut sfânt", "2{{CR}} scuturi sfinte"},
	-- Filigree Feather (append):
	[123] = {"Șefii îngeri vor lăsa și o jumătate de inimă de suflet", "Șefii îngeri vor lăsa și o inimă de suflet"},
	-- Door Stop (append):
	[124] = {"Ține și ușile Boss Rush deschise", "Ține și ușile Boss Rush / Challenge Room deschise"},
	-- Rotten Penny (find replace):
	[126] = {"o muscă albastră", "2{{CR}} muște albastre", "3{{CR}} muște albastre"},
	-- Baby-Bender (append):
	[127] = {"Le oferă și efectul {{Trinket144}} Viermele Cerebral", "Le oferă și efectele {{Trinket144}} Viermele Cerebral și {{Trinket65}} Viermele Bandă"},
	-- Blessed Penny (find replace):
	[131] = { 17, 25, 30 },
	-- Short Fuse (find replace):
	[133] = { 15, 30, 50 },
	-- Gigante Bean (append)
	[134] = {"Crește reculul pârțurilor", "Crește reculul pârțurilor#{{ColorGold}}Pârțurile îi amețesc pe inamici timp de 3 secunde{{CR}}"},
	-- Broken Padlock (find replace):
	[136] = {"Uși, blocuri cu cheie și cufere aurii", "{{CR}}Uși, blocuri cu cheie, cufere aurii, {{ColorGold}}Săli de joc și Camere de Provocare{{CR}}", "{{CR}}Uși, blocuri cu cheie, cufere aurii, {{ColorGold}}Săli de joc, Camere de Provocare și Camere Boss{{CR}}"},
	-- 'M (append):
	[138] = {"10% șansă să încarce complet obiectul rulat", "20% șansă să încarce complet obiectul rulat"},
	-- Apple of Sodom (find replace):
	[140] = {"inimi roșii ridicate", "orice {{CR}}inimi ridicate"},
	-- Brain Worm (append):
	[144] = {"25% șansă să tragi lacrimi străpungătoare", "50% șansă să tragi lacrimi străpungătoare"},
	-- Devil’s Crown (append):
	[146] = {"{{Trinket174}} 25% șansă ca Camera de Comori Roșie să fie îmbunătățită", "{{Trinket174}} 33% șansă ca Camera de Comori Roșie să fie îmbunătățită"},
	-- Charged Penny (find replace):
	[147] = {"1 încărcare", "2{{CR}} încărcări", "3{{CR}} încărcări"},
	-- Friendship Necklace (append):
	[148] = {"Crește viteza de orbitare a familiarilor", "Crește foarte mult viteza de orbitare a familiarilor"},
	-- Panic Button (append):
	[149] = {"10% șansă să folosești obiectul activ gratuit", "20% șansă să folosești obiectul activ gratuit"},
	-- Blue Key (append):
	[150] = {"Dublează recompensele din camerele albastre curățate", "Triplează recompensele din camerele albastre curățate"},
	-- Flat File (append):
	[151] = {"Afectează și Șefii, Ranchiunele și Bilele & Lanțurile"},
	-- Telescope Lens (full replace):
	[152] = {
		"{{PlanetariumChance}} {{ColorGreen}}+18%{{CR}} șansă la Planetariu#{{ColorGreen}}+15%{{CR}} șansă suplimentară dacă nu ai intrat încă într-un Planetariu#Planetariile pot apărea în Pântece și Cadavru",
		"{{PlanetariumChance}} {{ColorGreen}}+33%{{CR}} șansă la Planetariu#{{ColorGreen}}+15%{{CR}} șansă suplimentară dacă nu ai intrat încă într-un Planetariu#Planetariile pot apărea în Pântece, Cadavru, {{ColorGold}}Sheol și Catedrala{{CR}}",
	},
	-- Holy Crown (full replace):
	[155] = {
		"{{CR}}Creează o {{TreasureRoom}} Cameră de Comori și un {{ColorGold}}magazin îmbunătățit{{CR}} {{Shop}} în Catedrală#{{ColorGold}}Camerele de comori din Catedrală vor conține 2 obiecte din care Isaac poate alege{{CR}}",
		"{{CR}}Creează o {{TreasureRoom}} Cameră de Comori și un {{ColorGold}}magazin îmbunătățit{{CR}} {{Shop}} în Catedrală#{{ColorGold}}Camerele de comori din Catedrală vor conține 2 obiecte din care Isaac poate alege{{CR}}#{{ColorGold}}Dezvăluie locația Camerei de Comori și a Magazinului din Catedrală{{CR}}",
	},
	-- Torn Card (find replace):
	[157] = { 15, 10, 5 },
	-- Gilded Key (full replace copying the entire original description, because the Golden version doesn't give a key on pickup):
	       [159] = {
		       "{{GoldenChest}} Înlocuiește toate cuferele (cu excepția celor Vechi/Mega) cu cufere aurii#{{GoldenChest}} Cuferele aurii pot conține cărți, pastile sau suveniruri suplimentare#{{GoldenChest}} {{ColorGold}}+10%{{CR}} șansă să primești un cufăr după curățarea unei camere",
		       "{{Key}} {{ColorGreen}}+1{{CR}} Cheie la ridicare#{{GoldenChest}} Înlocuiește toate cuferele (cu excepția celor Vechi/Mega) cu cufere aurii#{{GoldenChest}} Cuferele aurii pot conține cărți, pastile sau suveniruri suplimentare#{{GoldenChest}} {{ColorGold}}+10%{{CR}} șansă să primești un cufăr după curățarea unei camere",
		       "{{GoldenChest}} Înlocuiește toate cuferele (cu excepția celor Vechi/Mega) cu cufere aurii#{{GoldenChest}} Cuferele aurii pot conține cărți, pastile sau suveniruri suplimentare#{{GoldenChest}} {{ColorGold}}+20%{{CR}} șansă să primești un cufăr după curățarea unei camere"
	       },
	-- Wicked Crown (full replace):
	       [161] = {
		       "{{CR}}Creează o {{TreasureRoom}} Cameră de Comori și un {{ColorGold}}magazin îmbunătățit{{CR}} {{Shop}} în Sheol#{{ColorGold}}Camerele de comori din Sheol vor conține 2 obiecte la alegere{{CR}}",
		       "{{CR}}Creează o {{TreasureRoom}} Cameră de Comori și un {{ColorGold}}magazin îmbunătățit{{CR}} {{Shop}} în Sheol#{{ColorGold}}Camerele de comori din Sheol vor conține 2 obiecte la alegere{{CR}}#{{ColorGold}}Dezvăluie locația Camerei de Comori și a Magazinului din Sheol{{CR}}",
	       },
	-- Nuh Uh! (append):
	[165] = {"{{ColorGreen}}+10%{{CR}} șansă ca obiectele să apară dublu", "{{ColorGreen}}+20%{{CR}} șansă ca obiectele să apară dublu"},
	-- Keeper’s Bargain (full replace):
	       [171] = {
		       "{{DevilRoom}} {{ColorGreen}}100%{{CR}} șansă ca ofertele diavolului să coste monede în loc de inimi",
		       "{{DevilRoom}} {{ColorGreen}}100%{{CR}} șansă ca ofertele diavolului să coste monede în loc de inimi#{{ColorGold}}Crește șansa ca ofertele diavolului să fie reduse la preț{{CR}}",
	       },
	-- Cursed Penny (append):
	[172] = {"Șansă crescută de a fi teleportat într-o cameră specială"},
	-- Your Soul (append):
	[173] = {"10% șansă ca suvenirul să nu fie consumat", "20% șansă ca suvenirul să nu fie consumat"},
	-- Strange Key (full replace):
	       [175] = {
		       "Deschide ușa către etajul Hush indiferent de timp#Folosirea {{Collectible297}} Cutia Pandorei consumă cheia și creează {{ColorGold}}8{{CR}} obiecte din pool-uri aleatorii#{{ColorGold}}Permite deschiderea tuturor ușilor și cufărelor de pe etajul Hush gratuit{{CR}}",
		       "Deschide ușa către etajul Hush indiferent de timp#Folosirea {{Collectible297}} Cutia Pandorei consumă cheia și creează {{ColorGold}}10{{CR}} obiecte din pool-uri aleatorii#{{ColorGold}}Permite deschiderea tuturor ușilor și cufărelor de pe etajul Hush gratuit{{CR}}",
	       },
	-- Temporary Tattoo (append):
	[177] = {"Crește permanent o caracteristică aleatorie după completarea unei Camere de Provocare", "Crește permanent două caracteristici aleatorii după completarea unei Camere de Provocare"},
	-- RC Remote (append):
	[179] = {"Familiarii vor provoca 2 daune de contact pe tick", "Familiarii vor provoca 5 daune de contact pe tick"},
	-- Expansion Pack (full replace):
	       [181] = {
		       "Folosirea unui obiect activ declanșează efectul a {{ColorGold}}2{{CR}} obiecte active suplimentare de 1-2 încărcări",
		       "Folosirea unui obiect activ declanșează efectul a {{ColorGold}}2{{CR}} obiecte active suplimentare de 1-2 încărcări#{{ColorGold}}Declanșează și efectul unui obiect activ de 3 încărcări{{CR}}",
	       },
	-- Beth’s Essence (append):
	[182] = {"50% șansă ca spiritele din Camera Îngerului să fie speciale#{{ColorGold}}Cerșetorii vor crea spirite speciale{{CR}}", "100% șansă ca spiritele din Camera Îngerului să fie speciale#{{ColorGold}}Cerșetorii vor crea spirite speciale{{CR}}"},
	-- Adoption Papers (append):
	[184] = {"Familiarii vor fi mereu la vânzare", "Familiarii vor fi mereu la vânzare#{{Card92}} {{ColorGold}}Magazinele vor putea vinde \"Sufletul lui Lilith\"{{CR}}"},
	-- Sigil of Baphomet (find replace):
	[189] = {"1 secundă", "1.5 {{CR}}secunde", "2 {{CR}}secunde"},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

----- Golden Trinkets Data -----

local goldenTrinketData = {
	[5] = {findReplace = true}, -- Purple Heart
	[14] = {append = true}, -- Callus
	[16] = {findReplace = true}, -- Mom's Toenail
	[19] = {findReplace = true}, -- Paper Clip
	[21] = {findReplace = true}, -- Mysterious Paper
	[22] = {append = true}, -- Daemon's Tail
	[28] = {findReplace = true}, -- Broken Ankh
	[33] = {findReplace = true}, -- Umbilical Cord
	[34] = {findReplace = true}, -- Child's Heart
	[36] = {findReplace = true}, -- Rusted Key
	[41] = {findReplace = true}, -- Match Stick
	[43] = {fullReplace = true}, -- Cursed Skull
	[44] = {findReplace = true}, -- Safety Cap
	[45] = {findReplace = true}, -- Ace of Spades
	[52] = {findReplace = true}, -- Counterfeit Penny
	[54] = {findReplace = true}, -- Isaac's Head
	[56] = {fullReplace = true}, -- Judas' Tongue
	[57] = {findReplace = true}, -- ???'s Soul
	[58] = {findReplace = true}, -- Samson's Lock
	[61] = {append = true}, -- The Left Hand
	[62] = {fullReplace = true}, -- Shiny Rock
	[63] = {append = true}, -- Safety Scissors
	[68] = {findReplace = true}, -- Super Magnet
	[70] = {findReplace = true}, -- Louse
	[71] = {append = true}, -- Bob's Bladder
	[76] = {append = true}, -- Poker Chip
	[83] = {append = true}, -- Store Key
	[84] = {append = true}, -- Rib of Greed
	[85] = {findReplace = true}, -- Karma
	[87] = {findReplace = true}, -- Mom's Locket
	[91] = {findReplace = true}, -- Meconium
	[93] = {findReplace = true}, -- Used Diaper
	[94] = {append = true}, -- Fish Tail
	[97] = {findReplace = true}, -- Tonsil
	[98] = {fullReplace = true}, -- Nose Goblin
	[102] = {append = true}, -- Fragmented Card
	[106] = {append = true}, -- Lost Cork
	[107] = {append = true}, -- Crow Heart
	[108] = {findReplace = true}, -- Wallnut
	[109] = {append = true}, -- Duct Tape
	[110] = {findReplace = true}, -- Silver Dollar
	[111] = {append = true}, -- Bloody Crown
	[112] = {append = true}, -- Pay To Win
	[113] = {findReplace = true}, -- Locust of War
	[114] = {findReplace = true}, -- Locust of Pestilence
	[115] = {findReplace = true}, -- Locust of Famine
	[116] = {findReplace = true}, -- Locust of Death
	[117] = {fullReplace = true}, -- Locust of Conquest
	[119] = {findReplace = true}, -- Stem Cell
	[120] = {findReplace = true}, -- Hairpin
	[121] = {findReplace = true}, -- Wooden Cross
	[123] = {append = true}, -- Filigree Feather
	[124] = {append = true}, -- Door Stop
	[126] = {findReplace = true}, -- Rotten Penny
	[127] = {append = true}, -- Baby-Bender
	[131] = {findReplace = true}, -- Blessed Penny
	[133] = {findReplace = true}, -- Short Fuse
	[134] = {append = true}, -- Gigante Bean
	[136] = {findReplace = true}, -- Broken Padlock
	[138] = {append = true}, -- 'M
	[140] = {findReplace = true}, -- Apple of Sodom
	[144] = {append = true}, -- Brain Worm
	[146] = {append = true}, -- Devil’s Crown
	[147] = {findReplace = true}, -- Charged Penny
	[148] = {append = true}, -- Friendship Necklace
	[149] = {append = true}, -- Panic Button
	[150] = {append = true}, -- Blue Key
	[151] = {append = true}, -- Flat File
	[152] = {fullReplace = true}, -- Telescope Lens
	[155] = {fullReplace = true}, -- Holy Crown
	[157] = {findReplace = true}, -- Torn Card
	[159] = {fullReplace = true}, -- Gilded Key
	[161] = {fullReplace = true}, -- Wicked Crown
	[165] = {append = true}, -- Nuh Uh!
	[171] = {fullReplace = true}, -- Keeper’s Bargain
	[172] = {append = true}, -- Cursed Penny
	[173] = {append = true}, -- Your Soul
	[175] = {fullReplace = true}, -- Strange Key
	[177] = {append = true}, -- Temporary Tattoo
	[179] = {append = true}, -- RC Remote
	[181] = {fullReplace = true}, -- Expansion Pack
	[182] = {append = true}, -- Beth’s Essence
	[184] = {append = true}, -- Adoption Papers
	[189] = {findReplace = true}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(goldenTrinketData, EID.descriptions[languageCode].goldenTrinketData)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - Roata norocului", "{{Slotmachine}} Creează o Păcănea#{{FortuneTeller}} 24% șansă să fie un Automat de Noroc#{{CraneGame}} 1% șansă să fie o Macara" },
	-- Change: Added stone enemies and shields
	[32] = {"32", "Hagalaz", "Distruge toate pietrele și inamicii de piatră din cameră"},
	-- Change: Complete rewrite
	[38] = { "38", "Berkano", "{{Collectible706}} Invocă 3 lăcuste ale Abisului pentru cameră" },
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = { " o Păcănea", " 2 {{CR}}Păcănele", " acesta ", " {{CR}}fiecare ", " acesta ", " {{CR}}fiecare " }, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	[20] = {"19", "Telepilule", "Îl teleportează pe Isaac într-o cameră specială"},
	[26] = { "25", "Amnezie", "{{CurseLost}} Ascunde harta etajului#{{Pill}} Uită toate pastilele identificate anterior" },
	[29] = {"28", "Protecție!", "{{HealingRed}} Viață completă#{{Timer}} Reduce toate daunele primite la o jumătate de inimă pentru cameră"},
	[30] = {"29", "Dependență!", "{{BrokenHeart}} {{ColorGreen}}+1{{CR}} Inimă Frântă#{{Timer}} Crește toate daunele primite la o inimă întreagă pentru cameră"},
	[32] = {"31", "???", "{{CurseMaze}} Efectul Blestemului Labirintului pentru etaj#Blesteme suplimentare după utilizări multiple"},
	[42] = {"41", "Sunt Somnoros...", "{{Slow}} Îl încetinește pe Isaac și toți inamicii pentru tot etajul"},
	[43] = {"42", "Sunt Entuziasmat!!", "Îl accelerează pe Isaac și toți inamicii pentru tot etajul"},
	[44] = {"43", "Înghite!", "Consumă suvenirul lui Isaac și îi oferă permanent efectul {{ColorGold}}auriu{{CR}}"},
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	[34] = {2, 4},
	[47] = "Creează 2 lovituri aeriene",
	[164] = "Creează 2 flăcări",
	[289] = "Creează 2 flăcări",
	[441] = {15, 23},
	[728] = "Creează 2 familiari demonici",
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	["5.100.205 (Tainted Magdalene)"] = "Inimile sângerânde oferă doar jumătate din încărcarea unui container de inimă obișnuit",
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} Un Cub de Carne","{{Collectible207}} Minge de Bandaje"},
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Creează 16 lăcuste cu culori și efecte diferite",
}
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "Necromant" -- Add Necromancer transformation


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
