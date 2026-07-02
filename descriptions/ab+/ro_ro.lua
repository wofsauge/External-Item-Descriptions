---------------------------------------
-----  Basic Romanian descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ro_ro"

-- init Romanian table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Romanian"
EID.descriptions[languageCode].alternativeLanguageCodes = {"romanian", "ro"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default"}, {name="inverted"}, {name="borderless"}}

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "Ceapa Tristă", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac"}, -- The Sad Onion
	{"2", "Ochiul Interior", "↓ {{Tears}} {{ColorGreen}}x0.48{{CR}} Viteză de atac#↓ {{Tears}} {{ColorGreen}}+3{{CR}} Întârziere a lacrimilor #Isaac trage cu 3 lacrimi odată"}, -- The Inner Eye
	{"3", "Lingura Îndoită", "Oferă lacrimi teleghidate"}, -- Spoon Bender
	{"4", "Cap de Greier", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune"}, -- Cricket's Head
	{"5", "Reflexia Mea", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Mărimea Lacrimilor#↑ {{Shotspeed}} {{ColorGreen}}+0.6{{CR}} Viteza atacului#Lacrimile primesc un efect bumerang"}, -- My Reflection
	{"6", "Numărul Unu", "↑ {{Tears}} {{ColorGreen}}+1.5{{CR}} Viteză de Atac#↑ {{ColorGreen}}+0.76{{CR}} Mărimea Lacrimilor#↓ {{Range}} {{ColorRed}}-17.62{{CR}} Distanță"}, -- Number One
	{"7", "Sângele Martirului", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune"}, -- Blood of the Martyr
	{"8", "Fratele Bobby", "Trage cu Lacrimi Normale#Are 3.5 daune pe lacrimă"}, -- Brother Bobby
	{"9", "Skatole", "Toate muștele inamice sunt prietenoase"}, -- Skatole
	{"10", "Aureola de Muște", "{{ColorGreen}}+2{{CR}} Muște Orbital#Blochează proiectilele inamicilor"}, -- Halo of Flies
	{"11", "1sus!", "↑ {{ColorGreen}}+1{{CR}} Viață#Isaac reînvie cu inimi roșii pline la moarte"}, -- 1up!
	{"12", "Ciuperca Magică", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Înălțimea Lacrimilor#Crește mărimea#{{HealingRed}} Inimi roșii pline"}, -- Magic Mushroom
	{"13", "Virusul", "↓ {{Speed}} {{ColorRed}}-0.1{{CR}} Viteză#{{Poison}} Atingerea inamicilor îi otrăvește#{{BlackHeart}} Inamicii otrăviți pot oferi Inimi Negre"}, -- The Virus
	{"14", "Furie cu steroizi", "↑ {{Speed}} {{ColorGreen}}+0.6{{CR}} Viteză#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Inimi roșii pline"}, -- <3
	{"16", "Ficat Crud", "↑ {{Heart}} {{ColorGreen}}+2{{CR}} Inimi roșii#{{HealingRed}} Inimi roșii pline"}, -- Raw Liver
	{"17", "Cheia Schelet", "{{Key}} {{ColorGreen}}+99{{CR}} Chei"}, -- Skeleton Key
	{"18", "Un Leu", "{{Coin}} {{ColorGreen}}+99{{CR}} Bănuți"}, -- A Dollar
	{"19", "Boom!", "{{Bomb}} {{ColorGreen}}+10{{CR}} Bombe"}, -- Boom!
	{"20", "Transcendență", "Zbori"}, -- Transcendence
	{"21", "Busola", "Arată iconițele pe hartă#Nu arată aspectul hărții"}, -- The Compass
	{"22", "Prânz", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Vindecă o inimă"}, -- Lunch
	{"23", "Cină", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Vindecă o inimă"}, -- Dinner
	{"24", "Desert", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Vindecă o inimă"}, -- Dessert
	{"25", "Mic Dejun", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Vindecă o inimă"}, -- Breakfast
	{"26", "Carne Stricată", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie"}, -- Rotten Meat
	{"27", "Lingură de Lemn", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză"}, -- Wooden Spoon
	{"28", "Cureaua", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză"}, -- The Belt
	{"29", "Chiloții Mamei", "↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor#Oferă 3-6 muște albastre"}, -- Mom's Underwear
	{"30", "Tocurile Mamei", "↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor#Isaac cauzează 24 daune la contact pe secundă"}, -- Mom's Heels
	{"31", "Rujul Mamei", "↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor#{{UnknownHeart}} Oferă 1 inimă aleatorie"}, -- Mom's Lipstick
	{"32", "Cuier de Sârmă", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de Atac"}, -- Wire Coat Hanger
	{"33", "Biblia", "{{Timer}} Zbori o cameră#{{MomsHeart}} Omoară Piciorul Mamei și Inima Mamei instant#{{Warning}} Îl Omoară pe Isaac când este folosită pe Satan"}, -- The Bible
	{"34", "Cartea lui Belial", "{{AngelDevilChance}} {{ColorGreen}}+12.5%{{CR}} Șansă la camerele Demon/Înger când e ținută#{{Timer}} Primește pentru cameră:#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune"}, -- The Book of Belial
	{"35", "Necronomiconul", "Dă 40 daune tuturor inamicilor din cameră"}, -- The Necronomicon
	{"36", "Rahatul", "Depune un rahat și împinge inamicii#Poate fi pus langă o gaură și distrus cu o bombă pentru a face un pod"}, -- The Poop
	{"37", "Dl. Bum", "Aruncă o bombă mare sub Isaac care dă 110 daune"}, -- Mr. Boom
	{"38", "Capul lui Tammy", "Trage 10 lacrimi într-un cerc împrejurul lui Isaac#Lacrimile copiază efectele lui Isaac, plus 25 daune"}, -- Tammy's Head
	{"39", "Sutienul Mamei", "Pietrifică toți inamicii din cameră 4 secunde"}, -- Mom's Bra
	{"40", "Kamikaze!", "Cauzează o explozie la locația lui Isaac#Dă 40 daune"}, -- Kamikaze!
	{"41", "Tamponul Mamei", "{{Fear}} Înfricoșează toți inamicii din cameră 5 secunde"}, -- Mom's Pad
	{"42", "Capul Putred al lui Bob", "Folosind obiectul și trăgând într-o direcție aruncă capul#{{Poison}} Capul explodează la impact și otrăvește inamicii"}, -- Bob's Rotten Head
	{"43", "", "<item does not exist>"},
	{"44", "Teleportare!", "Îl teleportează pe Isaac într-o cameră aleatorie, în afară de camerele SUNT O EROARE (I AM ERROR) "}, -- Teleport!
	{"45", "Yum, Inimă", "{{HealingRed}} Vindecă 1 inimă"}, -- Yum Heart
	{"46", "Picior Norocos", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{ColorGreen}}+8%{{CR}} șansă de răsplată la completarea camerei #Șansă mai bună de câștig când pariezi"}, -- Lucky Foot
	{"47", "Telecomanda Doctorului", "{{Collectible168}} La folosire, începe să țintească o reticulă#O rachetă aterizează pe reticulă după 1.5 secunde#Dă {{ColorGreen}}20x{{CR}} daunele lui Isaac"}, -- Doctor's Remote
	{"48", "Săgeata lui Cupid", "Lacrimi pătrunzătoare"}, -- Cupid's Arrow
	{"49", "Shoop da Whoop!", "Următorul atac este înlocuit cu o rază#Dă {{ColorGreen}}26x{{CR}} daunele lui Isaac în 0.9 secunde"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune"}, -- Steven
	{"51", "Pentagramă", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{AngelDevilChance}} {{ColorGreen}}+10%{{CR}} șansă de cameră Diavol/Înger"}, -- Pentagram
	{"52", "Dr. Făt", "↓ {{Tears}} {{ColorGreen}}x0.4{{CR}} Viteză de Atac#{{Bomb}} Isaac trage bombe în loc de lacrimi#{{Damage}} Acele bombe dau {{ColorGreen}}5x{{CR}} daunele lui Isaac {{ColorGreen}}+30{{CR}}"}, -- Dr. Fetus
	{"53", "Magneto", "Lucrurile sunt atrase la Isaac"}, -- Magneto
	{"54", "Harta Comorilor", "Arată aspectul hărții#Nu arată iconițele camerelor"}, -- Treasure Map
	{"55", "Ochiul Mamei", "{{ColorGreen}}50%{{CR}} șansă să tragi o lacrimă extra în spate#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}2{{CR}} noroc"}, -- Mom's Eye
	{"56", "Accidentul Lămâii", "Varsă o baltă de fluid#Fluidul dă 24 daune pe secundă"}, -- Lemon Mishap
	{"57", "Admirație Distantă", "Muscă orbital de distanță medie#Dă {{ColorGreen}}75{{CR}} daune de contact pe secundă"}, -- Distant Admiration
	{"58", "Cartea Umbrelor", "{{Timer}} Invincibilitate pentru 10 secunde"}, -- Book of Shadows
	{"59", "", "<item does not exist>"},
	{"60", "Scara", "Îi permite lui Isaac să traverseze găuri de o placă"}, -- The Ladder
	{"61", "", "<item does not exist>"},
	{"62", "Farmecul Vampirului", "{{HealingRed}} Omorârea a 13 inamici vindecă o jumătate de inimă"}, -- Charm of the Vampire
	{"63", "Bateria", "{{Battery}} Articolele Active pot fi supraîncărcate la două încărcări pline"}, -- The Battery
	{"64", "Vânzarea Steam", "{{Shop}} Articolele din magazin costă cu {{ColorGreen}}50%{{CR}} mai puțin"}, -- Steam Sale
	{"65", "Cartea de Bucate a Anarhistului", "Apar 6 Bombe Troll lângă centrul camerei"}, -- Anarchist Cookbook
	{"66", "Clepsidra", "{{Slow}} Încetinește inamicii pentru 8 secunde"}, -- The Hourglass
	{"67", "Sora Maggy", "Trage lacrimi normale#Dă 3.5 daune pe lacrimă"}, -- Sister Maggy
	{"68", "Tehnologie", "Isaac trage lasere în loc de lacrimi"}, -- Technology
	{"69", "Lapte cu Ciocolată", "{{Chargeable}} Lacrimi încărcabile#{{Damage}} Daunele se măresc odată cu timpul de încărcare, până la {{ColorGreen}}4x{{CR}}#{{Tears}} Timpul de încărcare maxim este de {{ColorGreen}}2.5x{{CR}} întârzierea lacrimilor"}, -- Chocolate Milk
	{"70", "Hormoni de Creștere", "↑ {{Speed}} {{ColorGreen}}+0.4{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune"}, -- Growth Hormones
	{"71", "Mush Mini", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{ColorGreen}}+1.5{{CR}} Mărimea lacrimilor#↑ Mărimea scade#↓ {{Range}} {{ColorRed}}-4.25{{CR}} Distanță#Crește mărimea lacrimilor și scade distanța = crește puțin distanța"}, -- Mini Mush
	{"72", "Rozariu", "{{SoulHeart}} {{ColorGreen}}+3{{CR}} Inimi Suflet#{{Collectible33}} Biblia este adăugată tuturor grupurilor de articole"}, -- Rosary
	{"73", "Un Cub de Carne", "Lv1: Orbital#Lv2: Orbital care trage#Lv3: Băiatul Carne#Lv4: Super Băiatul Carne"}, -- Cube of Meat
	{"74", "Un Sfert", "{{Coin}} {{ColorGreen}}+25{{CR}} Bănuți"}, -- A Quarter
	{"75", "PHD", "{{HealingRed}} Vindecă {{ColorGreen}}2{{CR}} inimi#{{Pill}} Oferă 1 pastilă#{{Pill}} Schimbă pastilele rele în pastile bune#{{BloodDonationMachine}} Mașina de Donație de Sânge dă mai mulți {{Coin}} Bănuți"}, -- PHD
	{"76", "Viziune X-Ray", "{{SecretRoom}} Deschide toate intrările camerelor secrete"}, -- X-Ray Vision
	{"77", "Micul Meu Unicorn", "{{Timer}} Primește pentru 6 secunde:#↑ {{Speed}} {{ColorGreen}}+0.28{{CR}} Viteză#Invincibilitate#Isaac nu poate trage dar dă 40 daune de contact pe secundă"}, -- My Little Unicorn
	{"78", "Cartea Revelațiilor", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{AngelDevilChance}} {{ColorGreen}}+17.5%{{CR}} șansă de cameră Diavol/Înger când este ținută#Folosirea articolului are o șansă mare să înlocuiască boss-ul etajului cu un Om-Cal (Horseman)"}, -- Book of Revelations
	{"79", "Marcajul", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet"}, -- The Mark
	{"80", "Pactul", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de Atac#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet"}, -- The Pact
	{"81", "Pisica Moartă", "↑ {{ColorGreen}}+9{{CR}} Reînvieri#Isaac reapare cu {{ColorGreen}}1{{CR}} container de inimă la moarte#{{Warning}} Setează containerele de inimi ale lui Isaac la {{ColorRed}}1{{CR}} când este luat"}, -- Dead Cat
	{"82", "Stăpânul Gropii", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#Isaac poate zbura"}, -- Lord of the Pit
	{"83", "Cuiul", "Când este folosit:#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{Timer}} Primește pentru cameră:#↑ {{Damage}} {{ColorGreen}}+0.7{{CR}} Daune#↓ {{Speed}} {{ColorRed}}-0.18{{CR}} Viteză#Isaac dă 40 daune de contact pe secundă#Îi permite lui Isaac să distrugă pietre când merge în ele"}, -- The Nail
	{"84", "Trebuie să Mergem mai Adânc!", "Deschide o trapă către următorul etaj#{{LadderRoom}} {{ColorGreen}}10%{{CR}} șansă să deschidă o trapă strâmtă"}, -- We Need To Go Deeper!
	{"85", "Set de Cărți", "{{Card}} {{ColorGreen}}+1{{CR}} carte"}, -- Deck of Cards
	{"86", "Dintele lui Monstro", "Monstro cade pe un inamic și dă 120 daune#{{Warning}} Monstro cade pe Isaac dacă camera nu are inamici"}, -- Monstro's Tooth
	{"87", "Coarnele lui Loki", "{{ColorGreen}}25%{{CR}} șansă să tragi în 4 direcții#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}7{{CR}} noroc"}, -- Loki's Horns
	{"88", "Micul Dolofan", "Încarcă înainte în direcția în care Isaac trage#Dă {{ColorGreen}}52.5{{CR}} daune de contact pe secundă"}, -- Little Chubby
	{"89", "Mușcătură de Păianjen", "{{Slow}} {{ColorGreen}}25%{{CR}} șansă să tragă lacrimi încetinitoare#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}15{{CR}} noroc"}, -- Spider Bite
	{"90", "Mica Piatră", "↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Viteză de Atac#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↓ {{Speed}} {{ColorRed}}-0.2{{CR}} Viteză"}, -- The Small Rock
	{"91", "Pălăria Speologului", "Arată tipul camerei alăturate cu camera următoare#{{SecretRoom}} Poate arăta Camerele Secrete și Super Secrete"}, -- Spelunker Hat
	{"92", "Super Bandajul", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} Vindecă 1 inimă#{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet"}, -- Super Bandage
	{"93", "Gamekid-ul", "{{Timer}} Primește pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar dă 40 daune de contact pe secundă#{{HealingRed}} Omorârea a 2 inamici vindecă jumătate de inimă#{{Fear}} Înfricoșează toți inamicii din cameră"}, -- The Gamekid
	{"94", "Sac de Bănuți", "{{Coin}} Oferă un bănuț aleator la fiecare 2 camere"}, -- Sack of Pennies
	{"95", "Robo-Bebeluș", "Trage cu lasere#Dă 3.5 daune pe atac"}, -- Robo-Baby
	{"96", "Micul C.H.A.D.", "{{HalfHeart}} Oferă o jumătate de Inimă Roșie la fiecare 3 camere"}, -- Little C.H.A.D.
	{"97", "Cartea Păcatului", "Oferă un lucru aleator"}, -- The Book of Sin
	{"98", "Relicva", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet la fiecare 5-6 camere"}, -- The Relic
	{"99", "Micul Gish", "{{Slow}} Trage cu lacrimi încetinitoare#Dă 3.5 daune pe lacrimă"}, -- Little Gish
	{"100", "Micul Steven", "Trage cu lacrimi teleghidate#Dă 3.5 daune pe lacrimă"}, -- Little Steven
	{"101", "Aureola", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Viteză de Atac#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Mărimea Lacrimiei"}, -- The Halo
	{"102", "Sticla de Pastile a Mamei", "{{Pill}} Oferă 1 pastilă"}, -- Mom's Bottle of Pills
	{"103", "Răceala Comună", "{{Poison}} {{ColorGreen}}25%{{CR}} șansă să tragi lacrimi otrăvite#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}12{{CR}} noroc"}, -- The Common Cold
	{"104", "Parazitul", "Lacrimile se înjumătățesc la contact#Jumătățile de inimă dau jumătate daune"}, -- The Parasite
	{"105", "D6-le", "Realege piedestalul articolelor din cameră"}, -- The D6
	{"106", "Dl. Mega", "↑ {{Bomb}} {{ColorGreen}}x1.83{{CR}} Daune ale bombelor#{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe"}, -- Mr. Mega
	{"107", "Foarfecele Roz", "{{Timer}} Primește în cameră:#Flight#Corpul lui Isaac se separă de cap și atacă inamicii cu 82.5 daune de contact pe secundă"}, -- The Pinking Shears
	{"108", "Napolitana", "Reduce majoritatea daunelor luate la jumătate de inimă"}, -- The Wafer
	{"109", "Bani = Putere", "↑ {{Damage}} {{ColorGreen}}+0.04{{CR}} Daune pentru fiecare {{Coin}} bănuț pe care Isaac îl are"}, -- Money = Power
	{"110", "Contactele Mamei", "↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Mărimea lacrimilor#{{ColorGreen}}20%{{CR}} șansă să tragi cu lacrimi pietrificatoare#{{Luck}} {{ColorGreen}}50%{{CR}} șansă la {{ColorGreen}}20{{CR}} noroc"}, -- Mom's Contacts
	{"111", "Fasolea", "{{Poison}} Dă 5 daune inamicilor apropiați și îi otrăvește#Otrava dă daunele lui Isaac de 6 ori"}, -- The Bean
	{"112", "Îngerul Protector", "Orbital#Accelereză ceilalți orbitali#Blochează proiectilele#Dă 105 daune de contact pe secundă"}, -- Guardian Angel
	{"113", "Bebelușul Demon", "Trage în inamicii care se apropie de el#Dă 3 daune pe lacrimă"}, -- Demon Baby
	{"114", "Cuțitul Mamei", "Lacrimile lui Isaac sunt înlocuite de un cuțit aruncabil#{{Damage}} Cuțitul dă {{ColorGreen}}2x{{CR}} daunele lui Isaac când este ținut și {{ColorGreen}}6x{{CR}} la cea mai mare distanță posibilă"}, -- Mom's Knife
	{"115", "Tabla Ouija", "Lacrimi spectrale"}, -- Ouija Board
	{"116", "9 Volți", "{{Battery}} Încarcă automat prima bară a Articolelor Active#{{Battery}} Încarcă Articolul Activ când este luat"}, -- 9 Volts
	{"117", "Pasăre Moartă", "Când primești daune oferă o pasăre care atacă inamicii#Pasărea dă 4.3 daune de contact pe secundă"}, -- Dead Bird
	{"118", "Sulf Arzător", "↓ {{Tears}} {{ColorGreen}}x0.33{{CR}} Viteză de Atac#{{Chargeable}} Lacrimile lui Isaac sunt înlocuite de o rază de sânge încărcabilă#{{Damage}} {{ColorGreen}}13x{{CR}} Daunele lui Isaac în 0.9 secunde"}, -- Brimstone
	{"119", "Pungă cu Sânge", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#{{HealingRed}} Vindecă 4 inimi"}, -- Blood Bag
	{"120", "Ciupercă Ciudată (Subțire)", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+1.7{{CR}} Viteză de Atac#↓ {{Damage}} {{ColorGreen}}x0.9{{CR}} Daune#↓ {{Damage}} {{ColorRed}}-0.4{{CR}} Daune"}, -- Odd Mushroom (Thin)
	{"121", "Ciupercă Ciudată (Largă)", "↑ {{EmptyHeart}} {{ColorGreen}}+1{{CR}} Container gol de inimă#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Mărimea lacrimilor#↓ {{Speed}} {{ColorRed}}-0.1{{CR}} Viteză"}, -- Odd Mushroom (Large)
	{"122", "Prostituata Babilonului", "Când ai o jumătate de Inimă Roșie sau mai puțin:#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune"}, -- Whore of Babylon
	{"123", "Manualul Monstrului", "{{Timer}} oferă un familiar aleator în cameră"}, -- Monster Manual
	{"124", "Pergamentele Mării Moarte", "Declanșează un efect aleator de Articol Activ"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bombă", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombe teleghidate"}, -- Bobby-Bomb
	{"126", "Lamă de Ras", "↑ {{Damage}} {{ColorGreen}}+1.2{{CR}} Daune în cameră#{{Warning}} Dă 1 inimă de daune lui Isaac#{{Heart}} elimină Inimile Roșii primele"}, -- Razor Blade
	{"127", "Uită-mă Acum", "Schimbă și restartează întregul etaj"}, -- Forget Me Now
	{"128", "Singur Mereu", "Muscă orbital cu rază lungă#Dă {{ColorGreen}}30{{CR}} daune de contact pe secundă"}, -- Forever Alone
	{"129", "Găleată de Untură", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} Containere goale de inimi#↓ {{Speed}} {{ColorRed}}-0.2{{CR}} Viteză#{{HealingRed}} Vindecă jumătate de inimă"}, -- Bucket of Lard
	{"130", "Un Ponei", "Când este ținut:#{{Speed}} Setează Viteza ta la cel puțin 1.5#Zbori#După folosire, aleargă în direcția mișcărilor lui Isaac"}, -- A Pony
	{"131", "Plasă cu Bombe", "{{Bomb}} Oferă 1 bombă în fiecare 3 camere"}, -- Bomb Bag
	{"132", "O Bucată de Cărbune", "{{Damage}} Lacrimile dau mai multe daune cu distanța parcursă este mai mare"}, -- A Lump of Coal
	{"133", "Laba lui Guppy", "{{SoulHeart}} Convertește 1 container de inimă în 3 Inimi Suflet"}, -- Guppy's Paw
	{"134", "Coada lui Guppy", "{{Chest}} {{ColorGreen}}33%{{CR}} șansă să schimbe răsplata camerei cu o cutie#{{ColorRed}}33%{{CR}} șansă să nu apară nimic după ce este goală camera"}, -- Guppy's Tail
	{"135", "Perfuzie", "{{Coin}} Îl rănește pe Isaac jumătate de inimă și apar 1-2 bănuți#{{Heart}} Elimină Inimile Roșii primele"}, -- IV Bag
	{"136", "Cel Mai Bun Prieten", "Oferă o momeală Isaac care atrage inamicii și explodează după {{ColorGreen}}+5{{CR}} secunde"}, -- Best Friend
	{"137", "Detonator Telecomandă", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac nu mai explodează automat#După folosire, detonează toate bombele lui Isaac odată"}, -- Remote Detonator
	{"138", "Stigmata", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune"}, -- Stigmata
	{"139", "Geanta Mamei", "{{Trinket}} Isaac poate ține 2 breloace"}, -- Mom's Purse
	{"140", "Blestemul lui Bob", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Poison}} Bombele lui Isaac otrăvesc inamicii prinși în explozie "}, -- Bob's Curse
	{"141", "Băiatul Misterios", "{{Coin}} Generează 7 bănuți aleatori"}, -- Pageant Boy
	{"142", "Scapular", "{{SoulHeart}} Isaac primește 1 Inimă Suflet când are jumătate de inimă#Se poate întâmpla doar o dată pe cameră#Ieșind și reintrând în cameră permite efectului să se declanșeze din nou"}, -- Scapular
	{"143", "Minge Rapidă", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza Lacrimilor"}, -- Speed Ball
	{"144", "Prieten Vagabond", "{{Coin}} Ia bănuții de lângă el#Apar pickup-uri aleatorii la fiecare 3-4 bănuți"}, -- Bum Friend
	{"145", "Capul lui Guppy", "Apar 2-4 muște albastre"}, -- Guppy's Head
	{"146", "Carte de Rugăciuni", "{{EternalHeart}} {{ColorGreen}}+1{{CR}} Inimă Eternă"}, -- Prayer Card
	{"147", "Topor Crestat", "{{Timer}} Pentru cameră, Isaac poate sparge pietre și pereți de Cameră Secretă mergând în ei"}, -- Notched Axe
	{"148", "Infestație", "La rănire apar 1-3 muște albastre"}, -- Infestation
	{"149", "Ipecac", "↑ {{Damage}} {{ColorGreen}}+40{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Viteză de Atac#↓ {{Tears}} {{ColorGreen}}+10{{CR}} Întârziere a Lacrimilor#Lacrimile lui Isaac sunt trase într-o arcă#{{Poison}} Lacrimile explodează și otrăvesc inamicii unde cad"}, -- Ipecac
	{"150", "Dragoste Dură", "{{Damage}} 10% șansă să tragi cu un dinte care dă {{ColorGreen}}3.2x{{CR}} daunele lui Isaac#{{Luck}} 100% șansă la 9 noroc"}, -- Tough Love
	{"151", "Mulligan-ul", "Lacrimile au o șansă de 1/6 să facă să apară o muscă albastră când nimeresc un inamic"}, -- The Mulligan
	{"152", "Tehnologie 2", "↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Viteză de Atac#↓ {{Damage}} {{ColorGreen}}x0.65{{CR}} Daune#Înlocuiește lacrimile ochiului drept al lui Isaac cu un laser continuu#{{Damage}} Dă {{ColorGreen}}3x{{CR}} daunele lui Isaac pe secundă"}, -- Technology 2
	{"153", "Păianjenul Mutant", "↓ {{Tears}} {{ColorGreen}}x0.48{{CR}} Viteză de Atac#↓ {{Tears}} {{ColorGreen}}+3{{CR}} Întârziere a lacrimilor#Isaac trage 4 lacrimi odată"}, -- Mutant Spider
	{"154", "Coajă Chimică", "↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune pentru ochiul stâng"}, -- Chemical Peel
	{"155", "Peeper-ul", "Plutește prin cameră#Dă {{ColorGreen}}17{{CR}} daune de contact pe secundă"}, -- The Peeper
	{"156", "Obicei", "{{Battery}} Primind daune adaugă 1 încărcare Articolului Activ"}, -- Habit
	{"157", "Poftă Sângeroasă", "↑ {{Damage}} După primirea unei daune primești mai multe Daune#Se adaugă până la 6 ori pe etaj#Ține tot etajul"}, -- Bloody Lust
	{"158", "Mingea de Cristal", "Oferă o {{SoulHeart}} Inimă Suflet, {{Rune}} rună sau {{Card}} carte#{{Timer}} Vezi toată harta etajului (în afară de {{SuperSecretRoom}} Camera Super Secretă)"}, -- Crystal Ball
	{"159", "Spiritul Nopții", "Lacrimi spectrale#Zbori"}, -- Spirit of the Night
	{"160", "Crapă Cerul", "Apar {{ColorGreen}}+5{{CR}} raze de lumină lângă inamici#Fiecare rază dă {{ColorGreen}}8x{{CR}} daunele lui Isaac {{ColorGreen}}+160{{CR}} în {{ColorGreen}}+0.8{{CR}} secunde"}, -- Crack the Sky
	{"161", "Ankh", "{{Player4}} Reînvii ca ??? (Bebelușul Albastru) după moarte"}, -- Ankh
	{"162", "Crucea Celtică", "După primirea unei Daune Isaac are 20% șansă să devină invincibil#{{Luck}} 100% șansă la 27 noroc"}, -- Celtic Cross
	{"163", "Bebelușul Fantomă", "Trage lacrimi spectrale#Dă 3.5 daune pe lacrimă"}, -- Ghost Baby
	{"164", "Lumânarea", "Aruncă o flacără albastră#Dă daune de contact, blochează lacrimile inamicilor, și dispare după 2 secunde"}, -- The Candle
	{"165", "Pisica-cu-9-cozi", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Shotspeed}} {{ColorGreen}}+0.23{{CR}} Viteza Lacrimilor"}, -- Cat-o-nine-tails
	{"166", "D20", "Realege toate lucrurile (pickups) din cameră"}, -- D20
	{"167", "Bebelușul Harlequin", "Trage 2 lacrimi în formă de V#Dă 4 daune pe lacrimă"}, -- Harlequin Baby
	{"168", "Fătul Epic", "În loc să tragă cu lacrimi, țintește o reticulă#O rachetă cade pe reticulă după 1.5 secunde#{{Damage}} Rachetele dau {{ColorGreen}}20x{{CR}} daunele lui Isaac"}, -- Epic Fetus
	{"169", "Polifem", "↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.48{{CR}} Viteză de Atac#↓ {{Tears}} {{ColorGreen}}+3{{CR}} Întârziere a Lacrimilor#Lacrimilă intră prin inamicii omorâți dacă mai există daune"}, -- Polyphemus
	{"170", "Tăticul Picioare-Mari", "Calcă un inamic apropiat la fiecare 4 secunde#Dă {{ColorGreen}}40{{CR}} daune pe secundă"}, -- Daddy Longlegs
	{"171", "Fundul Păianjenului", "{{Slow}} Încetinește inamicii pentru 4 secunde#Dă 10 daune tuturor inamicilor"}, -- Spider Butt
	{"172", "Pumnalul de Sacrificii", "Orbital#Blochează împușcăturile inamicilor#Dă 225 daune de contact pe secundă"}, -- Sacrificial Dagger
	{"173", "Mitră", "{{SoulHeart}} 50% șansă ca Inimile Roșii apar ca Inimi Suflet"}, -- Mitre
	{"174", "Bebeluș Curcubeu", "Trage lacrimi aleatorii#Dă 3-5 daune pe lacrimă"}, -- Rainbow Baby
	{"175", "Cheile Tatălui", "Deschide toate ușile din cameră, incluzând {{SecretRoom}}{{SuperSecretRoom}}Camerele Secrete, {{ChallengeRoom}}{{BossRushRoom}}Camerele Provocare, și ușa lui Mega Satan"}, -- Dad's Key
	{"176", "Celule Stem", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza Lacrimiei"}, -- Stem Cells
	{"177", "Păcăneaua Portabilă", "{{Coin}} Plătești {{ColorRed}}-1{{CR}} bănuț pentru o șansă să apară un lucru"}, -- Portable Slot
	{"178", "Apă Sfințită", "Când primești o daună, varsă o baltă de lichid#Lichidul provoacă 24 de daune pe secundă"}, -- Holy Water
	{"179", "Soartă", "{{EternalHeart}} {{ColorGreen}}+1{{CR}} Inimă Eternă#Zbori"}, -- Fate
	{"180", "Fasolea Neagră", "Isaac se bășește când este vătămat#{{Poison}} Bășina otrăvește inamicii"}, -- The Black Bean
	{"181", "Ponei Alb", "{{Speed}} Setează viteza ta la cel puțin 1.5#Zbori când îl ții#Folosirea articolului te aruncă în direcția în care Isaac merge, lăsând în urmă raze de lumină"}, -- White Pony
	{"182", "Inima Sacră", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Damage}} {{ColorGreen}}x2.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.38{{CR}} Distanță#↑ {{ColorGreen}}+0.75{{CR}} Mărimea lacrimilor#↓ {{Tears}} {{ColorRed}}-0.4{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.25{{CR}} Viteza lacrimii#{{HealingRed}} Inimi roșii pline#Lacrimi teleghidate"}, -- Sacred Heart
	{"183", "Scobitori", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor"}, -- Tooth Picks
	{"184", "Sfântul Graal", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă Roșie#Zbori"}, -- Holy Grail
	{"185", "Porumbel Mort", "Lacrimi spectrale#Zbori"}, -- Dead Dove
	{"186", "Drepturi de Sânge", "Provoacă 40 de daune fiecărui inamic#{{Warning}} Provoacă 1 inimă de daune lui Isaac#{{Heart}} Consumă mai întâi inimile roșii"}, -- Blood Rights
	{"187", "Mingea de Păr a lui Guppy", "Mișcându-te arunci mingea#Mingea crește când omoară un inamic#Provoacă mai multe daune cu cât crește"}, -- Guppy's Hairball
	{"188", "Abel", "Oglindește mișcările lui Isaac#Trage spre Isaac#Provoacă 3.5 daune pe lacrimă"}, -- Abel
	{"189", "SMB Super Fan", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Viteză de atac#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Mărimea lacrimilor#{{HealingRed}} Viață plină"}, -- SMB Super Fan
	{"190", "Pyro", "{{Bomb}} {{ColorGreen}}+99{{CR}} Bombe"}, -- Pyro
	{"191", "Bancnota de 3 Lei", "Lacrimile lui Isaac primesc un efect aleator la fiecare 2-3 secunde"}, -- 3 Dollar Bill
	{"192", "Telepatie pentru Proști", "{{Timer}} Lacrimi teleghidate pentru cameră"}, -- Telepathy For Dummies
	{"193", "CARNE!", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune"}, -- MEAT!
	{"194", "Mingea 8 Magică", "↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza lacrimilor#{{Card}} Oferă o carte"}, -- Magic 8 Ball
	{"195", "Portofelul Mamei", "{{Pill}} Apar 4 pastile"}, -- Mom's Coin Purse
	{"196", "Squeezy", "↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac#{{SoulHeart}} {{ColorGreen}}+2{{CR}} inimi suflet"}, -- Squeezy
	{"197", "Sucul lui Iisus", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Mărimea lacrimilor"}, -- Jesus Juice
	{"198", "Cutie", "Oferă 1 obiect din fiecare tip"}, -- Box
	{"199", "Cheia Mamei", "{{Key}} {{ColorGreen}}+2{{CR}} chei#Cuferele conțin mai multe obiecte"}, -- Mom's Key
	{"200", "Fardul Mamei", "{{Charm}} 10% șansă să tragi lacrimi fermecătoare#{{Luck}} 100% șansă la 27 noroc"}, -- Mom's Eyeshadow
	{"201", "Țeavă din Fier", "↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#{{Confusion}} {{ColorGreen}}10%{{CR}} șansă să tragi cu lacrimi contondente#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}27{{CR}} noroc"}, -- Iron Bar
	{"202", "Atingerea lui Midas", "Atingând inamicii îi pietrifică și îi transformă în aur#Isaac dă daune de contact bazate pe numărul de bănuți#{{Coin}} Omorând un inamic auriu face să apară bănuți#Rahatul lui Isaac are o șansă mare să fie auriu"}, -- Midas' Touch
	{"203", "Humbleing Bundle", "Obiectele care apar sunt dublate dacă este posibil"}, -- Humbleing Bundle
	{"204", "Borsetă", "Când primești orice daună, ai 50% șansă să apară un obiect aleatoriu"}, -- Fanny Pack
	{"205", "Priză Ascuțită", "{{Battery}} Folosind un articol activ neîncărcat, îl încarcă cu costul a 2 inimi#Funcționează doar când articolul nu are nicio bară încărcată"}, -- Sharp Plug
	{"206", "Ghilotină", "↑ {{Tears}} {{ColorRed}}-1{{CR}} Întârziere a lacrimilor#↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#Capul lui Isaac devine un orbital care trage, nu primește daune și provoacă 105 daune de contact pe secundă"}, -- Guillotine
	{"207", "Minge din Bandaje", "Lv1: Orbital#{{Charm}} Lv2: Orbital care trage lacrimi fermecătoare#{{Charm}} Lv3: Fata Bandaj#{{Charm}} Lv4: Super Fata Bandaj"}, -- Ball of Bandages
	{"208", "Cureaua Campionului", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#Șansa de inamic campion crește de la 5% la 20%#Nu crește șansa de boși campioni"}, -- Champion Belt
	{"209", "Bombe Fund", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Confusion}} Exploziile zdruncină și provoacă daune fiecărui inamic din cameră"}, -- Butt Bombs
	{"210", "Frunză Roasă", "După 1 secundă de inactivitate, Isaac devine invincibil"}, -- Gnawed Leaf
	{"211", "Bebeluș-păianjel", "După ce primești o daună, apar 1-2 păianjeni albaștri"}, -- Spiderbaby
	{"212", "Zgarda lui Guppy", "50% șansă să reînvii cu o jumătate de inimă la moarte"}, -- Guppy's Collar
	{"213", "Contact Pierdut", "↓ {{Shotspeed}} {{ColorRed}}-0.15{{CR}} Viteza lacrimilor#Lacrimile lui Isaac distrug lacrimile inamice"}, -- Lost Contact
	{"214", "Anemic", "↑ {{Range}} {{ColorGreen}}+5{{CR}} Distanță#{{Timer}} După ce primești o daună, Isaac lasă o dâră de lichid sângeriu în cameră#Lichidul provoacă 6 daune pe secundă"}, -- Anemic
	{"215", "Cap de Capră", "{{AngelDevilChance}} 100% șansă de cameră Demon/Înger"}, -- Goat Head
	{"216", "Robe Ceremoniale", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{BlackHeart}} {{ColorGreen}}+3{{CR}} Inimi Negre"}, -- Ceremonial Robes
	{"217", "Peruca Mamei", "{{HealingRed}} {{ColorGreen}}+1{{CR}} Inimă vindecată#{{ColorGreen}}+5%{{CR}} șansă să apară un păianjen albastru când tragi lacrimi#{{Luck}} {{ColorGreen}}+100%{{CR}} șansă la {{ColorGreen}}+10{{CR}} noroc"}, -- Mom's Wig
	{"218", "Placentă", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{HealingRed}} {{ColorGreen}}50%{{CR}} șansă să vindeci jumătate de inimă în fiecare minut"}, -- Placenta
	{"219", "Bandaj Vechi", "↑ {{EmptyHeart}} {{ColorGreen}}+1{{CR}} Container gol de inimă#{{Heart}} Luând daune are o șansă de {{ColorGreen}}+10%{{CR}} să apară o Inimă Roșie"}, -- Old Bandage
	{"220", "Bombe Triste", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac trag {{ColorGreen}}+10{{CR}} lacrimi într-un cerc când explodează"}, -- Sad Bombs
	{"221", "Ciment de Cauciuc", "Lacrimile lui Isaac sar din inamici și din obstacole"}, -- Rubber Cement
	{"222", "Anti-Gravitație", "↑ {{Tears}} {{ColorRed}}-2{{CR}} Întârzierea Lacrimilor#Ținerea unui buton de tragere face ca lacrimile să plutească în aer#Eliberarea unui buton de tragere eliberează lacrimile în direcția în care au fost trase"}, -- Anti-Gravity
	{"223", "Piroman", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Imunitate la explozii, valuri de pietre, și atacuri de picior#{{HealingRed}} Fiind atins de o explozie vindecă 1 inimă"}, -- Pyromaniac
	{"224", "Corpul Greierului", "↑ {{Tears}} {{ColorRed}}-1{{CR}} Întârzierea Lacrimilor#↑ {{Tearsize}} {{ColorGreen}}x1.2{{CR}} Mărimea Lacrimilor#↓ {{Range}} {{ColorRed}}-10{{CR}} Distanță#Lacrimile se despart în 4 când lovesc#Sferturile de lacrimi dau jumătate de daune"}, -- Cricket's Body
	{"225", "Șchiopul", "{{SoulHeart}} Luând orice daună are o șansă să facă să apară o Inimă Suflet#{{HalfHeart}} Inamicii au o șansă să dea o Inimă Roșie la moarte"}, -- Gimpy
	{"226", "Lotusul Negru", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Inimă roșie#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- Black Lotus
	{"227", "Pușculița Porcușor", "{{Coin}} {{ColorGreen}}+3{{CR}} Bănuți#{{Coin}} La primirea oricărei daune apar 1-2 bănuți"}, -- Piggy Bank
	{"228", "Parfumul Mamei", "↑ {{Tears}} {{ColorRed}}-1{{CR}} Întârzierea Lacrimilor#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"}, -- Mom's Perfume
	{"229", "Plămânul lui Monstro", "↓ {{Tears}} {{ColorGreen}}x0.23{{CR}} Viteză de Atac#{{Chargeable}} Lacrimile sunt încărcate ți trase într-un atac de tip shotgun"}, -- Monstro's Lung
	{"230", "Abaddon", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#↓ {{EmptyHeart}} Scoate toate containerele de inimă#{{BlackHeart}} {{ColorGreen}}+6{{CR}} Inimi Negre#{{Fear}} 15% șansă să tragi cu lacrimi înfricoșătoare"}, -- Abaddon
	{"231", "Minge din Smoală", "{{Slow}} 10% șansă să tragi cu lacrimi încetinitoare#{{Luck}} 100% șansă la 18 noroc#{{Slow}} Isaac lasă o dâră de fluid încetinitor"}, -- Ball of Tar
	{"232", "Cronometru", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#{{Slow}} Primirea oricărei daune încetinește toți inamicii din cameră permanent"}, -- Stop Watch
	{"233", "Planetă mică", "↑ {{ColorGreen}}+7{{CR}} Mărimea lacrimilor#Lacrimi spectrale#Lacrimile lui Isaac orbitează în jurul lui"}, -- Tiny Planet
	{"234", "Infestare 2", "Omorând un inamic face să apară un păianjen albastru"}, -- Infestation 2
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Atingând un inamic îl transformă într-un rahat"}, -- E. Coli
	{"237", "Atingerea Morții", "↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#↑ {{Tearsize}} {{ColorGreen}}x2{{CR}} Mărimea lacrimilor#↓ {{Tears}} {{ColorRed}}-0.3{{CR}} Viteză de Atac#Lacrimi pătrunzătoare"}, -- Death's Touch
	{"238", "Piesă de cheie 1", "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} {{ColorGreen}}+25%{{CR}} șansă la cameră Înger#{{EternalHeart}} {{ColorGreen}}+2%{{CR}} șansă pentru Inimi Eterne"}, -- Key Piece 1
	{"239", "Piesă de cheie 2", "{{Warning}} Luând ambele părți ale cheii deschide o ușă mare aurie#{{AngelChance}} {{ColorGreen}}+25%{{CR}} șansă la cameră Înger#{{EternalHeart}} {{ColorGreen}}+2%{{CR}} șansă pentru Inimi Eterne"}, -- Key Piece 2
	{"240", "Tratament Experimental", "↑ {{ColorGreen}}Crește 4 statistici aleatorii{{CR}}#↓ {{ColorRed}}Scade 2 statistici aleatorii{{CR}}"}, -- Experimental Treatment
	{"241", "Contractul de Dedesubt", "Dublează toate recompensele la golirea camerelor#33% șansă de nici o recompensă la golirea camerei"}, -- Contract from Below
	{"242", "Infamie", "50% șansă să blochezi împușcăturile inamicilor"}, -- Infamy
	{"243", "Scutul Treimii", "Blochează împușcăturile inamicilor care vin din direcția în care Isaac trage"}, -- Trinity Shield
	{"244", "Tehn.5", "Ocazional trage lasere în adiție lacrimilor lui Isaac"}, -- Tech.5
	{"245", "20/20", "Isaac trage cu 2 lacrimi odată"}, -- 20/20
	{"246", "Hartă Albastră", "{{SecretRoom}} Arată locațiile camerelor secrete pe hartă"}, -- Blue Map
	{"247", "CMMP!", "Familiarii dau daune duble"}, -- BFFS!
	{"248", "Mintea Stupului", "Păianjenii și muștele albastre dau daune duble"}, -- Hive Mind
	{"249", "Sunt Opțiuni", "Îi permite lui Isaac să aleagă dintre 2 articole după ce bate un șef"}, -- There's Options
	{"250", "Bombe Bogo", "{{Bomb}} Toate bombele de pe jos devin duble"}, -- Bogo Bombs
	{"251", "Pachetul Începătorului", "{{Card}} Oferă 1 carte când îl iei#Isaac poate căra 2 cărți#Toate pastilele devin cărți"}, -- Starter Deck
	{"252", "Mica Punguță", "{{Pill}} Oferă 1 pastilă când îl iei#Isaac poate căra 2 pastile#Toate cărțile devin pastile"}, -- Little Baggy
	{"253", "Crusta Magică", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc"}, -- Magic Scab
	{"254", "Cheag de Sânge", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune pentru ochiul stâng#↑ {{Range}} {{ColorGreen}}+5{{CR}} Distanță pentru ochiul stâng#↑ {{ColorGreen}}+0.5{{CR}} Mărimea Lacrimilor"}, -- Blood Clot
	{"255", "Șurub", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de Atac#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza Lacrimilor"}, -- Screw 
	
	{"256", "Bombe Fierbinți", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Burning}} Bombele lui Isaac lasă o flacără unde explodează"}, -- Hot Bombs
	{"257", "Mintea de Foc", "{{Burning}} Lacrimile lui Isaac dau foc inamicilor#10% șansă ca lacrimile să explodeze pe inamici la impact#{{Luck}} 100% șansă la 13 noroc#{{Warning}} Explozia îl poate răni pe Isaac"}, -- Fire Mind
	{"258", "Nr. Lipsă", "Schimbă toate articolele și statisticile lui Isaac când îl iei, la fiecare nou etaj"}, -- Missing No.
	{"259", "Materie Neagră", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{Fear}} 33% șansă să tragi lacrimi înfricoșătoare#{{Luck}} 100% șansă la 20 noroc"}, -- Dark Matter
	{"260", "Lumânarea Neagră", "{{CurseBlind}} Imunitate la blesteme#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{AngelDevilChance}} {{ColorGreen}}+15%{{CR}} șansă la camere Înger/Demon"}, -- Black Candle
	{"261", "Proptoza", "↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{ColorRed}}Lacrimile dau mai puține daune cu cât de departe ajung{{CR}}"}, -- Proptosis
	{"262", "Pagina Dispărută 2", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#Luând daune până la 1 inimă dăunează toți inamicii din cameră"}, -- Missing Page 2
	{"263", "", "<item does not exist>"},
	{"264", "Muscă Deșteaptă", "Orbital#Atacă inamicii când Isaac primește daune#Dă 22.5 daune de contact pe secundă"}, -- Smart Fly
	{"265", "Bebeluș Uscat", "{{ColorGreen}}10%{{CR}} șansă să dai daune tuturor inamicilor din cameră când este lovit de o lacrimă inamică"}, -- Dry Baby
	{"266", "Sac Suculent", "{{Slow}} Lasă un fluid încetinitor#Apar {{ColorGreen}}1-2{{CR}} păianjeni după golirea unei camere"}, -- Juicy Sack
	{"267", "Robo-Bebeluș 2.0", "Trage cu lasere#Dă 3.5 daune pe atac#Se mișcă în direcția în care Isaac trage"}, -- Robo-Baby 2.0
	{"268", "Bebeluș Putrezit", "Apar muște albastre când Isaac trage"}, -- Rotten Baby
	{"269", "Bebeluș Fără Cap", "Lasă un fluid care dă 6 daune pe secundă"}, -- Headless Baby
	{"270", "Lipitoare", "Urmărește inamicii#{{HealingRed}} Îl vindecă pe Isaac cu jumătate de inimă roșie când omoară un inamic#Dă {{ColorGreen}}3.2{{CR}} daune pe secundă"}, -- Leech
	{"271", "Sac Misterios", "Oferă un lucru aleator la fiecare 5-6 camere"}, -- Mystery Sack
	{"272", "BBF", "Muscă prietenoasă explozivă#Explozia dă {{ColorGreen}}60{{CR}} daune#{{Warning}} Explozia îl poate răni pe Isaac"}, -- BBF
	{"273", "Creierul lui Bob", "Se aruncă în direcția în care Isaac trage#Explodează când nimerește un inamic#{{Poison}} Explozia dă {{ColorGreen}}60{{CR}} daune și otrăvește inamicii#{{Warning}} Explozia îl poate răni pe Isaac"}, -- Bob's Brain
	{"274", "Cel mai bun Prieten", "După luarea unei daune oferă un orbital cu distanță medie pentru cameră#Dă {{ColorGreen}}75{{CR}} daune de contact pe secundă"}, -- Best Bud
	{"275", "Micul Brimstone", "{{Chargeable}} Familiar care încarcă și aruncă cu {{Collectible118}} Brimstone#Provoacă {{ColorGreen}}31.5{{CR}} daune pe durata a {{ColorGreen}}31.5{{CR}} de secunde"}, -- Lil Brimstone
	{"276", "Inima lui Isaac", "Isaac devine invincibil#Oferă un familiar inimă ce îl urmărește pe Isaac#{{Warning}} Dacă familiarul este lovit, Isaac va fi vătămat"}, -- Isaac's Heart
	{"277", "Micul Bântuit", "{{Fear}} Urmărește și provoacă teamă inamicilor#Provoacă {{ColorGreen}}4{{CR}} daune pe secundă"}, -- Lil Haunt
	{"278", "Cerșetor Întunecat", "{{Heart}} Culege inimile roși din apropiere#{{SoulHeart}} Oferă Inimi Suflet sau păianjeni pentru fiecare 1.5 inimi colectate"}, -- Dark Bum
	{"279", "Fan Mare", "Orbital mare#Provoacă {{ColorGreen}}30{{CR}} de daune de contact pe secundă"}, -- Big Fan
	{"280", "Sissy Picioare Mari", "Oferă păianjeni albaștrii aleatoriu în camerele neterminate"}, -- Sissy Longlegs
	{"281", "Sac de Box", "Familiar momeală#Inamicii sunt atrași de el în locul lui Isaac"}, -- Punching Bag
	{"282", "Cum să sari", "Isaac poate sări peste găuri și obstacole"}, -- How to Jump
	{"283", "D100", "Înlocuiește pickup-urile, piedestalele din cameră și itemele pasive ale lui Isaac"}, -- D100
	{"284", "D4", "Înlocuiește toate itemele pasive ale lui Isaac"}, -- D4
	{"285", "D10", "Înlocuiește inamicii din cameră cu unii mai slabi"}, -- D10
	{"286", "Carte Albă", "Declanșează efectul cărții sau runei pe care Isaac o deține fără a o folosi"}, -- Blank Card
	{"287", "Cartea Secretelor", "{{Timer}} Oferă pe durata etajului un efect dintre:#{{Collectible54}} Harta Comorilor#{{Collectible21}} Busolă#{{Collectible246}} Hartă Albastră"}, -- Book of Secrets
	{"288", "Cutie cu Păianjeni", "Oferă 1-4 păianjeni albaștrii"}, -- Box of Spiders
	{"289", "Lumânare Roșie", "Aruncă cu un foc roșu#Cauzează pagube, blochează proiectilele și dispare după a cauzat pagube sau a blocat 5 proiectile"}, -- Red Candle
	{"290", "Borcanul", "{{Heart}} Colecteză până la 4 Inimi roșii când viața este plină#Aruncă toate inimile colectate când este folosit"}, -- The Jar
	{"291", "Flush!", "Transformă toți inamicii non-boss în rahat#Omoară instant toți inamicii și bossi rahat"}, -- Flush!
	{"292", "Biblie Satanică", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- Satanic Bible
	{"293", "Capul lui Krampus", "{{Collectible118}} Trage cu o undă Brimstone în 4 direcții#Fiecare undă cauzează 440 de daune pe perioada a 1.33 de secunde"}, -- Head of Krampus
	{"294", "Lintea", "Aruncă proiectilele și inamicii#{{ColorGreen}}10%{{CR}} șansă să se transforme în {{Collectible484}} Stai ce? când este înlocuit cu alt item și colectat din nou"}, -- Butter Bean
	{"295", "Degete Magice", "Provoacă {{ColorGreen}}2x{{CR}} daunele lui Isaac tuturor inamicilor#{{Coin}} Costă 1 bănuț"}, -- Magic Fingers
	{"296", "Convertor", "{{Heart}} Schimbă 2 Inimi Suflet/Negre într-un container"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Cutia Pandorei", "{{NoLB}}Apar recompense în funcție de etaj:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Un Articol de Boss; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Articole de Boss#W2: {{Collectible33}} Biblia#???/Vid: Nimic#Sheol: Articol-Diavol + 1{{BlackHeart}}#Cathe: Articol-Înger + 1{{EternalHeart}}#{{NoLB}}Cameră Neagră: Deblocabile {{Collectible523}} Cutia Mișcătoare#Cutie: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Șchiopătarea Unicornului", "{{Timer}} Primește pentru 6 secunde:#↑ {{Speed}} {{ColorGreen}}+0.28{{CR}} Viteză#Invincibilitate#Isaac nu poate să tragă (Fără daune de contact)"}, -- Unicorn Stump
	{"299", "Taur", "↓ {{Speed}} {{ColorRed}}-0.3{{CR}} Viteză#↑ {{Speed}} Crește viteza încet în camere ostile#La viteza 2 , Isaac devine invincibil și dă daune de contact#După aceea, pierde boostul de viteză Taur în cameră"}, -- Taurus
	{"300", "Berbec", "↑ {{Speed}} {{ColorGreen}}+0.25{{CR}} Viteză#Atingând inamicii dai daune de contact"}, -- Aries
	{"301", "Rac", "{{SoulHeart}} {{ColorGreen}}+3{{CR}} Inimi suflet#Când primești daune, toate daunele viitoare în cameră sunt reduse la o jumătate de inimă"}, -- Cancer
	{"302", "Leu", "Te mărești#Isaac poate distruge pietre când intră în ele"}, -- Leo
	{"303", "Fecioară", "Când primește daune, Isaac poate deveni invincibil temporar#{{Luck}} 100% șansă la 10 noroc#{{Pill}} Convertește pastilele negative în unele pozitive"}, -- Virgo
	{"304", "Balanță", "{{ColorGreen}}+6{{CR}} {{Coin}} bănuți, {{Bomb}} bombe și {{Key}} chei#Balansează statisticile lui Isaac#Schimbările următoare de statistici vor fi împărțite tuturor statisticilor"}, -- Libra
	{"305", "Scorpion", "{{Poison}} Lacrimi otrăvite"}, -- Scorpio
	{"306", "Săgetător", "↑ {{Speed}} {{ColorGreen}}+0.2{{CR}} Viteză#Lacrimi pătrunzătoare"}, -- Sagittarius
	{"307", "Capricorn", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#↑ {{Speed}} {{ColorGreen}}+0.1{{CR}} Viteză#↑ {{Tears}} {{ColorRed}}-1{{CR}} Întârziere a lacrimilor#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#{{ColorGreen}}+1{{CR}} {{Coin}} ban, {{Bomb}} bombă și {{Key}} cheie"}, -- Capricorn
	{"308", "Vărsător", "Isaac lasă o dâră de lichid#Lichidul provoacă {{ColorGreen}}6{{CR}} daune pe secundă"}, -- Aquarius
	{"309", "Pești", "↑ {{Tears}} {{ColorRed}}-1{{CR}} Întârziere a lacrimilor#↑ {{Tearsize}} {{ColorGreen}}x1.25{{CR}} Mărimea lacrimilor#Mărește împingerea lacrimilor"}, -- Pisces
	{"310", "Rimelul Evei", "↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.5{{CR}} Viteza lacrimilor"}, -- Eve's Mascara
	{"311", "Umbra lui Iuda", "{{Player12}} La moarte reînvii ca Iuda-ul Negru cu {{ColorGreen}}x2{{CR}} daune"}, -- Judas' Shadow
	{"312", "Papionul lui Maggy", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#{{HealingRed}} Vindecă 1 inimă#Toate Inimile Roșii vindecă dublu valoarea lor"}, -- Maggy's Bow
	{"313", "Mantaua Sfântă", "Neagă primul atac primit o dată pe cameră"}, -- Holy Mantle
	{"314", "Coapse de Tunet", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#↓ {{Speed}} {{ColorRed}}-0.4{{CR}} Viteză#Isaac poate distruge pietre când merge în ele"}, -- Thunder Thighs
	{"315", "Atractor Ciudat", "Lacrimile lui Isaac atrag inamici, lucruri și bibelouri"}, -- Strange Attractor
	{"316", "Ochi Blestemat", "Val încărcat de 4 lacrimi#{{Warning}} Primind daune când e încărcat parțial îl teleportează pe Isaac într-o cameră aleatorie"}, -- Cursed Eye
	{"317", "Lichid Misterios", "Lacrimile lui Isaac lasă fluid#Fluidul dă {{ColorGreen}}30{{CR}} daune pe secundă"}, -- Mysterious Liquid
	{"318", "Gemeni", "Familiar care luptă de aproape#Provoacă {{ColorGreen}}6{{CR}} daune de contact pe secundă"}, -- Gemini
	{"319", "Celălalt Ochi a lui Cain", "Se mișcă prin cameră#Lacrimi cu precizie mică care provoacă daunele lui Isaac"}, -- Cain's Other Eye
	{"320", "Singurul prieten a lui ???", "Muscă controlabilă#Provoacă {{ColorGreen}}37.5{{CR}} daune de contact pe secundă"}, -- ???'s Only Friend
	{"321", "Lanțurile lui Samson", "O bilă legată de picior care poate distruge obstacole și să blocheze proiectilele#Provoacă {{ColorGreen}}10.7{{CR}} daune pe secundă"}, -- Samson's Chains
	{"322", "Bebeluș Mongo", "Copiază lacrimile de la alți familiari#Dacă nu sunt alti familiar, provoacă 3.5 daune pe lacrimă"}, -- Mongo Baby
	{"323", "Lacrimile lui Isaac", "Aruncă cu 8 lacrimi în toate direcțiile#Copiază efectele lacrimilor lui Isaac#Se încarcă prin tragerea de lacrimi"}, -- Isaac's Tears
	{"324", "Nedefinit", "Îl teleportează pe Isaac în {{TreasureRoom}} Camera Comorilor, {{SecretRoom}} Camera Secretă, {{SuperSecretRoom}} Camera Super Secretă sau {{ErrorRoom}} Cameră SUNT O EROARE"}, -- Undefined
	{"325", "Foarfece", "{{Timer}} Capul lui Isaac devine un familiar staționar pe durata camerei#Capul trage cu lacrimi ce provoacă 3.5 daune#Corpul este controlabil și trage cu lacrimile lui Isaac"}, -- Scissors
	{"326", "Respirația Vieții", "Ținerea butonului de folosință apăsat golește bara de încărcare#Isaac este invincibil temporar când bara de încărcare este goală#{{Warning}} Dacă butonul este apăsat prea mult Isaac este vătămat"}, -- Breath of Life
	{"327", "Polaroidul", "Vătămarea la jumătatea de Inimă Roșie sau nici una îl face pe Isaac invincibil temporar"}, -- The Polaroid
	{"328", "Negativul", "Vătămarea la jumătatea de Inimă Roșie sau nici una provoacă daune tuturor inamicilor din cameră"}, -- The Negative
	{"329", "Tehnica Ludovico", "Înlocuiește lacrimile lui Isaac cu o lacrimă gigantă controlabilă"}, -- The Ludovico Technique
	{"330", "Lapte de Soia", "↑ {{Tears}} {{ColorGreen}}x4{{CR}} Viteză de Atac#↑ {{Tears}} {{ColorRed}}-2{{CR}} Întârzierea lacrimei#↓ {{Damage}} {{ColorGreen}}x0.2{{CR}} Daune#↓ {{Tearsize}} {{ColorGreen}}x0.5{{CR}} Mărimea lacrimilor"}, -- Soy Milk
	{"331", "Dumnezeire", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.2{{CR}} Distanță#↑ {{ColorGreen}}+0.8{{CR}} Înălțimea lacrimilor#↓ {{Tears}} {{ColorRed}}-0.3{{CR}} Viteză de atac#↓ {{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza lacrimilor#Lacrimi teleghidate#{{Damage}} Lacrimile primesc o aură care dă {{ColorGreen}}4.5x{{CR}} daunele lui Isaac pe secundă"}, -- Godhead
	{"332", "Zdrențele lui Lazăr", "{{Player11}} După moarte, reînvii ca Lazăr"}, -- Lazarus' Rags
	{"333", "Mintea", "Arată întreaga hartă a etajului"}, -- The Mind
	{"334", "Trupul", "↑ {{Heart}} {{ColorGreen}}+3{{CR}} Vieți"}, -- The Body
	{"335", "Sufletul", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Primești o aură care respinge inamicii și proiectilele"}, -- The Soul
	{"336", "Ceapă Moartă", "↑ {{Range}} {{ColorGreen}}+0.25{{CR}} Distanță#↑ {{Tearsize}} {{ColorGreen}}x1.5{{CR}} Mărimea Lacrimilor#↓ {{ColorRed}}-0.5{{CR}} Înălțimea Lacrimilor#↓ {{Shotspeed}} {{ColorRed}}-0.4{{CR}} Viteza Lacrimilor#Lacrimi Pătrunzătoare + spectrale"}, -- Dead Onion
	{"337", "Ceasul Stricat", "{{Slow}} Încetinește inamicii la fiecare a 4-a cameră#13% șansă să grăbească camera"}, -- Broken Watch
	{"338", "Bumerangul", "Bumerang aruncabil#Pietrifică inamicii și dă {{ColorGreen}}2x{{CR}} daunele lui Isaac#Poate prinde și aduce lucruri"}, -- The Boomerang
	{"339", "Ac de Siguranță", "↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea lacrimilor#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza Lacrimilor#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- Safety Pin
	{"340", "Pastilă cu Cafeină", "↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ Te micșorezi#{{Pill}} Apare o pastilă aleatorie"}, -- Caffeine Pill
	{"341", "Poză Sfâșiată", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de atac#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza Lacrimilor"}, -- Torn Photo
	{"342", "Capac Albastru", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de Atac#↓ {{Shotspeed}} {{ColorRed}}-0.16{{CR}} Viteza Lacrimilor"}, -- Blue Cap
	{"343", "Cheie de Zăvor", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{Key}} Apar 2 chei"}, -- Latch Key
	{"344", "Cutie de Chibrituri", "{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră#{{Bomb}} Apar 3 bombe"}, -- Match Book
	{"345", "Ulei Sintetic", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor"}, -- Synthoil
	{"346", "O Gustare", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață"}, -- A Snack
	{"347", "Diplopia", "Duplică toate piedestalele și lucrurile din cameră"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Activează efectul pastilei pe care Isaac o ține fără a o folosi"}, -- Placebo
	{"349", "Nichel de Lemn", "{{Coin}} 56% șansă să apară un bănuț aleator"}, -- Wooden Nickel
	{"350", "Șoc Toxic", "{{Poison}} Când intri în cameră otrăvești inamicii#Inamicii omorâți lasă o baltă de lichid#Lichidul dă 30 daune pe secundă"}, -- Toxic Shock
	{"351", "Mega Fasole", "Pietrifică toți inamicii din cameră#{{Poison}} Dă 5 daune și otrăvește orice inamic din împrejurimi#Trimite un val de pietre în direcția în care Isaac merge#Valul de pietre poate deschide camere secrete și sparge pietre"}, -- Mega Bean
	{"352", "Tun de Sticlă", "{{Warning}} Trăgând cu tunul reduce viața lui Isaac la jumătate de inimă#Trage o lacrimă mare cu penetrare + teleghidare care dă {{ColorGreen}}10x{{CR}} Daunele lui Isaac"}, -- Glass Cannon
	{"353", "Băiatul Bombă", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele explodează în formă de cruce"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#{{Trinket}} Apare un pick-up"}, -- Crack Jacks
	{"355", "Perlele Mamei", "↑ {{Range}} {{ColorGreen}}+1.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Înălțimea Lacrimilor#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc"}, -- Mom's Pearls
	{"356", "Baterie de Mașină", "{{Battery}} Folosind un articol activ îl activează de 2 ori"}, -- Car Battery
	{"357", "Cutie de Prieteni", "{{Timer}} Duplică toți familiarii pentru cameră#{{Collectible113}} Primești un Bebe Demon pentru cameră dacă Isaac nu are familiari"}, -- Box of Friends
	{"358", "Vrăjitorul", "Lacrimi spectrale#Isaac trage cu 2 lacrimi odată pe diagonală"}, -- The Wiz
	{"359", "Cuie de 8 Inci", "↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#Crește împingerea"}, -- 8 Inch Nails
	{"360", "Incubus", "Trage lacrimi cu aceiași rată, daune și efecte ca Isaac"}, -- Incubus
	{"361", "Recompensa Sorții", "Trage lacrimi cu aceleași daune și efecte ca Isaac#Trage la jumătate de rată față de alți familiari"}, -- Fate's Reward
	{"362", "Mica Cutie", "35% șansă să apară un lucru în fiecare cameră"}, -- Lil Chest
	{"363", "Protector Jurat", "Orbital#Dă 105 daune de contact pe secundă#Blochează și atacă atacurile inamice#{{EternalHeart}} Blocând 10 atacuri într-o cameră face să apară o Inimă Eternă"}, -- Sworn Protector
	{"364", "Zona de Prietenie", "Muscă orbital medie#Dă 45 daune de contact pe secundă"}, -- Friend Zone
	{"365", "Muscă Pierdută", "Se mișcă langă pereți/obstacole#Dă 105 daune de contact pe secundă"}, -- Lost Fly
	{"366", "Bombe Împrăștiate", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac se împrăștie în 2-4 bombe mici"}, -- Scatter Bombs
	{"367", "Bombe Lipicioase", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#Bombele lui Isaac se lipesc de inamici#Omorând un inamic cu o bombă face să apară un păianjen albastru"}, -- Sticky Bombs
	{"368", "Epifora", "↑ {{Tears}} Trăgând doar într-o direcție scade gradual întârzierea lacrimilor până la 200% și scade acuratețea"}, -- Epiphora
	{"369", "Continuum", "↑ {{Range}} {{ColorGreen}}+2.25{{CR}} Distanță#↑ {{ColorGreen}}+1.5{{CR}} Înălțimea Lacrimilor#Lacrimi spectrale#Lacrimile pot trece printr-o parte a ecranului și să revină pe cealaltă"}, -- Continuum
	{"370", "Dl. Păpușă", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Lacrimi#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Înălțimea Lacrimilor#{{UnknownHeart}} Apar 3 inimi aleatorii"}, -- Mr. Dolly
	{"371", "Blestemul Turnului", "{{Warning}} După ce ești rănit apar 6 Bombe Troll#Bombele Troll moștenesc efectele de bombă ale lui Isaac"}, -- Curse of the Tower
	{"372", "Bebeluș Încărcat", "La fiecare 30 de secunde într-o cameră neterminată, familiarul poate:#{{Battery}} Face să apară o baterie (max 2 pe cameră)#{{Battery}} Adaugă o încărcare articolului activ (max 2 pe cameră)#Pietrifică toți inamicii din cameră"}, -- Charged Baby
	{"373", "Ochi Mort", "↑ {{Damage}} Când nimerești consecutiv inamicii primești {{ColorGreen}}+25%{{CR}} daune (max {{ColorGreen}}+100%{{CR}})#Ai o șansă să resetezi multiplicatorul dacă ratezi"}, -- Dead Eye
	{"374", "Lumina Sfântă", "10% șansă să tragi cu lacrimi sfinte care fac să apară o rază de lumină când nimerești un atac#{{Luck}} 50% șansă la 9 noroc#{{Damage}} Lumina dă de {{ColorGreen}}4x{{CR}} daunele lui Isaac"}, -- Holy Light
	{"375", "Pălăria Gazdei", "Primești imunitate la explozii, valuri de pietre și călcatul Mamei și al lui Satan#25% șansă să trimiți înapoi atacurile inamice"}, -- Host Hat
	{"376", "Restocare", "Apar 3 lucruri aleatorii#Cumpărând un lucru dintr-un Magazin îl face să se restocheze instant"}, -- Restock
	{"377", "Sac Izbucnind", "Păianjenii inamici nu îl mai urmăresc sau îi dau daune de contact lui Isaac"}, -- Bursting Sack
	{"378", "Nr. 2", "Ținând butonul de atac pentru 2.35 secunde face să apară o Bombă-Fund aprinsă"}, -- No. 2
	{"379", "Duplexul Popula", "↑ {{Tearsize}} {{ColorGreen}}x2{{CR}} Mărimea Lacrimilor#Lacrimi spectrale"}, -- Pupula Duplex
	{"380", "Plătește Pentru a Juca", "{{Coin}} {{ColorGreen}}+5{{CR}} Bani#{{Coin}} Ușile cu o încuietoare trebuiesc deschise cu bani în locul cheilor"}, -- Pay To Play
	{"381", "Binecuvântarea lui Eden", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de Atac#Primești un articol aleator la începutul cursei următoare"}, -- Eden's Blessing
	{"382", "Minge Prietenoasă", "Poate fi aruncată spre inamici pentru a-i captura#Folosind articolul după capturarea unui inamic îl face să apară ca un companion prietenos"}, -- Friendly Ball
	{"383", "Detonatorul Lacrimilor", "Împarte toate lacrimile lui Isaac de pe ecran într-un cerc de 6 lacrimi"}, -- Tear Detonator
	{"384", "Micul Gurdy", "{{Chargeable}} Se aruncă și sare în jurul camerei cu viteza bazată pe încărcarea atacului#Dă 5-90 daune de contact pe secundă depinzănd de viteză"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Ridică banii apropiați#Își crește nivelul după ce ia 6, 12, și 24 de bănuți#Lv2:Șansă să apară un articol după curățarea camerei#Lv3: Trage cu lacrimi care fac să apară un bănuț când nimeresc#Lv4: Aleargă inamicii, ocazional aruncă bombe, poate apărea un articol când iei un ban"}, -- Bumbo
	{"386", "D12", "Reface orice obstacol într-unul aleator (ex. rahat, vaze, TNT, rahat roșu, blocuri de pietre etc.)"}, -- D12
	{"387", "Cădelniță", "{{Slow}} Familiar înconjurat de o mare aură de lumină care încetinește inamicii și proiectilele"}, -- Censer
	{"388", "Vagabondul Cheii", "{{Key}} Ia cheile apropiate#{{Chest}} Dă cutii aleatorii în schimb"}, -- Key Bum
	{"389", "Plasă cu Rune", "{{Rune}} Apare o rună aleatorie la fiecare 5-6 camere"}, -- Rune Bag
	{"390", "Serafim", "Trage cu lacrimi de Inimă Sacră#Dă 10 daune pe lacrimă"}, -- Seraphim
	{"391", "Trădarea", "{{Charm}} Primind daune cucerești toți inamicii din cameră"}, -- Betrayal
	{"392", "Zodiac", "Primești un efect de zodiac aleator pe fiecare etaj"}, -- Zodiac
	{"393", "Sărutul Șarpelui", "{{Poison}} 15% șansă să tragi cu lacrimi otrăvite#{{Poison}} Otrăvești inamicii la contact#{{BlackHeart}} Inamicii otrăviți au o șansă să arunce o Inimă Neagră la moarte"}, -- Serpent's Kiss
	{"394", "Marcat", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Viteză de Atac#↑ {{Range}} {{ColorGreen}}+3.15{{CR}} Distanță#↑ {{ColorGreen}}+0.3{{CR}} Înălțimea Lacrimilor#Isaac trage lacrimi automat la o țintă mobilă de pe pământ"}, -- Marked
	{"395", "Tehn X", "{{Chargeable}} Lacrimile lui Isaac sunt înlocuite de un inel de laser încărcabil#Mărimea inelului crește cu încărcarea"}, -- Tech X
	{"396", "Lamă de Ventricul", "Creează până la 2 portale prin care poți călători#Pot fi puse în camere diferite"}, -- Ventricle Razor
	{"397", "Rază de Atracție", "↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Viteză de Atac#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor#↑ {{Shotspeed}} {{ColorGreen}}+0.16{{CR}} Viteza Lacrimilor#Lacrimile lui Isaac vor merge mereu pe o rază de lumină din fața lui"}, -- Tractor Beam
	{"398", "Carnea Zeului", "Lacrimile pot micșora inamicii#Inamicii micșorați pot fi zdrobiți și uciși dacă mergi peste ei"}, -- God's Flesh
	{"399", "Falca Vidului", "↑ {{Damage}} {{ColorGreen}}+1{{CR}} Daune#{{Chargeable}} Trăgând pentru 2.35 secunde și dând drumul la buton creează un inel negru de sulf în jurul lui Isaac#Dă de {{ColorGreen}}30x{{CR}} daunele lui Isaac în 2 secunde#{{BlackHeart}} Inamicii uciși de inelul negru au o șansă de {{ColorGreen}}5%{{CR}} să arunce o Inimă Neagră"}, -- Maw of the Void
	{"400", "Sulița Destinului", "Isaac ține o suliță în fața lui#{{Fear}} Sulița dă {{ColorGreen}}dublul{{CR}} daunelor lui și poate speria inamicii la contact"}, -- Spear of Destiny
	{"401", "Explozivul", "25% șansă să tragi cu o lacrimă bombă-lipicioasă#Lacrimile bombă-lipicioasă nu provoacă daune la impact și explodează după câteva secunde"}, -- Explosivo
	{"402", "Haos", "Toate articolele sunt alese din grupuri de articole aleatorii#Apar 1-6 lucruri aleatorii"}, -- Chaos
	{"403", "Mod Păianjen", "Afișează daunele cauzate de lacrimi și barele de viață ale inamicilor#Cauzează efecte de statistici aleatorii inamicilor la contact#Apar baterii aleatoriu"}, -- Spider Mod
	{"404", "Bebeluș Pârțâit", "Blochează proiectile#Când este nimerit, are 10% șansă să pârțâie, {{Charm}} să farmece, {{Poison}} să otrăvească sau să împingă inamicii"}, -- Farting Baby
	{"405", "Bug GB", "Sare prin cameră#Provoacă 120 daune pe secundă și aplică efecte de statistici aleatorii inamicilor la contact"}, -- GB Bug
	{"406", "D8", "Amestecă daunele, viteza de atac, distanța și viteza lui Isaac între {{ColorGreen}}x0.5{{CR}} și {{ColorGreen}}x2{{CR}}#Multiplicatorii sunt refăcuți la fiecare folosire"}, -- D8
	{"407", "Puritate", "↑ Mărește o statistică a lui Isaac depinzând de culoarea aurei#Primind daune scoate efectul și îi dă lui Isaac un nou efect în următoarea cameră#{{ColorYellow}}Galben{{CR}} = ↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#{{ColorBlue}}Albastru{{CR}} = ↑ {{Tears}} {{ColorRed}}-4{{CR}} Întârzierea lacrimilor#{{ColorRed}}Roșu{{CR}} = ↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune#{{ColorOrange}}Portocaliu{{CR}} = ↑ {{Range}} {{ColorGreen}}+7.5{{CR}} Distanță, ↑ {{ColorGreen}}+1{{CR}} Înălțimea lacrimilor"}, -- Purity
	{"408", "Athame", "Primind daune creează un inel negru de sulf în jurul lui Isaac#Dă {{ColorGreen}}30x{{CR}} daunele lui Isaac în 2 secunde#{{BlackHeart}} Inamicii uciși de inel au o șansă de {{ColorGreen}}15%{{CR}} să arunce o Inimă Neagră"}, -- Athame
	{"409", "Vas Gol", "{{BlackHeart}} {{ColorGreen}}+2{{CR}} Inimi Negre#{{EmptyHeart}} Când Isaac nu are Inimi Roșii:#Zboară#La fiecare 40 secunde când e într-o cameră ostilă, primește un scut pentru 10 secunde"}, -- Empty Vessel
	{"410", "Ochi Rău", "3.33% șansă să tragi un ochi#{{Luck}} 10% șansă la 20 noroc#Ochiul se mișcă într-o linie dreaptă și trage lacrimi în aceeași direcție ca Isaac"}, -- Evil Eye
	{"411", "Sânge Viguros", "↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune pentru fiecare inamic ucis în cameră#Maximum {{ColorGreen}}+5{{CR}} Daune după 10 ucideri"}, -- Lusty Blood
	{"412", "Concepția Schimbătoare", "Primind daune de 15 de ori face să apară permanent un familiar demon#După 2 familiari, îi ia 30 în loc de 15#Maximum 4 familiari"}, -- Cambion Conception
	{"413", "Concepție Imaculată", "Ridicând 15 inimi apare un familiar angelic permanent#Maximum 5 familiari#{{SoulHeart}} Dacă toți familiarii au fost primiți, apare o Inimă Suflet"}, -- Immaculate Conception
	{"414", "Mai Multe Opțiuni", "{{TreasureRoom}} Îi permite lui Isaac să aleagă dintre 2 articole în camerele comorilor"}, -- More Options
	{"415", "Coroană de Lumină", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Dacă Isaac nu are containere de inimi dăunate:#↑ {{Damage}} {{ColorGreen}}x2{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Lungimea Lacrimilor#↓ {{Shotspeed}} {{ColorRed}}-0.3{{CR}} Viteza Lacrimilor#Luând orice daună scoate efectul în cameră"}, -- Crown Of Light
	{"416", "Buzunare Adânci", "Îi permite lui Isaac să care 2 rune/cărți/pastile"}, -- Deep Pockets
	{"417", "Succubus", "Sare prin cameră înconjurat de o aură dăunătoare care dă {{ColorGreen}}1.29x{{CR}} daunele lui Isaac pe secundă#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune când stai în aură"}, -- Succubus
	{"418", "Tort cu Fructe", "Fiecare lacrimă a lui Isaac primește un efect diferit"}, -- Fruit Cake
	{"419", "Teleportare 2.0", "Îl teleportează pe Isaac într-o cameră care nu a fost golită încă#Ierarhie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	{"420", "Pudră Neagră", "Mergând într-un cerc desenează o pentagramă pe podea care dă 130 daune în 4 secunde"}, -- Black Powder
	{"421", "Fasole Rinichi", "{{Charm}} Cucerește și dă 5 daune tuturor inamicilor apropiați"}, -- Kidney Bean
	{"422", "Clepsidră Luminată", "Îl aduce pe Isaac în camera trecută și anulează toate acțiunile făcute în cameră când este folosită"}, -- Glowing Hour Glass
	{"423", "Cercul Protecție", "Îl înconjoară pe Isaac cu o aureolă care dă daunele lui de contact la contact pe secundă#Șansă să reflecteze atacurile inamice"}, -- Circle of Protection
	{"424", "Cap de Sac", "Lucrurile au o șansă de 33% să fie înlocuite cu un sac#Apare un sac"}, -- Sack Head
	{"425", "Lumină de Noapte", "{{Slow}} Apare un con de lumină încetinitor în fața lui Isaac"}, -- Night Light
	{"426", "Fan Obsedat", "Imită mișcarea exactă a lui Isaac cu o întârziere de 3 secunde#Dă 30 daune de contact pe secundă"}, -- Obsessed Fan
	{"427", "Creator de Mine", "Apare un butoi TNT ce poate fi împins#Folosind articolul a doua oară în aceeași cameră îl detonează la distanță"}, -- Mine Crafter
	{"428", "PJ-uri", "{{HealingRed}} Viață Plină#{{SoulHeart}} {{ColorGreen}}+4{{CR}} Inimi Suflet"}, -- PJs
	{"429", "Capul Paznicului", "{{Coin}} Nimerind un inamic cu o lacrimă are o șansă de 5% să facă să apară un bănuț"}, -- Head of the Keeper
	{"430", "Tata Muscă", "Imită mișcările lui Isaac cu o întărziere de o secundă#Trage cu lacrimi la inamicii apropiați și dă daunele lui Isaac"}, -- Papa Fly
	{"431", "Bebeluș Multidimensional", "Imită mișcările lui Isaaccu o întârziere de 2 secunde#Lacrimile care trec prin el sunt dublate și primesc distanță {{ColorGreen}}+{{CR}} viteza lacrimilor mărite"}, -- Multidimensional Baby
	{"432", "Bombe cu Sclipici", "{{Bomb}} {{ColorGreen}}+5{{CR}} Bombe#{{Charm}} Bombele lui Isaac au o șansă de 25% să arunce un lucru aleator și 15% șansă să farmece inamicii când explodează"}, -- Glitter Bombs
	{"433", "Umbra Mea", "{{Fear}} După ce ești atacat înspăimânți toți inamicii din cameră și apare un încărcător negru prietenos#Încărcătorul dă 5 daune pe secundă"}, -- My Shadow
	{"434", "Borcan cu Muște", "Omorând un inamic adaugă o muscă albastră în borcan, până la 20#Folosind articolul dai drumul tuturor muștelor"}, -- Jar of Flies
	{"435", "Micul Loki", "Trage 4 lacrimi în model de cruce#Dă 3.5 daune pe lacrimă"}, -- Lil Loki
	{"436", "Lapte!", "{{Tears}} Primind daune îți oferă Viteză de Atac pe durata camerei"}, -- Milk!
	{"437", "D7", "Reîncepi camera și reapar toți inamicii#Poate fi folosit pentru a primi mai multe recompense dintr-o singură cameră#Dacă e folosit după lupta cu Greed, schimbă camera într-un Magazin normal/Cameră Secretă"}, -- D7
	{"438", "Binky", "↑ {{Tears}} {{ColorGreen}}+0.75{{CR}} Viteză de Atac#↑ Micșorare#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet"}, -- Binky
	{"439", "Cutia Mamei", "{{Trinket}} Apare un breloc aleator#Când e ținută:#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{Trinket}} Dublează efectele brelocurilor"}, -- Mom's Box
	{"440", "Piatră la Rinichi", "↑ {{ColorGreen}}+2{{CR}} Lungimea Lacrimilor#↓ {{Speed}} {{ColorRed}}-0.2{{CR}} Viteză#↓ {{Range}} {{ColorRed}}-17{{CR}} Distanță#Isaac se oprește din tras ocazional și încarcă un atac care scoate o explozie de lacrimi și o piatră de rinichi"}, -- Kidney Stone
	{"441", "Mega Bubuitură", "{{Timer}} Trage cu o mega undă de sânge a lui Mega Satan pentru 15 secunde#Unda persistă între camere și etaje"}, -- Mega Blast
	{"442", "Coroana Prințului Întunecat", "Când ești la 1 Inimă Roșie întreagă:#↑ {{Tears}} {{ColorGreen}}+0.75{{CR}} Viteză de Atac#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Înălțimea Lacrimilor#↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} Viteza Lacrimilor"}, -- Dark Princes Crown (apostrophe added to the name in Repentance) -- Dark Prince's Crown
	{"443", "Măr!", "↑ {{Tears}} {{ColorGreen}}+0.3{{CR}} Viteză de Atac#{{Damage}} 6.66% să arunci cu o lamă de ras care dă {{ColorGreen}}4x{{CR}} daunele lui Isaac#{{Luck}} 100% șansă la 14 noroc"}, -- Apple!
	{"444", "Creion de Plumb", "Isaac trage o adunătură de lacrimi la fiecare 15 lacrimi#Lacrimile din adunătură dau daune duble"}, -- Lead Pencil
	{"445", "Dinte de Câine", "↑ {{Speed}} {{ColorGreen}}+0.1{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#{{SecretRoom}}{{SuperSecretRoom}} Un lup rage în camerele adiacente cu o Cameră Secretă/Super Secretă#{{LadderRoom}} Un câine latră în camerele în care există un tunel sub o piatră"}, -- Dog Tooth
	{"446", "Dinte Mort", "{{Poison}} Când tragi, Isaac e înconjurat de o aură verde care otrăvește inamicii"}, -- Dead Tooth
	{"447", "Fasole Persistentă", "Trăgând fără pauză pentru 7.5 secunde face să apară un nor de rahat#Norul dă daunele lui Isaac de 5 ori pe secundă#Norul ține 15 secunde și poate fi mișcat trăgând în el"}, -- Linger Bean
	{"448", "Ciob de Sticlă", "La primirea daunelor:#{{Heart}} 25% șansă să apară o Inimă Roșie#{{Collectible214}} 10% șansă să primești ↑ {{Range}} {{ColorGreen}}+5{{CR}} Distanță și lași o dâră de sânge în cameră"}, -- Shard of Glass
	{"449", "Placă de metal", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{Confusion}} Gloanțele inamice au o șansă de 25% să fie reflectate ca lacrimi concusive"}, -- Metal Plate
	{"450", "Ochi de Lăcomie", "La fiecare 20 lacrimi, Isaac trage o lacrimă bănuț care dă daune duble#Inamicii nimeriți cu banul sunt pietrificați și devin aur#{{Coin}} Omorând un inamic de aur lasă 1-4 bani#{{Warning}} Trăgând o lacrimă bănuț costă 1 ban"}, -- Eye of Greed
	{"451", "Pânză de Tarot", "{{Card}} Apare o carte de joc#{{Card}} Efectele cărților sunt dublate sau fermecate"}, -- Tarot Cloth
	{"452", "Vene Varicoase", "La primirea lacrimilor tragi 10 lacrimi într-un cerc in jurul lui Isaac#Lacrimile dau daunele lui Isaac {{ColorGreen}}+25{{CR}}"}, -- Varicose Veins
	{"453", "Fractură Compusă", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Înălțimea lacrimilor#Lacrimile se sparg în 1-3 bucățele de os când nimeresc orice"}, -- Compound Fracture
	{"454", "Polidactilie", "Apare o {{Rune}} rună, {{Card}} carte sau {{Pill}} pastilă#Îi permite lui Isaac să care 2 rune/cărți/pastile"}, -- Polydactyly
	{"455", "Banul Pierdut al Tatei", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Înălțimea lacrimilor#{{Luck}} Apare un Bănuț Norocos"}, -- Dad's Lost Coin
	{"456", "Pâine Mucegăită", "↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață"}, -- Moldy Bread
	{"457", "Cap de Con", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#20% șansă să anuleze daunele primite"}, -- Cone Head
	{"458", "Buric", "{{Trinket}} Îi permite lui Isaac să care 2 bibelouri#{{Trinket}} Apare un bibelou aleator"}, -- Belly Button
	{"459", "Infecție de Sinus", "20% șansă să tragi un muc lipicios#{{Damage}} Mucii dau daunele lui Isaac o dată pe secundă și se lipesc 60 secunde#{{Luck}} Neafectat de noroc"}, -- Sinus Infection
	{"460", "Glaucom", "{{Confusion}} 5% șansă să tragi lacrimi concusive#Face ecranul puțin întunecat"}, -- Glaucoma
	{"461", "Parazitoid", "15% ;ansă sa tragi cu saci de ou#{{Luck}} 50% șansă la 5 noroc#{{Slow}} Sacii de ou fac să apară fluid încetinitor și un păianjen albastru sau muscă când nimerești"}, -- Parasitoid
	{"462", "Ochiul lui Belial", "↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Înălțimea lacrimilor#Lacrimi penetratoare#Nimerind un inamic face lacrima teleghidată și îi dublează daunele"}, -- Eye of Belial
	{"463", "Acid Sulfuric", "↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#Lacrimile lui Isaac pot distruge pietre și deschide uși"}, -- Sulfuric Acid
	{"464", "Gliful Echilibrului", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#Inamicii campioni aruncă un lucru de care Isaac are cea mai mare nevoie"}, -- Glyph of Balance
	{"465", "Băț Analogic", "↑ {{Tears}} {{ColorGreen}}+0.3{{CR}} Viteză de Atac#Îi permite lui Isaac să tragă lacrimi în orice direcție"}, -- Analog Stick
	{"466", "Contagiune", "{{Poison}} Primul inamic omorât în cameră explodează și otrăvește toți inamicii apropiați"}, -- Contagion
	{"467", "Deget!", "{{Damage}} Dă constant 10% din daunele lui Isaac în orice direcție arată"}, -- Finger!
	{"468", "Umbră", "Urmărește mișcările lui Isaac cu întârziere de 1 secundă#Dă 30 daune de contact pe secundă#După ce dă 600 daune, e absorbit de Isaac, mărindu-i daunele de contact"}, -- Shade
	{"469", "Depresie", "Lasă o dâră de fluid#Fluidul dă 6 daune pe secundă#Inamicii care ating norul pot fi atinși de o rază de lumină sfântă"}, -- Depression
	{"470", "Tăcutul", "Sare prin cameră#Dă 30 daune de contact pe secundă#Se oprește când Isaac trage#Blochează proiectilele când e oprit"}, -- Hushy
	{"471", "Micul Monstro", "{{Chargeable}} Încarcă un atac-pușcă similar cu {{Collectible229}} Plămânul lui Monstro#Fiecare lacrimă dă {{ColorGreen}}3.5{{CR}} daune"}, -- Lil Monstro
	{"472", "Regele Bebeluș", "Ceilalți familiari îl urmăresc#Se oprește când Isaac trage#Se teleportează la Isaac când se oprește din tras"}, -- King Baby
	{"473", "Marele Grăsan", "Se aruncă foarte încet înainte#Blochează proiectile#Dă 40.5 daune de contact pe secundă"}, -- Big Chubby
	{"474", "Amigdală", "Blochează proiectilele inamice"}, -- Tonsil
	{"475", "Planul C", "Dă {{ColorGreen}}9,999,999{{CR}} daune tuturor inamicilor#{{Warning}} Isaac moare după 3 secunde"}, -- Plan C
	{"476", "D1", "Duplică un lucru aleator din cameră"}, -- D1
	{"477", "Vid", "Consumă toate articolele piedestal din cameră#Articolele active: Efectele lor se activează și se vor activa la fiecare folosire viitoare a Vidului#↑ Articolele pasive oferă două creșteri de statistici aleatorii"}, -- Void
	{"478", "Pauză", "Îngheață toți inamicii din cameră până când Isaac trage#Atingerea unui inamic înghețat provoacă daune lui Isaac#Inamicii se dezgheață după 30 de secunde"}, -- Pause
	{"479", "Topitor", "{{Trinket}} Consumă bibelourile ținute de Isaac și le oferă efectele permanent#Crește frecvența de apariție a bibelourilor"}, -- Smelter
	{"480", "Compost", "Transformă obiectele de pe jos în muște sau păianjeni albaștri#Dublează toate muștele și păianjenii albaștri#Apare 1 muscă sau păianjen albastru dacă Isaac nu are niciunul"}, -- Compost
	{"481", "Dataminer", "↑ Crește aleatoriu o caracteristică#↓ Scade aleatoriu o caracteristică#{{Timer}} Efecte aleatorii de lacrimi pentru cameră#Transformă piedestalele de obiecte în obiecte glitched#{{Blank}} Corupe toate sprite-urile și muzica din cameră"}, -- Dataminer
	{"482", "Clicker", "Îți schimbă personajul cu unul aleatoriu#50% șansă de a elimina cel mai recent obiect colectat"}, -- Clicker
	{"483", "Mama Mega!", "Afectează întregul etaj#Explodează toate obiectele#Provoacă 200 daune tuturor inamicilor#Deschide camere secrete#Deschide Boss Rush și Hush indiferent de timp"}, -- Mama Mega!
	{"484", "Stai, ce?", "La folosire, împinge inamicii și generează un val de pietre în jurul lui Isaac#Valul de pietre poate deschide camere și sparge pietre"}, -- Wait What?
	{"485", "Bănuț Strâmb", "50% șansă să dubleze toate obiectele, pickup‑urile și cuferele din cameră#50% șansă să elimine obiectele/pickup‑urile din cameră și să apară 1 bănuț"}, -- Crooked Penny
	{"486", "Briciul Tocit", "Îl rănește pe Isaac fără a-i elimina viața#Declanșează orice efect la lovitură"}, -- Dull Razor
	{"487", "Decojitor de Cartofi", "{{EmptyHeart}} Elimină 1 container de inimă pentru:#↑ {{Damage}} {{ColorGreen}}+0.2{{CR}} Daune#{{Collectible73}} Un Cub de Carne#{{Timer}} Primește pentru cameră:#↑ {{Range}} {{ColorGreen}}+5{{CR}} Distanță#{{Collectible214}} Lasă o dâră de sânge pe podea"}, -- Potato Peeler
	{"488", "Metronom", "Activează efectul unui obiect aleator pentru cameră"}, -- Metronome
	{"489", "D Infinit", "Declanșează un efect aleatoriu de zar la fiecare folosire"}, -- D Infinity
	{"490", "Sufletul lui Eden", "Creează 2 obiecte aleatorii, în funcție de pool‑ul camerei#Începe fără încărcări"}, -- Eden's Soul
	{"491", "Bebeluș Acid", "{{Pill}} Oferă o pastilă aleatorie la fiecare 3 camere#{{Poison}} Folosirea unei pastile otrăvește toți inamicii din cameră"}, -- Acid Baby
	{"492", "Ascultă!", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} noroc#Afișează locațiile {{SecretRoom}} camerelor secrete, pietrelor colorate și {{LadderRoom}} găurilor"}, -- YO LISTEN!
	{"493", "Adrenalină", "Pentru fiecare container gol de inimă:#↑ {{Damage}} {{ColorGreen}}+0.2{{CR}} Daune"}, -- Adrenaline
	{"494", "Scara lui Iacob", "Lacrimile provoacă 1-2 scântei de electricitate la impact#Scânteile provoacă jumătate din daunele lui Isaac"}, -- Jacob's Ladder
	{"495", "Ardei Fantomă", "Șansă să arunci un foc roșu care blochează proiectilele inamice și provoacă daune de contact#Focul dispare după ce provoacă daune sau blochează 5 lovituri"}, -- Ghost Pepper
	{"496", "Eutanasiere", "3.33% șansă să tragi un ac#{{Luck}} 100% șansă la 15 noroc#Acele omoară inamicii normali instant, izbucnind în 10 lacrimi#{{Damage}} Acele provoacă {{ColorGreen}}3x{{CR}} daunele lui Isaac împotriva șefilor"}, -- Euthanasia
	{"497", "Chiloți de camuflaj", "{{Confusion}} La intrarea într-o cameră, confuză toți inamicii până când Isaac începe să tragă"}, -- Camo Undies
	{"498", "Dualitate", "{{AngelDevilChance}} Apar simultan Camera Diavolului și Camera Îngerului dacă oricare ar fi trebuit să apară#Intrarea într-una o face pe cealaltă să dispară"}, -- Duality
	{"499", "Euharistie", "{{AngelChance}} 100% șansă ca Camerele Îngerului să apară"}, -- Eucharist
	{"500", "Sacul cu săculeți", "Apare un sac la fiecare 5-6 camere"}, -- Sack of Sacks
	{"501", "Punga Lăcomiei", "{{Heart}} {{ColorGreen}}+1{{CR}} container de inimă pentru fiecare 25 de bănuți obținuți după ce primești Punga Lăcomiei"}, -- Greed's Gullet
	{"502", "Coș Mare", "{{Slow}} Trăgând, ocazional arunci o lacrimă albă care provoacă daune duble și încetinește inamicii#Când primești daune, arunci o lacrimă albă"}, -- Large Zit
	{"503", "Coarnele Mici", "5% șansă să tragi lacrimi care omoară instant inamicii#{{Luck}} 20% șansă la 15 noroc#Isaac provoacă 3.5 daune de contact"}, -- Little Horn
	{"504", "Nugă Maro", "Apare o turetă-muscă ce trage în inamici#Fiecare lovitură provoacă 2 daune"}, -- Brown Nugget
	{"505", "Poke Go", "Intrând într-o cameră ostilă ai șansă să apară un inamic fermecat"}, -- Poke Go
	{"506", "Înjunghiator", "{{BleedingOut}} Lovind un inamic în spate îi provoci daune duble și sângerare, care provoacă 10% din viața maximă a inamicului la fiecare 5 secunde"}, -- Backstabber
	{"507", "Paie Ascuțite", "{{Damage}} Provoacă daunele lui Isaac + 10% din viața maximă a inamicului tuturor inamicilor#{{HalfHeart}} Provocând daune cu paiele pot apărea jumătăți de inimă#{{HalfSoulHeart}} Dacă nu ai containere de inimă, apar Inimi Suflet"}, -- Sharp Straw
	{"508", "Briciul Mamei", "{{BleedingOut}} Orbital care provoacă sângerare, care face 10% din viața maximă a inamicului la fiecare 5 secunde#{{Damage}} Provoacă {{ColorGreen}}3x{{CR}} daunele lui Isaac pe secundă#Nu blochează proiectilele"}, -- Mom's Razor
	{"509", "Ochi Însângerat", "Orbital care aruncă cu o lacrimă într-o direcție aleatorie la fiecare 2 secunde#3.5 daune pe lacrimă#Provoacă 30 de daune de contact pe secundă#Nu blochează proiectilele"}, -- Bloodshot Eye
	{"510", "Delirant", "{{Timer}} Oferă un Boss Delirium prietenos pe durata camerei"}, -- Delirious
	{"511", "Muscă Furioasă", "Orbitează un inamic aleatoriu până moare#Provoacă 30 de daune pe secundă altor inamici"}, -- Angry Fly
	{"512", "Gaură Neagră", "Aruncă o gaură neagră ce absoarbe totul#Provoacă 6 daune pe secundă#Distruge pietrele din apropriere#Durează 6 secunde"}, -- Black Hole
	{"513", "Bozo", "↑ {{Damage}} {{ColorGreen}}+0.1{{CR}} Daune#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{Charm}} Vrăjește/înspăimântă inamicii aleatoriu#Vătămarea are o șansă aleatorie să ofere un rahat curcubeu"}, -- Bozo
	{"514", "Modem Stricat", "Unii inamci și proiectile sunt blocate pe o perioadă scurtă la intervale aleatorii#25% șansă să dubleze recompensa camerei"}, -- Broken Modem
	{"515", "Cadou Misterios", "Oferă un item din pool-ul în care este deschis#Șansă să ofere O Bucată de Cărbune sau Rahatul"}, -- Mystery Gift
	{"516", "Stropitoare", "Pune o stropitoare care aruncă cu lacrimile lui Isaac în jurul ei"}, -- Sprinkler
	{"517", "Bombe Rapize", "{{Bomb}} {{ColorGreen}}+7{{CR}} Bombe#Bombele pot fi puse una după alta"}, -- Fast Bombs
	{"518", "Prieten într-o Cutie", "Familiar care arată ca un bebeluș co-op aleatoriu#Efectele lacrimilor aleatorii#Efectele se schimbă la fiecare etaj"}, -- Buddy in a Box
	{"519", "Micul Delirium", "Se transformă într-un familiar la fiecare 10 secunde"}, -- Lil Delirium
	{"520", "Cabluri de Pornire", "Omorârea a 15 inamici oferă 1 încărcare la itemul activ"}, -- Jumper Cables
	{"521", "Cupon", "Face un obiect aleator din {{Shop}} Magazin sau {{DevilRoom}} Camera Diavolului gratis#Dacă este ținut, un item din Magazin este redus"}, -- Coupon
	{"522", "Telekineză", "Oprește toate proiectilele care se aproprie de Isaac pentru 3 secunde, după le aruncă înapoi"}, -- Telekinesis
	{"523", "Cutie de Mutare", "Colectează toate pickup-urile si itemele din cameră#Folosirea itemului din nou readuce toate obiectele colectate înapoi#Îi permite lui Isaac să mute lucruri printre camere"}, -- Moving Box
	{"524", "Technologie Zero", "Lacrimile lui Isaac sunt conectate cu rază electricitate#Raza provoacă daunele lui Isaac"}, -- Technology Zero
	{"525", "Lepră", "Vătămarea oferă un orbital care blochează proiectilele#Maxim 3 orbitali#Provoacă 35 de daune pe secundă#Orbitalele se distrug dacă sunt vătămate prea mult"}, -- Leprosy
	{"526", "7 Sigilii", "Oferă un călăreț mic care produce lăcuste#Călărețul și lăcustele se schimbă la fiecare 10 secunde"}, -- 7 Seals
	{"527", "Dl. EU!", "Oferă un cursor pentru câteva secunde după o fantomă apare care(depinde de poziția cursorului):#Deschide o ușă sau un cufăr#Ia un item#50% șansă să fure un item din magazin / Camera Diavolului#Atacă in inamic până moare#Distruge pereții, pietrele, negustorii, statuile înger, aparatele, cerșetorii"}, -- Mr. ME!
	{"528", "Prism Angelic", "Orbital#Lacrimile preitenoase care il ating se împart în 4"}, -- Angelic Prism
	{"529", "Poc!", "Lacrimile lui Isaac se izbesc unele de altele și dispar când nu se mai mișcă"}, -- Pop!
	{"530", "Lista Morții", "Omorârea inamicilor în ordinea indicată de semul {{DeathMark}} care este deasupra insamicilor oferă statstici aleatorii"}, -- Death's List
	{"531", "Hemolacrie", "↑ {{Damage}} {{ColorGreen}}x1.31{{CR}} Daune#↓ {{Tears}} {{ColorGreen}}x0.5{{CR}} Viteză de atac#↓ {{Tears}} {{ColorGreen}}+10{{CR}} Întârziere a lacrimilor#Lacrimile lui Isaac sunt arcuite și explodează în lacrimi mai mici la impact"}, -- Haemolacria
	{"532", "Lacrifagie", "Lacrimile Lui Isaac încetinesc până la oprire după explodează în 8 lacrimi mai mici#Lacrimile se pot unii și să devină mai mari"}, -- Lachryphagy
	{"533", "Trisagion", "Înlocuiește lacrimile lui Isaac cu o undă de lumină care penetrează inamicii#Unda provoacă 33% din daunele lui Isaac, dar poate lovi de mai multe ori inamicul"}, -- Trisagion
	{"534", "Ghiozdan", "Isaac poate ține 2 iteme active#Itemele pot fi schimbate cu CTRL ({{ButtonRT}})"}, -- Schoolbag
	{"535", "Pătură", "{{Heart}} Vindecă o inimă#{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{HolyMantle}} În Camera Șefului primești Holy Mantle"}, -- Blanket
	{"536", "Altar de Sacrificare", "Sacrifică până la 2 familiari și oferă un item din Camera Diavolului pentru fiecare Familiar sacrificat#{{Coin}} Transformă păianjenii și multele albastre în bănuți"}, -- Sacrificial Altar
	{"537", "Micul Spewer", "{{Pill}} Oferă o pastilă când este colectat#Scuipă o baltă dreaptă#Tipul bălți se schimbă cu fiecare pastilă folosită"}, -- Lil Spewer
	{"538", "Bile", "{{Trinket}} Oferă 3 trinket-uri la aleatori#{{Collectible479}} 10% șansă ca trinket-ul să fie consumat și efectul lui să deină permanent când Isaac este vătămat"}, -- Marbles
	{"539", "Ou Misterios", "Vătămarea oferă un inamic prietenos#Oferă inamici mai puternici cu cât mai multe camere au fost curățate fără a fi vătămat"}, -- Mystery Egg
	{"540", "Piatră Plată", "Lacrimile lui Isaac sar pe pământ și cauzează daune la fiecare săritură"}, -- Flat Stone
	{"541", "Măduvă", "{{Heart}} Oferă {{ColorGreen}}3{{CR}} Inimi Roșii#{{EmptyBoneHeart}} {{ColorGreen}}+1{{CR}} Inimă Os"}, -- Marrow
	{"542", "Coastă Alunecoasă", "Orbital#Reflectă proiectilele inamicilor"}, -- Slipped Rib
	{"543", "Rahat Binecuvântat", "Vătămarea oferă un rahat alb#În interiorul aurei primești:#↑ {{Tears}} {{ColorGreen}}x2{{CR}} Viteză de atac#Șansă sa oprească vătămarea"}, -- Hallowed Ground
	{"544", "Cosastă Ascuțită", "Levitează în fața lui Isaac#Provoacă {{ColorGreen}}6x{{CR}} din daunele lui Isaac pe secundă"}, -- Pointy Rib
	{"545", "Cartea Morților", "Oferă un orbital os sau un bony prietenos per inamic omorât în cameră (maxim 8)"}, -- Book of the Dead
	{"546", "Inelul Tatei", "Oferă o aură care piretifică inamicii"}, -- Dad's Ring
	{"547", "Certificat de Deces", "↑ {{Tears}} {{ColorGreen}}+0.7{{CR}} Lacrimi#{{EmptyBoneHeart}} {{ColorGreen}}+1{{CR}} Inimă Os#{{Trinket21}} Oferă trinket-ul Hârtia Misterioasă"}, -- Divorce Papers
	{"548", "Mandibulă", "Familiar boomerang#Provoacă 7 daune de contact pe secundă#Poate să aducă pickup-uri înapoi"}, -- Jaw Bone
	{"549", "Oase Fragile", "{{EmptyBoneHeart}} Înlocuiește toate spațile de Inimile Roși a le lui Isaac cu 6 Inimi Os#La păierderea undei Inimi Os:#↑ {{Tears}} {{ColorGreen}}+0.5{{CR}} Lacrimi#Aruncă cu 8 bucăți de oase im toate direcțile"}, -- Brittle Bones
	{"550", "Lopată Stricată", "Piciorul mamei cade constant pe Isaac#Folosirea itemului oprește picioul pe durata camerei (sau o rundă la Boss Rush )#{{Warning}} (Finalizează beat Boss Rush cu ea!)"}, -- Broken Shovel
	{"551", "Lopată Stricată", "Completeză Lopata Mamei#{{Warning}} Folosește lopata pe bucata de pământ în \"Dark Room\""}, -- Broken Shovel
	{"552", "Lopata Mamei", "Deschide o trapă către următorul etaj#10% șansă pentru {{LadderRoom}} beci#{{Warning}} Folosește lopata pe pământ în \"Dark Room\""}, -- Mom's Shovel
	}
---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Niciun efect",
	[35] = {40, 80}, -- The Necronomicon
	[37] = { " o ", " 2 ", "bombă", "{{CR}}bombe" }, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "inimă", "{{CR}}inimi"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "card", "{{CR}}carte"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {" a ", " 2 ", "lucru", "{{CR}}lucruri"}, -- The Book of Sin
	[102] = {1, 2, "pill", "{{CR}}pastile"}, -- Mom's Bottle of Pills
	[105] = "Realege de 2 ori, secând grupul articolului mai repede", -- The D6
	[107] = "Apar 2 corpuri", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" a ", " 2 ", "familiar", "{{CR}}familiari"}, -- Monster Manual
	[124] = {" a ", " 2 ", "efect", "{{CR}}efecte"}, -- Dead Sea Scrolls
	[136] = {" a ", " 2 ", "Isaac", "{{CR}}Isaac"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, " Heart", " {{CR}}Inimi"}, -- Prayer Card (should this just say +1 health...)
	[158] = {" a ", " 2 ", " Heart", " {{CR}}Inimi", "rune", "{{CR}}rune", "card", "{{CR}}cărți"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Realege de 2 ori, ajutând cu progresul transformării dar secând grupul articolului mai repede", -- D100
	[284] = "Realege de 2 ori, ajutând cu progresul transformării dar secând grupul articolului mai repede", -- D4
	[286] = "Îl folosește de 2 ori", -- Blank Card
	[287] = {"unu", "doi"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Împingere mărită", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Îl folosește de 2 ori", -- Placebo
	[349] = "Încearcă șansa de 2 ori", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Dublează", "Triplează"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" a ", " 2 ", "barrel", "{{CR}}butoaie", "barrel", "{{CR}}butoaie"}, -- Mine Crafter
	[439] = {" a ", " 2 ", "trinket", "{{CR}}trinkets"}, -- Mom's Box
	[476] = {" a ", " 2 ", "pickup", "{{CR}}lucruri"}, -- D1
	[477] = "Activează fiecare articol activ absorbat de 2 ori", -- Void
	[480] = {"Dublează", "Înmulțește x4"}, -- Compost
	[481] = "Două statistici ridicate și două scăzute", -- Dataminer
	[482] = "Schimbă personajul de 2 ori și șterge 2 articole", -- Clicker
	[485] = "25% șansă să cvadruple, 25% șansă să dubleze și șă șteargă originalele, 50% șansă să șteargă", -- Crooked Penny
	[486] = {"efecte", "{{CR}}efecte {{BlinkYellowGreen}}de 2 ori"}, -- Dull Razor
	[488] = "Activează de 2 ori, dar doar al doilea efect rămâne", -- Metronome
	[489] = {" a ", " 2 ", "efect", "{{CR}}efecte"}, -- D Infinity
	[504] = {" a ", " 2 ", "turetă", "{{CR}}turete"}, -- Brown Nugget
	[507] = "Folosește de 2 ori", -- Sharp Straw
	[510] = {" a ", " 2 ", "versiune", "{{CR}}versiuni"}, -- Delirious
	[516] = {" a ", " 2 ", "Stropitoare", "{{CR}}Stropitori"}, -- Sprinkler
	[521] = {"unu", "doi", "obiect", "{{CR}}articole"}, -- Coupon
	[523] = "Schimbă conținutul cutiei cu lucuri din cameră", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Oprește călcările pentru 2 camere (sau valuri Boss Rush)", -- Broken Shovel
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Niciun efect pentru {1}",
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
	{"1", "Bănuț Înghițit", "{{Coin}} Când primești daune, apare {{ColorGreen}}1{{CR}} bănuț"}, -- Swallowed Penny
	{"2", "Rahat Pietrificat", "50% șansă să primești recompense din rahat"}, -- Petrified Poop
	{"3", "Baterie AAA", "{{Battery}} {{ColorRed}}-1{{CR}} Încărcare necesară pentru articolele active"}, -- AAA Battery
	{"4", "Telecomandă Stricată", "{{Collectible44}} Folosirea unui articol activ îl teleportează pe Isaac într-o cameră aleatorie"}, -- Broken Remote
	{"5", "Inimă Mov", "De 2 ori mai multe șanse să apară inamici campioni"}, -- Purple Heart
	{"6", "Magnet Stricat", "{{Coin}} Atrage bănuții către Isaac"}, -- Broken Magnet
	{"7", "Mărgea de Rozariu", "{{AngelChance}} {{ColorGreen}}+50%{{CR}} șansă la Camera Îngerului#{{Collectible33}} Șansă mai mare să găsești Biblia în {{Shop}} Magazine și {{Library}} Biblioteci"}, -- Rosary Bead
	{"8", "Cartuș", "{{Timer}} 5% șansă când ești vătămat să primești pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar provoacă 40 daune de contact pe secundă#{{HealingRed}} Omorând 2 inamici vindecă o jumătate de inimă#{{Fear}} Îi sperie pe toți inamicii din cameră"}, -- Cartridge
	{"9", "Vierme Pulsatoriu", "Lacrimile lui Isaac pulsează#Afectează zona de lovire a lacrimilor"}, -- Pulse Worm
	{"10", "Vierme Șerpuitor", "↑ {{Tears}} {{ColorGreen}}+0.3{{CR}} Lacrimi#Lacrimile lui Isaac se mișcă în valuri"}, -- Wiggle Worm
	{"11", "Vierme Inel", "Lacrimile lui Isaac se mișcă în spirale cu viteză mare"}, -- Ring Worm
	{"12", "Vierme Plat", "Lacrimi cu 50% mai late#Crește reculul"}, -- Flat Worm
	{"13", "Credit de Magazin", "{{Shop}} Îi permite lui Isaac să ia 1 obiect din Magazin gratuit"}, -- Store Credit
	{"14", "Calus", "Imunitate la creep și la țepii de pe podea"}, -- Callus
	{"15", "Piatră Norocoasă", "{{Coin}} Distrugerea pietrelor generează bănuți"}, -- Lucky Rock
	{"16", "Unghia Mamei", "Piciorul Mamei lovește un loc aleator din cameră la fiecare 60 de secunde"}, -- Mom's Toenail
	{"17", "Ruj Negru", "{{BlackHeart}} {{ColorGreen}}+10%{{CR}} șansă ca Inimile Suflet aleatorii să apară ca Inimi Negre"}, -- Black Lipstick
	{"18", "Broșură Biblică", "{{EternalHeart}} {{ColorGreen}}+3%{{CR}} șansă pentru Inimi Eterne"}, -- Bible Tract
	{"19", "Agrafă", "{{GoldenChest}} Cuferele aurii pot fi deschise gratuit"}, -- Paper Clip
	{"20", "Lăbuța Maimuței", "{{BlackHeart}} Generează {{ColorGreen}}1{{CR}} Inimă Neagră când viața lui Isaac este redusă la jumătate de inimă#{{Warning}} Dispare după ce generează {{ColorGreen}}3{{CR}} Inimi Negre"}, -- Monkey Paw
	{"21", "Hârtie Misterioasă", "Oferă aleator efectul unuia dintre:#{{Collectible327}} Polaroidul#{{Collectible328}} Negativul#{{Trinket48}} O Pagină Lipsă#{{Trinket23}} Poster Dispărut"}, -- Mysterious Paper
	{"22", "Coada Demonului", "{{Heart}} Reduce rata de apariție a inimilor la 20%#{{BlackHeart}} Toate pickup-urile de inimă devin Inimi Negre#{{Key}} Crește șansa de a cădea chei"}, -- Daemon's Tail
	{"23", "Poster Lipsă", "{{Player10}} Reînvii ca Pierdutul (The Lost) la moarte"}, -- Missing Poster
	{"24", "Bănuț Murdar", "{{Coin}} {{ColorGreen}}+20%{{CR}} șansă ca bănuții să apară din rahat#Colectarea bănuților îl face pe Isaac să se bâlbâie"}, -- Butt Penny
	{"25", "Bomboană Misterioasă", "Generează un rahat la fiecare 30 de secunde"}, -- Mysterious Candy
	{"26", "Ancylostoma", "↑ {{Range}} {{ColorGreen}}+10{{CR}} Distanță#Lacrimile lui Isaac se mișcă în modele unghiulare"}, -- Hook Worm
	{"27", "Vierme Bici", "↑ {{Shotspeed}} {{ColorGreen}}+0.5{{CR}} Viteza lacrimilor"}, -- Whip Worm
	{"28", "Ankh Stricat", "{{Player4}} {{ColorGreen}}22%{{CR}} șansă să reînvii ca ??? (Blue Baby) la moarte"}, -- Broken Ankh
	{"29", "Cap de Pește", "Primind daune apare 1 muscă albastră"}, -- Fish Head
	{"30", "Ochi Roz", "{{Poison}} 10% șansă să tragi lacrimi otrăvite#{{Luck}} 100% șansă la 18 noroc"}, -- Pinky Eye
	{"31", "Știft", "10% șansă să tragi lacrimi pătrunzătoare și spectrale#{{Luck}} 100% șansă la 18 noroc"}, -- Push Pin
	{"32", "Ciupercă Pălarie", "25% șansă pentru un efect aleatoriu de ciupercă pe cameră#Poate dezvălui camere speciale pe harta mică"}, -- Liberty Cap
	{"33", "Cordonul Ombilical", "{{Timer}} Apare {{Collectible100}} Micul Steven pentru cameră când viața lui Isaac scade la jumătate de inimă"}, -- Umbilical Cord
	{"34", "Inima Copilului", "{{UnknownHeart}} 10% șansă ca recompensa la curățarea camerei să fie o inimă aleatorie#{{Heart}} Șansă pentru o inimă bonus din cufere, pietre colorate și mașini distruse"}, -- Child's Heart
	{"35", "Coarne Curbe", "↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune"}, -- Curved Horn
	{"36", "Cheie Ruginită", "{{Key}} 10% șansă ca recompensa la curățarea camerei să fie o cheie#{{Key}} Șansă pentru o cheie bonus din cufere, pietre colorate și mașini distruse"}, -- Rusted Key
	{"37", "Copita Caprei", "↑ {{Speed}} {{ColorGreen}}+0.15{{CR}} Viteză"}, -- Goat Hoof
	{"38", "Perla Mamei", "{{ColorGreen}}+10%{{CR}} șansă ca inimile aruncate să fie {{SoulHeart}} Inimi Suflet, {{BlackHeart}} Inimi Negre sau {{EmptyBoneHeart}} Inimi Os"}, -- Mom's Pearl
	{"39", "Cancer", "↑ {{Tears}} {{ColorRed}}-2{{CR}} Întârziere a Lacrimilor"}, -- Cancer
	{"40", "Petic Roșu", "{{Timer}} După rănire ai {{ColorGreen}}20%{{CR}} șanse să primești ↑ {{Damage}} {{ColorGreen}}+1.8{{CR}} Daune pentru cameră#{{Luck}} {{ColorGreen}}100%{{CR}} șansă la {{ColorGreen}}8{{CR}} noroc"}, -- Red Patch
	{"41", "Bețișor de Chibrit", "{{Bomb}} {{ColorGreen}}10%{{CR}} șansă ca recompensa la curățarea camerei să fie o bombă#{{Bomb}} Șansă pentru o bombă bonus din cufere, pietre colorate și mașini distruse#{{Warning}} Elimină {{Trinket53}} Tick"}, -- Match Stick
	{"42", "Deget Norocos", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc#{{ColorGreen}}+8%{{CR}} șansă la recompensa curățării camerei#Pickup-uri extra din cufere, pietre colorate și mașini distruse"}, -- Lucky Toe
	{"43", "Craniu Blestemat", "Când ești rănit până la jumătate de inimă sau mai puțin, Isaac este teleportat într-o cameră aleatorie"}, -- Cursed Skull
	{"44", "Capac de Siguranță", "{{Pill}} 10% șansă ca recompensa la curățarea camerei să fie o pastilă#{{Pill}} Șansă pentru o pastilă bonus din cufere, pietre colorate și mașini distruse"}, -- Safety Cap
	{"45", "As de Pică", "{{Card}} 10% șansă ca recompensa la curățarea camerei să fie o carte#{{Card}} Șansă pentru o carte bonus din cufere, pietre colorate și mașini distruse"}, -- Ace of Spades
	{"46", "Furculița lui Isaac", "{{HealingRed}} Curățarea unei camere are 10% șansă să vindece jumătate de inimă#{{Luck}} 100% șansă la 18 Noroc"}, -- Isaac's Fork
	{"47", "", "<Item does not exist>"},
	{"48", "O Pagină Lipsă", "Primirea daunelor are 5% șansă să provoace 40 daune tuturor inamicilor din cameră"}, -- A Missing Page
	{"49", "Bănuț Însângerat", "{{HalfHeart}} Colectarea unui bănuț are 50% șansă să genereze o jumătate de Inimă Roșie"}, -- Bloody Penny
	{"50", "Bănuț Ars", "{{Bomb}} Colectarea unui bănuț are 50% șansă să genereze o bombă"}, -- Burnt Penny
	{"51", "Bănuț Plat", "{{Key}} Colectarea unui bănuț are 50% șansă să genereze o cheie"}, -- Flat Penny
	{"52", "Bănuț Contrafăcut", "{{Coin}} Colectarea unui bănuț are 50% șansă să adauge încă un bănuț"}, -- Counterfeit Penny
	{"53", "Căpușă", "{{HealingRed}} Vindecă 1 inimă la intrarea în {{BossRoom}} Camera Bossului#{{ColorRed}}-15%{{CR}} viață boss#{{Warning}} Odată luat, nu poate fi scos#Se poate îndepărta doar cu {{Trinket41}} Bețișor de Chibrit sau înghițind"}, -- Tick
	{"54", "Capul lui Isaac", "Familiar cu lacrimi pătrunzătoare#Provoacă 3.5 daune pe lacrimă"}, -- Isaac's Head
	{"55", "Credința lui Maggy", "{{EternalHeart}} Intrarea pe un etaj nou oferă {{ColorGreen}}+1{{CR}} Inimă Eternală"}, -- Maggy's Faith
	{"56", "Limba lui Iuda", "{{DevilRoom}} Reduce prețurile tuturor pacturilor cu diavolul la 1 container de inimă#Nu reduce prețurile de 3 Inimi Suflet"}, -- Judas' Tongue
	{"57", "Sufletul lui ???", "Familiar care sare prin cameră#Trage în aceeași direcție ca Isaac#Provoacă 3.5 daune pe lacrimă"}, -- ???'s Soul
	{"58", "Broască lui Samson", "{{Timer}} Omorând un inamic are 6.66% șansă să ofere ↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} pentru cameră#{{Luck}} 100% șansă la 10 noroc"}, -- Samson's Lock
	{"59", "Ochiul lui Cain", "Intrarea pe un etaj nou are 25% șansă să dezvăluie icoane pe hartă#{{Luck}} 100% șansă la 3 noroc"}, -- Cain's Eye
	{"60", "Piciorul Păsării Eve", "{{Collectible117}} Omorând un inamic are 5% șansă să spawneze o Pasăre Moartă#{{Luck}} 100% șansă la 8 noroc"}, -- Eve's Bird Foot
	{"61", "Mâna Stângă", "{{RedChest}} Transformă toate cuferele în cufere roșii"}, -- The Left Hand
	{"62", "Piatră Strălucitoare", "Pietrele din crawlspace și pietrele colorate clipesc la fiecare 10 secunde"}, -- Shiny Rock
	{"63", "Foarfece de Siguranță", "{{Bomb}} Transformă Bombe Troll în pickup‑uri de bombă"}, -- Safety Scissors
	{"64", "Vierme Curcubeu", "Oferă un efect aleator de vierme la fiecare 3 secunde"}, -- Rainbow Worm
	{"65", "Tenie", "↑ {{Range}} {{ColorGreen}}x2{{CR}} Distanță#↓ {{ColorGreen}}x0.5{{CR}} Înălțime lacrimă"}, -- Tape Worm
	{"66", "Râmă Leneșă", "↑ {{Range}} {{ColorGreen}}+4{{CR}} Distanță#↑ {{ColorGreen}}+2{{CR}} Înălțime lacrimă#↓ {{Shotspeed}} {{ColorRed}}-0.4{{CR}} Viteză lacrimă"}, -- Lazy Worm
	{"67", "Zar Spart", "Primirea daunelor are 50% șansă să declanșeze unul dintre aceste efecte:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	{"68", "Super Magnet", "Isaac atrage pickup‑urile și inamicii"}, -- Super Magnet
	{"69", "Polaroid Estompat", "Camuflează aleator pe Isaac#{{Confusion}} Confuză inamicii"}, -- Faded Polaroid
	{"70", "Păduche", "Ocazional generează un păianjen albastru în camere ostile"}, -- Louse
	{"71", "Vezica lui Bob", "Bombele lui Isaac lasă un fluid dăunător"}, -- Bob's Bladder
	{"72", "Baterie Ceas", "{{Battery}} 6.66% șansă ca recompensa la curățarea camerei să fie o baterie#{{Battery}} {{ColorGreen}}+10%{{CR}} șansă ca pickup‑urile aleatoare să fie o baterie#{{Battery}} 5% șansă să adauge 1 încărcare itemului activ deținut la curățarea camerei"}, -- Watch Battery
	{"73", "Cap de Detonare", "{{Bomb}} 10% șansă ca bombele explozive să lase o bombă pickup"}, -- Blasting Cap
	{"74", "Detector de Beci", "{{LadderRoom}} {{ColorGreen}}+0.5%{{CR}} șansă să dezvăluie un beci când spargi o piatră"}, -- Stud Finder
	{"75", "Eroare", "Oferă un efect de bibelou aleator la fiecare cameră"}, -- Error
	{"76", "Jeton de Poker", "↑ {{ColorGreen}}50%{{CR}} șansă ca cuferele să genereze pickup‑uri în plus#↓ {{ColorRed}}50%{{CR}} șansă ca cuferele să conțină o singură muscă"}, -- Poker Chip
	{"77", "Bășică", "Crește reculul"}, -- Blister
	{"78", "Mâna a Doua", "Efectele de status aplicate inamicilor durează de două ori mai mult"}, -- Second Hand
	{"79", "Fără Nume Nesfârșit", "Folosirea unei rune {{Rune}}, a unei cărți {{Card}} sau a unei pastile {{Pill}} are 25% șansă să genereze o copie a acelei rune/cărți/pastile"}, -- Endless Nameless
	{"80", "Pana Neagră", "↑ {{Damage}} {{ColorGreen}}+0.2{{CR}} Daune pentru fiecare item \"Evil up\" ținut"}, -- Black Feather
	{"81", "Furie Oarbă", "Frame‑urile de invincibilitate după primirea daunelor durează de două ori mai mult"}, -- Blind Rage
	{"82", "Potcoavă Aurie", "{{TreasureRoom}} Camerele Comorilor viitoare au {{ColorGreen}}+15%{{CR}} șansă să îi permită lui Isaac să aleagă între două iteme"}, -- Golden Horse Shoe
	{"83", "Cheia Magazinului", "{{Shop}} Îi permite lui Isaac să deschidă Magazine gratuit"}, -- Store Key
	{"84", "Coasta Lăcomiei", "{{Coin}} {{ColorGreen}}+5%{{CR}} bănuți în plus și mai puține inimi din recompensele la curățarea camerei#Greed și Super Greed nu mai apar în {{Shop}} Magazine sau {{SecretRoom}} Camere Secrete"}, -- Rib of Greed
	{"85", "Karma", "{{DonationMachine}} Folosirea unei Mașini de Donații are 33% șansă să:#{{HealingRed}} Vindecă 1 inimă (40%)#{{Coin}} Oferă 1 bănuț (40%)#{{Luck}} Oferă {{ColorGreen}}+1{{CR}} Noroc (15%)#{{Beggar}} Generează un Cerșetor (5%)"}, -- Karma
	{"86", "Larvă Mică", "Distrugerea rahatului generează 1 muscă albastră"}, -- Lil Larva
	{"87", "Medalionul Mamei", "{{HealingRed}} Folosirea unei chei vindecă jumătate de inimă#{{Heart}} Transformă jumătate de inimă în inimă întreagă"}, -- Mom's Locket
	{"88", "NU!", "Previne apariția itemelor active"}, -- NO!
	{"89", "Lesa Copilului", "Familiarii rămân mai aproape de Isaac"}, -- Child Leash
	{"90", "Căciulă Maro", "Rahatul explodează și provoacă 100 daune când este distrus"}, -- Brown Cap
	{"91", "Meconiu", "33% șansă ca Rahaturile Negre să apară#{{BlackHeart}} Distrugerea Rahatului Negru are 5% șansă să genereze o Inimă Neagră"}, -- Meconium
	{"92", "Coroană Crăpată", "↑ {{Tears}} {{ColorGreen}}x0.8{{CR}} Întârziere lacrimă#↑ {{ColorGreen}}x1.33{{CR}} Multiplicator de statistici pentru statisticile care sunt peste 1 {{Speed}} viteză, 3.5 {{Damage}} daune, 23.75 {{Range}} Distanță, 1 {{Shotspeed}} viteză de proiectil"}, -- Cracked Crown
	{"93", "Scutec Folosit", "15% șansă pe cameră ca toți inamicii muștei să devină prietenoși"}, -- Used Diaper
	{"94", "Coada de Pește", "Dublează toate aparițiile de muște/păianjeni albaștri"}, -- Fish Tail
	{"95", "Dintele Negru", "{{Poison}} 3% șansă să tragi lacrimi otrăvitoare"}, -- Black Tooth
	{"96", "Vierme Ouroboros", "↑ {{Range}} {{ColorGreen}}+4{{CR}} Distanță#↑ {{ColorGreen}}+2{{CR}} Înălțime lacrimă#Lacrimi spectrale#Șansă de lacrimi homing#{{Luck}} 100% șansă la 9 noroc#Lacrimi lui Isaac se mișcă rapid în spirală"}, -- Ouroboros Worm
	{"97", "Amigdală", "Primirea de daune de 12-20 ori generează un familiar proiectil care blochează#Dispare după ce generează 2 Familiari"}, -- Tonsil
	{"98", "Goblinul Nasului", "10% șansă să tragi o lacrimă lipicioasă#50% șansă ca aceasta să fie homing#{{Damage}} Bohoscurile provoacă daune egale cu daunele lui Isaac o dată pe secundă#Bohoscurile rămân lipite 60 de secunde"}, -- Nose Goblin
	{"99", "Minge Super", "10% șansă să tragi lacrimi care ricoșează"}, -- Super Ball
	{"100", "Bec Vibrant", "Ținând un item activ complet încărcat oferă:#↑ {{Speed}} {{ColorGreen}}+0.25{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.2{{CR}} Lacrimi#↑ {{Damage}} {{ColorGreen}}+0.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+0.75{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.1{{CR}} Viteză lacrimilor#↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc"}, -- Vibrant Bulb
	{"101", "Bec Stins", "Ținând un item activ complet descărcat oferă:#↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Lacrimi#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+1.5{{CR}} Distanță#↑ {{Shotspeed}} {{ColorGreen}}+0.3{{CR}} Viteză lacrimilor#↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc"}, -- Dim Bulb
	{"102", "Carte Fragmentată", "{{SecretRoom}} {{ColorGreen}}+1{{CR}} cameră secretă suplimentară pe etaj cât timp este ținut"}, -- Fragmented Card
	{"103", "Egalitate!", "Transformă obiectele individuale în obiecte duble atunci când numărul de {{Coin}} bănuți, {{Bomb}} bombe și {{Key}} chei ale lui Isaac sunt egale"}, -- Equality!
	{"104", "Osul Dorinței", "2% șansă să se distrugă și să creeze un obiect pe piedestal când este lovit"}, -- Wish Bone
	{"105", "Prânz la Pachet", "{{Collectible22}} 2% șansă să se distrugă și să genereze Prânzul când este lovit"}, -- Bag Lunch
	{"106", "Dop Pierdut", "Crește raza de acțiune a lichidului prietenos"}, -- Lost Cork
	{"107", "Inima Corbului", "Primirea daunelor consumă mai întâi Inimile Roșii înaintea Inimilor Suflet/Negre#Acest tip de daună roșie nu reduce șansele pentru Camera Demon/Înger"}, -- Crow Heart
	{"108", "Nucă", "Atingerea de 1-9 explozii distruge brelocul și lasă aleator:#{{UnknownHeart}} o inimă, {{Coin}} un bănuț, {{Key}} o cheie sau {{Trinket}} un bibelou#Nu este necesară vătămarea pentru a se întâmpla"}, -- Walnut
	{"109", "Bandă Adezivă", "Familiarii rămân fixați într-un loc și nu se pot mișca"}, -- Duct Tape
	{"110", "Bănuț de Argint", "{{Shop}} Magazinele apar în Womb"}, -- Silver Dollar
	{"111", "Coroană Sângeroasă", "{{TreasureRoom}} Camerele de comoară apar în Womb"}, -- Bloody Crown
	{"112", "Plătește pentru a Câștiga", "{{RestockMachine}} Cutii de reaprovizionare apar întotdeauna în {{TreasureRoom}} Camerele de comoară"}, -- Pay To Win
	{"113", "Lăcustă a Războiului", "Intrarea într-o cameră ostilă generează o muscă de atac explozivă#Musca provoacă daune de {{ColorGreen}}2x{{CR}} cele ale lui Isaac plus daune de explozie"}, -- Locust of War
	{"114", "Lăcustă a Ciumei", "{{Poison}} Intrarea într-o cameră ostilă generează o muscă de atac otrăvitoare#Musca provoacă daune de {{ColorGreen}}2x{{CR}} cele ale lui Isaac"}, -- Locust of Pestilence
	{"115", "Lăcustă a Foametei", "{{Slow}} Intrarea într-o cameră ostilă generează o muscă de atac încetinitoare#Musca provoacă daune de {{ColorGreen}}2x{{CR}} cele ale lui Isaac"}, -- Locust of Famine
	{"116", "Lăcustă a Morții", "Intrarea într-o cameră ostilă generează o muscă de atac#Musca provoacă daune de {{ColorGreen}}4x{{CR}} cele ale lui Isaac"}, -- Locust of Death
	{"117", "Lăcustă a Cuceririi", "Intrarea într-o cameră ostilă generează 1-4 muște de atac#Fiecare muscă provoacă daune de {{ColorGreen}}2x{{CR}} cele ale lui Isaac"}, -- Locust of Conquest
	{"118", "Aripă de liliac", "{{Timer}} Omorând un inamic are 5% șansă să ofere zbor pentru cameră"}, -- Bat Wing
	{"119", "Celule Stem", "{{HealingRed}} Intrarea pe un etaj nou vindecă jumătate de inimă"}, -- Stem Cell
	{"120", "Ace de păr", "{{Battery}} Intrarea într-o cameră Boss necurățată reîncarcă complet itemele active"}, -- Hairpin
	{"121", "Cruce de Lemn", "{{Collectible313}} Oferă un scut sfânt care previne daunele o dată pe etaj"}, -- Wooden Cross
	{"122", "Unt!", "Folosirea unui item activ îl plasează pe un piedestal pe podea#Primirea daunelor are 2% șansă ca unul dintre itemele pasive ale lui Isaac să cadă"}, -- Butter!
	{"123", "Pana Filigranată", "Boșii Înger dau iteme de Înger în loc de Părți de Cheie"}, -- Filigree Feather
	{"124", "Opritor de Ușă", "Ultima ușă folosită rămâne deschisă"}, -- Door Stop
	{"125", "Cablu de Extensie", "Conectează toate familiile cu raze de electricitate#Raza provoacă 6 daune"}, -- Extension Cord
	{"126", "Bănuț Putrezit", "Colectarea unui bănuț generează o muscă albastră"}, -- Rotten Penny
	{"127", "Îndoitorul de Bebeluși", "Oferă tuturor familiilor lacrimi ghidate"}, -- Baby-Bender
{"128", "Os de Deget", "{{EmptyBoneHeart}} După rănire are 2% șansă să ofere un Os de Inimă"}, -- Finger Bone
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - Nebunul", "Isaac este teleportat în prima cameră a etajului"}, -- 0 - The Fool
	{"2", "I - Magicianul", "{{Timer}} Lacrimi teleghidate pe durata camerei"}, -- I - The Magician
	{"3", "II - Marea Preoteasă", "Piciorul mamei cade pe inamici#Piciorul cade pe Isaac dacă nu sunt inamici"}, -- II - The High Priestess
	{"4", "III - Împărăteasa", "{{Timer}} Pe durata camerei:#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+1.5{{CR}} Daune"}, -- III - The Empress
	{"5", "IV - Împăratul", "{{BossRoom}} Isaac este teleportat în Camera Șefului"}, -- IV - The Emperor
	{"6", "V - Marele Preot", "{{SoulHeart}} Oferă 2 Inimi Suflet"}, -- V - The Hierophant
	{"7", "VI - Îndrăgostiții", "{{Heart}} Oferă 2 Inmi Roșii"}, -- VI - The Lovers
	{"8", "VII - Faetonul", "{{Timer}} Pentru 6 secude:#↑ {{Speed}} {{ColorGreen}}+0.28{{CR}} Viteză#Invincibilitate#Isaac nu poate trage, dar provoacă 40 de daune de contact pe secundă"}, -- VII - The Chariot
	{"9", "VIII - Dreptate", "Oferă aleatoriu {{UnknownHeart}} o inimă, {{Coin}} un bănuț, {{Bomb}} o bombă și {{Key}} o cheie"}, -- VIII - Justice
	{"10", "IX - Eremitul", "{{Shop}} Isaac este teleportat la magazin"}, -- IX - The Hermit
	{"11", "X - Roata norocului", "Oferă o {{Slotmachine}} Păcănea sau {{FortuneTeller}} Mașina Viitorului"}, -- X - Wheel of Fortune
	{"12", "XI - Forța", "{{Timer}} Pe durata camerei:#↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață#↑ {{Speed}} {{ColorGreen}}+0.3{{CR}} Viteză#↑ {{Damage}} {{ColorGreen}}+0.3{{CR}} Daune#↑ {{Damage}} {{ColorGreen}}x1.5{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+5.25{{CR}} Distanță#↑ {{ColorGreen}}+0.5{{CR}} Înălțimea lacrimilor"}, -- XI - Strength
	{"13", "XII - Spânzuratul", "{{Timer}} Zbor pe durata camerei"}, -- XII - The Hanged Man
	{"14", "XIII - Moartea", "Provoacă 40 de daune tuturor inamicilor din cameră"}, -- XIII - Death
	{"15", "XIV - Echilibrul", "{{DonationMachine}} Oferă un Donator de Sânge"}, -- XIV - Temperance
	{"16", "XV - Diavolul", "{{Timer}} Pe durata camerei:#↑ {{Damage}} {{ColorGreen}}+2{{CR}} Daune"}, -- XV - The Devil
	{"17", "XVI - Turnul", "Oferă 6 Bombe Troll"}, -- XVI - The Tower
	{"18", "XVII - Steaua", "{{TreasureRoom}} Isaac este teleportat în Camera Comorilor"}, -- XVII - The Stars
	{"19", "XVIII - Luna", "{{SecretRoom}} Isaac este teleporat în Camera Secretă"}, -- XVIII - The Moon
	{"20", "XIX - Soarele", "{{HealingRed}} Vindecă inimile#Provoacă 100 de daune tuturor inamicilor din cameră#{{Timer}} Dezvăluie harta pe durata etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"}, -- XIX - The Sun
	{"21", "XX - Judecata", "Oferă un cerșetor sau un cerșetor diavol#2% șansă pentru un cerșetor special"}, -- XX - Judgement
	{"22", "XXI - Lumea", "{{Timer}} Dezvăluie harta pe durata etajului (cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"}, -- XXI - The World
	{"23", "2 de Treflă", "{{Bomb}} Dublează numărul de bombe pe care le are Isaac"}, -- 2 of Clubs
	{"24", "2 de Romb", "{{Coin}} Dublează numărul de bănuți pe care îi are Isaac"}, -- 2 of Diamonds
	{"25", "2 de Pică", "{{Key}} Dublează numărul de chei pe care le are Isaac"}, -- 2 of Spades
	{"26", "2 de Inimă Roșie", "{{HealingRed}} Dublează numărul de Inimi Roșii ale lui Isaac {{ColorSilver}}(nu containere){{CR}}"}, -- 2 of Hearts
	{"27", "Asul de Treflă", "{{Bomb}} Transformă toate pickup-urile în bombe aleatorii"}, -- Ace of Clubs
	{"28", "Asul de Romb", "{{Coin}} Transformă toate pickup-urile în bănuți aleatorii"}, -- Ace of Diamonds
	{"29", "Asul de Pică", "{{Key}} Transformă toate pickup-urile în chei aleatorii"}, -- Ace of Spades
	{"30", "Asul de Inimă Roșie", "{{UnknownHeart}} Transformă toate pickup-urile în inimi aleatorii"}, -- Ace of Hearts
	{"31", "Joker", "{{AngelDevilChance}} Îl teleportează pe Isaac în Camera Diavolului sau Camera Îngerului"}, -- Joker
	{"32", "Hagalaz", "Distruge toate pietrele și inamicii de piatră din cameră"}, -- Hagalaz
	{"33", "Jera", "Duplică toate pickup-urile din cameră"}, -- Jera
	{"34", "Ehwaz", "Oferă o trapă către etajul următor#{{LadderRoom}} Oferă un beci dacă este folosită pe o bucată de decor (iarbă, pietre mici, hârtie, gemuri, etc.)"}, -- Ehwaz
	{"35", "Dagaz", "{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{CurseCursed}} Elimină toate blestemele pentru etaj"}, -- Dagaz
	{"36", "Ansuz", "{{Timer}} Efect complet de mapare pentru etaj"}, -- Ansuz
	{"37", "Perthro", "Schimbă toate itemele de pe piedestal din cameră"}, -- Perthro
	{"38", "Berkano", "Generează 3 păianjeni albaștri și 3 muște albastre"}, -- Berkano
	{"39", "Algiz", "{{Timer}} Îl face pe Isaac invincibil pentru 30 de secunde"}, -- Algiz
	{"40", "Rună Goală", "Activează un efect aleatoriu de rună#25% șansă să se dubleze când este folosită"}, -- Blank Rune
	{"41", "Rună Neagră", "Provoacă 40 daune tuturor inamicilor#Transformă toate itemele de pe piedestal în creșteri aleatorii de statistici#Transformă toate pickup-urile din cameră în muște albastre"}, -- Black Rune
	{"42", "Chaos Card", "Aruncă cardul în direcția în care se mișcă Isaac#Ucide instant orice inamic atins (exceptând Delirium)"}, -- Chaos Card
	{"43", "Card de Credit", "Face toate itemele și pickup-urile dintr-un {{Shop}} Magazin sau o {{DevilRoom}} Cameră a Diavolului gratuite"}, -- Credit Card
	{"44", "Card de Reguli", "Afișează sfaturi „utile” pentru utilizare"}, -- Rules Card
	{"45", "Un Card Contra Umanității", "Umple întreaga cameră cu rahat"}, -- A Card Against Humanity
	{"46", "Regele Sinucigaș", "Îl omoară instant pe Isaac și generează 10 pickup-uri sau iteme pe podea#Itemele generate vor folosi pool-ul de iteme al camerei curente"}, -- Suicide King
	{"47", "Card de Evadare", "Deschide toate ușile din cameră"}, -- Get Out Of Jail Free Card
	{"48", "? Card", "Folosește itemul activ al lui Isaac gratuit"}, -- ? Card
	{"49", "Ciob de Zar", "Schimbă toate itemele de pe piedestal și pickup-urile din cameră"}, -- Dice Shard
	{"50", "Contact de Urgență", "Două mâini ale Mamei coboară și prind fiecare câte un inamic"}, -- Emergency Contact
	{"51", "Carte Sfântă", "{{HolyMantle}} Oferă scutul Mantaua Sfântă pentru cameră (previne daunele o singură dată)#25% șansă să apară încă o Carte Sfântă"}, -- Holy Card
	{"52", "Creștere Uriașă", "{{Timer}} Oferă pentru cameră:#↑ {{Damage}} {{ColorGreen}}+7{{CR}} Daune#↑ {{Range}} {{ColorGreen}}+30{{CR}} Distanță#Crește mărimea#Permite lui Isaac să distrugă pietre trecând prin ele"}, -- Huge Growth
	{"53", "Rechemare Antică", "{{Card}} Generează 3 cărți aleatorii"}, -- Ancient Recall
	{"54", "Era Walk", "{{Timer}} Pe durata camerei:#↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză#↓ {{Shotspeed}} {{ColorRed}}-1{{CR}} Viteza lacrimilor#{{Slow}} Încetinește inamicii"}, -- Era Walk
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
	[9] = {"Generează {{ColorShinyPurple}}2{{CR}} inimi aleatorii {{UnknownHeart}}, {{Coin}} bănuți, {{Bomb}} bombe și {{Key}} chei"}, -- VIII - Justice
	[11] = {" a ", " 2 ", "Păcănea", "{{CR}}Păcănea", "Mașina Viitorului (Fortune)", "{{CR}}Mașina Viitorului (Fortune)"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" a ", " 2 ", "Mașină", " {{CR}}Mașini", "Cerșetor Diavol", "{{CR}}Cerșetori Diavol"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" a ", " 2 ", "Cerșetor ", "{{CR}}Cerșetori ", "Cerșetor Diavol", "{{CR}}Cerșetori Diavol"}, -- XX - Judgement
	[23] = {"Dublează", "Cvadruplă"}, -- 2 of Clubs
	[24] = {"Dublează", "Cvadruplă"}, -- 2 of Diamonds
	[25] = {"Dublează", "Cvadruplă"}, -- 2 of Spades
	[26] = {"Dublează", "Cvadruplă"}, -- 2 of Hearts
	[33] = {"Dublează", "Cvadruplă"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Schimbă de două ori", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Activează 2 efecte de rună și încearcă să se dubleze de două ori", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Folosește-l de două ori", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Unidentified Pill"

EID.descriptions[languageCode].pills={
	{"0", "Gaz Toxic", "{{Poison}} Isaac eliberează un gaz care otrăvește inamicii din apropiere"}, -- Bad Gas
	{"1", "Trip Rău", "{{Warning}} Îi provoacă lui Isaac 1 inimă daune#Se transformă într-o pastilă 'Sănătate Completă' la 1 inimă sau mai puțin"}, -- Bad Trip
	{"2", "Inimi de Oțel", "{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet"}, -- Balls of Steel
	{"3", "Bombe = Chei", "Schimbă numărul de {{Bomb}} bombe cu numărul de {{Key}} chei ale lui Isaac"}, -- Bombs are Key
	{"4", "Diaree Explozivă", "Isaac generează rapid 5 bombe aprinse"}, -- Explosive Diarrhea
	{"5", "Sănătate Completă", "{{HealingRed}} Vindecă complet toate containerele de inimă"}, -- Full Health
	{"6", "Scade Viața", "↓ {{EmptyHeart}} {{ColorRed}}-1{{CR}} container de viață#Se transformă într-o pastilă 'Crește Viața' la 0 sau 1 container de inimă"}, -- Health Down
	{"7", "Crește Viața", "↑ {{EmptyHeart}} {{ColorGreen}}+1{{CR}} container de inimă gol"}, -- Health Upz
	{"8", "Am Găsit Pastile", "Fără efect"}, -- I Found Pills
	{"9", "Pubertate", "Fără efect#Consumul a 3 oferă transformarea Adult:#↑ {{Heart}} {{ColorGreen}}+1{{CR}} Viață"}, -- Puberty
	{"10", "Musca Drăguță", "{{ColorGreen}}+1{{CR}} Muscă orbital"}, -- Pretty Fly
	{"11", "Scade Distanța", "↓ {{Range}} {{ColorRed}}-2{{CR}} Distanță"}, -- Range Down
	{"12", "Crește Distanța", "↑ {{Range}} {{ColorGreen}}+2.5{{CR}} Distanță"}, -- Range Up
	{"13", "Scade Viteza", "↓ {{Speed}} {{ColorRed}}-0.12{{CR}} Viteză"}, -- Speed Down
	{"14", "Crește Viteza", "↑ {{Speed}} {{ColorGreen}}+0.15{{CR}} Viteză"}, -- Speed Up
	{"15", "Scade Rata Lacrimilor", "↓ {{Tears}} {{ColorRed}}-0.28{{CR}} Lacrimi"}, -- Tears Down
	{"16", "Crește Rata Lacrimilor", "↑ {{Tears}} {{ColorGreen}}+0.35{{CR}} Lacrimi"}, -- Tears Up
	{"17", "Scade Norocul", "↓ {{Luck}} {{ColorRed}}-1{{CR}} Noroc"}, -- Luck Down
	{"18", "Crește Norocul", "↑ {{Luck}} {{ColorGreen}}+1{{CR}} Noroc"}, -- Luck Up
	{"19", "Telepilule", "Îl teleportează pe Isaac într-o cameră aleatorie#{{ErrorRoom}} Șansă mică de teleport în camera I AM ERROR"}, -- Telepills
	{"20", "Energie 48h!", "{{Battery}} Reîncarcă complet itemul activ#{{Battery}} Generează 1-2 baterii"}, -- 48 Hour Energy!
	{"21", "Hematemeză", "{{Warning}} Epuizează toate containerele de inimă, păstrând una#{{Heart}} Generează 1-4 Inimi Roșii"}, -- Hematemesis
	{"22", "Paralizie", "Îl împiedică pe Isaac să se miște sau să tragă timp de 2 secunde"}, -- Paralysis
	{"23", "Pot vedea pentru totdeauna!", "{{SecretRoom}} Dezvăluie toate intrările către camerele secrete de pe etaj"}, -- I can see forever!
	{"24", "Feromoni", "{{Charm}} Farmecă toți inamicii din cameră"}, -- Pheromones
	{"25", "Amnezie", "{{CurseLost}} Ascunde harta pentru etaj"}, -- Amnesia
	{"26", "Petrecerea Lămâilor", "Generează o baltă mare pe podea care provoacă daune inamicilor"}, -- Lemon Party
	{"27", "Ești Vrăjitor?", "{{Timer}} Isaac trage diagonal timp de 30 de secunde"}, -- R U A Wizard?
	{"28", "Protecție!", "{{Timer}} Reduce toate daunele primite la jumătate de inimă pentru cameră"}, -- Percs!
	{"29", "Dependență!", "{{Timer}} Crește toate daunele primite la o inimă întreagă pentru cameră"}, -- Addicted!
	{"30", "Relaxă", "Isaac generează rahat în urma sa timp de 2 secunde"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Efectul Blestemului Labirint pentru etaj"}, -- ???
	{"32", "Te Mărește", "Crește mărimea lui Isaac#Nu îi afectează hitbox-ul"}, -- One makes you larger
	{"33", "Te Micșorează", "Reduce mărimea lui Isaac#De asemenea reduce hitbox-ul său"}, -- One makes you small
	{"34", "Infestat!", "Generează 1 păianjen albastru pentru fiecare rahat din cameră"}, -- Infested!
	{"35", "Infestat?", "Generează 1 păianjen albastru pentru fiecare inamic din cameră#Generează 1-3 păianjeni albaștri dacă nu sunt inamici în cameră"}, -- Infested?
	{"36", "Pastilă Putere!", "{{Timer}} Primești pentru 6.5 secunde:#Invincibilitate#Isaac nu poate trage dar provoacă 40 daune la contact pe secundă#{{HealingRed}} Omorârea a 2 inamici vindecă jumătate de inimă#{{Fear}} Înspăimântă toți inamicii din cameră"}, -- Power Pill!
	{"37", "Viziune Retro", "{{Timer}} Pixelează ecranul de 3 ori pe durata a 30 de secunde"}, -- Retro Vision
	{"38", "Prieteni Până la Sfârșit!", "Generează 3 muște albastre"}, -- Friends Till The End!
	{"39", "X‑Lax", "Generează o baltă alunecoasă"}, -- X-Lax
	{"40", "Ceva nu e în regulă...", "{{Slow}} Generează o baltă încetinitoare"}, -- Something's wrong...
	{"41", "Sunt Somnoros...", "{{Slow}} Încetinește toți inamicii din cameră"}, -- I'm Drowsy...
	{"42", "Sunt Entuziasmat!!", "Crește viteza tuturor inamicilor din cameră"}, -- I'm Excited!!
	{"43", "Înghite!", "{{Trinket}} Consumă brelocul ținut de Isaac și îi acordă efectele permanent"}, -- Gulp!
	{"44", "Horf!", "{{Collectible149}} Trage o lacrimă Ipecac"}, -- Horf!
	{"45", "Parcă merg pe soare!", "{{Timer}} Pentru 6 secunde:#Invincibilitate#Isaac nu poate trage (fără daune de contact)"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Generează ultima pastilă folosită înainte de Vurp!"}, -- Vurp!
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
	[4] = {"???", "Nu poate avea Inimi Roșii#{{SoulHeart}} Creșterile de viață oferă Inimi Suflet"},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Zbor#{{Collectible118}} Brimstone cu rază scurtă în loc de lacrimi"},
	[8] = {"Lazarus", "La moarte, reînvii ca Lazarus Risen cu 1 container de Inimă Roșie"},
	[9] = {"Eden", "Pornește cu statistici și iteme aleatorii la fiecare rulare"},
	[10] = {"The Lost", "Zbor#Lacrimi spectrale#{{Warning}} Fără viață#{{DevilRoom}} Poți lua un pact cu diavolul gratuit o dată pe cameră"},
	[11] = {"Lazarus Risen", "Statistici mărite și multiplicator de daune x1.2"},
	[12] = {"Dark Judas", "{{Damage}} multiplicator de daune x2#{{Player3}} Contorizat ca Judas pentru completări"},
	[13] = {"Lilith", "Nu poate trage lacrimi#{{Collectible360}} Incubus-ul ei trage în locul ei"},
	[14] = {"Keeper", "{{CoinHeart}} Se vindecă prin colectarea monedelor#Maximum 2 Inimi Monedă#Pickup-urile de inimă sunt transformate în muște albastre"},
	[15] = {"Apollyon", ""},
	[16] = {"The Forgotten", "Ai un atac corp-la-corp care poate fi încărcat și aruncat#{{BoneHeart}} Poți avea până la 6 Inimi Os#{{Player17}} Apasă {{ButtonRT}} pentru a comuta la The Soul#{{SoulHeart}} The Soul poate avea până la 6 Inimi Suflet/Negre și are zbor și lacrimi spectrale#The Soul este legat la o rază mică în jurul The Forgotten"},
	[17] = {"The Forgotten Soul", "Ai un atac corp-la-corp care poate fi încărcat și aruncat#{{BoneHeart}} Poți avea până la 6 Inimi Os#{{Player17}} Apasă {{ButtonRT}} pentru a comuta la The Soul#{{SoulHeart}} The Soul poate avea până la 6 Inimi Suflet/Negre și are zbor și lacrimi spectrale#The Soul este legat la o rază mică în jurul The Forgotten"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Next Sacrifice Room payout]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% șansă pentru 1 bănuț#{{Bomb}} 100% șansă pentru 1 bombă dacă boss-ul din B1 a fost bătut în mai puțin de 1 minut"},
	{"2", "", "{{Coin}} 50% șansă pentru 1 bănuț#{{Bomb}} 100% șansă pentru 1 bombă când ești pe B1 și ai învins boss-ul în mai puțin de 1 minut"},
	{"3", "", "{{AngelChance}} 67% șansă ca șansa pentru Camera Îngerului să crească"},
	{"4", "", "{{Chest}} 50% șansă pentru 1 cufăr"},
	{"5", "", "{{Coin}} 33% șansă pentru 3 bănuți#{{AngelChance}} 67% șansă pentru creșterea șansei la Camera Îngerului"},
	{"6", "", "{{AngelRoom}} 33% șansă de a-l teleporta pe Isaac în Camera Îngerului#{{DevilRoom}} În schimb, îl teleportează în Camera Diavolului dacă ușa acesteia a fost generată pe etajul curent#{{Chest}} 67% șansă pentru un cufăr aleatoriu"},
	{"7", "", "{{AngelRoom}} 33% șansă pentru 1 item aleatoriu din Camera Îngerului#{{SoulHeart}} 67% șansă pentru 1 Inimă Suflet"},
	{"8", "", "100% șansă pentru 7 Bombe Troll"},
	{"9", "", "100% șansă să apară \"Uriel\""},
	{"10", "", "{{SoulHeart}} 50% șansă pentru 7 Inimi Suflet#{{Coin}} 50% șansă pentru 30 bănuți"},
	{"11", "", "100% șansă să apară \"Gabriel\""},
	{"12", "", "50% șansă de a-l teleporta pe Isaac în \"Dark Room\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Dice Room effects]"

EID.descriptions[languageCode].dice={
	{"1", "", "Schimbă toate itemele lui Isaac cu iteme aleatorii din piscina etajului din care provin"},
	{"2", "", "Schimbă toate pickup-urile din cameră"},
	{"3", "", "Schimbă toate pickup-urile și trinket-urile de pe întregul etaj#Nu afectează {{AngelDevilChance}} Camera Diavolului/Îngerului sau spațiile {{LadderRoom}}"},
	{"4", "", "Schimbă toate itemele de pe piedestal de pe etaj#Nu afectează {{AngelDevilChance}} Camera Diavolului/Îngerului sau spațiile {{LadderRoom}}"},
	{"5", "", "Schimbă și reîncepe etajul curent"},
	{"6", "", "Schimbă toate itemele lui Isaac#Schimbă toate pickup-urile, trinket-urile și itemele de pe piedestal de pe etaj"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Pisoiul",			-- 1
	"iRaffael",			-- 2
	"Belzebut",		-- 3
	"Uniți",		-- 4
	"Învârtit",				-- 5
	"Da, Mamă?",		-- 6
	"Căcat...",			-- 7
	"Bobiță",				-- 8
	"Leviatan",		-- 9
	"Serafim",			-- 10
	"Super Bum",		-- 11
	"Tocilar",			-- 12
	"Bebeluș Păianjen",		-- 13
	"Adult",			-- 14
	"Bătătorit"			-- 15
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
EID.descriptions[languageCode].VoidNames = {"{1} Viteză", "{1} Lacrimi", "{1} Daune", "{1} Distanță", "{1} Viteza lacrimilor", "{1} Noroc"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} {{ColorGreen}}+4{{CR}} Daune", "↑ {{Tears}} {{ColorRed}}-4{{CR}} Întârziere a lacrimilor", "↑ {{Speed}} {{ColorGreen}}+0.5{{CR}} Viteză", "↑ {{Range}} {{ColorGreen}}+7.5{{CR}} Distanță#↑ {{ColorGreen}}+1{{CR}} Înălțimea lacrimilor"}

EID.descriptions[languageCode].CrookedPennyHeads = "Cap"
EID.descriptions[languageCode].CrookedPennyTails = "Pajură"                    

EID.descriptions[languageCode].LuckModifier = "{1}% șansă la {2} noroc"

EID.descriptions[languageCode].CollectionPageInfo = "Acest item trebuie să fie colectat pentru pagina de colecții!"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} iteme colectate (+{2} Daune)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} Folosire unică {{Warning}}"

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
	"↑ {{EmptyHeart}} +{1} Container gol de inimă{pluralize}", "{{BlackHeart}} +{1} Inimă Neagră{pluralize}",
	"↓ {{EmptyHeart}} {1} Inimă", "↓ {{BlackHeart}} {1} Inimă Neagră"},
	
	["Red to Bone"] = {"↑ {{Heart}} +{1} Inimă", "{{BoneHeart}} +{1} Inimă Os{pluralize}",
	"↑ {{EmptyHeart}} +{1} Container gol de inimă{pluralize}", "{{EmptyBoneHeart}} +{1} Container gol Inimă Os{pluralize}", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} Inimă", "↓ {{EmptyBoneHeart}} {1} Inimă Os{pluralize}"}, -- Red HP to Bone Hearts
	
	["Red to Coin"] = {"↑ {{Heart}} +{1} Inimă", "{{CoinHeart}} +{1} Coin Heart{pluralize}",
	"↑ {{EmptyHeart}} +{1} Container gol de inimă{pluralize}", "{{EmptyCoinHeart}} +{1} Container gol Monedă{pluralize}",
	"{{HealingRed}} Vindecă {1} inimă{pluralize}", "{{HealingCoin}} Vindecă {1} bănuț{pluralize}", "{{HealingRed}} Vindecă o jumătate de inimă", "{{HealingCoin}} Vindecă 1 bănuț", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Viață", "↓ {{EmptyCoinHeart}} {1} Container Monedă{pluralize}"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {"↑ {{Heart}} +{1} Inimă", "", "↑ {{EmptyHeart}} +{1} Container gol de inimă{pluralize}", "", "↓ {{EmptyHeart}} {1} Inimă", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Nume Obiect Demo",
	DemoObjectTransformation = "Transformare Demo",
	DemoObjectText = "Acest text este în română#Un text foarte mișto și lung pentru a simula întreruperile de linie cauzate de lățimea casetei de text EID!#{{Collectible4}} Aceasta este și o linie interesantă#{{Heart}} Această linie te iubește#{{AngelDevilChance}} Această linie îți poate fi înger sau diavol#\\1 {{Damage}} {{ColorGreen}}+1{{CR}} Schimbare Statistică",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Rezultat",
	InventoryEmpty = "(Jucătorul nu are obiecte)",
	CategoryNames = {
		Overview = "Prezentare generală",
		Wisps = "Spirite",
		Special = "Special",
		Actives = "Articole Active Ținute",
		Pockets = "Articole Purtate",
		Trinkets = "Bibelouri Ținute",
		Passives = "Articole Pasive",
		Character = "Informații Personaj",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = {
	"Cameră Normală", "Magazin", "Cameră I AM ERROR", "Cameră de Comori", "Cameră Boss", "Cameră Mini-boss", "Cameră Secretă", "Cameră Super Secretă", "Cameră Arcade", "Cameră Blestemată", "Cameră de Provocare", "Bibliotecă", "Cameră de Sacrificiu", "Cameră Diavolului", "Cameră Îngerului", "Cameră Beci", "Cameră Boss Rush", "Cameră lui Isaac", "Cameră Sterpă", "Cameră Cufăr", "Cameră de Zaruri", "Piață Neagră", "Cameră Ieșire", "Planetariu", "Intrare Teleporter", "Ieșire Teleporter", "Trapă Cale Alternativă", "Cameră Cheie Albastră", "Cameră Ultra Secretă",
	-- Not technically room types but still potentially useful to have localized
	[666] = "Cameră Diavolului/Îngerului",
	[1024] = "Cameră Roșie",
	[1025] = "Cameră Roșie Specială",
}

-- currently used for D1 and Glyph of Balance; contains Rep pickups for ease of localization
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "Niciunul",

	["5.10"] = "{{Heart}} Inimă",
	["5.10.1"] = "{{Heart}} Inimă", ["5.10.2"] = "{{HalfHeart}} Jumătate de inimă", ["5.10.3"] = "{{SoulHeart}} Inimă Suflet", ["5.10.4"] = "{{EternalHeart}} Inimă Eternală", ["5.10.5"] = "{{Heart}} Inimă Dublă", ["5.10.6"] = "{{BlackHeart}} Inimă Neagră", ["5.10.7"] = "{{GoldHeart}} Inimă Auriu", ["5.10.8"] = "{{HalfSoulHeart}} Jumătate Inimă Suflet", ["5.10.9"] = "{{Heart}} Inimă Speriată", ["5.10.10"] = "{{BlendedHeart}} Inimă Combinată", ["5.10.11"] = "{{EmptyBoneHeart}} Inimă Os", ["5.10.12"] = "{{RottenHeart}} Inimă Stricată",

	["5.20"] = "{{Coin}} Bănuț",
	["5.20.1"] = "{{Crafting8}} Bănuț", ["5.20.2"] = "{{Crafting9}} Nichel", ["5.20.3"] = "{{Crafting10}} Dime", ["5.20.4"] = "{{Crafting8}} Bănuț Dublu", ["5.20.5"] = "{{Crafting11}} Bănuț Norocos", ["5.20.6"] = "{{Crafting9}} Nichel Lipicios", ["5.20.7"] = "{{Crafting26}} Bănuț Auriu",

	["5.30"] = "{{Key}} Cheie",
	["5.30.1"] = "{{Crafting12}} Cheie", ["5.30.2"] = "{{Crafting13}} Cheie Aurie", ["5.30.3"] = "{{Crafting12}} Inel de Chei", ["5.30.4"] = "{{Crafting14}} Cheie Încărcată",

	["5.40"] = "{{Bomb}} Bombă",
	["5.40.1"] = "{{Crafting15}} Bombă", ["5.40.2"] = "{{Crafting15}} Bombă Dublă", ["5.40.3"] = "{{Crafting15}} Bombă Troll", ["5.40.4"] = "{{Crafting16}} Bombă Auriu", ["5.40.5"] = "{{Crafting15}} Mega Bombă Troll", ["5.40.7"] = "{{Crafting17}} Giga Bombă",

	["5.42"] = "{{Crafting29}} Bucată de Rahat", ["5.42.1"] = "{{Crafting29}} Bucată de Rahat Mare",

	["5.90"] = "{{Battery}} Baterie",
	["5.90.0"] = "{{Crafting19}} Baterie Mică", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Baterie Mică", ["5.90.2"] = "{{Crafting18}} Micro Baterie", ["5.90.3"] = "{{Crafting20}} Mega Baterie", ["5.90.4"] = "{{Crafting28}} Baterie Auriu",

	["5.50"] = "{{Chest}} Cufăr", ["5.51"] = "{{BombChest}} Cufăr Bombă", ["5.52"] = "{{SpikedChest}} Cufăr Spinos", ["5.53"] = "{{EternalChest}} Cufăr Etern", ["5.54"] = "{{MimicChest}} Cufăr Mimic", ["5.55"] = "{{OldChest}} Cufăr Vechi", ["5.56"] = "{{WoodenChest}} Cufăr de Lemn", ["5.57"] = "{{MegaChest}} Mega Cufăr", ["5.58"] = "{{HauntedChest}} Cufăr Bântuit", ["5.60"] = "{{GoldenChest}} Cufăr Auriu", ["5.360"] = "{{RedChest}} Cufăr Roșu",

	["5.69"] = "{{GrabBag}} Sac", ["5.69.1"] = "{{GrabBag}} Sac", ["5.69.2"] = "{{BlackSack}} Sac Negru",

	["5.70"] = "{{Pill}} Pastilă",
	["5.300"] = "{{Card}} Carte",
	["5.301"] = "{{Rune}} Rună", -- not a real id
	["5.350"] = "{{Trinket}} Bibelou",

}

-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Înlocuit de {1}",
	["Overrides"] = "Înlocuiește {1}",
	["Almost No Effect"] = "Efect aproape inexistent pentru {1}",
	["No Effect"] = "Niciun efect pentru {1}",
	["No Effect Replace"] = {"Niciun efect pentru {1}"},
	["No Effect From"] = "Niciun efect de la {1}",
	["Can't Charge"] = "Nu poate fi încărcat de {1}",
	["Can't Be Charged"] = "Nu poate fi încărcat de {1}",
	["Can't Be Duplicated"] = "Nu poate fi duplicat",
	["No Effect (Greed)"] = "{{GreedMode}} Niciun efect în Modul Greed",
	["No Effect (Copies)"] = "Niciun efect suplimentar de la copii multiple",
	["No Effect (Familiars)"] = "Niciun efect suplimentar asupra familiilor",
	["Different Effect"] = "{{ColorSilver}}Efect diferit pentru {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} moare la folosire", -- for Razor Blade and such as The Lost
	
	
	------ GREED MODE ------
	["Room to Wave"] = {"cameră", "val", "cameră", "val"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Campionii nu aruncă pickup-uri în Modul Greed!", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} Generează un cerșetor diavol"}, -- Temperance (Greed)
	["5.300.19"] = {"Îl teleportează pe Isaac în prima cameră a etajului"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Viață completă#Provoacă 100 daune tuturor inamicilor"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Nu se activează o dată pe val, ci o singură dată pe cameră", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} Fără scut pe valurile de boss, doar pe Ultra Greed", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} Fără încărcare pe valurile de boss, doar pe Ultra Greed", -- Hairpin (Greed)
	["5.100.246"] = {"{{SuperSecretRoom}} Dezvăluie locația Camerei Super Secrete pe hartă"}, -- Blue Map (Greed)
	["5.100.333"] = {"{{SuperSecretRoom}} Dezvăluie locația Camerei Super Secrete pe hartă"}, -- The Mind (Greed)
	["5.100.514"] = {"Face ca unii inamici și proiectile să se oprească temporar la intervale aleatorii"}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 33% șansă pentru o inimă bonus din cufere, pietre colorate și mașini distruse"}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 33% șansă pentru o cheie bonus din cufere, pietre colorate și mașini distruse"}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 33% șansă pentru o bombă bonus din cufere, pietre colorate și mașini distruse#{{Warning}} Îndepărtează {{Trinket53}} Tick"}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 33% șansă pentru o pastilă bonus din cufere, pietre colorate și mașini distruse"}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 33% șansă pentru o carte bonus din cufere, pietre colorate și mașini distruse"}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} {{ColorGreen}}+10%{{CR}} șansă ca pickup-urile aleatorii să fie baterii#{{Battery}} 5% șansă de a adăuga 1 încărcare la itemul activ ținut la curățarea unui val"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"Generează recompense în funcție de etaj:#Basement: 2{{Bomb}} + 2{{Key}}#Caves: item Șef + 2{{SoulHeart}}#Depths: 20{{Coin}}#Womb: 2 iteme Șef#Sheol: item Diavol + 1{{BlackHeart}}#Shop/Ultra Greed: 1{{Coin}}"}, -- Pandora's Box
	
	
	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Decedând în {{SacrificeRoom}} Camera Sacrificiului în timp ce ții acest trinket deblochează The Lost", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Deblochează {{Collectible523}} Cutie Mișcătoare", "Nimic"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} {{ColorGreen}}+3{{CR}} Inimi Suflet"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} {{ColorGreen}}+2{{CR}} Inimi Suflet#{{BlackHeart}} {{ColorGreen}}+1{{CR}} Inimă Neagră"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} {{ColorGreen}}+1{{CR}} Inimă Suflet#{{BlackHeart}} {{ColorGreen}}+2{{CR}} Inimi Negre"}, -- for Black Heart chars
	
	
	["5.100.135 (PHD)"] = "Generează 2-3 bănuți dacă ai {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Generează 0-1 bănuți ca {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1} pur și simplu primește ↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Tears la colectare", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1} poate primi recipiente suplimentare pentru bani", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} doar MORI!", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac trage 3 lacrimi suplimentare#Nici o scădere suplimentară a statisticilor", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac trage 4 lacrimi suplimentare#Nici o scădere suplimentară a statisticilor", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac trage 2 lacrimi suplimentare", -- 20/20
	["5.100.358 (Copies)"] = "Isaac trage 2 lacrimi suplimentare mai aproape de centru", -- The Wiz
	["5.100.64 (Copies)"] = "Deținerea acestui obiect a doua oară face ca toate obiectele din magazin să fie gratuite", -- Steam Sale
	["5.100.118 (Copies)"] = "Isaac trage o rază suplimentară", -- Brimstone
	["5.100.224 (Copies)"] = "Copiile suplimentare oferă doar {{ColorRed}}-0.2{{CR}} viteză", -- Kidney Stone
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Turetele Pepită Maro sunt considerate familiari",
	["Sacrificial Conception"] = "Familiarii acordați de {1} pot fi sacrificați și vor reînvia",
	["Sacrificial Angels"] = "{1} generează 2 Inimi Negre dacă sunt sacrificați",
	["Sacrificial Void"] = "Poate fi folosit de mai multe ori dacă este absorbit de Vid",
	
	["5.100.116 (1 Room)"] = "Reîncărcările de 1 cameră devin reîncărcări de 15 secunde în timp ce ești într-o cameră necurățată", -- 9 Volt
	["5.100.116 (Timed)"] = "Reîncărcările temporizate încep la jumătate pline", -- 9 Volt
	["9 Volt 1 Room"] = "Reîncărcare de 15 secunde în timp ce ești într-o cameră necurățată", -- Actives + 9 Volt
	["9 Volt Timed"] = "Reîncărcările temporizate încep la jumătate pline după utilizare", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Reduce costul la jumătate de inimă", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} nu poate preveni moartea", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Nu previne moartea cauzată de {1}", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "{{ColorGreen}}x1.5{{CR}} Multiplicator de Daune atunci când efectul {1} este activ", -- Blood of the Martyr
	["5.100.34"] = "{{ColorGreen}}x1.5{{CR}} Multiplicator de Daune", -- Book of Belial
	["5.300.16"] = "{{ColorGreen}}x1.5{{CR}} Multiplicator de Daune", -- XV - The Devil
	
	["5.100.81"] = "Personajele care nu pot avea Inimi Roșii primesc 1 Inimă Suflet/Neagră", -- Dead Cat
	["5.100.316"] = "{1} elimină efectul de teleportare", -- Cursed Eye
	["5.100.260"] = "Elimină efectul de teleportare al {1}", -- Black Candle
	["Void Single Use"] = "Itemele cu utilizare unică se activează o singură dată", -- Single Use Actives + Void
	["? Card Single Use"] = "Itemele cu utilizare unică vor dispărea după folosirea cardului ?", -- Single Use Actives + ? Card
	["5.300.48"] = "Teleport în Camera I AM ERROR#Blank Card și cardul ? vor fi distruse", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Folosirea cardului ? cu Blank Card teleportează pe Isaac în Camera I AM ERROR și distruge ambele carduri", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Itemele gratuite nu vor fi reaprovizionate", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} {{ColorGreen}}+0.2{{CR}} Daune", -- Black Feather items
	
	["Bulb Multiple"] = "Verifică doar itemul activ primar", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Articolele active cu 0 încărcări max activează becul", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "Practic inutil cu reîncărcări cu timp", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Se activează la 1 Inimă Roșie cu {1}", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Isaac trage înainte și în lateral în schimb", -- R U A Wizard + The Wiz
	["5.100.523"] = "Contă ca un item pasiv pentru {1}", -- Moving Box + Void
	["Mongo Babies"] = "Poate fi copiat de {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "Cu {1}, laserul înlocuiește complet lacrimile",
	["Brimstone Proptosis"] = "Razele dau {{ColorGreen}}2x{{CR}} daune suplimentare la distanță mică, scăzând cu distanța",
	["Brimstone Ipecac"] = "Lacrimile Ipecac sunt trase în timp ce se încarcă#Dauna {{ColorGreen}}+40{{CR}} se aplică laserului",
	["Proptosis Anti-Gravity"] = "Lacrimile nu pierd daună până când încep să se mute",
	["Epic Fetus Soy Milk"] = "Timpă reticulei nu este scurtată, dar dauna rachetei este drastic redusă",
	["Eye of Belial Dr. Fetus"] = "Bombele strapung, dar nu se ghidează sau dau daune suplimentare",
	["Epic Fetus Brimstone"] = "{1} are prioritate#Rachetele lansează 10 raze",
	["Epic Fetus Mom's Knife"] = "{1} are prioritate#Rachetele lansează 10 cuțite",
	["Haemolacria Brimstone"] = "{1} are prioritate#Lacrimile se împart în 4-7 raze",
	["Brimstone Mom's Knife"] = "{1} are prioritate#O rafală de cuțite lansate pe baza cantității de încărcări",
	["Ludovico Ipecac"] = "Lacrima câștigă {{ColorGreen}}+4{{CR}} daune dar nu explodează sau otrăvește",
	["Technology Ipecac"] = "Laserul câștigă {{ColorGreen}}+4{{CR}} daune și otrăvește țintele",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} {{ColorGreen}}x1.25{{CR}} Multiplicator viteză de atac",
	["Chocolate Milk Marked"] = "Isaac se încarcă automat în funcție de distanța față de țintă",
	["Ghost Pepper Fart"] = "Flatulența provoacă o flacără care iese în urma lui Isaac",
	["Damage Multiplier Stack"] = "Multiplicatorul de daune nu se cumulează",
	["White Poop"] = "Generează în schimb Rahat Alb",
	["White Poop Chance"] = "Șansă de a genera Rahat Alb",
	["Golden Poop Chance"] = "Șansă de a genera Rahat Auriu",
	["5.100.483"] = "{{GoldenBomb}} Dacă ai o bombă aurie când folosești itemul, aceasta este consumată și permite o utilizare suplimentară a Mama Mega",
	
	["5.300.5"] = {"{{BossRoom}} Îl teleportează pe Isaac într-o Cameră Boss aleatorie"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Îl teleportează pe Isaac într-o cameră aleatorie dacă nu există Camera Comorilor", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Îl teleportează pe Isaac într-o Cameră a Comorii aleatoare"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Îl teleportează pe Isaac în prima cameră a etajului"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Îl teleportează pe Isaac într-o cameră aleatorie dacă nu există Magazin", -- IX - The Hermit (Womb and below)
	
}



