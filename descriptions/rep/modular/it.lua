
local languageCode = "it"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} Toccare i nemici li avvelena", -- The Virus
	-- Full old Desc: "↑ {{Speed}} +0.2 Velocità#{{Poison}} Toccare i nemici li avvelena#Il PG infligge 48 danni da contatto al secondo"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Usare l'oggetto e sparare in una direzione fa scagliare la testa#{{Poison}} La testa esplode nel luogo in cui atterra e crea una nube velenosa#Infligge i danni di Isaac + 185", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Maggiori chance di vittoria nel gioco d'azzardo#Aumenta le chance di una ricompensa a completamento stanza#Trasforma le pillole negative in positive", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Fortuna#Maggiori chance di vittoria nel gioco d'azzardo#Aumenta le chance di una ricompensa a completamento stanza#Trasforma le pillole negative in positive"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} Tali bombe infliggono x10 di danni delle lacrime di Isaac#Se infliggerebbero 60 danni o più, infliggono invece x5 di danni +30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Moltiplicatore Rateo di Fuoco#{{Bomb}} Isaac spara bombe al posto delle lacrime#{{Damage}} Tali bombe infliggono x10 di danni delle lacrime di Isaac#Se infliggerebbero 60 danni o più, infliggono invece x5 di danni +30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Isaac attrae a sé i consumabili#Apre i bauli da 2 caselle di distanza, ignorando i danni dei Bauli Puntuti", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Lacrime caricabili#{{Damage}} I danni scalano con i tempi di carica fino a x4", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "Usare l'oggetto rimpiazza il boss del piano con 1 Cavaliere", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Cuore Celeste#{{AngelDevilChance}} +17.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#Usare l'oggetto rimpiazza il boss del piano con 1 Cavaliere"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Apre una botola per il prossimo piano#{{LadderRoom}} Apre un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Rivela il tipo di stanza delle stanze adiacenti#{{SecretRoom}} Può rivelare Stanze Segrete e Super Segrete#Previene i danni dalla caduta dei proiettili", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Le lacrime di Isaac vengono rimpiazzate da un coltello lanciabile#{{Damage}} Il coltello infligge i danni di Isaac x2 mentre viene tenuto e si massimizza a x6 ad 1/3 della carica#I danni si riducono a x2 quando ritorna ad Isaac", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "{{Timer}} Genera 1 famiglio casuale fino all'uscita dal piano", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Danni#{{Warning}} Infligge 1 cuore di danni ad Isaac#Dopo il 1° uso in una stanza, infligge invece mezzo cuore#{{Heart}} Rimuove per primi i Cuori Rossi", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Immunità al veleno", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Poison}} Le bombe di Isaac creano una nube velenosa#{{Poison}} Immunità al veleno"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Isaac ottiene 1 Cuore Celeste quando i danni lo riducono a mezzo cuore#Può avvenire solo 1 volta a stanza#Uscire e rientrare nella stanza permette di attivare nuovamente l'effetto#{{Warning}} Non viene attivato dalle donazioni di cuori", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Usare l'oggetto fa sì che Isaac tenga il piccone in mano#Tenere il piccone permette ad Isaac di rompere rocce e ingressi per le Stanze Segrete, e anche di danneggiare i nemici#Mettere a segno un colpo con il piccone riduce la sua carica#Entrare in nuovo piano ricarica pienamente il piccone", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Danni#↓ {{Tears}} x0.33 Moltiplicatore Rateo di Fuoco#↓ {{Range}} x0.8 Moltiplicatore Gittata#Isaac spara lacrime lungo un arco#{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "Rimpiazza le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.67 Moltiplicatore Rateo di Fuoco#Rimpiazza le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Rallenta i nemici per 4 secondi#I nemici uccisi dall'oggetto generano ragni blu", -- Spider Butt
	-- Full old Desc: "{{Slow}} Rallenta i nemici per 4 secondi#Infligge 10 danni a tutti i nemici##I nemici uccisi dall'oggetto generano ragni blu"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} Si lancia nella direzione in cui Isaac spara#Si infrange e una volta colpito 1 nemico infligge 7 danni#{{Petrify}} Lascia una pozza di liquame pietrificante e danneggiante", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Quando Isaac viene danneggiato scoreggia per più volte#{{Poison}} Le scoregge lasciano nubi velenose e respingono i proiettili", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} Rimuove per primi i Cuori Rossi", -- Blood Rights
	-- Full old Desc: "Infligge 40 danni a tutti i nemici#{{Warning}} Infligge 1 cuore di danno ad Isaac#Dopo il 1° uso in una stanza, infligge invece mezzo cuore di danno#{{Heart}} Rimuove per primi i Cuori Rossi"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "I consumabili hanno il 50% di chance di venire raddoppiati", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Usare un oggetto attivo non carico lo ricarica pienamente al prezzo di mezzo cuore#{{Heart}} Rimuove per primi i Cuori Rossi", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Tenere premuto il tasto di fuoco fa sì che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} +1 Rateo di Fuoco#Tenere premuto il tasto di fuoco fa sì che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Immunità alle esplosioni e al fuoco#{{HalfHeart}} Le esplosioni curano Isaac di mezzo cuore invece di danneggiarlo", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombe#Immunità alle esplosioni e al fuoco#{{HalfHeart}} Le esplosioni curano Isaac di mezzo cuore invece di danneggiarlo"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "Quando le lacrime colpiscono si dividono in 4#Le lacrime divise infliggono la metà dei danni", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} +0.5 Rateo di Fuoco#↓ {{Range}} x0.8 Moltiplicatore Gittata#Quando le lacrime colpiscono si dividono in 4#Le lacrime divise infliggono la metà dei danni"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Subire danni ha una chance di generare 1 Cuore Celeste#{{Luck}} +2% di chance per punto Fortuna#{{HalfHeart}} I nemici hanno una chance di lasciare mezzo Cuore Rosso quando muoiono", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15% di chance di sparare lacrime spaventose", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1.5 Danni#↓ {{EmptyHeart}} Converte tutti i Portacuori in Cuori Neri#{{BlackHeart}} +2 Cuori Neri#{{Fear}} 15% di chance di sparare lacrime spaventose"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "{{Slow}} Gli attacchi e la velocità di movimento dei nemici sono permanentemente ridotte del 20%", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3 Velocità#{{Slow}} Gli attacchi e la velocità di movimento dei nemici sono permanentemente ridotte del 20%"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Ragni e mosche blu infliggono il doppio dei danni#I ragni e mosche famigli diventano più forti", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} Immunità al fuoco (eccetto i proiettili)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Burning}} Le bombe di Isaac infliggono danni da contatto#{{Burning}} Le bombe di Isaac lasciano una fiamma quando esplodono#{{Burning}} Immunità al fuoco (eccetto i proiettili)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ I danni inflitti dalle lacrime diminuiscono quanto più tempo sono in aria#A bruciapelo le lacrime infliggono i danni di Isaac x3, e dopo 0.8 secondi zero danni", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Danni#↓ I danni inflitti dalle lacrime diminuiscono quanto più tempo sono in aria#A bruciapelo le lacrime infliggono i danni di Isaac x3, e dopo 0.8 secondi zero danni"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza#{{Collectible35}} Cuori Neri e effetti simili a \"Il Necronomicon\" infliggono il doppio dei danni", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Cuore Nero#Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza#{{Collectible35}} Cuori Neri e effetti simili a "Il Necronomicon" infliggono il doppio dei danni"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Attiva gli effetti della runa tenuta da Isaac senza usarla", -- Clear Rune
	-- Full old Desc: "{{Rune}} Quando viene raccolto genera 1 runa#{{Rune}} Attiva gli effetti della runa tenuta da Isaac senza usarla"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Isaac diventa invincibile#Genera un cuore famiglio che segue Isaac#Il cuore si carica mentre Isaac spara, rilasciando uno scroscio di lacrime quando smette#{{Warning}} Se il cuore famiglio viene colpito, Isaac prende danni", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Raccoglie i Cuori Rossi nelle vicinanze#Genera 1 Cuore Nero, runa, carta, pillola, o ragno per ogni 1.5 Cuori Rossi raccolti", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Genera ad intervalli casuali ragni blu nelle stanze ostili#{{Charm}} Ammalia i nemici con cui viene in contatto", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Raddoppia 1 consumabile nella stanza#Risorteggia Velocità, Lacrime, Danni, Gittata e gli oggetti passivi di Isaac#Risorteggia tutti i piedistalli, consumabili e rocce nella stanza#Fa ripartire la stanza, resuscita tutti i nemici e li risorteggia", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Regredisce tutti i nemici nella stanza#Ad esempio, tutte le Mosche Rosse diventano Mosche Nere", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Attiva l'effetto della carta tenuta da Isaac senza usarla", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Evidenzia le rocce colorate e le rocce cunicolo nella stanza#{{Collectible76}} Se tutti gli effetti sono attivi, conferisce \"Vista a Raggi X\"", -- Book of Secrets
	-- Full old Desc: "Evidenzia le rocce colorate e le rocce cunicolo nella stanza#{{Timer}} Conferisce 1 dei seguenti effetti fino all'uscita dal piano:#{{Collectible54}} "Mappa del Tesoro"#{{Collectible21}} "La Bussola"#{{Collectible246}} "Mappa Blu"#Conferisce solo effetti non già attivi#{{Collectible76}} Se tutti gli effetti sono attivi, conferisce "Vista a Raggi X""
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Lancia una fiamma rossa#La fiamma sparisce dopo aver inflitto danni, bloccato 5 proiettili o una volta passati 10 secondi", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Trasforma in cacca tutti i nemici che non sono boss#Uccide istantaneamente nemici e boss fatti di cacca#Estingue i focolari e riempie d'acqua la stanza#Trasforma i varchi di lava in terreno percorribile", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Usare l'oggetto prima di una lotta contro un boss rende come ricompensa del boss un patto col diavolo#Acquistare questi patti col diavolo ha le stesse conseguenze dei patti nella Stanza del Diavolo#Non influisce sui piedistalli in \"Il Vuoto\"", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Cuore Nero#{{DevilRoom}} Usare l'oggetto prima di una lotta contro un boss rende come ricompensa del boss un patto col diavolo#Acquistare questi patti col diavolo ha le stesse conseguenze dei patti nella Stanza del Diavolo#Non influisce sui piedistalli in "Il Vuoto""
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Respinge nemici e proiettili nelle vicinanze#I nemici spinti verso ostacoli prendono 10 danni", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Infligge a tutti i nemici x2 dei danni di Isaac +10#{{Coin}} Costa 1 moneta", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Converte 1 Cuore Celeste/Nero in 1 Portacuori", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "{{Warning}} MONOUSO {{Warning}} Genera ricompense in base al piano:#S1: 2{{SoulHeart}}; S2: 2{{Bomb}} + 2{{Key}}##{{NoLB}}G1: Oggetto del Boss; G2: G1 + 2{{SoulHeart}#P1: 4{{SoulHeart}}; P2: 20{{Coin}}#U1: 2 Oggetti del Boss#U2: {{Collectible33}} \"La Bibbia\"#???/Il Vuoto: Nulla#Sheol: Oggetto Demoniaco + 1{{BlackHeart}}#Catt.: Oggetto Angelico + 1{{EternalHeart}}#{{NoLB}}Camera Oscura: Sblocca {{Collectible523}} \"Scatola per Traslochi\"; Baule: 1{{Coin}}#Casa: {{Collectible580}} \"Chiave Rossa\"", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Muoversi con più di 0.85 di Velocità rende Isaac immune ai danni da contatto e infligge ai nemici 25 danni", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Velocità#Muoversi con più di 0.85 di Velocità rende Isaac immune ai danni da contatto e infligge ai nemici 25 danni"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Isaac lascia una scia di liquame#{{Damage}} Il liquame infligge il 66% dei danni di Isaac al secondo e riceve gli effetti delle lacrime di Isaac", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Le lacrime di Isaac attraggono nemici, consumabili e ninnoli#A fine traiettoria delle lacrime l'effetto di attrazione è più forte", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Spara lacrime con gli stessi effetti di Isaac in direzioni casuali#{{Damage}} Infligge il 75% dei danni di Isaac", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Spara 8 lacrime in tutte le direzioni#Le lacrime copiano gli effetti delle lacrime di Isaac +5 danni#Si ricarica sparando lacrime", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} La testa di Isaac diventa un famiglio stazionario fino all'uscita dalla stanza#Il corpo viene controllato separatamente e schizza lacrime di sangue nella direzione in cui Isaac sta sparando", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Tenere premuto il tasto USA svuota la barra di carica#A barra di carica vuota Isaac diventa temporaneamente invincibile#Se invincibile Isaac evoca raggi di luce a contatto con i nemici#Se il danno è bloccato con tempismo perfetto, spara raggi sacri in 4 direzioni e ottiene brevemente uno scudo#{{Warning}} Tenerlo premuto troppo a lungo infligge danni ad Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Riduce drasticamente la spinta delle lacrime", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} x5.5 Moltiplicatore Rateo di Fuoco#↓ {{Damage}} x0.2 Moltiplicatore Danni#↓ {{Tearsize}} -0.3 Dimensioni Lacrime#Riduce drasticamente la spinta delle lacrime"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "{{Damage}} Le lacrime ottengono un'aura che infligge 60 danni al secondo", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Danni#↓ {{Tears}} -0.3 Lacrime#↓ {{Shotspeed}} -0.3 Velocità Colpi#Lacrime a ricerca#{{Damage}} Le lacrime ottengono un'aura che infligge 60 danni al secondo"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Genera \"Fiammifero\"", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Cuore Nero#{{Bomb}} Genera 3 bombe#{{Trinket41}} Genera "Fiammifero""
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "{{Damage}} Spara una grossa lacrima penetrante + spettrale che infligge i danni di Isaac x10#{{Warning}} Subire danni mentre viene tenuto:#↓ Rimuove 2 cuori extra di salute#↓ Rompe il cannone per tot stanze#↑ {{Range}} +1.5 Gittata e lascia una scia di sangue fino all'uscita dalla stanza#Il danno extra non può uccidere Isaac#I danni autoinflitti non attivano l'effetto", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Spara lacrime con gli stessi effetti di quelle di Isaac#{{Damage}} Infligge il 75% dei danni di Isaac", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Si muove lungo i muri/ostacoli#I nemici nelle vicinanze mirano alla mosca", -- Lost Fly
	-- Full old Desc: "Si muove lungo i muri/ostacoli#Infligge 30 danni da contatto al secondo#I nemici nelle vicinanze mirano alla mosca"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "Le bombe di Isaac si attaccano ai nemici e lasciano un liquame bianco rallentante#Uccidere 1 nemico con una bomba genera dei ragni blu", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe di Isaac si attaccano ai nemici e lasciano un liquame bianco rallentante#Uccidere 1 nemico con una bomba genera dei ragni blu"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Sparare verso una direzione aumenta gradualmente il rateo di fuoco fino al 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} Il raggio infligge i danni di Isaac x3", -- Holy Light
	-- Full old Desc: "10% di chance di sparare lacrime sacre, che quando colpiscono generano un raggio di luce#{{Luck}} 50% di chance con 9 in Fortuna#{{Damage}} Il raggio infligge i danni di Isaac x3"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Conferisce immunità alle esplosioni e alla caduta di proiettili#25% di chance di riflettere proiettili nemici", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Comprare oggetti al Negozio lo rifornisce istantaneamente#Il prezzo degli oggetti riforniti aumenta ad ogni istanza", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Blocchi, porte e bauli chiusi a chiave vanno aperti con le monete al posto delle chiavi", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Monete#Blocchi, porte e bauli chiusi a chiave vanno aperti con le monete al posto delle chiavi"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Può essere lanciata ai nemici per catturarli#{{Friendly}} Usare l'oggetto dopo aver catturato 1 nemico lo genera come un compagno amichevole#Camminare sopra la sfera dopo la cattura ricarica istantaneamente l'oggetto", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Si getta e rimbalza per la stanza ad una velocità che dipende dalla quantità di carica#Infligge dai 5 ai 25 danni da contatto al secondo in base alla velocità", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Risorteggia gli ostacoli in altri ostacoli casuali (ad es. cacca, vasi, TNT, cacca rossa, blocchi di pietra etc.)#Piccola chance di risorteggiare gli ostacoli in pulsanti, tasterminatori, cunicoli o botole", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Genera 1 runa o pietra dell'anima casuale ogni 7-8 stanze", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "I nemici possono colpirsi a vicenda con i loro proiettili e iniziare a rivoltarsi tra loro", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% di chance di sparare lacrime velenose#{{Poison}} Al contatto con i nemici li avvelena#{{BlackHeart}} I nemici avvelenati al contatto una volta morti hanno una chance di lasciare 1 Cuore Nero", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno#Anche i famigli sparano verso il bersaglio#Premendo il tasto di rilascio ({{ButtonRT}}) si può smettere di sparare, resettando la posizione del mirino", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrime#↑ {{Range}} +3 Gittata#Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno#Anche i famigli sparano verso il bersaglio#Premendo il tasto di rilascio ({{ButtonRT}}) si può smettere di sparare, resettando la posizione del mirino"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Le lacrime di Isaac vengono rimpiazzate da un anello laser caricabile#Le dimensioni e i danni dell'anello aumentano in base alla quantità di carica fino al 100%", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Sparare lacrime per 2.35 secondi e rilasciare il tasto di fuoco crea un anello di zolfo fuso nero attorno ad Isaac", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "Probabilità di sparare lacrime appiccicose esplosive#Lacrime esplosive di tanto in tanto fanno i tuoi danni", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Se colpito, 10% di chance di scoreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici#Le scoregge infliggono 5-6 danni", -- Farting Baby
	-- Full old Desc: "Blocca i proiettili#Se colpito, 10% di chance di scoreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici#Le scoregge infliggono 5-6 danni"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} Lanciabile (doppia premuta del tasto di sparo)#Risorteggia i nemici e i consumabili con cui entra a contatto", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ In base al colore dell'aura potenzia 1 delle statistiche di Isaac#Subire danni rimuove l'effetto, e ne dà uno nuovo nella stanza successiva#{{ColorYellow}} Giallo {{CR}} = ↑ {{Speed}} +0.5 Velocità#{{ColorBlue}}Blu{{CR}} = ↑ {{Tears}} +2 Rateo di Fuoco#{{ColorRed}}Rosso{{CR}} = ↑ {{Damage}} +4 Danni#{{ColorOrange}}Arancione{{CR}} = ↑ {{Range}} +3 Gittata", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25% di chance che si formi un anello di zolfo fuso nero attorno ai nemici uccisi#{{Luck}} +2.5% di chance per Fortuna", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} Se completare una stanza non rende alcuna ricompensa, genera 1-3 monete#{{Coin}} Aumenta il massimale di monete a 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Rimbalza per la stanza circondata da un'aura danneggiante che infligge 7.5-10 danni al secondo#↑ {{Damage}} x1.5 Moltiplicatore Danni se dentro l'aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Ammalia tutti i nemici a distanza ravvicinata", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Riporta Isaac nella stanza precedente e annulla tutte le azioni svolte nella stanza in cui l'oggetto è stato usato#Il reset può essere usato tre volte per piano#{{Collectible66}} Esauriti i reset agisce come \"La Clessidra\", rallentando i nemici per 8 secondi", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "{{Charm}} Le bombe di Isaac quando esplodono hanno il 63% di chance di lasciare 1 consumabile casuale e il 15% di chance di ammaliare i nemici#La chance di generare 1 consumabile diminuisce dell'1% per ogni oggetto generato nel piano", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Charm}} Le bombe di Isaac quando esplodono hanno il 63% di chance di lasciare 1 consumabile casuale e il 15% di chance di ammaliare i nemici#La chance di generare 1 consumabile diminuisce dell'1% per ogni oggetto generato nel piano"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Isaac viene seguito da una piccola ombra #{{Friendly}} Quando 1 nemico tocca l'ombra viene generato 1 Assalitore nero amichevole fino all'uscita dalla stanza", -- My Shadow
	-- Full old Desc: "Isaac viene seguito da una piccola ombra #{{Friendly}} Quando 1 nemico tocca l'ombra viene generato 1 Assalitore nero amichevole fino all'uscita dalla stanza#L'Assalitore infligge 8.7 danni a colpo"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Ripristina la stanza e resuscita tutti i nemici#Può essere usato per ottenere più ricompense per completamento stanza da una singola stanza", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Ogni 15 lacrime Isaac spara un ammasso di lacrime", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Una volta subiti danni:#{{Heart}} 25% di chance di generare 1 Cuore Rosso#{{BleedingOut}} Isaac sanguina, sprizzando lacrime nella direzione verso cui sta sparando#Il sanguinamento infligge mezzo Cuore Rosso di danni ogni 20 secondi#Il sanguinamento termina se 1 Cuore Rosso viene curato, tutti i Cuori Rossi vengono svuotati, o se il prossimo danno ucciderebbe Isaac", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "Ogni 20 lacrime, Isaac spara una lacrima-moneta che infligge x1.5 dei danni +10#{{Petrify}} I nemici colpiti dalla moneta vengono pietrificati e tramutati in oro#{{Coin}} 1 nemico dorato ucciso butta a terra 1-3 monete#{{Warning}} Sparare una lacrima-moneta costa 1 moneta", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Gli effetti dei tarocchi sono raddoppiati o potenziati", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Genera 1 carta#{{Card}} Gli effetti dei tarocchi sono raddoppiati o potenziati"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1.5 Gittata#Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Gli oggetti lasciati dalle ricompense per completamento stanza e dai nemici campioni diventano qualsiasi consumabile di cui Isaac ha più bisogno", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Cuori Celesti#Gli oggetti lasciati dalle ricompense per completamento stanza e dai nemici campioni diventano qualsiasi consumabile di cui Isaac ha più bisogno"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "È seguito dagli altri famigli, i quali sparano automaticamente ai nemici#Quando Isaac spara smette di muoversi#Quando Isaac smette di sparare si teletrasporta da lui", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Usare l'oggetto lo riconverte in \"Cannone di Vetro\"", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Raddoppia 1 consumabile casuale nella stanza#I consumabili duplicati potrebbero non essere identici agli originali", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Consuma tutti i piedistalli nella stanza#Oggetti attivi: i loro effetti si attivano ad ogni uso futuro di \"Vuoto\"#↑ Gli oggetti passivi conferiscono 2 aumenti a statistiche casuali", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Può operare come qualsiasi dado (escluso {{Collectible723}} \"Dado Decrementale\") mediante il tasto di rilascio ({{ButtonRT}})#I tempi di carica dipendono dall'ultimo dado usato e si aggiorna ad ogni uso", -- D Infinity
	-- Full old Desc: "Può operare come qualsiasi dado (escluso {{Collectible723}} "Dado Decrementale") mediante il tasto di rilascio ({{ButtonRT}})#I tempi di carica dipendono dall'ultimo dado usato e si aggiorna ad ogni uso"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Più danni per ogni Portacuori vuoto#Più Portacuori vuoti ci sono, maggiore sarà il bonus", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "All'impatto le lacrime generano una scintilla elettrica#Le scintille infliggono la metà dei danni di Isaac#Le scintille possono estendersi fino a 4 nemici", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "La fiamma si rimpiccolisce e sparisce dopo 2 secondi", -- Ghost Pepper
	-- Full old Desc: "8% di chance di sparare una fiamma blu che blocca i proiettili nemici e infligge danni da contatto#{{Luck}} 50% chance con 10 in Fortuna#La fiamma si rimpiccolisce e sparisce dopo 2 secondi"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Confusion}} Entrare in una stanza cammuffa Isaac e confonde tutti i nemici finché non spara#↑ {{Speed}} +0.5 Velocità se nascosto#Smascherarsi infligge danni attorno ad Isaac e conferisce molto brevemente più lacrime e danni", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} +1 Portacuori per ogni 25 monete in possesso di Isaac#{{Collectible416}} Dopo 99 monete +1 Portacuori per ogni 100 monete", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "La mano uccide istantaneamente i nemici e infligge 36 danni ai boss", -- Little Horn
	-- Full old Desc: "5% di chance di sparare lacrime che evocano una mano di Grande Corno#{{Luck}} 20% di chance con 15 in Fortuna#La mano uccide istantaneamente i nemici e infligge 36 danni ai boss#Isaac infligge 7 danni da contatto al secondo"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Genera una mosca torretta che spara ai nemici", -- Brown Nugget
	-- Full old Desc: "Genera una mosca torretta che spara ai nemici#Ogni colpo infligge 3.5 danni"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} Colpire 1 nemico da dietro infligge il doppio dei danni e causa sanguinamento ai nemici, i quali mentre si muovono lasciano del liquame e prendono danni", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Infligge a tutti i nemici i danni di Isaac +10% della salute massima di ogni nemico#{{HalfHeart}} Infliggere danni con la cannuccia può generare mezzi cuori", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} Orbitale ceh causa sanguinamento, danneggiando i nemici mentre si muovono#{{Damage}} Infligge i danni di Isaac x1.5 al secondo", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbitale che ogni 0.33 secondi spara una lacrima ai nemici nelle vicinanze", -- Bloodshot Eye
	-- Full old Desc: "Orbitale che ogni 0.33 secondi spara una lacrima ai nemici nelle vicinanze#Infligge 3.5 danni a lacrima#Infligge 20 danni da contatto al secondo"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Fa sì che alcuni nemici o proiettili si blocchino ad intermittenza per poco tempo#I proiettili bloccati spariscono#25% di chance di raddoppiare le ricompense di completamento stanza", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Rimuove il delay del piazzamento delle bombe#Le bombe non si respingono a vicenda", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bome#Rimuove il delay del piazzamento delle bombe#Le bombe non si respingono a vicenda"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Ferma tutti i proiettili che si avvicinano ad Isaac per 3 secondi e in seguito li risorteggia via#Durante l'effetto respinge via i nemici vicini", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Conserva fino a 10 consumabili e oggetti della stanza corrente#Usare di nuovo l'oggetto butta a terra tutto nel piano#Permette ad Isaac di spostare oggetti e/o consumabili tra le stanze", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Le lacrime di Isaac sono connesse tra loro da raggi d'elettricità#I raggi infliggono i danni di Isaac x4.5 al secondo", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Genera una botola per il prossimo piano#{{LadderRoom}} Genera un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% di chance di sparare una lacrima di spore adesiva#{{Luck}} Non è influenzato dalla Fortuna#{{Poison}} Le spore scoppiano dopo 2.5 secondi, infliggendo danni, avvelenando i nemici nelle vicinanze e rilasciando altre spore", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Spaventa i nemici in una piccola area attorno ad Isaac", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Timer}} Pagando 5 {{Coin}} monete conferisce fino all'uscita dalla stanza:#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} +5 monete quando viene raccolto#{{Timer}} Pagando 5 {{Coin}} monete conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +1.2 Danni"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 557] = "Conferisce una delle seguenti ricompense:#1 bigliettino#{{SoulHeart}} 1 Cuore Celeste#{{Rune}} 1 runa o pietra dell'anima#{{Card}} 1 tarocco#{{Trinket}} 1 ninnolo", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Chance di sparare 1-3 lacrime extra in direzioni casuali#{{Luck}} Non è influenzato dalla Fortuna", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Dà ripetutamente la scossa ai nemici nelle vicinanze#{{Damage}} L'elettricità infligge fino ai danni di Isaac x3.5 al secondo#Le scintille possono estendersi fino a 4 nemici", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} Mentre si subiscono danni, conferisce fino all'uscita dalla stanza:#↑ {{Tears}} +1.2 Rateo di Fuoco al 1° colpo#↑ {{Tears}} +0.4 Rateo di Fuoco per ogni colpo extra#Rilascia un anello di 10 lacrime attorno ad Isaac", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "Le lacrime ottengono effetti dei vermi ninnoli e alcuni effetti di oggetti", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} x4 Moltiplicatore Rateo di Fuoco#↓ {{Damage}} x0.3 Moltiplicatore Danni#↓ {{Tearsize}} -0.16 Dimensioni Lacrime#Le lacrime ottengono effetti dei vermi ninnoli e alcuni effetti di oggetti"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ Previene il calo delle statistiche per il resto della partita", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Le bombe di Isaac esplodono con effetti casuali", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe di Isaac esplodono con effetti casuali"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Insegue i nemici#Dopo aver ucciso 15 nemici, infligge più danni, genera un mezzo Cuore Rosso ogni 10 uccisioni, ma cerca di ferire Isaac#Dopo aver ucciso 40 nemici, infligge ancora più danni, genera Cuori Rossi, e può distruggere rocce#Infliggergli abbastanza danni lo riporta alla sua 1° fase", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} All'ingresso in un nuovo piano +1 Mezzo Cuore Celeste#Gli incubi nelle transizioni tra i livelli rivelano il boss e l'oggetto nella Stanza dei Tesori del piano successivo", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} Completare una stanza senza subire danni conferisce +0.4 Rateo di Fuoco#Si massimizza a +2 Rateo di Fuoco {{ColorSilver}}(5 stanze){{CR}}", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Alla doppia premuta del tasto di sparo viene creato uno scudo#Lo scudo dura 1 secondo, spingendo via i nemici e riflettendo proiettili e laser", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} Entrare in un nuovo piano prosciuga tutti i Cuori Rossi di Isaac, ma conferisce più velocità e danni per ogni cuore perso#Ogni mezzo cuore perso conta come un colpo per gli effetti di oggetti che richiedono di subire danni", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Ogni lacrima di Isaac ha un colore e effetto di stato diverso", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Immunità ai liquidi e alle spine per terra", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} +0.3 Velocità#{{SoulHeart}} +2 Cuori Celesti#Immunità ai liquidi e alle spine per terra"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Le lacrime di Isaac sono controllabili a mezz'aria", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} +1 Danni#↑ {{Range}} +2 Gittata#↓ {{Shotspeed}} -0.16 Velocità Colpi#Le lacrime di Isaac sono controllabili a mezz'aria"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% di chance di sparare una lacrima spettrale orbitante extra", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Salute#↑ {{Damage}} x1.2 Moltiplicatore Danni#{{Heart}} Salute al massimo#20% di chance di sparare una lacrima spettrale orbitante extra"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Isaac è circondato da un'aura danneggiante#L'aura infligge più danni ai nemici quanto più sono vicini ad Isaac", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} Si rintana nella testa di Isaac e spara 4 lacrime rallentanti extra che infliggono 1.5 danni#Se si subiscono danni il ragno può uscire dalla testa e inseguire i nemici", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Tutte le Cacchine nemiche sono amichevoli#Distruggere la cacca genera 1-4 Cacchine#La tipologia di Cacchina dipende dalla tipologia di cacca#Le rocce possono essere rimpiazzate da cacca", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "{{Warning}} MONOUSO {{Warning}}#Una spada pende al di sopra della testa di Isaac, raddoppiando tutti i piedistalli#Non raddoppia gli oggetti con un prezzo o provenienti dai bauli#{{Warning}} Dopo aver subito qualsiasi danno, la spada ha ad ogni frame una chance estremamente bassa di uccidere Isaac#Gli effetti d'invincibilità possono prevenire la morte", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Crea una grande pozza di liquame giallo#TIl liquame infligge 24 damage al secondo", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Isaac agita una spada al posto di sparare lacrime#{{Damage}} La spada infligge x3 dei danni di Isaac +3.5 e viene gitata con la stessa velocità con cui viene premuto il tasto di fuoco#{{Chargeable}} Caricarla effettua un attacco rotante e spara un proiettile#Agitare la spada con la salute al massimo le fa sparare proiettili#{{Tears}} La statistica Lacrime influisce sui tempi di carica e ogni quanto viene sparato un proiettile mentre la salute è al massimo", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Crea una stanza rossa adiacente ad una stanza normale, indicata dalla sagoma di una porta#Le Stanze Rosse possono essere stanze speciali#{{ErrorRoom}} Entrare in una stanza rossa al di fuori della mappa 13x13 del piano teletrasporta Isaac nella Stanza I AM ERROR", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Insegue e devia i proiettili nemici", -- Psy Fly
	-- Full old Desc: "Insegue e devia i proiettili nemici#Infligge 15 danni da contatto al secondo"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Distorce lo schermo#Ad ogni uso impiega più tempo a caricarsi#Lasciare le stanze o completarle ne riduce gli effetti", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Rateo di Fuoco#↓ {{Speed}} -0.03 Velocità#Distorce lo schermo#Ad ogni uso impiega più tempo a caricarsi#Lasciare le stanze o completarle ne riduce gli effetti"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Piazzare una bomba mentre si spara verso una direzione fa invece partire un razzo", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bombe#Piazzare una bomba mentre si spara verso una direzione fa invece partire un razzo"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Genera come famiglio 1 fiammella orbitale che spara lacrime spettrali ma che può venire eliminata#Può essere combinata con un secondo oggetto attivo per creare fiammelle speciali#{{AngelRoom}} Permette che, dopo aver stretto un patto col diavolo, si generi una Stanza dell'Angelo", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} +12.5% di chance di una Stanza dell'Angelo mentre viene tenuto#Genera come famiglio 1 fiammella orbitale che spara lacrime spettrali ma che può venire eliminata#Può essere combinata con un secondo oggetto attivo per creare fiammelle speciali#{{AngelRoom}} Trasforma la 1° Stanza del Diavolo in una Stanza dell'Angelo#{{AngelRoom}} Permette che, dopo aver stretto un patto col diavolo, si generi una Stanza dell'Angelo"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Va caricata raccogliendo Cuori Celesti, dopodiché genera:#{{SoulHeart}} 3 Cuori Celesti#{{AngelRoom}} 2 oggetti della Stanza dell'Angelo#{{DevilRoom}} Se in precedenza si ha stretto un patto col diavolo, genera solo 2 Cuori Celesti e 1 oggetto della Stanza dell'Angelo", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Genera una scala nella 1° stanza di ogni piano che porta ad un {{AngelRoom}} Negozio speciale della Stanza dell'Angelo, con oggetti e consumabili", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{CurseBlind}} Rimuove tutte le maledizioni", -- Sol
	-- Full old Desc: "{{BossRoom}} Rivela la posizione della Stanza del Boss#{{Timer}} Quando il boss del piano viene sconfitto, conferisce fino all'uscita dal piano:#↑ {{Damage}} +3 Danni#↑ {{Luck}} +1 Fortuna#{{Card20}} L'effetto di "XIX - Il Sole"#{{Battery}} Ricarica pienamente l'oggetto attivo#{{CurseBlind}} Rimuove tutte le maledizioni"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Aggiunge una {{SecretRoom}} Stanza Segreta e {{SuperSecretRoom}} Super Segreta extra ad ogni piano#Rivela una Stanza Segreta ad ogni piano#{{Timer}} Le Stanze Segrete contengono un fascio di luce che conferisce fino all'uscita dal piano:#↑ {{Tears}} +0.5 Rateo di Fuoco#↑ {{Tears}} +0.5 Rateo di Fuoco per ogni fascio nel piano#{{HalfSoulHeart}} Mezzo Cuore Celeste", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Molte porte rimangono permanentemente aperte", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Velocità#Molte porte rimangono permanentemente aperte"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Ammalia i nemici nelle vicinanze", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Salute#{{HealingRed}} Cura di 1 cuore#{{Charm}} Ammalia i nemici nelle vicinanze"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Rimpiazza le lacrime di Isaac con delle rocce#Le rocce infliggono danni variabili, possono distruggere ostacoli e hanno la spinta aumentata", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Danni#Rimpiazza le lacrime di Isaac con delle rocce#Le rocce infliggono danni variabili, possono distruggere ostacoli e hanno la spinta aumentata"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Ad una doppia premuta del tasto di movimento Isaac effettua uno scatto#{{Damage}} Durante lo scatto Isaac è invincibile e infligge x4 dei suoi danni +8#{{Timer}} Tempo di attesa di 3 secondi", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Immunità al veleno", -- Jupiter
	-- Full old Desc: "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.3 Velocità#{{HealingRed}} Cura di mezzo cuore#{{Speed}} Mentre rimane fermo la velocità cresce fino a +0.5#{{Poison}} Muoversi rilascia nubi velenose#{{Poison}} Immunità al veleno"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Entrare in una stanza fa sì che 7 lacrime orbitino attorno ad Isaac#Le lacrime durano 13 secondi e infliggono x1.5 dei danni di Isaac +5#I proiettili nemici hanno una chance di orbitare attorno ad Isaac", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Isaac spara lacrime pietrificanti che congelano i nemici una volta morti#Toccare 1 nemico congelato lo fa scivolare via ed esplodere in 10 schegge di ghiaccio", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Tears}} Non sparare accumula un bonus alle Lacrime per 3 secondi#Mentre Isaac spara il bonus di lacrime decresce", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Isaac viene drasticamente rimpicciolito, permettendogli di passare tra gli oggetti#I proiettili possono passare sopra di lui", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrime#Isaac viene drasticamente rimpicciolito, permettendogli di passare tra gli oggetti#I proiettili possono passare sopra di lui"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Genera una Stanza Maledetta aggiuntiva ad ogni piano#Migliora i layout e le ricompense delle Stanze Maledette#{{Coin}} Genera 1 moneta in ogni Stanza Maledetta", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Subire danni ai Cuori Rossi non riduce drasticamente le chance di una Stanza del Diavolo/dell'Angelo", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Lacrime#{{EternalHeart}} +1 Cuore Eterno#{{AngelChance}} Fa sì che le Stanze dell'Angelo si generino anche dopo aver stretto un patto col diavolo#Subire danni ai Cuori Rossi non riduce drasticamente le chance di una Stanza del Diavolo/dell'Angelo"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Apre una botola in ogni Negozio#La botola porta ad un Negozio sotterraneo che vende ninnoli, rune, carte, cuori speciali e oggetti di qualsiasi categoria", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} Ricarica pienamente l'oggetto attivo", -- Battery Pack
	-- Full old Desc: "{{Battery}} Genera 2-4 pile#{{Battery}} Ricarica pienamente l'oggetto attivo"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Permette ad Isaac di sollevare e lanciare rocce, TNT, cacche, Cacchine amichevoli, Ospiti e altri ostacoli#Permette di portarli in altre stanze", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Gli squarci infliggono i danni di Isaac x3 al secondo e traggono a sé nemici, consumabili e proiettili nelle vicinanze", -- Ocular Rift
	-- Full old Desc: "5% di chance di sparare lacrime che creano squarci nel punto in cui atterrano#{{Luck}} 20% di chance con 15 in Fortuna#Gli squarci infliggono i danni di Isaac x3 al secondo e traggono a sé nemici, consumabili e proiettili nelle vicinanze"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Spara scrosci caotici di lacrime in tutte le direzioni", -- Boiled Baby
	-- Full old Desc: "Spara scrosci caotici di lacrime in tutte le direzioni#Infligge 3.5 o 5.3 danni a lacrima"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "{{Petrify}} Spara lacrime pietrificanti#{{Freezing}} I nemici si congelano quando vengono uccisi", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Risorteggia tutti i piedistalli nella stanza#Ha il 25% di chance di cancellare gli oggetti invece di risorteggiarli", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Si lancia sul 1° nemico che infligge danni ad Isaac#Infligge 45 danni e rilascia una scossa sismica#In seguito insegue i nemici, infliggendo 6.5 danni da contatto al secondo", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Isaac urla, danneggiando e respingendo i nemici nelle vicinanze#L'urlo è più forte quanto più l'oggetto ha cariche", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Muore in 1 colpo e resuscita all'inizio del piano successivo#Se arriva in vita al piano successivo, può generare:#{{SoulHeart}} 3 Cuori Celesti#{{EternalHeart}} 2 Cuori Eterni#{{TreasureRoom}} 1 oggetto della Stanza dei Tesori#{{AngelRoom}} 1 oggetto della Stanza dell'Angelo", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Se Isaac non ha bombe, una può essere piazzata al costo di mezzo cuore#Le bombe di Isaac lasciano sangue", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Salute#{{HealingRed}} Cura di 4 cuori#{{HalfHeart}} Se Isaac non ha bombe, una può essere piazzata al costo di mezzo cuore#Le bombe di Isaac lasciano sangue"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Devia 1 nemico o proiettile poco prima che possa colpire Isaac#Chance di deviare proiettili nelle sue vicinanze#Una volta deviato qualcosa deve essere toccato per venire riattivato", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Le fiamme spariscono dopo 10 secondi, o dopo aver bloccato i proiettili o inferto danni per 4 volte", -- Bird's Eye
	-- Full old Desc: "8% di chance di sparare una fiamma rossa che blocca i proiettili nemici e infligge danni da contatto#{{Luck}} 50% di chance con 10 in Fortuna#Le fiamme spariscono dopo 10 secondi, o dopo aver bloccato i proiettili o inferto danni per 4 volte"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "I nemici magnetizzati attraggono consumabili, proiettili e nemici nelle vicinanze", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% chance di sparare lacrime magnetizzanti#{{Luck}} 100% di chance con 5 in Fortuna#I nemici magnetizzati attraggono consumabili, proiettili e nemici nelle vicinanze"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "I nemici marchiati vengono bersagliati dagli altri nemici", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% di chance di sparare lacrime che marchiano i nemici#{{Luck}} 100% di chance con 5 in Fortuna#I nemici marchiati vengono bersagliati dagli altri nemici"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Ha un effetto diverso per ciascun personaggio", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "L'aumento ai danni si esaurisce dopo 3 minuti#Uccidere nemici mentre l'effetto è attivo lo estende", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Danni#{{HealingRed}} Salute al massimo#L'aumento ai danni si esaurisce dopo 3 minuti#Uccidere nemici mentre l'effetto è attivo lo estende"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "{{Warning}} MONOUSO {{Warning}}#Rimuove tutti gli oggetti e i consumabili di Isaac#Teletrasporta Isaac in una camera da letto con consumabili e bauli#Per ogni oggetto rimosso, Isaac può scegliere tra 3 oggetti della stessa categoria#Lasciare la stanza porta Isaac al piano successivo", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Lancia 1 delle chiavi di Isaac nella direzione in cui spara#Le chiavi lanciate infliggono danni, distruggono ostacoli, e aprono porte#I nemici uccisi dalle chiavi possono generare i contenuti di 1 baule, oggetti inclusi", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Chiavi#Lancia 1 delle chiavi di Isaac nella direzione in cui spara#Le chiavi lanciate infliggono danni, distruggono ostacoli, e aprono porte#I nemici uccisi dalle chiavi possono generare i contenuti di 1 baule, oggetti inclusi"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#L'abilità di distruggere nemici e ostacoli", -- Mega Mush
	-- Full old Desc: "Ingigantisce Isaac e conferisce:#↑ {{Damage}} x4 Moltiplicatore Danni#↑ {{Range}} +2 Gittata#↓ {{Tears}} -1.9 Lacrime#Invincibilità#L'abilità di distruggere nemici e ostacoli#{{Timer}} Dura 30 secondi e persiste tra le stanze e i piani"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "Il coltello può aprire una porta fatta di carne", -- Knife Piece 1
	-- Full old Desc: "Se unito a {{Collectible627}} "Pezzo del Coltello 2" diventa un coltello lanciabile#Il coltello può aprire una porta fatta di carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "Il coltello può aprire una porta fatta di carne", -- Knife Piece 2
	-- Full old Desc: "Se unito a {{Collectible626}} "Pezzo del Coltello 1" diventa un coltello lanciabile#Il coltello può aprire una porta fatta di carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "{{Warning}} MONOUSO {{Warning}}#Teletrasporta Isaac in un piano che contiene ogni oggetto del gioco#Scegliere un oggetto da questo piano teletrasporta Isaac nella stanza da cui è venuto", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Spara lacrime scudo per distruggere i proiettili nemici", -- Bot Fly
	-- Full old Desc: "Spara lacrime scudo per distruggere i proiettili nemici"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Divide ogni nemico nella stanza in 2 versioni più piccole con meno salute", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Immunità a {{Burning}} fuoco, {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Fortuna#Immunità a {{Burning}} fuoco, {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Nelle stanze ostili vengono generate crepe rosse nel terreno#Camminare sopra le crepe evoca fantasmi esplosivi a ricerca", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Genera 1 famiglio che si muove nella direzione in cui Isaac spara#Se usato, Isaac si scambia di posto con il famiglio e diventa invincibile per poco tempo#Teletrasportarsi ad 1 nemico o certi ostacoli può danneggiarli o distruggerli", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "{{Warning}} MONOUSO {{Warning}}#Ripristina la partita#Vengono mantenuti tutti gli oggetti, ninnoli, statistiche e consumabili collezionati#Il timer non viene azzerato", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "I nemici subiscono danni quando vengono spinti verso un muro/ostacolo", -- Knockout Drops
	-- Full old Desc: "{{Confusion}} 10% di chance di sparare un pugno che infligge confusione e una spinta poderosa#{{Luck}} 100% di chance con 9 in Fortuna#I nemici subiscono danni quando vengono spinti verso un muro/ostacolo"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Lancia una gomma da cancellare che uccide istantemente 1 nemico#Impedisce per il resto della partita la generazione del nemico cancellato#Infligge 15 danni ai boss#Può essere usato 1 volta per piano", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Genera un getto infuocato#Uccidere 1 nemico aggiunge 1 carica all'urna", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Crea nelle stanze ostili una sfilza di lacrime dietro Isaac#Le lacrime infliggono 3.5 danni", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Genera un oggetto dalla categoria di oggetti della stanza corrente#{{BrokenHeart}} Trasforma 1 Portacuori o 1 Cuore Osseo o 2 Cuori Celesti in 1 Cuore Spezzato#{{Warning}} Se Isasc non lo tiene può rimpiazzare oggetti futuri {{ColorSilver}}(33% dopo 1 uso, 50% dopo 2, 100% dopo 3)#Le chance sono minori se \"Pelle Magica\" è  su un piedistallo nel piano corrente#{{Player10}} Monouso per Lo Smarrito", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} Raggio sacro dai danni elevati#Non rimpiazza le lacrime di Isaac", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 Cuori Celesti#Volo#{{Chargeable}} Raggio sacro dai danni elevati#Non rimpiazza le lacrime di Isaac"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Aumenta la più bassa tra  Velocità, Rateo di Fuoco, Danni, e Gittata#Genera tra 3 {{Coin}} monete, 1 {{Bomb}} bomba, o 1 {{Key}} chiave in base a cosa Isaac ha di meno", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Grosso orbitale che  blocca i proiettili#Dopo aver subito 3 colpi si dividono in versione più piccole di se stessi#Le versioni piú piccole si sfaldano in ragni blu#Resuscita 5 secondi dopo la sua sparizione totale", -- Tinytoma
	-- Full old Desc: "Grosso orbitale che  blocca i proiettili#Infligge 3.5 danni da contatto al secondo#Dopo aver subito 3 colpi si dividono in versione più piccole di se stessi#Le versioni piú piccole si sfaldano in ragni blu#Resuscita 5 secondi dopo la sua sparizione totale"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Le bombe di Isaac rilasciano dei raggi di zolfo fuso in 4 direzioni#I raggi non feriscono Isaac", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Collectible118}} Le bombe di Isaac rilasciano dei raggi di zolfo fuso in 4 direzioni#I raggi non feriscono Isaac"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Completare le stanze non carica più gli oggetti attivi#Infliggere danni ai nemici riempie lentamente la barra di carica#I danni richiesti per le cariche aumentano ad ogni piano", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Si muove diagonalmente attorno alla stanza, sparando lungo la via lacrime che infliggono 3 danni", -- Fruity Plum
	-- Full old Desc: "Si muove diagonalmente attorno alla stanza, sparando lungo la via lacrime che infliggono 3 danni#Infligge 6 danni da contatto al secondo"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} Evoca nella stanza un \"Bebè Plum\" amichevole per 10 secondi", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Si sposta lentamente dalla 1° stanza del piano fino alla {{BossRoom}} Stanza del Boss#Si muove più velocemente se lo si supera, ed è più lento se gli si sta dietro#Dentro l'aura conferisce:#{VAR:EFFECTLIST}#50% di chance di ignorare i danni", -- Star of Bethlehem
	-- Full old Desc: "Si sposta lentamente dalla 1° stanza del piano fino alla {{BossRoom}} Stanza del Boss#Si muove più velocemente se lo si supera, ed è più lento se gli si sta dietro#Dentro l'aura conferisce:#↑ {{Tears}} x2.5 Moltiplicatore Lacrime#↑ {{Damage}} x1.8 Moltiplicatore Danni#Lacrime a ricerca#50% di chance di ignorare i danni"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Si può calciarlo camminando su di lui#{{Slow}} In base alla velocità rallenta e infligge fino a 17.5 danni da contatto#{{Freezing}} Congela i nemici che uccide", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Tenere l'oggetto fa sì che una volta morti i nemici non-fantasma generino fantasmini rossi#Usare l'oggetto fa sì che i fantasmini esplodano#Usare l'oggetto inoltre uccide i nemici fantasma (boss inclusi) con meno del 50% della loro salute", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Assumere altri tipi di pillole negative genera 1 Cuore Nero", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Cuore Nero#{{Pill}} Identifica tutte le pillole#Converte le pillole positive in negative#↑ {{Damage}} Assumere una pillola che abbassa una statistica conferisce +0.6 Danni#{{BlackHeart}} Assumere altri tipi di pillole negative genera 1 Cuore Nero"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Conferisce 1 orbitale che blocca i proiettili nemici e infligge 10.5 danni da contatto al secondo#{VAR:ONUSEEFFECT}#Aumenta enormemente la velocità e i danni degli orbitali", -- Spin to Win
	-- Full old Desc: "Conferisce 1 orbitale che blocca i proiettili nemici e infligge 10.5 danni da contatto al secondo#Usare l'oggetto conferisce:#↑ {{Speed}} +0.5 Velocità#Aumenta enormemente la velocità e i danni degli orbitali"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "{{Warning}} MONOUSO {{Warning}}#Una spada pende al di sopra della testa di Isaac, raddoppiando tutti i piedistalli#Non raddoppia gli oggetti con un prezzo o provenienti dai bauli#{{Warning}} Dopo aver subito qualsiasi danno, la spada ha ad ogni frame una chance estremamente bassa di uccidere Isaac#Gli effetti d'invincibilità possono prevenire la morte", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Quando i nemici muoiono esplodono in lacrime, che ricevono gli effetti delle lacrime di Isaac", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Subire danni genera un Mini-Isaac#I Mini-Isaac sparano ai nemici nelle vicinanze mentre li inseguono", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Genera 2 portali nella 1° stanza di ogni piano#Lasciare la stanza fa sparire i portali#{{Blank}} {{ColorRed}}Rosso: {{CR}}{{BossRoom}} Stanza del Boss#{{Blank}} {{ColorYellow}}Giallo: {{CR}}{{TreasureRoom}} Stanza dei Tesori#{{Blank}} {{ColorBlue}}Blu: {{CR}}{{SecretRoom}} Stanza Segreta", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Uccidere 1 nemico genera al suo posto 1 famiglio stazionario#Si massimizza a 5 famigli", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "1 secondo di invincibilità ogni 6 secondi#Isaac lampeggia poco prima che l'effetto si attivi", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "{{HealingRed}} Cura di 2 cuori#I piedistalli alternano tra il loro oggetto e un oggetto nutriente#↓ {{Speed}} -0.03 Velocità", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Salute#{{HealingRed}} Salute al massimo#{{HealingRed}} Cura di 2 cuori#I piedistalli alternano tra il loro oggetto e un oggetto nutriente#Raccogliere un oggetto nutriente conferisce:#↑ {{Damage}} +3.6 Danni temporanei#↑ 2 aumenti di statistica (che variano in base all'oggetto) permanenti#↓ {{Speed}} -0.03 Velocità"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Rivela i contenuti di {{Chest}} bauli, {{GrabBag}} sacchi, negozianti, e focolari prima che vengano aperti o distrutti", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "{{Warning}} Il fantoccio può raccogliere oggetti di trama", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bombe#{{Player14}} Genera Mercante come secondo personaggio#Quando muore genera ragni blu e rimuove permanentemente dall'inventario "Fantoccio" e qualsiasi oggetto da lui preso#{{DevilRoom}} Finché il fantoccio è in vita li oggetti della Stanza del Diavolo si pagano in monete#{{Warning}} Il fantoccio può raccogliere oggetti di trama"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Inizia L'Ascesa#I ninnoli lasciati nelle {{TreasureRoom}} Stanze dei Tesori o {{BossRoom}} Stanze Boss precedenti diventano {{Card78}} Chiavi Spezzate", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Permette ad Isaac di scegliere tra 2 ricompense di completamento stanza diverse", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Curarsi con {{Heart}} Cuori Rossi conferisce aumenti a statistiche casuali permanenti#{{Heart}} Genera 1 Cuore Rosso", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Gli oggetti della Stanza del Diavolo si pagano in monete#{{Shop}} Gli oggetti del Negozio si pagano in cuori#I consumabili dei Negozi sono circondati da spine", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Entrare in un nuovo piano dopo aver visitato una Stanza del Diavolo senza prendere consumabili conferisce:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Entrare in un nuovo piano dopo aver visitato una Stanza del Diavolo senza prendere consumabili conferisce:#↑ {{Damage}} +1 Danni#{{SoulHeart}} +1 Cuore Celeste"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Subire danni letali trasforma Isaac in un fantasma incatenato al suo cadavere, permettendogli di continuare a combattere con mezzo cuore#Se il fantasma sopravvive, Isaac resuscita dopo 10 secondi#Va ricaricato raccogliendo 1 Cuore Celeste", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Subire danni:#Sblocca tutte le porte chiuse nella stanza#Rivela una stanza casuale sulla mappa#Distrugge tutte le rocce colorate o rocce con cunicolo", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 Portacuori vuoto all'inizio di un nuovo piano se si è ad 1 Cuore Rosso o meno", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} Subire danni in una stanza non completata conferisce per la lotta:#Lacrime spettrali#Volo#Annulla il prossimo danno preso#Ferma il tempo per 2 secondi#Aumenta enormemente la velocità e il rateo di fuoco per 2 secondi", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Rimpiazza le lacrime di Isaac con un attacco caricato che spara feti spettrali e a ricerca#{{Damage}} I feti infliggono i danni di Isaac x2.8 al secondo", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Famiglio che carica e rilascia un cerchio di \"Fauci dell'Oblio\" che infligge 52.5 danni in un 1 secondo", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Sparare carica un raggio posteriore a corto raggio dai danni elevati#Non rimpiazza la lacrime di Isaac", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Infligge danni da contatto e vola in avanti#Mangia i consumabili lungo la via#Ogni consumabile mangiato ne aumenta le dimensioni e i danni, e genera 1 mosca blu#Mangiare 4 consumabili genera un portale per una stanza inesplorata", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "A volte sbuca dal terreno per afferrare 1 nemico#I nemici afferrati subiscono 8 danni al secondo, vengono rallentati e non possono muoversi", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Quando i nemici muoiono generano schegge d'ossa#Le ossa bloccano i proiettili e infliggono danni da contatto", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Uccidere 1 nemico ha una chance di generare 1 fantasma#I fantasmi inseguono i nemici, infliggono danni da contatto ed esplodono dopo 5 secondi#Isaac non subisce danni dalle loro esplosioni", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Genera 1 fiammella casuale#Ad ogni uso genera 1 fiammella aggiuntiva, fino ad arrivare a 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Raccogliere i {{SoulHeart}} Cuori Celesti conferisce aumenti permanenti a statistiche casuali", -- Soul Locket
	-- Full old Desc: "↑ Raccogliere i {{SoulHeart}} Cuori Celesti conferisce aumenti permanenti a statistiche casuali#{{SoulHeart}} Genera 1 Cuore Celeste"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "{{Friendly}} Genera un mostro amichevole casuale che imita i movimenti e gli attacchi di Isaac", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Quando Isaac muore:#Resuscita nella stessa stanza con mezzo cuore#↑ {{Speed}} +0.2 Velocità#↑ Enorme Riduzione Statura ", -- Inner Child
	-- Full old Desc: "+1 Vita#Quando Isaac muore:#Resuscita nella stessa stanza con mezzo cuore#↑ {{Speed}} +0.2 Velocità#↑ Enorme Riduzione Statura "
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "I piedistalli alternano rapidamente tra 5 oggetti causali", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "I nemici rimbalzano via da Isaac#50% di chance di negare danni da contatto#50% di chance di deviare i proiettili nemici", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Previene la generazione di oggetti di Qualità {{Quality0}}/{{Quality1}}#Gli oggetti di Qualità {{Quality2}} hanno il 33% di chance di venire risorteggiati", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Genera una schiera di spine nella {{DevilRoom}} Stanza del Diavolo#Subire danni dalle spine conferiscd:#35%: Nulla#33%: ↑ {{Damage}} +0.5 Danni#15%: 6 {{Coin}} monete#10%: 2 {{BlackHeart}} Cuori Neri#5%: {{DevilRoom}} Oggetto casuale del Diavolo#2%: Trasformazione \"Leviatano\"", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Completare una stanza genera 1 nuova mosca#Dopo aver bloccato un proiettile le mosche si trasformano in mosche blu", -- The Swarm
	-- Full old Desc: "Conferisce 8 mosche orbitali#Completare una stanza genera 1 nuova mosca#Dopo aver bloccato un proiettile le mosche si trasformano in mosche blu"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} Ogni colpo letale conferisce +2 Cuori Spezzati#A 12 Cuori Spezzati Isaac muore", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} +0.25 Danni per Cuore Spezzato#{{BrokenHeart}} +3 Cuori Spezzati#{{BrokenHeart}} Ogni colpo letale conferisce +2 Cuori Spezzati#A 12 Cuori Spezzati Isaac muore"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Subendo danni si riceve fino all'uscita dal piano:#↑ {{Speed}} Più Velocità#↑ {{Tears}} Più Rateo di Fuoco#Si massimizza a +1.02 di Velocità e a +3 di Rateo di Fuoco", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Isaac viene circondato da un'aureola#I nemici dentro all'aureola per troppo tempo vengono colpiti da un raggio di luce in 4 direzioni#Subire danni aumenta le dimensioni dell'aureola fino all'uscita dal piano", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Entrare in una Stanza del Boss genera un clone del boss#Sconfiggere il clone genera 1 oggetto extra#Il clone è più lento e ha il 75% della salute", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "2 famigli che sparano lacrime con le stesse statistiche ed effetti di Isaac#{{Damage}} Infliggono il 37.5% dei danni di Isaac", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "{{Collectible118}} Completare 4 stanza fa sparare nella stanza successiva un raggio di \"Zolfo Fuso\"", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Usare una {{Rune}} runa, {{Card}} carta o {{Pill}} pillola usa anche una copia delle ultime 3 rune/carte/pillole usate dopo aver raccolto \"Camera di Risonanza\"", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Genera un {{DirtyChest}} Vecchio Baule all'inizio di ogni piano#I Vecchi Bauli richiedono una chiave per venire aperti e possono contenere: {{SoulHeart}} Cuori Celesti, {{Trinket}} ninnoli o oggetti di Mamma, Papà o angelici", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Subire danni genera 1 fiammella orbitale#Le fiammelle sparano lacrime, non bloccano i proiettili e spariscono al piano successivo#Si massimizza a 6 fiammelle", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Alterna tra il personaggio corrente con Esau Jr.#Esau Jr. ha {{BlackHeart}} 3 Cuori Neri, {{Damage}} +2 Danni, volo, e oggetti casuali pari al numero di oggetti in possesso quando l'oggetto è stato usato per la 1° volta#I personaggi hanno salute e oggetti separati#{{Warning}} Se 1 dei 2 personaggi muore la partita si conclude", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} Ogni uccisione incrementa la durata di 1 secondo e conferisce brevemente invincibilità", -- Berserk!
	-- Full old Desc: "{{Battery}} Si carica infliggendo danni#{{Timer}} Conferisce per 5 secondi:#↑ {{Speed}} +0.4 Velocità#↓ {{Tears}} x0.5 Moltiplicatore Rateo di Fuoco#↑ {{Tears}} +2 Rateo di Fuoco#↑ {{Damage}} +3 Danni#Limita gli attacchi ad uno in mischia che riflette i proiettili#{{Timer}} Ogni uccisione incrementa la durata di 1 secondo e conferisce brevemente invincibilità"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Isaac può passare attraverso i nemici/proiettili e li paralizza#Finito l'effetto danneggia i nemici paralizzati, rimuove i proiettili paralizzati e crea una zaffata nella posizione di Isaac#Gli attacchi e la zaffata sono tanto più potenti quanti più nemici/proiettili vengono colpiti", -- Dark Arts
	-- Full old Desc: "{{Timer}} Conferisce per 1 secondo (o finché non si spara):↑ {{Speed}} +1 Velocità#Isaac può passare attraverso i nemici/proiettili e li paralizza#Finito l'effetto danneggia i nemici paralizzati, rimuove i proiettili paralizzati e crea una zaffata nella posizione di Isaac#Gli attacchi e la zaffata sono tanto più potenti quanti più nemici/proiettili vengono colpiti"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Consuma tutti i piedistalli nella stanza e genera 1 famiglio locusta per ognuno di essi#Le locuste infliggono i danni di Isaac 2-3 volte ad attacco#Alcuni oggetti se consumati generano una locusta speciale", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Tutte le lacrime di Isaac vengono sparate dall'occhio destro", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Danni#Tutte le lacrime di Isaac vengono sparate dall'occhio destro"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Isaac scatta nella direzione in cui si sta muovendo#Scattare verso 1 nemico o un boss lo raccoglie e lo schianta a terra#Lo schianto infligge danni e genera scosse sismiche in base alla statura di Isaac#Durante lo scatto e lo schianto si è invincibili", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Raccoglie fino a 8 consumabili che non possono essere buttati a terra#Usare l'oggetto con 8 consuambili nel sacco assembla 1 oggetto#La qualità dell'oggetto si basa sulla qualità dei consumabili", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Entrare in una stanza con piedistalli fa mostrare in essi un secondo oggetto incorporeo#Usare l'oggetto inverte l'oggetto reale con quello incorporeo#Usare \"Limbo\" dopo aver preso il 1° oggetto permette ad Isaac di raccogliere l'altro oggetto#{{Warning}} Se si lascia la stanza gli oggetti incorporei lasciati da soli nei piedistalli spariscono", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Genera 1 orbitale che conferisce l'effetto di 1 oggetto casuale#Gli oggetti hanno il 25% di chance di essere della categoria di oggetti della stanza corrente e il 75% di chance di essere della categoria della Stanza dei Tesori, Stanza del Boss o del Negozio", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Rimuove mezzo cuore e crea 1 grumo#I grumi copiano le lacrime di Isaac#Ogni tipo di cuore genera 1 grumo con salute, danni e effetti delle lacrime diversi", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Richiama il corpo di Il Dimenticato da qualsiasi distanza#L'Anima è invincibile durante il richiamo di Il Dimenticato", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Usare l'oggetto quando è vuoto immagazzina al suo interno la cacca successiva#Usare l'oggetto con una cacca al suo interno usa quella cacca", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Spendere 3 monete conferisce tra:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Genera 3 {{Coin}} monete e 1 {{Key}} chiave#{{Shop}} Spendere 3 monete conferisce tra:#↑ {{Speed}} +0.03 Velocità#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +0.25 Gittata"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Roccce e altri ostacoli se distrutti generano 2 ragni blu#Nelle stanze ostili le rocce possono certe volte generare ragni blu", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Genera 1 oggetto/consumabile del Negozio comprabile", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Genera consumabili in base al numero di cariche#Ricompense delle cariche:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} A 12 cariche attiva un potente effetto casuale", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Fa sì che tutti gli oggetti futuri siano glitchati#Gli oggetti glitchati hanno effetti totalmente casuali", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "{{Chained}} Incatena il nemico più vicino per 5 secondi#I nemici incatenati non possono muoversi o attaccare", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Risorteggia tutti gli oggetti nella stanza, diminuendo di 1 il loro ID interno", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Subire danni butta a terra mezzo Cuore Rosso oppure uno intero, in base al quantitativo perso da Isaac#I cuori vengono scagliati via e spariscono 1.5 seconds", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Infliggere abbastanza danni fa lampeggiare di rosso Isaac#Rilasciare il tasto di fuoco mentre Isaac lampeggia può:#Lanciare una cacca casuale#Creare del liquame potenziante#{{Poison}} Scoreggiare una nube velenosa#Genera 5 bombe accese", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Ad una doppia premuta del tasto di fuoco Isaac starnutisce sangue#Lo starnuto infligge i danni di Isaac x1.5#Tempo di attesa di 1 secondo#{{BrimstoneCurse}} I nemici affetti prendono danni extra dai raggi di \"Zolfo Fuso\"", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Le bombe di Isaac generano fantasmi che inseguono i nemici#I fantasmi infliggono i danni di Isaac x2 al secondo ed esplodono dopo 10 secondi", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe di Isaac generano fantasmi che inseguono i nemici#I fantasmi infliggono i danni di Isaac x2 al secondo ed esplodono dopo 10 secondi"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Un famiglio demoniaco fuoriesce da Isaac fino all'uscita dalla stanza#Il demone spara verso il nemico più vicino, imitando le lacrime, statistiche e effetti di Isaac#{{Damage}} Le sue lacrime infliggono il 75% dei danni di Isaac", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Lancia la testa di Isaac verso una direzione#La testa infligge danni da contatto e spara lacrime dal luogo in cui atterra#Usare di nuovo l'oggetto o calpestare la testa la rimette a posto", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Genera 1 runa casuale o 1 pietra dell'anima", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Danni#{{Rune}} Genera 1 runa casuale o 1 pietra dell'anima"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} Distruggere rocce ha il 33% di chance di generare monete", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} Chance più alte del 20% di generare monete dalla cacca#{{Poison}} Raccogliere monete fa scoreggiare Isaac, avvelenando i nemici e respingendo nemici e proiettili", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% di chance di un effetto di 1 fungo casuale a stanza", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} Subire danni ha un'alta chance di generare 1 famiglio di \"Gemelli\" fino all'uscita dalla stanza", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} Avere mezzo cuore o meno genera {{Collectible100}} "Piccolo Steven"#{{Collectible318}} Subire danni ha un'alta chance di generare 1 famiglio di "Gemelli" fino all'uscita dalla stanza"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Subire danni ha il 5% di chance di infliggere 80 danni a tutti i nemici nella stanza#{{Collectible35}} Cuori Neri ed effetti simili a \"Il Necronomicon\" infliggono il doppio dei danni", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} Raccogliere 1 moneta ha il 25% di chance di generare mezzo Cuore Rosso#Chance più alte da nichelini e decini", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} Raccogliere 1 moneta ha il 25% di chance di generare 1 Bomba#Chance più alte da nichelini e decini", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} Raccogliere 1 moneta ha il 25% di chance di generare 1 Chiave#Chance più alte da nichelini e decini", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Cammuffa Isaac ad intervalli casuali#{{Confusion}} Confonde i nemici#Può essere usato per aprire la \"Porta Strana\" in \"Profondità II\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ x1.33 Moltiplicatore delle statistiche (escluso il rateo di fuoco) al di sopra di 1 {{Speed}} Velocità, 2.73 {{Tears}} Lacrime, 3.5 {{Damage}} Danni, 6.5 {{Range}} Gittata, 1 {{Shotspeed}} Velocità Colpi", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Subire danni esaurisce i Cuori Rossi prima dei Cuori Neri/Celesti#{{Warning}} I danni ai Cuori Rossi possono ridurre le chance di una Stanza del Diavolo/dell'Angelo", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} I Negozi appaiono in \"Utero\" e \"Carcassa\"", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Le Stanze dei Tesori appaiono in \"Utero\" e \"Carcassa\"", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} Entrare in un nuovo piano cura di mezzo cuore#{{HealingRed}} Cura un minimo di mezzo cuore", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} Raccogliere 1 moneta ha il 17% di chance di generare mezzo Cuore Celeste#Chance più alte da nichelini e decini", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% di chance di ottenere un effetto di 1 siringa casuale ad ogni stanza", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Le bombe di Isaac esplodono più in fretta", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Aumenta la dimensione delle scoregge", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Porte, blocchi chiave e Bauli Dorati possono essere aperti con le esplosioni#Le esplosioni possono aprire anche la \"Strana Porta\" in \"Profondità II\"", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Entrare in un nuovo piano genera nella stanza iniziale fino a 4 consumabili non collezionati nel piano precedente", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Usare un oggetto attivo lo risorteggia", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +4 Fortuna per gli effetti delle lacrime basati sulla Fortuna", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Raccogliere Cuori Rossi può convertirli in ragni blu#Agisce anche con la salute al massimo#L'effetto può consumare cuori richiesti per curarsi", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "x2 Moltiplicatore Rateo di Fuoco dei famigli", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Entrare in nuovo piano genera 4 fiammelle di \"Libro delle Virtù\"", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Le lacrime girano di 90 gradi per mirare a nemici che possono aver mancato", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Subire danni distrugge il ninnolo", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Fortuna#Subire danni distrugge il ninnolo"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Gli oggetti delle Stanze del Tesoro vengono rimpiazzati da patti col diavolo", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} Raccogliere una moneta ha il 17% di chance di aggiungere 1 carica all'oggetto attivo#Chance più alte da nichelini e decini", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Tutti i famigli orbitano intorno ad Isaac", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Usa l'oggetto attivo poco prima di subire danni se esso è carico", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Le porte chiuse possono essere aperte senza chiavi, ma prima di accedere alla stanza dietro di essa Isaac deve completare una stanza del piano \"Calma\"", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Ritrae gran parte delle spine, rendendole innocue#Influisce anche sulle {{CursedRoom}} porte delle Stanze Maledette, bauli imitatori e altri ostacoli spinosi", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "+15% di chance extra se non si è entrati nel Planetario#Si possono generare Planetari in \"Utero\" e \"Carcassa\"", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +9% di chance di un Planetario#+15% di chance extra se non si è entrati nel Planetario#Si possono generare Planetari in "Utero" e "Carcassa""
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% di chance di un effetto di 1 Oggetto di Mamma casuale ad ogni stanza", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% di chance di conferire in ogni nuova stanza 1 uso singolo di 1 oggetto dado#Uscendo dalla stanza il dado sparisce#Il dado non occupa 1 slot per pillole/carte", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio in \"Cattedrale\"", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 Portacuori mentre viene tenuto", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Subire danni fa sì che Isaac butti a terra 2 sue monete, chiavi o bombe#I consumabili possono venire rimpiazzati da altre varianti, tra cui chiavi dorate, nichelini, decini, etc.", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "I {{GoldenChest}} Bauli Dorati possono contenere carte, pillole o ninnoli extra", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Chiave quando viene raccolto#{{GoldenChest}} Rimpiazza tutti i bauli (eccetto quelli Vecchi/Mega) con Bauli Dorati#I {{GoldenChest}} Bauli Dorati possono contenere carte, pillole o ninnoli extra"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Entrare in nuovo piano genera 1 sacco", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio in \"Sheol\"", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} Completare una stanza ha il 33% di chance di trasformare il personaggio in Azazel#{{Timer}} L'effetto dura fino al completamento e all'uscita dalla stanza", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Tutte le Cacchine sono amichevoli#Completare una stanza genera 1 Cacchina casuale", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Genera 1 bomba extra per ogni bomba piazzata", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Da \"Utero\" in poi rimpiazza tutte le monete e chiavi generate con una bomba, cuore, pillola, carta, ninnolo, pila, o mosca nemica", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% di chance di conferire l'effetto di 1 oggetto passivo casuale ad ogni stanza", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "{{Friendly}} Completare una stanza ha il 25% di chance di generare 1 Ossuto amichevole", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} Entrare in un nuovo piano conferisce +1 Cuore Osseo", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Mentre viene tenuto conta come 1 oggetto per la trasformazione di Guppy", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} Completare una stanza ha il 33% di chance di creare una stanza di \"Chiave Rossa\"#Chance più basse che ciò avvenga in una stanza rossa", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% di chance che i patti col diavolo si paghino in monete anziché cuori", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Raccogliere 1 moneta teletrasporta Isaac in una stanza casuale#Può teletrasportare in stanza segrete", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Permette ad Isaac di prendere gratuitamente 1 patto col diavolo#{{Warning}} Il patto col diavolo gratuito influenza comunque le chance per le Stanze dell'Angelo", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Previene l'apparizione di Krampus nelle Stanze del Diavolo#Le Stanze del Diavolo sono varianti speciali con più patti, Cuori Neri e nemici", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% di chance di una Stanza del Diavolo#Previene l'apparizione di Krampus nelle Stanze del Diavolo#Le Stanze del Diavolo sono varianti speciali con più patti, Cuori Neri e nemici"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Apre la porta al piano \"Calma\" a prescindere dal timer", -- Strange Key
	-- Full old Desc: "Apre la porta al piano "Calma" a prescindere dal timer#Usare {{Collectible297}} "Scrigno di Pandora" consuma la chiave e genera 6 oggetti da categorie casuali"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Genera 1 grumo di sangue che imita i movimenti di Isaac#Copia le statistiche, gli effetti delle lacrime e il 35% dei danni di Isaac#Resuscita ad ogni stanza", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Completare una {{ChallengeRoom}} Sala Sfida genera 1 baule#Completare una {{BossRushRoom}} Sala Sfida Boss genera 1 oggetto", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Subire danni ha il 50% di chance che Isaac esploda#Non distrugge le Macchine di Donazione Sangue o i Confessionali, ma genera consumabili come se fossero esplosi", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "I famigli imitano i movimenti di Isaac#Tenere premuto il tasto di rilascio ({{ButtonRT}}) mantiene fermi i familiari", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Segue i movimenti di Isaac e spara lacrime spettrali#Copia le statistiche, effetti delle lacrime e il 50% dei danni di Isaac#Usa la maggior parte degli oggetti attivi insieme ad Isaac#Muore in 1 colpo#Resuscita ad ogni piano", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Usare un oggetto attivo aziona l'effetto di 1 altro oggetto attivo da 1-2 cariche", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Entrare in una {{AngelRoom}} Stanza dell'Angelo genera 5 fiammelle#Donare ai Mendicanti ha il 25% di chance di generare 1 fiammella", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% di chance di duplicare un famiglio ad ogni stanza", -- The Twins
	-- Full old Desc: "50% di chance di duplicare un famiglio ad ogni stanza#Se Isaac non ha famigli conferisce {{Collectible8}} "Fratello Bobby" o {{Collectible67}} "Sorella Maggy""
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} I Negozi vendono famigli per 10 monete", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Uccidere 1 nemico ha il 17% di chance di generare 1 locusta casuale", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Conferisce 1 locusta di \"Abisso\"", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% di chance di aggiungere 1 oggetto nascosto nella stanza del Tesoro#50% di chance di rivelare l'oggetto nascosto nelle Stanze del Tesoro della via alternativa", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Uccidere 1 nemico pietrificato lo congela", -- Ice Cube
	-- Full old Desc: "{{Petrify}} Entrare in una stanza ha il 20% di chance di pietrificare nemici casuali#{{Freezing}} Uccidere 1 nemico pietrificato lo congela"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Uccidere 1 nemico rende Isaac invincibile per 1 secondo#L'invincibilità incrementa di durata ad ogni uccisione consecutiva", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Teletrasporta Isaac nella Stanza dei Tesori#{{Planetarium}} Se c'è un Planetario, lo teletrasporta lì", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} Rimuove Malediz. del Buio", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Salute al massimo#Infligge 100 danni a tutti i nemici#{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto per la Stanza {{SuperSecretRoom}} Super / {{UltraSecretRoom}} Ultra Segreta)#{{CurseDarkness}} Rimuove Malediz. del Buio"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "Genera 1 Mendicante#{{DemonBeggar}} 33% di chance che sia 1 Mendicacuori#5% di chance che sia 1 Scroccachiavi, Scroccabombe, Elettrizzato o Mendicadavere", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Converte tutti i consumabili, bauli e nemici che non sono boss in bombe", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Converte tutti i consumabili, bauli e nemici che non sono boss in monete", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Converte tutti i consumabili, bauli e nemici che non sono boss in chiavi", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} Converte tutti i consumabili, bauli e nemici che non sono boss in Cuori Rossi", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Genera una botola per il prossimo piano#{{LadderRoom}} Genera un cunicolo se usato su una casella decorativa del piano (erba, sassolini, foglietti, gemme, etc.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Usare la carta la lancia nella direzione in cui Isaac si sta muovendo#Uccide istantaneamente QUALSIASI nemico tocchi (eccetto Delirio e La Bestia)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "Scudo monouso di \"Manto Sacro\" (previene i danni per 1 volta)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Attiva l'effetto di 1 runa casuale#L'effetto della runa è più debole", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Butta a terra tutti i cuori di Isaac a parte 1 e tutti i suoi consumabili#Se possibile le monete e le bombe vengono rilasciate in forma di {{Collectible74}} \"Un Quarto\" o {{Collectible19}} \"Bum!\"", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} Conferisce un'aura che respinge nemici e proiettili per 60 secondi", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Il piede di Mamma cerca di calpestare Isaac per 60 secondi", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teletrasporta Isaac in una Stanza del Boss extra da completare in cambio di 1 oggetto#Il boss proviene da 2 piani al di sotto di quello corrente", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Genera 1 oggetto scelto dalla categoria di oggetti della stanza corrente#{{BrokenHeart}} Converte 1 Portacuori o 2 Cuori Celesti in 1 Cuore Spezzato", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#Invincibilità ma senza potersi muovere", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} Conferisce per 10 secondi:#↑ {{Tears}} x4 Moltiplicatore Rateo di Fuoco#Invincibilità ma senza potersi muovere"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} Evoca 2-4 Bauli Dorati", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} Converte tutti i consumabili e gli oggetti nella stanza in un numero di monete pari al loro valore nel Negozio#Se non c'è nulla di convertibile, genera invece 1 Penny", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} Attiva l'effetto di una Stanza del Dado casuale", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} I nemici nella stanza vengono {{Slow}} rallentati e prendono il doppio dei danni per 30 secondi", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Triplo colpo#{{Coin}} I nemici uccisi lasciano monete", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} Conferisce per 30 secondi:#↓ {{Speed}} -0.1 Velocità#Triplo colpo#{{Coin}} I nemici uccisi lasciano monete"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Attiva \"Libro dei Morti\"#{{Friendly}} Genera entità d'ossa amichevoli per ogni nemico ucciso nella stanza", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Costringe Isaac ad assumere 5 pillole casuali", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Timer}} Conferisce per 60 secondi:#{{Collectible33}} Attiva \"La Bibbia\" (volo)#{{Collectible390}} Famiglio di \"Serafino\"#{{MomsHeart}} Uccide istantaneamente Mamma, Cuore di Mamma e \"È Vivo!\"#{{Warning}} Uccide Isaac se usato contro Satana", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Genera 7 ammassi di rocce e ostacoli casuali#Gli ammassi contengono spesso rocce colorate", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Rimuove l'oggetto passivo raccolto per 1° da Isaac (esclusi gli oggetti di partenza)#Genera 2 oggetti casuali dalla categoria di oggetti della stanza corrente", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Teletrasporta Isaac nella Stanza Ultra Segreta#La via di ritorno è composta da Stanza Rosse", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{CurseDarkness}} Malediz. del Buio", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} Conferisce fino all'uscita dal piano:#↑ {{Damage}} +1.5 Danni#Volo e lacrime spettrali#{{BoneHeart}} Converte i Portacuori in Cuori Ossuti ()#{{CurseDarkness}} Malediz. del Buio"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Genera 1 Macchina di Rifornimento", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Genera una botola con cunicolo", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} \"Chiave Rossa\" monouso", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Copia l'effetto della pillola, carta, runa, pietra dell'anima o oggetto attivati più di recente", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Fa sì che tutti i piedistalli nella stanza alternino tra 2 oggetti diversi", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} Conferisce fino all'uscita dalla stanza:#{{HalfHeart}} I nemici uccisi lasciano mezzi Cuori Rossi che spariscono dopo 2 secondi", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Apre tutte le porte nella stanza#{{Collectible580}} Crea Stanza Rosse in ogni muro in cui è possibile", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} Attiva \"Arti Oscure\" per la durata di 3 secondi#↑ {{Damage}} Più Danni temporanei per ogni nemico/proiettile colpito", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Rilascia 8 scoregge velenose con liquame marrone, per poi generare rapidamente 7 Bombe Popò#Rimanere sul liquame conferisce:#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Rilascia 8 scoregge velenose con liquame marrone, per poi generare rapidamente 7 Bombe Popò#Rimanere sul liquame conferisce:#↑ {{Tears}} +1.5 Rateo di Fuoco#↑ {{Damage}} +1 Danni"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Timer}} 14 famigli di \"Uccello Morto\" attaccano in volo i nemici fino alla loro morte o all'uscita dalla stanza", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} Attiva \"Violenza!\" per 10 secondi#{{Timer}} Ogni uccisione incrementa la durata di 1 secondo", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} Spara un raggio di \"Mega Sbotto\" per 7.5 secondi", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Isaac muore e resuscita subito dopo con mezzo cuore#Se si subiscono danni letali questo oggetto viene usato automaticamente (opera come una vita extra)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Risorteggia i piedistalli e i consumabili nella stanza#Gli oggetti risorteggiati appartengono a categorie di oggetti casuali", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Trasforma il personaggio in Lo Smarrito fino all'uscita dalla stanza#Permette di prendere gratuitamente 1 {{DevilRoom}} oggetto della Stanza del Diavolo#Permette di aprire gratuitamente la porta per \"Mausoleo\" o \"Gehenna\"", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Conferisce permanentemente 1 famiglio casuale", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Genera 15 locuste casuali", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Genera Il Dimenticato come personaggio secondario fino all'uscita dalla stanza", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Genera 6 fiammelle casuali di \"Libro delle Virtù\"", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Genera Esaù come personaggio secondario fino all'uscita dalla stanza#Viene generato con lo stesso numero di oggetti passivi del personaggio", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi#Vengono invertite anche bombe e chiavi dorate", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} Rende lo schermo pixellato per 30 secondi", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Rallenta Isaac e tutti i nemici nella stanza", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} Velocizza Isaac e tutti i nemici nella stanza#Si attiva nuovamente dopo 30 e 60 secondi", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Effetto di 1 pillola casuale#Chance di autodistruggersi dopo qualche uso", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Avvelena tutta la stanza", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Warning}} Infligge 2 cuori di danno ad Isaac#Con 1 cuore o meno diventa una pasticcona \"Salute al Massimo\" (+3 Cuori Celesti)", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi#Aumenta del 50% il numero di bombe e chiavi#Vengono invertite anche bombe e chiavi dorate", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Evoca qualche Mega Bomba Troll a ricerca", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Con 1 Portacuore o meno diventa una pasticcona \"Più Salute\"", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2 Salute#Con 1 Portacuore o meno diventa una pasticcona "Più Salute""
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Conferisce 1 orbitale \"Grande Fan\"#Non c'è limite nel numero di \"Grande Fan\" in possesso ad Isaac", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} Ricarica pienamente gli oggetti attivi", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Ricarica pienamente gli oggetti attivi#{{Battery}} Butta a terra 3-4 pile"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} DProsciuga tutti i Portacuori tranne 1", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} DProsciuga tutti i Portacuori tranne 1#{{Heart}} Genera 1-4 Cuori Rossi"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Impedisce ad Isaac di muoversi e sparare per 4 secondi", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Rende permanentemente amichevole ogni nemico nella stanza", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Genera una pozza di liquame delle dimensioni di una stanza che danneggia i nemici", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} Spara diagonalmente per 60 secondi", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Isaac genera cacca dietro di lui per 10 secondi", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Effetto della Malediz. del Dedalo fino all'uscita dal piano", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Aumenta considerevolmente la statura di Isaac#Non influisce sulla sua hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Diminuisce considerevolmente la statura di Isaac#In più diminuisce le dimensioni dell'hitbox", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Genera 2 ragni blu per ogni cacca presente nella stanza", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Genera 2 ragni blu per ogni nemico nella stanza#Se non ci sono nemici nella stanza genera 2-6 ragni blu", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Rende lo schermo pixellato per 90 secondi", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Genera una pozza di liquame scivoloso dalla lunga durata", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} Genera una pozza di liquame rallentante dalla lunga durata", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Rallenta Isaac e tutti i nemici nella stanza", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Velocizza Isaac e tutti i nemici nella stanza#Si attiva nuovamente dopo 30 e 60 secondi", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "{{Trinket}} Consuma il ninnolo di Isaac e conferisce permanentemente i suoi effetti", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Spara un ammasso di lacrime di \"Ipecac\"", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Genera come pasticcona l'ultima pillola utilizzata", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Aumenta 2 volte 1 statistica casuale#↓ Diminuisce 2 volte 1 statistica casuale", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Effetto di una pasticcona casuale#Chance di autodistruggersi dopo qualche uso", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
