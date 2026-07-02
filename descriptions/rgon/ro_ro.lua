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
	[56] = {"56", "Accidentul Lămâii", "Varsă o baltă de lămâie#Balta provoacă 24 de daune pe secundă#Balta persistă până când părăsești camera"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Pasăre Moartă", "Când primești daune, apare o pasăre care atacă inamicii#Pasărea provoacă 4.3 daune de contact pe secundă#Persistă între camere dacă Isaac are 1/2 inimi"}, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Sac de Box", "Familiar momeală#Inamicii îl vizează pe el în locul lui Isaac#Blochează lacrimile inamice" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Tehnica Ludovico", "↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} viteză lacrimi#Înlocuiește lacrimile lui Isaac cu o singură lacrimă uriașă controlabilă" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = {"351", "Fasole Gigant", "{{Petrify}} Provoacă 100 de daune și pietrifică toți inamicii din cameră#{{Poison}} Provoacă 5 daune și otrăvește inamicii apropiați#Poate deschide camere secrete și sparge pietre"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Lapte!", "Blochează proiectilele inamicilor#{{Tears}} După 10 lovituri laptele se spare și oferă Lacrimi pe durata etajului"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Fasole Persistentă", "Dacă tragi pentru 4 secunde fară pauză Isaac lasă un nor de rahat#Norul se mărește pe durata a 10 secunde#Norul provoacă daune mai puține pe măsură ce crește#Poate fi înpins cu lacrimi"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Se mișcă prin cameră#Provoacă 30 de daune de contact pe secundă#Se oprește cand Isaac trage#Blochează proiectilele când este oprit și trage cu rafale de lacrimi in cerc"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Crește statusuri la întâmplare#↓ Scade statusuri la întâmplare#{{Timer}} Efecte aleatorii pe lacrimi pe durata camerei#Transformă piedestalele in iteme glitched#{{Blank}} Corupe toate aspecte visuale si muzica pe durata camerei"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Clicker", "Îți schimbă personajul cu unul aleatoriu#50% șansă de a elimina cel mai recent obiect colectat" }, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "Delirant", "Generează o versiune prietenoasă Delirium a unui boss#Persistă între camere#{{Warning}} Doar un boss poate fi activ în același timp#Sănătatea bossului scade în timp"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Doare", "{{Timer}} Când Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} {{ColorGreen}}+1.2{{CR}} Viteză de atac la prima vătămare#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac pentru fiecare altă vătămare#Eliberează un inel de 10 lacrimi în jurul lui Isaac#Lacrimile lasă o baltă la impact"}, -- Doare
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Marte", "Dublu-apăsarea unei taste de mișcare îl face pe Isaac să se arunce#{{Damage}} În timpul aruncării, Isaac este invincibil și provoacă {{ColorGreen}}4x{{CR}} dauna lui {{ColorGreen}}+8{{CR}}#{{Timer}} 3 secunde timp de reîncărcare#{{Burning}} Creează un inel de foc la impact" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} Vieți goale#↓ {{Speed}} {{ColorRed}}-0.3{{CR}} Viteză#{{HealingRed}} Vindecă 2 inimi#{{Speed}} Viteza crește până la {{ColorGreen}}+0.5{{CR}} cât timp stai pe loc#{{Poison}} Deplasarea cauzează nori otravitori#{{Poison}} Imunitate la otravă"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Farmec Malefic", "↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc#Imunitate la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} teamă, {{Slow}} pânza de păianjen {{Poison}} Otrava#Oferă 1 secundă de imunitate la balți"}, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Steaua din Betleem", "Călătorește încet de la prima cameră a etajului la {{BossRoom}} Camera Boss#Se mișcă mai repede dacă ești înaintea ei și mai încet dacă ești în urma ei#Stând în aura ei oferă:#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} multiplicator lacrimi#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} multiplicator daune#Lacrimi cu urmărire#50% șansă să ignori daunele" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Citirea Cărților", "Creează două portaluri în prima cameră a fiecărui etaj#Părăsirea camerei face portalurile să dispară#{{Blank}} {{ColorRed}}Roșu: {{CR}}{{BossRoom}} Camera Boss#{{Blank}} {{ColorYellow}}Galben: {{CR}}{{TreasureRoom}} Camera de Obiecte#{{Blank}} {{ColorBlue}}Albastru: {{CR}}{{SecretRoom}} Camera Secretă#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Magazin" }, -- Card Reading
	-- Change: Added into for first usage
	[685] = { "685", "Borcan cu Spirite", "Creează 2 spirite aleatorii#Creează încă un spirit la fiecare utilizare, până la 12" }, -- Jar of Wisps
	-- Change: Complete rewrite
	[681] = {"681", "Micul Portal", "Dubla apăsare a butonului de tragere aruncă portalul#Provoacă daune de contact cand este aruncat#Consumă pickupurile în durmul său#Fiecare pickup îi mărește dimensiunea, daunele și oferă o muscă albastră#Consumarea a 2-3 pickupuri oferă un portal spre o cameră specială și familiarul dispare pe durata etajului#Conținutul camerei speciale persistă pe durata partidei"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abyss", "Consumă toate piedestalele din cameră și oferă o lăcustă pentru fiecare item#Unele iteme oferă lăcuste speciale#{{Damage}} Lăcustele provoacă deaunele lui Isaac înmulțit cu caliatea itemului consumat:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Căpușă", "{{HealingRed}} Vindecă 1 inimă când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-15%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o" }, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Amigdală", "După ce primești daune de 6-12 ori, creează un familiar care blochează proiectile#Dispare după ce creează 2 familiari" }, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Fitil Scurt", "Bombe lui Isaac explodează mai repede#Bombe provoacă cu 15% mai multe daune" }, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = { "104", "Osul Dorinței", "5% șansă să se distrugă și să creeze un obiect pe piedestal când primești daune" }, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "Prânz la Pachet", "{{Collectible22}} 5% șansă să se distrugă și să creeze Prânzul când primești daune" }, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o",
		"{{HealingRed}} Vindecă {{ColorGold}}3{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - Roata norocului", "{{Slotmachine}} Creează o Păcănea#{{FortuneTeller}} 24% șansă să fie un Automat de Noroc#{{CraneGame}} 1% șansă să fie o Macara" },
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
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnezie", "{{CurseLost}} Ascunde harta etajului#{{Pill}} Uită toate pastilele identificate anterior" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Inimile sângerânde oferă doar jumătate din încărcarea unui container de inimă obișnuit",
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

-- Table that contains commonly used descriptions for abyss synergies
local abyssPresets = {
	noEffect = "Niciun efect special",
	normalTwo = "Două lăcuste normale",
	smallFour = "Patru lăcuste mici",
	blackFear = "Lăcustă neagră care provoacă teamă",
	blueConfuse = "Lăcustă albastră care aruncă inamicii și provoacă confuzie",
	blueFreeze = "Lăcustă alastră care ingheață inamicii",
	cyanDestroyProjectiles = "Lăcustă cyan care distruge proiectilele inamicilor",
	cyanElectricity = "Lăcustă cyan care produce o scânteie de curent ce provoacă 0.1 daune pe tick",
	grayConfuse = "Lăcustă gri care provoacă confuzie inamicilor",
	grayPetrify = "Lăcustă gri care pietrifică inamicii",
	grayMagnetize = "Lăcustă gri care magnetizeză inamicii",
	graySlow = "Lăcustă gri deschis care încetinește inamicii",
	grayBones = "Lăcustă gri care creează 1-3 oase fisurate la impactul cu inamicii",
	greenPoison = "Lăcustă verde care otrăvește inamicii",
	pinkMimic = "Lăcustă roz care mimează la întamplare efectele de la alte lăcuste speciale",
	pinkCharm = "Lacustă roz care vrăjește inamicii",
	purpleHoming = "Lăcustă mov balistică",
	orangeBurn = "Lăcustă protocalie care arde inamicii",
	redBleed = "Lăcustă roșu închis care provoacă sângerare inamicilor",
	redLarge = "Lăcustă roșie mare",
	whiteBeam = "Lăcustă strălucitoare albă care poate genera un fasciul de lumina ce provoacă 3x din daunele lui Isaac",
	whiteGodhead = "Lăcustă strălucitoare albă care are o aură de Zeitate ce provoacă 2 daune pe tick inamicilor din ea",
	yellowExplode = "Lăcustă galbenă care explodează",
	yellowPoisonExplode = "Lăcustă galbenă care otrăvește inamicii si explodează",
	yellowMimicExplode = "Lăcustă galbenă care explodează și mimează efectul de la altă lăcustă specială",
}

-- Special Locust effects when Item was eaten by Abyss
local abyssSynergies = {
	[4] = abyssPresets.noEffect, -- Cricket's Head
	[6] = "Lăcusta rapidă ce provoacă daunele mai rapide pe tick", -- Number One
	[7] = abyssPresets.noEffect, -- Blood of the Martyr
	[10] = "Două lăcuste cyan care distrug proiectilele inamicilor", -- Halo of Flies
	[12] = abyssPresets.redLarge, -- Magic Mushroom
	[19] = abyssPresets.yellowExplode, -- Boom!
	[37] = abyssPresets.yellowExplode, -- Mr. Boom
	[39] = abyssPresets.grayPetrify, -- Mom's Bra
	[40] = abyssPresets.yellowExplode, -- Kamikaze!
	[47] = abyssPresets.yellowExplode, -- Doctor's Remote
	[52] = abyssPresets.yellowExplode, -- Dr. Fetus
	[41] = abyssPresets.blackFear, -- Mom's Pad
	[53] = abyssPresets.grayMagnetize, -- Magneto
	[58] = abyssPresets.cyanDestroyProjectiles, -- Book of Shadows
	[62] = abyssPresets.redBleed, -- Charm of the Vampire
	[63] = abyssPresets.cyanElectricity, -- The Battery
	[65] = abyssPresets.yellowExplode, -- Anarchist Cookbook
	[66] = abyssPresets.graySlow, -- The Hourglass
	[68] = abyssPresets.cyanElectricity, -- Technology
	[69] = abyssPresets.redLarge, -- Chocolate Milk
	[71] = "Lăcustă roșie mică", -- Mini Mush
	[73] = abyssPresets.cyanDestroyProjectiles, -- Cube of Meat
	[77] = abyssPresets.cyanDestroyProjectiles, -- My Little Unicorn
	[89] = abyssPresets.graySlow, -- Spider Bite
	[95] = abyssPresets.cyanElectricity, -- Robo Baby
	[99] = abyssPresets.graySlow, -- Little Gish
	[100] = abyssPresets.purpleHoming, -- Little Steven
	[104] = "O lăcustă roșie normală și două lăcuste mici", -- The Parasite
	[106] = abyssPresets.yellowExplode, -- Mr. Mega
	[108] = abyssPresets.cyanDestroyProjectiles, -- The Wafer
	[110] = abyssPresets.grayPetrify, -- Mom's Contacts
	[111] = abyssPresets.greenPoison, -- The Bean
	[112] = abyssPresets.cyanDestroyProjectiles, -- Guardian Angel
	[114] = "Lăcustă roșie mare ce atacă mai rapid", -- Mom's Knife
	[116] = abyssPresets.cyanElectricity, -- 9 Volt
	[118] = "Lăcustă neagră mare", -- Brimstone
	[124] = abyssPresets.pinkMimic, -- Dead Sea Scrolls
	[125] = abyssPresets.yellowExplode, -- Bobby-Bomb
	[136] = abyssPresets.yellowExplode, -- Best Friend
	[137] = abyssPresets.yellowExplode, -- Remote Detonator
	[140] = abyssPresets.yellowExplode, -- Bob's Curse
	[149] = abyssPresets.greenPoison, -- Ipecac
	[153] = abyssPresets.smallFour, -- Mutant Spider
	[160] = abyssPresets.whiteBeam, -- Crack the Sky
	[162] = abyssPresets.cyanDestroyProjectiles, -- Celtic Cross
	[164] = abyssPresets.orangeBurn, -- The Candle
	[168] = abyssPresets.yellowExplode, -- Epic Fetus
	[169] = abyssPresets.redLarge, -- Polyphemus
	[171] = abyssPresets.graySlow, -- Spider Butt
	[172] = abyssPresets.cyanDestroyProjectiles, -- Sacrificial Dagger
	[178] = "Lăcustă strălucitoare albă care pietrifică inamicii și poate genera un fasciul de lumina ce provoacă 3x din daunele lui Isaac", -- Holy Water
	[180] = abyssPresets.greenPoison, -- The Black Bean
	[181] = abyssPresets.whiteBeam, -- White Pony
	[182] = "Lăcustă albă balistică și înceată care poate genera un fasciul de lumina ce provoacă 3x din daunele lui Isaac", -- Sacred Heart
	[187] = abyssPresets.cyanDestroyProjectiles, -- Guppy's Hairball
	[190] = abyssPresets.yellowExplode, -- Pyro
	[191] = abyssPresets.pinkMimic, -- 3 Dollar Bill
	[192] = abyssPresets.purpleHoming, -- Telepathy for Dummies
	[200] = abyssPresets.pinkCharm, -- Mom's Eyeshadow
	[201] = abyssPresets.grayConfuse, -- Iron Bar
	[202] = abyssPresets.grayPetrify, -- Midas' Touch
	[207] = abyssPresets.cyanDestroyProjectiles, -- Ball of Bandages
	[209] = abyssPresets.yellowPoisonExplode, -- Butt Bombs
	[210] = abyssPresets.cyanDestroyProjectiles, -- Gnawed Leaf
	[213] = abyssPresets.cyanDestroyProjectiles, -- Lost Contact
	[220] = abyssPresets.yellowExplode, -- Sad Bombs
	[224] = abyssPresets.smallFour, -- Cricket's Body
	[228] = abyssPresets.blackFear, -- Mom's Perfume
	[230] = abyssPresets.blackFear, -- Abaddon
	[231] = "Lăcustă neagră care încetinește inamicii", -- Ball of Tar
	[232] = abyssPresets.graySlow, -- Stop Watch
	[242] = abyssPresets.cyanDestroyProjectiles, -- Infamy
	[243] = abyssPresets.cyanDestroyProjectiles, -- Trinity Shield
	[244] = abyssPresets.cyanDestroyProjectiles, -- Tech.5
	[245] = abyssPresets.normalTwo, -- 20/20
	[248] = abyssPresets.redLarge, -- Hive Mind
	[250] = abyssPresets.yellowExplode, -- BOGO Bombs
	[256] = "Lăcustă galbenă înflăcărată care arde inamicii si explodează", -- Hot Bombs
	[258] = abyssPresets.pinkMimic, -- Missing No.
	[259] = abyssPresets.blackFear, -- Dark Matter
	[264] = abyssPresets.purpleHoming, -- Smart Fly
	[265] = abyssPresets.cyanDestroyProjectiles, -- Dry Baby
	[266] = abyssPresets.graySlow, -- Juicy Sack
	[267] = abyssPresets.cyanElectricity, -- Robo-Baby 2.0
	[272] = abyssPresets.yellowExplode, -- BBF
	[273] = abyssPresets.yellowPoisonExplode, -- Bob's Brain
	[276] = abyssPresets.blueConfuse, -- Isaac's Heart
	[277] = abyssPresets.blackFear, -- Lil Haunt
	[279] = "Lăcustă cyan foarte înceată care distruge proiectilele inamicilor", -- Big Fan
	[281] = abyssPresets.cyanDestroyProjectiles, -- Punching Bag
	[289] = abyssPresets.orangeBurn, -- Red Candle
	[294] = abyssPresets.blueConfuse, -- Butter Bean
	[298] = abyssPresets.cyanDestroyProjectiles, -- Unicorn Stump
	[300] = abyssPresets.blueConfuse, -- Aries
	[303] = abyssPresets.cyanDestroyProjectiles, -- Virgo
	[309] = abyssPresets.blueConfuse, -- Pisces
	[310] = "Lăcustă neagră înceată", -- Eve's Mascara
	[313] = abyssPresets.cyanDestroyProjectiles, -- Holy Mantle
	[315] = abyssPresets.grayMagnetize, -- Strange Attractor
	[317] = abyssPresets.greenPoison, -- Mysterious Liquid
	[326] = abyssPresets.cyanDestroyProjectiles, -- Breath of Life
	[330] = "Lăcustă mică foarte rapidă care provoacă mai multe daune pe tick", -- Soy Milk
	[331] = abyssPresets.whiteGodhead, -- Godhead
	[336] = "Lăcustă roșie înceată", -- Dead Onion
	[337] = abyssPresets.graySlow, -- Broken Watch
	[338] = abyssPresets.grayPetrify, -- Boomerang
	[347] = abyssPresets.normalTwo, -- Diplopia
	[350] = abyssPresets.greenPoison, -- Toxic Shock
	[351] = "Lăcustă verde care otrăvește, aruncă și provoacă confuzie inamicilor", -- Mega Bean
	[353] = abyssPresets.yellowExplode, -- Bomber Boy
	[356] = abyssPresets.cyanElectricity, -- Car Battery
	[360] = abyssPresets.normalTwo, -- Incubus
	[363] = abyssPresets.cyanDestroyProjectiles, -- Sworn Protector
	[366] = "Două Lăcuste galbene care explodează", -- Scatter Bombs
	[367] = "Lăcustă galbenă care încetinește inamicii și explodează", -- Sticky Bombs
	[371] = abyssPresets.yellowExplode, -- Curse of the Tower
	[372] = abyssPresets.cyanElectricity, -- Charged Baby
	[374] = abyssPresets.whiteBeam, -- Holy Light
	[375] = abyssPresets.cyanDestroyProjectiles, -- Host Hat
	[378] = abyssPresets.yellowExplode, -- Number Two
	[379] = abyssPresets.redLarge, -- Pupula Duplex
	[387] = abyssPresets.graySlow, -- Censer
	[391] = abyssPresets.pinkCharm, -- Betrayal
	[393] = abyssPresets.greenPoison, -- Serpent's Kiss
	[395] = abyssPresets.cyanElectricity, -- Tech X
	[398] = "Lăcustă albastră care micește inamicii", -- God's Flesh
	[401] = abyssPresets.yellowExplode, -- Explosivo
	[402] = abyssPresets.pinkMimic, -- Chaos
	[403] = abyssPresets.pinkMimic, -- Spider Mod
	[404] = "Lăcustă cyan care otrăvește inamicii și distruge proiectilele", -- Farting Baby
	[405] = abyssPresets.pinkMimic, -- GB Bug
	[415] = abyssPresets.whiteBeam, -- Crown of Light
	[417] = abyssPresets.whiteGodhead, -- Succubus
	[418] = abyssPresets.pinkMimic, -- Fruit Cake
	[421] = abyssPresets.pinkCharm, -- Kidney Bean
	[423] = abyssPresets.cyanDestroyProjectiles, -- Circle of Protection
	[425] = abyssPresets.graySlow, -- Night Light
	[427] = abyssPresets.yellowExplode, -- Mine Crafter
	[432] = abyssPresets.yellowMimicExplode, -- Glitter Bombs
	[441] = "Lăcustă neagră mare", -- Mega Blast
	[446] = abyssPresets.greenPoison, -- Dead Tooth
	[448] = abyssPresets.redBleed, -- Shard of Glass
	[449] = abyssPresets.cyanDestroyProjectiles, -- Metal Plate
	[453] = abyssPresets.grayBones, -- Compound Fracture
	[457] = abyssPresets.cyanDestroyProjectiles, -- Cone Head
	[459] = abyssPresets.greenPoison, -- Sinus Infection
	[460] = abyssPresets.grayConfuse, -- Glaucoma
	[466] = abyssPresets.greenPoison, -- Contagion
	[473] = "Lăcustă roșie mare înceată", -- Big Chubby
	[478] = abyssPresets.grayPetrify, -- Pause
	[483] = "Lăcustă galbenă mare care explodează", -- Mama Mega
	[488] = abyssPresets.pinkMimic, -- Metronome
	[495] = abyssPresets.orangeBurn, -- Ghost Pepper
	[497] = abyssPresets.grayConfuse, -- Camo Undies
	[502] = abyssPresets.graySlow, -- Large Zit
	[506] = abyssPresets.redBleed, -- Backstabber
	[508] = abyssPresets.redBleed, -- Mom's Razor
	[510] = abyssPresets.pinkMimic, -- Delirious
	[512] = abyssPresets.grayMagnetize, -- Black Hole
	[514] = "Lăcustă gri care pietrifică inamicii și provoacă confuzie", -- Broken Modem
	[517] = abyssPresets.yellowExplode, -- Fast Bombs
	[519] = abyssPresets.pinkMimic, -- Lil Delirium
	[520] = abyssPresets.cyanElectricity, -- Jumper Cables
	[524] = abyssPresets.cyanElectricity, -- Technology Zero
	[525] = abyssPresets.cyanDestroyProjectiles, -- Leprosy
	[533] = abyssPresets.whiteBeam, -- Trisagion
	[541] = abyssPresets.grayBones, -- Marrow
	[542] = abyssPresets.grayBones, -- Slipped Rib
	[544] = abyssPresets.grayBones, -- Pointy Rib
	[545] = abyssPresets.grayBones, -- Book of the Dead
	[546] = abyssPresets.grayPetrify, -- Dad's Ring
	[548] = abyssPresets.grayBones, -- Jawbone
	[549] = abyssPresets.grayBones, -- Brittle Bones
	[553] = abyssPresets.greenPoison, -- Mucomycosis
	[554] = abyssPresets.blackFear, -- 2Spooky
	[561] = "Lăcustă mică foarte rapidă care provoacă mai multe daune pe tick", -- Almond Milk
	[563] = abyssPresets.yellowMimicExplode, -- Nancy Bombs
	[568] = abyssPresets.cyanDestroyProjectiles, -- Divine Intervention
	[570] = abyssPresets.pinkMimic, -- Playdough Cookie
	[574] = abyssPresets.whiteGodhead, -- Monstrance
	[575] = abyssPresets.graySlow, -- The Intruder
	[577] = "Două Lăcuste cyan care distrug proiectiele inamicilor", -- Damocles
	[581] = abyssPresets.cyanDestroyProjectiles, -- Psy Fly
	[583] = abyssPresets.yellowExplode, -- Rocket in a Jar
	[591] = abyssPresets.pinkCharm, -- Venus
	[594] = abyssPresets.greenPoison, -- Jupiter
	[596] = abyssPresets.blueFreeze, -- Uranus
	[603] = abyssPresets.cyanElectricity, -- Battery Pack
	[606] = abyssPresets.grayMagnetize, -- Ocular Rift
	[608] = abyssPresets.blueFreeze, -- Freezer Baby
	[615] = abyssPresets.cyanDestroyProjectiles, -- Lil Dumpy
	[616] = abyssPresets.orangeBurn, -- Bird's Eye
	[617] = abyssPresets.grayMagnetize, -- Lodestone
	[618] = abyssPresets.pinkCharm, -- Rotten Tomato
	[622] = abyssPresets.pinkMimic, -- Genesis
	[625] = "Lăcustă Roșie neagră care atacă mai repede", -- Mega Mush
	[629] = abyssPresets.cyanDestroyProjectiles, -- Bot Fly
	[631] = "Doua Lăcuste roșii mici", -- Meat Cleaver
	[637] = abyssPresets.blueConfuse, -- Knockout Drops
	[640] = abyssPresets.orangeBurn, -- Urn of Souls
	[645] = abyssPresets.cyanDestroyProjectiles, -- Tinytoma
	[646] = abyssPresets.yellowExplode, -- Brimstone Bombs
	[647] = abyssPresets.cyanElectricity, -- 4.5 Volt
	[652] = abyssPresets.blueFreeze, -- Cube Baby
	[663] = abyssPresets.cyanDestroyProjectiles, -- Tooth and Nail
	[683] = abyssPresets.grayBones, -- Bone Spurs
	[689] = abyssPresets.pinkMimic, -- Glitched Crown
	[690] = abyssPresets.blueConfuse, -- Belly Jelly
	[693] = "Trei Lăcuste cyan care distrug proiectilele inamicilor", -- The Swarm
	[698] = abyssPresets.normalTwo, -- Twisted Pair
	[721] = abyssPresets.pinkMimic, -- TMTRAINER
	[727] = abyssPresets.yellowExplode, -- Ghost Bombs
	[706] = "Oferă 16 lăcuste de diferite culori și efecte", -- Abyss
}

EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
