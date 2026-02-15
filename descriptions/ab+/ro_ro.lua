---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ro_ro"

-- init en_us table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Romanian"

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default"}, {name="inverted"}, {name="borderless"}}

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "Ceapa Tristă", "↑ {{Tears}} +0.7 Viteză de atac"}, -- The Sad Onion
	{"2", "Ochiul Interior", "↓ {{Tears}} x0.48 Viteză de atac#↓ {{Tears}} +3 Întârziere a lacrimilor #Isac trage cu 3 lacrimi odată"}, -- The Inner Eye
	{"3", "Lingura Îndoită", "Lacrimi Balistice"}, -- Spoon Bender
	{"4", "Cap de Greier", "↑ {{Damage}} +0.5 Daune#↑ {{Damage}} x1.5 Daune"}, -- Cricket's Head
	{"5", "Reflexia Mea", "↑ {{Range}} +1.5 Distanță#↑ +1 Mărimea Lacrimilor#↑ {{Shotspeed}} +0.6 Viteza atacului#Lacrimile primesc un efect bumerang"}, -- My Reflection
	{"6", "Numărul Unu", "↑ {{Tears}} +1.5 Viteză de Atac#↑ +0.76 Mărimea Lacrimilor#↓ {{Range}} -17.62 Distanță"}, -- Number One
	{"7", "Sângele Martirului", "↑ {{Damage}} +1 Daune"}, -- Blood of the Martyr
	{"8", "Fratele Bobby", "Trage cu Lacrimi Normale#Are 3.5 daune pe lacrimă"}, -- Brother Bobby
	{"9", "Skatole", "Toate muștele inamice sunt prietenoase"}, -- Skatole
	{"10", "Aureola de Muște", "+2 Muște Orbital#Blochează proiectilele inamicilor"}, -- Halo of Flies
	{"11", "1sus!", "↑ +1 Viață#Isac reînvie cu viață plină la moarte"}, -- 1up!
	{"12", "Ciuperca Magică", "↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.3 Viteză#↑ {{Damage}} +0.3 Daune#↑ {{Damage}} x1.5 Daune#↑ {{Range}} +5.25 Distanță#↑ +0.5 Înălțimea Lacrimilor#Crește mărimea#{{HealingRed}} Viață plină"}, -- Magic Mushroom
	{"13", "Virusul", "↓ {{Speed}} -0.1 Viteză#{{Poison}} Atingerea inamicilor îi otrăvește#{{BlackHeart}} Inamicii otrăviți pot oferi Inimi Negre"}, -- The Virus
	{"14", "Furie cu steroizi", "↑ {{Speed}} +0.6 Viteză#↑ {{Range}} +5.25 Distanță#↑ +0.5 Lungimea Lacrimilor"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} +1 Viață#{{HealingRed}} Viață plină"}, -- <3
	{"16", "Ficat Crud", "↑ {{Heart}} +2 Inimi#{{HealingRed}} Viață plină"}, -- Raw Liver
	{"17", "Cheia Schelet", "{{Key}} +99 Chei"}, -- Skeleton Key
	{"18", "Un Leu", "{{Coin}} +100 Bănuți"}, -- A Dollar
	{"19", "Boom!", "{{Bomb}} +10 Bombe"}, -- Boom!
	{"20", "Transcendență", "Zbori"}, -- Transcendence
	{"21", "Busola", "Arată iconițele pe hartă#Nu arată aspectul hărții"}, -- The Compass
	{"22", "Prânz", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă o inimă"}, -- Lunch
	{"23", "Cină", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă o inimă"}, -- Dinner
	{"24", "Desert", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă o inimă"}, -- Dessert
	{"25", "Mic Dejun", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă o inimă"}, -- Breakfast
	{"26", "Carne Stricată", "↑ {{Heart}} +1 Viață"}, -- Rotten Meat
	{"27", "Lingură de Lemn", "↑ {{Speed}} +0.3 Viteză"}, -- Wooden Spoon
	{"28", "Cureaua", "↑ {{Speed}} +0.3 Viteză"}, -- The Belt
	{"29", "Chiloții Mamei", "↑ {{Range}} +2.5 Distanță#Oferă 3-6 muște albastre"}, -- Mom's Underwear
	{"30", "Tocurile Mamei", "↑ {{Range}} +2.5 Distanță#Isac cauzează 24 daune la contact pe secundă"}, -- Mom's Heels
	{"31", "Rujul Mamei", "↑ {{Range}} +3.75 Distanță#{{UnknownHeart}} Oferă 1 inimă aleatorie"}, -- Mom's Lipstick
	{"32", "Cuier de Sârmă", "↑ {{Tears}} +0.7 Viteză de Atac"}, -- Wire Coat Hanger
	{"33", "Biblia", "{{Timer}} Zbori o cameră#{{MomsHeart}} Omoară Piciorul Mamei și Inima Mamei instant#{{Warning}} Îl Omoară pe Isac când este folosită pe Satan"}, -- The Bible
	{"34", "Cartea lui Belial", "{{AngelDevilChance}} +12.5% Șansă la camerele Demon/Înger când e ținută#{{Timer}} Primește pentru cameră:#↑ {{Damage}} +2 Daune"}, -- The Book of Belial
	{"35", "Necronomiconul", "Dă 40 daune tuturor inamicilor din cameră"}, -- The Necronomicon
	{"36", "Rahatul", "Depune un rahat și împinge inamicii#Poate fi pus langă o gaură și distrus cu o bombă pentru a face un pod"}, -- The Poop
	{"37", "Dl. Bum", "Aruncă o bombă mare sub Isac care dă 110 daune"}, -- Mr. Boom
	{"38", "Capul lui Tammy", "Trage 10 lacrimi într-un cerc împrejurul lui Isac#Lacrimile copiază efectele lui Isac, plus 25 daune"}, -- Tammy's Head
	{"39", "Sutienul Mamei", "Pietrifică toți inamicii din cameră 4 secunde"}, -- Mom's Bra
	{"40", "Kamikaze!", "Cauzează o explozie la locația lui Isac#Dă 40 daune"}, -- Kamikaze!
	{"41", "Tamponul Mamei", "{{Fear}} Înfricoșează toți inamicii din cameră 5 secunde"}, -- Mom's Pad
	{"42", "Capul Putred al lui Bob", "Folosind obiectul și trăgând într-o direcție aruncă capul#{{Poison}} Capul explodează la impact și otrăvește inamicii"}, -- Bob's Rotten Head
	{"43", "", "<item does not exist>"},
	{"44", "Teleportare!", "Îl teleportează pe Isac într-o cameră aleatorie, în afară de camerele SUNT O EROARE (I AM ERROR) "}, -- Teleport!
	{"45", "Yum, Inimă", "{{HealingRed}} Vindecă 1 inimă"}, -- Yum Heart
	{"46", "Picior Norocos", "↑ {{Luck}} +1 Noroc#+8% șansă de răsplată la completarea camerei #Șansă mai bună de câștig când pariezi"}, -- Lucky Foot
	{"47", "Telecomanda Doctorului", "{{Collectible168}} La folosire, începe să țintească o reticulă#O rachetă aterizează pe reticulă după 1.5 secunde#Dă 20x daunele lui Isac"}, -- Doctor's Remote
	{"48", "Săgeata lui Cupid", "Lacrimi pătrunzătoare"}, -- Cupid's Arrow
	{"49", "Shoop da Whoop!", "Următorul atac este înlocuit cu o rază#Dă 26x daunele lui Isac în 0.9 secunde"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} +1 Daune"}, -- Steven
	{"51", "Pentagramă", "↑ {{Damage}} +1 Daune#{{AngelDevilChance}} +10% șansă de cameră Diavol/Înger"}, -- Pentagram
	{"52", "Dr. Făt", "↓ {{Tears}} x0.4 Viteză de Atac#{{Bomb}} Isaac trage bombe în loc de lacrimi#{{Damage}} Acele bombe dau 5x daunele lui Isac + 30"}, -- Dr. Fetus
	{"53", "Magneto", "Lucrurile sunt atrase la Isaac"}, -- Magneto
	{"54", "Harta Comorilor", "Arată aspectul hărții#Nu arată iconițele camerelor"}, -- Treasure Map
	{"55", "Ochiul Mamei", "50% șansă să tragi o lacrimă extra în spate#{{Luck}} 100% șansă la 2 noroc"}, -- Mom's Eye
	{"56", "Accidentul Lămâii", "Varsă o baltă de fluid#Fluidul dă 24 daune pe secundă"}, -- Lemon Mishap
	{"57", "Admirație Distantă", "Muscă orbital de distanță medie#Dă 75 daune de contact pe secundă"}, -- Distant Admiration
	{"58", "Cartea Umbrelor", "{{Timer}} Invincibilitate pentru 10 secunde"}, -- Book of Shadows
	{"59", "", "<item does not exist>"},
	{"60", "Scara", "Îi permite lui Isac să traverseze găuri de o placă"}, -- The Ladder
	{"61", "", "<item does not exist>"},
	{"62", "Farmecul Vampirului", "{{HealingRed}} Omorârea a 13 inamici vindecă o jumătate de inimă"}, -- Charm of the Vampire
	{"63", "Bateria", "{{Battery}} Articolele Active pot fi supraîncărcate la două încărcări pline"}, -- The Battery
	{"64", "Vânzarea Steam", "{{Shop}} Articolele din magazin costă cu 50% mai puțin"}, -- Steam Sale
	{"65", "Cartea de Bucate a Anarhistului", "Apar 6 Bombe Troll lângă centrul camerei"}, -- Anarchist Cookbook
	{"66", "Clepsidra", "{{Slow}} Încetinește inamicii pentru 8 secunde"}, -- The Hourglass
	{"67", "Sora Maggy", "Trage lacrimi normale#Dă 3.5 daune pe lacrimă"}, -- Sister Maggy
	{"68", "Tehnologie", "Isac trage lasere în loc de lacrimi"}, -- Technology
	{"69", "Lapte cu Ciocolată", "{{Chargeable}} Lacrimi încărcabile#{{Damage}} Daunele se măresc odată cu timpul de încărcare, până la 4x#{{Tears}} Timpul de încărcare maxim este de 2.5x întârzierea lacrimilor"}, -- Chocolate Milk
	{"70", "Hormoni de Creștere", "↑ {{Speed}} +0.4 Viteză#↑ {{Damage}} +1 Daune"}, -- Growth Hormones
	{"71", "Mush Mini", "↑ {{Speed}} +0.3 Viteză#↑ +1.5 Mărimea lacrimilor#↑ Mărimea scade#↓ {{Range}} -4.25 Distanță#Crește mărimea lacrimilor și scade distanța = crește puțin distanța"}, -- Mini Mush
	{"72", "Rozariu", "{{SoulHeart}} +3 Inimi Suflet#{{Collectible33}} Biblia este adăugată tuturor grupurilor de articole"}, -- Rosary
	{"73", "Un Cub de Carne", "Lv1: Orbital#Lv2: Orbital care trage#Lv3: Băiatul Carne#Lv4: Super Băiatul Carne"}, -- Cube of Meat
	{"74", "Un Sfert", "{{Coin}} +25 Bănuți"}, -- A Quarter
	{"75", "PHD", "{{HealingRed}} Vindecă 2 inimi#{{Pill}} Oferă 1 pastilă#{{Pill}} Schimbă pastilele rele în pastile bune#{{BloodDonationMachine}} Mașina de Donație de Sânge dă mai mulți {{Coin}} Bănuți"}, -- PHD
	{"76", "Viziune X-Ray", "{{SecretRoom}} Deschide toate intrările camerelor secrete"}, -- X-Ray Vision
	{"77", "Micul Meu Unicorn", "{{Timer}} Primește pentru 6 secunde:#↑ {{Speed}} +0.28 Viteză#Invincibilitate#Isaac nu poate trage dar dă 40 daune de contact pe secundă"}, -- My Little Unicorn
	{"78", "Cartea Revelațiilor", "{{SoulHeart}} +1 Inimă Suflet#{{AngelDevilChance}} +17.5% șansă de cameră Diavol/Înger când este ținută#Folosirea articolului are o șansă mare să înlocuiască boss-ul etajului cu un Om-Cal (Horseman)"}, -- Book of Revelations
	{"79", "Marcajul", "↑ {{Speed}} +0.2 Viteză#↑ {{Damage}} +1 Daune#{{SoulHeart}} +1 Inimă Suflet"}, -- The Mark
	{"80", "Pactul", "↑ {{Tears}} +0.7 Viteză de Atac#↑ {{Damage}} +0.5 Daune#{{SoulHeart}} +2 Inimi Suflet"}, -- The Pact
	{"81", "Pisica Moartă", "↑ +9 Reînvieri#Isac reapare cu 1 container de inimă la moarte#{{Warning}} Setează containerele de inimi ale lui Isaac la 1 când este luat"}, -- Dead Cat
	{"82", "Stăpânul Gropii", "↑ {{Speed}} +0.3 Viteză#Isac poate zbura"}, -- Lord of the Pit
	{"83", "Cuiul", "Când este folosit:#{{SoulHeart}} +1 Inimă Suflet#{{Timer}} Primește pentru cameră:#↑ {{Damage}} +0.7 Daune#↓ {{Speed}} -0.18 Viteză#Isaac dă 40 daune de contact pe secundă#Îi permite lui Isaac să distrugă pietre când merge în ele"}, -- The Nail
	{"84", "Trebuie să Mergem mai Adânc!", "Deschide o trapă către următorul etaj#{{LadderRoom}} 10% șansă să deschidă o trapă strâmtă"}, -- We Need To Go Deeper!
	{"85", "Set de Cărți", "{{Card}} Oferă 1 carte"}, -- Deck of Cards
	{"86", "Dintele lui Monstro", "Monstro cade pe un inamic și dă 120 daune#{{Warning}} Monstro cade pe Isac dacă camera nu are inamici"}, -- Monstro's Tooth
	{"87", "Coarnele lui Loki", "25% șansă să tragi în 4 direcții#{{Luck}} 100% șansă la 7 noroc"}, -- Loki's Horns
	{"88", "Micul Dolofan", "Încarcă înainte în direcția în care Isac trage#Dă 52.5 daune de contact pe secundă"}, -- Little Chubby
	{"89", "Mușcătură de Păianjen", "{{Slow}} 25% șansă să tragă lacrimi încetinitoare#{{Luck}} 100% șansă la 15 noroc"}, -- Spider Bite
	{"90", "Mica Piatră", "↑ {{Tears}} +0.2 Viteză de Atac#↑ {{Damage}} +1 Daune#↓ {{Speed}} -0.2 Viteză"}, -- The Small Rock
	{"91", "Pălăria Speologului", "Arată tipul camerei alăturate cu camera următoare#{{SecretRoom}} Poate arăta Camerele Secrete și Super Secrete"}, -- Spelunker Hat
	{"92", "Super Bandajul", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă 1 inimă#{{SoulHeart}} +2 Inimi Suflet"}, -- Super Bandage
	{"93", "Gamekid-ul", "{{Timer}} Primește pentru 6.5 secunde:#Invincibilitate#Isac nu poate trage dar dă 40 daune de contact pe secundă#{{HealingRed}} Omorârea a 2 inamici vindecă jumătate de inimă#{{Fear}} Înfricoșează toți inamicii din cameră"}, -- The Gamekid
	{"94", "Sac de Bănuți", "{{Coin}} Oferă un bănuț aleator la fiecare 2 camere"}, -- Sack of Pennies
	{"95", "Robo-Bebeluș", "Trage cu lasere#Dă 3.5 daune pe împușcătură"}, -- Robo-Baby
	{"96", "Micul C.H.A.D.", "{{HalfHeart}} Oferă o jumătate de Inimă Roșie la fiecare 3 camere"}, -- Little C.H.A.D.
	{"97", "Cartea Păcatului", "Oferă un lucru aleator"}, -- The Book of Sin
	{"98", "Relicva", "{{SoulHeart}} Oferă 1 Inimă Suflet la fiecare 5-6 camere"}, -- The Relic
	{"99", "Micul Gish", "{{Slow}} Trage cu lacrimi încetinitoare#Dă 3.5 daune pe lacrimă"}, -- Little Gish
	{"100", "Micul Steven", "Trage cu lacrimi balistice#Dă 3.5 daune pe lacrimă"}, -- Little Steven
	{"101", "Aureola", "↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.3 Viteză#↑ {{Tears}} +0.2 Viteză de Atac#↑ {{Damage}} +0.3 Daune#↑ {{Range}} +0.25 Distanță#↑ +0.5 Mărimea Lacrimei"}, -- The Halo
	{"102", "Sticla de Pastile a Mamei", "{{Pill}} Oferă 1 pastilă"}, -- Mom's Bottle of Pills
	{"103", "Răceala Comună", "{{Poison}} 25% șansă să tragi lacrimi otrăvite#{{Luck}} 100% șansă la 12 noroc"}, -- The Common Cold
	{"104", "Parazitul", "Lacrimile se înjumătățesc la contact#Jumătățile de inimă dau jumătate daune"}, -- The Parasite
	{"105", "D6-le", "Realege piedestalul articolelor din cameră"}, -- The D6
	{"106", "Dl. Mega", "↑ {{Bomb}} x1.83 Daune ale bombelor#{{Bomb}} +5 Bombe"}, -- Mr. Mega
	{"107", "Foarfecele Roz", "{{Timer}} Primește în cameră:#Flight#Corpul lui Isac se separă de cap și atacă inamicii cu 82.5 daune de contact pe secundă"}, -- The Pinking Shears
	{"108", "Napolitana", "Reduce majoritatea daunelor luate la jumătate de inimă"}, -- The Wafer
	{"109", "Bani = Putere", "↑ {{Damage}} +0.04 Daune pentru fiecare {{Coin}} bănuț Isac îl are"}, -- Money = Power
	{"110", "Contactele Mamei", "↑ {{Range}} +0.25 Distanță#↑ +0.5 Mărimea lacrimilor#20% șansă să tragi cu lacrimi pietrificatoare#{{Luck}} 50% șansă la 20 noroc"}, -- Mom's Contacts
	{"111", "Fasolea", "{{Poison}} Dă 5 daune inamicilor apropiați și îi otrăvește#Otrava dă daunele lui Isac de 6 ori"}, -- The Bean
	{"112", "Îngerul Protector", "Orbital#Accelereză ceilalți orbitali#Blochează proiectilele#Dă 105 daune de contact pe secundă"}, -- Guardian Angel
	{"113", "Bebelușul Demon", "Trage în inamicii care se apropie de el#Dă 3 daune pe lacrimă"}, -- Demon Baby
	{"114", "Cuțitul Mamei", "Lacrimile lui Isac sunt înlocuite de un cuțit aruncabil#{{Damage}} Cuțitul dă 2x daunele lui Isaac când este ținut și 6x la cea mai mare distanță posibilă"}, -- Mom's Knife
	{"115", "Tabla Ouija", "Lacrimi balistice"}, -- Ouija Board
	{"116", "9 Volți", "{{Battery}} Încarcă automat prima bară a Articolelor Active#{{Battery}} Încarcă Articolul Activ când este luat"}, -- 9 Volts
	{"117", "Pasăre Moartă", "Când primești daune oferă o pasăre care atacă inamicii#Pasărea dă 4.3 daune de contact pe secundă"}, -- Dead Bird
	{"118", "Sulf Arzător", "↓ {{Tears}} x0.33 Viteză de Atac#{{Chargeable}} Lacrimile lui Isac sunt înlocuite de o rază de sânge încărcabilă#{{Damage}} Dă 13x Daunele lui Isaac în 0.9 secunde"}, -- Brimstone
	{"119", "Pungă cu Sânge", "↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.3 Viteză#{{HealingRed}} Vindecă 4 inimi"}, -- Blood Bag
	{"120", "Ciupercă Ciudată (Subțire)", "↑ {{Speed}} +0.3 Viteză#↑ {{Tears}} +1.7 Viteză de Atac#↓ {{Damage}} x0.9 Daune#↓ {{Damage}} -0.4 Daune"}, -- Odd Mushroom (Thin)
	{"121", "Ciupercă Ciudată (Largă)", "↑ {{EmptyHeart}} +1 Container gol de inimă#↑ {{Damage}} +0.3 Daune#↑ {{Range}} +0.25 Distanță#↑ +0.5 Mărimea lacrimilor#↓ {{Speed}} -0.1 Viteză"}, -- Odd Mushroom (Large)
	{"122", "Prostituata Babilonului", "Când ai o jumătate de Inimă Roșie sau mai puțin:#↑ {{Speed}} +0.3 Viteză#↑ {{Damage}} +1.5 Daune"}, -- Whore of Babylon
	{"123", "Manualul Monstrului", "{{Timer}} oferă un familiar aleator în cameră"}, -- Monster Manual
	{"124", "Pergamentele Mării Moarte", "Declanșează un efect aleator de Articol Activ"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bombă", "{{Bomb}} +5 Bombe#Bombe balistice"}, -- Bobby-Bomb
	{"126", "Lamă de Ras", "↑ {{Damage}} +1.2 Daune în cameră#{{Warning}} Dă 1 inimă de daune lui Isac#{{Heart}} elimină Inimile Roșii primele"}, -- Razor Blade
	{"127", "Uită-mă Acum", "Realege și restartează întregul etaj"}, -- Forget Me Now
	{"128", "Singur Mereu", "Muscă orbital cu rază lungă#Dă 30 daune de contact pe secundă"}, -- Forever Alone
	{"129", "Găleată de Untură", "↑ {{EmptyHeart}} +2 Containere goale de inimi#↓ {{Speed}} -0.2 Viteză#{{HealingRed}} Vindecă jumătate de inimă"}, -- Bucket of Lard
	{"130", "Un Ponei", "Când este ținut:#{{Speed}} Setează Viteza ta la cel puțin 1.5#Zbori#După folosire, aleargă în direcția mișcărilor lui Isaac"}, -- A Pony
	{"131", "Plasă cu Bombe", "{{Bomb}} Oferă 1 bombă în fiecare 3 camere"}, -- Bomb Bag
	{"132", "O Bucată de Cărbune", "{{Damage}} Lacrimile dau mai multe daune cu distanța parcursă este mai mare"}, -- A Lump of Coal
	{"133", "Laba lui Guppy", "{{SoulHeart}} Convertește 1 container de inimă în 3 Inimi Suflet"}, -- Guppy's Paw
	{"134", "Coada lui Guppy", "{{Chest}} 33% șansă să schimbe răsplata camerei cu o cutie#33% șansă să nu apară nimic după ce este goală camera"}, -- Guppy's Tail
	{"135", "Perfuzie", "{{Coin}} Îl rănește pe Isac jumătate de inimă și apar 1-2 bănuți#{{Heart}} Elimină Inimile Roșii primele"}, -- IV Bag
	{"136", "Cel Mai Bun Prieten", "Oferă o momeală Isac care atrage inamicii și explodează după 5 secunde"}, -- Best Friend
	{"137", "Detonator Telecomandă", "{{Bomb}} +5 Bombe#Bombele lui Isac nu mai explodează automat#După folosire, detonează toate bombele lui Isaac odată"}, -- Remote Detonator
	{"138", "Stigmata", "↑ {{Heart}} +1 Viață#↑ {{Damage}} +0.3 Daune"}, -- Stigmata
	{"139", "Geanta Mamei", "{{Trinket}} Isac poate ține 2 breloace"}, -- Mom's Purse
	{"140", "Blestemul lui Bob", "{{Bomb}} +5 Bombe#{{Poison}} Bombele lui Isac otrăvesc inamicii prinși în explozie "}, -- Bob's Curse
	{"141", "Băiatul Misterios", "{{Coin}} Apar 7 bănuți aleatorii"}, -- Pageant Boy
	{"142", "Scapular", "{{SoulHeart}} Isac primește 1 Inimă Suflet când are jumătate de inimă#Se poate întâmpla doar o dată pe cameră#Ieșind și reintrând în cameră permite efectului să se declanșeze din nou"}, -- Scapular
	{"143", "Minge Rapidă", "↑ {{Speed}} +0.3 Viteză#↑ {{Shotspeed}} +0.2 Viteza Lacrimilor"}, -- Speed Ball
	{"144", "Prieten Vagabond", "{{Coin}} Ia bănuții de lângă el#Apar lucruri aleatorii la fiecare 3-4 bănuți"}, -- Bum Friend
	{"145", "Capul lui Guppy", "Apar 2-4 muște albastre"}, -- Guppy's Head
	{"146", "Carte de Rugăciuni", "{{EternalHeart}} +1 Inimă Eternală"}, -- Prayer Card
	{"147", "Topor Crestat", "{{Timer}} Pentru cameră, Isac poate sparge pietre și pereți de Cameră Secretă mergând în ei"}, -- Notched Axe
	{"148", "Infestație", "După primirea unei daune apar 1-3 muște albastre"}, -- Infestation
	{"149", "Ipecac", "↑ {{Damage}} +40 Daune#↓ {{Tears}} x0.5 Viteză de Atac#↓ {{Tears}} +10 Întârziere a Lacrimilor#Lacrimile lui Isaac sunt trase într-o arcă#{{Poison}} Lacrimile explodează și otrăvesc inamicii unde cad"}, -- Ipecac
	{"150", "Dragoste Dură", "{{Damage}} 10% șansă să tragi cu un dinte care dă 3.2x daunele lui Isac#{{Luck}} 100% șansă la 9 noroc"}, -- Tough Love
	{"151", "Mulligan-ul", "Lacrimile au o șansă de 1/6 să facă să apară o muscă albastră când nimeresc un inamic"}, -- The Mulligan
	{"152", "Tehnologie 2", "↓ {{Tears}} x0.5 Viteză de Atac#↓ {{Damage}} x0.65 Daune#Înlocuiește lacrimile ochiului drept al lui Isaac cu un laser continuu#{{Damage}} Dă 3x daunele lui Isaac pe secundă"}, -- Technology 2
	{"153", "Păianjenul Mutant", "↓ {{Tears}} x0.48 Viteză de Atac#↓ {{Tears}} +3 Întârziere a lacrimilor#Isac trage 4 lacrimi odată"}, -- Mutant Spider
	{"154", "Coajă Chimică", "↑ {{Damage}} +2 Daune pentru ochiul stâng"}, -- Chemical Peel
	{"155", "Peeper-ul", "Plutește prin cameră#Dă 17 daune de contact pe secundă"}, -- The Peeper
	{"156", "Obicei", "{{Battery}} Primind daune adaugă 1 încărcare Articolului Activ"}, -- Habit
	{"157", "Poftă Sângeroasă", "↑ {{Damage}} După primirea unei daune primești mai multe Daune#Se adaugă până la 6 ori pe etaj#Ține tot etajul"}, -- Bloody Lust
	{"158", "Mingea de Cristal", "Oferă o {{SoulHeart}} Inimă Suflet, {{Rune}} rună sau {{Card}} carte#{{Timer}} Vezi toată harta etajului (în afară de {{SuperSecretRoom}} Camera Super Secretă)"}, -- Crystal Ball
	{"159", "Spiritul Nopții", "Lacrimi Spectrale#Zbori"}, -- Spirit of the Night
	{"160", "Crapă Cerul", "Apar 5 raze de lumină lângă inamici#Fiecare rază dă 8x daunele lui Isac + 160 în 0.8 secunde"}, -- Crack the Sky
	{"161", "Ankh", "{{Player4}} Reînvii ca ??? (Bebelușul Albastru) după moarte"}, -- Ankh
	{"162", "Crucea Celtică", "După primirea unei Daune Isac are 20% șansă să devină invincibil#{{Luck}} 100% șansă la 27 noroc"}, -- Celtic Cross
	{"163", "Bebelușul Fantomă", "Trage Lacrimi Fantomatice#Dă 3.5 daune pe lacrimă"}, -- Ghost Baby
	{"164", "Lumânarea", "Aruncă o flacără albastră#Dă daune de contact, blochează lacrimile inamicilor, și dispare după 2 secunde"}, -- The Candle
	{"165", "Pisica-cu-9-cozi", "↑ {{Damage}} +1 Daune#↑ {{Shotspeed}} +0.23 Viteza Lacrimilor"}, -- Cat-o-nine-tails
	{"166", "D20", "Realege toate lucrurile (pickups) din cameră"}, -- D20
	{"167", "Bebelușul Harlequin", "Trage 2 lacrimi în formă de V#Dă 4 daune pe lacrimă"}, -- Harlequin Baby
	{"168", "Fătul Epic", "În loc să tragă cu lacrimi, țintește o reticulă#O rachetă cade pe reticulă după 1.5 secunde#{{Damage}} Rachetele dau 20x daunele lui Isaac"}, -- Epic Fetus
	{"169", "Polifem", "↑ {{Damage}} +4 Daune#↑ {{Damage}} x2 Daune#↓ {{Tears}} x0.48 Viteză de Atac#↓ {{Tears}} +3 Întârzierea Lacrimilor#Lacrimilă intră prin inamicii omorâți dacă mai există daune"}, -- Polyphemus
	{"170", "Tăticul Picioare-Mari", "Calcă un inamic apropiat la fiecare 4 secunde#Dă 40 daune pe secundă"}, -- Daddy Longlegs
	{"171", "Fundul Păianjenului", "{{Slow}} Încetinește inamicii pentru 4 secunde#Dă 10 daune tuturor inamicilor"}, -- Spider Butt
	{"172", "Pumnalul de Sacrificii", "Orbital#Blochează împușcăturile inamicilor#Dă 225 daune de contact pe secundă"}, -- Sacrificial Dagger
	{"173", "Mitră", "{{SoulHeart}} 50% șansă ca Inimile Roșii apar ca Inimi Suflet"}, -- Mitre
	{"174", "Bebeluș Curcubeu", "Trage lacrimi aleatorii#Dă 3-5 daune pe lacrimă"}, -- Rainbow Baby
	{"175", "Cheile Tatălui", "Deschide toate ușile din cameră, incluzând {{SecretRoom}}{{SuperSecretRoom}}Camerele Secrete, {{ChallengeRoom}}{{BossRushRoom}}Camerele Provocare, și ușa lui Mega Satan"}, -- Dad's Key
	{"176", "Celule Stem", "↑ {{Heart}} +1 Viață#↑ {{Shotspeed}} +0.16 Viteza Lacrimei"}, -- Stem Cells
	{"177", "Păcăneaua Portabilă", "{{Coin}} Plătești 1 bănuț pentru o șansă să apară un lucru"}, -- Portable Slot
	{"178", "Apă Sfințită", "Când primești o daună, varsă o baltă de lichid#Lichidul provoacă 24 de daune pe secundă"}, -- Holy Water
	{"179", "Soartă", "{{EternalHeart}} +1 Inimă Eternală#Zbori"}, -- Fate
	{"180", "Fasolea Neagră", "Isaac se bășește când este vătămat#{{Poison}} Bășina otrăvește inamicii"}, -- The Black Bean
	{"181", "Ponei Alb", "{{Speed}} Setează viteza ta la cel puțin 1.5#Zbori când îl ții#Folosirea articolului te aruncă în direcția în care Isaac merge, lăsând în urmă raze de lumină"}, -- White Pony
	{"182", "Inima Sacră", "↑ {{Heart}} +1 Viață#↑ {{Damage}} x2.3 Daune#↑ {{Damage}} +1 Daune#↑ {{Range}} +0.38 Distanță#↑ +0.75 Mărimea lacrimilor#↓ {{Tears}} -0.4 Viteză de atac#↓ {{Shotspeed}} -0.25 Viteza lacrimii#{{HealingRed}} Viață plină#Lacrimi balistice"}, -- Sacred Heart
	{"183", "Scobitori", "↑ {{Tears}} +0.7 Viteză de atac#↑ {{Shotspeed}} +0.16 Viteza lacrimilor"}, -- Tooth Picks
	{"184", "Sfântul Graal", "↑ {{Heart}} +1 Viață#Zbori"}, -- Holy Grail
	{"185", "Porumbel Mort", "Inimi fantomatice#Zbori"}, -- Dead Dove
	{"186", "Drepturi de Sânge", "Provoacă 40 de daune fiecărui inamic#{{Warning}} Provoacă 1 inimă de daune lui Isaac#{{Heart}} Consumă mai întâi inimile roșii"}, -- Blood Rights
	{"187", "Mingea de Păr a lui Guppy", "Mișcându-te arunci mingea#Mingea crește când omoară un inamic#Provoacă mai multe daune cu cât crește"}, -- Guppy's Hairball
	{"188", "Abel", "Oglindește mișcările lui Isaac#Trage spre Isaac#Provoacă 3.5 daune pe lacrimă"}, -- Abel
	{"189", "SMB Super Fan", "↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.2 Viteză#↑ {{Tears}} +0.2 Viteză de atac#↑ {{Damage}} +0.3 Daune#↑ {{Range}} +0.5 Distanță#↑ +1 Mărimea lacrimilor#{{HealingRed}} Viață plină"}, -- SMB Super Fan
	{"190", "Pyro", "{{Bomb}} +99 Bombe"}, -- Pyro
	{"191", "Bancnota de 3 Lei", "Lacrimile lui Isaac primesc un efect aleator la fiecare 2-3 secunde"}, -- 3 Dollar Bill
	{"192", "Telepatie pentru Proști", "{{Timer}} Lacrimi balistice pentru cameră"}, -- Telepathy For Dummies
	{"193", "CARNE!", "↑ {{Heart}} +1 Viață#↑ {{Damage}} +0.3 Daune"}, -- MEAT!
	{"194", "Mingea 8 Magică", "↑ {{Shotspeed}} +0.16 Viteza lacrimilor#{{Card}} Oferă o carte"}, -- Magic 8 Ball
	{"195", "Portofelul Mamei", "{{Pill}} Apar 4 pastile"}, -- Mom's Coin Purse
	{"196", "Squeezy", "↑ {{Tears}} +0.4 Viteză de atac#{{SoulHeart}} Apar 2 inimi suflet"}, -- Squeezy
	{"197", "Sucul lui Iisus", "↑ {{Damage}} +0.5 Daune#↑ {{Range}} +0.25 Distanță#↑ +0.5 Mărimea lacrimilor"}, -- Jesus Juice
	{"198", "Cutie", "Oferă 1 obiect din fiecare tip"}, -- Box
	{"199", "Cheia Mamei", "{{Key}} +2 chei#Cuferele conțin mai multe obiecte"}, -- Mom's Key
	{"200", "Fardul Mamei", "{{Charm}} 10% șansă să tragi lacrimi fermecătoare#{{Luck}} 100% șansă la 27 noroc"}, -- Mom's Eyeshadow
	{"201", "Țeavă din Fier", "↑ {{Damage}} +0.3 Daune#{{Confusion}} 10% șansă să tragi cu lacrimi contondente#{{Luck}} 100% șansă la 27 noroc"}, -- Iron Bar
	{"202", "Atingerea lui Midas", "Atingând inamicii îi pietrifică și îi transformă în aur#Isac dă daune de contact bazate pe numărul de bănuți#{{Coin}} Omorând un inamic auriu face să apară bănuți#Rahatul lui Isaac are o șansă mare să fie auriu"}, -- Midas' Touch
	{"203", "Humbleing Bundle", "Obiectele care apar sunt dublate dacă este posibil"}, -- Humbleing Bundle
	{"204", "Borsetă", "Când primești orice daună, ai 50% șansă să apară un obiect aleatoriu"}, -- Fanny Pack
	{"205", "Priză Ascuțită", "{{Battery}} Folosind un articol activ neîncărcat, îl încarcă cu costul a 2 inimi#Funcționează doar când articolul nu are nicio bară încărcată"}, -- Sharp Plug
	{"206", "Ghilotină", "↑ {{Tears}} -1 Întârziere a lacrimilor#↑ {{Damage}} +1 Daune#Capul lui Isaac devine un orbital care trage, nu primește daune și provoacă 105 daune de contact pe secundă"}, -- Guillotine
	{"207", "Minge din Bandaje", "Lv1: Orbital#{{Charm}} Lv2: Orbital care trage lacrimi fermecătoare#{{Charm}} Lv3: Fata Bandaj#{{Charm}} Lv4: Super Fata Bandaj"}, -- Ball of Bandages
	{"208", "Cureaua Campionului", "↑ {{Damage}} +1 Daune#Șansa de inamic campion crește de la 5% la 20%#Nu crește șansa de boși campioni"}, -- Champion Belt
	{"209", "Bombe Fund", "{{Bomb}} +5 bombe#{{Confusion}} Exploziile zdruncină și provoacă daune fiecărui inamic din cameră"}, -- Butt Bombs
	{"210", "Frunză Roasă", "După 1 secundă de inactivitate, Isaac devine invincibil"}, -- Gnawed Leaf
	{"211", "Bebeluș-păianjel", "După ce primești o daună, apar 1-2 păianjeni albaștri"}, -- Spiderbaby
	{"212", "Zgarda lui Guppy", "50% șansă să reînvii cu o jumătate de inimă la moarte"}, -- Guppy's Collar
	{"213", "Contact Pierdut", "↓ {{Shotspeed}} -0.15 Viteza lacrimilor#Lacrimile lui Isaac distrug lacrimile inamice"}, -- Lost Contact
	{"214", "Anemic", "↑ {{Range}} +5 Distanță#{{Timer}} După ce primești o daună, Isaac lasă o dâră de lichid sângeriu în cameră#Lichidul provoacă 6 daune pe secundă"}, -- Anemic
	{"215", "Cap de Capră", "{{AngelDevilChance}} 100% șansă de cameră Demon/Înger"}, -- Goat Head
	{"216", "Robe Ceremoniale", "↑ {{Damage}} +1 Daune#{{BlackHeart}} +3 Inimi Negre"}, -- Ceremonial Robes
	{"217", "Peruca Mamei", "{{HealingRed}} Vindecă 1 inimă#5% șansă să apară un păianjen albastru când tragi lacrimi#{{Luck}} 100% șansă la 10 noroc"}, -- Mom's Wig
	{"218", "Placentă", "↑ {{Heart}} +1 Viață#{{HealingRed}} 50% șansă să vindeci jumătate de inimă în fiecare minut"}, -- Placenta
	{"219", "Bandaj Vechi", "↑ {{EmptyHeart}} +1 Container gol de inimă#{{Heart}} Luând daune are o șansă de 10% să apară o Inimă Roșie"}, -- Old Bandage
	{"220", "Bombe Triste", "{{Bomb}} +5 Bombe#Bombele lui Isac trag 10 lacrimi într-un cerc când explodează"}, -- Sad Bombs
	{"221", "Ciment de Cauciuc", "Lacrimile lui Isac sar din inamici și din obstacole"}, -- Rubber Cement
	{"222", "Anti-Gravitație", "↑ {{Tears}} -2 Întârzierea Lacrimilor#Ținerea unui buton de tragere face ca lacrimile să plutească în aer#Eliberarea unui buton de tragere eliberează lacrimile în direcția în care au fost trase"}, -- Anti-Gravity
	{"223", "Piroman", "{{Bomb}} +5 Bombe#Imunitate la explozii, valuri de pietre, și atacuri de picior#{{HealingRed}} Fiind atins de o explozie vindecă 1 inimă"}, -- Pyromaniac
	{"224", "Corpul Greierului", "↑ {{Tears}} -1 Întârzierea Lacrimilor#↑ {{Tearsize}} x1.2 Mărimea Lacrimilor#↓ {{Range}} -10 Distanță#Lacrimile se despart în 4 când lovesc#Sferturile de lacrimi dau jumătate de daune"}, -- Cricket's Body
	{"225", "Șchiopul", "{{SoulHeart}} Luând orice daună are o șansă să facă să apară o Inimă Suflet#{{HalfHeart}} Inamicii au o șansă să dea o Inimă Roșie la moarte"}, -- Gimpy
	{"226", "Lotusul Negru", "↑ {{Heart}} +1 Viață#{{SoulHeart}} +1 Inimă Suflet#{{BlackHeart}} +1 Inimă Neagră"}, -- Black Lotus
	{"227", "Pușculița Porcușor", "{{Coin}} +3 Bănuți#{{Coin}} La primirea oricărei daune apar 1-2 bănuți"}, -- Piggy Bank
	{"228", "Parfumul Mamei", "↑ {{Tears}} -1 Întârzierea Lacrimilor#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"}, -- Mom's Perfume
	{"229", "Plămânul lui Monstro", "↓ {{Tears}} x0.23 Viteză de Atac#{{Chargeable}} Lacrimile sunt încărcate ți trase într-un atac de tip shotgun"}, -- Monstro's Lung
	{"230", "Abaddon", "↑ {{Speed}} +0.2 Viteză#↑ {{Damage}} +1.5 Daune#↓ {{EmptyHeart}} Scoate toate containerele de inimă#{{BlackHeart}} +6 Inimi Negre#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"}, -- Abaddon
	{"231", "Minge din Smoală", "{{Slow}} 10% șansă să tragi cu lacrimi încetinitoare#{{Luck}} 100% șansă la 18 noroc#{{Slow}} Isaac lasă o dâră de fluid încetinitor"}, -- Ball of Tar
	{"232", "Cronometru", "↑ {{Speed}} +0.3 Viteză#{{Slow}} Primirea oricărei daune încetinește toți inamicii din cameră permanent"}, -- Stop Watch
	{"233", "Planetă mică", "↑ +7 Mărimea lacrimilor#Inimi fantomatice#Lacrimile lui Isac orbitează în jurul lui"}, -- Tiny Planet
	{"234", "Infestare 2", "Omorând un inamic face să apară un păianjen albastru"}, -- Infestation 2
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Atingând un inamic îl transformă într-un rahat"}, -- E. Coli
	{"237", "Atingerea Morții", "↑ {{Damage}} +1.5 Daune#↑ {{Tearsize}} x2 Mărimea lacrimilor#↓ {{Tears}} -0.3 Viteză de Atac#Lacrimi pătrunzătoare"}, -- Death's Touch
	{"238", "Piesă de cheie 1", "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} +25% șansă la cameră Înger#{{EternalHeart}} +2% șansă pentru Inimi Eterne"}, -- Key Piece 1
	{"239", "Piesă de cheie 2", "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} +25% șansă la cameră Înger#{{EternalHeart}} +2% șansă pentru Inimi Eterne"}, -- Key Piece 2
	{"240", "Tratament Experimental", "↑ Crește 4 statistici aleatorii#↓ Scade 2 statistici aleatorii"}, -- Experimental Treatment
	{"241", "Contractul de Dedesubt", "Dublează toate recompensele la golirea camerelor#33% șansă de nici o recompensă la golirea camerei"}, -- Contract from Below
	{"242", "Infamie", "50% șansă să blochezi împușcăturile inamicilor"}, -- Infamy
	{"243", "Scutul Treimii", "Blochează împușcăturile inamicilor care vin din direcția în care Isac trage"}, -- Trinity Shield
	{"244", "Tehn.5", "Ocazional trage lasere în adiție lacrimilor lui Isac"}, -- Tech.5
	{"245", "20/20", "Isac trage cu 2 lacrimi odată"}, -- 20/20
	{"246", "Hartă Albastră", "{{SecretRoom}} Arată locațiile camerelor secrete pe hartă"}, -- Blue Map
	{"247", "CMMP!", "Familiarii dau daune duble"}, -- BFFS!
	{"248", "Mintea Stupului", "Păianjenii și muștele albastre dau daune duble"}, -- Hive Mind
	{"249", "Sunt Opțiuni", "Îi permite lui Isac să aleagă dintre 2 articole după ce bate un șef"}, -- There's Options
	{"250", "Bombe Bogo", "{{Bomb}} Toate bombele de pe jos devin duble"}, -- Bogo Bombs
	{"251", "Pachetul Începătorului", "{{Card}} Oferă 1 carte când îl iei#Isac poate căra 2 cărți#Toate pastilele devin cărți"}, -- Starter Deck
	{"252", "Mica Punguță", "{{Pill}} Oferă 1 pastilă când îl iei#Isac poate căra 2 pastile#Toate cărțile devin pastile"}, -- Little Baggy
	{"253", "Crusta Magică", "↑ {{Heart}} +1 Viață#↑ {{Luck}} +1 Noroc"}, -- Magic Scab
	{"254", "Cheag de Sânge", "↑ {{Damage}} +1 Daune pentru ochiul stâng#↑ {{Range}} +5 Distanță pentru ochiul stâng#↑ +0.5 Mărimea Lacrimilor"}, -- Blood Clot
	{"255", "Șurub", "↑ {{Tears}} +0.5 Viteză de Atac#↑ {{Shotspeed}} +0.2 Viteza Atacurilor"}, -- Screw
	{"256", "Bombe Fierbinți", "{{Bomb}} +5 Bombe#{{Burning}} Bombele lui Isac lasă o flacără unde explodează"}, -- Hot Bombs
	{"257", "Mintea de Foc", "{{Burning}} Lacrimile lui Isac dau foc inamicilor#10% șansă ca lacrimile să explodeze pe inamici la impact#{{Luck}} 100% șansă la 13 noroc#{{Warning}} Explozia îl poate răni pe Isaac"}, -- Fire Mind
	{"258", "Nr. Lipsă", "Schimbă toate articolele și statisticile lui Isac când îl iei, la fiecare nou etaj"}, -- Missing No.
	{"259", "Materie Neagră", "↑ {{Damage}} +1 Daune#{{Fear}} 33% șansă să tragi lacrimi înfricoșătoare#{{Luck}} 100% șansă la 20 noroc"}, -- Dark Matter
	{"260", "Lumânarea Neagră", "{{CurseBlind}} Imunitate la blesteme#{{BlackHeart}} +1 Inimă Neagră#{{AngelDevilChance}} +15% șansă la camere Înger/Demon"}, -- Black Candle
	{"261", "Proptoza", "↑ {{Damage}} x2 Daune#↓ Lacrimile dau mai puține daune cu cât de departe ajung"}, -- Proptosis
	{"262", "Pagina Dispărută 2", "{{BlackHeart}} +1 Inimă Neagră#Luând daune până la 1 inimă dăunează toți inamicii din cameră"}, -- Missing Page 2
	{"263", "", "<item does not exist>"},
	{"264", "Muscă Deșteaptă", "Orbital#Atacă inamicii când Isac primește daune#Dă 22.5 daune de contact pe secundă"}, -- Smart Fly
	{"265", "Bebeluș Uscat", "10% șansă să dai daune tuturor inamicilor din cameră când este lovit de o lacrimă inamică"}, -- Dry Baby
	{"266", "Sac Suculent", "{{Slow}} Lasă un fluid încetinitor#Apar 1-2 păianjeni după golirea unei camere"}, -- Juicy Sack
	{"267", "Robo-Bebeluș 2.0", "Trage cu lasere#Dă 3.5 daune pe atac#Se mișcă în direcția în care Isac trage"}, -- Robo-Baby 2.0
	{"268", "Bebeluș Putrezit", "Apar muște albastre când Isac trage"}, -- Rotten Baby
	{"269", "Bebeluș Fără Cap", "Lasă un fluid care dă 6 daune pe secundă"}, -- Headless Baby
	{"270", "Lipitoare", "Urmărește inamicii#{{HealingRed}} Îl vindecă pe Isac cu jumătate de inimă roșie când omoară un inamic#Dă 3.2 daune pe secundă"}, -- Leech
	{"271", "Sac Misterios", "Oferă un lucru aleator la fiecare 5-6 camere"}, -- Mystery Sack
	{"272", "BBF", "Muscă prietenoasă explozivă#Explozia dă 60 daune#{{Warning}} Explozia îl poate răni pe Isac"}, -- BBF
	{"273", "Creierul lui Bob", "Se aruncă în direcția în care Isac trage#Explodează când nimerește un inamic#{{Poison}} Explozia dă 60 daune și otrăvește inamicii#{{Warning}} Explozia îl poate răni pe Isaac"}, -- Bob's Brain
	{"274", "Cel mai bun Prieten", "După luarea unei daune oferă un orbital cu distanță medie pentru cameră#Dă 75 daune de contact pe secundă"}, -- Best Bud
	{"275", "Micul Brimstone", "{{Chargeable}} Familiar care încarcă și aruncă cu {{Collectible118}} Brimstone#Provoacă 31.5 daune pe durata a 31.5 de secunde"}, -- Lil Brimstone
	{"276", "Inima lui Isac", "Isac devine invincibil#Oferă un familiar inimă ce îl urmărește pe Issaac#{{Warning}} Dacă familiarul este lovit, Isaac va fi vătămat"}, -- Isaac's Heart
	{"277", "Micul Bântuit", "{{Fear}} Urmărește și provoacă teamă inamicilor#Provoacă 4 daune pe secundă"}, -- Lil Haunt
	{"278", "Cerșetor Întunecat", "{{Heart}} Culege inimile roși din apropiere#{{SoulHeart}} Oferă Inimi Suflet sau păianjeni pentru fiecare 1.5 inimi colectate"}, -- Dark Bum
	{"279", "Fan Mare", "Orbital mare#Provoacă 30 de daune de contact pe secundă"}, -- Big Fan
	{"280", "Sissy Picioare Mari", "Oferă păianjeni albaștrii aleatoriu în camerele neterminate"}, -- Sissy Longlegs
	{"281", "Sac de Box", "Familiar momeală#Inamicii sunt atrași de el în locul Isac"}, -- Punching Bag
	{"282", "Cum să sari", "Isac poate sări peste găuri și obstacole"}, -- How to Jump
	{"283", "D100", "Înlocuiește pickup-urile, piedestalele din cameră și itemele pasive ale lui Isac"}, -- D100
	{"284", "D4", "Înlocuiește toate itemele pasive a le lui Isac"}, -- D4
	{"285", "D10", "Înlocuiește inamicii din cameră cu unii mai slabi"}, -- D10
	{"286", "Carte Albă", "Declanșează efectul cărții sau runei pe care Isac o deține fără a o folosi"}, -- Blank Card
	{"287", "Cartea Secretelor", "{{Timer}} Oferă pe durata etajului un efect dintre:#{{Collectible54}} Harta Comorilor#{{Collectible21}} Busolă#{{Collectible246}} Hartă Albastră"}, -- Book of Secrets
	{"288", "Cutie cu Păianjeni", "Oferă 1-4 păianjeni albaștrii"}, -- Box of Spiders
	{"289", "Lumânare Roșie", "Aruncă cu un foc roșu#Cauzează pagube, blochează proiectilele și dispare după a cauzat pagube sau a blocat 5 proiectile"}, -- Red Candle
	{"290", "Borcanul", "{{Heart}} Colecteză până la 4 inimi roșii când viața este plină#Aruncă toate inimile colectate când este folosit"}, -- The Jar
	{"291", "Flush!", "Transformă toți inamicii non-boss în rahat#Omoară instant toți inamicii și bossi rahat"}, -- Flush!
	{"292", "Biblie Satanică", "{{BlackHeart}} +1 Inimă Neagră"}, -- Satanic Bible
	{"293", "Capul lui Krampus", "{{Collectible118}} Trage cu o undă Brimstone în 4 direcții#Fiecare undă cauzează 440 de daune pe perioada a 1.33 de secunde"}, -- Head of Krampus
	{"294", "Lintea", "Aruncă proiectilele și inamicii#10% șansă să se transforme în {{Collectible484}} Stai ce? când este înlocuit cu alt item și colectat din nou"}, -- Butter Bean
	{"295", "Degete Magice", "Provoacă 2x daunele lui Isac tuturor inamicilor#{{Coin}} Costă 1 bănuț"}, -- Magic Fingers
	{"296", "Convertor", "{{Heart}} Convertează 2 Inimi Suflet/Negre într-un container"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Cutia Pandorei", "{{NoLB}}Apar recompense în funcție de etaj:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Un Articol de Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Articole de Boss#W2: {{Collectible33}} Biblia#???/Vid: Nimic#Sheol: Articol-Diavol + 1{{BlackHeart}}#Cathe: Articol-Înger + 1{{EternalHeart}}#{{NoLB}}Cameră Neagră: Deblocabile {{Collectible523}} Cutia Mișcătoare#Cutie: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Șchiopătarea Unicornului", "{{Timer}} Primește pentru 6 secunde:#↑ {{Speed}} +0.28 Speed#Invincibilitate#Isac nu poate să tragă (Fără daune de contact)"}, -- Unicorn Stump
	{"299", "Taur", "↓ {{Speed}} -0.3 Viteză#↑ {{Speed}} Primește viteză încet în camere ostile#La viteza 2 , Isac devine invincibil și dă daune de contact#După aceea, pierde boostul de viteză Taur în cameră"}, -- Taurus
	{"300", "Berbec", "↑ {{Speed}} +0.25 Viteză#Atingând inamicii dai daune de contact"}, -- Aries
	{"301", "Rac", "{{SoulHeart}} +3 inimi suflet#Când primești daune, toate daunele viitoare în cameră sunt reduse la o jumătate de inimă"}, -- Cancer
	{"302", "Leu", "Te mărești#Isac poate distruge pietre când intră în ele"}, -- Leo
	{"303", "Fecioară", "Când primește daune, Isaac poate deveni invincibil temporar#{{Luck}} 100% șansă la 10 noroc#{{Pill}} Convertește pastilele negative în unele pozitive"}, -- Virgo
	{"304", "Balanță", "+6 {{Coin}} bănuți, {{Bomb}} bombe și {{Key}} chei#Balansează statisticile lui Isaac#Schimbările următoare de statistici vor fi împărțite tuturor statisticilor"}, -- Libra
	{"305", "Scorpion", "{{Poison}} Lacrimi otrăvite"}, -- Scorpio
	{"306", "Săgetător", "↑ {{Speed}} +0.2 Viteză#Lacrimi pătrunzătoare"}, -- Sagittarius
	{"307", "Capricorn", "↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.1 Viteză#↑ {{Tears}} -1 Întârziere a lacrimilor#↑ {{Damage}} +0.5 Daune#↑ {{Range}} +1.5 Distanță#+1 {{Coin}} ban, {{Bomb}} bombă și {{Key}} cheie"}, -- Capricorn
	{"308", "Vărsător", "Isaac lasă o dâră de lichid#Lichidul provoacă 6 daune pe secundă"}, -- Aquarius
	{"309", "Pești", "↑ {{Tears}} -1 Întârziere a lacrimilor#↑ {{Tearsize}} x1.25 Mărimea lacrimilor#Mărește împingerea lacrimilor"}, -- Pisces
	{"310", "Rimelul Evei", "↑ {{Damage}} x2 Daune#↓ {{Tears}} x0.5 Viteză de atac#↓ {{Shotspeed}} -0.5 Viteza lacrimilor"}, -- Eve's Mascara
	{"311", "Umbra lui Iuda", "{{Player12}} La moarte reînvii ca Iuda-ul Negru cu x2 daune"}, -- Judas' Shadow
	{"312", "Papionul lui Maggy", "↑ {{Heart}} +1 Viață#{{HealingRed}} Vindecă 1 inimă#Toate Inimile Roșii vindecă dublu valoarea lor"}, -- Maggy's Bow
	{"313", "Mantaua Sfântă", "Neagă primul atac primit o dată pe cameră"}, -- Holy Mantle
	{"314", "Coapse de Tunet", "↑ {{Heart}} +1 Viață#↓ {{Speed}} -0.4 Viteză#Isac poate distruge pietre când merge în ele"}, -- Thunder Thighs
	{"315", "Atractor Ciudat", "Lacrimile lui Isac atrag inamici, lucruri și bibelouri"}, -- Strange Attractor
	{"316", "Ochi Blestemat", "Val încărcat de 4 lacrimi#{{Warning}} Primind daune când e încărcat parțial îl teleportează pe Isaac într-o cameră aleatorie"}, -- Cursed Eye
	{"317", "Lichid Misterios", "Lacrimile lui Isac lasă fluid#Fluidul dă 30 daune pe secundă"}, -- Mysterious Liquid
	{"318", "Gemeni", "Familiar care luptă de aproape#Provoacă 6 daune de contact pe secundă"}, -- Gemini
	{"319", "Celălalt Ochi a lui Cain", "Se mișcă prin cameră#Lacrimi cu precizie mică care provoacă daunele lui Isac"}, -- Cain's Other Eye
	{"320", "Singurul prieten a lui ???", "Muscă controlaiblă#Provoacă 37.5 daune de contact pe secundă"}, -- ???'s Only Friend
	{"321", "Lanțurile lui Samson", "O bilă legată de picior care poate distruge obstacole și să blocheze proiectilele#Provoacă 10.7 daune pe secundă"}, -- Samson's Chains
	{"322", "Bebeluș Mongo", "Copiază lacrimile de la alți familiari#Dacă nu sunt alti familiar, provoacă 3.5 daune pe lacrimă"}, -- Mongo Baby
	{"323", "Lacrimile lui Isac", "Aruncă cu 8 lacrimi în toate direcțiile#Copiază efectele lacrimilor lui Isac#Se încarcă prin tragerea de lacrimi"}, -- Isaac's Tears
	{"324", "Nedefinit", "Îl teleporteză pe Isac în {{TreasureRoom}} Camera Comorilor, {{SecretRoom}} Camera Secretă, {{SuperSecretRoom}} Camera Super Secretă sau {{ErrorRoom}} Cameră SUNT O EROARE"}, -- Undefined
	{"325", "Foarfece", "{{Timer}} Capul lui Isac devine un familiar saționar pe durata camerei#Capul trage cu lacrimi ce provoacă 3.5 daune#Corup este controlabil și trage cu lacrimile lui Isaac"}, -- Scissors
	{"326", "Respirația Vieții", "Ținerea butonului de folosință apăsat golește bara de încărcare#Isac este invincibil temporar când bara de încărcare este goală#{{Warning}} Dacă butonul este apăsat prea mult Isaac este vătămat"}, -- Breath of Life
	{"327", "Polaroidul", "Vătămarea la jumătatea de Inimă Roșie sau nici una îl face pe Isac invincibil temporar"}, -- The Polaroid
	{"328", "Negativul", "Vătămarea la jumătatea de Inimă Roșie sau nici una provoacă daune tuturor inamicilor din cameră"}, -- The Negative
	{"329", "Tehnica Ludovico", "Înlocuiește lacrimile lui Isac cu o lacrimă gigantă controlabilă"}, -- The Ludovico Technique
	{"330", "Lapte de Soia", "↑ {{Tears}} x4 Viteză de Atac#↑ {{Tears}} -2 Întârzierea lacrimei#↓ {{Damage}} x0.2 Daune#↓ {{Tearsize}} x0.5 Mărimea lacrimilor"}, -- Soy Milk
	{"331", "Dumnezeire", "↑ {{Damage}} +0.5 Daune#↑ {{Range}} +1.2 Distanță#↑ +0.8 Înălțimea lacrimilor#↓ {{Tears}} -0.3 Viteză de atac#↓ {{Shotspeed}} -0.3 Viteza lacrimilor#Lacrimi Balistice#{{Damage}} Lacrimile primesc o aură care dă 4.5x daunele lui Isaac pe secundă"}, -- Godhead
	{"332", "Zdrențele lui Lazăr", "{{Player11}} După moarte, reînvii ca Lazăr (Reînviatul)"}, -- Lazarus' Rags
	{"333", "Mintea", "Efect de hartă plină"}, -- The Mind
	{"334", "Trupul", "↑ {{Heart}} +3 Vieți"}, -- The Body
	{"335", "Sufletul", "{{SoulHeart}} +2 Inimi Suflet#Primești o aură care respinge inamicii și proiectilele"}, -- The Soul
	{"336", "Ceapă Moartă", "↑ {{Range}} +0.25 Distanță#↑ {{Tearsize}} x1.5 Mărimea Lacrimilor#↓ -0.5 Înălțimea Lacrimilor#↓ {{Shotspeed}} -0.4 Viteza Lacrimilor#Lacrimi Pătrunzătoare + Fantomatice"}, -- Dead Onion
	{"337", "Ceasul Stricat", "{{Slow}} Încetinește inamicii la fiecare a 4-a cameră#13% șansă să grăbească camera"}, -- Broken Watch
	{"338", "Bumerangul", "Bumerang aruncabil#Pietrifică inamicii și dă 2x daunele lui Isac#Poate prinde și aduce lucruri"}, -- The Boomerang
	{"339", "Ac de Siguranță", "↑ {{Range}} +5.25 Distanță#↑ +0.5 Lungimea lacrimilor#↑ {{Shotspeed}} +0.16 Viteza Lacrimilor#{{BlackHeart}} +1 Inimă Neagră"}, -- Safety Pin
	{"340", "Pastilă cu Cafeină", "↑ {{Speed}} +0.3 Viteză#↑ Te micșorezi#{{Pill}} Apare o pastilă aleatorie"}, -- Caffeine Pill
	{"341", "Poză Sfâșiată", "↑ {{Tears}} +0.7 Viteză de atac#↑ {{Shotspeed}} +0.16 Viteza Lacrimilor"}, -- Torn Photo
	{"342", "Capac Albastru", "↑ {{Heart}} +1 Viață#↑ {{Tears}} +0.7 Viteză de Atac#↓ {{Shotspeed}} -0.16 Viteza Lacrimilor"}, -- Blue Cap
	{"343", "Cheie de Zăvor", "↑ {{Luck}} +1 Noroc#{{SoulHeart}} +1 Inimă Suflet#{{Key}} Apar 2 chei"}, -- Latch Key
	{"344", "Cutie de Chibrituri", "{{BlackHeart}} +1 Inimă Neagră#{{Bomb}} Apar 3 bombe"}, -- Match Book
	{"345", "Ulei Sintetic", "↑ {{Damage}} +1 Daune#↑ {{Range}} +5.25 Distanță#↑ +0.5 Lungimea Lacrimilor"}, -- Synthoil
	{"346", "O Gustare", "↑ {{Heart}} +1 Viață"}, -- A Snack
	{"347", "Diplopia", "Duplică toate piedestalele și lucrurile din cameră"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Activează efectul pastilei pe care Isac o ține fără a o folosi"}, -- Placebo
	{"349", "Nichel de Lemn", "{{Coin}} 56% șansă să apară un bănuț aleator"}, -- Wooden Nickel
	{"350", "Șoc Toxic", "{{Poison}} Când intri în cameră otrăvești inamicii#Inamicii omorâți lasă o baltă de lichid#Lichidul dă 30 daune pe secundă"}, -- Toxic Shock
	{"351", "Mega Fasole", "Pietrifică toți inamicii din cameră#{{Poison}} Dă 5 daune și otrăvește orice inamic din împrejurimi#Trimite un val de pietre în direcția în care Isaac merge#Valul de pietre poate deschide camere secrete și sparge pietre"}, -- Mega Bean
	{"352", "Tun de Sticlă", "{{Warning}} Trăgând cu tunul reduce viața lui Isac la jumătate de inimă#Trage o lacrimă mare cu penetrare + balistică care dă 10x Daunele lui Isaac"}, -- Glass Cannon
	{"353", "Băiatul Bombă", "{{Bomb}} +5 Bombe#Bombele explodează în formă de cruce"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} +1 Viață#{{Trinket}} Apare un pick-up"}, -- Crack Jacks
	{"355", "Perlele Mamei", "↑ {{Range}} +1.25 Distanță#↑ +0.5 Înălțimea Lacrimilor#↑ {{Luck}} +1 Noroc"}, -- Mom's Pearls
	{"356", "Baterie de Mașină", "{{Battery}} Folosind un articol activ îl activează de 2 ori"}, -- Car Battery
	{"357", "Cutie de Prieteni", "{{Timer}} Duplică toți familiarii pentru cameră#{{Collectible113}} Primești un Bebe Demon pentru cameră dacă Isaac nu are familiari"}, -- Box of Friends
	{"358", "Vrăjitorul", "Lacrimi fantomatice#Isac trage cu 2 lacrimi odată diagonal"}, -- The Wiz
	{"359", "Cuie de 8 Inci", "↑ {{Damage}} +1.5 Daune#Crește împingerea"}, -- 8 Inch Nails
	{"360", "Incubus", "Trage lacrimi cu aceiași rată, daune și efecte ca Isac"}, -- Incubus
	{"361", "Recompensa Sorții", "Trage lacrimi cu aceleași daune și efecte ca Isac#Trage la jumătate de rată față de alți familiari"}, -- Fate's Reward
	{"362", "Mica Cutie", "35% șansă să apară un lucru în fiecare cameră"}, -- Lil Chest
	{"363", "Protector Jurat", "Orbital#Dă 105 daune de contact pe secundă#Blochează și atacă atacurile inamice#{{EternalHeart}} Blocând 10 atacuri într-o cameră face să apară o Inimă Eternă"}, -- Sworn Protector
	{"364", "Zona de Prietenie", "Muscă orbital medie#Dă 45 daune de contact pe secundă"}, -- Friend Zone
	{"365", "Muscă Pierdută", "Se mișcă langă pereți/obstacole#Dă 105 daune de contact pe secundă"}, -- Lost Fly
	{"366", "Bombe Împrăștiate", "{{Bomb}} +5 Bombe#Bombele lui Isac se împrăștie în 2-4 bombe mici"}, -- Scatter Bombs
	{"367", "Bombe Lipicioase", "{{Bomb}} +5 Bombe#Bombele lui Isac se lipesc de inamici#Omorând un inamic cu o bombă face să apară un păianjen albastru"}, -- Sticky Bombs
	{"368", "Epifora", "↑ {{Tears}} Trăgând doar într-o direcție scade gradual întârzierea lacrimilor până la 200% și scade acuratețea"}, -- Epiphora
	{"369", "Continuum", "↑ {{Range}} +2.25 Distanță#↑ +1.5 Înălțimea Lacrimilor#Lacrimi fantomatice#Lacrimile pot trece printr-o parte a ecranului și să revină pe cealaltă"}, -- Continuum
	{"370", "Dl. Păpușă", "↑ {{Tears}} +0.7 Lacrimi#↑ {{Range}} +5.25 Distanță#↑ +0.5 Înălțimea Lacrimilor#{{UnknownHeart}} Apar 3 inimi aleatorii"}, -- Mr. Dolly
	{"371", "Blestemul Turnului", "{{Warning}} După ce ești vătămat apar 6 Bombe Troll#Bombele Troll moștenesc efectele de bombă ale lui Isaac"}, -- Curse of the Tower
	{"372", "Bebeluș Încărcat", "La fiecare 30 de secunde într-o cameră neterminată, familiarul poate:#{{Battery}} Face să apară o baterie (max 2 pe cameră)#{{Battery}} Adaugă o încărcare articolului activ (max 2 pe cameră)#Pietrifică toți inamicii din cameră"}, -- Charged Baby
	{"373", "Ochi Mort", "↑ {{Damage}} Când nimerești consecutiv inamicii primești +25% daune (max +100%)#Ai o șansă să resetezi multiplicatorul dacă ratezi"}, -- Dead Eye
	{"374", "Lumina Sfântă", "10% șansă să tragi cu lacrimi sfinte care fac să apară o rază de lumină când nimerești un atac#{{Luck}} 50% șansă la 9 noroc#{{Damage}} Lumina dă de 4x daunele lui Isaac"}, -- Holy Light
	{"375", "Pălăria Gazdei", "Primești imunitate la explozii, valuri de pietre și călcatul Mamei și al lui Satan#25% șansă să trimiți înapoi atacurile inamice"}, -- Host Hat
	{"376", "Restocare", "Apar 3 lucruri aleatorii#Cumpărând un lucru dintr-un Magazin îl face să se restocheze instant"}, -- Restock
	{"377", "Sac Izbucnind", "Inamicii păianjen nu te mai urmăresc sau îi dau daune de contact lui Isac"}, -- Bursting Sack
	{"378", "Nr. 2", "Ținând butonul de atac pentru 2.35 secunde face să apară o Bombă-Fund aprinsă"}, -- No. 2
	{"379", "Duplexul Popula", "↑ {{Tearsize}} x2 Mărimea Lacrimilor#Lacrimi Fantomatice"}, -- Pupula Duplex
	{"380", "Plătește Pentru a Juca", "{{Coin}} +5 Bani#{{Coin}} Ușile cu o încuietoare trebuiesc deschise cu bani în locul cheilor"}, -- Pay To Play
	{"381", "Binecuvântarea lui Eden", "↑ {{Tears}} +0.7 Viteză de Atac#Primești un articol aleator la începutul cursei următoare"}, -- Eden's Blessing
	{"382", "Minge Prietenoasă", "Poate fi aruncată spre inamici pentru a-i captura#Folosind articolul după capturarea unui inamic îl face să apară ca un companion prietenos"}, -- Friendly Ball
	{"383", "Detonatorul Lacrimilor", "Împarte toate lacrimile lui Isac de pe ecran într-un cerc de 6 lacrimi"}, -- Tear Detonator
	{"384", "Micul Gurdy", "{{Chargeable}} Se aruncă și sare în jurul camereicu viteza bazată pe încărcarea atacului#Dă 5-90 daune de contact pe secundă depinzănd de viteză"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Ridică banii apropiați#Își crește nivelul după ce ia 6, 12, și 24 de bănuți#Lv2:Șansă să apară un articol după curățarea camerei#Lv3: Trage cu lacrimi care fac să apară un bănuț când nimeresc#Lv4: Aleargă inamicii, ocazional aruncă bombe, poate apărea un articol când iei un ban"}, -- Bumbo
	{"386", "D12", "Reface orice obstacol într-unul aleator (ex. rahat, vaze, TNT, rahat roșu, blocuri de pietre etc.)"}, -- D12
	{"387", "Cădelniță", "{{Slow}} Familiar înconjurat de o mare aură de lumină care încetinește inamicii și proiectilele"}, -- Censer
	{"388", "Vagabondul Cheii", "{{Key}} Ia cheile apropiate#{{Chest}} Dă cutii aleatorii în schimb"}, -- Key Bum
	{"389", "Plasă cu Rune", "{{Rune}} Apare o rună aleatorie la fiecare 5-6 camere"}, -- Rune Bag
	{"390", "Serafim", "Trage cu lacrimi de Inimă Sacră#Dă 10 daune pe lacrimă"}, -- Seraphim
	{"391", "Trădarea", "{{Charm}} Primind daune cucerești toți inamicii din cameră"}, -- Betrayal
	{"392", "Zodiac", "Primești un efect de zodiac aleator pe fiecare etaj"}, -- Zodiac
	{"393", "Sărutul Șarpelui", "{{Poison}} 15% șansă să tragi cu lacrimi otrăvite#{{Poison}} Otrăvești inamicii la contact#{{BlackHeart}} Inamicii otrăviți au o șansă să arunce o Inimă Neagră la moarte"}, -- Serpent's Kiss
	{"394", "Marcat", "↑ {{Tears}} +0.7 Viteză de Atac#↑ {{Range}} +3.15 Distanță#↑ +0.3 Înălțimea Lacrimilor#Isaac trage lacrimi automat la o țintă mobilă de pe pământ"}, -- Marked
	{"395", "Tehn X", "{{Chargeable}} Lacrimile lui Isac sunt înlocuite de un inel de laser încărcabil#Mărimea inelului crește cu încărcarea"}, -- Tech X
	{"396", "Lamă de Ventricul", "Creează până la 2 portale prin care poți călători#Pot fi puse în camere diferite"}, -- Ventricle Razor
	{"397", "Rază de Atracție", "↑ {{Tears}} +0.5 Viteză de Atac#↑ {{Range}} +5.25 Distanță#↑ +0.5 Lungimea Lacrimilor#↑ {{Shotspeed}} +0.16 Viteza Lacrimilor#Lacrimile lui Isaac vor merge mereu pe o rază de lumină din fața lui"}, -- Tractor Beam
	{"398", "Carnea Zeului", "Lacrimile pot micșora inamicii#Inamicii micșorați pot fi zdrobiți și uciși dacă mergi peste ei"}, -- God's Flesh
	{"399", "Falca Vidului", "↑ {{Damage}} +1 Daune#{{Chargeable}} Trăgând pentru 2.35 secunde și dând drumul la buton creează un inel negru de sulf în jurul lui Isaac#Dă de 30x daunele lui Isaac în 2 secunde#{{BlackHeart}} Inamicii uciși de inelul negru au o șansă de 5% să arunce o Inimă Neagră"}, -- Maw of the Void
	{"400", "Sulița Destinului", "Isac ține o suliță în fața lui#{{Fear}} Sulița dă dublul daunelor lui și poate speria inamicii la contact"}, -- Spear of Destiny
	{"401", "Explozivul", "25% șansă să tragi cu o lacrimă bombă-lipicioasă#Lacrimile bombă-lipicioasă nu provoacă daune la impact și explodează după câteva secunde"}, -- Explosivo
	{"402", "Haos", "Toate articolele sunt alese din grupuri de articole aleatorii#Apar 1-6 lucruri aleatorii"}, -- Chaos
	{"403", "Mod Păianjen", "Afișează daunele cauzate de lacrimi și barele de viață ale inamicilor#Cauzează efecte de statistici aleatorii inamicilor la contact#Apar baterii aleatoriu"}, -- Spider Mod
	{"404", "Bebeluș Pârțâit", "Blochează proiectile#Când este nimerit, are 10% șansă să pârțâie, {{Charm}} să farmece, {{Poison}} să otrăvească sau să împingă inamicii"}, -- Farting Baby
	{"405", "Bug GB", "Sare prin cameră#Provoacă 120 daune pe secundă și aplică efecte de statistici aleatorii inamicilor la contact"}, -- GB Bug
	{"406", "D8", "Amestecă daunele, viteza de atac, distanța și viteza lui Isaac între x0.5 și x2#Multiplicatorii sunt refăcuți la fiecare folosire"}, -- D8
	{"407", "Puritate", "↑ Mărește o statistică a lui Isac depinzând de culoarea aurei#Primind daune scoate efectul și îi dă lui Isaac un nou efect în următoarea cameră#{{ColorYellow}}Galben{{CR}} = ↑ {{Speed}} +0.5 Viteză#{{ColorBlue}}Albastru{{CR}} = ↑ {{Tears}} -4 Întârzierea lacrimilor#{{ColorRed}}Roșu{{CR}} = ↑ {{Damage}} +4 Daune#{{ColorOrange}}Portocaliu{{CR}} = ↑ {{Range}} +7.5 Distanță, ↑ +1 Înălțimea lacrimilor"}, -- Purity
	{"408", "Athame", "Primind daune creează un inel negru de sulf în jurul lui Isac#Dă 30x daunele lui Isac în 2 secunde#{{BlackHeart}} Inamicii uciși de inel au o șansă de 15% să arunce o Inimă Neagră"}, -- Athame
	{"409", "Vas Gol", "{{BlackHeart}} +2 Inimi Negre#{{EmptyHeart}} Când Isac nu are Inimi Roșii:#Zboară#La fiecare 40 secunde când e într-o cameră ostilă, primește un scut pentru 10 secunde"}, -- Empty Vessel
	{"410", "Ochi Rău", "3.33% șansă să tragi un ochi#{{Luck}} 10% șansă la 20 noroc#Ochiul se mișcă într-o linie dreaptă și trage lacrimi în aceeași direcție ca Isaac"}, -- Evil Eye
	{"411", "Sânge Viguros", "↑ {{Damage}} +0.5 Daune pentru fiecare inamic ucis în cameră#Maximum +5 Daune după 10 ucideri"}, -- Lusty Blood
	{"412", "Concepția Schimbătoare", "Primind daune de 15 de ori face să apară permanent un familiar demon#După 2 familiari, îi ia 30 în loc de 15#Maximum 4 familiari"}, -- Cambion Conception
	{"413", "Concepție Imaculată", "Ridicând 15 inimi apare un familiar angelic permanent#Maximum 5 familiari#{{SoulHeart}} Dacă toți familiarii au fost primiți, apare o Inimă Suflet"}, -- Immaculate Conception
	{"414", "Mai Multe Opțiuni", "{{TreasureRoom}} Îi permite lui Isac să aleagă dintre 2 articole în camerele comorilor"}, -- More Options
	{"415", "Coroană de Lumină", "{{SoulHeart}} +2 Inimi Suflet#Dacă Isac nu are containere de inimi dăunate:#↑ {{Damage}} x2 Daune#↑ {{Range}} +5.25 Distanță#↑ +0.5 Lungimea Lacrimilor#↓ {{Shotspeed}} -0.3 Viteza Lacrimilor#Luând orice daună scoate efectul în cameră"}, -- Crown Of Light
	{"416", "Buzunare Adânci", "Îi permite lui Isac să care 2 rune/cărți/pastile"}, -- Deep Pockets
	{"417", "Succubus", "Sare prin cameră înconjurat de o aură dăunătoare care dă 1.29x daunele lui Isac pe secundă#↑ {{Damage}} x1.5 Daune când stai în aură"}, -- Succubus
	{"418", "Tort cu Fructe", "Fiecare lacrimă a lui Isac primește un efect diferit"}, -- Fruit Cake
	{"419", "Teleportare 2.0", "Îl teleportează pe Isac într-o cameră care nu a fost golită încă#Ierarhie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	{"420", "Pudră Neagră", "Mergând într-un cerc desenează o pentagramă pe podea care dă 130 daune în 4 secunde"}, -- Black Powder
	{"421", "Fasole Rinichi", "{{Charm}} Cucerește și dă 5 daune tuturor inamicilor apropiați"}, -- Kidney Bean
	{"422", "Clepsidră Luminată", "Îl aduce pe Isac în camera trecută și anulează toate acțiunile făcute în cameră când este folosită"}, -- Glowing Hour Glass
	{"423", "Cercul Protecție", "Îl înconjoară pe Isac cu o aureolă care dă daunele lui de contact la contact pe secundă#Șansă să reflecteze atacurile inamice"}, -- Circle of Protection
	{"424", "Cap de Sac", "Lucrurile au o șansă de 33% să fie înlocuite cu un sac#Apare un sac"}, -- Sack Head
	{"425", "Lumină de Noapte", "{{Slow}} Apare un con de lumină încetinitor în fața lui Isac"}, -- Night Light
	{"426", "Fan Obsedat", "Imită mișcarea exactă a lui Isac cu o întârziere de 3 secunde#Dă 30 daune de contact pe secundă"}, -- Obsessed Fan
	{"427", "Creator de Mine", "Apare un butoi TNT ce poate fi împins#Folosind articolul a doua oară în aceeași cameră îl detonează la distanță"}, -- Mine Crafter
	{"428", "PJ-uri", "{{HealingRed}} Viață Plină#{{SoulHeart}} +4 Inimi Suflet"}, -- PJs
	{"429", "Capul Paznicului", "{{Coin}} Nimerind un inamic cu o lacrimă are o șansă de 5% să facă să apară un bănuț"}, -- Head of the Keeper
	{"430", "Tata Muscă", "Imită mișcările lui Isac cu o întărziere de o secundă#Trage cu lacrimi la inamicii apropiați și dă daunele lui Isaac"}, -- Papa Fly
	{"431", "Bebeluș Multidimensional", "Imită mișcările lui Isaaccu o întârziere de 2 secunde#Lacrimile care trec prin el sunt dublate și primesc distanță + viteza lacrimilor mărite"}, -- Multidimensional Baby
	{"432", "Bombe cu Sclipici", "{{Bomb}} +5 Bombe#{{Charm}} Bombele lui Isac au o șansă de 25% să arunce un lucru aleator și 15% șansă să farmece inamicii când explodează"}, -- Glitter Bombs
	{"433", "Umbra Mea", "{{Fear}} După ce ești atacat înspăimânți toți inamicii din cameră și apare un încărcător negru prietenos#Încărcătorul dă 5 daune pe secundă"}, -- My Shadow
	{"434", "Borcan cu Muște", "Omorând un inamic adaugă o muscă albastră în borcan, până la 20#Folosind articolul dai drumul tuturor muștelor"}, -- Jar of Flies
	{"435", "Micul Loki", "Trage 4 lacrimi în model de cruce#Dă 3.5 daune pe lacrimă"}, -- Lil Loki
	{"436", "Lapte!", "{{Tears}} Primind daune îți oferă Viteză de Atac pe durata camerei"}, -- Milk!
	{"437", "D7", "Reîncepi camera și reapar toți inamicii#Poate fi folosit pentru a primi mai multe recompense dintr-o singură cameră#Dacă e folosit după lupta cu Greed, schimbă camera într-un Magazin normal/Cameră Secretă"}, -- D7
	{"438", "Binky", "↑ {{Tears}} +0.75 Viteză de Atac#↑ Micșorare#{{SoulHeart}} +1 Inimă Suflet"}, -- Binky
	{"439", "Cutia Mamei", "{{Trinket}} Apare un breloc aleator#Când e ținută:#↑ {{Luck}} +1 Noroc#{{Trinket}} Dublează efectele brelocurilor"}, -- Mom's Box
	{"440", "Piatră la Rinichi", "↑ +2 Lungimea Lacrimilor#↓ {{Speed}} -0.2 Viteză#↓ {{Range}} -17 Distanță#Isac se oprește din tras ocazional și încarcă un atac care scoate o explozie de lacrimi și o piatră de rinichi"}, -- Kidney Stone
	{"441", "Mega Bubuitură", "{{Timer}} Trage cu o mega undă de sânge a lui Mega Satan pentru 15 secunde#Unda persistă între camere și etaje"}, -- Mega Blast
	{"442", "Coroana Prințului Întunecat", "Când ești la 1 Inimă Roșie întreagă:#↑ {{Tears}} +0.75 Viteză de Atac#↑ {{Range}} +1.5 Distanță#↑ +1 Înălțimea Lacrimilor#↑ {{Shotspeed}} +0.2 Viteza Lacrimilor"}, -- Dark Princes Crown (apostrophe added to the name in Repentance) -- Dark Prince's Crown
	{"443", "Măr!", "↑ {{Tears}} +0.3 Viteză de Atac#{{Damage}} 6.66% să arunci cu o lamă de ras care dă 4x daunele lui Isac#{{Luck}} 100% șansă la 14 noroc"}, -- Apple!
	{"444", "Creion de Plumb", "Isac trage o adunătură de lacrimi la fiecare 15 lacrimi#Lacrimile din adunătură dau daune duble"}, -- Lead Pencil
	{"445", "Dinte de Câine", "↑ {{Speed}} +0.1 Viteză#↑ {{Damage}} +0.3 Daune#{{SecretRoom}}{{SuperSecretRoom}} Un lup rage în camerele adiacente cu o Cameră Secretă/Super Secretă#{{LadderRoom}} Un câine latră în camerele în care există un tunel sub o piatră"}, -- Dog Tooth
	{"446", "Dinte Mort", "{{Poison}} Când tragi, Isac e înconjurat de o aură verde care otrăvește inamicii"}, -- Dead Tooth
	{"447", "Fasole Persistentă", "Trăgând fără pauză pentru 7.5 secunde face să apară un nor de rahat#Norul dă daunele lui Isac de 5 ori pe secundă#Norul ține 15 secunde și poate fi mișcat trăgând în el"}, -- Linger Bean
	{"448", "Ciob de Sticlă", "La primirea daunelor:#{{Heart}} 25% șansă să apară o Inimă Roșie#{{Collectible214}} 10% șansă să primești ↑ {{Range}} +5 Distanță și lași o dâră de sânge în cameră"}, -- Shard of Glass
	{"449", "Placă de metal", "{{SoulHeart}} +1 Inimă Suflet#{{Confusion}} Gloanțele inamice au o șansă de 25% să fie reflectate ca lacrimi concusive"}, -- Metal Plate
	{"450", "Ochi de Lăcomie", "La fiecare 20 lacrimi, Isac trage o lacrimă bănuț care dă daune duble#Inamicii nimeriți cu banul sunt pietrificați și devin aur#{{Coin}} Omorând un inamic de aur lasă 1-4 bani#{{Warning}} Trăgând o lacrimă bănuț costă 1 ban"}, -- Eye of Greed
	{"451", "Pânză de Tarot", "{{Card}} Apare o carte de joc#{{Card}} Efectele cărților sunt dublate sau fermecate"}, -- Tarot Cloth
	{"452", "Vene Varicoase", "La primirea lacrimilor tragi 10 lacrimi într-un cerc in jurul lui Isac#Lacrimile dau daunele lui Isac + 25"}, -- Varicose Veins
	{"453", "Fractură Compusă", "↑ {{Range}} +1.5 Distanță#↑ +1 Înălțimea lacrimilor#Lacrimile se sparg în 1-3 bucățele de os când nimeresc orice"}, -- Compound Fracture
	{"454", "Polidactilie", "Apare o {{Rune}} rună, {{Card}} carte sau {{Pill}} pastilă#Îi permite lui Isac să care 2 rune/cărți/pastile"}, -- Polydactyly
	{"455", "Banul Pierdut al Tatei", "↑ {{Range}} +1.5 Distanță#↑ +1 Înălțimea lacrimilor#{{Luck}} Apare un Bănuț Norocos"}, -- Dad's Lost Coin
	{"456", "Pâine Mucegăită", "↑ {{Heart}} +1 Viață"}, -- Moldy Bread
	{"457", "Cap de Con", "{{SoulHeart}} +1 Inimă Suflet#20% șansă să anuleze daunele primite"}, -- Cone Head
	{"458", "Buric", "{{Trinket}} Îi permite lui Isac să care 2 bibelouri#{{Trinket}} Apare un bibelou aleator"}, -- Belly Button
	{"459", "Infecție de Sinus", "20% șansă să tragi un muc lipicios#{{Damage}} Mucii dau daunele lui Isac o dată pe secundă și se lipesc 60 secunde#{{Luck}} Neafectat de noroc"}, -- Sinus Infection
	{"460", "Glaucom", "{{Confusion}} 5% șansă să tragi lacrimi concusive#Face ecranul puțin întunecat"}, -- Glaucoma
	{"461", "Parazitoid", "15% ;ansă sa tragi cu saci de ou#{{Luck}} 50% șansă la 5 noroc#{{Slow}} Sacii de ou fac să apară fluid încetinitor și un păianjen albastru sau muscă când nimerești"}, -- Parasitoid
	{"462", "Ochiul lui Belial", "↑ {{Range}} +1.5 Distanță#↑ +1 Înălțimea lacrimilor#Lacrimi penetratoare#Nimerind un inamic face lacrima balistică și îi dublează daunele"}, -- Eye of Belial
	{"463", "Acid Sulfuric", "↑ {{Damage}} +0.3 Daune#Lacrimile lui Isac pot distruge pietre și deschide uși"}, -- Sulfuric Acid
	{"464", "Gliful Echilibrului", "{{SoulHeart}} +2 Inimi Suflet#Inamicii campioni aruncă un lucru de care Isac are cea mai mare nevoie"}, -- Glyph of Balance
	{"465", "Băț Analogic", "↑ {{Tears}} +0.3 Viteză de Atac#Îi permite lui Isac să tragă lacrimi în orice direcție"}, -- Analog Stick
	{"466", "Contagiune", "{{Poison}} Primul inamic omorât în cameră explodează și otrăvește toți inamicii apropiați"}, -- Contagion
	{"467", "Deget!", "{{Damage}} Dă constant 10% din daunele lui Isac în orice direcție arată"}, -- Finger!
	{"468", "Umbră", "Urmărește mișcările lui Isac cu întârziere de 1 secundă#Dă 30 daune de contact pe secundă#După ce dă 600 daune, e absorbit de Isac, mărindu-i daunele de contact"}, -- Shade
	{"469", "Depresie", "Lasă o dâră de fluid#Fluidul dă 6 daune pe secundă#Inamicii care ating norul pot fi atinși de o rază de lumină sfântă"}, -- Depression
	{"470", "Tăcutul", "Sare prin cameră#Dă 30 daune de contact pe secundă#Se oprește când Isac trage#Blochează proiectilele când e oprit"}, -- Hushy
	{"471", "Micul Monstro", "{{Chargeable}} Încarcă un atac-pușcă similar cu {{Collectible229}} Plămânul lui Monstro#Fiecare lacrimă dă 3.5 daune"}, -- Lil Monstro
	{"472", "Regele Bebeluș", "Ceilalți familiari îl urmăresc#Se oprește când Isac trage#Se teleportează la Isac când se oprește din tras"}, -- King Baby
	{"473", "Marele Grăsan", "Se aruncă foarte încet înainte#Blochează proiectile#Dă 40.5 daune de contact pe secundă"}, -- Big Chubby
	{"474", "Amigdală", "Blochează proiectilele inamice"}, -- Tonsil
	{"475", "Planul C", "Dă 9,999,999 daune tuturor inamicilor#{{Warning}} Isac moare după 3 secunde"}, -- Plan C
	{"476", "D1", "Duplică un lucru aleator din cameră"}, -- D1
	{"477", "Vid", "Consumă toate articolele piedestal din cameră#Articolele active: Efectele lor se activează și se vor activa la fiecare folosire viitoare a Vidului#↑ Articolele pasive oferă două creșteri de statistici aleatorii"}, -- Void
	{"478", "Pauză", "Îngheață toți inamicii din cameră până când Isaac trage#Atingerea unui inamic înghețat provoacă daune lui Isaac#Inamicii se dezgheață după 30 de secunde"}, -- Pause
	{"479", "Topitor", "{{Trinket}} Consumă bibelourile ținute de Isaac și le oferă efectele permanent#Crește frecvența de apariție a bibelourilor"}, -- Smelter
	{"480", "Compost", "Transformă obiectele de pe jos în muște sau păianjeni albaștri#Dublează toate muștele și păianjenii albaștri#Apare 1 muscă sau păianjen albastru dacă Isaac nu are niciunul"}, -- Compost
	{"481", "Dataminer", "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"}, -- Dataminer
	{"482", "Clicker", "Changes your character to a random character#Removes the most recent item collected"}, -- Clicker
	{"483", "Mama Mega!", "Affects the whole floor#Explodes all objects#Deals 200 damage to all enemies#Opens secret rooms#Opens Boss Rush and Hush regardless of time"}, -- Mama Mega!
	{"484", "Wait What?", "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"}, -- Wait What?
	{"485", "Crooked Penny", "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"}, -- Crooked Penny
	{"486", "Dull Razor", "Hurts Isaac without removing health#Triggers any on-hit item effects"}, -- Dull Razor
	{"487", "Potato Peeler", "{{EmptyHeart}} Removes 1 heart container for:#↑ {{Damage}} +0.2 Damage#{{Collectible73}} A Cube of Meat#{{Timer}} Receive for the room:#↑ {{Range}} +5 Range#{{Collectible214}} Leave a trail of blood creep"}, -- Potato Peeler
	{"488", "Metronome", "Grants a random item effect for the room"}, -- Metronome
	{"489", "D Infinity", "Triggers a random dice effect each use"}, -- D Infinity
	{"490", "Eden's Soul", "Spawns 2 random items depending on the current room's item pool#Starts with no charges"}, -- Eden's Soul
	{"491", "Acid Baby", "{{Pill}} Spawns a random pill every 3 rooms#{{Poison}} Using a pill poisons all enemies in the room"}, -- Acid Baby
	{"492", "YO LISTEN!", "↑ {{Luck}} +1 Luck#Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"}, -- YO LISTEN!
	{"493", "Adrenaline", "For every empty heart container:#↑ {{Damage}} +0.2 Damage"}, -- Adrenaline
	{"494", "Jacob's Ladder", "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"}, -- Jacob's Ladder
	{"495", "Ghost Pepper", "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"}, -- Ghost Pepper
	{"496", "Euthanasia", "3.33% chance to shoot a needle#{{Luck}} 100% chance at 15 luck#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"}, -- Euthanasia
	{"497", "Camo Undies", "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"}, -- Camo Undies
	{"498", "Duality", "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"}, -- Duality
	{"499", "Eucharist", "{{AngelChance}} 100% chance for Angel Rooms to spawn"}, -- Eucharist
	{"500", "Sack of Sacks", "Spawns a sack every 5-6 rooms"}, -- Sack of Sacks
	{"501", "Punga Lăcomiei", "{{Heart}} +1 container de inimă pentru fiecare 25 de bănuți obținuți după ce primești Punga Lăcomiei"}, -- Greed's Gullet
	{"502", "Coș Mare", "{{Slow}} Trăgând, ocazional arunci o lacrimă albă care provoacă daune duble și încetinește inamicii#Când primești daune, arunci o lacrimă albă"}, -- Large Zit
	{"503", "Coarnele Mici", "5% șansă să tragi lacrimi care omoară instant inamicii#{{Luck}} 20% șansă la 15 noroc#Isaac provoacă 3.5 daune de contact"}, -- Little Horn
	{"504", "Nugă Maro", "Apare o turetă-muscă ce trage în inamici#Fiecare lovitură provoacă 2 daune"}, -- Brown Nugget
	{"505", "Poke Go", "Intrând într-o cameră ostilă ai șansă să apară un inamic fermecat"}, -- Poke Go
	{"506", "Înjunghiator", "{{BleedingOut}} Lovind un inamic în spate îi provoci daune duble și sângerare, care provoacă 10% din viața maximă a inamicului la fiecare 5 secunde"}, -- Backstabber
	{"507", "Paie Ascuțite", "{{Damage}} Provoacă daunele lui Isaac + 10% din viața maximă a inamicului tuturor inamicilor#{{HalfHeart}} Provocând daune cu paiele pot apărea jumătăți de inimă#{{HalfSoulHeart}} Dacă nu ai containere de inimă, apar Inimi Suflet"}, -- Sharp Straw
	{"508", "Briciul Mamei", "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"}, -- Mom's Razor
	{"509", "Ochi Însângerat", "Orbital care aruncă cu o lacrimă într-o direcție aleatorie la fiecare 2 secunde#3.5 daune pe lacrimă#Provoacă 30 de daune de contact pe secundă#Nu blochează proiectilele"}, -- Bloodshot Eye
	{"510", "Delirant", "{{Timer}} Oferă un Boss Delirium prietenos pe durata camerei"}, -- Delirious
	{"511", "Muscă Furioasă", "Orbitează un inamic aleatoriu până moare#Provoacă 30 de daune pe secundă altor inamici"}, -- Angry Fly
	{"512", "Gaură Neagră", "Aruncă o gaură neagră ce absoarbe totul#Provoacă 6 daune pe secundă#Distruge pietrele din apropriere#Durează 6 secunde"}, -- Black Hole
	{"513", "Bozo", "↑ {{Damage}} +0.1 Daune#{{SoulHeart}} +1 Inimă Suflet#{{Charm}} Vrăjește/înspăimântă inamicii aleatoriu#Vătămarea are o șansă aleatorie să ofere un rahat curcubeu"}, -- Bozo
	{"514", "Modem Stricat", "Unii inamci și proiectile sunt blocate pe o perioadă scurtă la intervale aleatorii#25% șansă să dubleze recompensa camerei"}, -- Broken Modem
	{"515", "Cadou Misterios", "Oferă un item din pool-ul în care este deschis#Șansă să ofere O Bucată de Cărbune sau Rahatul"}, -- Mystery Gift
	{"516", "Stropitoare", "Planteză o stropitoare care aruncă cu lacrimile lui Isaac în jurul"}, -- Sprinkler
	{"517", "Bombe Rapize", "{{Bomb}} +7 Bombe#Bombele pot fi puse una după alta"}, -- Fast Bombs
	{"518", "Prieten într-o Cutie", "Familiar care arată ca un bebeluș co-op aleatoriu#Efectele lacrimilor aleatorii#Efectele se schimbă la fiecare etaj"}, -- Buddy in a Box
	{"519", "Micul Delirium", "Se transformă într-un familiar la fiecare 10 secunde"}, -- Lil Delirium
	{"520", "Cabluri de Pornire", "Omorârea a 15 inamici oferă 1 încărcare la itemul activ"}, -- Jumper Cables
	{"521", "Coupon", "Face un item la întâmplare din {{Shop}} Magazin sau {{DevilRoom}} Camera Diavolului gratis#Dacă este ținut, un item din Magazin este redus"}, -- Coupon
	{"522", "Telekineză", "Oprește toate proiectilele care se aproprie de Isaac pentru 3 secunde, după le aruncă înapoi"}, -- Telekinesis
	{"523", "Cutie de Mutare", "Colectează toate pickup-urile si itemele din cameră#Folosirea itemului din nou readuce toate obiectele colectate înapoi#Îi permite lui Isaac să mute lucruri printre camere"}, -- Moving Box
	{"524", "Technologie Zero", "Lacrimile lui Isaac sunt conectate cu rază electricitate#Raza provoacă daunele lui Isaac"}, -- Technology Zero
	{"525", "Lepră", "Vătămarea oferă un orbital care blochează proiectilele#Maxim 3 orbitali#Provoacă 35 de daune pe secundă#Orbitalele se distrug dacă sunt vătămate prea mult"}, -- Leprosy
	{"526", "7 Sigilii", "Oferă un călăreț mic care produce lăcuste#Călărețul și lăcustele se schimbă la fiecare 10 secunde"}, -- 7 Seals
	{"527", "Dl. EU!", "Oferă un cursor pentru câteva secunde după o fantomă apare care(depinde de poziția cursorului):#Deschide o ușă sau un cufăr#Ia un item#50% șansă să fure un item din magazin / Camera Diavolului#Atacă in inamic până moare#Distruge pereții, pietrele, negustorii, statuile înger, aparatele, cerșetorii"}, -- Mr. ME!
	{"528", "Prism Angelic", "Orbital#Lacrimile preitenoase care il ating se împart în 4"}, -- Angelic Prism
	{"529", "Pop!", "Lacrimile lui Isaac se izbescu unele de altele și dispar când nu se mai mișcă"}, -- Pop!
	{"530", "Lista Morții", "Omorârea inamicilor în ordinea indicată de semul {{DeathMark}} care este deasupra insamicilor oferă statstici aleatorii"}, -- Death's List
	{"531", "Hemolacrie", "↑ {{Damage}} x1.31 Daune#↓ {{Tears}} x0.5 Viteză de atac#↓ {{Tears}} +10 Întârziere a lacrimilor#Lacrimile lui Isac sunt arcuite și explodează în lacrimi mai mici la impact"}, -- Haemolacria
	{"532", "Lacrifagie", "Lacrimile Lui Isaac încetinesc până la oprire după explodează în 8 lacrimi mai mici#Lacrimile se pot unii și să devină mai mari"}, -- Lachryphagy
	{"533", "Trisagion", "Înlocuiește lacrimile lui Isaac cu o undă de lumină care penetrează inamicii#Unda provoacă 33% din daunele lui Isaac, dar poate lovi de mai multe ori inamicul"}, -- Trisagion
	{"534", "Ghiozdan", "Isaac poate ține 2 iteme active#Itemele pot fi schimbate cu CTRL ({{ButtonRT}})"}, -- Schoolbag
	{"535", "Pătură", "{{Heart}} Vindecă o inimă#{{SoulHeart}} +1 Inimă Suflet#{{HolyMantle}} În Camera Șefului primești Holy Mantle"}, -- Blanket
	{"536", "Altar de Sacrificare", "Sacrifică până la 2 familiari și oferă un item din Camera Diavolului pentru fiecare Familiar sacrificat#{{Coin}} Transformă păianjenii și multele albastre în bănuți"}, -- Sacrificial Altar
	{"537", "Micul Spewer", "{{Pill}} Oferă o pastilă când este colectat#Scuipă o baltă dreaptă#Tipul bălți se schimbă cu fiecare pastilă folosită"}, -- Lil Spewer
	{"538", "Bile", "{{Trinket}} Oferă 3 trinket-uri la aleatori#{{Collectible479}} 10% șansă ca trinket-ul să fie consumat și efectul lui să deină permanent când Isaac este vătămat"}, -- Marbles
	{"539", "Ou Misterios", "Vătămarea oferă un inamic prietenos#Oferă inamici mai puternici cu cât mai multe camere au fost curățate fără a fi vătămat"}, -- Mystery Egg
	{"540", "Piatră Plată", "Lacrimile lui Isaac sar pe pământ și cauzează daune la fiecare săritură"}, -- Flat Stone
	{"541", "Măduvă", "{{Heart}} Oferă 3 Inimi Roșii#{{EmptyBoneHeart}} +1 Inimă Os"}, -- Marrow
	{"542", "Coastă Alunecoasă", "Orbital#Reflectă proiectilele inamicilor"}, -- Slipped Rib
	{"543", "Rahat Binecuvântat", "Vătămarea oferă un rahat alb#În interiorul aurei primești:#↑ {{Tears}} x2 Viteză de atac#Șansă sa oprească vătămarea"}, -- Hallowed Ground
	{"544", "Cosastă Ascuțită", "Levitează în fața lui Isaac#Provoacă 6x din daunele lui Isaac pe secundă"}, -- Pointy Rib
	{"545", "Cartea Morților", "Oferă un orbital os sau un bony prietenos per inamic omorât în cameră (maxim 8)"}, -- Book of the Dead
	{"546", "Inelul Tatei", "Oferă o aură care piretifică inamicii"}, -- Dad's Ring
	{"547", "Certificat de Deces", "↑ {{Tears}} +0.7 Lacrimi#{{EmptyBoneHeart}} +1 Inimă Os#{{Trinket21}} Oferă trinket-ul Hârtia Misterioasă"}, -- Divorce Papers
	{"548", "Mandibulă", "Familiar boomerang#Provoacă 7 daune de contact pe secundă#Poate să aducă pickup-uri înapoi"}, -- Jaw Bone
	{"549", "Oase Fragile", "{{EmptyBoneHeart}} Înlocuiește toate spațile de Inimile Roși a le lui Isaac cu 6 Inimi Os#La păierderea undei Inimi Os:#↑ {{Tears}} +0.5 Lacrimi#Aruncă cu 8 bucăți de oase im toate direcțile"}, -- Brittle Bones
	{"550", "Lopată Stricată", "Piciorul mamei cade constant pe Isaac#Folosirea itemului oprește picioul pe durata camerei (sau o rundă la Boss Rush )#{{Warning}} (Finalizează beat Boss Rush cu ea!)"}, -- Broken Shovel
	{"551", "Lopată Stricată", "Completeză Lopata Mamei#{{Warning}} Folosește lopata pe bucata de pământ în \"Dark Room\""}, -- Broken Shovel
	{"552", "Lopata Mamei", "Deschide o trapă către următorul etaj#10% șansă pentru {{LadderRoom}} beci#{{Warning}} Folosește lopata pe pământ în \"Dark Room\""}, -- Mom's Shovel
	}
---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "No effect",
	[35] = {40, 80}, -- The Necronomicon
	[37] = { " o ", " 2 ", "bomb", "{{CR}}bombe" }, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "heart", "{{CR}}hearts"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "card", "{{CR}}carte"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {" a ", " 2 ", "pickup", "{{CR}}lucruri"}, -- The Book of Sin
	[102] = {1, 2, "pill", "{{CR}}pastile"}, -- Mom's Bottle of Pills
	[105] = "Realege de 2 ori, secând grupul articolului mai repede", -- The D6
	[107] = "Apar 2 corpuri", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" a ", " 2 ", "familiar", "{{CR}}familiari"}, -- Monster Manual
	[124] = {" a ", " 2 ", "effect", "{{CR}}effecte"}, -- Dead Sea Scrolls
	[136] = {" a ", " 2 ", "Isaac", "{{CR}}Isaaci"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, " Heart", " {{CR}}Inimi"}, -- Prayer Card (should this just say +1 health...)
	[158] = {" a ", " 2 ", " Heart", " {{CR}}Inimi", "rune", "{{CR}}rune", "card", "{{CR}}cărți"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Realege de 2 ori, ajutând cu progresul transformării dar secând grupul articolului mai repede", -- D100
	[284] = "Realege de 2 ori, ajutând cu progresul transformării dar secând grupul articolului mai repede", -- D4
	[286] = "Îl folosește de 2 ori", -- Blank Card
	[287] = {"one", "two"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Împingere mărită", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Îl folosește de 2 ori", -- Placebo
	[349] = "Încearcă șansa de 2 ori", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Duplicates", "Triplicates"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" a ", " 2 ", "barrel", "{{CR}}butoaie", "barrel", "{{CR}}butoaie"}, -- Mine Crafter
	[439] = {" a ", " 2 ", "trinket", "{{CR}}trinkets"}, -- Mom's Box
	[476] = {" a ", " 2 ", "pickup", "{{CR}}lucruri"}, -- D1
	[477] = "Activează fiecare articol activ absorbat de 2 ori", -- Void
	[480] = {"Doubles", "Quadruples"}, -- Compost
	[481] = "Două statistici ridicate și două scăzute", -- Dataminer
	[482] = "Schimbă personajul de 2 ori și șterge 2 articole", -- Clicker
	[485] = "25% șansă să cvadruple, 25% șansă să dubleze și șă șteargă originalele, 50% șansă să șteargă", -- Crooked Penny
	[486] = {"effects", "{{CR}}efecte {{BlinkYellowGreen}}de 2 ori"}, -- Dull Razor
	[488] = "Activează de 2 ori, dar doar al doilea efect rămâne", -- Metronome
	[489] = {" a ", " 2 ", "effect", "{{CR}}efecte"}, -- D Infinity
	[504] = {" a ", " 2 ", "turret", "{{CR}}turete"}, -- Brown Nugget
	[507] = "Folosește de 2 ori", -- Sharp Straw
	[510] = {" a ", " 2 ", "version", "{{CR}}versiuni"}, -- Delirious
	[516] = {" a ", " 2 ", "Sprinkler", "{{CR}}Sprinklers"}, -- Sprinkler
	[521] = {"one", "two", "item", "{{CR}}articole"}, -- Coupon
	[523] = "Schimbă conținutul cutiei cu lucuri din cameră", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Oprește călcările pentru 2 camere (sau valuri Boss Rush)", -- Broken Shovel
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Nici un efect pentru {1}",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Daune dublate", -- Cube of Meat
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
	["5.100.187"] = "Daune dublate", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "Daune dublate", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "Apare un Păianjen Albastru extra", -- Juicy Sack
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
	["5.100.319"] = {"Daunele lui Isaac", "dublează {{CR}}daunele lui Isaac"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Daune dublate", -- Incubus
	["5.100.361"] = "Daune dublate", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Șanse mai mare să apară baterii", -- Charged Baby
	["5.100.384"] = {"5-90", "10-180"}, -- Lil Gurdy
	["5.100.385"] = "Daune dublate", -- Bumbo
	["5.100.388"] = "Apar cutii mai des", -- Key Bum
	["5.100.389"] = {"5-6", "4-5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "Șanse mai mari să apară baterii", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "Aura dăunătoare se mărește, dar daunele nu", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"Daunele lui Isaac", "dublează {{CR}}daunele lui Isaac"}, -- Papa Fly
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
	["5.100.518"] = "Daune dublate", -- Buddy in a Box
	["5.100.519"] = "Daune dublate", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "Daunele de contact ale Omului Cal sunt dublate", -- 7 Seals
	["5.100.537"] = "Crește mărimea fluidului, dar nu și daunele", -- Lil Spewer
	["5.100.539"] = "Apare o variantă de campion a inamicului", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Daunele de contact ale orbitalului os sunt dublate", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone
	
	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Daunele lui Incubus sunt dublate", -- Incubus (for BFFS pedestal)
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	{"1", "Bănuț Înghițit", "{{Coin}} Când primești daune, apare 1 bănuț"}, -- Swallowed Penny
	{"2", "Rahat Pietrificat", "50% șansă să primești recompense din rahat"}, -- Petrified Poop
	{"3", "Baterie AAA", "{{Battery}} -1 Încărcare necesară pentru articolele active"}, -- AAA Battery
	{"4", "Telecomandă Stricată", "{{Collectible44}} Folosirea unui articol activ îl teleportează pe Isaac într-o cameră aleatorie"}, -- Broken Remote
	{"5", "Inimă Mov", "De 2 ori mai multe șanse să apară inamici campioni"}, -- Purple Heart
	{"6", "Magnet Stricat", "{{Coin}} Atrage bănuții către Isaac"}, -- Broken Magnet
	{"7", "Mărgea de Rozariu", "{{AngelChance}} +50% șansă la Camera Îngerului#{{Collectible33}} Șansă mai mare să găsești Biblia în {{Shop}} Magazine și {{Library}} Biblioteci"}, -- Rosary Bead
	{"8", "Cartuș", "{{Timer}} 5% șansă când primești daune să primești pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar provoacă 40 daune de contact pe secundă#{{HealingRed}} Omorând 2 inamici vindecă o jumătate de inimă#{{Fear}} Îi sperie pe toți inamicii din cameră"}, -- Cartridge
	{"9", "Vierme Pulsatoriu", "Lacrimile lui Isaac pulsează#Afectează zona de lovire a lacrimilor"}, -- Pulse Worm
	{"10", "Vierme Șerpuitor", "↑ {{Tears}} +0.3 Lacrimi#Lacrimile lui Isaac se mișcă în valuri"}, -- Wiggle Worm
	{"11", "Ring Worm", "Isaac's tears move in spirals with high speed"}, -- Ring Worm
	{"12", "Flat Worm", "50% wider tears#Increases knockback"}, -- Flat Worm
	{"13", "Store Credit", "{{Shop}} Allows Isaac to take 1 Shop item for free"}, -- Store Credit
	{"14", "Callus", "Immune to creep and floor spikes"}, -- Callus
	{"15", "Lucky Rock", "{{Coin}} Destroying rocks spawns coins"}, -- Lucky Rock
	{"16", "Mom's Toenail", "Mom's Foot stomps a random spot in the room every 60 seconds"}, -- Mom's Toenail
	{"17", "Black Lipstick", "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"}, -- Black Lipstick
	{"18", "Bible Tract", "{{EternalHeart}} +3% chance for Eternal Hearts"}, -- Bible Tract
	{"19", "Paper Clip", "{{GoldenChest}} Gold chests can be opened for free"}, -- Paper Clip
	{"20", "Monkey Paw", "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"}, -- Monkey Paw
	{"21", "Mysterious Paper", "Randomly grants the effect of: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"}, -- Mysterious Paper
	{"22", "Daemon's Tail", "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"}, -- Daemon's Tail
	{"23", "Missing Poster", "{{Player10}} Respawn as The Lost on death"}, -- Missing Poster
	{"24", "Butt Penny", "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"}, -- Butt Penny
	{"25", "Mysterious Candy", "Isaac farts or spawns poop every 30 seconds"}, -- Mysterious Candy
	{"26", "Hook Worm", "↑ {{Range}} +10 Range#Isaac's tears move in angular patterns"}, -- Hook Worm
	{"27", "Whip Worm", "↑ {{Shotspeed}} +0.5 Shot speed"}, -- Whip Worm
	{"28", "Broken Ankh", "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"}, -- Broken Ankh
	{"29", "Fish Head", "Taking damage spawns 1 blue fly"}, -- Fish Head
	{"30", "Pinky Eye", "{{Poison}} 10% chance to shoot poison tears#{{Luck}} 100% chance at 18 luck"}, -- Pinky Eye
	{"31", "Push Pin", "10% chance to shoot piercing + spectral tears#{{Luck}} 100% chance at 18 luck"}, -- Push Pin
	{"32", "Liberty Cap", "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"}, -- Liberty Cap
	{"33", "Umbilical Cord", "{{Timer}} Spawns {{Collectible100}} Little Steven for the room when Isaac's health is reduced to half a heart"}, -- Umbilical Cord
	{"34", "Child's Heart", "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} Chance for a bonus heart from chests, tinted rocks and destroyed machines"}, -- Child's Heart
	{"35", "Curved Horn", "↑ {{Damage}} +2 Damage"}, -- Curved Horn
	{"36", "Rusted Key", "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} Chance for a bonus key from chests, tinted rocks and destroyed machines"}, -- Rusted Key
	{"37", "Goat Hoof", "↑ {{Speed}} +0.15 Speed"}, -- Goat Hoof
	{"38", "Mom's Pearl", "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"}, -- Mom's Pearl
	{"39", "Cancer", "↑ {{Tears}} -2 Tear delay"}, -- Cancer
	{"40", "Red Patch", "{{Timer}} Taking damage has a 20% chance to grant ↑ {{Damage}} +1.8 damage for the room#{{Luck}} 100% chance at 8 luck"}, -- Red Patch
	{"41", "Match Stick", "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} Chance for a bonus bomb from chests, tinted rocks and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"}, -- Match Stick
	{"42", "Lucky Toe", "↑ {{Luck}} +1 Luck#+8% room clear reward chance#Extra pickups from chests, tinted rocks, and destroyed machines"}, -- Lucky Toe
	{"43", "Cursed Skull", "When damaged down to half a heart or less, Isaac is teleported to a random room"}, -- Cursed Skull
	{"44", "Safety Cap", "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} Chance for a bonus pill from chests, tinted rocks and destroyed machines"}, -- Safety Cap
	{"45", "Ace of Spades", "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} Chance for a bonus card from chests, tinted rocks and destroyed machines"}, -- Ace of Spades
	{"46", "Isaac's Fork", "{{HealingRed}} Clearing a room has a 10% chance to heal half a heart#{{Luck}} 100% chance at 18 luck"}, -- Isaac's Fork
	{"47", "", "<Item does not exist>"},
	{"48", "A Missing Page", "Taking damage has a 5% chance to deal 40 damage to all enemies in the room"}, -- A Missing Page
	{"49", "Bloody Penny", "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"}, -- Bloody Penny
	{"50", "Burnt Penny", "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"}, -- Burnt Penny
	{"51", "Flat Penny", "{{Key}} Picking up a coin has a 50% chance to spawn a key"}, -- Flat Penny
	{"52", "Counterfeit Penny", "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"}, -- Counterfeit Penny
	{"53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"}, -- Tick
	{"54", "Isaac's Head", "Familiar with piercing tears#Deals 3.5 damage per tear"}, -- Isaac's Head
	{"55", "Maggy's Faith", "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"}, -- Maggy's Faith
	{"56", "Judas' Tongue", "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"}, -- Judas' Tongue
	{"57", "???'s Soul", "Familiar that bounces around the room#Shoots in the same direction as Isaac#Deals 3.5 damage per tear"}, -- ???'s Soul
	{"58", "Samson's Lock", "{{Timer}} Killing an enemy has a 6.66% chance to grant ↑ {{Damage}} +0.5 damage for the room#{{Luck}} 100% chance at 10 luck"}, -- Samson's Lock
	{"59", "Cain's Eye", "Entering a new floor has a 25% chance to reveal map icons#{{Luck}} 100% chance at 3 luck"}, -- Cain's Eye
	{"60", "Eve's Bird Foot", "{{Collectible117}} Killing an enemy has a 5% chance to spawn a Dead Bird#{{Luck}} 100% chance at 8 luck"}, -- Eve's Bird Foot
	{"61", "The Left Hand", "{{RedChest}} Turns all chests into Red Chests"}, -- The Left Hand
	{"62", "Shiny Rock", "Crawlspace rocks and tinted rocks blink every 10 seconds"}, -- Shiny Rock
	{"63", "Safety Scissors", "{{Bomb}} Turns Troll Bombs into bomb pickups"}, -- Safety Scissors
	{"64", "Rainbow Worm", "Grants a random worm effect every 3 seconds"}, -- Rainbow Worm
	{"65", "Tape Worm", "↑ {{Range}} x2 Range multiplier#↓ x0.5 Tear height"}, -- Tape Worm
	{"66", "Lazy Worm", "↑ {{Range}} +4 Range#↑ +2 Tear height#↓ {{Shotspeed}} -0.4 Shot speed"}, -- Lazy Worm
	{"67", "Cracked Dice", "Taking damage has a 50% chance to trigger one of these effects:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"}, -- Cracked Dice
	{"68", "Super Magnet", "Isaac attracts pickups and enemies"}, -- Super Magnet
	{"69", "Faded Polaroid", "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"}, -- Faded Polaroid
	{"70", "Louse", "Occasionally spawns a blue spider in hostile rooms"}, -- Louse
	{"71", "Bob's Bladder", "Isaac's bombs leave damaging creep"}, -- Bob's Bladder
	{"72", "Watch Battery", "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"}, -- Watch Battery
	{"73", "Blasting Cap", "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"}, -- Blasting Cap
	{"74", "Stud Finder", "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"}, -- Stud Finder
	{"75", "Error", "Grants a random trinket effect every room"}, -- Error
	{"76", "Poker Chip", "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"}, -- Poker Chip
	{"77", "Blister", "Increases knockback"}, -- Blister
	{"78", "Second Hand", "Status effects applied to enemies last twice as long"}, -- Second Hand
	{"79", "Endless Nameless", "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"}, -- Endless Nameless
	{"80", "Black Feather", "↑ {{Damage}} +0.2 Damage for each \"Evil up\" item held"}, -- Black Feather
	{"81", "Blind Rage", "Invincibility frames after taking damage last twice as long"}, -- Blind Rage
	{"82", "Golden Horse Shoe", "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"}, -- Golden Horse Shoe
	{"83", "Store Key", "{{Shop}} Lets Isaac open Shops for free"}, -- Store Key
	{"84", "Rib of Greed", "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"}, -- Rib of Greed
	{"85", "Karma", "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"}, -- Karma
	{"86", "Lil Larva", "Destroying poop spawns 1 blue fly"}, -- Lil Larva
	{"87", "Mom's Locket", "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"}, -- Mom's Locket
	{"88", "NO!", "Prevents active items from spawning"}, -- NO!
	{"89", "Child Leash", "Familiars stay closer to Isaac"}, -- Child Leash
	{"90", "Brown Cap", "Poop explodes for 100 damage when destroyed"}, -- Brown Cap
	{"91", "Meconium", "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"}, -- Meconium
	{"92", "Cracked Crown", "↑ {{Tears}} x0.8 Tear delay#↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"}, -- Cracked Crown
	{"93", "Used Diaper", "15% chance per room for all fly enemies to become friendly"}, -- Used Diaper
	{"94", "Fish Tail", "Doubles all blue fly / spider spawns"}, -- Fish Tail
	{"95", "Black Tooth", "{{Poison}} 3% chance to shoot poison tooth tears"}, -- Black Tooth
	{"96", "Ouroboros Worm", "↑ {{Range}} +4 Range#↑ +2 Tear height#Spectral tears#Chance for homing tears#{{Luck}} 100% chance at 9 luck#Isaac's tears move quickly in a spiral pattern"}, -- Ouroboros Worm
	{"97", "Tonsil", "Taking damage 12-20 times spawns a projectile blocking familiar#Disappears after spawning 2 Familiars"}, -- Tonsil
	{"98", "Nose Goblin", "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for 60 seconds"}, -- Nose Goblin
	{"99", "Super Ball", "10% chance to shoot bouncing tears"}, -- Super Ball
	{"100", "Vibrant Bulb", "Holding a fully charged active item grants:#↑ {{Speed}} +0.25 Speed#↑ {{Tears}} +0.2 Tears#↑ {{Damage}} +0.5 Damage#↑ {{Range}} +0.75 Range#↑ {{Shotspeed}} +0.1 Shot speed#↑ {{Luck}} +1 Luck"}, -- Vibrant Bulb
	{"101", "Dim Bulb", "Holding a completely uncharged active item grants:#↑ {{Speed}} +0.5 Speed#↑ {{Tears}} +0.4 Tears#↑ {{Damage}} +1.5 Damage#↑ {{Range}} +1.5 Range#↑ {{Shotspeed}} +0.3 Shot speed#↑ {{Luck}} +2 Luck"}, -- Dim Bulb
	{"102", "Fragmented Card", "{{SecretRoom}} +1 extra Secret Room per floor while held"}, -- Fragmented Card
	{"103", "Equality!", "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"}, -- Equality!
	{"104", "Wish Bone", "2% chance to get destroyed and spawn a pedestal item when hit"}, -- Wish Bone
	{"105", "Bag Lunch", "{{Collectible22}} 2% chance to get destroyed and spawn Lunch when hit"}, -- Bag Lunch
	{"106", "Lost Cork", "Increases the radius of friendly creep"}, -- Lost Cork
	{"107", "Crow Heart", "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"}, -- Crow Heart
	{"108", "Walnut", "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"}, -- Walnut
	{"109", "Duct Tape", "Familiars are stuck in one spot and cannot move"}, -- Duct Tape
	{"110", "Silver Dollar", "{{Shop}} Shops appear in the Womb"}, -- Silver Dollar
	{"111", "Bloody Crown", "{{TreasureRoom}} Treasure Rooms appear in the Womb"}, -- Bloody Crown
	{"112", "Pay To Win", "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"}, -- Pay To Win
	{"113", "Locust of War", "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"}, -- Locust of War
	{"114", "Locust of Pestilence", "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"}, -- Locust of Pestilence
	{"115", "Locust of Famine", "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"}, -- Locust of Famine
	{"116", "Locust of Death", "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"}, -- Locust of Death
	{"117", "Locust of Conquest", "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"}, -- Locust of Conquest
	{"118", "Bat Wing", "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"}, -- Bat Wing
	{"119", "Stem Cell", "{{HealingRed}} Entering a new floor heals half a heart"}, -- Stem Cell
	{"120", "Hairpin", "{{Battery}} Entering an uncleared boss room fully recharges active items"}, -- Hairpin
	{"121", "Wooden Cross", "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"}, -- Wooden Cross
	{"122", "Butter!", "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"}, -- Butter!
	{"123", "Filigree Feather", "Angel bosses drop angel items instead of Key Pieces"}, -- Filigree Feather
	{"124", "Door Stop", "The last door used stays open"}, -- Door Stop
	{"125", "Extension Cord", "Connects all familiars with beams of electricity#The beams deal 6 damage"}, -- Extension Cord
	{"126", "Rotten Penny", "Picking up a coin spawns a blue fly"}, -- Rotten Penny
	{"127", "Baby-Bender", "Grants all familiars homing shots"}, -- Baby-Bender
	{"128", "Finger Bone", "{{EmptyBoneHeart}} Taking damage has a 2% chance to grant a Bone Heart"}, -- Finger Bone
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - Nebunul", "Isaac este teleportat în prima cameră a etajului"}, -- 0 - The Fool
	{"2", "I - Magicianul", "{{Timer}} Lacrimi balistice pe durata camerei"}, -- I - The Magician
	{"3", "II - Marea Preoteasă", "Piciorul mamei cade pe inamici#Piciorul cade pe Isaac dacă nu sunt inamici"}, -- II - The High Priestess
	{"4", "III - Împărăteasa", "{{Timer}} Pe durata camerei:#↑ {{Speed}} +0.3 Viteză#↑ {{Damage}} +1.5 Daune"}, -- III - The Empress
	{"5", "IV - Împăratul", "{{BossRoom}} Isaac este teleportat în Camera Șefului"}, -- IV - The Emperor
	{"6", "V - Marele Preot", "{{SoulHeart}} Oferă 2 Inimi Suflet"}, -- V - The Hierophant
	{"7", "VI - Îndrăgostiții", "{{Heart}} Oferă 2 Inmi Roșii"}, -- VI - The Lovers
	{"8", "VII - Faetonul", "{{Timer}} Pentru 6 secude:#↑ {{Speed}} +0.28 Viteză#Invincibilitate#Isaac nu poate trage, dar provoacă 40 de daune de contact pe secundă"}, -- VII - The Chariot
	{"9", "VIII - Dreptate", "Oferă aleatoriu {{UnknownHeart}} o inimă, {{Coin}} un bănuț, {{Bomb}} o bombă și {{Key}} o cheie"}, -- VIII - Justice
	{"10", "IX - Eremitul", "{{Shop}} Isaac este teleportat la magazin"}, -- IX - The Hermit
	{"11", "X - Roata norocului", "Oferă o {{Slotmachine}} Păcănea sau {{FortuneTeller}} Mașina Viitorului"}, -- X - Wheel of Fortune
	{"12", "XI - Forța", "{{Timer}} Pe durata camerei:#↑ {{Heart}} +1 Viață#↑ {{Speed}} +0.3 Viteză#↑ {{Damage}} +0.3 Daune#↑ {{Damage}} x1.5 Daune#↑ {{Range}} +5.25 Rază de atac#↑ +0.5 Înălțimea lacrimilor"}, -- XI - Strength
	{"13", "XII - Spânzuratul", "{{Timer}} Zbor pe durata camerei"}, -- XII - The Hanged Man
	{"14", "XIII - Moartea", "Provoacă 40 de daune tuturor inamicilor din cameră"}, -- XIII - Death
	{"15", "XIV - Echilibrul", "{{DonationMachine}} Oferă un Donator de Sânge"}, -- XIV - Temperance
	{"16", "XV - Diavolul", "{{Timer}} Pe durata camerei:#↑ {{Damage}} +2 Daune"}, -- XV - The Devil
	{"17", "XVI - Turnul", "Oferă 6 Bombe Troll"}, -- XVI - The Tower
	{"18", "XVII - Steaua", "{{TreasureRoom}} Isaac este teleportat în Camera Comorilor"}, -- XVII - The Stars
	{"19", "XVIII - Luna", "{{SecretRoom}} Isaac este teleporat în Camera Secretă"}, -- XVIII - The Moon
	{"20", "XIX - Soarele", "{{HealingRed}} Vindecă inimile#Provoacă 100 de daune tuturor inamicilor din cameră#{{Timer}} Dezvăluie harta pe durata etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"}, -- XIX - The Sun
	{"21", "XX - Judecata", "Oferă un cerșetor sau un cerșetor diavol#2% șansă pentru un cerșetor special"}, -- XX - Judgement
	{"22", "XXI - Lumea", "{{Timer}} Dezvăluie harta pe durata etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"}, -- XXI - The World
	{"23", "2 of Clubs", "{{Bomb}} Doubles Isaac's number of bombs"}, -- 2 of Clubs
	{"24", "2 of Diamonds", "{{Coin}} Doubles Isaac's number of coins"}, -- 2 of Diamonds
	{"25", "2 of Spades", "{{Key}} Doubles Isaac's number of keys"}, -- 2 of Spades
	{"26", "2 of Hearts", "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"}, -- 2 of Hearts
	{"27", "Ace of Clubs", "{{Bomb}} Turns all pickups into random bombs"}, -- Ace of Clubs
	{"28", "Ace of Diamonds", "{{Coin}} Turns all pickups into random coins"}, -- Ace of Diamonds
	{"29", "Ace of Spades", "{{Key}} Turns all pickups into random keys"}, -- Ace of Spades
	{"30", "Ace of Hearts", "{{UnknownHeart}} Turns all pickups into random hearts"}, -- Ace of Hearts
	{"31", "Joker", "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"}, -- Joker
	{"32", "Hagalaz", "Destroy all rocks in the room"}, -- Hagalaz
	{"33", "Jera", "Duplicates all pickups in room"}, -- Jera
	{"34", "Ehwaz", "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"}, -- Ehwaz
	{"35", "Dagaz", "{{SoulHeart}} +1 Soul Heart#{{CurseCursed}} Removes all curses for the floor"}, -- Dagaz
	{"36", "Ansuz", "{{Timer}} Full mapping effect for the floor"}, -- Ansuz
	{"37", "Perthro", "Rerolls all pedestal items in the room"}, -- Perthro
	{"38", "Berkano", "Summons 3 blue spiders and 3 blue flies"}, -- Berkano
	{"39", "Algiz", "{{Timer}} Makes Isaac invincible for 30 seconds"}, -- Algiz
	{"40", "Blank Rune", "Triggers a random rune effect#25% chance to duplicate itself when used"}, -- Blank Rune
	{"41", "Black Rune", "Deals 40 damage to all enemies#Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"}, -- Black Rune
	{"42", "Chaos Card", "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"}, -- Chaos Card
	{"43", "Credit Card", "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"}, -- Credit Card
	{"44", "Rules Card", "Displays \"helpful\" tips on use"}, -- Rules Card
	{"45", "A Card Against Humanity", "Fills the whole room with poop"}, -- A Card Against Humanity
	{"46", "Suicide King", "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"}, -- Suicide King
	{"47", "Get Out Of Jail Free Card", "Open all doors in the room"}, -- Get Out Of Jail Free Card
	{"48", "? Card", "Uses Isaac's active item for free"}, -- ? Card
	{"49", "Dice Shard", "Rerolls all item pedestals and pickups in the room"}, -- Dice Shard
	{"50", "Emergency Contact", "Two of Mom's Hands come down and grab an enemy each"}, -- Emergency Contact
	{"51", "Holy Card", "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"}, -- Holy Card
	{"52", "Huge Growth", "{{Timer}} Receive for the room:#↑ {{Damage}} +7 Damage#↑ {{Range}} +30 Range#Size up#Allows Isaac to destroy rocks by walking into them"}, -- Huge Growth
	{"53", "Ancient Recall", "{{Card}} Spawns 3 random cards"}, -- Ancient Recall
	{"54", "Era Walk", "{{Timer}} Receive for the room:#↑ {{Speed}} +0.5 Speed#↓ {{Shotspeed}} -1 Shot speed#{{Slow}} Slow down enemies"}, -- Era Walk
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
	[9] = {"Spawns {{ColorShinyPurple}}2{{CR}} random {{UnknownHeart}} hearts, {{Coin}} coins, {{Bomb}} bombs and {{Key}} keys"}, -- VIII - Justice
	[11] = {" a ", " 2 ", "Slot Machine", "{{CR}}Slot Machines", "Fortune Machine", "{{CR}}Fortune Machines"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", " Machine", " {{CR}}Machines", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Beggar ", "{{CR}}Beggars ", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XX - Judgement
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

EID.descriptions[languageCode].unidentifiedPill = "Unidentified Pill"

EID.descriptions[languageCode].pills={
	{"0", "Bad Gas", "{{Poison}} Isaac farts and poisons nearby enemies"}, -- Bad Gas
	{"1", "Bad Trip", "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"}, -- Bad Trip
	{"2", "Balls of Steel", "{{SoulHeart}} +2 Soul Hearts"}, -- Balls of Steel
	{"3", "Bombs are Key", "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"}, -- Bombs are Key
	{"4", "Explosive Diarrhea", "Isaac quickly spawns 5 lit bombs"}, -- Explosive Diarrhea
	{"5", "Full Health", "{{HealingRed}} Fully heals all heart containers"}, -- Full Health
	{"6", "Health Down", "↓ {{EmptyHeart}} -1 Health#Becomes a Health Up pill at 0 or 1 heart containers"}, -- Health Down
	{"7", "Health Up", "↑ {{EmptyHeart}} +1 Empty heart container"}, -- Health Upz
	{"9", "Puberty", "No effect#Eating 3 grants the Adult transformation:#↑ {{Heart}} +1 Health"}, -- Puberty
	{"10", "Pretty Fly", "+1 Fly orbital"}, -- Pretty Fly
	{"11", "Range Down", "↓ {{Range}} -2 Range"}, -- Range Down
	{"12", "Range Up", "↑ {{Range}} +2.5 Range"}, -- Range Up
	{"13", "Speed Down", "↓ {{Speed}} -0.12 Speed"}, -- Speed Down
	{"14", "Speed Up", "↑ {{Speed}} +0.15 Speed"}, -- Speed Up
	{"15", "Tears Down", "↓ {{Tears}} -0.28 Tears"}, -- Tears Down
	{"16", "Tears Up", "↑ {{Tears}} +0.35 Tears"}, -- Tears Up
	{"17", "Luck Down", "↓ {{Luck}} -1 Luck"}, -- Luck Down
	{"18", "Luck Up", "↑ {{Luck}} +1 Luck"}, -- Luck Up
	{"19", "Telepills", "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"}, -- Telepills
	{"20", "48 Hour Energy!", "{{Battery}} Fully recharges the active item#{{Battery}} Spawns 1-2 batteries"}, -- 48 Hour Energy!
	{"21", "Hematemesis", "{{Warning}} Drains all but one heart container#{{Heart}} Spawns 1-4 Red Hearts"}, -- Hematemesis
	{"22", "Paralysis", "Prevents Isaac from moving and shooting for 2 seconds"}, -- Paralysis
	{"23", "I can see forever!", "{{SecretRoom}} Opens all secret room entrances on the floor"}, -- I can see forever!
	{"24", "Pheromones", "{{Charm}} Charms all enemies in the room"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Hides the map for the floor"}, -- Amnesia
	{"26", "Lemon Party", "Spawns a large puddle on the ground which damages enemies"}, -- Lemon Party
	{"27", "R U A Wizard?", "{{Timer}} Isaac shoots diagonally for 30 seconds"}, -- R U A Wizard?
	{"28", "Percs!", "{{Timer}} Reduces all damage taken to half a heart for the room"}, -- Percs!
	{"29", "Addicted!", "{{Timer}} Increases all damage taken to a full heart for the room"}, -- Addicted!
	{"30", "Re-Lax", "Isaac spawns poop behind him for 2 seconds"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Curse of the Maze effect for the floor"}, -- ???
	{"32", "One makes you larger", "Increases Isaac's size#Doesn't affect his hitbox"}, -- One makes you larger
	{"33", "One makes you small", "Decreases Isaac's size#Also decreases his hitbox"}, -- One makes you small
	{"34", "Infested!", "Spawns 1 blue spider for each poop in the room"}, -- Infested!
	{"35", "Infested?", "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"}, -- Infested?
	{"36", "Power Pill!", "{{Timer}} Receive for 6.5 seconds:#Invincibility#Isaac can't shoot but deals 40 contact damage per second#{{HealingRed}} Killing 2 enemies heals half a heart#{{Fear}} Fears all enemies in the room"}, -- Power Pill!
	{"37", "Retro Vision", "{{Timer}} Pixelates the screen 3 times over 30 second"}, -- Retro Vision
	{"38", "Friends Till The End!", "Spawns 3 blue flies"}, -- Friends Till The End!
	{"39", "X-Lax", "Spawns a pool of slippery creep"}, -- X-Lax
	{"40", "Something's wrong...", "{{Slow}} Spawns a pool of slowing creep"}, -- Something's wrong...
	{"41", "I'm Drowsy...", "{{Slow}} Slows all enemies in the room"}, -- I'm Drowsy...
	{"42", "I'm Excited!!", "Speeds up all enemies in the room"}, -- I'm Excited!!
	{"43", "Gulp!", "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Shoots one Ipecac tear"}, -- Horf!
	{"45", "Feels like I'm walking on sunshine!", "{{Timer}} Receive for 6 seconds:#Invincibility#Isaac can't shoot (No contact damage)"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Spawns the last pill used before Vurp!"}, -- Vurp!
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalene", ""},
	[2] = {"Cain", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts"},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Flight#{{Collectible118}} Short range Brimstone instead of tears"},
	[8] = {"Lazarus", "When you die, resurrect as Lazarus Risen with 1 Red Heart container"},
	[9] = {"Eden", "Start with random stats and items each run"},
	[10] = {"The Lost", "Flight#Spectral tears#{{Warning}} No health#{{DevilRoom}} One devil deal per room can be taken for free"},
	[11] = {"Lazarus Risen", "Increased stats and x1.2 damage multiplier"},
	[12] = {"Dark Judas", "{{Damage}} x2 Damage multiplier#{{Player3}} Counts as Judas for completion marks"},
	[13] = {"Lilith", "Cannot shoot tears#{{Collectible360}} Her Incubus shoots for her"},
	[14] = {"Keeper", "{{CoinHeart}} Heal by picking up coins#Maximum of 2 Coin Hearts#Heart pickups are turned into Blue Flies"},
	[15] = {"Apollyon", ""},
	[16] = {"The Forgotten", "You have a melee attack which can be charged and thrown#{{BoneHeart}} Can have up to 6 Bone Hearts#{{Player17}} Press {{ButtonRT}} to switch to The Soul#{{SoulHeart}} The Soul can have up to 6 Soul/Black Hearts and has flight and spectral tears#The Soul is chained to a small radius around The Forgotten"},
	[17] = {"The Forgotten Soul", "You have a melee attack which can be charged and thrown#{{BoneHeart}} Can have up to 6 Bone Hearts#{{Player17}} Press {{ButtonRT}} to switch to The Soul#{{SoulHeart}} The Soul can have up to 6 Soul/Black Hearts and has flight and spectral tears#The Soul is chained to a small radius around The Forgotten"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Next Sacrifice Room payout]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% șansă pentru 1 bănuț#{{Bomb}} 100% șansă pentru 1 bombă dacă boss-ul din B1 a fost bătut în mai puțin de 1 minut"},
	{"2", "", "{{Coin}} 50% chance for 1 coin#{{Bomb}} 100% chance for 1 bomb, when on B1 and killed the boss under 1 minute"},
	{"3", "", "{{AngelChance}} 67% șansă ca șansa pentru Camera Îngerului să crească"},
	{"4", "", "{{Chest}} 50% șansă pentru 1 cufăr"},
	{"5", "", "{{Coin}} 33% chance for 3 coins#{{AngelChance}} 67% chance for increased Angel Room chance"},
	{"6", "", "{{AngelRoom}} 33% chance for a teleport to the Angel Room#{{DevilRoom}} Teleports to the Devil Room instead if its door was spawned on the current floor#{{Chest}} 67% chance for random chest"},
	{"7", "", "{{AngelRoom}} 33% chance for 1 random Angel Room item#{{SoulHeart}} 67% chance for 1 Soul Heart"},
	{"8", "", "100% chance for 7 Troll Bombs"},
	{"9", "", "100% chance to spawn \"Uriel\""},
	{"10", "", "{{SoulHeart}} 50% chance for 7 Soul Hearts#{{Coin}} 50% chance for 30 coins"},
	{"11", "", "100% chance to spawn \"Gabriel\""},
	{"12", "", "50% chance to teleport to the \"Dark Room\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Dice Room effects]"

EID.descriptions[languageCode].dice={
	{"1", "", "Rerolls all of Isaac's items into random items from the room pool they were acquired in"},
	{"2", "", "Rerolls all pickups in the room"},
	{"3", "", "Rerolls all pickups and trinkets on the entire floor#Does not affect the {{AngelDevilChance}} Devil/Angel Room or {{LadderRoom}} crawlspaces"},
	{"4", "", "Rerolls all pedestal items on the floor#Does not affect the {{AngelDevilChance}} Devil/Angel Room or {{LadderRoom}} crawlspaces"},
	{"5", "", "Rerolls and restarts the current floor"},
	{"6", "", "Rerolls all of Isaac's items#Rerolls all pickups, trinkets and pedestal items on the floor"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fun Guy",			-- 2
	"Beelzebub",		-- 3
	"Conjoined",		-- 4
	"Spun",				-- 5
	"Yes Mother?",		-- 6
	"Oh Crap",			-- 7
	"Bob",				-- 8
	"Leviathan",		-- 9
	"Seraphim",			-- 10
	"Super Bum",		-- 11
	"Bookworm",			-- 12
	"Spider Baby",		-- 13
	"Adult",			-- 14
	"Stompy"			-- 15
}

---------- MISC ----------

-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
    -- English plural is very easy. Simply put an "s" at the end of specific words, if amount > 1
    if amount > 1 then
        text = text:gsub("Viață", "Vieți") 
		text = text:gsub("Inimă", "Inimi")
		text = text:gsub("Neagră", "Negre")
		text = text:gsub("lăcustă", "lăcuste")
		text = text:gsub("musculiță", "musculițe")
    end
    -- replace {pluralize} placeholders inside the text with an "s"
    text = EID:ReplaceVariableStr(text, "pluralize_m", amount > 1 and "i" or "")
    text = EID:ReplaceVariableStr(text, "pluralize_f", amount > 1 and "e" or "")
	text = EID:ReplaceVariableStr(text, "pluralize_f2", amount > 1 and "i" or "")
	text = EID:ReplaceVariableStr(text, "pluralize_f3", amount > 1 and "ii" or "")
	text = EID:ReplaceVariableStr(text, "pluralize_n", amount > 1 and "e" or "")
	text = EID:ReplaceVariableStr(text, "pluralize_n2", amount > 1 and "uri" or "")
    return text
end

EID.descriptions[languageCode].VoidText = "Dacă este absorbit:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{1} Viteză", "{1} Lacrimi", "{1} Daune", "{1} Rază de atac", "{1} Viteza lacrimilor", "{1} Noroc"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Daune", "↑ {{Tears}} -4 Întârziere a lacrimilor", "↑ {{Speed}} +0.5 Viteză", "↑ {{Range}} +7.5 Rază de atac#↑ +1 Înălțimea lacrimilor"}

EID.descriptions[languageCode].CrookedPennyHeads = "Cap"
EID.descriptions[languageCode].CrookedPennyTails = "Pajură"                    

EID.descriptions[languageCode].LuckModifier = "{1}% șansă la {2} noroc"

EID.descriptions[languageCode].CollectionPageInfo = "Acest item trebuie să fie colectat pentru pagina de colecții!"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} iteme colectate (+{2} Daune)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} Unică folosire {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"↑ {{Heart}} +{1} Inimă", "{{SoulHeart}} +{1} Inimă Suflet",
	"↑ {{EmptyHeart}} +{1} Inimă goală", "{{SoulHeart}} +{1} Inimă Suflet",
	"↓ {{EmptyHeart}} {1} Inimă", "↓ {{SoulHeart}} {1} Inimă Suflet"},
	
	["Red to Black"] = {"↑ {{Heart}} +{1} Inimă", "{{BlackHeart}} +{1} Inimă Neagră",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{BlackHeart}} +{1} Black Heart{pluralize}",
	"↓ {{EmptyHeart}} {1} Inimă", "↓ {{BlackHeart}} {1} Inimă Neagră"},
	
	["Red to Bone"] = {"↑ {{Heart}} +{1} Inimă", "{{BoneHeart}} +{1} Bone Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{EmptyBoneHeart}} +{1} Empty Bone Heart{pluralize}", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} Inimă", "↓ {{EmptyBoneHeart}} {1} Bone Heart{pluralize}"}, -- Red HP to Bone Hearts
	
	["Red to Coin"] = {"↑ {{Heart}} +{1} Inimă", "{{CoinHeart}} +{1} Coin Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "{{EmptyCoinHeart}} +{1} Empty Coin Heart{pluralize}",
	"{{HealingRed}} Heals {1} heart{pluralize}", "{{HealingCoin}} Heals {1} coin{pluralize}", "{{HealingRed}} Heals half a heart", "{{HealingCoin}} Heals 1 coin", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Health", "↓ {{EmptyCoinHeart}} {1} Coin Heart{pluralize}"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {"↑ {{Heart}} +{1} Inimă", "", "↑ {{EmptyHeart}} +{1} Empty heart container{pluralize}", "", "↓ {{EmptyHeart}} {1} Inimă", ""}, -- Red HP to None (The Lost)
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
	["Overridden"] = "Overridden by {1}",
	["Overrides"] = "Overrides {1}",
	["Almost No Effect"] = "Little to no effect for {1}",
	["No Effect"] = "No effect for {1}",
	["No Effect Replace"] = {"No effect for {1}"},
	["No Effect From"] = "No effect from {1}",
	["Can't Charge"] = "Can't charge {1}",
	["Can't Be Charged"] = "Can't be charged by {1}",
	["Can't Be Duplicated"] = "Can't be duplicated",
	["No Effect (Greed)"] = "{{GreedMode}} No effect in Greed Mode",
	["No Effect (Copies)"] = "No additional effect from multiple copies", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "No additional effect on familiars", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Different effect for {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} dies on use", -- for Razor Blade and such as The Lost
	
	
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
	["5.100.549"] = "{1} simply gets ↑ {{Tears}} +0.4 Tears on pickup", -- Brittle Bones (Keeper+Lost)
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
	
	["5.100.7"] = "x1.5 Damage multiplier while {1} effect is active", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Damage multiplier", -- Book of Belial
	["5.300.16"] = "x1.5 Damage multiplier", -- XV - The Devil
	
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
	["Epic Fetus Brimstone"] = "{1} has priority#Rockets shoot out 10 beams",
	["Epic Fetus Mom's Knife"] = "{1} has priority#Rockets shoot out 10 knives",
	["Haemolacria Brimstone"] = "{1} has priority#Tears split into 4-7 beams",
	["Brimstone Mom's Knife"] = "{1} has priority#A barrage of knives shoot out based on charge amount",
	["Ludovico Ipecac"] = "The tear gets +4 damage but doesn't explode or poison",
	["Technology Ipecac"] = "The laser gets +4 damage and poisons targets",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} x1.25 Tears multiplier",
	["Chocolate Milk Marked"] = "Isaac automatically charges based on distance from the crosshair",
	["Ghost Pepper Fart"] = "Farting causes a flame to shoot out behind Isaac",
	["Damage Multiplier Stack"] = "The damage multiplier doesn't stack",
	["White Poop"] = "Spawns White Poop instead",
	["White Poop Chance"] = "Chance to spawn White Poop",
	["Golden Poop Chance"] = "Chance to spawn Golden Poop",
	["5.100.483"] = "{{GoldenBomb}} Having a golden bomb when using the item consumes it and allows for another use of Mama Mega",
	
	["5.300.5"] = {"{{BossRoom}} Teleports Isaac to a random Boss Room"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Teleports Isaac to a random room if there's no Treasure Room", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Teleports Isaac to a random Treasure Room"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Teleports Isaac to the first room of the floor"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Teleports Isaac to a random room if there's no Shop", -- IX - The Hermit (Womb and below)
	
}



