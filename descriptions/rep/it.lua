---------------------------------------
----- Basic Italian descriptions -----
---------------------------------------

-- Last Sync with en_us: 29.07.2021

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "it"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "Il Terzo Occhio", "↓ {{Tears}} x0.51 Moltiplicatore Velocità Colpi#Isaac spara tre lacrime alla volta"}, -- The Inner Eye
	[5] = {"5", "Il Mio Riflesso", "↑ {{Damage}} +1.5 Danni#↑ {{Range}} +1.5 Gittata#↑ {{Range}} x2 Moltiplicatore Gittata#↑ {{Shotspeed}} x1.6 Moltiplicatore Velocità Colpi#↓ {{Luck}} -1 Fortuna#Le lacrime ottengono un effetto boomerang"}, -- My Reflection
	[6] = {"6", "La Numero Uno", "↑ {{Tears}} +1.5 Lacrime#↓ {{Range}} -1.5 Gittata #↓ {{Range}} x0.8 Moltiplicatore Gittata"}, -- Number One
	[12] = {"12", "Fungo Magico", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +0.3 Danni#↑ {{Damage}} x1.5 Moltiplicatore Danni#↑ {{Range}} +2.5 Gittata#Aumento Statura#{{Heart}} Salute al massimo"},
	[13] = {"13", "Il Virus", "↑ {Speed}} +0.2 Velocità#{{Poison}} Toccare i nemici li avvelena#Il PG infligge 48 danni da contatto al secondo"}, -- The Virus
	[14] = {"14", "Iniezione di Ferocia", "↑ {{Speed}} +0.3 Velocità#↑ {{Range}} +2.5 Gittata"}, -- Roid Rage
	[18] = {"18", "Un Dollaro", "{{Coin}} +100 Monete"}, -- A Dollar
	[22] = {"22", "Pranzo", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Lunch
	[23] = {"23", "Cena", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Dinner
	[24] = {"24", "Dessert", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Dessert
	[25] = {"25", "Colazione", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Breakfast
	[26] = {"26", "Carne Marcia", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Rotten Meat
	[29] = {"29", "Mutande di Mamma", "↑ {{Range}} +2.5 Gittata#Genera 3-6 mosche blu"}, -- Moms Underwear
	[30] = {"30", "Tacchi di Mamma", "↑ {{Range}} +2.5 Gittata#Isaac infligge 24 danni da contatto al secondo"}, -- Mom's Heels
	[31] = {"31", "Rossetto di Mamma", "↑ {{Range}} +3.75 Gittata#{{UnknownHeart}} Genera 1 cuore casuale"}, -- Mom's Lipstick
	[37] = {"37", "Sig. Bum", "Lascia a terra una grossa bomba ai piedi di Isaac che infligge 185 danni"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Produce una grossa esplosione nella posizione di Isaac#Infligge 185 danni"}, -- Kamikaze!
	[41] = {"41", "Assorbente di Mamma", "{{Fear}} Spaventa tutti i nemici nella stanza per 5 secondi#Genera una mosca blu"}, -- Mom's Pad
	[42] = {"42", "Testa Marcia di Bob", "Usare l'oggetto e sparare in una direzione fa scagliare la testa#{{Poison}} La testa esplode nel luogo in cui atterra e crea una nube velenosa#Infligge i danni di Isaac + 185"}, -- Bob's Rotten Head
	[45] = {"45", "Cuore Gustoso", "{{Heart}} Cura di 1 cuore#{{HalfHeart}} Cura altri giocatori di mezzo cuore"}, -- Yum Heart
	[46] = {"46", "Piede Fortunato", "↑ {{Luck}} +1 Fortuna#Maggiori chance di vittoria nel gioco d'azzardo#Aumenta le chance di una ricompensa a completamento stanza#Trasforma le pillole negative in positive"}, -- Lucky Foot
	[52] = {"52", "Dr. Fetus", "↓ {{Tears}} x0.4 Moltiplicatore del rateo di fuoco#{{Bomb}} Isaac spara bombe al posto delle lacrime#{{Damage}} Tali bombe infliggono x10 di danni delle lacrime di Isaac#Se infliggerebbero 60 danni, infliggono invece x5 di danni +30"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Isaac attrae a sé i consumabili#Apre i bauli da due caselle di distanza, ignorando i danni dei Bauli Puntuti"}, -- Magneto
	[55] = {"55", "Occhio di Mamma", "50% di chance di sparare una lacrima extra dietro di sé#{{Luck}} 100% di chance con 5 di Fortuna"}, -- Mom's Eye
	[59] = {"59", "Il Libro di Belial", "{{AngelDevilChance}} +12.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +2 Danni"}, -- The Book of Belial (Judas' Birthright)
	[62] = {"62", "Fascino del Vampiro", "↑ {{Damage}} +0.3 Danni#{{HalfHeart}} Uccidere 13 nemici cura di mezzo cuore"}, -- Charm of the Vampire
	[67] = {"67", "Sorella Maggy", "Spara lacrime normali#Infligge 6 danni a lacrima"}, -- Sister Maggy
	[69] = {"69", "Chocolate Milk", "{{Chargeable}} Lacrime caricabili#{{Damage}} I danni scalano con i tempi di carica fino a x4"}, --Chocolate Milk
	[70] = {"70", "Ormoni Della Crescita", "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1 Danni"}, -- Growth Hormones
	[71] = {"71", "Mini Fungo", "↑ {{Speed}} +0.3 Velocità#↑ {{Range}} +1.5 Gittata#↑ Riduzione Statura"}, -- Mini Mush
	[72] = {"72", "Rosario", "{{Tears}} +0.5 Lacrime#{{SoulHeart}} +3 Cuori Celesti#\"La Bibbia\" viene aggiunta a tutti i pool degli oggetti"}, -- Rosary
	[78] = {"78", "Libro dell'Apocalisse", "{{SoulHeart}} +1 Cuore Celeste#{{AngelDevilChance}} +17.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#Usare l'oggetto rimpiazza il boss del piano con un Cavaliere"}, -- Book of Revelations
	[79] = {"79", "Il Marchio", "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1 Danni#{{BlackHeart}} +1 Cuore Nero"}, -- The Mark
	[80] = {"80", "Il Patto", "↑ {{Tears}} +0.7 Lacrime#↑ {{Damage}} +0.5 Danni#{{BlackHeart}} +2 Cuori Neri"}, -- The Pact
	[83] = {"83", "Il Chiodo", "Se usato:#{{HalfBlackHeart}} +1 Mezzo Cuore Nero#{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +2 Danni#↓ {{Speed}} -0.18 Velocità#Isaac infligge 40 danni da contatto al secondo#Permette ad Isaac di distruggere le rocce camminandoci sopra"}, -- The Nail
	[84] = {"84", "Scaviamo più a Fondo!", "Apre una botola per il prossimo piano#{{LadderRoom}} Apre un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)"}, -- We Need To Go Deeper!
	[87] = {"87", "Corna di Loki", "25% di chance di sparare in 4 direzioni#{{Luck}} 100% di chance con 15 di Fortuna"}, -- Loki's Horns
	[91] = {"91", "Casco da Minatore", "Rivela il tipo di stanza delle stanze adiacenti#{{SecretRoom}} Può rivelare Stanze Segrete e Super Segrete#Previene i danni dalla caduta dei proiettili"}, -- Spelunker Hat
	[98] = {"98", "La Reliquia", "{{SoulHeart}} Genera 1 Cuore Celeste per ogni 7-8 stanze"}, -- The Relic
	[101] = {"101", "L'Aureola", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +0.3 Danni#↑ {{Range}} +1.5 Gittata#{{Heart}} Cura di 1 cuore"}, -- The Halo
	[106] = {"106", "Sig. Mega", "↑ {{Bomb}} x1.85 danni delle bombe#{{Bomb}} +5 Bombe"}, -- Mr. Mega
	[107] = {"107", "Forbici Seghettate", "{{Timer}} Conferisce fino all'uscita dalla stanza:#Volo#Il corpo di Isaac si separa dalla testa e attacca i nemici con 23.5 danni da contatto al secondo"}, -- The Pinking Shears
	[110] = {"110", "Lentine di Mamma", "↑ {{Range}} +1.5 Gitttata#20% di chance di sparare lacrime pietrificanti#{{Luck}} 50% di chance con 20 di Fortuna"}, -- Mom's Contacts
	[114] = {"114", "Coltello di Mamma", "Le lacrime di Isaac vengono rimpiazzate da un coltello lanciabile#{{Damage}} Il coltello infligge i danni di Isaac x2 mentre viene tenuto e si massimizza a x6 ad 1/3 della carica#I danni si riducono a x2 quando ritorna ad Isaac"}, -- Mom's Knife
	[115] = {"115", "Tavola Ouija", "↑ {{Tears}} +0.5 Lacrime#Lacrime spettrali"}, -- Ouija Board
	[118] = {"118", "Zolfo Fuso", "↓ {{Tears}} x0.33 Moltiplicatore del rateo di fuoco#{{Chargeable}} Le lacrime di Isaac vengono rimpiazzate da un raggio di sangue caricabile"}, -- Brimstone
	[121] = {"121", "Buffungo (Grande)", "↑ {{Heart}} +1 Salute#↑ +1 Danni#↑ +1.5 Gittata#↓ -0.2 Velocità"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuale dei Mostri", "{{Timer}} Genera un famiglio casuale fino all'uscita dal piano"}, -- Monster Manual
	[126] = {"126", "Lametta", "↑ {{Damage}} +1.2 Danni#{{Warning}} Infligge 1 cuore di danni ad Isaac#Dopo il primo uso in una stanza, infligge invece mezzo cuore#{{Heart}} Rimuove per primi i Cuori Rossi"}, -- Razor Blade
	[129] = {"129", "Secchio di Lardo", "↑ {{Heart}} +2 Salute#↓ {{Speed}} -0.2 Velocità"}, -- Bucket of Lard
	[138] = {"138", "Stimmate", "↑ {{Heart}} +1 Salute#↑ {{Damage}} +0.3 Danni#{{Heart}} Cura di 1 cuore"}, -- Stigmata
	[139] = {"139", "Borsetta di Mamma", "{{Trinket}} Genera 1 ninnolo casuale#{{Trinket}} Isaac può tenere 2 ninnoli"}, -- Mom's Purse
	[140] = {"140", "Maledizione di Bob", "{{Bomb}} +5 Bombe#{{Poison}} Le bombe di Isaac creano una nube velenosa#{{Poison}} Immunità al veleno"}, -- Bob's Curse
	[142] = {"142", "Scapolare", "{{SoulHeart}} Isaac ottiene 1 Cuore Celeste quando i danni lo riducono a mezzo cuore#Può avvenire solo una volta a stanza#Uscire e rientrare nella stanza permette di attivare nuovamente l'effetto#{{Warning}} Non viene attivato dalle donazioni di cuori"}, -- Scapular
	[147] = {"147", "Piccone Minatorio", "Usare l'oggetto fa sì che Isaac tenga il piccone in mano#Tenere il piccone permette ad Isaac di rompere rocce e ingressi per le Stanze Segrete, e anche di danneggiare i nemici#Mettere a segno un colpo con il piccone riduce la sua carica#Entrare in nuovo piano ricarica pienamente il piccone"}, -- Notched Axe
	[148] = {"148", "Infestazione", "Subire danni genera 2-6 mosche blu"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} +40 Danni#↓ {{Tears}} x0.33 Moltiplicatore del rateo di fuoco#↓ {{Range}} x0.8 Moltiplicatore Gittata#Isaac spara lacrime lungo un arco#{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici"}, -- Ipecac
	[152] = {"152", "Tecnologia 2", "↓ {{Tears}} x0.67 Moltiplicatore del rateo di fuoco#Sotituisce le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco"}, -- Technology 2
	[153] = {"153", "Ragno Mutante", "↓ {{Tears}} x0.42 Moltiplicatore del rateo di fuoco#Isaac spara 4 lacrime alla volta"}, -- Mutant Spider
	[155] = {"155", "The Peeper", "↑ {{Damage}} x1.35 Damage multiplier for the left eye#Levita intorno alla stanza#Infligge 17.1 danni da contatto al secondo"}, -- The Peeper
	[158] = {"158", "Sfera di Cristallo", "Genera 1 {{SoulHeart}} Cuore Celeste, 1 {{Rune}} runa o 1 {{Card}} carta#{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto le {{SuperSecretRoom}} Stanze Super Segrete)#Mentre viene tenuto:#{{PlanetariumChance}} +15% di chance di un Planetario#{{PlanetariumChance}} +100% se è stata saltata una {{TreasureRoom}} Stanza dei Tesori"}, -- Crystal Ball
	[169] =	{"169", "Polifemo", "↑ {{Damage}} +4 Danni#↑ {{Damage}} x2 Moltiplicatore Danni#↓ {{Tears}} x0.42 Moltiplicatore del rateo di fuoco#Le lacrime penetrano i nemici uccisi in caso di danni avanzanti"}, -- Polyphemus
	[171] = {"171", "Chiappe Ragnesche", "{{Slow}} Rallenta i nemici per 4 secondi#Infligge 10 danni a tutti i nemici##I nemici uccisi dall'oggetto generano ragni blu"}, -- Spider Butt
	[172] = {"172", "Lama Sacrificale", "Orbitale#Blocca i proiettili nemici#Infligge 112.5 danni al secondo"}, -- Sacrificial Dagger
	[176] = {"176", "Cellule Staminali", "↑ {{Heart}} +1 Salute#↑ {{Shotspeed}} +0.16 Velocità Colpi#{{Heart}} Cura di 1 cuore"}, -- Stem Cells
	[178] = {"178", "Acqua Santa", "{{Throwable}} Si lancia nella direzione in cui Isaac spara#Si infrange e una volta colpito un nemico infligge 7 danni#Lascia una pozza di liquido pietrificante e danneggiante"}, -- Holy Water
	[180] = {"180", "Il Fagiolo Nero", "Quando Isaac viene danneggiato scorreggia per più volte#{{Poison}} Le scorregge lasciano nubi velenose e respingono i proiettili"}, -- The Black Bean
	[182] = {"182", "Sacro Cuore", "↑ {{Heart}} +1 Salute#↑ {{Damage}} x2.3 Moltiplicatore Danni#↑ {{Damage}} +1 Danni#↓ {{Tears}} -0.4 Lacrime#↓ {{Shotspeed}} -0.25 Velocità Colpi#{{Heart}} Salute al Massimo#Lacrime a ricerca"}, -- Sacred Heart
	[184] = {"184", "Sacro Graal", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore#Volo"}, -- Holy Grail
	[186] = {"186", "Eredità di Sangue", "Infligge 40 danni a tutti i nemici#{{Warning}} Infligge 1 cuore di danno ad Isaac#Dopo il primo uso in una stanza, infligge invece mezzo cuore di danno#{{Heart}} Rimuove per primi i Cuori Rossi"}, -- Blood Rights
	[188] = {"188", "Abele", "Riflette i movimenti di Isaac#Spara verso Isaac#Infligge 3.5 danni a lacrima"}, -- Abel
	[189] = {"189", "Super Fan di SMB", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.2 Velocità#↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +0.3 Danni#↑ {{Range}} +2.5 Gittata#{{Heart}} Salute al massimo"}, -- SMB Super Fan
	[192] = {"192", "Telepatia per Negati", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Range}} +3 Gittata#Lacrime a ricerca"}, -- Telepathy for Dummies
	[193] = {"193", "CARNE!", "↑ {{Heart}} +1 Salute#↑ {{Damage}} +0.3 Danni#{{Heart}} Cura di 1 cuore"}, -- MEAT!
	[194] = {"194", "Palla Magica", "↑ {{Shotspeed}} +0.16 Velocità Colpi#{{Card}} Genera 1 carta#+15% di chance di un Planetario"}, -- Magic 8 Ball
	[197] = {"197", "Succhino di Cristo", "↑ {{Damage}} +0.5 Danni#↑ {{Range}} +1.5 Gittata"}, -- Jesus Juice
	[203] = {"203", "Offerta Imperdibile", "I consumabili hanno il 50% di chance di venire raddoppiati"}, -- Humbleing Bundle
	[205] = {"205", "Presa Diretta", "{{Battery}} Usare un oggetto attivo non carico lo ricarica pienamente al costo di mezzo cuore#{{Heart}} Rimuove per primi i Cuori Rossi"}, -- Sharp Plug
	[206] = {"206", "Ghigliottina", "↑ {{Tears}} +0.5 Rateo di Fuoco#↑ {{Damage}} +1 Danni#La testa di Isaac diventa un orbitale che spara, non prende danni e infligge 65 danni da contatto al secondo"}, -- Guillotine
	[211] = {"211", "Bimboragno", "Subire danni genera 3-5 ragni blu"}, -- Spider Baby
	[214] = {"214", "Anemia", "↑ {{Range}} +1.5 Gittata#{{Timer}} Quando Isaac prende danni lascia una scia di liquido sanguigno fino all'uscita dalla stanza"}, -- Anemic
	[218] = {"218", "Placenta", "{{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore#{{HalfHeart}} Ad ogni minuto 50% di chance di curare mezzo cuore"}, -- Placenta
	[219] = {"219", "Cerotto Vecchio", "↑ {{EmptyHeart}} +1 Portacuori vuoto#{{Heart}} Subire danni ha il 20% di chance di generare 1 Cuore Rosso"}, -- Old Bandage
	[222] =	{"222", "Anti-Gravità", "↑ {{Tears}} +1 Rateo di Fuoco#Tenere premuto il tasto di fuoco fa sì che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate"}, -- Anti-Gravity
	[223] = {"223", "Piromane", "{{Bomb}} +5 Bombe#{{HalfHeart}} Le esplosioni curano Isaac di mezzo cuore invece di danneggiarlo#{{Burning}} Immunità al fuoco (eccetto i proiettili)"}, -- Pyromaniac
	[224] = {"224", "Corpo di Cricket", "↑ {{Tears}} +0.5 Rateo di Fuoco#↓ {{Range}} x0.8 Moltiplicatore Gittata#Quando le lacrime colpiscono si scindono in 4#Le lacrime scisse infliggono la metà dei danni"}, -- Cricket's Body
	[225] = {"225", "Latex", "{{SoulHeart}} Subire danni ha una chance di generare un Cuore Celeste#{{Luck}} +2% di chance per punto Fortuna#{{HalfHeart}} I nemici hanno una chance di lasciare mezzo Cuore Rosso quando muoiono"}, -- Gimpy
	[226] = {"226", "Loto Nero", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore#{{SoulHeart}} +1 Cuore Celeste#{{BlackHeart}} +1 Cuore Nero"}, -- Black Lotus
	[228] = {"228", "Profumo di Mamma", "↑ {{Tears}} +0.5 Rateo d fuoco#{{Fear}} 15% di chance di sparare lacrime spaventose"}, -- Moms Perfume
	[229] =	{"229", "Polmone di Monstro", "↓ {{Tears}} x0.23 Moltiplicatore del rateo di fuoco#{{Chargeable}} Le lacrime vengono caricate e rilasciate in un attacco a raffica"}, -- Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1.5 Danni#↓ {{EmptyHeart}} Converte tutti i Portacuori in Cuori Neri#{{BlackHeart}} +2 Cuori Neri#{{Fear}} 15% di chance di sparare lacrime spaventose"}, -- Abaddon
	[232] = {"232", "Cipollotto", "↑ {{Speed}} +0.3 Velocità#{{Slow}} Gli attacchi e la velocità di movimento dei nemici sono permanentemente ridotte del 20%"}, -- Stop Watch
	[233] = {"233", "Pianetino", "↑ +6.5 Gittata#Lacrime spettrali#Le lacrime di Isaac gli orbitano attorno"}, -- Tiny Planet
	[245] = {"245", "Dieci Decimi", "↓ {{Damage}} x0.8 Moltiplicatore Danni#Isaac spara 2 lacrime alla volta"}, -- 20/20
	[248] = {"248", "Mente Alveare", "Ragni e mosche blu infliggono il doppio dei danni#I ragni e mosche famigli diventano più forti"}, -- Hive Mind
	[253] = {"253", "Scabbia Magica", "↑ {{Heart}} +1 Salute#↑ {{Luck}} +1 Fortuna#{{Heart}} Heals 1 heart"}, -- Magic Scab
	[254] = {"254", "Grumo di Sangue", "↑ {{Damage}} +1 Danni all'occhio sinistro#↑ {{Range}} +2.75 Gittata per l'occhio sinistro"}, -- Blood Clot
	[256] = {"256", "Bombe Incendiarie", "{{Bomb}} +5 Bombe#{{Burning}} Le bombe di Isaac infliggono danni da contatto#{{Burning}} Le bombe di Isaac lasciano una fiamma quando esplodono#{{Burning}} Immunità al fuoco (eccetto i proiettili)"}, -- Hot Bombs
	[261] = {"261", "Proptosi", "↑ {{Damage}} +0.5 Danni#↓ I danni inflitti dalle lacrime diminuiscono quanto più tempo sono in aria#A bruciapelo le lacrime infliggono i danni di Isaac x3, e dopo 0.8 secondi zero danni"}, -- Proptosis
	[262] = {"262", "Pagina Mancante 2", "{{BlackHeart}} +1 Cuore Nero#Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza#{{Collectible35}} Cuori Neri e effetti simili a \"Il Necronomicon\" infliggono il doppio dei danni"}, -- Missing Page 2
	[263] = {"263", "Runa Limpida", "{{Rune}} Quando viene raccolto genera 1 runa#{{Rune}} Attiva gli effetti della runa tenuta da Isaac senza usarla"}, -- Clear Rune (Repentance item)
	[264] = {"264", "Smart Fly", "Orbitale#Attaccca i nemici quando Isaac prende danni#Infligge 6.5 danni al secondo"}, -- Smart Fly
	[273] = {"273", "Cervello di Bob", "Scatta nella direzione verso cui Isaac sta sparando#Esplode quando colpisce un nemico#{{Poison}} L'esplosione infligge 100 danni, ignora lo scudo dei boss e avvelena i nemici#{{Warning}} L'esplosione può ferire Isaac"}, -- Bob's Brain
	[274] = {"274", "Scudiero", "Subire danni genera un orbitale dal medio raggio fino all'uscita dalla stanza#L'orbitale infligge 150 danni al secondo"}, -- Best Bud
	[275] = {"275", "Mini Zolfo Fuso", "{{Chargeable}} Famiglio che carica e spara un {{Collectible118}} raggio di sangue#Infligge 3 danni a tocco, per un totale di 24 danni"}, -- Lil Brimston
	[276] = {"276", "Cuore di Isaac", "Isaac diventa invincibile#Genera un cuore famiglio che segue Isaac#Il cuore si carica mentre Isaac spara, rilasciando uno scroscio di lacrime quando smette#{{Warning}} Se il cuore famiglio viene colpito, Isaac prende danni"}, -- Isaac's Heart
	[278] = {"278", "Scroccoscuro", "{{Heart}} Raccoglie i Cuori Rossi nelle vicinanze#Genera 1 Cuore Nero, runa, carta, pillola, o ragno per ogni 1.5 Cuori Rossi raccolti"}, -- Dark Bum
	[280] = {"280", "Sorellina Gambalunga", "Genera ad intervalli casuali ragni blu nelle stanze ostili#{{Charm}} Ammalia i nemici con cui viene in contatto"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Raddoppia 1 consumabile nella stanza#Rilancia Velocità, Lacrime, Danni, Gittata e gli oggetti passivi di Isaac#Rilancia tutti i piedistalli, consumabili e rocce nella stanza#Fa ripartire la stanza, resuscita tutti i nemici e li rilancia"}, -- D100
	[285] = {"285", "D10", "Tutti i nemici nella stanza subiscono un'involuzione#Ad esempio, tutte le Mosche Rosse diventano Mosche Nere"}, -- D10
	[286] = {"286", "Carta Bianca", "Attiva l'effetto della carta tenuta da Isaac senza usarla"}, -- Blank Card
	[287] = {"287", "Libro dei Segreti", "Evidenzia le rocce colorate e le rocce cunicolo nella stanza#{{Timer}} Conferisce uno dei seguenti effetti fino all'uscita dal piano:#{{Collectible54}} \"Mappa del Tesoro\"#{{Collectible21}} \"La Bussola\"#{{Collectible246}} \"Mappa Blu\"#Conferisce solo effetti non già attivi#{{Collectible76}} Se tutti gli effetti sono attivi, conferisce \"Vista a Raggi X\""}, -- Book of Secrets
	[288] = {"288", "Scatola di Ragni", "Genera 4-8 ragni blu"}, -- Box of Spiders
	[289] = {"289", "Candela Rossa", "Lancia una fiamma rossa#La fiamma sparisce dopo aver inflitto danni, bloccato 5 proiettili o una volta passati 10 secondi"}, -- Red Candle
	[291] = {"291", "Sciacquone!", "Trasforma in cacca tutti i nemici che non sono boss#Uccide istantaneamente nemici e boss fatti di cacca#Estingue i focolari e riempie d'acqua la stanza#Trasforma i varchi di lava in terreno percorribile"}, -- Flush!
	[292] = {"292", "Bibbia Satanica", "{{BlackHeart}} +1 Cuore Nero#{{DevilRoom}} Usare l'oggetto prima di una lotta contro un boss rende la ricompensa del boss un patto con il diavolo#Acquistare questi patti con il diavolo ha le stesse conseguenze dei patti nella Stanza del Diavolo#Non influisce sui piedistalli in \"Il Vuoto\""}, -- Satanic Bible
	[294] = {"294", "Fagiolo di Lima", "Respinge nemici e proiettili nelle vicinanze#I nemici spinti verso ostacoli prendono 10 danni"}, -- Butter Bean
	[295] = {"295", "Dita Magiche", "Infligge a tutti i nemici x2 dei danni di Isaac +10#{{Coin}} Costa 1 moneta"}, -- Magic Fingers
	[296] = {"296", "Convertitore", "{{Heart}} Converte 1 Cuori Celeste/Nero in 1 Portacuori"}, --Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Scrigno di Pandora", "{{Warning}} MONOUSO {{Warning}} Genera ricompense in base al piano:#S1: 2{{SoulHeart}}; S2: 2{{Bomb}} + 2{{Key}}##{{NoLB}}G1: Oggetto del Boss; G2: G1 + 2{{SoulHeart}#P1: 4{{SoulHeart}}; P2: 20{{Coin}}#U1: 2 Oggetti del Boss#U2: {{Collectible33}} \"La Bibbia\"#???/Il Vuoto: Nulla#Sheol: Oggetto del Diavolo + 1{{BlackHeart}}#Catt.: Oggetto dell'Angelo + 1{{EternalHeart}}#{{NoLB}}Camera Oscura: Sblocca {{Collectible523}} \"Scatola per Traslochi\"; Baule: 1{{Coin}}#Casa: {{Collectible580}} \"Chiave Rossa\""}, -- Pandoràs box
	[300] = {"300", "Ariete", "↑ {{Speed}} +0.25 Velocità#Muoversi con più di 0.85 di Velocità rende Isaac immune ai danni da contatto e infligge ai nemici 25 danni"}, -- Aries
	[307] = {"307", "Capricorno", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.1 Velocità#↑ {{Tears}} +0.5 Rateo di Fuoco#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +1.5 Gittata#+1 {{Coin}} moneta, {{Bomb}} bomba e {{Key}} chiave"}, -- Capricorn
	[308] = {"308", "Acquario", "Isaac lascia una scia di liquido#{{Damage}} Il liquido infligge il 66 % dei danni di Isaac al secondo e riceve gli effetti delle lacrime di Isaac"}, -- Aquarius
	[309] =	{"309", "Pisces", "↑ {{Tears}} +0.5 Rateo di Fuoco#↑ {{Tearsize}} +0.12 Dimensioni Lacrime#Aumenta la spinta delle lacrime"}, --Pisces
	[310] =	{"310", "Mascara di Eva", "↑ {{Damage}} x2 Moltiplicatore Danni#↓ {{Tears}} x0.66 Molitplicatore Lacrime#↓ {{Shotspeed}} -0.5 Velocità Colpi"}, --Eve's Mascara
	[314] = {"314", "Coscione", "↑ {{Heart}} +1 Salute#↓ {{Speed}} -0.4 Velocità#{{Heart}} Cura di 1 cuore#Isaac può distruggere le rocce camminandoci sopra"}, -- Thunder Thighs
	[315] = {"315", "Calamita Strana", "Le lacrime di Isaac attraggono nemici, consumabili e ninnoli#A fine traiettoria delle lacrime l'effetto di attrazione è più forte"}, -- Strange Attractor
	[316] = {"316", "Occhio Maledetto", "Carica una serie di 5 lacrime#{{Warning}} Subire danni a caricamento parziale teletrasporta Isaac in una stanza casuale"}, -- Cursed Eye
	[319] = {"319", "L'Altro Occhio di Caino", "Spara lacrime con gli stessi effetti di Isaac in direzioni casuali#{{Damage}} Infligge il 75% dei danni di Isaac"}, -- Cain's Other Eye
	[320] = {"320", "L'Unico Amico di ???", "Mosca controllabile#Infligge 15 danni da contatto al secondo"}, -- ???'s Only Friend
	[323] = {"323", "Lacrime di Isaac", "Spara 8 lacrime in tutte le direzioni#Le lacrime copiano gli effetti delle lacrime di Isaac +5 danni#Si ricarica sparando lacrime"}, -- Isaac's Tears
	[325] = {"325", "Forbici", "{{Timer}} La testa di Isaac diventa un famiglio stazionario fino all'uscita dalla stanza#Il corpo viene controllato separatamente e schizza lacrime di sangue nella direzione in cui Isaac sta sparando"},
	[326] = {"326", "Alito di Vita", "Tenere premuto il tasto USA svuota la barra di carica#A barra di carica vuota Isaac diventa temporaneamente invincibile#Se invincibile Isaac evoca raggi di luce a contatto con i nemici#Se il danno è bloccato con tempismo perfetto, spara raggi sacri in 4 direzioni e ottiene brevemente uno scudo#{{Warning}} Tenerlo premuto troppo a lungo infligge danni ad Isaac"}, -- Breath of Life
	[328] = {"328", "Il Negativo", "↑ {{Damage}} +1 Danni#Subire danni e finire con mezzo Cuore Rosso o meno danneggia tutti i nemici nella stanza"}, -- The Negative
	[330] = {"330", "Latte di Soia", "↑ {{Tears}} x5.5 Moltiplicatore rateo di fuoco#↓ {{Damage}} x0.2 Moltiplicatore Danni#↓ {{Tearsize}} -0.3 Dimensioni Lacrime#Riduce drasticamente la spinta delle lacrime"}, -- Soy Milk
	[331] = {"331", "Divinità", "↑ {{Damage}} +0.5 Danni#↓ {{Tears}} -0.3 Lacrime#↓ {{Shotspeed}} -0.3 Velocità Colpi#Lacrime a ricerca#{{Damage}} Le lacrime ottengono un'aura che infligge 60 danni al secondo"}, -- Godhead
	[336] = {"336", "Cipolla Morta", "↑ {{Tearsize}} +0.22 Dimensioni Lacrime#↓ {{Range}} -1.5 Gittata#↓ {{Shotspeed}} -0.4 Velocità Colpi#Lacrime penetranti + spettrali"}, -- Dead Onion
	[339] = {"339", "Spilla da Balia", "↑ {{Range}} +2.5 Gittata#↑ {{Shotspeed}} +0.16 Velocità Colpi#{{BlackHeart}} +1 Cuore Nero"}, -- Safety Pin
	[342] = {"342", "Cappello Blu", "↑ {{Heart}} +1 Salute#↑ {{Tears}} +0.7 Lacrime#↓ {{Shotspeed}} -0.16 Velocità Colpi#{{Heart}} Cura di 1 cuore"}, -- Blue Cap
	[344] = {"344", "Scatola di Cerini", "{{BlackHeart}} +1 Cuore Nero#{{Bomb}} Genera 3 bombe#{{Trinket41}} Genera \"Fiammifero\""}, -- Match Book
	[345] = {"345", "Sintolio", "↑ {{Damage}} +1 Danni#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"}, -- Synthoil
	[346] = {"346", "Uno Snack", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- A Snack
	[349] = {"349", "Nichelino di Legno", "{{Coin}} Circa il 59% di chance di generare 1 moneta casuale"}, -- Wooden Nickel
	[352] = {"352", "Cannone di Vetro", "{{Damage} Spara una grossa lacrima penetrante + spettrale che infligge i danni di Isaac x10#{{Warning}} Subire danni mentre viene tenuto:#↓ Rimuove 2 cuori extra di salute#↓ Rompe il cannone per tot stanze#↑ {{Range}} +1.5 Gittata e lascia una scia di sangue fino all'uscita dalla stanza#Il danno extra non può uccidere Isaac#I danni autoinflitti non attivano l'effetto"}, -- Glass Canon
	[354] = {"354", "Crack Jack", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore#{{Trinket}} Genera 1 ninnolo"}, -- Crack Jacks
	[355] = {"355", "Perle di Mamma", "↑ {{Range}} +2.5 Gittata#↑ {{Luck}} +1 Fortuna#{{SoulHeart}} +1 Cuore Celeste"}, -- Mom's Pearl
	[360] = {"360", "Incubo", "Spara lacrime con gli stessi effetti di quelle di Isaac#{{Damage}} Infligge il 75% dei danni di Isaac"}, -- Incubus
	[365] = {"365", "Mosca Smarrita", "Si muove lungo i muri/ostacoli#Infligge 30 danni da contatto al secondo#I nemici nelle vicinanze mirano alla mosca"}, -- Lost Fly
	[366] = {"366", "Bomba a Grappolo", "{{Bomb}} +5 Bombe#Le bombe di Isaac's bombs si sparpagliano in 4-5 piccole bombe"}, -- Scatter Bombs
	[367] = {"367", "Bombe Appiccicose", "{{Bomb}} +5 Bombe#Le bombe di Isaac si attaccano ai nemici e lasciano un liquido bianco rallentante#Uccidere un nemico con una bomba genera dei ragni blu"}, -- Sticky Bombs
	[368] =	{"368", "Epifora", "↑ {{Tears}} Sparare verso una direzione aumenta gradualmente il rateo di fuoco fino al 200%"}, -- Epiphora
	[369] = {"369", "Continuum", "↑ {{Range}} +3 Gittata#Lacrime spettrali#Le lacrime possono passare attraverso un lato dello schermo e uscire dall'altro"}, -- Continuum
	[370] = {"370", "Sig. Bambolotto", "↑ {{Tears}} +0.7 Lacrime#↑ {{Range}} +2.5 Gittata#{{UnknownHeart}} Genera 3 cuori casuali"}, -- Mr. Dolly
	[374] = {"374", "Luce Santa", "10% di chance di sparare lacrime sacre, che quando colpiscono generano un raggio di luce#{{Luck}} 50% di chance con 9 di Fortuna#{{Damage}} Il raggio infligge i danni di Isaac x3"}, -- Holy Light
	[375] = {"375", "Cascospite", "Conferisce immunità alle esplosioni e alla caduta di proiettili#25% di chance di riflettere proiettili nemici"}, -- Host hat
	[376] = {"376", "Rifornimento", "Comprare oggetti al Negozio lo rifornisce istantaneamente#Il prezzo degli oggetti riforniti aumenta ad ogni istanza"}, -- Restock
	[380] = {"380", "Pay To Play", "{{Coin}} +5 Monete#Blocchi, porte e bauli chiusi a chiave vanno aperti con le monete al posto delle chiavi"}, -- Pay to Play
	[382] = {"382", "Sfera Amikè", "Può essere lanciata ai nemici per catturarli#Usare l'oggetto dopo aver catturato un nemico lo genera come un alleato amichevole#Camminare sopra la sfera dopo la cattura ricarica istantaneamente l'oggetto"}, -- Friendly Ball
	[384] = {"384", "Mini Gastrina", "{{Chargeable}} Si getta e rimbalza per la stanza ad una velocità che dipende dalla quantità di carica#Infligge dai 5 ai 25 danni da contatto al secondo in base alla velocità"}, -- Lil Gurdy
	[389] = {"389", "Sacco di Rune", "{{Rune}} Genera 1 runa o pietra dell'anima casuale ogni 7-8 stanze"}, -- Rune Bag
	[391] = {"391", "Tradimento", "I nemici possono colpirsi a vicenda con i loro proiettili e iniziare a rivoltarsi tra di loro"}, -- Betrayal
	[393] = {"393", "Bacio del Serpente", "{{Poison}} 15% di chance di sparare lacrime velenose#{{Poison}} Al contatto con i nemici li avvelena#{{BlackHeart}} I nemici avvelenati al contatto una volta morti hanno una chance di lasciare 1 Cuore Nero"}, -- Serpent`s Kiss
	[394] = {"394", "Mirino", "↑ {{Tears}} +0.7 Lacrime#↑ {{Range}} +3 Gittata#Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno#Anche i famigli sparano verso il bersaglio#Premendo il tasto di rilascio ({{ButtonRT}}) si può smettere di sparare, resettando la posizione del mirino"}, -- Marked
	[395] = {"395", "Tecn. X", "Le lacrime di Isaac vengono rimpiazzate da un anello laser caricabile#Le dimensioni e i danni dell'anello aumentano in base alla quantità di carica fino al 100%"}, -- Tech X
	[397] = {"397", "Raggio Traente", "↑ {{Tears}} +1 Rateo di Fuoco#↑ {{Range}} +2.5 Gittata#↑ {{Shotspeed}} +0.16 Velocità Colpi#Le lacrime di Isaac si muovono sempre lungo un raggio di luce di fronte a lui"}, -- Tractor Beam
	[399] = {"399", "Fauci dell'Oblio", "{{Chargeable}} Sparare lacrime per 2.35 secondi e rilasciare il tasto di fuoco crea un anello di zolfo fuso nero attorno ad Isaac"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Probabilità di sparare lacrime appiccicose esplosive#Lacrime esplosive di tanto in tanto fanno i tuoi danni"}, -- Explosivo
	[404] = {"404", "Bebè Scoreggione", "Blocca i proiettili#Se colpito, 10% di chance di scorreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici#Le scorregge infliggono 5-6 danni"}, -- Farting Baby
	[405] = {"405", "Bug Rompigioco", "{{Throwable}} Lanciabile (doppia premuta del tasto di sparo)#Rilancia i nemici e i consumabili con cui entra a contatto"}, -- GB Bug
	[407] = {"407", "Purezza", "↑ In base al colore dell'aura potenzia una delle statistiche di Isaac#Subire danni rimuove l'effetto, e ne dà uno nuovo nella stanza successiva#{{ColorYellow}} Giallo {{CR}} = ↑ {{Speed}} +0.5 Velocità#{{ColorBlue}}Blu{{CR}} = ↑ {{Tears}} +2 Rateo di Fuoco#{{ColorRed}}Rosso{{CR}} = ↑ {{Damage}} +4 Danni#{{ColorOrange}}Arancione{{CR}} = ↑ {{Range}} +3 Gittata"}, -- Purity
	[408] = {"408", "Athame", "25% di chance che si formi un anello di zolfo fuso nero attorno ai nemici uccisi#{{Luck}} +2.5% di chance per Fortuna"}, -- Athame
	[415] = {"415", "Corona di Luce", "{{SoulHeart}} +2 Cuori Celesti#Se Isaac non ha Portacuori danneggiati:#↑ {{Damage}} x2 Moltiplicatore Danni#↓ {{Shotspeed}} -0.3 Velocità Colpi#Subire danni rimuove l'effetto per la stanza"}, -- Crown Of Light
	[416] = {"416", "Tasche Profonde", "{{Coin}} Se completare una stanza non rende alcuna ricompensa, genera 1-3 monete#{{Coin}} Aumenta il massimale di monete a 999"}, -- Deep Pockets
	[417] = {"417", "Succuba", "Rimbalza per la stanza circondata da un'aura danneggiante che infligge 7.5-10 danni al secondo#↑ {{Damage}} x1.5 Moltiplicatore Danni se dentro l'aura"}, -- Succubus
	[419] = {"419", "Teletrasporto 2.0", "Teletrasporta Isaac in una stanza non completata#Gerarchia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Fagiolo Rosso", "{{Charm}} Ammalia tutti i nemici a distanza ravvicinata"}, -- Kidney Bean
	[422] = {"422", "Clessidra Luminosa", "Riporta Isaac nella stanza precedente e annulla tutte le azioni svolte nella stanza in cui l'oggetto è stato usato#Il reset può essere usato tre volte per piano#{{Collectible66}} Esauriti i reset agisce come \"La Clessidra\", rallentando i nemici per 8 secondi"}, -- Glowing Hourglass
	[426] = {"426", "Fan Ossessionato", "Riproduce i movimenti di Isaac con un delay di 0.66 secondi#Infligge 30 danni al secondo"}, -- Obsessed Fan
	[430] = {"430", "Papà Mosca", "Riproduce i movimenti di Isaac con un delay di 0.66 secondi#Spara lacrime che infliggono i danni di Isaac ai nemici nelle vicinanze"}, -- papa Fly
	[431] = {"431", "Bebè Multidimensionale", "Riproduce i movimenti di Isaac con un delay di 0.66 secondi#Le lacrime che gli passano attraverso sono raddoppiate e ottengono Più Gittata e Velocità Colpi"}, -- Multidimensional Baby
	[432] = {"432", "Bombe Glitter", "{{Bomb}} +5 Bombe#{{Charm}} Le bombe di Isaac quando esplodono hanno il 63% di chance di lasciare un consumabile casuale e il 15% di chance di ammaliare i nemici#La chance di generare 1 consumabile diminuisce dell'1% per ogni oggetto generato nel piano"}, -- Glitter Bombs
	[433] = {"433", "La mia Ombra", "Isaac viene seguito da una piccola ombra #{{Timer}} Quando un nemico tocca l'ombra viene generato un Furore nero amichevole fino all'uscita dalla stanza#Il Furore infligge 8.7 danni a colpo"}, -- My Shadow
	[437] = {"437", "D7", "Ripristina la stanza e resuscita tutti i nemici#Può essere usato per ottenere più ricompense per completamento stanza da una singola stanza"}, -- D7
	[440] = {"440", "Calcolo Renale", "Isaac occasionalmente smette di sparare e carica un attacco che rilascia uno scroscio di lacrime e un calcolo renale"}, -- Kidney Stone
	[442] = {"442", "Corona del Principe delle Tenebre", "Se si rimane con 1 Cuore Rosso pieno:#↑ {{Tears}} +0.75 Lacrime#↑ {{Range}} +1.5 Gittata#↑ {{Shotspeed}} +0.2 Velocità Colpi"}, -- Dark Princes Crown
	[444] = {"444", "Matita", "Ogni 15 lacrime Isaac spara un ammasso di lacrime"}, -- Lead Pencil
	[448] = {"448", "Scheggia di Vetro", "Una volta subiti danni:#{{Heart}} 25% di chance di generare 1 Cuore Rosso#{{BleedingOut}} Isaac sanguina, sprizzando lacrime nella direzione verso cui sta sparando#Il sanguinamento infligge mezzo Cuore Rosso di danni ogni 20 secondi#Il sanguinamento termina se 1 Cuore Rosso viene curato, tutti i Cuori Rossi vengono svuotati, o se il prossimo danno ucciderebbe Isaac"}, -- Shard of Glass
	[450] = {"450", "Occhio di Avarizia", "Ogni 20 lacrime, Isaac spara una lacrima-moneta che infligge x1.5 dei danni +10#I nemici colpiti dalla moneta vengono pietrificati e tramutati in oro#{{Coin}} Un nemico dorato ucciso butta a terra 1-3 monete#{{Warning}} Sparare una lacrima-moneta costa 1 moneta"}, -- Eye of Greed
	[451] = {"451", "Tappetino del Cartomante", "{{Card}} Genera 1 carta#{{Card}} Gli effetti dei tarocchi sono raddoppiati o potenziati"}, -- Tarot Cloth
	[453] = {"453", "Frattura Esposta", "↑ {{Range}} +1.5 Gittata#Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa"}, -- Compound Fracture
	[455] = {"455", "Moneta Perduta di Papà", "↑ {{Range}} +2.5 Gittata#{{Luck}} Genera un Penny Fortunato"},
	[456] = {"456", "Spuntino di Mezzanotte", "↑ {{Heart}} +1 Salute#{{Heart}} Cura di 1 cuore"}, -- Midnight Snack
	[459] = {"459", "Sinusite", "20% di chance di sparare una caccola appiccicosa#{{Damage}} Le caccole infliggono i danni di Isaac una volta al secondo e rimangono incollate per 60 secondi#{{Luck}} Non è influenzato dalla Fortuna"}, -- Sinus Infection
	[462] = {"462", "Occhio di Belial", "↑ {{Range}} +1.5 Gittata#Lacrime penetranti#Colpire un nemico rende la lacrima a ricerca e ne raddoppia i danni"}, -- Eye of Belial
	[464] = {"464", "Glifo dell'Equilibrio", "{{SoulHeart}} +2 Cuori Celesti#Gli oggetti lasciati dalle ricompense per completamento stanza e dai nemici campioni diventano qualsiasi consumabile di cui Isaac ha più bisogno"}, -- Glyph of Balance
	[468] = {"468", "Ombroso", "Segue i movimenti di Isaac con un delay di 1 secondo#Infligge 75 danni da contatto al secondo#Dopo aver inferto 666 danni, viene assorbito da Isaac, aumentando i suoi danni da contatto"}, -- Shade
	[472] = {"472", "Re Bebè", "È seguito dagli altri famigli, i quali sparano automaticamente ai nemici#Quando Isaac spara smette di muoversi#Quando Isaac smette di sparare si teletrasporta da lui"}, -- King Baby
	[474] = {"474", "Cannone di Vetro Infranto", "Usare l'oggetto lo riconverte in \"Cannone di Vetro\""}, -- broken Glass Canon
	[476] =	{"476", "D1", "Raddoppia 1 consumabile casuale nella stanza#I consumabili duplicati potrebbero non essere identici agli originali"}, -- D1
	[477] = {"477", "Vuoto", "Consuma tutti i piedistalli nella stanza#Oggetti attivi: i loro effetti si attivano ad ogni uso futuro di \"Vuoto\"#↑ Gli oggetti passivi conferiscono due aumenti a statistiche casuali"}, -- Void
	[487] = {"487", "Pelapatate", "{{EmptyHeart}} Rimuove 1 Portacuori per:#↑ {{Damage}} +0.2 Danni#{{Collectible73}} Un \"Cubo di Carne\"#{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Range}} +1.5 Gittata#{{Collectible214}} Lasci una scia di sangue"}, -- Potato Peeler
	[489] = {"489", "D Infinito", "Può operare come qualsiasi dado (eccetto {{Collectible723}} \"Dado Decrementale\") con il tasto di rilascio ({{ButtonRT}})#I tempi di carica dipendono dall'ultimo dado usato e si aggiorna ad ogni uso"}, -- D Infinity
	[491] = {"491", "Bebè Acido", "{{Pill}} Genera una pillola casuale ogni 7 stanze#{{Poison}} Usare una pillola avvelena i nemici nella stanza"}, -- Acid Baby
	[493] = {"493", "Adrenalina", "↑ {{Damage}} Più danni per ogni Portacuori vuoto#Più Portacuori vuoti ci sono, maggiore sarà il bonus"}, -- Adrenaline
	[494] = {"494", "Scala di Giacobbe", "All'impatto le lacrime generano una scintilla elettrica#Le scintille infliggono la metà dei danni di Isaac#Le scintille possono estendersi fino a 4 nemici"}, -- Jacobs Ladder
	[495] = {"495", "Ghost Pepper", "8% di chance di sparare una fiamma blu che blocca i proiettili nemici e infligge danni da contatto#{{Luck}} 50% chance con 10 di Fortuna#La fiamma si rimpiccolisce e sparisce dopo 2 secondi"}, -- Ghost Pepper
	[496] = {"496", "Euthanasia", "3.33% di chance di sparare un ago#{{Luck}} 25% di chance con 13 di Fortuna#Gli aghi uccidono istantaneamente i nemici normali, scoppiando in 10 lacrime#{{Damage}} Contro i boss gli aghi infliggono i danni di Isaac x3"}, -- Euthanasia
	[497] = {"497", "Camo Undies", "{{Confusion}} Entrare in una stanza cammuffa Isaac e confonde tutti i nemici finché non spara#↑ {{Speed}} +0.5 Velocità se nascosto#Smascherarsi infligge danni attorno ad Isaac e conferisce molto brevemente più lacrime e danni"}, -- Camo Undies
	[501] = {"501", "Greed's Gullet", "{{Heart}} +1 Portacuori per ogni 25 monete in possesso di Isaac#{{Collectible416}} Dopo 99 monete +1 Portacuori per ogni 100 monete"}, -- Greed's Gullet
	[503] = {"503", "Piccolo Corno", "5% di chance di sparare lacrime che evocano una mano di Grande Corno#{{Luck}} 20% di chance con 15 di Fortuna#La mano uccide istantaneamente  i nemici e infligge 36 danni ai boss#Isaac infligge 7 danni da contatto al secondo"}, -- Little Horn
	[504] = {"504", "Pepita Marrone", "Genera una mosca torretta che spara ai nemici#Ogni colpo infligge 3.5 danni"}, -- Brown Nugget
	[506] = {"506", "Pugnalatore", "{{BleedingOut}} Colpire un nemico da dietro infligge il doppio dei danni e causa sanguinamento ai nemici, i quali mentre si muovono lasciano del liquido e prendono danni"}, -- Backstabber
	[507] = {"507", "Cannuccia Appuntita", "{{Damage}} Infligge a tutti i nemici i danni di Isaac +10% della salute massima di ciascun nemico#{{HalfHeart}} Infliggere danni con la cannuccia può generare mezzi cuori"}, -- Sharp Straw
	[508] = {"508", "Rasoio di Mamma", "{{BleedingOut}} Orbitale ceh causa sanguinamento, danneggiando i nemici mentre si muovono#{{Damage}} Infligge i danni di Isaac x1.5 al secondo"}, -- Mom's Razor
	[509] = {"509", "Occhio Insanguinato", "Orbitale che ogni 0.33 secondi spara una lacrima ai nemici nelle vicinanze#Infligge 3.5 danni a lacrima#Infligge 20 danni da contatto al secondo"}, -- Bloodshot Eye
	[514] = {"514", "Modem Sfasciato", "Fa sì che alcuni nemici o proiettili si blocchino ad intermittenza per poco tempo#I proiettili bloccati spariscono#25% di chance di raddoppiare le ricompense di completamento stanza"}, -- Broken Modem
	[517] = {"517", "Bombe Leste", "{{Bomb}} +7 Bome#Rimuove il delay del piazzamento delle bombe#Le bombe non si respingono a vicenda"}, -- Fast Bombs
	[523] = {"523", "Scatola per Traslochi", "Conserva fino a 10 consumabili e oggetti della stanza corrente#Usare di nuovo l'oggetto butta a terra tutto nel piano#Permette ad Isaac di spostare tra le stanze la sua roba"}, -- Moving Box
	[524] = {"524", "Tecnologia Zero", "Le lacrime di Isaac sono connesse tra loro da raggi d'elettricità#I raggi infliggono i danni di Isaac x4.5 al secondo"}, -- Technology Zero
	[531] = {"531", "Emolacria", "↑ {{Damage}} +1 Danni#↑ {{Damage}} x1.31 Moltiplicatore Danni#↓ {{Tears}} x0.33 Moltiplicatore rateo di fuoco#↓ {{Range}} x0.8 Moltiplicatore Gittata#Le lacrime di Isaac volano in un arco e all'impatto scoppiano in laccrime più piccole"}, -- Haemolacria
	[543] = {"543", "Terra Consacrata", "Subire danni genera una cacca bianca#Dentro l'aura della cacca:#↑ {{Tears}} x2.5 Moltiplicatore rateo di fuoco#↑ {{Damage}} x1.2 Moltiplicatore Danni#Lacrime a ricerca#Chance di bloccare i danni"}, -- Hallowed Ground
	[549] =	{"549", "Osteogenesi Imperfetta", "{{EmptyBoneHeart}} Rimpiazza tutti i Cuori Rossi di Isaac con 6 Cuori Ossei vuoti#Se si perde 1 Cuore Osseo:#↑ {{Tears}} +0.4 Rateo di Fuoco#Spara 8 lacrime ossute in tutte le direzioni"}, -- Brittle Bones
	[552] = {"552", "Pala di Mamma", "Genera una botola per il prossimo piano#{{LadderRoom}} Genera un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\""}, -- Mom's Shovel
	[553] = {"553", "Mucormicosi", "25% di chance di sparare una lacrima di spore adesiva#{{Luck}} Non è influenzato dalla Fortuna#{{Poison}} Le spore scoppiano dopo 2.5 secondi, infliggendo danni, avvelenando i nemici nelle vicinanze e rilasciando altre spore"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Spaventa i nemici in una piccola area attorno ad Isaac"}, -- 2Spooky
	[555] = {"555", "Lametta Dorata", "{{Coin}} +5 monete quando viene raccolto#{{Timer}} Pagando 5 {{Coin}} monete conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +1.2 Danni"}, -- Golden Razor
	[556] = {"556", "Zolfo", "{{Timer}} {{Collectible118}} \"Zolfo Fuso\" fino all'uscita dalla stanza"}, -- Sulfur
	[557] = {"557", "Biscotto della Fortuna", "Conferisce una delle seguenti ricompense:#Un bigliettino#{{SoulHeart}} 1 Cuore Celeste#{{Rune}} 1 runa o pietra dell'anima#{{Card}} 1 tarocco#{{Trinket}} 1 ninnolo"}, -- Fortune Cookie
	[558] = {"558", "Obbrobrio", "Chance di sparare 1-3 lacrime extra in direzioni casuali#{{Luck}} Non è influenzato dalla Fortuna"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Dà ripetutamente la scossa ai nemici nelle vicinanze#{{Damage}} L'elettricità infligge fino ai danni di Isaac x3.5 al secondo#Le scintille possono estendersi fino a 4 nemici"}, -- 120 Volt
	[560] = {"560", "Fa Male", "{{Timer}} Mentre si subiscono danni, conferisce fino all'uscita dalla stanza:#↑ {{Tears}} +1.2 Rateo di Fuoco al primo colpo#↑ {{Tears}} +0.4 Rateo di Fuoco per ogni colpo aggiuntivo#Rilascia un anello di 10 lacrime attorno ad Isaac"}, -- It Hurts
	[561] = {"561", "Latte di Mandorla", "↑ {{Tears}} x4 Moltiplicatore rateo di fuoco#↓ {{Damage}} x0.3 Moltiplicatore Danni#↓ {{Tearsize}} -0.16 Dimensioni Lacrime#Le lacrime ottengono effetti dei vermi ninnoli e alcuni effetti di oggetti"}, -- Almond Milk
	[562] = {"562", "Caduto in Basso", "↑ Previene il calo delle statistiche per il resto della partita"}, -- Rock Bottom
	[563] = {"563", "Bombe Frufru", "{{Bomb}} +5 Bombe#Le bombe di Isaac esplodono con effetti casuali"}, -- Nancy Bombs
	[564] = {"564", "Una Saponetta", "↑ {{Tears}} +0.5 Lacrime#↑ {{Shotspeed}} +0.2 Velocità Colpi"}, -- A Bar of Soap
	[565] = {"565", "Cucciolo Sanguinario", "Insegue i nemici#Dopo aver ucciso 15 nemici, infligge più danni, genera un mezzo Cuore Rosso ogni 10 uccisioni, ma cerca di ferire Isaac#Dopo aver ucciso 40 nemici, infligge ancora più danni, genera Cuori Rossi, e può distruggere rocce#Infliggergli abbastanza danni lo riporta alal sua prima fase"}, -- Blood Puppy
	[566] = {"566", "Acchiappasogni", "{{HalfSoulHeart}} +1 Mezzo Cuore Celeste all'ingresso in un nuovo piano#Gli incubi nelle transizioni tra i livelli rivelano il boss e l'oggetto nella Stanza dei Tesori del piano successivo"}, -- Dream Catcher
	[567] = {"567", "Cero Pasquale", "↑ {{Tears}} Completare una stanza senza subire danni conferisce +0.4 Rateo di Fuoco#Si massimizza a +2 Rateo di Fuoco {{ColorSilver}}(5 stanze)"}, -- Paschal Candle
	[568] = {"568", "Intervento Divino", "Alla doppia premuta del tasto di sparo viene creato uno scudo#Lo scudo dura 1 secondo, spingendo via i nemici e riflettendo proiettili e laser"}, -- Divine Intervention
	[569] = {"569", "Patto di Sangue", "{{Warning}} Entrare in un nuovo piano prosciuga tutti i Cuori Rossi di Isaac, ma conferisce più velocità e danni per ogni cuore perso#Ogni mezzo cuore perso conta come un colpo per gli effetti di oggetti che richiedono di subire danni"}, -- Blood Oath
	[570] = {"570", "Biscotto di Pongo", "Ciascuna lacrima di Isaac ha un colore e effetto di stato diverso"}, -- Playdough Cookie
	[571] = {"571", "Calzini Orfani", "↑ {{Speed}} +0.3 Velocità#↑ {{SoulHeart}} +2 Cuori Celesti#Immunità ai liquidi e alle spine per terra"}, -- Orphan Socks
	[572] = {"572", "Occhio dell'Occulto", "↑ {{Damage}} +1 Danni#↑ {{Range}} +2 Gittata#↓ {{Shotspeed}} -0.16 Velocità Colpi#Le lacrime di Isaac sono controllabili a mezz'aria"}, -- Eye of the Occult
	[573] = {"573", "Cuore Immacolato", "↑ {{Heart}} +1 Salute#↑ {{Damage}} x1.2 Moltiplicatore Danni#{{Heart}} Salute al massimo#20% di chance di sparare una lacrima spettrale orbitante extra"}, -- Immaculate Heart
	[574] = {"574", "Ostensorio", "Isaac è circondato da un'aura danneggiante#L'aura infligge più danni ai nemici quanto più sono vicini ad Isaac"}, -- Monstrance
	[575] = {"575", "L'Intruso", "{{Slow}} Si rintana nella testa di Isaac e spara 4 lacrime rallentanti extra che infliggono 1.5 danni#Se si subiscono danni il ragno può uscire dalla testa e inseguire i nemici"}, -- The Intruder
	[576] = {"576", "Mente Sporca", "Tutte le Cacchine nemiche sono amichevoli#Distruggere la cacca genera 1-4 Cacchine#La tipologia di Cacchina dipende dalla tipologia di cacca#Le rocce possono essere rimpiazzate da cacca"}, -- Dirty Mind
	[577] = {"577", "Damocle", "{{Warning}} MONOUSO {{Warning}}#Una spada pende al di sopra della testa di Isaac, raddoppiando tutti i piedistalli#Non raddoppia gli oggetti con un prezzo o provenienti dai bauli#{{Warning}} Dopo aver subito qualsiasi danno, la spada ha ad ogni frame una chance estremamente bassa di uccidere Isaac#Gli effetti d'invincibilità possono prevenire la morte"}, -- Damocles
	[578] = {"578", "Limonata Gratis", "Crea una grande pozza di liquido giallo#TIl liquido infligge 24 damage al secondo"}, -- Free Lemonade
	[579] = {"579", "Spada dello Spirito", "Isaac agita una spada al posto di sparare lacrime#{{Damage}} La spada infligge x3 dei danni di Isaac +3.5 e viene gitata con la stessa velocità con cui viene premuto il tasto di fuoco#{{Chargeable}} Caricarla effettua un attacco rotante e spara un proiettile#Agitare la spada con la salute al massimo le fa sparare proiettili#{{Tears}} La statistica delle Lacrime influisce sui tempi di carica e ogni quanto viene sparato un proiettile mentre la salute è al massimo"}, -- Spirit Sword
	[580] = {"580", "Chiave Rossa", "Crea una stanza rossa adiacente ad una stanza normale, indicata dalla sagoma di una porta#Le Stanze Rosse possono essere stanze speciali#{{ErrorRoom}} Entrare in una stanza rossa al di fuori della mappa 13x13 del piano teletrasporta Isaac nella Stanza I AM ERROR"}, -- Red Key
	[581] = {"581", "Mosca Psichica", "Insegue e devia i proiettili nemici#Infligge 15 danni da contatto al secondo"}, -- Psy Fly
	[582] = {"582", "Fungo Allucinogeno", "↑ {{Tears}} +0.75 Rateo di Fuoco#↓ {{Speed}} -0.03 Velocità#Distorce lo schermo#Ad ogni uso impiega più tempo a caricarsi#Lasciare le stanze o completarle ne riduce gli effetti"}, -- Wavy Cap
	[583] = {"583", "Razzo in una Giara", "{{Bomb}} +5 Bombe#Piazzare una bomba mentre si spara verso una direzione fa invece partire un razzo"}, -- Rocket in a Jar
	[584] = {"584", "Libro delle Virtù", "{{AngelChance}} +12.5% di chance di una Stanza dell'Angelo mentre viene tenuto#Genera come famiglio 1 fiammella orbitale che spara lacrime spettrali ma che può venire eliminata#Può essere combinata con un secondo oggetto attivo per creare fiammelle speciali#{{AngelRoom}} Trasforma la prima Stanza del Diavolo in una Stanza dell'Angelo#{{AngelRoom}} Permette che, dopo aver stretto un patto con il diavolo, si generi una Stanza dell'Angelo"}, -- Book of Virtues
	[585] = {"585", "Scatola di Alabastro", "Va caricata raccogliendo Cuori Celesti, dopodiché genera:#{{SoulHeart}} 3 Cuori Celesti#{{AngelRoom}} 2 oggetti della Stanza dell'Angelo#{{DevilRoom}} Se in precedenza si ha stretto un patto con il diavolo, genera solo 2 Cuori Celesti e 1 oggetto della Stanza dell'Angelo"}, -- Alabaster Box
	[586] = {"586", "La Scalinata", "Genera una scala nella prima stanza di ogni piano che porta ad un {{AngelRoom}} Negozio speciale della Stanza dell'Angelo, con oggetti e consumabili"}, -- The Stairway
	[587] = {"587", "<Item does not exist>"},
	[588] = {"588", "Sol", "{{BossRoom}} Rivela la posizione della Stanza del Boss#{{Timer}} Quando il boss del piano viene sconfitto, conferisce fino all'uscita dal piano:#↑ {{Damage}} +3 Danni#↑ {{Luck}} +1 Fortuna#{{Card20}} L'effetto di \"XIX - Il Sole\"#{{Battery}} Ricarica pienamente l'oggetto attivo#{{CurseBlind}} Rimuove tutte le maledizioni"}, -- Sol
	[589] = {"589", "Luna", "Aggiunge una {{SecretRoom}} Stanza Segreta e {{SuperSecretRoom}} Super Segreta extra ad ogni piano#Rivela una Stanza Segreta ad ogni piano#{{Timer}} Le Stanze Segrete contengono un fascio di luce che conferisce fino all'uscita dal piano:#↑ {{Tears}} +0.5 Rateo di Fuoco#↑ {{Tears}} +0.5 Rateo di Fuoco per ogni fascio nel piano#{{HalfSoulHeart}} Mezzo Cuore Celeste"}, -- Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} +0.4 Velocità#Molte porte rimangono permanentemente aperte"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 Salute#{{Heart}} Cura 1 cuore#{{Charm}} Ammalia i nemici nelle vicinanze"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} +1 Danni#Rimpiazza le lacrime di Isaac con delle rocce#Le rocce infliggono danni variabili, possono distruggere ostacoli e hanno la spinta aumentata"}, -- Terra
	[593] = {"593", "Mars", "Ad una doppia premuta del tasto di movimento Isaac effettua uno scatto#{{Damage}} Durante lo scatto Isaac è invincibile e infligge x4 dei suoi danni +8#{{Timer}} Tempo di attesa di 3 secondi"}, -- Mars
	[594] = {"594", "Iupiter", "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.3 Velocità#{{HalfHeart}} Cura di mezzo cuore#{{Speed}} Mentre rimane fermo la velocità cresce fino a +0.5#{{Poison}} Muoversi rilascia nubi velenose#{{Poison}} Immunità al veleno"}, -- Jupiter
	[595] = {"595", "Saturnus", "Entrare in una stanza fa sì che 7 lacrime orbitino attorno ad Isaac#Le lacrime durano 13 secondi e infliggono x1.5 dei danni di Isaac +5#I proiettili nemici hanno una chance di orbitare attorno ad Isaac"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac spara lacrime di ghiaccio che congelano i nemici una volta morti#Toccare un nemico congelato lo fa scivolare via ed esplodere in 10 schegge di ghiaccio"}, -- Uranus
	[597] = {"597", "Neptunus", "{{Tears}} Non sparare accumula un bonus alle Lacrime per 3 secondi#Mentre Isaac spara il bonus di lacrime decresce"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0.7 Lacrime#Isaac viene drasticamente rimpicciolito, permettendogli di passare tra gli oggetti#I proiettili possono passare sopra di lui"}, -- Pluto
	[599] = {"599", "Testa Voodoo", "{{CursedRoom}} Genera una Stanza Maledetta aggiuntiva ad ogni piano#Migliora i layout e le ricompense delle Stanze Maledette#{{Coin}} Genera 1 moneta in ogni Stanza Maledetta"}, -- Voodoo Head
	[600] = {"600", "Collirio", "↑ {{Tears}} x1.4 Moltiplicatore del rateo di fuoco dell'occhio sinistro"}, -- Eye Drops
	[601] = {"601", "Atto di Dolore", "↑ {{Tears}} +0.7 Lacrime#{{EternalHeart}} +1 Cuore Eterno#{{AngelChance}} Fa sì  che le Stanze dell'Angelo si generino anche dopo aver stretto un patto con il diavolo#Subire danni ai Cuori Rossi non riduce drasticamente le chance di una Stanza del Diavolo/dell'Angelo"}, -- Act of Contrition
	[602] = {"602", "Tessera Membri", "{{Shop}} Apre una botola in ogni Negozio#La botola porta ad un Negozio sotterraneo che vende ninnoli, rune, carte, cuori speciali e oggetti di qualsiasi categoria"}, -- Member Card
	[603] = {"603", "Accumulatore", "{{Battery}} Genera 2-4 pile#{{Battery}} Ricarica pienamente l'oggetto attivo"}, -- Battery Pack
	[604] = {"604", "Braccialetto di Mamma", "Permette ad Isaac di sollevare e lanciare rocce, TNT, cacche, Cacchine amichevoli, Ospiti e altri ostacoli#Permette di portarli in altre stanze"}, -- Mom's Bracelet
	[605] = {"605", "Porzionatore", "↑ {{Damage}} x1.35 Moltiplicatore danni dell'occhio destro#{{Timer}} Evoca fino all'uscita dalla stanza un famiglio di \"Guardone\" che lascia una scia di sangue"}, -- The Scooper
	[606] = {"606", "Squarcio Oculare", "5% di chance di sparare lacrime che creano squarci nel punto in cui atterrano#{{Luck}} 20% di chance con 15 di Fortuna#Gli squarci infliggono i danni di Isaac x3 al secondo e traggono a sé nemici, consumabili e proiettili nelle vicinanze"}, -- Ocular Rift
	[607] = {"607", "Bebè Bollito", "Spara scrosci caotici di lacrime in tutte le direzioni#Infligge 3.5 o 5.3 danni a lacrima"}, -- Boiled Baby
	[608] = {"608", "Bebè Ghiacciato", "Spara lacrime pietrificanti#{{Freezing}} I nemici si congelano quando vengono uccisi"}, -- Freezer Baby
	[609] = {"609", "D6 Eterno", "Rilancia tutti i piedistalli nella stanza#Ha il 25% di chance di cancellare gli oggetti invece di rilanciarli"}, -- Eternal D6
	[610] = {"610", "Gabbia per Uccelli", "Si lancia sul primo nemico che infligge danni ad Isaac#Infligge 45 damage e rilascia una scossa rocciosa#In seguito insegue i nemici, infliggendo 6.5 danni da contatto al secondo"}, -- Bird Cage
	[611] = {"611", "Laringe", "Isaac urla, danneggiando e respingendo i nemici nelle vicinanze#L'urlo è più forte quanto più l'oggetto ha cariche"}, -- Larynx
	[612] = {"612", "Anima Smarrita", "Muore in un colpo e resuscita all'inizio del piano successivo#Se arriva in vita al piano successivo, può generare:#{{SoulHeart}} 3 Cuori Celesti#{{EternalHeart}} 2 Cuori Eterni#{{TreasureRoom}} Un oggetto della Stanza dei Tesori#{{AngelRoom}} Un oggetto della Stanza dell'Angelo"}, -- Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Bombe di Sangue", "↑ {{Heart}} +1 Salute#{{Heart}} Cura 4 cuori#{{HalfHeart}} Se Isaac non ha bombe, una può essere piazzata al costo di mezzo cuore#Le bombe di Isaac lasciano sangue"}, -- Blood Bombs
	[615] = {"615", "Mini Chiappotte", "Devia un nemico o proiettile poco prima che possa colpire Isaac#Chance di deviare proiettili nelle sue vicinanze#Una volta deviato qualcosa deve essere toccato per venire riattivato"}, -- Lil Dumpy
	[616] = {"616", "Peperoncino nell'Occhio", "8% di chance di sparare una fiamma rossa che blocca i proiettili nemici e infligge danni da contatto#{{Luck}} 50% di chance con 10 di Fortuna#Le fiamme spariscono dopo 10 secondi, o dopo aver bloccato i proiettili o inferto danni per 4 volte"}, -- Bird's Eye
	[617] = {"617", "Magnetite", "{{Magnetize}} 17% chance di sparare lacrime magnetizzanti#{{Luck}} 100% di chance con 5 di Fortuna#I nemici magnetizzati attraggono consumabili, proiettili e nemici nelle vicinanze"}, -- Lodestone
	[618] = {"618", "Pomodoro Marcio", "{{Bait}} 17% di chance di sparare lacrime che marchiano i nemici#{{Luck}} 100% di chance con 5 di Fortuna#I nemici marchiati vengono bersagliati dagli altri nemici"}, -- Rotten Tomato
	[619] = {"619", "Primogenitura", "Ha un effetto diverso per ciascun personaggio"}, -- Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Stufato Rosso", "↑ {{Damage}} +21.6 Danni#{{Heart}} Salute al massimo#L'aumento ai Danni svanisce dopo 3 minuti#Uccidere nemici mentre l'effetto è attivo lo estende"}, -- Red Stew
	[622] = {"622", "Genesi", "{{Warning}} MONOUSO {{Warning}}#Rimuove tutti gli oggetti e i consumabili di Isaac#Teletrasporta Isaac in una camera da letto con consumabili e bauli#Per ogni oggetto rimosso, Isaac può scegliere tra 3 oggetti della stessa categoria#Lasciare la stanza porta Isaac al piano successivo"}, -- Genesis
	[623] = {"623", "Chiave Puntuta", "{{Key}} +5 Chiavi#Lancia una delle chiavi di Isaac nella direzione in cui spara#Le chiavi lanciate infliggono danni, distruggono ostacoli, e aprono porte#I nemici uccisi dalle chiavi possono generare i contenuti di un baule, oggetti inclusi"}, -- Sharp Key
	[624] = {"624", "Bustina di Espansione", "{{Card}} Genera 5 carte casuali"}, -- Booster Pack
	[625] = {"625", "Mega Fungo", "Ingigantisce Isaac e conferisce:#↑ {{Damage}} x4 Moltiplicatore Danni#↑ {{Range}} +2 Gittata#↓ {{Tears}} -1.9 Lacrime#Invincibilità#L'abilità di distruggere nemici e ostacoli#{{Timer}} Dura 30 secondi e persiste tra le stanze e i piani"}, -- Mega Mush
	[626] = {"626", "Pezzo del Coltello 1", "Se unito a {{Collectible627}} \"Pezzo del Coltello 2\" diventa un coltello lanciabile#Il coltello può aprire una porta fatta di carne"}, -- Knife Piece 1
	[627] = {"627", "Pezzo del Coltello 2", "Se unito a {{Collectible626}} \"Pezzo del Coltello 1\" diventa un coltello lanciabile#Il coltello può aprire una porta fatta di carne"}, -- Knife Piece 2
	[628] = {"628", "Certificato di Morte", "{{Warning}} MONOUSO {{Warning}}#Teletrasporta Isaac in un piano che contiene ogni oggetto del gioco#Scegliere un oggetto da questo piano teletrasporta Isaac nella stanza da cui è venuto"}, -- Death Certificate
	[629] = {"629", "Mosca-Bot", "Spara lacrime scudo per distruggere i proiettili nemici"}, -- Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Mannaia", "Scinde ciascun nemico nella stanza in 2 versioni più piccole con meno salute"}, -- Meat Cleaver
	[632] = {"632", "Nazar", "↑ {{Luck}} +2 Fortuna#Immunità a {{Burning}} fuoco, {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno"}, -- Evil Charm
	[633] = {"633", "Dogma", "↑ {{Speed}} +0.1 Velocità#↑ {{Damage}} +2 Danni#Volo e un singolo uso di {{HolyMantleSmall}} \"Manto Sacro\"#{{Heart}} Cura Isaac con Cuori Rossi e Celesti se ha meno di 6 cuori"}, -- Dogma
	[634] = {"634", "Purgatorio", "Nelle stanze ostili vengono generate crepe rosse nel terreno#Camminare sopra le crepe evoca fantasmi esplosivi a ricerca"}, -- Purgatory
	[635] = {"635", "Feticcio", "Genera un famiglio che si muove nella direzione in cui Isaac spara#Se usato, Isaac si scambia di posto con il famiglio e diventa invincibile per poco tempo#Teletrasportarsi ad un nemico o certi ostacoli può danneggiarli o distruggerli"}, -- Stitches
	[636] = {"636", "Tasto R", "{{Warning}} MONOUSO {{Warning}}#Ripristina la partita#Vengono mantenuti tutti gli oggetti, ninnoli, statistiche e consumabili collezionati#Il timer non viene azzerato"}, -- R Key
	[637] = {"637", "Pugno nell'Occhio", "{{Confusion}} 10% di chance di sparare in pugno che infligge confusione e una spinta poderosa#{{Luck}} 100% di chance con 9 di Fortuna#I nemici subiscono danni quando vengono spinti verso un muro/ostacolo"}, -- Knockout Drops
	[638] = {"638", "Gomma per Cancellare", "Lancia una gomma da cancellare che uccide istantemente un nemico#Impedisce per il resto della partita la generazione del nemico cancellato#Infligge 15 danni ai boss#Può essere usato una volta per piano"}, -- Eraser
	[639] = {"639", "Cuore Schifoso", "{{RottenHeart}} +1 Cuore Marcio"}, -- Yuck Heart
	[640] = {"640", "Urna di Anime", "Genera un getto infuocato#Uccidere un nemico aggiunge una carica all'urna"}, -- Urn of Souls
	[641] = {"641", "Akeldama", "Crea nelle stanze ostili una sfilza di lacrime dietro Isaac#Le lacrime infliggono 3.5 danni"}, -- Akeldama
	[642] = {"642", "Pelle Magica", "Genera un oggetto dalla categoria di oggetti della stanza corrente#{{BrokenHeart}} Trasforma 1 Portacuori o 1 Cuore Osseo o 2 Cuori Celesti in 1 Cuore Infranto#{{Warning}} Se Isasc non lo tiene può rimpiazzare oggetti futuri {{ColorSilver}}(33% dopo 1 uso, 50% dopo 2, 100% dopo 3)#Le chance sono minori se \"Pelle Magica\" è  su un piedistallo nel piano corrente#{{Player10}} Monouso per Lo Smarrito"}, -- Magic Skin
	[643] = {"643", "Rivelazione", "{{SoulHeart}} +2 Cuori Celesti#Volo#{{Chargeable}} Raggio sacro dai danni elevati#Non rimpiazza le lacrime di Isaac"}, -- Revelation
	[644] = {"644", "Premio di Consolazione", "↑ Aumenta la più bassa tra  Velocità, Rateo di Fuoco, Danni, e Gittata#Genera tra 3 {{Coin}} monete, 1 {{Bomb}} bomba, o 1 {{Key}} chiave in base a cosa Isaac ha di meno"}, -- Consolation Prize
	[645] = {"645", "Minitoma", "Grosso orbitale che  blocca i proiettili#Infligge 3.5 danni da contatto al secondo#Dopo aver subito 3 colpi si scinde in versione più piccole di se stessi#Le versioni piú piccole si sfaldano in ragni blu#Resuscita 5 secondi dopo la sua sparizione totale"}, -- Tinytoma
	[646] = {"646", "Bombe Zolfo Fuso", "{{Bomb}} +5 Bombe#{{Collectible118}} Le bombe di Isaac rilasciano dei raggi di zolfo fuso in 4 direzioni#I raggi non feriscono Isaac "}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Completare le stanze non carica più gli oggetti attivi#Infliggere danni ai nemici riempie lentamente la barra di carica#I danni richiesti per le cariche aumentano ad ogni piano"}, -- 4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Plum Fruttato", "Si muove diagonalmente attorno alla stanza, sparando lungo la via lacrime che infliggono 3 danni#Infligge 6 danni da contatto al secondo"}, -- Fruity Plum
	[650] = {"650", "Flauto Plum", "{{Timer}} Evoca nella stanza un Bebè Plum amichevole per 10 secondi"}, -- Plum Flute
	[651] = {"651", "Stella di Betlemme", "Si sposta lentamente dalla prima stanza del piano fino alla {{BossRoom}} Stanza del Boss#Si muove più velocemente se lo si supera, ed è più lento se gli si sta dietro#Se dentro l'aura conferisce:#↑ {{Tears}} x2.5 Moltiplicatore Lacrime#↑ {{Damage}} x1.8 Moltiplicatore Danni#Lacrime a ricerca#50% di chance di ignorare i danni"}, -- Star of Bethlehem
	[652] = {"652", "Bebè Cubetto", "Si può calciarlo camminando su di lui#{{Slow}} In base alla velocità rallenta e infligge fino a 17.5 danni da contatto#{{Freezing}} Congela i nemici che uccide"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Tenere l'oggetto fa sì che una volta morti i nemici non-fantasma generino fantasmini rossi#Usare l'oggetto fa sì che i fantasmini esplodano#Usare l'oggetto inoltre uccide i nemici fantasma (boss inclusi) con meno del 50% della loro salute"}, -- Vade Retro
	[654] = {"654", "Dottorato Falsificato", "{{BlackHeart}} +1 Cuore Nero#{{Pill}} Identifica tutte le pillole#Converte le pillole positive in negative#↑ {{Damage}} Assumere una pillola che abbassa una statistica conferisce +0.6 Danni#{{BlackHeart}} Assumere altri tipi di pillole negative genera 1 Cuore Nero"}, -- False PHD
	[655] = {"655", "Ruota per Vincere", "Conferisce un orbitale che blocca i proiettili nemici e infligge 10.5 danni da contatto al secondo#Usare l'oggetto conferisce:#↑ {{Speed}} +0.5 Velocità#Aumenta enormemente la velocità e i danni degli orbitali"}, -- Spin to Win
	[656] = {"656", "Damocle", "{{Warning}} MONOUSO {{Warning}}#Una spada pende al di sopra della testa di Isaac, raddoppiando tutti i piedistalli#Non raddoppia gli oggetti con un prezzo o provenienti dai bauli#{{Warning}} Dopo aver subito qualsiasi danno, la spada ha ad ogni frame una chance estremamente bassa di uccidere Isaac#Gli effetti d'invincibilità possono prevenire la morte"}, -- Damocles
	[657] = {"657", "Vasculite", "Quando i nemici muoiono esplodono in lacrime, che ricevono gli effetti delle lacrime di Isaac"}, -- Vasculitis
	[658] = {"658", "Cellula Gigante", "Subire danni genera un Mini-Isaac#I Mini-Isaac sparano ai nemici nelle vicinanze mentre li inseguono"}, -- Giant Cell
	[659] = {"659", "Tropicamide", "↑ {{Range}} +2.5 Gittata#↑ {{Tearsize}} +0.22 Dimensioni Lacrime"}, -- Tropicamide
	[660] = {"660", "Lettura delle Carte", "Genera 2 portali nella prima stanza di ogni piano#Lasciare la stanza fa sparire i portali#{{Blank}} {{ColorRed}}Rosso: {{CR}}{{BossRoom}} Stanza del Boss#{{Blank}} {{ColorYellow}}Giallo: {{CR}}{{TreasureRoom}} Stanza dei Tesori#{{Blank}} {{ColorBlue}}Blu: {{CR}}{{SecretRoom}} Stanza Segreta"}, -- Card Reading
	[661] = {"661", "Quintetto", "Uccidere un nemico genera al suo posto un famiglio stazionario#Si massimizza a 5 famigli"}, -- Quints
	[662] = {"662", "Pacifista (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Unghie e Denti", "1 secondo di invincibilità ogni 6 secondi#Isaac lampeggia poco prima che l'effetto si attivi"}, -- Tooth and Nail
	[664] = {"664", "Abbuffata", "↑ {{Heart}} +1 Salute#{{Heart}} Salute al massimo#Gli oggetti nutrienti curano 2 cuori#I piedistalli alternano tra il loro oggetto e un oggetto nutriente#Raccogliere un oggetto nutriente conferisce:#↑ {{Damage}} +3.6 Danni temporanei#↑ 2 aumenti di statistica (che variano in base all'oggetto) permanenti#↓ {{Speed}} -0.03 Velocità"}, -- Binge Eater
	[665] = {"665", "Occhio di Guppy", "Rivela i contenuti di {{Chest}} bauli, {{GrabBag}} sacchi, negozianti, e focolari prima che vengano aperti o distrutti"}, -- Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Fantoccio", "{{Bomb}} +1 Bombe#{{Player14}} Genera Mercante come secondo personaggio#Quando muore genera ragni blu e rimuove permanentemente dall'inventario \"Fantoccio\" e qualsiasi oggetto da lui preso#{{DevilRoom}} Finché il fantoccio è in vita li oggetti della Stanza del Diavolo si pagano in monete#{{Warning}} Il fantoggio può raccogliere oggetti di trama"}, -- Strawman
	[668] = {"668", "Biglietto di Papà", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.2 Velocità#↑ {{Tears}} +0.5 Lacrime#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +2.5 Gittata#↑ {{Shotspeed}} +0.16 Velocità Colpi#↑ {{Luck}} +1 Fortuna#{{Heart}} Salute al massimo#↑ {{AngelDevilChance}} +6.9% di chance di una Stanza del Diavolo/dell'Angelo#↑ {{PlanetariumChance}} +6.9% di chance di un Planetario"}, -- Dad's Note
	[669] = {"669", "Insaccato", "↑ {{Heart}} +1 Salute#↑ +0.5 Danni#↑ +0.2 Velocità#↑ +1.2 Velocità di tiro#↑ +0.16 Gittata#↑ +1 Fortuna"}, -- Sausage
	[670] = {"670", "Alternative?", "Permette ad Isaac di scegliere tra due ricompense di completamento stanza diverse"}, -- Options?
	[671] = {"671", "Dolce Cuore", "↑ Curarsi con {{Heart}} Cuori Rossi conferisce aumenti a statistiche casuali permanenti#{{Heart}} Genera 1 Cuore Rosso"}, -- Candy Heart
	[672] = {"672", "Un Etto di Carne", "{{DevilRoom}} Gli oggetti della Stanza del Diavolo si pagano in monete#{{Shop}} Gli oggetti del Negozio si pagano in cuori#I consumabili dei Negozi sono circondati da spine"}, -- A Pound of Flesh
	[673] = {"673", "Redenzione", "{{DevilRoom}} Entrare in un nuovo piano dopo aver visitato una Stanza del Diavolo senza prendere/consumabili conferisce:#↑ {{Damage}} +1 Danni#{{SoulHeart}} +1 Cuore Celeste"}, -- Redemption
	[674] = {"674", "Catene Spirituali", "Subire danni letali trasforma Isaac in un fantasma incatenato al suo cadavere, permettendogli di continuare a combattere con mezzo cuore#Se il fantasma sopravvive, Isaac resuscita dopo 10 secondi#Va ricaricato raccogliendo 1 Cuore Celeste"}, -- Spirit Shackles
	[675] = {"675", "Sfera Incrinata", "Subire danni:#Sblocca tutte le porte chiuse nella stanza#Rivela una stanza casuale sulla mappa#Distrugge tutte le rocce colorate o rocce con cunicolo"}, -- Cracked Orb
	[676] = {"676", "Cuore Vuoto", "{{EmptyHeart}} +1 Portacuori vuoto all'inizio di un nuovo piano se si è ad 1 Cuore Rosso o meno"}, -- Empty Heart
	[677] = {"677", "Proiezione Astrale", "{{Timer}} Subire danni in una stanza non completata conferisce per la lotta:#Lacrime spettrali#Volo#Annulla il prossimo danno preso#Ferma il tempo per 2 secondi#Aumenta enormemente la velocità e il rateo di fuoco per 2 secondi"}, -- Astral Projection
	[678] = {"678", "Taglio Cesareo", "{{Chargeable}} Rimpiazza le lacrime di Isaac con un attacco caricato che spara feti spettrali e a ricerca#{{Damage}} I feti infliggono i danni di Isaac x2.8 al secondo"}, -- C Section
	[679] = {"679", "Mini Abbadon", "{{Collectible399}} Famiglio che carica e rilascia un cerchio di \"Fauci dell'Oblio\" che infligge 52.5 danni in un 1 secondo"}, -- Lil Abaddon
	[680] = {"680", "Vendetta di Montezuma", "{{Chargeable}} Sparare carica un raggio posteriore a corto raggio dai danni elevati#Non rimpiazza la lacrime di Isaac"}, -- Montezumàs Revenge
	[681] = {"681", "Mini Portale", "Infligge danni da contatto e vola in avanti#Mangia lungo la via i consumabili#Ogni consumabile mangiato aumenta la sua taglia, i danni, e genera una mosca blu#Mangiare 4 consumabili genera un portale per una stanza inesplorata"}, -- Lil Portal
	[682] = {"682", "Amico Verme", "A volte sbuca dal terreno per afferrare un nemico#I nemici afferrati subiscono 8 danni al secondo, vengono rallentati e non possono muoversi"}, -- Worm Friend
	[683] = {"683", "Speroni Ossei", "Quando i nemici muoiono generano schegge d'ossa#Le ossa bloccano i proiettili e infliggono danni da contatto"}, -- Bone Spurs
	[684] = {"684", "Anima Affamata", "Uccidere un nemico ha una chance di generare un fantasma#I fantasmi inseguono i nemici, infliggono danni da contatto ed esplodono dopo 5 secondi#Isaac non subisce danni dalle loro esplosioni"}, -- Hungry Soul
	[685] = {"685", "Giara di Fiammelle", "Genera 1 fiammella casuale#Ad ogni uso genera 1 fiammella aggiuntiva, fino ad arrivare a 12"}, -- Jar of Wisps
	[686] = {"686", "Ciondolo Celeste", "↑ Raccogliere i {{SoulHeart}} Cuori Celesti conferisce aumenti permanenti a statistiche casuali#{{SoulHeart}} Genera 1 Cuore Celeste"}, -- Soul Locket
	[687] = {"687", "Cerca Amici", "Genera un mostro amichevole casuale che imita i movimenti e gli attacchi di Isaac"}, -- Friend Finder
	[688] = {"688", "Fanciullo Interiore", "+1 Vita#Quando Isaac muore:#Resuscita nella stessa stanza con mezzo cuore#↑ {{Speed}} +0.2 Velocità#↑ Enorme Riduzione Statura "}, -- Inner Child
	[689] = {"689", "Corona Glitchata", "I piedistalli alternano rapidamente tra 5 oggetti causali"}, -- Glitched Crown
	[690] = {"690", "Gelatina di Fagiolo", "I nemici rimbalzano via da Isaac#50% di chance di negare danni da contatto#50% di chance di deviare i proiettili nemici"}, -- Belly Jelly
	[691] = {"691", "Sfera Sacra", "Previene la generazione di oggetti di Qualità {{Quality0}}/{{Quality1}}#Gli oggetti di Qualità {{Quality2}} hanno il 33% di chance di venire rilanciati"}, -- Sacred Orb
	[692] = {"692", "Legame di Sangue", "Genera una schiera di spine nella {{DevilRoom}} Stanza del Diavolo#Subire danni dalle spine conferiscd:#35%: Nulla#33%: ↑ {{Damage}} +0.5 Danni#15%: 6 {{Coin}} monete#10%: 2 {{BlackHeart}} Cuori Neri#5%: {{DevilRoom}} Oggetto casuale del Diavolo#2%: Trasformazione \"Leviatano\""}, -- Sanguine Bond
	[693] = {"693", "Lo Sciame", "Conferisce 8 mosche orbitali#Completare una stanza genera una nuova mosca#Dopo aver bloccato un proiettile le mosche si trasformano in mosche blu"}, -- The Swarm
	[694] = {"694", "Cuore Spezzato", "↑ {{Damage}} +0.25 Danni per Cuore Infranto#{{BrokenHeart}} +3 Cuori Infranti#{{BrokenHeart}} Ogni colpo letale conferisce +2 Cuori Infranti#A 12 Cuori Infranti Isaac muore"}, -- Heartbreak
	[695] = {"695", "Soffio Furente", "Subendo danni si riceve fino all'uscita dal piano:#↑ {{Speed}} Più Velocità#↑ {{Tears}} Più Rateo di Fuoco#Si massimizza a +1.02 di Velocità e a +3 di Rateo di Fuoco"}, -- Bloody Gust
	[696] = {"696", "Salvezza", "Isaac viene circondato da un'aureola#I nemici dentro all'aureola per troppo tempo vengono colpiti da un raggio di luce cruciforme#Subire danni aumenta le dimensioni dell'aureola fino all'uscita dal piano"}, -- Salvation
	[697] = {"697", "Gemello Evanescente", "Entrare in una Stanza del Boss genera un clone del boss#Sconfiggere il clone genera un oggetto extra#Il clone è più lento e ha il 75% della salute"}, -- Vanishing Twin
	[698] = {"698", "Diabolico Duo", "Due famigli che sparano lacrime con le stesse statistiche ed effetti di Isaac#{{Damage}} Infliggono il 37.5% dei danni di Isaac"}, -- Twisted Pair
	[699] = {"699", "Furia di Azazel", "{{Collectible118}} Completare 4 stanza fa sparare nella stanza successiva un raggio di \"Zolfo Fuso\""}, -- Azazel's Rage
	[700] = {"700", "Camera di Risonanza", "Usare una {{Rune}} runa, {{Card}} carta o {{Pill}} pillola usa anche una copia delle ultime 3 rune/carte/pillole usate dopo aver raccolto \"Camera di Risonanza\""}, -- Echo Chamber
	[701] = {"701", "Tomba di Isaac", "Genera un {{DirtyChest}} Vecchio Baule all'inizio di ogni piano#I Vecchi Bauli richiedono una chiave per venire aperti e possono contenere: {{SoulHeart}} Cuori Celesti, {{Trinket}} ninnoli o oggetti di Mamma, Papà o dell'Angelo"}, -- Isaac's Tomb
	[702] = {"702", "Spirito Vendicativo", "Subire danni genera 1 fiammella orbitale#Le fiammelle sparano lacrime, non bloccano i proiettili e spariscono al piano successivo#Si massimizza a 6 fiammelle"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Alterna tra il personaggio corrente con Esau Jr.#Esau Jr. ha {{BlackHeart}} 3 Cuori Neri, {{Damage}} +2 Danni, volo, e oggetti casuali pari al numero di oggetti in possesso quando l'oggetto è stato usato per la prima volta#I personaggi hanno salute e oggetti separati#{{Warning}} Se uno dei due personaggi muore la partita termina"}, -- Esau Jr.
	[704] = {"704", "Violenza!", "{{Battery}} Si carica infliggendo danni#{{Timer}} Conferisce per 5 secondi:#↑ {{Speed}} +0.4 Velocità#↓ {{Tears}} x0.5 Moltiplicatore rateo di fuoco#↑ {{Tears}} +2 Rateo di Fuoco#↑ {{Damage}} +3 Danni#Limita gli attacchi ad uno in mischia che riflette i proiettili#{{Timer}} Ogni uccisione incrementa la durata di 1 secondo e conferisce brevemente invincibilità"}, -- Berserk!
	[705] = {"705", "Arti Oscure", "{{Timer}} Conferisce per 1 secondo (o finché non si spara):↑ {{Speed}} +1 Velocità#Isaac può passare attraverso i nemici/proiettili e li paralizza#Finito l'effetto danneggia i nemici paralizzati, rimuove i proiettili paralizzati e crea uno scoppio nella posizione di Isaac#Gli attacchi e lo scoppio sono tanto più potenti quanti più nemici/proiettili vengono colpiti"}, -- Dark Arts
	[706] = {"706", "Abisso", "Consuma tutti i piedistalli nella stanza e genera un famiglio locusta per ciascuno di essi#Le locuste infliggono i danni di Isaac 2-3 volte ad attacco#Alcuni oggetti se consumati generano una locusta speciale"}, -- Abyss
	[707] = {"707", "Cena", "↑ {{Heart}} +1 Salutr#{{Heart}} Cura di 1 cuore"}, -- Supper
	[708] = {"708", "Pinzatrice", "↑ {{Damage}} +1 Danni#Tutte le lacrime di Isaac vengono sparate dall'occhio destro"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac scatta nella direzione in cui si sta muovendo#Scattare verso un nemico o un boss lo raccoglie e lo schianta a terra#Lo schianto infligge danni e genera scosse rocciose in base alla statura di Isaac#Durante lo scatto e lo schianto si è invincibili"}, -- Suplex!
	[710] = {"710", "Sacco del Fai da Te", "Raccoglie fino a 8 consumabili che non possono essere buttati a terra#Usare l'oggetto con 8 consuambili nel sacco assembla un oggetto#La qualità dell'oggetto si basa sulla qualità dei consumabili"}, -- Bag of Crafting
	[711] = {"711", "Limbo", "Entrare in una stanza con piedistalli fa mostrare in essi un secondo oggetto incorporeo#Usare l'oggetto inverte l'oggetto reale con quello incorporeo#Usare \"Limbo\" dopo aver preso il primo oggetto permette ad Isaac di raccogliere l'altro oggetto#{{Warning}} Se si lascia la stanza gli oggetti incorporei lasciati da soli nei piedistalli spariscono"}, -- Flip
	[712] = {"712", "Lemegeton", "Genera un orbitale che conferisce l'effetto di un oggetto casuale#Gli oggetti hanno il 25% di chance di essere della categoria di oggetti della stanza corrente e il 75% di chance di essere della categoria della Stanza dei Tesori, Stanza del Boss o del Negozio"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Rimuove mezzo cuore e crea un grumo#I grumi copiano le lacrime di Isaac#Ogni tipo di cuore genera un grumo a clot con salute, danni e effetti delle lacrime diversi"}, -- Sumptorium
	[714] = {"714", "Richiamo", "Richiama il corpo del Dimenticato da qualsiasi distanza#Durante il richiamo del Dimenticato L'Anima è invincibile"}, -- Recall
	[715] = {"715", "Vasetto", "Usare l'oggetto quando è vuoto conserva al suo interno la cacca successiva#Usare l'oggetto con una cacca al suo interno usa quella cacca"}, -- Hold
	[716] = {"716", "Sacca del Mercante", "Genera 3 {{Coin}} monete e 1 {{Key}} chiave#{{Shop}} Spendere 3 monete conferisce tra:#↑ {{Speed}} +0.03 Velocità#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +0.25 Gittata"}, -- Keeper's Sack
	[717] = {"717", "Strirpe del Mercante", "Roccce e altri ostacoli se distrutti generano 2 ragni blu#Nelle stanze ostili le rocce possono occasionalmente generare ragni blu"}, -- Keeper's Kin
	[718] = {"718", "", "<Item does not exist>"},
	[719] = {"719", "Scatola del Mercante", "{{Shop}} Genera un oggetto/consumabile del Negozio comprabile"}, -- Keeper's Box
	[720] = {"720", "Giara Universale", "Genera consumabili in base al numero di cariche#Ricompense delle cariche:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} A 12 cariche attiva un potente effetto casuale"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Fa sì che tutti gli oggetti futuri siano glitchati#Gli oggetti glitchati hanno effetti totalmente casuali"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Incatena il nemico più vicino per 5 secondi#I nemici incatenati non possono muoversi o attaccare"}, -- Anima Sola
	[723] = {"723", "Dado Decrementale", "Rilancia tutti gli oggetti nella stanza, diminuendo di 1 il loro ID interno"}, -- Spindown Dice
	[724] = {"724", "Trombofilia", "{{Heart}} Subire danni butta a terra mezzo Cuore Rosso oppure uno intero, in base al quantitativo perso da Isaac#I cuori vengono scagliati via e spariscono 1.5 seconds"}, -- Hypercoagulation
	[725] = {"725", "Sindrome del Colon Irritabile", "Infliggere abbastanza danni fa lampeggiare di rosso Isaac#Rilasciare il tasto di fuoco mentre Isaac lampeggia può:#Lanciare una cacca casuale#Creare del liquido potenziante#{{Poison}} Scorreggiare una nube velenosa#Genera 5 bombe accese"}, -- IBS
	[726] = {"726", "Emottisi", "Ad una doppia premuta del tasto di fuoco Isaac starnutisce sangue#Lo starnuto infligge i danni di Isaac x1.5#Tempo di attesa di 1 secondo#{{BrimstoneCurse}} I nemici affetti prendono danni extra dai raggi di \"Zolfo Fuso\""}, -- Hemoptysis
	[727] = {"727", "Bombe Fantasma", "{{Bomb}} +5 Bombe#Le bombe di Isaac generano fantasmi che inseguono i nemici#I fantasmi infliggono i danni di Isaac x2 al secondo ed esplodono dopo 10 secondi"}, -- Ghost Bombs
	[728] = {"728", "Gellò", "Un famiglio demoniaco prorompe da Isaac fino all'uscita dalla stanza#Il demone spara verso il nemico più vicino, imitando le lacrime, statistiche e effetti di Isaac#{{Damage}} Le sua lacrime infliggono il 75% dei danni di Isaac"}, -- Gello
	[729] = {"729", "Decapita Azione", "Lancia la testa di Isaacverso una direzione#La testa infligge danni da contatto e spara lacrime dal luogo in cui atterra#Usare di nuovo l'oggetto o calpestare la testa la rimette a posto"}, -- Decap Attack
	[730] = {"730", "Occhio di Vetro", "↑ {{Damage}} +0.75 Danni#↑ {{Luck}} +1 Fortuna"}, -- Glass Eye
	[731] = {"731", "Orzaiolo", "↑ {{Damage}} x1.28 Moltiplicatore Danni per l'occhio destro#↑ {{Range}} +6.5 Gittata per l'occhio destro#↓ {{Shotspeed}} -0.3 Velocità Colpi per l'occhio destro"}, -- Stye
	[732] = {"732", "Anello di Mamma", "↑ {{Damage}} +1 Danni#{{Rune}} Genera 1 runa casuale o 1 pietra dell'anima"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Lacrime#↑ {{Range}} +2.5 Gittata#↓ {{Speed}} -0.03 Velocità", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Lacrime#↑ {{Shotspeed}} +0.2 Velocità Colpi#↓ {{Speed}} -0.03 Velocità", -- Dinner
	[24] = "↑ {{Damage}} +1 Danni#↑ {{Shotspeed}} +0.2 Velocità Colpi#↓ {{Speed}} -0.03 Velocità", -- Dessert
	[25] = "↑ {{Range}} +2.5 Gittata#↑ {{Shotspeed}} +0.2 Velocità Colpi#↓ {{Speed}} -0.03 Velocità", -- Breakfast
	[26] = "↑ {{Damage}} +1 Danni#↑ {{Range}} +2.5 Gittata#↓ {{Speed}} -0.03 Velocità", -- Rotten Meat
	[456] = "↑ {{Damage}} +1 Danni#↑ {{Luck}} +1 Fortuna#↓ {{Speed}} -0.03 Velocità", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0.2 Velocità Colpi#↑ {{Luck}} +1 Fortuna#↓ {{Speed}} -0.03 Velocità", -- A Snack
	[707] = "↑ {{Tears}} +0.5 Lacrime#↑ {{Luck}} +1 Fortuna#↓ {{Speed}} -0.03 Velocità", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Also invokes the effect of {{Collectible35}} Necronomicon", -- Kamikaze!
	[126] = "Also invokes the effect of {{Collectible35}} Necronomicon", -- Razor Blade
	[127] = "↑ {{Damage}} +2 Damage for the next floor", -- Forget me Now
	[133] = "↑ {{Damage}} +0.5 Damage", -- Guppy's Paw
	[135] = "Temporary ↑ {{Damage}} +0.66 damage for each use", -- IV Bag
	[147] = "The axe has increased durability and knockback, can be used faster, sets enemies on {{Burning}} fire and drops more pickups when destroying poop and obstacles", -- Notched Axe
	[186] = "Also invokes the effect of {{Collectible126}} Razor Blade", -- Blood Rights
	[282] = "Leaves a trail of fire that deals contact damage and sets enemies on {{Burning}} fire", -- How to Jump
	[290] = "Using the item consumes a heart, grants a {{Damage}} damage up and leaves red creep on the ground", -- The Jar
	[295] = "Has a chance to invoke the effect of {{Collectible555}} Golden Razor", -- Magic Fingers
	[297] = "Permanently grants a demonic familiar along with the regular rewards", -- Pandora's Box
	[323] = "Shoots 10 tears instead and they are piercing + spectral with a damage boost", -- Isaac's Tears
	[326] = "Instead of spawning light, you have a fiery aura while invincible#Temporary {{Damage}} damage up and invokes the effect of {{Collectible35}} Necronomicon on a perfect block", -- Breath of Life
	[352] = "Activates {{Collectible34}} The Book of Belial when broken#Damage up persists until the cannon is fixed", -- Glass Cannon
	[475] = "Respawns Judas as Dark Judas if he has an extra life", -- Plan C
	[482] = "Replaces the most recently acquired item with {{Collectible51}} Pentagram instead of removing it", -- Clicker
	[487] = "Additional ↑ {{Damage}} +0.5 damage", -- Potato Peeler
	[536] = "For each familiar sacrificed:#↑ {{Damage}} +10.8 damage that slowly fades away", -- Sacrificial Altar
	[555] = "Damages all enemies in the room#Enemies killed by this may drop 1-2 pennies", -- Golden Razor
	[577] = "Permanent ↑ {{Damage}} damage up", -- Damocles
	[582] = "Permanent ↑ {{Damage}} damage up based on the highest number of times the effects of the item has been stacked", -- Wavy Cap
	[585] = "Changes the payout to 2 Black Hearts and 1 Devil Deal item#Becomes 3 hearts and 2 items if a Devil Deal has been taken", -- Alabaster Box
	[622] = "Grants a free {{Collectible51}} Pentagram", -- Genesis
	[623] = "Also invokes the effect of {{Collectible126}} Razor Blade", -- Sharp Key
	[635] = "Creates a {{Collectible705}} Dark Arts line between Judas and Stitches", -- Stitches
	[640] = "Launches a {{Collectible118}} Brimstone beam instead", -- Urn of Souls
	[642] = "↑ {{Damage}} x1.4 Damage multiplier#↑ {{Damage}} +1 Damage", -- Magic Skin
	[653] = "Ghosts home in on enemies", -- Vade Retro
	[685] = "Spawns {{Collectible292}} Satanic Bible wisps#{{DevilChance}} +10% Devil Room chance per wisp", -- Jar of Wisps
	[705] = "Temporary ↑ {{Damage}} damage up for every enemy/projectile hit", -- Dark Arts
	[710] = "Picking up {{Heart}} Red Hearts has a chance to replace them with a {{BlackHeart}} Black Heart", -- Bag of Crafting
	[729] = "While the head is detached:#↑ {{Tears}} x3 Fire rate multiplier#↑ {{Damage}} +2 Damage", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Inner ring wisp#Homing tears", -- The Bible
	[34] = "Middle ring wisp#Double damage tears", -- The Book of Belial
	[35] = "Inner ring wisp#3.5% chance for {{Fear}} fear tears#{{Collectible35}} Necronomicon effect when destroyed", -- The Necronomicon
	[36] = "Outer ring wisp#2.5% chance for {{Collectible236}} E. Coli tears", -- The Poop
	[37] = "Middle ring wisp#Drop scatter homing bombs when destroyed", -- Mr. Boom
	[38] = "Outer ring wisp#Rapid, inaccurate tears", -- Tammy's Head
	[39] = "Middle ring wisp#5% chance for petrifying tears", -- Mom's Bra
	[40] = "Middle ring wisp#Explosive tears#Explodes when destroyed", -- Kamikaze!
	[41] = "Middle ring wisp#7.5% chance for {{Fear}} fear tears", -- Mom's Pad
	[42] = "Middle ring wisp#7.5% chance for {{Collectible149}} Ipecac tears", -- Bob's Rotten Head
	[44] = "Middle ring wisp#10% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport!
	[45] = "Middle ring wisp#20% chance for enemies to drop 1 {{Heart}} Red Heart on kill", -- Yum Heart
	[47] = "Middle ring wisp#Shoot 3 explosive tears towards the crosshair on use", -- Doctor's Remote
	[49] = "Outer ring wisp#Cannot shoot tears#Fires a beam on use", -- Shoop da Whoop!
	[56] = "Middle ring wisp#Rapid, low range tears#Wisp drips yellow creep", -- Lemon Mishap
	[58] = "Middle ring wisp#Low HP but immune to projectiles#Immune to damage during {{Collectible58}} effect", -- Book of Shadows
	[65] = "Middle ring wisp#Drop a Troll Bomb when destroyed", -- Anarchist Cookbook
	[66] = "Middle ring wisp#{{Slow}} Slows enemies for 3 seconds when destroyed", -- The Hourglass
	[77] = "Middle ring wisp#Extra contact damage", -- My Little Unicorn
	[78] = "Inner ring wisp#Cannot shoot tears#Spawns a Locust for the room when destroyed", -- Book of Revelations
	[83] = "Inner ring wisp#Double damage and knockback tears", -- The Nail
	[84] = "Middle ring wisp#No special effect", -- We Need to Go Deeper!
	[85] = "Inner ring wisp#Drop a {{Card}} card when destroyed", -- Deck of Cards
	[86] = "Middle ring wisp#Tooth tears", -- Monstro's Tooth
	[93] = "Inner ring wisp#Anti-gravity tears#Chance for {{Fear}} fear tears", -- The Gamekid
	[97] = "Spawns 1 of 8 wisps:#{{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#{{Warning}} Explosive effects are likely", -- The Book of Sin
	[102] = "Inner ring wisp#Spawns 1 of 6 wisps:#normal tears that spawns an enemy spider when destroyed or chance for poison, petrify, confusion, burn, Troll Bomb tears#All 6 spawn a {{Pill}} pill when destroyed", -- Mom's Bottle of Pills
	[105] = "Middle ring wisp#+1 Wisp per item rerolled", -- The D6
	[107] = "Inner ring wisp#Piercing tears", -- The Pinking Shears
	[111] = "Outer ring wisp#{{Poison}} Poison fart when destroyed", -- The Bean
	[123] = "Inner ring wisp#Random tears", -- Monster Manual
	[124] = "Spawns the wisp of what item it mimics", -- Dead Sea Scrolls
	[126] = "Middle ring wisp#High HP wisps", -- Razor Blade
	[127] = "Middle ring wisp#Infinite HP wisp for the new floor", -- Forget Me Now
	[130] = "Middle ring wisp#Cannot shoot tears#Wisps charge in the direction Isaac shoots", -- A Pony
	[133] = "Middle ring wisp#Spawns 3 high HP wisps", -- Guppy's Paw
	[135] = "Outer ring wisp#Low HP wisp", -- IV Bag
	[136] = "Middle ring wisp#7.5% chance for {{Bait}} mark tears#Marked enemies are attacked by other enemies", -- Best Friend
	[137] = "Inner ring wisp#+1 Wisp per bomb detonated#Wisp's tears can also be remote detonated", -- Remote Detonator
	[145] = "Outer ring wisp#Wisps are spawned instead of flies#Spawns a blue fly when destroyed", -- Guppy's Head
	[146] = "Inner ring wisp#Homing tears", -- Prayer Card
	[147] = "Chance to spawn dip wisps from poop and 1 of 5 mineral wisps from rocks:#{{Collectible132}} Coal, {{Collectible201}} Iron, {{Collectible202}} Gold, {{Collectible68}} Redstone, {{Collectible415}} Diamond", -- Notched Axe
	[158] = "Middle ring wisp#High HP wisp that shoots at nearby enemies", -- Crystal Ball
	[160] = "Middle ring wisp#Summon a beam of light on contact", -- Crack the Sky
	[164] = "Middle ring wisp#Single room wisp", -- The Candle
	[166] = "Middle ring wisp#Destroys all pickups in the room, with a chance to spawn a random wisp for each", -- D20
	[171] = "Middle ring wisp#7.5% chance for {{Slow}} slow tears", -- Spider Butt
	[175] = "Middle ring wisp#Wisps open locked chests/doors on touch, including the Mega Satan, Ascent, and Corpse doors#Wisps donate themselves to {{KeyBeggar}} Key Masters", -- Dad's Key
	[177] = "Spawns a wisp based on the reward won", -- Portable Slot
	[181] = "Middle ring wisp#10% chance for {{Collectible374}} Holy Light tears", -- White Pony
	[186] = "Middle ring wisp#High HP wisp", -- Blood Rights
	[192] = "Middle ring wisp#Homing tears", -- Telepathy for Dummies
	[263] = "Middle ring wisp#15% chance for enemies to drop a {{Rune}} rune on kill#Drops a {{Rune}} rune when destroyed", -- Clear Rune
	[282] = "Spawns up to 6 stationary wisps for the room", -- How to Jump
	[283] = "Rerolls all wisps and spawns 1 random wisp#Doesn't reroll Book of Virtues", -- D100
	[284] = "Removes all wisps and spawns a random wisp for every 2 items owned#Doesn't reroll Book of Virtues", -- D4
	[285] = "Middle ring wisp#10% chance for D10 effect tears", -- D10
	[286] = "Middle ring wisp#15% chance for enemies to drop a {{Card}} card on kill#Spawns a {{Card}} card when destroyed", -- Blank Card
	[287] = "Middle ring wisp#{{Collectible675}} Cracked Orb effect when destroyed", -- Book of Secrets
	[288] = "Outer ring wisp#Wisps are spawned instead of spiders#Spawns a blue spider when destroyed", -- Box of Spiders
	[289] = "Middle ring wisp#Single room wisp#Red flame tears", -- Red Candle
	[290] = "Middle ring wisp#Creates a wisp per heart instead of dropping them as pickups#Chance to spawn a {{HalfHeart}} half Red Heart when destroyed", -- The Jar
	[291] = "Middle ring wisp#Spawns an extra wisp per flushed enemy", -- Flush!
	[292] = "Middle ring wisp#+10% {{AngelDevilChance}} Devil/Angel Room chance per Satanic Bible wisp", -- Satanic Bible
	[293] = "Middle ring wisp#Fires a 4-way {{Collectible118}} Brimstone beam when destroyed", -- Head of Krampus
	[294] = "Inner ring wisp#Low HP single room wisp#Cannot shoot tears#Butter Bean effect when destroyed", -- Butter Bean
	[295] = "Inner ring wisp#Chance to drop a {{Coin}} coin when destroyed", -- Magic Fingers
	[296] = "Middle ring wisp#Higher HP wisp that can be healed with {{Heart}} Red Hearts", -- Converter
	[297] = "Middle ring wisp#Spawns 0-8 wisps depending on the floor", -- Pandora's Box
	[298] = "Middle ring wisp#Cannot shoot tears#Immune to contact damage#Doesn't deal contact damage unless Unicorn Stump or a similar effect is active", -- Unicorn Stump
	[323] = "Middle ring wisp#Spawns 6 wisps#3 Second lifetime", -- Isaac's Tears
	[324] = "Middle ring wisp#{{Collectible570}} Playdough Cookie tears", -- Undefined
	[325] = "Middle ring wisp#Arcing cluster tears", -- Scissors
	[326] = "Inner ring wisp#Spawns 4 wisps on a perfect block", -- Breath of Life
	[338] = "Middle ring wisp#Single room wisp#Boomerang tears", -- The Boomerang
	[347] = "Middle ring wisp#High HP wisps with {{Collectible245}} 20/20 tears#Duplicate all other wisps", -- Diplopia
	[348] = "Middle ring wisp#Spawns a {{Pill}} pill when destroyed", -- Placebo
	[349] = "Middle ring wisp#50% chance to drop a {{Coin}} coin when destroyed", -- Wooden Nickel
	[351] = "Middle ring wisp#Send a rock wave out on use#Petrify + {{Poison}} poison fart when destroyed", -- Mega Bean
	[352] = "Middle ring wisp#Low HP wisp that persists between rooms#All Glass Cannon wisps are destroyed when one is destroyed", -- Glass Cannon
	[357] = "Middle ring wisp#No special effect#Duplicate all wisps for the room", -- Box of Friends
	[382] = "Middle ring wisp#Friendly enemies spawn 1 of 4 wisps on death, depending on their attacks, with normal, homing, explosive, or Brimstone tears", -- Friendly Ball
	[383] = "Middle ring wisp#Wisp's tears can be detonated, turning into 6 of Isaac's tears#Persists between rooms#Burst into Isaac's tears when destroyed", -- Tear Detonator
	[386] = "Middle ring wisp#5% chance for tears to reroll rocks, urns, skulls or mushrooms", -- D12
	[396] = "Cannot shoot tears#Each portal has 1 wisp", -- Ventricle Razor
	[406] = "Middle ring wisp#Random damage and fire rate", -- D8
	[419] = "Middle ring wisp#20% chance for tears to teleport enemies#Wisps flicker every 5 seconds", -- Teleport 2.0
	[421] = "Middle ring wisp#{{Charm}} Charm tears#{{Charm}} Charm fart when destroyed", -- Kidney Bean
	[422] = "Middle ring wisp#30% chance for petrifying tears#Respawns all wisps that got destroyed in the previous room", -- Glowing Hourglass
	[427] = "Bounces around the room, exploding when shot by Isaac#Cannot shoot tears or deal contact damage", -- Mine Crafter
	[434] = "Middle ring wisp#Wisps are spawned instead of flies#Up to 5 flies makes 1 wisp with increased health and damage", -- Jar of Flies
	[437] = "Middle ring wisp#D7 effect when hit for the first time", -- D7
	[439] = "Middle ring wisp#No special effect", -- Mom's Box
	[441] = "Middle ring wisp#{{Chargeable}} Chargeable Brimstone tears#Shoot continuously during a Mega Blast", -- Mega Blast
	[475] = "Middle ring wisp#Spawns 8 high damage wisps that stay after death", -- Plan C
	[476] = "Middle ring wisp#Spawns a second wisp if no pickup was duplicated", -- D1
	[477] = "Spawns the wisps of all absorbed active items#Doesn't spawn a wisp itself", -- Void
	[478] = "Middle ring wisp#Pauses all enemies and shots for 3 seconds when destroyed", -- Pause
	[479] = "Middle ring wisp#Chance to spawn a {{Trinket}} trinket when destroyed", -- Smelter
	[480] = "Middle ring wisp#Increased HP for each pickup converted#Only spawns a wisp if at least one pickup got converted", -- Compost
	[481] = "Middle ring wisp#5% chance for tears to transform enemies into random wisps", -- Dataminer
	[482] = "Spawns a random wisp", -- Clicker
	[483] = "Middle ring wisp#Spawns 8 wisps that drop a golden Troll Bomb when destroyed", -- Mama Mega!
	[484] = "Middle ring wisp#Single room wisp#Cannot shoot tears#Wait What? effect when destroyed", -- Wait What?
	[485] = "Middle ring wisp#All Crooked Penny wisps are destroyed or duplicated when one is damaged", -- Crooked Penny
	[486] = "Middle ring wisp#Cannot shoot tears#Chance to negate Isaac taking damage and get destroyed for it", -- Dull Razor
	[487] = "Indestructible, permanent wisp#Chases enemies to shoot them#Doesn't block shots or deal contact damage", -- Potato Peeler
	[488] = "Spawns the wisp of what item it mimics (random wisp if not an active item)", -- Metronome
	[489] = "Middle ring wisp#Spawns a normal wisp#Extra effect based on the mimicked die", -- D Infinity
	[490] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Eden's Soul
	[504] = "Middle ring wisp#Single room wisp#Rapid, low damage, aimed tears", -- Brown Nugget
	[507] = "Outer ring wisp#Chance to spawn a wisp on kill", -- Sharp Straw
	[510] = "Middle ring wisp#{{Collectible229}} Monstro's Lung, {{Collectible268}} Rotten Baby, {{Collectible87}} Loki's Horns or {{Collectible118}} Brimstone tears", -- Delirious
	[512] = "Middle ring wisp#Magnetic tears", -- Black Hole
	[515] = "Spawns a random wisp#Respawns after clearing a room if destroyed", -- Mystery Gift
	[516] = "Middle ring wisp#Rapid tears#Tears shoot in 8 directions like Sprinkler", -- Sprinkler
	[521] = "Middle ring wisp#Triple shot#Purchasing anything destroys all Coupon wisps", -- Coupon
	[522] = "Outer ring wisp#Captured projectiles turn into wisps", -- Telekinesis
	[523] = "Middle ring wisp#Wisp only spawns when dropping items#Spawns a random pickup when destroyed", -- Moving Box
	[527] = "Middle ring wisp#Cannot shoot tears#On room clear, wisps open chests/doors", -- Mr. ME!
	[536] = "Middle ring wisp#Converts all wisps into {{HalfHeart}} half Red Hearts#Spawns a high HP, high damage wisp on sacrifice", -- Sacrificial Altar
	[545] = "Inner ring wisp#Spawns a friendly Bony when destroyed", -- Book of the Dead
	[550] = "Middle ring wisp#10% chance for tears to make Mom stomp on the enemy", -- Broken Shovel
	[552] = "Middle ring wisp#10% chance for tears to make Mom stomp on the enemy#Also spawns a high HP wisp that cannot shoot tears", -- Mom's Shovel
	[555] = "Middle ring wisp#15% chance for {{Collectible202}} Midas' Touch tears", -- Golden Razor
	[556] = "Middle ring wisp#Short range {{Collectible118}} Brimstone tears", -- Sulfur
	[557] = "Middle ring wisp#↑ {{Luck}} +0.2 Luck per Fortune Cookie wisp", -- Fortune Cookie
	[577] = "Middle ring wisp#No special effect", -- Damocles
	[578] = "Middle ring wisp#Wisp drips yellow creep", -- Free Lemonade
	[580] = "Middle ring wisp#Chance to create Red Doors when entering a new room", -- Red Key
	[582] = "Middle ring wisp#Low damage tears#Max 1 Wavy Cap wisp", -- Wavy Cap
	[584] = "No benefit from multiple copies", -- Book of Virtues
	[585] = "Middle ring wisp#Spawns 8 normal wisps", -- Alabaster Box
	[604] = "Counts as middle ring wisp#Single room wisp#Spawns 3 wisps where something lands#10% chance for {{Confusion}} confusion tears", -- Mom's Bracelet
	[605] = "Middle ring wisp#No special effect", -- The Scooper
	[609] = "Middle ring wisp#Only 50% to spawn an invincible wisp#50% chance for all Eternal D6 wisps to be destroyed on use", -- Eternal D6
	[611] = "Middle ring wisp#Health and damage increases based on charges", -- Larynx
	[622] = "Middle ring wisp#Replaces all wisps with 3 normal wisps", -- Genesis
	[623] = "Middle ring wispsNo special effect", -- Sharp Key
	[631] = "Middle ring wisp#Splits all wisps in half (halfs damage)#Wisps are destroyed if split a third time", -- Meat Cleaver
	[635] = "Single room wisp#Spawns a stationary wisp at Isaac's position before getting teleported (up to 6 wisps)", -- Stitches
	[636] = "No wisp", -- R Key
	[638] = "Middle ring wisp#Immune to projectiles#Erases non-boss enemies on contact", -- Eraser
	[639] = "Middle ring wisp#Spawns blue flies instead of shooting tears", -- Yuck Heart
	[640] = "Middle ring wisp#Chance for blue flame tears", -- Urn of Souls
	[642] = "Middle ring wisp#Poison tears", -- Magic Skin
	[650] = "Middle ring wisp#When Baby Plum bounces diagonally, all Plum Flute wisps are invincible and do so as well", -- Plum Flute
	[653] = "No wisps#Red ghosts can shoot tears", -- Vade Retro
	[655] = "Middle ring wisp#Temporary wisps during use#Rapid tears", -- Spin to Win
	[685] = "Triples the spawned wisps", -- Jar of Wisps
	[687] = "Spawns a random wisp", -- Friend Finder
	[703] = "Middle ring wisp#No special effect", -- Esau Jr.
	[704] = "Middle ring wisp#High HP wisp#Cannot shoot tears", -- Berserk!
	[705] = "Middle ring wisp#Single room wisp per enemy killed", -- Dark Arts
	[706] = "Middle ring wisp#High HP wisp#Cannot shoot tears", -- Abyss
	[709] = "Single room wisp#Spawns 3 wisps where Isaac lands", -- Suplex!
	[710] = "Spawns a random wisp on craft", -- Bag of Crafting
	[711] = "Middle ring wisp#High HP wisp", -- Flip
	[712] = "The item wisps shoot homing tears", -- Lemegeton
	[713] = "No wisp", -- Sumptorium
	[719] = "Middle ring wisp#20% chance for enemies to drop a {{Coin}} coin on kill", -- Keeper's Box
	[720] = "Spawns a random wisp", -- Everything Jar
	[722] = "Orbits the chained enemy, shooting at them#Wisp dies when the enemy dies", -- Anima Sola
	[723] = "Middle ring wisp#Spawns a random wisp and rerolls all wisps into the type", -- Spindown Dice
	[728] = "Middle ring wisp#All wisps orbit Gello while active", -- Gello
	[729] = "Single room stationary wisp", -- Decap Attack
}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
	[2] = "Three normal locusts", -- The Inner Eye
	[3] = "Purple homing locust", -- Spoon Bender
	[4] = "Red large locust that deals triple damage", -- Cricket's Head
	[6] = "Yellow fast short range locust that deals damage more quickly", -- Number One
	[7] = "Red locust that deals double damage", -- Blood of the Martyr
	[10] = "Two gray locusts that deal half damage", -- Halo of Flies
	[13] = "Green locust that poisons enemies", -- The Virus
	[103] = "Green locust that poisons enemies", -- The Common Cold
	[118] = "Gray larger locust that is otherwise normal", -- Brimstone
	[149] = "Large, slow, green locust that deals 1.5x Isaac's damage and poisons enemies", -- Ipecac
	[153] = "Four normal locusts", -- Mutant Spider
	[257] = "Orange, burning locust that sets enemies on fire", -- Fire Mind
	[305] = "Green locust that poisons enemies", -- Scorpio
	[374] = "Cyan, glowing locust that can spawn beams of light that deal deal 3x Isaac's damage", -- Holy Light
	[494] = "Light blue locust with arcs of electricity that deal 0.1 damage per arc", -- Jacob's Ladder
	[559] = "Light blue locust with arcs of electricity that deal 0.1 damage per arc", -- 120 Volt
}

-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 3}, -- The Book of Belial
	[59] = {2, 3}, -- The Book of Belial (Birthright)
	[83] = {" Half", "1"}, -- The Nail
	[263] = "Triggers it twice", -- Clear Rune
	[283] = {1, 2, "pickup", "{{CR}}pickups"}, -- D100
	[285] = "Devolves enemies twice", -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, " Heart", " {{CR}}Hearts", 1, 2, "container", "{{CR}}containers"}, -- Converter
	[323] = "The tears deal double damage", -- Isaac's Tears
	[386] = "Increased chance for rare obstacles", -- D12
	[485] = "25% chance to quadruple, 75% chance to remove", -- Crooked Penny
	[489] = "Uses the selected dice twice", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"one", "two"}, -- Fortune Cookie
	[582] = "Triggers twice", -- Wavy Cap
	[584] = "Spawns two wisps", -- Book of Virtues
	[605] = {" a ", " 2 ", "familiar", "{{CR}}familiars"}, -- The Scooper
	[609] = {25, 44}, -- Eternal D6
	[611] = "Triggers an additional 1-charge scream", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Instantly swaps twice#Great for teleporting into enemies, but can't collect out-of-reach items", -- Stitches
	[639] = {1, 2, " Heart", " {{CR}}Hearts"}, -- Yuck Heart
	[642] = "Triggers twice", -- Magic Skin
	[650] = {" a ", " 2 ", "Plum", "{{CR}}Plums"}, -- Plum Flute
	[685] = "Spawns double the wisps, but the use count only goes up by 1", -- Jar of Wisps
	[687] = {" a ", " 2 ", "monster", "{{CR}}monsters"}, -- Friend Finder
	[704] = "Lasts 10 seconds, but killing an enemy caps time remaining at 5 seconds max", -- Berserk!
	[705] = {1, 2}, -- Dark Arts
	[712] = {" an ", " 2 ", "orbital", "{{CR}}orbitals"}, -- Lemegeton
	[713] = {"half a heart", "a heart", "a clot", "2 {{CR}}clots"}, -- Sumptorium
	[719] = {" a ", " 2 ", "item/pickup", "{{CR}}items/pickups"}, -- Keeper's Box
	[720] = "Spawns a poop alongside the pickup", -- Everything Jar
	[722] = "Chains 2 enemies down#If there's only one enemy, chains it for 10 seconds#Using Anima Sola again unchains the closest enemy", -- Anima Sola
	[723] = {"one", "two"}, -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

-- Effect of BFFS!/Hive Mind on Familiars
local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7-8", "6"}, -- The Relic
	["5.100.107"] = {23.5, 47}, -- The Pinking Shears
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.178"] = {7, 14, "Genera all'impatto una fiamma blu"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Fires additional shots in random directions and leaves a larger puddle of creep", -- Isaac's Heart
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.360"] = {75, 150, 100, 200}, -- Gello (+ Lilith exception)
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
	
	["5.100.565"] = "Double damage while friendly", -- Blood Puppy
	["5.100.569"] = "If triggered, grants additional damage and speed", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Doubles wisp tear and contact damage", -- Book of Virtues
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "a rock wave", "4 {{CR}}rock waves", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Gives the Lost Soul a Holy Mantle effect", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "On use, shoots 8 tears from the player's position", -- Stitches
	["5.100.645"] = {3.5, 7}, -- Tinytoma
	["5.100.649"] = {3, 6, 2, 4}, -- Fruity Plum
	["5.100.650"] = "Contact damage doubled", -- Plum Flute
	["5.100.652"] = {17.5, 35}, -- Cube Baby
	["5.100.655"] = {10.5, 21, "No BFFS! bonus damage for any familiar while Spin to Win is being used"}, -- Spin to Win
	["5.100.679"] = {52.5, 105}, -- Lil Abaddon
	["5.100.681"] = "Damage doubled", -- Lil Portal
	["5.100.682"] = {8, 16}, -- Worm Friend
	["5.100.685"] = "Doubles wisp tear and contact damage", -- Jar of Wisps
	["5.100.698"] = {37.5, 75}, -- Twisted Pair
	["5.100.702"] = "Doubles wisp tear and contact damage", -- Vengeful Spirit
	["5.100.706"] = "Locust damage is increased by 25%", -- Abyss
	["5.100.712"] = "Doubles orbital contact damage", -- Lemegeton
	["5.100.713"] = "Clot damage is doubled", -- Sumptorium
	["5.100.728"] = {75, 150, 100, 200}, -- Incubus (+ Lilith exception)
	
	["5.300.96"] = "Doubles wisp tear and contact damage", -- Soul of Bethany
	["5.350.142"] = "Doubles wisp tear and contact damage", -- Beth's Faith
	["5.350.182"] = "Doubles wisp tear and contact damage", -- Beth's Essence
	["5.350.176"] = "Clot damage is doubled", -- Lil Clot
	["5.350.186"] = "Locust damage is increased by 25%", -- Apollyon's Best Friend
	["Tainted Lilith"] = "Gello's tear damage is doubled", -- Gello (for BFFS pedestal)
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies) -- RIPRENDERE SINCRONIZZAZIONE DA QUI

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Verme Ondulato", "↑ {{Tears}} +0.4 Lacrime#Lacrime spettrali#Le lacrime di Isaac hanno un moto ondeggiante"}, -- Wiggle Worm
	[11] = {"11", "Verme Anello", "↑ {{Tears}} +0.47 Lacrime#Lacrime spettrali#Le lacrime di Isaac hanno un moto a spirale molto veloce"}, -- Ring Worm
	[15] = {"15", "Pietra Fortunata", "{{Coin}} Distruggere rocce ha il 33% di chance di generare monete"},-- Lucky Rock
	[16] = {"16", "Mom's Toenail", "Il piede di Mamma calpesta un punto casuale della stanza ogni 20 secondi"}, -- Mom's Toenail
	[24] = {"24", "Penny Popò", "{{Coin}} Chance più alte del 20% di generare monete dalla cacca#{{Poison}} Raccogliere monete fa scorreggiare Isaac, avvelenando i nemici e respingendo nemici e proiettili"}, -- Butt Penny
	[26] = {"26", "Verme Uncino", "↑ {{Tears}} +0.4 Lacrime#↑ {{Range}} +1.5 Gittata#Lacrime spettrali#Le lacrime di Isaac si muovono in modo angolare"}, -- Hook Worm
	[32] = {"32", "Fungo della Libertà", "25% di chance di un effetto di un fungo casuale a stanza"}, -- Liberty Cap
	[33] = {"33", "Cordone Ombelicale", "{{HalfHeart}} Avere mezzo cuore o meno genera {{Collectible100}} \"Piccolo Steven\"#{{Collectible318}} Subire danni ha un'alta chance di generare un famiglio di \"Gemelli\" fino all'uscita dalla stanza"}, -- Umbilical Cord
	[39] = {"39", "Cancro", "↑ {{Tears}} +1 Rateo di Fuoco"}, -- Cancer
	[48] = {"48", "Una Pagina Mancante", "Subire danni ha il 5% di chance di infliggere 80 danni a tutti i nemici nella stanza#{{Collectible35}} Cuori Neri ed effetti simili a \"Il Necronomicon\" infliggono il doppio dei danni"}, -- A Missing Page
	[49] = {"49", "Penny Sanguinolento", "{{HalfHeart}} Raccogliere 1 moneta ha il 25% di chance di generare mezzo Cuore Rosso#Chance più alte da nichelini e decini"}, -- Bloody Penny
	[50] = {"50", "Penny Bruciato", "{{Bomb}} Raccogliere 1 moneta ha il 25% di chance di generare 1 Bomba#Chance più alte da nichelini e decini"}, -- Burnt Penny
	[51] = {"51", "Penny Piatto", "{{Key}} Raccogliere 1 moneta ha il 25% di chance di generare 1 Chiave#Chance più alte da nichelini e decini"}, -- Flat Penny
	[65] = {"65", "Verme Solitario", "↑ {{Range}} +3 Gittata"}, -- Tape Worm
	[66] = {"66", "Verme Pigro", "↓ {{Shotspeed}} -0.5 Velocità Colpi"}, -- Lazy Worm
	[67] = {"67", "Dado Incrinato", "Subire danni ha il 50% di attivare uno dei seguenti effetti:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Polaroid Sbiadita", "Cammuffa Isaac ad intervalli casuali#{{Confusion}} Confonde i nemici#Può essere usato per aprire la \"Porta Strana\" in \"Profondità II\""}, -- Faded Polaroid
	[80] = {"80", "Piuma Nera", "↑ {{Damage}} +0.5 Danni per ogni oggetto tenuto con \"Più malvagità\""}, -- Black Feather
	[92] = {"92", "Corona Incrinata", "↑ x1.33 Moltiplicatore delle statistiche (eccetto il rateo di fuoco) al di sopra di 1 {{Speed}} Velocità, 2.73 {{Tears}} Lacrime, 3.5 {{Damage}} Danni, 6.5 {{Range}} Gittata, 1 {{Shotspeed}} Velocità Colpi"}, -- Cracked Crown
	[96] = {"96", "Verme Uroboro", " +0.4 Lacrime#↑ {{Range}} +1.5 Gittata#Lacrime spettrali#Chance di lacrime a ricerca#{{Luck}} 100% di chance con 9 di Fortuna#Le lacrime di Isaac si muovono velocemente a spirale"}, -- Ouroboros Worm
	[98] = {"98", "Pepita Verde", "5% di chance di sparare lacrime adesive a ricerca#{{Damage}} Le caccole infliggono i danni di Isaac una volta al secondo#Le lacrime si incollano per 10 secondi"}, -- Nose Goblin
	[101] = {"101", "Lampadina Fioca", "Tenere un oggetto attivo totalmente scarico conferisce:#↑ {{Speed}} +0.5 Velocità#↑ {{Tears}} +0.5 Lacrime#↑ {{Damage}} +1.5 Danni#↑ {{Range}} +1.5 Gittata#↑ {{Shotspeed}} +0.3 Velocità Colpi#↑ {{Luck}} +2 Fortuna"},
	[107] = {"107", "Cuore di Corvo", "Subire danni esaurisce i Cuori Rossi prima dei Cuori Neri/Celesti#{{Warning}} I danni ai Cuori Rossi possono ridurre le chance di una Stanza del Diavolo/dell'Angelo"}, -- Crow Heart
	[110] = {"110", "Dollaro d'Argento", "{{Shop}} I Negozi appaiono in \"Utero\" e \"Carcassa\""},
	[111] = {"111", "Corona Sanguinolenta", "{{TreasureRoom}} Le Stanze dei Tesori appaiono in \"Utero\" e \"Carcassa\""}, -- Bloody Crown
	[119] = {"119", "Cellula Staminale", "Entrare in un nuovo piano cura di mezzo cuore#{HalfHeart}} Cura un minimo di mezzo cuore"}, -- Stem Cell
	[125] = {"125", "Prolunga", "Collega i famigli con raggi d'elettricità#I raggi infliggono 6 danni"}, -- Extension Cord
	[128] = {"128", "Falangi", "{{EmptyBoneHeart}} Subire danni ha il 4% di chance di conferire un Cuore Osseo"}, -- Finger Bone
	[129] = {"129", "Spaccamascella", "{{Damage}} 10% di chance di sparare danni che infliggono i danni di Isaac x3.2#{{Luck}} 100% di chance con 9 di Fortuna"}, -- Jawbreaker
	[130] = {"130", "Penna Masticata", "{{Slow}} 10% di chance di sparare lacrime rallentanti#{{Luck}} 100% di chance con 18 di Fortuna"}, -- Chewed Pen
	[131] = {"131", "Penny Benedetto", "{{HalfSoulHeart}} Raccogliere 1 moneta ha il 17% di chance di generare mezzo Cuore Celeste#Chance più alte da nichelini e decini"}, -- Blessed Penny
	[132] = {"132", "Siringa Rotta", "25% di chance di ottenere un effetto di una siringa casuale ad ogni stanza"}, -- Broken Syringe
	[133] = {"133", "Miccia Corta", "Le bombe di Isaac esplodono più in fretta"}, -- Short Fuse
	[134] = {"134", "Fagiolo Gigante", "Aumenta la dimensione delle scorregge"}, -- Gigante Bean
	[135] = {"135", "Un Accendino", "{{Burning}} Entrare in una stanza ha il 20% di chance di bruciare nemici casuali"}, -- A Lighter
	[136] = {"136", "Lucchetto Rotto", "Porte, blocchi chiave e bauli dorati possono essere aperti con le esplosioni#Le esplosioni possono aprire anche la \"Strana Porta\" in \"Profondità II\""}, -- Broken Padlock
	[137] = {"137", "Myosotis", "Entrare in un nuovo piano genera nella stanza iniziale fino a 4 consumabili non collezionati nel piano precedente"}, -- Myosotis
	[138] = {"138", "'M", "Usare un oggetto attivo lo rilancia"}, -- 'M
	[139] = {"139", "Amuleto Lacrima", "{{Luck}} +4 Fortuna per gli effetti delle lacrime basati sulla Fortuna"}, -- Teardrop Charm
	[140] = {"140", "Pomo di Sodoma", "Raccogliere Cuori Rossi può convertirli in ragni blu#Agisce anche con la salute al massimo#L'effetto può consumare cuori richiesti per curarsi"}, -- Apple of Sodom
	[141] = {"141", "Ninna Nanna Dimenticata", "Raddoppia il rateo di fuoco dei famigli"}, -- Forgotten Lullaby
	[142] = {"142", "Fede di Bet", "{{Collectible584}} Entrare in nuovo piano genera 4 fiammelle di \"Libro delle Virtù\""}, -- Beth's Faith
	[143] = {"143", "Vecchio Condensatore", "{{Battery}} Previene che gli oggetti attivi si carichino dopo il completamento di una stanza#{{Battery}} Completare una stanza ha il 20% di chance di generare una pila#{{Luck}} 33% di chance con 5 di Fortuna"}, -- Old Capacitor
	[144] = {"144", "Verme Cerebrale", "Le lacrime girano di 90 gradi per mirare a nemici che possono aver mancato"}, -- Brain Worm
	[145] = {"145", "Perfezione", "↑ {{Luck}} +10 Fortuna#Subire danni distrugge il ninnolo"}, -- Perfection
	[146] = {"146", "Corona del Diavolo", "{{RedTreasureRoom}} Gli oggetti delle Stanze del Tesoro vengono sostituiti da patti con il diavolo"}, -- Devil's Crown
	[147] = {"147", "Penny Carico", "{{Battery}} Raccolgiere una moneta ha il 17% di chance di aggiungere una carica all'oggetto attivo#Chance più alte da nichelini e decini"}, -- Charged Penny
	[148] = {"148", "Collana dell'Amicizia", "Tutti i famigli orbitano intorno ad Isaac"}, -- Friendship Necklace
	[149] = {"149", "Pulsante Antipanico", "Usa l'oggetto attivo poco prima di subire danni se esso è carico"}, -- Panic Button
	[150] = {"150", "Chiave Blu", "Le porte chiuse possono essere aperte senza chiavi, ma Isaac deve completare una stanza del piano \"Calma\" prima di accedere alla stanza dietro di essa"}, -- Blue Key
	[151] = {"151", "Lima", "Ritrae gran parte delle spine, rendendole innocue#Influisce anche sulle {{CursedRoom}} porte delle Stanze Maledette, bauli imitatori e altri ostacoli spinosi"}, -- Flat File
	[152] = {"152", "Lente del Telescopio", "{{PlanetariumChance}} +9% di chance di un Planetario#+15% di chance aggiuntive se non si è entrati nel Planetario#Si possono generare Planetari in \"Utero\" e \"Carcassa\""}, -- Telescope Lens
	[153] = {"153", "Ciocca di Mamma", "25% di chance di un effetto di un oggetto di Mamma casuale ad ogni stanza"}, -- Mom's Lock
	[154] = {"154", "Sacchetto dei Dadi", "50% di chance di conferire in ogni nuova stanza un uso singolo di un oggetto dado#Uscendo dalla stanza il dado sparisce#Il dado non occupa uno slot per pillole/carte"}, -- Dice Bag
	[155] = {"155", "Corona Santa", "Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio in \"Cattedrale\""}, -- Holy Crown
	[156] = {"156", "Bacio di Mamma", "{{Heart}} +1 Portacuori mentre viene tenuto"}, -- Mother's Kiss
	[157] = {"157", "Carta Strappata", "Ogni 15 proiettili, Isaac spara una lacrima di {{Collectible149}} \"Ipecac\" + {{Collectible5}} \"Il Mio Riflesso\" con valore di gittata molto alto"}, -- Torn Card
	[158] = {"158", "Tasca Strappata", "Subire danni fa sì che Isaac butti a terra 2 sue monete, chiavi o bombe#I consumabili possono venire sostituiti con altre varianti, tra cui chiavi dorate, nichelini, decini, etc."}, -- Torn Pocket
	[159] = {"159", "Chiave Dorata", "{{Key}} +1 Chiave quando viene raccolto#{{GoldenChest}} Rimpiazza tutti i bauli (eccetto quelli Vecchi/Mega) con bauli dorati#{{GoldenChest}} I bauli dorati possono contenere carte, pillole o ninnoli extra"}, -- Gilded Key
	[160] = {"160", "Sacco Fortunato", "{{GrabBag}} Entrare in nuovo piano genera un sacco"}, -- Lucky Sack
	[161] = {"161", "Corona Empia", "Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio in \"Sheol\""}, -- Wicked Crown
	[162] = {"162", "Moncherino di Azazel", "{{Player7}} Completare una stanza ha il 50% di chance di trasformare il giocatore in Azazel#{{Timer}} L'effetto dura fino al completamento e all'uscita dalla stanza"}, -- Azazel's Stump
	[163] = {"163", "Tarzanello", "Tutte le Cacchine sono amichevoli#Completare una stanza genera 1 Cacchina casuale"}, -- Dingle Berry
	[164] = {"164", "Munizioni Giocattolo", "{{Bomb}} Genera 1 bomba extra per ogni bomba piazzata"}, -- Ring Cap
	[165] = {"165", "No No!", "Da \"Utero\" in poi rimpiazza tutte le monete e chiavi generate con una bomba, cuore, pillola, carta, ninnolo, pila, o mosca nemica"}, -- Nuh Uh!
	[166] = {"166", "Plastilina", "50% di chance di conferire l'effetto di un oggetto passivo casuale ad ogni stanza"}, -- Modeling Clay
	[167] = {"167", "Osso Levigato", "Completare una stanza ha il 25% di chance di generare un Ossuto amichevole"}, -- Polished Bone
	[168] = {"168", "Cuore Cavo", "{{EmptyBoneHeart}} Entrare in un nuovo piano conferisce +1 Cuore Osseo"}, -- Hollow Heart
	[169] = {"169", "Disegno di un Bimbo", "{{Guppy}} Mentre viene tenuto conta come 1 oggetto per la trasformazione di Guppy"}, -- Kid's Drawing
	[170] = {"170", "Chiave di Cristallo", "{{Collectible580}} Completare una stanza ha il 33% di chance di creare una stanza di \"Chiave Rossa\"#Chance più basse che ciò avvenga in una stanza rossa"}, -- Crystal Key
	[171] = {"171", "Affarone del Mercante", "{{DevilRoom}} 50% di chance che i patti con il diavolo si pagano in monete anziché cuori"}, -- Keeper's Bargain
	[172] = {"172", "Penny Maledetto", "Raccogliere 1 moneta teletrasporta Isaac in una stanza casuale#Può teletrasportare in stanza segrete"}, -- Cursed Penny
	[173] = {"173", "La Tua Anima", "{{DevilRoom}} Permette ad Isaac di prendere gratuitamente 1 patto con il diavolo#{{Warning}} Il patto con il diavolo gratuito influenza comunque le chance per le Stanze dell'Angelo"}, -- Your Soul
	[174] = {"174", "Magnete Numero:", "{{DevilChance}} +10% di chance di una Stanza del Diavolo#Previene l'apparizione di Krampus nelle Stanze del Diavolo#Le Stanze del Diavolo sono varianti speciali con più patti, Cuori Neri e nemici"}, -- Number Magnet
	[175] = {"175", "Chiave Strana", "Apre la porta al piano \"Calma\" a prescindere dal timer#Usare {{Collectible297}} \"Scrigno di Pandora\" consuma la chiave e genera 6 oggetti da categorie casuali"}, -- Strange Key
	[176] = {"176", "Mini Grumo", "Genera un grumo di sangue che imita i movimenti di Isaac#Copia le statistiche, gli effetti delle lacrime e il 35% dei danni di Isaac#Resuscita ad ogni stanza"}, -- Lil Clot
	[177] = {"177", "Tatuaggio Temporaneo", "{{Chest}} Completare una {{ChallengeRoom}} Sala Sfida genera un baule#Completare una {{BossRushRoom}} Sala Sfida Boss genera un oggetto"}, -- Temporary Tattoo
	[178] = {"178", "M80 Ingerito", "Subire danni ha il 50% di chance che Isaac esploda#Non distrugge le Macchine di Donazione Sangue o i Confessionali, ma genera consumabili come se fossero esplosi"}, -- Swallowed M80
	[179] = {"179", "Radiocomando", "I famigli imitano i movimenti di Isaac#Tenere premuto il tasto di rilascio ({{ButtonRT}}) mantiene fermi i familiari"}, -- RC Remote
	[180] = {"180", "Anima Ritrovata", "Segue i movimenti di Isaac e spara lacrime spettrali#Copia le statistiche, effetti delle lacrime e il 50% dei danni di Isaac#Muore in un colpo#Resuscita ad ogni piano"}, -- Found Soul
	[181] = {"181", "Pacchetto Espansione", "Usare un oggetto attivo attiva l'effetto di un altro oggetto attivo da 1-2 cariche"}, -- Expansion Pack
	[182] = {"182", "Essenza di Bet", "Entrare in una {{AngelRoom}} Stanza dell'Angelo genera 5 fiammelle#Donare ai Mendicanti ha il 25% di chance di generare 1 fiammella"}, -- Beth's Essence
	[183] = {"183", "I Gemelli", "50% di chance di duplicare un famiglio ad ogni stanza#Se Isaac non ha famigli conferisce {{Collectible8}} \"Fratello Bobby\" o {{Collectible67}} \"Sorella Maggy\""}, -- The Twins
	[184] = {"184", "Carte per l'Adozione", "{{Shop}} I Negozi vendono famigli per 10 monete"}, -- Adoption Papers
	[185] = {"185", "Zampa di Grillo", "Uccidere un nemico ha il 17% di chance di generare una locusta casuale"}, -- Cricket Leg
	[186] = {"186", "Migliore Amica di Apollion", "{{Collectible706}} Conferisce 1 locusta di \"Abisso\""}, -- Apollyon's Best Friend
	[187] = {"187", "Occhiali Rotti", "{{TreasureRoom}} 50% di chance di aggiungere un oggetto nascosto nella stanza del Tesoro#50% di chance di rivelare l'oggetto nascosto nelle Stanze del Tesoro della via alternativa"}, -- Broken Glasses
	[188] = {"188", "Cubo di Ghiaccio", "Entrare in una stanza ha il 20% di chance di pietrificare nemici casuali#{{Freezing}} Uccidere un nemico pietrificato lo congela"}, -- Ice Cube
	[189] = {"189", "Sigillo di Bafometto", "Uccidere un nemico rende Isaac invincibile per 1 secondo#L'invincibilità incrementa di durata ad ogni uccisione consecutiva"}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "Effect doubled!"
EID.descriptions[languageCode].tripledTrinket = "Effect tripled!"
EID.descriptions[languageCode].quadrupledTrinket = "Effect quadrupled!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Using an active item teleports Isaac to {{ColorGold}}a room that has not been cleared yet{{CR}}#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "coins", "pickups" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Rosary is added to all item pools" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Allows Isaac to take Shop items for free{{CR}}#Chance to turn into a regular {{Trinket13}} Store Credit after each purchase" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Rocks may drop 2 coins", "Rocks may drop 2 coins", "Rocks may drop 3 coins" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "poop", "golden poop" },
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "half a heart", "a heart", "one and a half hearts" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
		"Heals {{ColorGold}}2{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}}Match Stick or gulping",
		"Heals {{ColorGold}}3{{CR}} hearts when entering a {{BossRoom}}Boss Room#-{{ColorGold}}30{{CR}}% boss health#{{ColorGold}}Removable!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Worm's stat boosts are doubled", "Worm's stat boosts are tripled", "Worm's stat boosts are quadrupled", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Trinket effect is doubled if possible", "Trinket effect is tripled if possible", "Trinket effect is quadrupled if possible", },
	-- NO!
	[88] = { "Prevents Quality {{Quality0}} items from spawning" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that might get fixed (maybe it'll give a Golden Key?)
	[159] = { "Replaces all chests (except Old/Mega) with golden chests#Golden chests can contain extra cards, pills or trinkets" },
	-- The Twins
	[183] = { "May copy/grant 2 familiars", "May copy/grant 2 familiars", "May copy/grant 3 familiars" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData in this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
in their goldenTrinketEffects
]]
EID.descriptions[languageCode].goldenTrinketData = { }

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Il Bagatto", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Range}} +3 Gittata#Lacrime a ricerca"}, -- I - The Magician
	[12] = {"12", "XI - Forza", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +0.3 Danni#↑ {{Damage}} x1.5 Moltiplicatore Danni#↑ {{Range}} +2.5 Gittata"}, -- XI - Strength
	[16] = {"16", "XV - Il Diavolo", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +2 Danni"}, -- XV - The Devil
	[18] = {"18", "XVII - Le Stelle", "{{TreasureRoom}} Teletrasporta Isaac nella Stanza dei Tesori#{{Planetarium}} Se c'è un Planetario, lo teletrasporta lì"}, -- XVII - The Stars
	[27] = {"27", "Asso di Fiori", "{{Bomb}} Converte tutti i consumabili, bauli e nemici che non sono boss in bombe"}, -- Ace of Clubs
	[28] = {"28", "Asso di Quadri", "{{Coin}} Converte tutti i consumabili, bauli e nemici che non sono boss in monete"}, -- Ace of Diamonds
	[29] = {"29", "Asso di Picche", "{{Key}} Converte tutti i consumabili, bauli e nemici che non sono boss in chiavi"}, -- Ace of Spades
	[30] = {"30", "Asso di Cuori", "{{Heart}} Converte tutti i consumabili, bauli e nemici che non sono boss in Cuori Rossi"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Genera una botola per il prossimo piano#{{LadderRoom}} Genera un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Rende Isaac invincibile per 20 secondi"}, -- Algiz
	[42] = {"42", "Carta del Caos", "Usare la carta la lancia nella direzione in cui Isaac si sta muovendo#Uccide istantaneamente QUALSIASI nemico tocchi (eccetto Delirio e La Bestia)"}, -- Chaos Card
	[51] = {"51", "Carta Santa", "Scudo monouso di \"Manto Sacro\" (previene i danni per una volta)"}, -- Holy card
	[52] = {"52", "Crescita Gigante", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +7 Danni#↑ {{Range}} +3 Gittata#Aumento Statura#Permette ad Isaac di distruggere le rocce camminandoci sopra"}, -- Huge Growth
	[55] = {"55", "Frammento di Runa", "{{Rune}} Attiva l'effetto di una runa casuale#L'effetto della runa è più debole"}, -- Rune Shard
	[56] = {"56", "0 - Il Matto?", "Butta a terra tutti i cuori di Isaac a parte 1 e tutti i suoi consumabili#Se possibile le monete e le bombe vengono rilasciate in forma di {{Collectible74}} \"Un Quarto\" o {{Collectible19}} \"Bum!\""}, -- 0 - The Fool?
	[57] = {"57", "I - Il Bagatto?", "{{Timer}} Conferisce un'aura che respinge nemici e proiettili per 60 secondi"}, -- I - The Magician?
	[58] = {"58", "II - La Papessa?", "Il piede di Mamma cerca di calpestare Isaac per 60 secondi"}, -- II - The High Priestess?
	[59] = {"59", "III - L'Imperatrice?", "{{Timer}} Conferisce per 60 secondi:#↑ {{Heart}} +2 Salute#↑ {{Tears}} +1.5 Rateo di Fuoco#↓ {{Speed}} -0.1 Velocità"}, -- III - The Empress?
	[60] = {"60", "IV - L'Imperatore?", "Teletrasporta Isaac in una Stanza del Boss extra da completare in cambio di un oggetto#Il boss proviene da 2 piani al di sotto di quello corrente"}, -- IV - The Emperor?
	[61] = {"61", "V - Il Papa?", "{{EmptyBoneHeart}} Genera 2 Cuori Ossei"}, -- V - The Hierophant?
	[62] = {"62", "VI - Gli Amanti?", "Genera un oggetto scelto dalla categoria di oggetti della stanza corrente#{{BrokenHeart}} Converte 1 Portacuori o 2 Cuori Celesti in 1 Cuore Infranto"}, -- VI - The Lovers?
	[63] = {"63", "VII - Il Carro?", "{{Timer}} Conferisce per 10 secondi:#↑ {{Tears}} x4 Moltiplicatore del rateo di fuoco#Invincibilità ma senza potersi muovere"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Giustizia?", "{{GoldenChest}} Evoca 2-4 Bauli Dorati"}, -- VIII - Justice?
	[65] = {"65", "IX - L'Eremita?", "{{Coin}} Converte tutti i consumabili e gli oggetti nella stanza in un numero di monete pari al loro valore nel Negozio#Se non c'è nulla di convertibile, genera invece 1 Penny"}, -- IX - The Hermit?
	[66] = {"66", "X - Ruota della Fortuna?", "{{DiceRoom}} Attiva l'effetto di una Stanza del Dado casuale"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Forza?", "{{Timer}} I nemici nella stanza vengono {{Slow}} indeboliti e prendono il doppio dei danni per 60 secondi"}, -- XI - Strength?
	[68] = {"68", "XII - L'Appeso?", "{{Timer}} Conferisce per 30 secondi:#↓ {{Speed}} -0.1 Velocità#Triplo colpo#{{Coin}} I nemici uccisi lasciano monete"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Morte?", "{{Collectible545}} Attiva \"Libro dei Morti\"#Genera entità d'ossa per ogni nemico ucciso nella stanza"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperanza?", "{{Pill}} Costringe Isaac ad assumere 5 pillole casuali"}, -- XIV - Temperance?
	[71] = {"71", "XV - Il Diavolo?", "{{Timer}} Conferisce per 60 secondi:#{{Collectible33}} Attiva \"La Bibbia\" (volo)#{{Collectible390}} Famiglio di \"Serafino\"#{{MomsHeart}} Uccide istantaneamente Mamma, Cuore di Mamma e \"È Vivo!\"#{{Warning}} Uccide Isaac se usato contro Satana"}, -- XV - The Devil?
	[72] = {"72", "XVI - La Torre?", "Genera 7 ammassi di rocce e ostacoli casuali#Gli ammassi contengono spesso rocce colorate"}, -- XVI - The Tower?
	[73] = {"73", "XVII - Le Stelle?", "Rimuove l'oggetto passivo raccolto per primo da Isaac (esclusi gli oggetti di partenza)#Genera 2 oggetti casuali dalla categoria di oggetti della stanza corrente"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - La Luna?", "{{UltraSecretRoom}} Teletrasporta Isaac nella Stanza Ultra Segreta#La via di ritorno sarà composta da Stanza Rosse"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - Il Sole?", "{{Timer}} Conferisce fino all'uscita dal piano:#↑ {{Damage}} +1.5 Danni#Volo e lacrime spettrali#{{BoneHeart}} Converte i Portacuori in Cuori Ossuti ()#{{CurseDarkness}} Malediz. del Buio"}, -- XIX - The Sun?
	[76] = {"76", "XX - Il Giudizio?", "{{RestockMachine}} Genera 1 Macchina di Rifornimento"}, -- XX - Judgement?
	[77] = {"77", "XXI - Il Mondo?", "{{LadderRoom}} Genera una botola con cunicolo"}, -- XXI - The World?
	[78] = {"78", "Chiave Spezzata", "{{Collectible580}} \"Chiave Rossa\" monouso"}, -- Cracked Key
	[79] = {"79", "Regina di Cuori", "{{Heart}} 1-20 Cuori Rossi"}, -- Queen of Hearts
	[80] = {"80", "Cambio Colore", "Copia l'effetto della pillola, carta, runa, pietra dell'anima o oggetto attivati più di recente"}, -- Wild Card
	[81] = {"81", "Anima di Isaac", "Fa sì che tutti i piedistalli nella stanza alternino tra 2 oggetti diversi"}, -- Soul of Isaac
	[82] = {"82", "Anima di Maddalena", "{{Timer}} Conferisce fino all'uscita dalla stanza:#{{HalfHeart}} I nemici uccisi lasciano mezzi Cuori Rossi che spariscono dopo 2 secondi"}, -- Soul of Magdalene
	[83] = {"83", "Anima di Caino", "Apre tutte le porte nella stanza#{{Collectible580}} Crea Stanza Rosse in ogni muro in cui è possibile"}, -- Soul of Cain
	[84] = {"84", "Anima di Giuda", "{{Collectible705}} Attiva \"Arti Oscure\" per la durata di 3 secondi#↑ {{Damage}} Più Danni temporanei per ogni nemico/proiettile colpito"}, -- Soul of Judas
	[85] = {"85", "Anima di ???", "{{Poison}} Rilascia 8 scorregge con liquido marrone, per poi generare rapidamente 7 Bombe Popò#Rimanere sul liquido conferisce:#↑ {{Tears}} +1.5 Rateo di Fuoco#↑ {{Damage}} +1 Danni"}, -- Soul of ???
	[86] = {"86", "Anima di Eva", "{{Timer}} 14 famigli di \"Uccello Morto\" attaccano in volo i nemici fino alla loro morte o all'uscita dalla stanza"}, -- Soul of Eve
	[87] = {"87", "Anima di Sansone", "{{Collectible704}} Attiva \"Violenza!\" per 10 secondi#{{Timer}} Ogni uccisione incrementa la durata di 1 secondo"}, -- Soul of Samson
	[88] = {"88", "Anima di Azazel", "{{Collectible441}} Spara un raggio di \"Mega Sbotto\" per 7.5 secondi"}, -- Soul of Azazel
	[89] = {"89", "Anima di Lazzaro", "Isaac muore e resuscita subito dopo con mezzo cuore#Se si subiscono danni letali questo oggetto viene usato automaticamente (opera come una vita extra)"}, -- Soul of Lazarus
	[90] = {"90", "Anima di Eden", "Rilancia i piedistalli e i consumabili nella stanza#Gli oggetti rilanciati appartengono a categorie di oggetti casuali"}, -- Soul of Eden
	[91] = {"91", "Anima dello Smarrito", "{{Player10}} Trasforma il giocatore in Lo Smarrito fino all'uscita dalla stanza#Permette di prendere gratuitamente 1 {{DevilRoom}} oggetto della Stanza del Diavolo#Permette di aprire gratuitamente la porta per \"Mausoleo\" o \"Gehenna\""}, -- Soul of the Lost
	[92] = {"92", "Anima di Lilith", "Conferisce permanentemente un famiglio casuale"}, -- Soul of Lilith
	[93] = {"93", "Anima del Mercante", "{{Coin}} Genera 3-25 monete casuali"}, -- Soul of the Keeper
	[94] = {"94", "Anima di Apollion", "Genera 15 locuste casuali"}, -- Soul of Apollyon
	[95] = {"95", "Anima del Dimenticato", "{{Player16}} Genera Il Dimenticato come personaggio secondario fino all'uscita dalla stanza"}, -- Soul of the Forgotten
	[96] = {"96", "Anima di Betania", "{{Collectible584}} Genera 6 fiammelle casuali di \"Libro delle Virtù\""}, -- Soul of Bethany
	[97] = {"97", "Anima di Giacobbe ed Esaù", "{{Player20}} Genera Esaù come personaggio secondario fino all'uscita dalla stanza#Viene generato con lo stesso numero di oggetti passivi del giocatore"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Conferisce anche l'effetto di {{Collectible34}} \"Il Libro di Belial\"", -- I - The Magician
	[3] = "Un secondo piede colpisce subito dopo il primo", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} +1 Cuore Celeste se il boss non è stato ancora sconfitto", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Genera {{ColorShinyPurple}}2{{CR}} {{UnknownHeart}} cuori, {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi"}, -- VIII - Justice
	[10] = "Impedisce che Avarizia compaia nel Negozio#Se Avarizia è già stata affrontata all'interno di un Negozio di Avarizia lo converte in un Negozio normale", -- IX - The Hermit
	[11] = {" una ", " 2 ", "Macchina", "{{CR}}Macchine"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" una ", " 2 ", " Macchina", " {{CR}}Macchine"}, -- XIV - Temperance ( + Greed version) TENERE IN CONSIDERAZIONE TRADUZIONE DEVIL BEGGAR PER INSERIRE ALTRE OPZIONI
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Se non si è ancora entrati nella Stanza dei Tesori, avrà 2 oggetti tra cui scegliere", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {" una ", " 2 ", "Mendicante ", "{{CR}}Mendicanti "}, -- XX - Judgement TENERE IN CONSIDERAZIONE TRADUZIONE DEVIL BEGGAR PER INSERIRE ALTRE OPZIONI
	[56] = "Insieme ai consumabili butta a terra 6 degli oggetti di Isaac più recenti", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Attiva l'effetto 2 volte", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Genera 1 {{Coin}} penny aggiuntivo", -- IX - The Hermit?
	[66] = {"l'effetto", "2 {{CR}}effetti"}, -- X - Wheel of Fortune?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Rimuove {{ColorShinyPurple}}2{{CR}} degli oggetti passivi ottenuti per primi da Isaac (esclusi gli oggetti di partenza)#Genera {{ColorShinyPurple}}4{{CR}} oggetti casuali dalla categoria di oggetti della stanza corrente"}, -- XVII - The Stars?
	[76] = {" una ", " 2 ", " Macchina", " {{CR}}Macchine"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Genera 1 Macchina", -- X - Wheel of Fortune
	[12] = "Gli aumenti di statistica non vengono raddoppiati", -- XI - Strength
	[14] = "Infligge 40 danni", -- XIII - Death
	[15] = "Genera 1 Macchina", -- XIV - Temperance
	[16] = "+2 Danni", -- XV - The Devil
	[20] = "Infligge 200 danni", -- XIX - The Sun
	[21] = "Genera 1 Mendicante", -- XX - Judgement
	[56] = "Butta a terra 3 oggetti", -- 0 - The Fool?
	[64] = "Genera 2-7 bauli", -- VIII - Justice?
	[65] = "Non genera 1 penny aggiuntivo", -- IX - The Hermit?
	[66] = "Attiva 1 effetto", -- X - Wheel of Fortune?
	[68] = "Dura per 30 secondi", -- XII - The Hanged Man?
	[72] = "Genera 7 ammassi", -- XVI - The Tower?
	[73] = "Rimuove 1 oggetto e ne genera 2", -- XVII - The Stars?
	[76] = "Genera 1 Macchina", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Le Bombe sono Chiavi", "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi#Vengono invertite anche bombe e chiavi dorate"}, -- Bombs are Key
	[12] = {"11", "Meno Gittata", "↓ {{Range}} -1 Gittata"}, -- Range Down
	[13] = {"12", "Più Gittata", "↑ {{Range}} +1.25 Gittata"}, -- Range Up
	[38] = {"37", "Rétro Visione", "{{Timer}} Rende lo schermo pixellato per 30 secondi"},
	[42] = {"41", "Ho Sonno...", "{{Slow}} Rallenta Isaac e tutti i nemici nella stanza"}, -- I'm Drowsy...
	[43] = {"42", "Sono Euforico!!!", "{{Timer}} Velocizza Isaac e tutti i nemici nella stanza#Si attiva nuovamente dopo 30 e 60 secondi"}, -- I'm Excited!!!
	[48] = {"47", "Meno Velocità Colpi", "↓ {Shotspeed}} -0.15 Velocità Colpi"}, -- Shot Speed Down
	[49] = {"48", "Più Velocità Colpi", "↑ {Shotspeed}} +0.15 Velocità Colpi"}, -- Shot Speed Up
	[50] = {"49", "Pillola Sperimentale", "↑ Aumenta 1 statistica casuale#↓ Diminuisce 1 statistica casuale"}, -- Experimental Pill
	[9999] = {"", "Pillola Dorata", "Effetto di una pillola casuale#Chance di autodistruggersi dopo qualche uso"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Gas Nocivo", "{{Poison}} Avvelena tutta la stanza"}, -- Bad Gas
	{"1", "Brutto Trip", "{{Heart}} Infligge 2 cuori di danno ad Isaac#Con 1 cuore o meno diventa una pasticcona \"Salute al Massimo\" (+3 Cuori Celesti)"}, -- Bad Trip
	{"2", "Palle d'Acciaio", "{{SoulHeart}} +4 Cuori Celesti"}, -- Balls of Steel
	{"3", "Le Bombe sono Chiavi", "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi#Aumenta del 50% l'ammontare di bombe e chiavi#Vengono invertite anche bombe e chiavi dorate"}, -- Bombs are Key
	{"4", "Diarrea Esplosiva", "Evoca qualche Mega Bomba Troll a ricerca"}, -- Explosive Diarrhea
	{"5", "Salute al Massimo", "{{SoulHeart}} +3 Cuori Celesti#{{Heart}} Salute al Massimo"}, -- Full Health
	{"6", "Meno Salute", "↓ {{EmptyHeart}} -2 Salute#Con 1 Portacuore o meno diventa una pasticcona \"Più Salute\""}, -- Health Down
	{"7", "Più Salute", "↑ {{EmptyHeart}} +2 Portacuori vuoti"}, -- Health Up
	{"8", "Ho Trovato delle Pillole", "Nessun effetto"}, -- I Found Pills
	{"9", "Pubertà", "Nessun effetto"}, -- Puberty
	{"10", "Moscarina!", "{{Collectible279}} Conferisce un orbitale \"Grande Fan\"#Non c'è limite nel numero di \"Grande Fan\" in possesso ad Isaac"}, -- Pretty Fly
	{"11", "Meno Gittata", "↓ {{Range}} -2 Gittata"}, -- Range Down
	{"12", "Più Gittata", "↑ {{Range}} +2.5 Gittata"}, -- Range Up
	{"13", "Meno Velocità", "↓ {{Speed}} -0.24 Velocità"}, -- Speed Down
	{"14", "Più Velocità", "↑ {{Speed}} +0.3 Velocità"}, -- Speed Up
	{"15", "Meno Lacrime", "↓ {{Tears}} -0.56 Lacrime"}, -- Tears Down
	{"16", "Più Lacrime", "↑ {{Tears}} +0.70 Lacrime"}, -- Tears Up
	{"17", "Meno Fortuna", "↓ {{Luck}} -2 Fortuna"}, -- Luck Down
	{"18", "Più Fortuna", "↑ {{Luck}} +2 Fortuna"}, -- Luck Up
	{"19", "Telepillole", "Teletrasporta Isaac in una stanza casuale"}, -- Telepills
	{"20", "Energia per 48 Ore!", "{{Battery}} Ricarica pienamente gli oggetti attivi#{{Battery}} Butta a terra 3-4 pile"}, -- 48 Hour Energy!
	{"21", "Ematemesi", "{{EmptyHeart}} DProsciuga tutti i Portacuori tranne 1#{{Heart}} Genera 1-4 Cuori Rossi"}, -- Hematemesis
	{"22", "Paralisi", "Impedisce ad Isaac di muoversi e sparare per 4 secondi"}, -- Paralysis
	{"23", "Ho Visto Tutto!", "{{SecretRoom}} Apre tutte le entrate per le stanze segrete nel piano#Efffetto di mappatura completo"}, -- I can see forever!
	{"24", "Feromoni", "{{Charm}} Rende permanentemente amichevole ogni nemico nella stanza"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Nasconde la mappa del piano"}, -- Amnesia
	{"26", "Limonata", "Genera una pozza di liquido delle dimensioni di una stanza che danneggia i nemici"}, -- Lemon Party
	{"27", "Ma 6 1 Mago?", "{{Timer}} Spara diagonalmente per 60 secondi"}, -- R U a Wizard?
	{"28", "Percocet!", "{{Timer}} Riduce tutti i danni subiti a mezzo cuore fino all'uscita dalla stanza"},  -- Percs!
	{"29", "Astinenza!", "{{Timer}} Aumenta tutti i danni subiti ad 1 cuore fino all'uscita dalla stanza"}, -- Addicted!
	{"30", "Re-Lax", "Isaac genera cacca dietro di lui per 10 secondi"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Effetto della Malediz. del Dedalo fino all'uscita dal piano"}, -- ???
	{"32", "Una ti Rende Più Grande", "Aumenta considerevolmente la statura di Isaac#Non influisce sulla sua hitbox"}, -- One makes you larger
	{"33", "Una ti Rende più Piccolo", "Diminuisce considerevolmente la statura di Isaac#In più diminuisce le dimensioni dell'hitbox"}, -- One makes you small
	{"34", "Infestato!", "Genera 2 ragni blu per ogni cacca presente nella stanza"}, -- Infested!
	{"35", "Infestato?", "Genera 2 ragni blu per ogni nemico nella stanza#Se non ci sono nemici nella stanza genera 2-6 ragni blu"}, -- Infested?
	{"36", "Pillola del Potere!", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +7 Danni#↑ {{Range}} +3 Gittata#{{Timer}} Conferisce per 6.5 secondi:#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo#{{HalfHeart}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"}, -- Power Pill!
	{"37", "Rétro Visione", "Rende lo schermo pixellato per 90 secondi"}, -- Retro Vision
	{"38", "Amici fino alla Fine!", "Genera 6 mosche blu"}, -- Friends Till The End!
	{"39", "Liqui-Lax", "Genera una pozza di liquido scivoloso dalla lunga durata"}, -- X-Lax
	{"40", "Qualcosa non quadra...", "{{Slow}} Genera una pozza di liquido rallentante dalla lunga durata"}, -- Something's wrong...
	{"41", "Ho Sonno...", "{{Slow}} Rallenta Isaac e tutti i nemici nella stanza"}, -- I'm Drowsy...
	{"42", "Sono Euforico!!!", "Velocizza Isaac e tutti i nemici nella stanza#Si attiva nuovamente dopo 30 e 60 secondi"}, --I'm Excited!!!
	{"43", "Gulp!", "{{Trinket}} Consuma il ninnolo di Isaac e conferisce permanentemente i suoi effetti"}, -- Gulp!
	{"44", "Orf!", "{{Collectible149}} Spara un ammasso di lacrime di \"Ipecac\""}, -- Horf!
	{"45", "Baciato dal Sole!", "{{Timer}} Conferisce per 6 secondi:#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo#{{HalfHeart}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Genera come pasticcona l'ultima pillola utilizzata"}, -- Vurp!
	{"47", "Meno Velocità Colpi", "↓ {{Shotspeed}} -0.3 Velocità Colpi"}, -- Shot Speed Down
	{"48", "Più Velocità Colpi", "↑ {{Shotspeed}} +0.3 Velocità Colpi"}, -- Shot Speed Up
	{"49", "Pillola Sperimentale", "↑ Aumenta 2 volte 1 statistica casuale#↓ Diminuisce 2 volte 1 statistica casuale"}, -- Experimental Pill
	[9999] = {"", "Pillola Dorata", "Effetto di una pasticcona casuale#Chance di autodistruggersi dopo qualche uso"}, -- golden Pill
}

---------- Character Info ----------
-- TODO: make these more consistent with other descs, add icons, and is there any traits of the characters missing?
local repCharacterInfo = {
	[4] = {"???", "Can't have Red Hearts#Devil deals that would cost 1 or 2 Red Hearts will cost 1 or 2 Soul Hearts instead#Destroying poop spawns 1 blue fly"},
	[8] = {"Lazarus", "Once per floor, when you die:#Resurrect as Lazarus Risen#Lose 1 Red Heart container#↑ {{Damage}} 0.5 Damage up"},
	[11] = {"Lazarus Risen", "Increased stats and x1.4 damage multiplier#When entering a new floor, turn back into Lazarus"},
	[12] = {"Dark Judas", "x2 Damage multiplier#Can't have Red Hearts#Health ups grant Black Hearts#Counts as Judas for completion marks"},
	[14] = {"Keeper", "Heal by picking up coins#Heart pickups are turned into Blue Flies#Devil deals cost 15 or 30 coins"},
	[18] = {"Bethany", "Use Soul Hearts to charge your active item#Can't use Soul Hearts as health"},
	[19] = {"Jacob", "Control Jacob and Esau at the same time#Both characters drop a bomb when one is used#Esau stays in place while holding {{ButtonRT}}#{{ButtonLT}} uses Jacob's active, {{ButtonRB}} uses Esau's active, hold {{ButtonRT}} to use their card/pill#When there's a choice between items, Jacob and Esau can grab two simultaneously"},
	[20] = {"Esau", "Control Jacob and Esau at the same time#Both characters drop a bomb when one is used#Esau stays in place while holding {{ButtonRT}}#{{ButtonLT}} uses Jacob's active, {{ButtonRB}} uses Esau's active, hold {{ButtonRT}} to use their card/pill#When there's a choice between items, Jacob and Esau can grab two simultaneously"},
	
	[21] = {"Tainted Isaac", "Item pedestals cycle between 2 options#You can only carry 8 passive items#Cycle which item will be dropped for a 9th item with {{ButtonRT}}"},
	[22] = {"Tainted Magdalene", "Health above 2 Red Hearts will slowly drain#On contact, do a melee swing for 6x damage#Chance for enemies to drop Half Red Hearts that disappear in 2 seconds#Drop is guaranteed on melee kill#Heal twice as much from non-pickup sources#Damage taken to draining hearts doesn't affect Devil Deal chance"},
	[23] = {"Tainted Cain", "Touching an item pedestal turns it into a variety of pickups#Gain items by crafting 8 pickups together in the Bag of Crafting#The Bag's contents can be shifted with {{ButtonRT}} to replace specific pickups when full"},
	[24] = {"Tainted Judas", "Can't have Red Hearts#Health ups grant Black Hearts"},
	[25] = {"Tainted ???", "Can't have Red Hearts#Bombs are replaced with Poop Spells#Doing damage spawns poop pickups#The HUD has a preview of your upcoming poop spells#You can store the next spell for later by using Hold"},
	[26] = {"Tainted Eve", "Holding Fire converts your hearts into Clot familiars#Different Heart types spawn Clots with more health and tear effects#Clots lose health over time#Using Sumptorium will absorb the Clots back into your health, if possible#Clots stay in place while holding {{ButtonRT}}#At half a heart left with no Clots, you gain a Mom's Knife-like attack until you heal and leave the room"},
	[27] = {"Tainted Samson", "Dealing or taking damage builds up Berserk mode#{{Timer}} When you go berserk, receive for 5 seconds:#↑ {{Speed}} +0.4 Speed#↓ {{Tears}} x0.5 Fire rate multiplier#↑ {{Tears}} +2 Fire rate#↑ {{Damage}} +3 Damage#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"},
	[28] = {"Tainted Azazel", "When you start charging, you sneeze blood#Hitting an enemy with the sneeze halves your charge time#The sneeze deals 1.5x Azazel's damage#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams#On death, cursed enemies explode and pass on the curse to nearby enemies"},
	[29] = {"Tainted Lazarus", "Lazarus has two states, each with their own items and health#Whenever you clear a room/wave or use Flip, you're switched to the other state"},
	[30] = {"Tainted Eden", "When you take damage, reroll your stats, items, trinket, and consumables#Items reroll into an item from the same item pool#Self-damage doesn't reroll"},
	[31] = {"Tainted Lost", "Cards that spawn have a 10% chance to be Holy Card#Quality {{Quality2}} or less items have a 20% chance to be rerolled#Only \"offensive\" items can spawn"},
	[32] = {"Tainted Lilith", "Pressing Fire launches a short-range fetus melee attack that does 3x damage#Holding Fire keeps the fetus out shooting tears towards the nearest enemy"},
	[33] = {"Tainted Keeper", "Enemies drop coins that disappear in 2 seconds#Most item pedestals cost 15 coins#Devil deals and Angel items cost 15 or 30 coins#Shops don't require a key and have increased stock"},
	[34] = {"Tainted Apollyon", ""},
	[35] = {"Tainted Forgotten", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts"},
	[36] = {"Tainted Bethany", "Use Red Hearts to charge your active item#Can't have Red Hearts#Stat increases are only 75% effective"},
	[37] = {"Tainted Jacob", "Dark Esau chases you, charging towards you when close#Anima Sola will chain Dark Esau down briefly, charging at you after 5 seconds or on using Anima Sola again#Dark Esau's charge does a lot of damage to enemies and ignores Boss Armor#If he hits you, you turn into a ghost that dies in one hit for the rest of the floor#While a ghost, one devil deal per room can be taken for free"},
	[38] = {"Dead Tainted Lazarus", "Lazarus has two states, each with their own items and health#Whenever you clear a room/wave or use Flip, you're switched to the other state"},
	[39] = {"Tainted Jacob 2", ""},
	[40] = {"Tainted Forgotten Soul", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts"},
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Ogni piedistallo ha due oggetti tra cui scegliere"},
	{"Maddalena", "", "<Nessun effetto>"},
	{"Caino", "", "<Nessun effetto>"},
	{"Giuda", "", "<Nessun effetto>"},
	{"???", "", "Cuori Spirito ottenuti da oggetti sono raddopiati"},
	{"Eva", "", "Prostituta di Babilonia è sempre attivo#Uccello Morto è attivo senza dover subire danni"},
	{"Sansone", "", "Lussuria Sanguinosa può incrementare i danni altre 4 volte, per un massimo totale di +14.0 danni"},
	{"Azazel", "", "La Brimstone di Azazel diventa più largo, come Mega Blast#Non ha effetti sui danni"},
	{"Lazzaro", "", "Se muori, resusciti come Lazarus Risen#Lazarus Risen nasce con +21.6 danni (temporaneo)"},
	{"Eden", "", "Evoca 3 piedistalli con oggetti casuali#Solo uno può essere preso"},
	{"Lo Smarrito", "", "Oggetti inutili a The Lost diventano più rari#Esempio: oggetti che danno solo vita, volo, e/o lacrime spettrali o attivati quando si prendono danni"},
	{"Lazarro Risorto", "", "Concede un bonus di +21.6 danni temporaneo"},
	{"Giuda Oscuro", "", "<Nessun effetto>"},
	{"Lilith", "", "<Nessun effetto>"},
	{"Mercante", "", "<Nessun effetto>"},
	{"Apollion", "", "<Nessun effetto>"},
	{"Il Dimenticatp", "", "The Soul può muoversi liberamente"},
	{"L'Anima", "", "The Soul può muoversi liberamente"},
	{"Betania", "", "Attivare un oggetto usando Cariche Spirito può essere gratuito"},
	{"Giacobbe", "", "Il fratello che raccoglie l'oggetto ottiene 3 copie di oggetti dell'altro fratello"},
	{"Esaù", "", "Il fratello che raccoglie l'oggetto ottiene 3 copie di oggetti dell'altro fratello"},
	{"Isaac Corrotto", "", "Aggiunge 4 spazi aggiuntivi per oggetti"},
	{"Maddalena Corrotta", "", "Aggiunge 1 cuore rosso che non scompare"},
	{"Caino Corrotto", "", "L'ammontare di consumabili trovati in piedistalli viene raddoppiato"},
	{"Giuda Corrotto", "", "<Nessun effetto>"},
	{"??? Corrotto", "", "Aumenta il numero massimo di cacche che si possono tenere a 29"},
	{"Eva Corrotta", "", "<Nessun effetto>"},
	{"Sansone Corrotto", "", "Il timer dell'abilità Berserk guadagna 3 secondi di tempo al posto che 1 per ogni nemico ucciso"},
	{"Azazel Corrotto", "", "Raddoppia la dimensione della Emottisi {{Collectible726}} di Azazel"},
	{"Lazarro Corrotto", "", "<Nessun effetto>"},
	{"Eden Corrotto", "", "Oggetti passivi ottenuti prima di prendere Diritto di Nascita non vengono cambiati quando ferito"},
	{"Lo Smarrito Corrotto", "", "+1 vita extra che ti fa rinascere nella stessa stanza infliggendo 200 danni a tutti i nemici#Può colpire lo stesso nemico più volte"},
	{"Lilith Corrotta", "", ""},
	{"Mercante Corrotto", "", "Monete lasciate da nemici uccisi vengono attratte fortemente verso Keeper#Nessun effetto per altre monete"},
	{"Apollion Corrotto", "", "<Nessun effetto>"},
	{"Il Dimenticato Corrotto", "", "Tainted Soul ha accesso all'abilità di richiamo {{Collectible714}}, e richiama automaticamente il corpo da qualsiasi distanza"},
	{"Betania Corrotta", "", "<Nessun effetto>"},
	{"Giacobbe Corrotto", "", "<Nessun effetto>"},
	{"Lazzaro Morto Corrotto", "", "<Nessun effetto>"},
	{"Giacobbe Corrotto 2", "", ""},
	{"L'Anima Corrotta", "", "Tainted Soul ha accesso all'abilità di richiamo {{Collectible714}}, e richiama automaticamente il corpo da qualsiasi distanza"},
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "s",

	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Black Heart",
	AddBombs = "{{Bomb}} {1} Bomb",
	AddCoins = "{{Coin}} {1} Coin",
	AddHearts = "{{Heart}} Heals {1} heart",
	AddKeys = "{{Key}} {1} Key",
	AddMaxHearts = "{{EmptyHeart}} {1} Heart container",
	AddSoulHearts = "{{SoulHeart}} {1} Soul Heart",

	-- Cache Flag names
	cacheFlagStart = "May affect ",
	[0] = "{{Damage}} Damage", "{{Tears}} Fire rate", "{{Shotspeed}} Shot speed", "{{Range}} Range", "{{Speed}} Speed", "Tear effects", "Tear color", "Flight", "Attack type", "Familiars", "{{Luck}} Luck", "Size", "Color", "Chest contents", [16] = "All stats",

	-- Attribute triggers
	active = "On use:#",
	pickup_collected = "On collecting a pickup:#",
	enemy_kill = "Killing an enemy has a 20% chance to:#",
	damage_taken = "Upon taking damage:#",
	entity_spawned = "When a {T1} is spawned:#",
	tear_fire = "Firing a tear has a 5% chance to:#",
	enemy_hit = "Hitting an enemy has a 5% chance to:#",
	room_clear = "On clearing a room:#",
	chain = " Then:{{CR}} ",

	-- Attribute effects
	area_damage = "Deal {1} damage in {2} tiles around Isaac",
	add_temporary_effect = "Grant {1} for the room",
	convert_entities = "Convert all {1} in the room to {2}",
	use_active_item = "Use {1}",
	spawn_entity = "Spawn a {1}",
	fart = "Fart on {1} tiles around Isaac",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "lit bomb",
	["5.0"] = "pickup",
	["5.10"] = "heart",
	["5.20"] = "coin",
	["5.30"] = "key",
	["5.40"] = "bomb pickup",
	["5.69"] = "sack",
	["5.70"] = "pill",
	["5.90"] = "battery",
	["5.300"] = "card",
	["9.-1"] = "enemy projectile",
	["999.-1"] = "grid object",
	["1000.0"] = "effect",

	-- Text for the base item that is granted
	grants = "Grants ",
}

---------- Bag of Crafting Text ----------
EID.descriptions[languageCode].CraftingBagContent = "Bag:"
EID.descriptions[languageCode].CraftingRoomContent = "Room:"
EID.descriptions[languageCode].CraftingFloorContent = "Floor:"
EID.descriptions[languageCode].CraftingSearch = "Search:"
EID.descriptions[languageCode].CraftingBagQuality = "Bag Quality:"
EID.descriptions[languageCode].CraftingBestQuality = "Best Quality:"
EID.descriptions[languageCode].CraftingHideKey = "Hide:"
EID.descriptions[languageCode].CraftingPreviewKey = "Preview:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+{1} more"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} of 8 items available"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Needs at least 8 to show crafting recipes!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Currently Hidden (Unhide with {1})"
-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Scroll: Hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Lock: {{ButtonX}}, Refresh: {{ButtonB}}, Reset Bag: Hold {{ButtonRB}}, Search: {1})"

---------- Misc. Text ----------

EID.descriptions[languageCode].ResultsWithX = "(Results with {1})"
EID.descriptions[languageCode].VariableCharge = "{1} charge:"

EID.descriptions[languageCode].poopSpells = {
	{"Poop", "Normal poop that can drop pickups"},
	{"Corny Poop", "Spawns blue flies while intact"},
	{"Burning Poop", "Deals contact damage while intact#Leaves a fire behind when destroyed"},
	{"Stone Poop", "Can deal damage 3 times when thrown#Takes a lot of hits to destroy"},
	{"Stinky Poop", "Emits a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Black Poop", "{{Slow}} Creates slowing creep#{{Confusion}} Deals 10 damage and confuses all enemies when destroyed"},
	{"Holy Poop", "{{Collectible543}} Create a white poop#While inside the poop's aura:#↑ {{Damage}} x1.2 Damage multiplier#↑ {{Tears}} x2.5 Fire rate multiplier#Homing tears#Chance to block damage"},
	{"Brown Creep", "Leave a trail of creep#Standing on the creep increases Isaac's fire rate and damage#If the creep is touching other poops, it gains their attribute"},
	{"Fart", "Push nearby enemies and bullets back, and spawn a toxic cloud#{{Warning}} The cloud explodes if it touches fire!"},
	{"Bomb", "Normal throwable bomb"},
	{"Explosive Diarrhea", "Isaac quickly spawns 5 lit bombs"},
}

EID.descriptions[languageCode].itemPoolFor = "Pool for Item:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Treasure", "Shop", "Boss", "Devil", "Angel", "Secret", "Library", "Shell Game", "Golden Chest", "Red Chest", "Beggar", "Demon Beggar", "Curse", "Key Master", "Battery Bum", "Mom's Chest", "Greed Treasure", "Greed Boss", "Greed Shop", "Greed Devil", "Greed Angel", "Greed Curse", "Greed Secret", "Crane Game", "Ultra Secret", "Bomb Bum", "Planetarium", "Old Chest", "Baby Shop", "Wooden Chest", "Rotten Beggar",
}

EID.descriptions[languageCode].VoidShopText = "If absorbed right after pickup, gain:"
EID.descriptions[languageCode].VoidOptionText = " will be absorbed instead"
EID.descriptions[languageCode].VoidNames[2] = "{1} Fire rate"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Danni", "↑ {{Tears}} +2 Rateo di Fuoco", "↑ {{Speed}} +0.5 Velocità", "↑ {{Range}} +3 Gittata"}

EID.descriptions[languageCode].spindownError = "Item disappears"

EID.descriptions[languageCode].BlankCardEffect = "Blank Card effect:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Hold {{CONFIG_BoC_Toggle}} to show description)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "(Press {{CONFIG_BoC_Toggle}} to show next description: {1})"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Will change back to Glowing Hourglass next floor"

EID.descriptions[languageCode].FalsePHDHeart = "Spawns 1 {{BlackHeart}} Black Heart"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} +0.6 Damage"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} +1.2 Damage"

EID.descriptions[languageCode].ExperimentalPillPHD = "No stat decrease"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "No random stat increase"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Instead, consumes the key and spawns 6 items from random pools"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} WARNING {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "Achievements are disabled!#In order to enable progression and achievements, you first need to kill Mom (Depths II) without any mods enabled.#(If you've defeated Mom, this message is a bug and can be ignored)#(This warning can be disabled in the config)"
EID.descriptions[languageCode].OldGameVersionWarningText = "EID is updated for the newest Steam version#Your game version is not officially supported, so some descriptions and features will be inaccurate#(This warning can be disabled in the config)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Modded items could make the crafting recipe calculation inaccurate!#Install REPENTOGON for improved modded recipe support#(This warning can be disabled in the config)"


-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
local repConditions = {
	------ GENERAL STRINGS ------
	["Tainted Revive"] = "{1} simply revives",
	["Ice Tears"] = "Freezing an enemy doesn't count as killing", -- Uranus Anti-Synergy
	
	------ GREED MODE ------
	["5.100.344"] = {"{{BlackHeart}} +1 Black Heart#{{Bomb}} Spawns 3 bombs"}, -- Match Book (Greed)
	["5.300.74"] = {"Teleports Isaac to the first room of the floor"}, -- The Moon? (Greed)
	["5.100.416"] = {"{{Coin}} Increases the coin cap to 999"}, -- Deep Pockets (Greed)
	["5.100.566"] = {"{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#!!! The stage transition nightmare shows the wrong items in Greed Mode"}, -- Dream Catcher (Greed)
	["5.100.580"] = "{{GreedMode}} Can only rarely make special rooms in Greed Mode#{{SuperSecretRoom}} Can still help find the Super Secret Room", -- Red Key (Greed)
	["5.300.83"] = "{{GreedMode}} Can only rarely make special rooms in Greed Mode#{{SuperSecretRoom}} Can still help find the Super Secret Room", -- Soul of Cain (Greed)
	["5.100.514"] = {"Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear"}, -- Broken Modem (Greed)
	["5.350.162"] = {"{{Player7}} Clearing a wave has a 50% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing another wave"}, -- Azazel's Stump (Greed)
	
	
	------ ACHIEVEMENT CHECKS ------
	-- todo...
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	["5.100.642"] = "Single use for {1}", -- Magic Skin + Lost
	["5.100.240"] = "{1} keeps the stat changes when he drops it", -- Experimental Treatment + Tainted Isaac
	["5.100.644"] = "{1} keeps the stat increase when he drops it", -- Consolation Prize + Tainted Isaac
	["5.100.549"] = "{1} simply gets ↑ {{Tears}} +0.4 Fire rate on pickup", -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = "Works for {1}, letting him survive 4 hits", -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = "{1} gains 1 Broken Heart, fatal hits grant 1 Broken Heart, and he dies at 3 Broken Hearts", -- Heartbreak + Normal Keeper
	["5.100.501"] = "{1} can gain additional coin containers#Health up items can grant an extra container per 25 coins", -- Greed's Gullet + Keeper
	["5.100.694 (Tainted Keeper)"] = "{1} gains 1 Broken Heart and dies at 2 Broken Hearts#{{Warning}} {1} will die in one hit after taking this item", -- Heartbreak + Tainted Keeper
	["5.100.188"] = "Deals 7.5 damage as {1}", -- Cain + Abel
	["5.100.360"] = "Deals 100% damage as {1}", -- Lilith + Incubus
	["5.100.728"] = "Deals 100% damage as {1}", -- Lilith + Gello
	["5.350.156"] = "+1 Coin container for {1}", -- Mother's Kiss
	["5.100.230 (Keeper)"] = "{1} is left with 1 coin container", -- Abaddon
	["5.100.230 (Bethany)"] = "{1} is left with half a heart", -- Abaddon
	["5.100.230 (Tainted Bethany)"] = "{1} doesn't lose her blood charges", -- Abaddon
	["5.100.245 (Keeper)"] = "Fire rate up and decreased tear spread for {1}", -- 20/20 + Keeper
	["5.100.705"] = "Temporary +1 damage up for each bullet/enemy", -- Dark Arts + Dark/Tainted Judas
	["5.100.205 (Tainted Magdalene)"] = "Allows infinite usage of Yum Heart", -- Sharp Plug + Tainted Magdalene
	-- Vibrant/Dim Bulb
	["5.350.100 (Bethany)"] = "Works with {1}'s soul charges",
	["5.350.100 (Tainted Bethany)"] = "Works with {1}'s blood charges",
	["5.350.101 (Bethany)"] = "Ignores {1}'s soul charges",
	["5.350.101 (Tainted Bethany)"] = "Ignores {1}'s blood charges",
	
	
	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac fires 1 more tear#No additional stat decrease", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac fires 2 more tears#No additional stat decrease", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac fires 1 more tear#No additional stat decrease", -- 20/20
	["5.100.358 (Copies)"] = "Isaac fires 1 more tear in the center", -- The Wiz
	["5.100.64 (Copies)"] = "Owning this item multiple times reduces the price further", -- Steam Sale
	["5.100.118 (Copies)"] = "Multiple Brimstones grant increased damage and a larger beam", -- Brimstone
	["5.100.531 (Copies)"] = "Additional copies only give +1 damage", -- Haemolacria
	["5.100.224 (Copies)"] = "Additional copies only give +0.5 fire rate", -- Cricket's Body
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Turns Brown Nugget turrets into coins",
	["Sacrificial Item Wisps"] = "Familiars created by Lemegeton can be sacrificed#Turns all Lemegeton wisps into {{HalfSoulHeart}} half Soul Hearts",
	["Sacrificial Plum"] = "The summoned Plum counts as a familiar, and doesn't remove Plum Flute",
	["Sacrificial Quints"] = "If a Quints familiar is sacrificed, you lose Quints",
	["Sacrificial Abyss"] = "Abyss Locusts count as familiars",
	["Sacrificial Star"] = "Star of Bethlehem counts as a familiar",
	["Sacrificial Clots"] = "Turns Clots into coins",
	
	["1000.76.0"] = "{{Warning}} Only rerolls the character that activates the dice", -- Dice Room 1 (Co-op)
	["1000.76.5"] = "{{Warning}} All characters' items will be rerolled in co-op!", -- Dice Room 6 (Co-op)
	["5.100.45"] = "{{HalfHeart}} Heals other players for half a heart", -- Yum Heart (Co-Op)
	["5.350.125"] = "Beams also arc between players", -- Extension Cord (Co-Op)
	
	["5.100.245"] = "Removes the fire rate penalty of {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["20/20"] = "No fire rate penalty with {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	
	["5.100.135 (Hard Mode)"] = {"1-2 coins", "1 coin", "2-3 coins", "2 coins"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.201"] = "Refills {1}'s charge on pickup", -- Iron Bar + Notched Axe
	["5.350.172"] = "{1} removes the teleportation effect", -- Cursed Penny + Black Candle
	["5.100.501 (Deep Pockets)"] = "+1 container for every 100 coins past 99", -- Greed's Gullet + Deep Pockets
	["? Card Single Use"] = "Single use items can be used multiple times with ? Card", -- Single Use Actives + ? Card
	["Both Peppers"] = "With {1}, base chance to shoot a flame is 12.5%, up to 100% at 7 luck", -- Ghost Pepper + Bird's Eye
	["Black Feather"] = "↑ {{Damage}} +0.5 Damage", -- Black Feather items
	["Hemoptysis"] = "Works with {1}", -- Hemoptysis + Brimstone items
	["5.100.600"] = "x1.2 Fire rate multiplier for {1}", -- Eye Drops (items and some players)
	["5.100.482"] = "Tainted characters change into other tainted characters", -- Clicker
	
	["4.5 Volt Timed"] = "No effect on timed recharges", -- 4.5 Volt + Timed Recharges
	["4.5 Volt Multiple"] = "Secondary active items only gain charge if the primary active is fully charged", -- 4.5 Volt + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Actives with 0 max charges don't count", -- Vibrant/Dim Bulb + zero charge actives
	
	["Brimstone Proptosis"] = "Beams deal 6x damage at point blank range, decreasing with distance",
	["Brimstone Ipecac"] = "The laser gets +2 damage and explodes on enemies and obstacles",
	["Brimstone Pop!"] = "Shorter beam that shoots {1} tears at the end",
	["Eye of Belial Dr. Fetus"] = "Bombs pierce, doing 2.5x damage, but don't home or do additional blast damage",
	["Spirit Sword C Section"] = "{1} has priority#Fetuses hold swords and do spin attacks",
	["Spirit Sword Mom's Knife"] = "{1} has priority#The spin attack throws the sword forward",
	["Spirit Sword Technology"] = "The sword becomes a lightsaber that can reflect enemy shots",
	["Spirit Sword Ipecac"] = "The sword gets +6 damage and poisons but doesn't explode#Sword beams do explode",
	["Ludovico Ipecac"] = "The tear gets +2 damage but doesn't explode or poison",
	["Technology Ipecac"] = "The laser gets +2 damage and explodes on targets",
	["Eye of the Occult Beam"] = "Isaac automatically shoots with a crosshair that alters the beam's path",

	["Lullaby Tainted Eve"] = "Clot fire rate is doubled",
	["Lullaby Lilith"] = "Incubus fire rate is doubled",

	-- Jacob's Ladder / 120 Volt battery synergies
	["Sparks Damage"] = "Sparks deal 50% more damage",
	["Sparks Arc Length"] = "Sparks have longer arc distance",
	["Sparks Arc Count"] = "Sparks can arc to 2 more enemies",
	["Sparks Arc Back"] = "Sparks can arc back to the same enemy",
	
	["White Poop Jar"] = "Spawns White Poop on 1 charge use",
	["Golden Poop Jar"] = "Chance to spawn Golden Poop on 1 charge use",
	
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)




-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Donation Machine", "Next achievement at {1} coins, {2} coins remaining#{{Luck}} 2% chance for +1 Luck when donating#{{AngelRoom}} Donating 10 coins increases Angel Room chance"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Greed Donation Machine", "Next achievement at {1} coins, {2} coins remaining"}
end
