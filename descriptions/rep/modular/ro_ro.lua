local languageCode = "ro_ro"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} La atingerea inamicilor ii otrăvești", -- The Virus
	-- Full old Desc: "↑ {{Speed}} +0.2 Viteză#{{Poison}} La atingerea inamicilor ii otrăvești#Isaac cauzează 48 daune de contact pe secundă"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "La folosire și aruncare intr-o direcție îi aruncă capul#{{Poison}} La aterizare capul explodează și creează un nor otrăvitor#Cauzează daunele lui Isaac + 185", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Șanse mai mari să câștigi la păcănele#Crește șansa de obținere a unui obiect la finalizarea unei camere#Transformă toate pastilele rele în pastile bune", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Noroc#Șanse mai mari să câștigi la păcănele#Crește șansa de obținere a unui obiect la finalizarea unei camere#Transformă toate pastilele rele în pastile bune"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} Aceste bombe cauzează 10x daunele lui Isaac#Dacă asta rezultă în daune de peste 60, ele vor cauza 5x + 30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Viteză de Atac#{{Bomb}} Isaac împușcă cu bombe în loc de lacrimi#{{Damage}} Aceste bombe cauzează 10x daunele lui Isaac#Dacă asta rezultă în daune de peste 60, ele vor cauza 5x + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Obiectele sunt atrase de Isaac#Deschide cuferele de la distanță(2 pătrate), ignoră daunele provocate de cuferele capcană", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Lacrimi Încarcabile#{{Damage}} CU cat lacrima este mai încărcată cu atat dauna e mai mare, pană la 4x din dauna de bază", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "La folosirea cărții bossul va fi inlocuit cu un Călareț al Apocalipsei(Horseman)", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Inima Suflet#{{AngelDevilChance}} +17.5% șansă de pacturi cu diavol sau inger intimp ce este ținută#La folosirea cărții bossul va fi inlocuit cu un Călareț al Apocalipsei(Horseman)"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Deschide o trapa spre etajul urmator#{{LadderRoom}} Deschide o trapa spre beci(crawlspace) daca este folosit pe o bucata decorativa de pe podea (iarbă, pietricele, hartie, gemuri, etc.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Camerele de pe harta sunt afișate de la distanță mai mare#{{SecretRoom}} Poate de asemenea să arate locația camerelor secrete și super secrete#Previne loviturile cauzate de obiecte căzătoare", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Lacrimile lui Isaac sunt înlocuite cu un cuțit care poate fi aruncat#{{Damage}} Cuțitul cauzează 2x din daunele lui Isaac daca este ținut și maxim 6x daune dacă este încărcat la 1/3(o treime)#Daca este încărcat mai mult de 1/3 numai raza de atac va fi marită#Daunele sunt reduse la 2x în timp ce cuțitul se întoarce la Isaac", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "{{Timer}} Oferă un familiar pe durata etajului", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Daune pe durata camerei#{{Warning}} Isaac este rănit o inimă, iar la a doua folosire Isaac este rănit o jumătate de inimă (pe durata camerei)#{{Heart}} Prima dată inimile roșii sunt eliminate", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Imunitate la otravă", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Poison}} Bombele lui Isaac creaza un nor otravitor#{{Poison}} Imunitate la otravă"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Isaac primeste 1 Inimă Suflet dacă este rănit la mai puțin de jumate de inimă#Se poate intampla doar o data pe cameră#Ieșirea și reintrarea în cameră permite efectului să se declanșeze din nou#{{Warning}} Donațiile de viata nu declanșează efectul", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "La folosire îi permite lui Isaac să țină târnăcopul#Târnăcopul poate sparge pietre,intrările la camerele secrete sau să vătămeze inamicii#Nimerirea unei lovituri epuizeaza din baterie#Singura metodă de încărcare este să te duci la etajul următor", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "Lacrimile sunt aruncate arcuit{{Poison}} lacrimile explodează și otrăvesc inamicii in locul in care aterizează", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Daune#↓ {{Tears}} x0.33 Viteză de atac#↓ {{Range}} x0.8 Rază de atac#↓ {{Shotspeed}} -0.2 Viteza lacrimilor#Lacrimile sunt aruncate arcuit{{Poison}} lacrimile explodează și otrăvesc inamicii in locul in care aterizează"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "Înlocuiește lacrimile din ochiul drept cu un laser continu#{{Damage}} Laserul provoacă 2x daune pe secunda", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.67 Viteză de atac#Înlocuiește lacrimile din ochiul drept cu un laser continu#{{Damage}} Laserul provoacă 2x daune pe secunda"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Încetinește inamicii pentru 4 secunde#Inamicii uciși de item oferă păianjeni albaștrii", -- Spider Butt
	-- Full old Desc: "{{Slow}} Încetinește inamicii pentru 4 secunde#Provoacă 10 daune tuturor inamicilor#Inamicii uciși de item oferă păianjeni albaștrii"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} Este aruncată în direcția în care Isaac trage#La contactul cu un inamic se sparge și provoacă daune de 7#Lasă o baltă de apă care pietrifică inimaicii și provoacă daune", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Isaac se bășește de mai multe ori cand este vătămat#{{Poison}} Bășinile lasă nori otravitori care deviază proiectilele", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} Inimile roșii sunt eliminate prima dată", -- Blood Rights
	-- Full old Desc: "Provoacă 40 de daune tuturor inamicilor din cameră#{{Warning}} Isaac este vătămat o inimă#După prima folosite Isaac va fi vătămat jumătate de inimă#{{Heart}} Inimile roșii sunt eliminate prima dată"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "Pickup-urile au șanse de 50% să fie dublate", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Folosirea unui item activ neîncarcat, il rănește pe Isaac, dar încarcă itemul complet#{{Heart}} Pentru fiecare line neîncarcatată Isaac este rănit jumătate de inimă#{{Heart}} Inimile roșii sunt eliminate prima dată", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Dacă butonul de tragere este ținut apăsat, lacrimile vor fi suspenadate in aer#Eliberarea butoului face ca lacrimile să fie aruncate în direcția inițială", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} +1 Viteză de atac#Dacă butonul de tragere este ținut apăsat, lacrimile vor fi suspenadate in aer#Eliberarea butoului face ca lacrimile să fie aruncate în direcția inițială"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = " Imunitate la explozi și foc#{{HealingRed}} Exploziile te vindeca jumatate de inimă", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombe# Imunitate la explozi și foc#{{HealingRed}} Exploziile te vindeca jumatate de inimă"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "Lacrimile se împart în 4 la contact#Lacrimile împărțite cauzează jumătate din daune", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} +0.5 Viteza de atac#↓ {{Range}} x0.8 Rază de atac#Lacrimile se împart în 4 la contact#Lacrimile împărțite cauzează jumătate din daune"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Șansă de 8% să primești o inimă suflet dacă ești vătămat#{{Luck}} Șansă de +2% pe nivel de noroc{{HalfHeart}} Inamicii au o șansă să ofere jumătate de inimă roșie", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 232] = "{{Slow}} Viteză Inamicii sunt încetiniți cu 80% din viteza și atatcul lor", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3#{{Slow}} Viteză Inamicii sunt încetiniți cu 80% din viteza și atatcul lor"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Păianjenii și muștele albastre provoacă daune duble#Familiari muște și păianjeni devin mai puternici", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} Imunitate la foc (cu excepția proiectilelor)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Burning}} Bombele lui Isaac provoacă daune de contact#{{Burning}} După explozie bombele lasă un foc#{{Burning}} Imunitate la foc (cu excepția proiectilelor)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Lacrimile provoacă mai puține daune cu cât stau mai mult în aer#Lacrimile provoacă 3x daune la punctul 0 si nicio daună după 0.8 secunde.", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Daune#↓ Lacrimile provoacă mai puține daune cu cât stau mai mult în aer#Lacrimile provoacă 3x daune la punctul 0 si nicio daună după 0.8 secunde."
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Dacă ești vătămat până la o inimă va cauza daune tuturor inamicilor din cameră#{{Collectible35}} Efectele de tipul Inimilor Negre și Necronomiconului provoacă daune duble", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Viață Neagră#Dacă ești vătămat până la o inimă va cauza daune tuturor inamicilor din cameră#{{Collectible35}} Efectele de tipul Inimilor Negre și Necronomiconului provoacă daune duble"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Declanșează efectul runei pe care Isaac o deține fără a o folosi", -- Clear Rune
	-- Full old Desc: "{{Rune}} Oferă o rună la colectare#{{Rune}} Declanșează efectul runei pe care Isaac o deține fără a o folosi"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Isaac devine invincibil#Oferă un familiar inimă care îl urmărește pe Isaac#Inima se încarcă când Isaac trage și eliberează o explozie de lacrimi când se oprește#{{Warning}} Dacă inima este lovită, Isaac va fi vătămat", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Colectează inimile roșii#Pentru fiecare inimă jumate oferă: o Inimă Neagră, rună, carte, pastilă, sau un păianjen", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Oferă la întâmplare un păianjen albastru într-o cameră neterminată#{{Charm}} Inamici cu care intră in contact vor fi vrăjiți", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Dublează 1 pickup de pe jos#Schimbă aleatoriu viteza, lacrimile, daunele, raza de atac și itemele pasive a le lui Isaac#Schimba toate piedestalele, pickupurile și pietrele din cameră#Reîncepe camera, învie toți inamici și îi involuează", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Involuează toți inamicii din cameră#De exemplu, toate muștele roșii devin muște negre", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Declanșează efectul cărții pe care Isaac o deține fără a o folosi", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Pietrele colorate(tinted) și beciul(crawlspace) din cameră sunt evidențiate(daca sunt prezente)#{{Collectible76}} Dacă toate efectele sunt active, oferă Viziunea cu Raze X", -- Book of Secrets
	-- Full old Desc: "Pietrele colorate(tinted) și beciul(crawlspace) din cameră sunt evidențiate(daca sunt prezente)#{{Timer}} Pe durata etajului primești unul dintre următoarele efecte:#{{Collectible54}} Harta Comorilor#{{Collectible21}} Busolă #{{Collectible246}} Harta Albastră#Oferă doar efecte care nu sunt deja active#{{Collectible76}} Dacă toate efectele sunt active, oferă Viziunea cu Raze X"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Aruncă o flacăra roșie#Provoacă daune, blochează lacrimile inamicilor și dispare când a cauzat daune, a blocat 4 proiectile sau după 10 secunde", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Transformă toți inamici(nu boșii) în rahat#Elimină inamicii și boșii rahat#Stinge focurile și umple camera cu apă#Transformă găurile cu lava în poteci", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Folosirea cărții înainte de lupta cu bossul face ca recompensa să fie un pact cu diavolul#Cumpărarea ofertelor are aceiași consecință cu cele din Devil Room#Nu are efect asupra piedestalelor din Abis(The Void)", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Inimă Neagră#{{DevilRoom}} Folosirea cărții înainte de lupta cu bossul face ca recompensa să fie un pact cu diavolul#Cumpărarea ofertelor are aceiași consecință cu cele din Devil Room#Nu are efect asupra piedestalelor din Abis(The Void)"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Aruncă înapoi inamicii și proiectilele#Inamicii aruncați în obstacole primesc 10 daune", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Provoacă 2x + 10 din daunele lui Isaac tuturor inamicilor din cameră #{{Coin}} costă o monedă", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Transformă 1 Inimă Suflet sau Inimi Negre într-un spațiu de inimă roșie", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "{{Warning}} O singură folosință {{Warning}} Oferă recompense în funcție de etaj:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Item de la Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Iteme de la Boss#W2: {{Collectible33}} Biblia#???/Abis(Void): Nimic#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Cheia Roșie", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Dacă ai peste 0.85 viteză, Isaac devine imun la daunele de contact si provoaca 25 de daune inamicilor la atingere", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Viteză#Dacă ai peste 0.85 viteză, Isaac devine imun la daunele de contact si provoaca 25 de daune inamicilor la atingere"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Isaac lasă o dâră#{{Damage}} Dâra provoacă 66% din daunele lui Isaac pe secundă și preia din efecetele lacrimilor", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Lacrimile lui Isaac atrag inamici,pickurile si trinketurile#Efectul de atracție este mult mai puternic la capătul drumului lacrimilor", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Aruncă lacrimi in direcții aleatorii cu același efecte a lui Isaac#{{Damage}} Provoacă 75% din daunele lui Isaac", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Aruncă lacrimi in toate direcțiile#Lacrimile au același efecte cu cele a le lui Isaac + 5 daune#Este reîncărcat dacă tragi cu lacrimi", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} Pe durata camerei capul lui Isaac devine un familiar staționar#Corpul este controlat separat și țâșnește lacrimi de sânge în direcția în care Isaac trage", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Ținând apăsat butonul USE bara se golește#Isaac devine invincibil temporar când bara de încărcare este goală#Isaac invocă raze de lumină la contactul cu inamicii când este invincibil#Dacă daunele sunt blocate cu sincronizare perfectă, Isaac trage o rază sfânt în 4 direcții și obțineți un scut scurt#{{Warning}} Daca butonul USE este apăsat pentru prea mult timp, Isaac va fi vătămat", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Puterea lui Isaac de a arunca inamici în spate este scăzută semnificativ", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} x5.5 Lacrimi#↓ {{Damage}} x0.2 Daune#↓ {{Tearsize}} -0.3 Marimea Lacrimilor#Puterea lui Isaac de a arunca inamici în spate este scăzută semnificativ"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "Lacrimile primesc o aură care provoacă 60 de daune pe secundă", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Daune#↓ {{Tears}} -0.3 Lacrimi#↓{{Shotspeed}} -0.3 Viteza lacrimilor#Lacrimi balistice#Lacrimile primesc o aură care provoacă 60 de daune pe secundă"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Oferă Trinketul Chibrit", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Inimă Neagră#{{Bomb}} Oferă 3 Bombe#{{Trinket41}} Oferă Trinketul Chibrit"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "{{Damage}} Trage cu lacrimă gigantă,străpungătoare și spectrală care provoacă 10x din daunele lui Isaac#{{Warning}} Dacă ești vătămat în timp ce o ții:#↓ Isaac pierde 2 inimi în plus#↓ Tunul este spart pentru catva camere#↑ {{Range}} +1.5 Rază de atac + o dâră de sânge pe durata camerei#Nu poți murii de la cele 2 inimi pierdute în plus#Auto vătămarea nu provoacă fectele de mai sus", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Aruncă lacrimi cu același efecte#{{Damage}} Provoaca 75% din daunele lui Isaac", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Se deplasează de-a lungul pereților/obstacolelor din cameră#Inamicii din apropiere țintesc musca", -- Lost Fly
	-- Full old Desc: "Se deplasează de-a lungul pereților/obstacolelor din cameră#Provoacă 30 de daune de contact pe secundă#Inamicii din apropiere țintesc musca"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} Bombele lui Isaac se lipesc de inamici și lasă o mâzgă albă care încetinește#Dacă omori inamicii cu bombele, o să primești păianjeni albaștrii", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Slow}} Bombele lui Isaac se lipesc de inamici și lasă o mâzgă albă care încetinește#Dacă omori inamicii cu bombele, o să primești păianjeni albaștrii"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Tragerea într-o singură direcție crește treptat rata de tragere cu până la 200% și scade precizia", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} Fasciculul cauzează 3x din daunele lui Isaac", -- Holy Light
	-- Full old Desc: "Șansă de 10% să arunci cu lacrimi binecuvântare, care generează un fascicul de lumină la impact#{{Luck}} Șansă de 50% la 9 noroc#{{Damage}} Fasciculul cauzează 3x din daunele lui Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Oferă imunitate la explozii și proiectile care cad#Șansă de 25% să reflecte lacrimile inamicilor", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Dacă cumperi un item de la magazin el va fi înoit#Itemele reprovizionate vorbombe fi mai scumpe", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = " Blocurile, ușile și cuferele încuiate trebuie deschise cu monede în loc de chei", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Monede# Blocurile, ușile și cuferele încuiate trebuie deschise cu monede în loc de chei"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Dacă este aruncata in inamici, ei voi fi capturați#Folosirea obiectului după capturarea unui inamic oferă capturarea ca un însoțitor prietenos#Dacă mergi peste minge după capturare va încarca itemul instant", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Lansează și sare prin cameră cu viteza depinzând de cantitatea de încărcare#Provoacă între 5-10 daune. Daunele depind de viteză ", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Schimbă obstacolele din cameră în alte obstacole la întâmplare (e.g. rahat, vase, TNT, rahat roșu, pietre etc.)#Sansa minsuscula sa schimbe obstacolele in butoane, killswitche-uri, beci sau trape", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Oferă o rună sau o Piatra Suflet la fiecare 7-8 camere", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Inamicii se pot lovi între ei cu lacrimi, incapăd ca după să se bată între ei", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} Șansă de 15% de a trage cu lacrimi otrăvitoare#{{Poison}} Inamicii sunt otrăviți la contact#{{BlackHeart}} Șansă de 20% să primești o Inimă Neagră dacă inamicii au fost omorâți de otrava de contact", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac trage automat cu lacrimi într-o țintă roșie mobilă de pe pământ#Familiarii trag și ei după țintă#Puteți opri tragerea și reseta locația țintei apăsând pe butonul de drop ({{ButtonRT}})", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrimi#↑ {{Range}} +3 Rază de atac#Isaac trage automat cu lacrimi într-o țintă roșie mobilă de pe pământ#Familiarii trag și ei după țintă#Puteți opri tragerea și reseta locația țintei apăsând pe butonul de drop ({{ButtonRT}})"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Lacrimile lui Isaac sunt înlocuite cu un inel laser reîncărcabil#Dimensiunea inelului și daunele cresc cu până la 100% depinzând de timpul de încărcare", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Tragerea cu lacrimilor timp de 2,35 secunde și eliberarea butonului creează un inel negru de Brimstone în jurul lui Isaac#Provoacă 30x din daunele lui Isaac și durează 1.97 secunde", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "Șansă25% șansă să arunci cu o lacrimă lipicioasă#Lacrimile lipicioase cresc și explodează după câteva secunde, provocând daune lui Isaac + 60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Șansă de 10% să se beșască și să {{Charm}} vrăjească, {{Poison}} otrăvească sau să împingă inamicii#Beșina provoacă între 5-6 daune", -- Farting Baby
	-- Full old Desc: "Blochează proiectilele#Șansă de 10% să se beșască și să {{Charm}} vrăjească, {{Poison}} otrăvească sau să împingă inamicii#Beșina provoacă între 5-6 daune"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} Aruncabil (apasă de 2 ori pe butonul de tragere)#Schimbă inamicii și pickupurile cu care intra in contact", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Amplifică una dintre statisticile lui Isaac în funcție de culoarea aurei#La vătămare efectul este eliminat, iar unul nou este oferit in următoarea cameră#{{ColorYellow}}Galben{{CR}} = ↑ {{Speed}} +0.5 Viteză#{{ColorBlue}}Albastru{{CR}} = ↑ {{Tears}} +2 Viteză de atac#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25% Șansă ca un inel negru de Brimstone să apară în jurul inamicilor omorâți#Provoacă 30x din daunele lui Isaac pe durata a 2 secunde#{{Luck}} +2.5% șansă per noroc#100% la 30 noroc", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} Dacă nu primesti o recompensă într-o cameră, oferă între 1-3 bănuți#{{Coin}} Poți ține pînă la 999 de bănuți", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Zboară prin cameră și este înconjurat de o aură care provoacă între 7.5-10 daune pe secundă#↑ {{Damage}} x1.5 Daune dacă stai în aură", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Vrăjește toți inamicii din jur", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Îl aduce pe Isaac in camera anterioară și retrage acțiuniile făcute în camera în care a fost folosit#Poate fi folosit de 3 ori pe etaj#{{Collectible66}} După cele 3 folosiri se transformă în Clepsidra, care încetinește inamicii pentru 8 secunde#La etajul urmator vei primii cele 3 folosiri înapoi", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "{{Charm}} Bombele au o șansă de 63% sa arunce un pickup aleatoriu și o șansă de 15% sa vrăjească inamicii la explozie#Pentru fiecare pickup aruncat șansa scade cu 1% pe durata etajului", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Charm}} Bombele au o șansă de 63% sa arunce un pickup aleatoriu și o șansă de 15% sa vrăjească inamicii la explozie#Pentru fiecare pickup aruncat șansa scade cu 1% pe durata etajului"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "O umbră mică îl urmărește pe Isaac#{{Timer}} Cănd un inamic atinge umbra un charger negru prietenos să apară în cameră", -- My Shadow
	-- Full old Desc: "O umbră mică îl urmărește pe Isaac#{{Timer}} Cănd un inamic atinge umbra un charger negru prietenos să apară în cameră#Chargerul provoacă 8.7 daune pe lovitură"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Reîncepe camera și aduce la viață țoți inamicii din ea#Poate fi folosit la obținerea mai multor recompense când aceiasi cameră e terminată", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Isaac aruncă un amalgam de lacrimi la fiecare 15 lacrimi", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Dacă Isaac e vătămat:#{{Heart}} 25% șansă ca o inimă roșie să apară#{{BleedingOut}} Isaac sângerează și aruncă lacrimi în direcția în care trage#Sângerarea îl vătămează pe Isaac o jumătate de inimă roșie la fiecare 20 de secundes#Sângerarea se oprește dacă Isaac este vindecat, nu are inimi roșii sau următoarea lovitura îl omoară", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Damage}} La fiecare 20 de lacrimi, Isaac aruncă o lacrimă monedă care provoacă x1.5 +10 daune#Inamici loviții cu moneda sunt transformați în aur#{{Coin}} Dacă un inamic de aur este omorât aruncă între 1-3 monede#{{Warning}} Moneda aruncată va fi extrasă din banii lui Isaac", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Efectele cărtilor sunt dublate sau înbunătațite", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Oferă o carte#{{Card}} Efectele cărtilor sunt dublate sau înbunătațite"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Lacrimile se sparg în 1-3 bucăți la impact", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1.5 Rază de atac#Lacrimile se sparg în 1-3 bucăți la impact#Lacrimile sparte nu au pierderi de daune"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Recompensas la final de cameră sau inamicii campion oferă ce îi trebuie mai mult lui Isaac", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Inimi Suflet#Recompensas la final de cameră sau inamicii campion oferă ce îi trebuie mai mult lui Isaac"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Ceilalți familiar îl urmăresc și atacă automat inamicii#Se oprește din deplasare când Isaac trage#Se teleportează înapoi la Isaac cand nu mai nu mai trage", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Dacă folosești itemul se transformă in  Glass Cannon", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Dublează un pickup aleatoriu din cameră#Pickupruile duplicate nu sunt mereu ca originalul", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Consumă toate piedestalele din cameră#Iteme active: Efectele lor vor fi folosite de fiecare când Vidul este folosit#↑ Itemele pasive cresc 2 statistici aleatorii", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Poate fi folosit ca orice zar (cu excepția a {{Collectible723}} Spindown Dice) cu butonul de schimbare ({{ButtonRT}})#Liniile de încărcare variază în funcție de ultimul zar folosit și se schimbă cu fiecare folosință", -- D Infinity
	-- Full old Desc: "Poate fi folosit ca orice zar (cu excepția a {{Collectible723}} Spindown Dice) cu butonul de schimbare ({{ButtonRT}})#Liniile de încărcare variază în funcție de ultimul zar folosit și se schimbă cu fiecare folosință"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} daune pentru fiecare inimă roșie lipsă#Cu cât mai multe inimi lipsă, cu atât mai multe daune primite", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Lacrimile provoacă o scânteie de electricitate la impact#Scânteia provoacă jumătate din daunele lui Isaac#Scânteia poate traversa până la 4 inamici", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "Focul se micește și dispare după 2 secunde", -- Ghost Pepper
	-- Full old Desc: "8% șansă sa arunci cu un foc albastru care blochează proiectilele și cauzează daune inamicilor#{{Luck}} 50% șansă la 10 noroc#Focul se micește și dispare după 2 secunde"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Confusion}} La intrarea într-o cameră Isaac este camunflat până trage cu o lacrimă#↑ {{Speed}} +0.5 viteză cand este camunflat#După tragerea unei Lacrimi Isaac provoacă daune în jurul lui si viteza lacrimilor și daunele sunt crescute temporar", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} +1 Spațiu pentru inimi la fiecare 25 de banuți Isaac deține", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Mâna omoară inamicii instant și provoacă 36 de daune șefilor", -- Little Horn
	-- Full old Desc: "5% șansă să arunci cu o lacrimă care aduce mâna lui Big Horn#{{Luck}} 20% șansă la 15 noroc#Mâna omoară inamicii instant și provoacă 36 de daune șefilor#Isaac provoacă 7 daune de contact pe secundă"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Oferă o muscă care trage în inamici", -- Brown Nugget
	-- Full old Desc: "Oferă o muscă care trage în inamici#Fiecare glonț provoacă 3.5 daune"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} Dacă lovești un inamic în spate acesta primește daune duble și sângerează cauzândule daune dacă merg", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Provoacă daunele lui Isaac + 10% din viața inamicului cu cea mai mare viața tuturor inamicilor#{{HalfHeart}} 15% șansă să primești o jumătate de inimă dacă provoci daune cu paiul", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} Orbital care provoacă sângerare#Sângerarea provoacă daune inamicilor care se mișcă#{{Damage}} Provoacă 1.5x din daunele lui Isaac pe secundă", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbital care trage la fiecare 0.33 secunde către inamici din apropiere", -- Bloodshot Eye
	-- Full old Desc: "Orbital care trage la fiecare 0.33 secunde către inamici din apropiere#daune de 3.5 pe lacrimă#20 de daune de contact pe secundă"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Inamicii și proiectilele sunt oprite la intrevale aleatorii#Proiectilele oprite dispar#25% șansă să dubleze recompensa camerei#{{Luck}} Intervalul este afectat de noroc", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Elimină intervaliul la care poți pune bombe#Bombele nu sunt împinse dacă explodează", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombe#Elimină intervaliul la care poți pune bombe#Bombele nu sunt împinse dacă explodează"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Blochează toate proiectilele inamicilor care se apropie de Isaac pentru 3 secunde, dupa ele sunt aruncate înapoi#Inamicii din apropiere sunt aruncați pe durata efectului", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Poate ține până la 10 pickupuri și iteme din camera curentă#Dacă este folosită din nou tot ce a adunat va fi lăsat pe jos#Îi perimte lui Isaac sa care lucuri dintr-o cameră în alta", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Lacrimile lui Isaac sunt conecatate cu o undă de curent#Curentul provoacă 4.5x din daunele lui Isaac pe secună", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Desc ide o trapa către următorul nivel#{{LadderRoom}} Deschide un bechi daca este folosită pe o decoratiune (iarbă, pietre micuțe, hârtie, gemuri, etc.)(beciul are o scară și nu te duce la urmatorul etaj)#{{Warning}} Folosește lopata in pamântul din  \"Dark Room\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% șansă să arunci cu o lacrimă lipicioasă cu spori#{{Luck}} Șansa nu este afectată de noroc#{{Poison}} După 2.5 secunde sporii explodează, otravesc inamicii din jur și se răspândesc", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Provoacă frică tutuor inamicilor din jurul lui Isaac", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Timer}} Plătește 5 {{Coin}} bănuți și primești pe durata camerei:#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Co n}} +5 Bănuți#{{Timer}} Plătește 5 {{Coin}} bănuți și primești pe durata camerei:#↑ {{Damage}} +1.2 Daune"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "Dacă este folosit de mai multe ori în aceiași cameră, daunele o să crască, dar și marimea undei", -- Sulfur
	-- Full old Desc: "{{Timer}} {{Collectible118}} Brimstone pe durata camerei#Dacă este folosit de mai multe ori în aceiași cameră, daunele o să crască, dar și marimea undei"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Oferă una din următoarele recompense:#Un noroc#{{SoulHeart}} O Inimă Suflet#{{Rune}} O Rună sau Piatră Suflet#{{Card}} O Carte de Tarrot#{{Trinket}} Un Trinket", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Șansă să arungi cu 1-3 lacrimi in direcții aleatorii#{{Luck}} Nu este afectat de noroc", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Curentează inamicii din jur#{{Damage}} Curentul provoacă pană la 3.75x daune pe secundă#Scânteia poate sării până la 4 inamici", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} Dacă Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} +1.2 Viteză de atac la prima lovitură#↑ {{Tears}} +0.4 Viteză de atac pentru alte lovituri#Eliberează un inel de 10 lacrimi in jurul lui Isaac", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "Lacrimile primesc efecte aleatori de viermi(trinket) și câteva efecte de iteme", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} x4 Viteza de atac#↓ {{Damage}} x0.3 Daune#↓ {{Tearsize}} -0.16 Mărimea lacrimilor#Lacrimile primesc efecte aleatori de viermi(trinket) și câteva efecte de iteme"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ Previne ca valorile lui Isaac sa fie scăzute pe durata runului#Statisticile negative o să fie în continuare calculate, dar Isaac nu o sa fie afectat de ele", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Bombele lui Isaac Explodează cu efecte aleatorii", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombele lui Isaac Explodează cu efecte aleatorii"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Urmărește inamicii#După ce omoară 15 inamici, provoacă mai multe daune, oferă o jumătate de Inimă Roșie la fiecare 10 inamici, dar încearcă să-l rănească pe Isaac#După 40 de inamici, provoacă și mai multe daune, oferă Inimi Roșii întregi și poate distruge pietre#Dacă îi provoci suficient de multe daune, revine la prima formă", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1 Jumătate de Inimă Suflet când intrii într-un etaj nou#Tranzitia dintre etaje arată șeful si itemul din Camera Comorilor", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} Dacă cureți o cameră fără să fi lovit primești +0.4 viteză de atac#Maxim +2 viteză de atac {{ColorSilver}}(5 camere){{CR}}", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Dubla apăsare a butonului de tragere oferă un scut#Scuturl durează 1 secundă, împinge inamici și reflectă proiectilele și laserele", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} Când intrii într-un etaj nou Isaac rămâne fără Inimi Roșii, dar primește viteză și daune pentru fiecare inimă pierdută", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Fiecare lacrimă are o culoare și un efect diferit", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Imunitate la bălți și țepi", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} +0.3 Viteză#↑ {{SoulHeart}} +2 Inimi Suflet#Imunitate la bălți și țepi"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Lacrimile lui Isaac pot fi controlate in aer", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} +1 Daune#↑ {{Range}} +2 Rază de atac#↓ {{Shotspeed}} -0.16 Viteza lacrimilor#Lacrimile lui Isaac pot fi controlate in aer"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% șansă sa arunci cu o lacrimă spectrală extra care orbitează", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Viață#↑ {{Damage}} x1.2 Daune#{{HealingRed}} Vindecă Inimile Roșii#20% șansă sa arunci cu o lacrimă spectrală extra care orbitează"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Isaac este înconjurat de o aură care provoacă daune#Cu cât inamicii sunt mai aproape de Isaac, cu atât o să primească daune mai multe", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} Este îngropat în capul lui Isaac și trage cu 4 lacrimi extra care încetinesc inamicii și provoacă 1.5 daune#Dacă Isaac este vătămat păianjenul iasă și urmărește inamicii", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Toți inamicii Dip sunt prietenoși(rahații mici)#Distrugerea rahaților oferă 1-4 Dips#Tipul de Dip depinde de tipul de rahat#Pietrele pot fi înlocuite de rahați", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#O sabie atârnă deasupra lui Isaac care dublează toate piedestalele#Itemele care costa sau vin din chesturi nu sunt dublate#{{Warning}} După ce Isaac este vătămat sabia are o șansă extrem de mică să îl omoare pe Isaac la fiecare frame#Efectele de invincibilitate pot preveni acest efect", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Varsă o baltă mare galbenă#Balta provoacă 24 de daune pe secundă", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Nu mai ataci cu lacrim ci cu o sabie#{{Damage}} Sabia provoacă 3x daune +3.5 și viteza ei depinde de cat de repede apeși#{{Chargeable}} Dacă încarci atacul, vei ataca în cerc si vei arunca cu un proiectil#Aruncă cu proiectile când viața este pină", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Deschide o cameră roșie langă o cameră normală, un contur de ușă va apărea dacă este posibil#Camerele Roși pot fi speciale(Camera Comorilor,Camere Înger,ultra secrete, etc)#{{ErrorRoom}} Dacă intrii într-o cameră care depășește harta de 13x13, Isaac va fi teleportat în I AM ERROR  room", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Urmărește și blochează proiectilele inamicilor", -- Psy Fly
	-- Full old Desc: "Urmărește și blochează proiectilele inamicilor#Provoacă 15 daune de contact pe secundă"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Distorsonează ecranul#Se încarcă mai greu cu fiecare folosire#La ieșira din cameră sau la terminarea ei, efectele o sa fie reduse", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Viteză de atac#↓ {{Speed}} -0.03 Viteză#Distorsonează ecranul#Se încarcă mai greu cu fiecare folosire#La ieșira din cameră sau la terminarea ei, efectele o sa fie reduse"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Dacă plasezi o bombă în timp  ce tragi, o rachetă va fi aruncată în schimb", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 bombe#Dacă plasezi o bombă în timp  ce tragi, o rachetă va fi aruncată în schimb"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Oferă un orbital musculiță care trag cu lacrimi spectrale, atenție musculița poate fi distrusă#Poate fi conbinat cu un alt item activ care oferă musculițe speciale#{{AngelRoom}} Permite ca Camerele Înger sa apară după ce ai luat un pact cu Divolul", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} +12.5% Șansă la Camere Înger cât timp este ținută#Oferă un orbital musculiță care trag cu lacrimi spectrale, atenție musculița poate fi distrusă#Poate fi conbinat cu un alt item activ care oferă musculițe speciale#{{AngelRoom}} Transformă prima Cameră Diavol în una Înger#{{AngelRoom}} Permite ca Camerele Înger sa apară după ce ai luat un pact cu Divolul"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Este încărcată cu Inimi Suflet și oferă:#{{SoulHeart}} 3 Inimi Suflet#{{AngelRoom}} 2 iteme din Camera Înger#{{DevilRoom}} 2 Inimi Suflet si un item din Camera Înger dacă un pact cu Diavolul a fost luat", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "La începutul fiecărui etaj o scară apare care duce la o cameră specială {{AngelRoom}} Înger unde itemele costă bani", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{CurseBlind}} Elimină toate blestemele", -- Sol
	-- Full old Desc: "{{BossRoom}} Arată locația Camerei Șefului#{{Timer}} Când șeful este bătut primești pe durata etajului:#↑ {{Damage}} +3 Daune#↑ {{Luck}} +1 Noroc#{{Card20}} Efectul Soarele#{{Battery}} Încarcă itemul activ#{{CurseBlind}} Elimină toate blestemele"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Adaugă o {{SecretRoom}} Cameră Secretă  și {{SuperSecretRoom}} Super Secretă extra la fiecare etajr#Arată locația la o cameră secretă la fiecare etaj#{{Timer}} Camerele Secrete conțin o rază de lumină care oferă pe durata etajului:#↑ {{Tears}} +1 Viteză de atac#↑ {{Tears}} +0.5 Viteză de atac adițională pentru fiecare rază#{{HalfSoulHeart}} Jumătate de Inimă Suflet", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Majoritatea ușilor rămân deschise permanent", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Viteză#Majoritatea ușilor rămân deschise permanent"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Vrăjește inamicii din jur", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă 1 Inima#{{Charm}} Vrăjește inamicii din jur"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Inlocuiește lacrimile lui Isaac cu pietre#Pietrele variază în daune și pot distruge obstacole și împing inamicii în spate", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Daune#Inlocuiește lacrimile lui Isaac cu pietre#Pietrele variază în daune și pot distruge obstacole și împing inamicii în spate"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Apăsarea de două ori a butonului de deplasare îl face pe Isaac să se miște rapid în direcția respectivă#{{Damage}} Cât timp Isaac este în acțiunea de mișcare devine invincibil și provoacă 4x daune + 8{{Timer}} 3 secunde pauză", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Imunitate la otravă", -- Jupiter
	-- Full old Desc: "↑ {{EmptyHeart}} +2 Vieți goale#↓ {{Speed}} -0.3 Viteză#{{HealingRed}} Vindecă jumătate de Inimă#{{Speed}} Viteza crește până la +0.5 cât timp stai pe loc#{{Poison}} Deplasarea cauzează nori otravitori#{{Poison}} Imunitate la otravă"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "La intrarea într-o cameră noua Isaac este orbitat de 7 lacrimi#Lacrimile orbitează pentru 13 secunde și cauzează 1.5x daune +5#Proiectilele inamicilor au o șansă să îl orbiteze pe Isaac", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Isaac trage cu lacrimi de gheață care îngheață inamicii la moarte#La atingere inamicii înghețați alunecă și explodează în 10 bucăți de gheață", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Tears}} Dacă nu tragi, un bonus de lacrimă se acumulează  în 3 secunde#Bonusul de lacrimă scade pe măsură ce Isaac trage", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Mărimea lui Isaac este micită semnificativ, putând să treacă printre obiecte#Proiectilele pot trece peste el", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrimi#Mărimea lui Isaac este micită semnificativ, putând să treacă printre obiecte#Proiectilele pot trece peste el"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Deschide o Cameră Blestemată extra la fiecare etaj#Imbunătățește aspectul camerei și recompensele din ea#{{Coin}} Oferă un bănuț în fiecare Cameră Blestemată", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Dacă Isaac este vătămat șansa de Camere Înger/Diavol nu este scăzută atât de mult", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrimi#{{EternalHeart}} +1 Inimă Eternă#{{AngelChance}} Perimite Camerelor Înger să apară  după un pact cu Diavolul#Dacă Isaac este vătămat șansa de Camere Înger/Diavol nu este scăzută atât de mult"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Deschide o trapă în fiecare Magazin#Trapa duce către un magazin ascuns ce vinde trinkets, rune, cărți și iteme din toate poolurile", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} Încarcă itemul activ", -- Battery Pack
	-- Full old Desc: "{{Battery}} Oferă intre 2-4 bateri#{{Battery}} Încarcă itemul activ"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Îi perimite lui Isaac sa ridice obstacole#Obstacolele pot fi cărate printre camere", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Ruptura cauzează 3x daune pe secundă și atrage inamicii, pickupruile și proiectilele", -- Ocular Rift
	-- Full old Desc: "5% șansă să arunci cu o lacrimă care deschide o ruptură unde aterizează#{{Luck}} 20% șansă la 15 noroc#Ruptura cauzează 3x daune pe secundă și atrage inamicii, pickupruile și proiectilele"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Aruncă cu rafale de lacrimi în toate direcțile", -- Boiled Baby
	-- Full old Desc: "Aruncă cu rafale de lacrimi în toate direcțile#Provoacă 3.5 sau 5.25 daune pe lacrimă"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "{{Freezing}} Trage cu lacrimi care îngheață și provoacă 3.5 daune", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Reînoiește toate piedestalele din cameră#25% șansă să le șteargă", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Sare pe primul inamicul care îi vătămează pe Isaac#Provoacă 45 de daune și eliberează un val de pietre#După urmărește inamicii si provoacă 6.5 daune pe secundă", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Isaac urlă și provoacă daune inamicilor, distruge obstacolele și aruncă inamicii#Urletul e mai puternic cu cât este mai încărcat", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Moare dintr-o lovitură și reapare în următorul etaj#Dacă este adus în viață la următorul etaj, oferă:#{{SoulHeart}} 3 Inimi Suflet#{{EternalHeart}} 2 Inimi Eterne#{{TreasureRoom}} Un item din Camera Comorilor#{{AngelRoom}} Un item din Camera Îngerilor", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Dacă Isaac nu are bombe, o bombă poate fi pusă, dar costă o jumătate de inimă#Bombele lui Isaac lasă o baltă roșie", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă 4 Inimi Roșii#{{HalfHeart}} Dacă Isaac nu are bombe, o bombă poate fi pusă, dar costă o jumătate de inimă#Bombele lui Isaac lasă o baltă roșie#"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Deviază inamicii sau proiectilele chiar înainte ca Isaac să fie vătămat de acestea#Șansă să devieze proiectilele apropiate de el#Trebuie atins pentru a se reactiva după ce a deviat un pericol", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Focul dispare după:  4 lovituri, provoacă daune de 4 ori sau dupa 10 secunde", -- Bird's Eye
	-- Full old Desc: "8% Șansă să arunci cu un foc roșu care blochează proiectilele inamicilor și provoacă daune de contact#{{Luck}} 50% șansă la 10 noroc#Focul dispare după:  4 lovituri, provoacă daune de 4 ori sau dupa 10 secunde"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Inamicii magnetizați atrag: pickupuri proiectile și inamicii din apropiere", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% șansă să tragi cu lacrimi magnetizate#{{Luck}} 100% șansă la 5 noroc#Inamicii magnetizați atrag: pickupuri proiectile și inamicii din apropiere"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Inamicii marcați sunt atacați de alți inamici", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% șansă să arunci cu lacrimi care marchează inamicii#{{Luck}} 100% șansă la 5 noroc#Inamicii marcați sunt atacați de alți inamici"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Are efecte diferite pentru fiecare caracter", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Daunele primite vor scădea pe perioada a 3 minute#Dacă omori inamici cât timp efectul este pornit, acesta va fi extins", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Daune#{{HealingRed}} Vindecă viața#Daunele primite vor scădea pe perioada a 3 minute#Dacă omori inamici cât timp efectul este pornit, acesta va fi extins"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#Șterge toate itemele și pickupurile lui Isaac#Isaac este teleportat într-un dormitor cu pickupuri și cufere#Pentru fiecare item șters, Isaac poate alege dintre 3 iteme din același pool", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Aruncă cu o cheie în direcția în care Isaac trage#Cheile provoacă daune, distrug obstacole și deschid uși#cheia provoacă 5x daune + 30", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Chei#Aruncă cu o cheie în direcția în care Isaac trage#Cheile provoacă daune, distrug obstacole și deschid uși#cheia provoacă 5x daune + 30#Inamicii omorâți cu cheile pot oferii conținut de cufere, chiar și iteme"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Isaac poate zdrobi inamicii și obstacolele", -- Mega Mush
	-- Full old Desc: "Isaac devine uriaș și primește:#↑ {{Damage}} x4 Daune#↑ {{Range}} +2 Rază de atac#↓ {{Tears}} -1.9 Lacrimi#Invincibilitate#Isaac poate zdrobi inamicii și obstacolele#{{Timer}} Durează 30 de secunde și persistă printre camere și etaje"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "Cuțitul poate deschide o ușă de carne", -- Knife Piece 1
	-- Full old Desc: "Se transformă într-un cuțit aruncabil care provoacă 25 de pagube când e combinat cu {{Collectible627}} Bucata de Cuțit 2#Cuțitul poate deschide o ușă de carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "Cuțitul poate deschide o ușă de carne", -- Knife Piece 2
	-- Full old Desc: "Se transformă într-un cuțit aruncabil care provoacă 25 de pagube când e combinat cu {{Collectible626}} Bucata de Cuțit 1#Cuțitul poate deschide o ușă de carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "{{Warning}} O SINGURĂ FOLOSIRE {{Warning}}#Isaac este teleportat într-o care conține toate itemele din joc#Isaac poate alege doar un item și după este teleportat înapoi", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Aruncă cu proiectile care distrug gloanțele inamicilor", -- Bot Fly
	-- Full old Desc: "Aruncă cu proiectile care distrug gloanțele inamicilor#Provoacă 3 daune de contact pe secundă"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Taie inamicii in două versiuni mai mici cu 40% din viață#Provoacă 25 de daune inamicilor care nu se pot împărți", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Imunitate la {{Burning}} arsuri, {{Confusion}} confuzie, {{Fear}} teamă și {{Poison}} otravă", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Noroc#Imunitate la {{Burning}} arsuri, {{Confusion}} confuzie, {{Fear}} teamă și {{Poison}} otravă"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Crăpături roșii apar în camerele neterminate#Dacă mergi peste ele apar în cameră fantome balistice care explodează", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Oferă un familiar care se deplasează în direcția în care Isaac trage#Cînd este folosit Isaac schimbă poziția cu familiarul si devine pentru un moment invincibil#Teleportarea pe obiecte cauzează ca ele să fie distuse sau vătămate", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "{{Warning}} UNICĂ FOLOSINȚĂ {{Warning}}#Restartează runul#Tot ce deține Isaac este păstrat#Timpul nu se resetează", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "Inamici primesc daune când sunt împinși în obstacole/zid", -- Knockout Drops
	-- Full old Desc: "{{Confusion}} 10% șansă să arunci cu un pumn care provoacă confuzie și împinge inamicii masiv#{{Luck}} 100% șansă la 9 noroc#Inamici primesc daune când sunt împinși în obstacole/zid"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Aruncă cu o gumă care omoară inamicii instant#Previne ca inamicii șterși să mai apară#Provoacă 15 daune șefilor#Poate fi folosit o singură dată pe etaj", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Aruncă cu jet de flăcări#Dacă omori un inamic se adaugă o folosire la urnă", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Crează o dâră de lacrimi în spatele lui Isaac în camerele neterminate#Lacrimile provoacă 3.5 daune", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Pune pe jos un item din poolul respectiv#{{BrokenHeart}} Transformă un spațiu de inimă sau o inimă os sau 2 Inimi Suflet într-o Inimă Spartă#{{Warning}} Înlocuiește itemele viitoare dacă Isaac nu îl ține {{ColorSilver}}(33% după 1, 50% după 2, 100% după 3)#Șansă mai mică dacă Pielea Magică se află în etaj pe un piedestal", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} Undă sfântă încărcabilă cu pagube mari#Nu înlocuiește lacrimile lui Isaac", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 Inimi Suflet#Zbor#{{Chargeable}} Undă sfântă încărcabilă cu pagube mari#Nu înlocuiește lacrimile lui Isaac"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Înlocuiește cea mai mică valoare a lui Isaac dintre: Viteză, Viteză de atac, Daune, Rază de atac#Oferă 3 {{Coin}} bănuți, 1 {{Bomb}} bombă sau 1 {{Key}} cheie(depinde de ce are Isaac nevoie mai mult)", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Orbital mare care blochează proiectilele#Se sparge în versiuni mai mici dacă primește 3 lovituri#Versiunile mai mici se sparg în păianjeni albaștrii#Reapare după 5 secunde de când a dispărut", -- Tinytoma
	-- Full old Desc: "Orbital mare care blochează proiectilele#Provoacă 3.5 daune pe secundă#Se sparge în versiuni mai mici dacă primește 3 lovituri#Versiunile mai mici se sparg în păianjeni albaștrii#Reapare după 5 secunde de când a dispărut"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Bombele lui Isaac eliberează lasere Brimstone în 4 direcții#Laserele nu îl rănesc pe Isaac", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Collectible118}} Bombele lui Isaac eliberează lasere Brimstone în 4 direcții#Laserele nu îl rănesc pe Isaac"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Dacă cureți camerele, itemul activ nu se mai încarcă#Dacă provoci daune inamicilor, itemul se va încărca încet#Daunele necesare pentru încărcare cresc cu fiecare etaj", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Se mișcă diagonal prin cameră în timp ce aruncă cu lacrimi", -- Fruity Plum
	-- Full old Desc: "Se mișcă diagonal prin cameră în timp ce aruncă cu lacrimi#Lacrimile provoacă 3 daune#Provoacă 6 daune de contact pe secundă"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} Invocă un Baby Plum în cameră pentru 10 secunde", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Traversează încet din prima cameră spre {{BossRoom}} Camera Șefului#Se mișcă mai rapid dacă este înaintea ei și mai încet dacă ești în spate#Aura Oferă:#{VAR:EFFECTLIST}#50% șansă să oprească vătămarea", -- Star of Bethlehem
	-- Full old Desc: "Traversează încet din prima cameră spre {{BossRoom}} Camera Șefului#Se mișcă mai rapid dacă este înaintea ei și mai încet dacă ești în spate#Aura Oferă:#↑ {{Tears}} x2.5 Viteză de atac#↑ {{Damage}} x1.8 Daune#Lacrimi balistice#50% șansă să oprească vătămarea"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Poate fi împins dacă te lovesti de el#{{Slow}} Încetinește și provoacă 17.5 de daune de contact(depinde de viteză)#{{Freezing}} Îngheață inamicii care îi omoară", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Cât timp este ținut provoacă inamicii non fantomă să ofere fantome roșii la moarte#Fantomele explodează la folosirea itemului#Itemul omoară TOȚI inamicii fantomă care au mai puțin de 50% din viață", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Consumarea altor pastile rele oferă o Inimă Neagră", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Inimă Neagră#{{Pill}} Identifică toate pastilele#Transformă pastilele bune in pastile rele#↑ {{Damage}} Consumarea pastilelor care scad statusuri oferă +0.6 daune#{{BlackHeart}} Consumarea altor pastile rele oferă o Inimă Neagră"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Oferă un orbital care blochează proiectilele inamicilor și provoacă 10.5 daune de contact pe secundă#{VAR:ONUSEEFFECT}#Crește viteza și daunele orbitalului", -- Spin to Win
	-- Full old Desc: "Oferă un orbital care blochează proiectilele inamicilor și provoacă 10.5 daune de contact pe secundă#Folosirea itemului oferă:#↑ {{Speed}} +0.5 Viteză#Crește viteza și daunele orbitalului"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "{{Warning}}#O sabie atârnă deasupra lui Isaac care dublează toate piedestalele#Itemele care costa sau vin din chesturi nu sunt dublate#{{Warning}} După ce Isaac este vătămat sabia are o șansă extrem de mică să îl omoare pe Isaac la fiecare frame#Efectele de invincibilitate pot preveni acest efect", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Inamicii explodează în lacrimi când mor#Lacrimile primesc efectele lui Isaac", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Vătămarea cauzează ca un mini Isaac să apară#Mini Isaaci urmăresc și atacă inamicii din apropiere", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Oferă două portale în prima cameră din noul etaj#Dacă ieși din cameră portalele dispar#{{Blank}} {{ColorRed}}Roșu: {{CR}}{{BossRoom}} Camera Șefilor#{{Blank}} {{ColorYellow}}Galben: {{CR}}{{TreasureRoom}} Camera Comorilor#{{Blank}} {{ColorBlue}}Albastru: {{CR}}{{SecretRoom}} Camera Secretă", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Când ucizi un inamic în locul lui apare un familiar staționar#Maxim 5 familiari", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "1 secundă de invincibilitate la fiecare 6 secunde#Isaac se aprinde intermitent înainte ca efectul să apară", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Itemele se schimbă între ele și un item de mâncare#Itemele de mâncare oferă:#↓ {{Speed}} -0.03 Viteză", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă inimile#Itemele se schimbă între ele și un item de mâncare#Itemele de mâncare oferă:#{{HealingRed}} Vindecă 2 vieți#↑ {{Damage}} +3.6 Daune temporare#↑ 2 statusuri permanente (depinde de mâncare)#↓ {{Speed}} -0.03 Viteză"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Dezvăluie conținutul {{Chest}} cuferelor, {{GrabBag}} sacurilor, vânzătorilor, focurilor înainte să fie deschise", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "{{Warning}} Keeper poate lua itemele pentru poveste", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bombă#{{Player14}} Keeper apare ca un caracter secundar#Când Keeper moare acesta oferă păianjeni albaștrii și toate itemele ce le-a luat o să dispară#{{DevilRoom}} Pacturile cu Diavolul costă bani cât timp Keeper este viu#{{Warning}} Keeper poate lua itemele pentru poveste"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Începe ascensiunea#Trinketurile lăsate în {{TreasureRoom}} Camera Comorilor sau {{BossRoom}} Camera Șefilor se transformă în {{Card78}} Cheie Crăpată", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Isaac poate alege dintre 2 recomense la finalizarea camerei", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Dacă te vindeci cu {{Heart}} Inimi Roșii primești statusuri permanente pozitive#{{Heart}} Oferă o Inimă Roșie", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Pacturile cu diavolul costă bani#{{Shop}} Itemele din magazin costă inimi#Consumabilele sunt încojurate de țepi", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Intrarea în noul etaj dacă ai vizitat Camera Diavolului fară să nimic, oferă:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Intrarea în noul etaj dacă ai vizitat Camera Diavolului fară să nimic, oferă:#↑ {{Damage}} +1 Daune#{{SoulHeart}} +1 Inimi Suflet"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Vătămarea fatală îl transformă pe Isaac într-o fantomă legată de corpul lui mort cu lanțuri și îi permite să zboare cu o jumătate de inimă#Dacă fantoma supraviețuiește, Isaac revine la viață după 10 secunde#Este încărcat cu Inimi Suflet", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Vătămarea oferă:#Deschide toate ușile din cameră#Dezvăluie o cameră din cameră#Distruge toate pietrele colorate și care ascund un beci", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 O viață goală la o inimă roșie sau mai puțin la intrare într-un etaj nou", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} Vătămarea într-o cameră netrerminată oferă:#Spectral tears#Zbor#Oprește următoarea vătămare#Oprește timpul pentru 2 secunde#Crește treptat viteza și viteza de atac pentru 2 secunde", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Înlocuiește lacrimile lui Isaac cu fetuși spectrali cu orientare#Lacrimile sunt încărcabile#{{Damage}} Fetuși provoacă 2.8x daune pe secundă", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Familiar care eliberează un ceerc Maw of the Void#Provoacă 52.5 daune pe durata a 1 secundă", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Cât timp tragi, o rază de distanță mică se încarcă care se eliberează prin spate#Nu înlocuiește lacrimile lui Isaac", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Provoacă daune de contact si zboară în față#Consumă pickupuri în durumul său cu care intă în contact#Fiecare pickup consumat îi crește daunele, mărimea și oferă o muscă albastră#Dacă consumă 4 pickupuri oferă un portal care duce spre o cameră ne explorată", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Câteodată sare din pământ și prinde un inamic#Inamicii prinși primesc 8 daune pe secundă, sunt încetiniți și nu se pot mișca", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Inamicii oferă bucăți de oase când mor#Oasele provoacă daune de contact și blochează proiectilele", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Inamicii omorâți au o șansă să ofere o fantomă#Fantomele urmăresc inamicii, provoacă daune de contact și explodează după 5 secunde#Isaac nu este vătămat de explozii", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Oferă o musculiță aleatorie#Oferă o musculiță în plus cu fiecare folosire(maxim 12)", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Dacă colectezi {{SoulHeart}} Inimi Suflet primești statusuri aleatorii pozitive", -- Soul Locket
	-- Full old Desc: "↑ Dacă colectezi {{SoulHeart}} Inimi Suflet primești statusuri aleatorii pozitive#{{SoulHeart}} Oferă o Inimă Suflet"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Oferă un inamic prietenos care copiază mișcările lui Isaac si atacă", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "La moarte:#Isaac este readus la viață cu o jumătate de inimă#↑ {{Speed}} +0.2 Viteză#↑ Micește mărimea masiv", -- Inner Child
	-- Full old Desc: "+1 Reînviere#La moarte:#Isaac este readus la viață cu o jumătate de inimă#↑ {{Speed}} +0.2 Viteză#↑ Micește mărimea masiv"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Piedestalele cu iteme se schimbă intre 5 iteme", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Inamicii sunt îminși de Isaac#50% șansă să se evite vătămarea la contact#50% șansă să devieze proiectilele inamicilor", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Previne ca itemele de calitate {{Quality0}}/{{Quality1}} să mai apară#Itemele de calitate {{Quality2}} au o șansă de 33% să fie înoite", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "{{DevilRoom}} Camerele Demon conțin un set de țepi#Dacă ești vătămat de țepi primești:#35%: Nimic#33%: ↑ {{Damage}} +0.5 Daune#15%: 6 {{Coin}} Bănuți#10%: 2 {{BlackHeart}} Inimi Negre#5%: {{DevilRoom}} Item din Camera Diavolului#2%: Transformarea Leviatan", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Curățarea camerei oferă o muscă nouă#Muștele se transformă în muște albastre dacă sunt lovite", -- The Swarm
	-- Full old Desc: "Primești 8 orbitali muște#Curățarea camerei oferă o muscă nouă#Muștele se transformă în muște albastre dacă sunt lovite"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} Fiecare Lovitură fatală oferă +2 Inimi Rupte#Isaac moare la 12 Inimi Rupte", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} +0.25 Daune pentru fiecare Inimă Ruptă#{{BrokenHeart}} +3 Inimi Rupte#{{BrokenHeart}} Fiecare Lovitură fatală oferă +2 Inimi Rupte#Isaac moare la 12 Inimi Rupte"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Vătămarea cauzează pe durata etajului:#↑ {{Speed}} Viteză în plus#↑ {{Tears}} Viteză de atac în plus#Maxim +1.02 viteză și +3 viteză de atac", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Isaac este înconjurată de o aură#Inamicii care stau prea mult în aură sunt loviți de o undă de lumină în 4 direcți#Vătămarea cauzează ca aura să crească pe durata etajului", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Camera Șefului conține o dublură a șefului#Dublura oferă un item extra#Clona este mai înceată și are 75% din viață", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Doi familiar care trag cu aceliași lacrimi ca a le lui Isaac#{{Damage}} Provoacă 37.5% din daunele lui Isaac", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "{{Collectible118}} Dacă cureți 4 camere în următoarea tragi cu Brimstone mare", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Folosirea unei {{Rune}} rune , {{Card}} cărti sau {{Pill}} pastile folosește de asemenea ultimele 3 rune/cărți/pastile folosite#Efectul se aplică după ce itemul a fost luat", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Oferă un {{DirtyChest}} Cufăr Vechi la începutul fiecărui etaj#Cuferele Vechi se deschid cu o cheie și conțin {{SoulHeart}} Inimi Suflet, {{Trinket}} trinketuri sau iteme Mamă, Tată sau Înger", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Vătămarea oferă un orbital musculiță#Musculițele trag cu lacrimi, dar nu opresc lacrimile inamicilor și dispar în următorul etaj#Maxim 6 musculițe", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Simbă dintre caracterul curent si Esau Jr.#Esau Jr. are {{BlackHeart}} 3 Inimi Negre, {{Damage}} +2 Daune, zbor, Iteme aleatorii egale cu jr de iteme jucătorul are la folosire itemului#Caracterele au iteme și viață diferită#{{Warning}} Moartea cu oricare dintre carctere  încheie runul", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} Fiecare eliminare oferă o secundă în plus la efect și invincibilitate scurtă", -- Berserk!
	-- Full old Desc: "{{Battery}} Se încarcă cu daunele provocate#{{Timer}} Pentru 5 secunde primești:#↑ {{Speed}} +0.4 Viteză#↓ {{Tears}} x0.5 Viteză de atac#↑ {{Tears}} +2 Viteză de atac#↑ {{Damage}} +3 Daune#Isaac atacă cu lamă care deviază proiectilele#{{Timer}} Fiecare eliminare oferă o secundă în plus la efect și invincibilitate scurtă"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Issac trece prin inamici și proiectile, oprindule în loc#Când efectul se termină inamici paralizați sunt vătămați, proiectilele sunt șterse și Isaac provoacă o explozie#Atacul și explozia sunt mai puternice cu cît Isaac trece prin mai mulți inamici și proiectile", -- Dark Arts
	-- Full old Desc: "{{Timer}} Pentru 1 secundă (or until shooting):↑ {{Speed}} +1 Viteză#Issac trece prin inamici și proiectile, oprindule în loc#Când efectul se termină inamici paralizați sunt vătămați, proiectilele sunt șterse și Isaac provoacă o explozie#Atacul și explozia sunt mai puternice cu cît Isaac trece prin mai mulți inamici și proiectile"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Consumă toate itemele de pe piedestale și oferă o locustă pentru fiecare#Locustele provoacă daunele lui Isaac de 2-3 ori pe atac#Unele iteme oferă locuste speciale", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Toate lacrimile lui Isaac sunt trase din ochiul drept", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Daune#Toate lacrimile lui Isaac sunt trase din ochiul drept"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Isaac se repede în direcția în care se mișcă#Repezirea într-un inamic sau șef îl ridică pe sus și îl trântește de pământ#Izbitura provoacă daune și generează un val de pietre(depinde de mărimea lui Isaac)#Invincibilitate în timpul repeziri și când trântește inamicii)", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Colectează până la 8 pickupuri(nu pot fi aruncate pe jos o dată ce au fost colectate)#Folosirea itemului cu 8 pickupuri oferă un item#Calitatea itemului depinde de calitatea pickupurilor", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Camerele cu iteme arată un alt item fantomă lângă#Folosirea itemului îl schimbă cu cel fantomă#Folosirea itemului dupa ce primul item a fost luat îi permite lui Isaac să îl ia pe cel fantomă#{{Warning}} Itemul fantomă dispare după ce Isaac iese din cameră", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Oferă un orbital care dă efectul unui item aleatoriu#Itemul are o șansă de 25% să fie din poolul curent și o șansă de 75% să fie din poolul din Camera comorilor, Șefului sau Magazin", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Șterge jumătate de inimă și oferă un cheag#Cheagul copiază lacrimile lui Isaac#Fiecare tip de inimă oferă un cheag cu viață, daune și efecte de lacrimi diferite", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Readuce corpul lui Forgotton de la orice distanță#Sufletul este invincibil cât timp Forgotten este readus", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Folosirea itemului când e gol păstrează următorul rahat#Folosirea itemului când e plin folosește rahatul din el", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Folosirea a 3 bănuți oferă:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Oferă 3 {{Coin}} bănuți și 1 {{Key}} cheie#{{Shop}} Folosirea a 3 bănuți oferă:#↑ {{Speed}} +0.03 Viteză#↑ {{Damage}} +0.5 Daune#↑ {{Range}} +0.25 Rază de atac"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Pietrele și alte obstacole oferă 2 păianjeni albaștrii cand sunt distruse#Pietrele oferă ocazional păianjeni albaștrii în camerele neterminate", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Oferă un item/pickup aleatoriu din magazin pentru a fi cumpărat", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Oferă pickupuri depinzînd de numarul de încărcări#Nr de încărcări:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Oferă un efect aleatoriu puternic la 12 încărcări", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Toate itemele viitoare devin glitched#Itemele glitched au efecte complet aleatorii", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Înlănțuiește cel mai apropiat inamic timp de 5 secunde#Inamicii înlănțuiți nu se pot mișca", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Înlocuiește itemele din cameră scăzând IDul cu 1", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Vătămarea aruncă o Inimă sau jumătate de Inimă Roșie(depinde cât de mult a fost Isaac a pierdut)#Inimile sunt propulsate și dispar după 1.5 secunde", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Provocând destule daune, Isaac strălucește intermiten roșu#Eliberarea butonului de tragere când Isaac strălucește ori:#Aruncă cu un rahat aleatoriu#Creează o baltă de alunecoasă#{{Poison}} Se beșește cu un nor otrăvitor#5 bombe vi apar", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Dubla apăsare a butonului de tragere cauzează ca Isaac să strănute sânge#Strănutul provoacă 1.5x daune#1 secundă timp de așteptare#{{BrimstoneCurse}} Inamicii afectați primesc daune extra de la undele de Brimstone", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Bombele lui Isaac oferă fantome care urmăresc inamicii#Fantomele provoacă 2x daune si explodează după 10 secunde", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombele lui Isaac oferă fantome care urmăresc inamicii#Fantomele provoacă 2x daune si explodează după 10 secunde"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Un familiar demon iese din Isaac pe durata camerei#Demonul trage după cel mai apropiat inamic#Copiază lacrimele, statusurile și efectele lui Isaac#{{Damage}} Lacrimele provoacă 75% din daunele lui Isaac", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Aruncă capul lui Isaac într-o direcție#Capul provoacă daune de contact și aruncă cu lacrimi de unde a aterizat#Dacă itemul este folosit din nou sau Isaac calcă peste cap, el va fi reatașat", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Oferă o rună sau o piatră suflet la întâplare", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Daune#{{Rune}} Oferă o rună sau o piatră suflet la întâplare"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} Distrugerea pietrelor are o șansă de 33% să ofere un bănuț", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 20% șansă mai mare ca un bănuț să fie în rahați#{{Poison}} Colectând bani, Isaac se beșește și otrăvește inamicii din jur și aruncă proiectilele", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% Șansă pentru un efect aleatoriu de ciupercă la fiecare cameră", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} Dacă ești vătămat este o șansă mare sa primști un familar geaman pe durarta camerei", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} Dacă ai o jumătate de Inima Roșie sau mai pușin {{Collectible100}} Micul Steven#{{Collectible318}} Dacă ești vătămat este o șansă mare sa primști un familar geaman pe durarta camerei"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "5% șansă sa provoci 80 de daune tuturor inamicilor din cameră dacă ești vătămat#{{Collectible35}} Efectele Inimilor Negre sau Necronomicon sunt dublate", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 25% șansă să primesti jumătate de Inimă Roșie dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 25% șansă să primesti o bombă dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 25% șansă să primesti o cheie dacă colectezi bănuți#Șansă mai mare de la banuții mai valoroși", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Îl camunflează aleatoriu pe Isaac#{{Confusion}} Derutează inamicii#Poate fi folosit să dschizi  \"Strange Door\" în \"Depths II\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ x1.33 Statistici (cu excepția vitezei de atac) pentru statisticile mai mari de 1 {{Speed}} viteză, 2.73 {{Tears}} lacrimi, 3.5 {{Damage}} daune, 6.5 {{Range}} rază de atac, 1 {{Shotspeed}} viteza lacrimilor", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Vătămarea cauzează ca Inimile Roșii să fie eliminate înaintea Inimilor Suflet#{{Warning}} Vătămarea Inimilor Roșii scade șansa la camerele Diavol/Înger", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Magazinele apar în  \"Womb\" și \"Corpse\"", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Camera Comorilor apare în \"Womb\" și \"Corpse\"", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} Intrarea într-un etaj nou jumătate din Inimile Roșii/Os goale a lui Isaac#{{HealingRed}} Vindecă minim jumătate de inimă", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} 17% Șansă să primeți jumătate de Inimă Suflet#Șansă mai mare de la banuții mai valoroși", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% șansă să primești un efect de seringă aleatorie la fiecare cameră", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bombele lui Isaac explodează mai rapid", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Beșinile au raza mărită", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "ușiile, blocajele cu chei si cuferele de aur pot fi deschise cu explozii#Exploziile pot sa deschidă de asemenea \"Strange Door\" în \"Depths II\"", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Intrarea într-un nou etaj oferă până la 4 pickupuri necolectate din etajul anterior în camera de început", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Schimbă itemul activ la folosire", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +4 Noroc pentru efectele pe lacrimi", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Doubles the fire rate of familiars", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Tears turn 90 degrees to target enemies that they may have missed", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Taking damage destroys the trinket", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Luck up#Taking damage destroys the trinket"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "All familiars orbit around Isaac", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Right before taking damage, uses the active item if it is charged", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +9% Planetarium chance#Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% chance for a random Mom item effect each room", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 Heart container while held", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc.", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Key on pickup#{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Entering a new floor spawns a sack", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} Clearing a room has a 50% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Spawns 1 extra bomb for each bomb placed", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% chance to grant the effect of a random passive item each room", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Clearing a room has a 25% chance to spawn a friendly Bony", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Counts as 1 item towards the Guppy transformation while held", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% Devil Room chance#Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Opens the door to the Hush floor regardless of the timer", -- Strange Key
	-- Full old Desc: "Opens the door to the Hush floor regardless of the timer#Using {{Collectible297}} Pandora's Box consumes the key and spawns 6 items from random pools"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Using an active item triggers the effect of an additional 1-2 charge active item", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% chance to duplicate a familiar each room", -- The Twins
	-- Full old Desc: "50% chance to duplicate a familiar each room#Grants {{Collectible8}} Brother Bobby or {{Collectible67}} Sister Maggy if Isaac has no familiars"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Shops sell familiars for 10 coins", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Killing an enemy has a 17% chance to spawn a random locust", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Grants 1 Abyss locust", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Killing a petrified enemy freezes it", -- Ice Cube
	-- Full old Desc: "Entering a room has a 20% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Isaac este teleportat în Camera Comorilor#{{Planetarium}} Daca un Planetariu este prezent Isaac va fi teleportat acolo", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Turns all pickups, chests and non-boss enemies into random keys", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Activates a random rune effect#The rune effect is weaker", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#Invincible but can't move", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} Receive for 10 seconds:#↑ {{Tears}} x4 Fire rate multiplier#Invincible but can't move"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} Spawns 2-4 golden chests", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} Triggers a random Dice Room effect", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} Receive for 30 seconds:#↓ {{Speed}} -0.1 Speed#Triple shot#{{Coin}} Killed enemies drop coins"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Activates Book of the Dead#Spawns Bone entities for each enemy killed in room", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Forces Isaac to eat 5 random pills", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{CurseDarkness}} Curse of Darkness", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} Receive for the floor:#↑ {{Damage}} +1.5 Damage#Flight and spectral tears#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Spawns a Restock Machine", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Spawns a trapdoor to a crawlspace", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Single-use Red Key", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Copies the effect of your most recently used pill, card, rune, soul stone or activated item", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Makes all item pedestals in the room cycle between two different items", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#↑ {{Tears}} +1.5 Fire rate#↑ {{Damage}} +1 Damage"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Permanently grants a random familiar", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Spawns 15 random locusts", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Spawns The Forgotten as a secondary character for the room", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Spawns 6 random Book of Virtues wisps", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} Pixelates the screen for 30 seconds", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Slows Isaac and all enemies in the room", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Random pill effect#Has a chance to destroy itself with each use", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Poisons the entire room", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Spawns a few homing Mega Troll Bombs", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Becomes a Health Up horse pill at 0 or 1 heart containers", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2 Health#Becomes a Health Up horse pill at 0 or 1 heart containers"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} Fully recharges active items", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Fully recharges active items#{{Battery}} Drops 3-4 batteries"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} Drains all but one heart container", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Prevents Isaac from moving and shooting for 4 seconds", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Turns every enemy in the room permanently friendly", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Spawns a puddle of creep the size of a room which damages enemies", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} Isaac shoots diagonally for 60 seconds", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Isaac spawns poop behind him for 10 seconds", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Curse of the Maze effect for the floor", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Greatly increases Isaac's size#Doesn't affect his hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Greatly decreases Isaac's size#Also decreases his hitbox's size", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Spawns 2 blue spiders for each poop in the room", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Pixelates the screen for 90 seconds", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Spawns a pool of long lasting slippery creep", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} Spawns a pool of long lasting slowing creep", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Slows Isaac and all enemies in the room", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Consumes Isaac's trinket and grants its effects permanently", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Shoots a cluster of Ipecac tears", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Spawns the last pill Isaac used as a horse pill", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Random horse pill effect#Has a chance to destroy itself with each use", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
