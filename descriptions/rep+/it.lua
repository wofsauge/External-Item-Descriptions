---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "it"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "Limonata Accidentale", "Versa una pozza di liquame#TIl liquame infligge 24 danni da contatto al secondo#Il liquame persiste fino all'uscita dalla stanza" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Uccello Morto", "Venire colpito genera un uccello#L'uccello infligge 4.3 danni da contatto al secondo#Persiste fra le stanze se Isaac ha mezzo cuore" }, -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "Reginello", "{{Coin}} Genera 7 monete casuali#Genera 1 ninnolo penny casuale" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "Eredità di Sangue", "Infligge 40 danni a tutti i nemici#{{Tears}} +0.48 Rateo di Fuoco fino all'uscita dalla stanza#{{Warning}} Infligge 1 cuore di danno ad Isaac#Dopo il 1° uso in una stanza, infligge invece mezzo cuore di danno#{{Heart}} Rimuove per primi i Cuori Rossi" }, -- Blood Rights
	-- Change: added random tear effects information	
	[244] = { "244", "Tech.5", "Oltre alle lacrime Isaac spara certe volte dei laser#Leggera chance che i laser abbiano effetti casuali"}, -- Tech.5
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Sacco da Boxe", "Famiglio diversivo#I nemici bersagliano lui al posto di Isaac#Blocca i proiettili nemici" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Il Trattamento Ludovico", "↑ {{Shotspeed}} +0.2 Velocità Colpi#Rimpiazza le lacrime di Isaac con una grande lacrima controllabile" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Fagiolo", "{{Petrify}} Infligge 100 danni e pietrifica tutti i nemici nella stanza#{{Poison}} Infligge 5 danni e avvelena i nemici nelle vicinanze#Può aprire stanze segrete e rompere rocce" }, -- Mega Bean
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[420] = { "420", "Polvere nera", "Camminare in cerchio tracccia un pentagramma per terra, il quale infligge 130 danni per 4 secondi#Conferisce esplosioni più grandi#I focolari estinti esplodono" }, -- Black Powder
	-- Change: Complete rewrite
	[436] = { "436", "Latte!", "Blocca i proiettili nemici#{{Tears}} Dopo 10 colpi, si rompe e conferisce più Lacrime per il resto del piano" }, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "Fagiolo Aleggiante", "Sparare senza fermarsi per 4 secondi genera una nube tossica#Dopo 10 secondi la nube aumenta di dimensioni#Con l'aumento delle dimensioni la nube infligge meno danni#Sparandole si può spostarla" }, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Calmina", "Rimbalza per la stanza#Infligge 30 danni da contatto al secondo#Quando Isaac spara smette di muoversi#Mentre è fermo blocca i proiettili e spara cerchi di lacrime a scrosci" }, -- Hushy
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[475] = { "475", "Piano C", "Infligge 9,999,999 danni a tutti i nemici#{{Warning}} Uccide Isaac dopo 3 secondi#Per Delirio e Madre dai 10 ai 12 secondi" }, -- Plan C	
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Dataminer", "↑ Aumento di 1 statistica casuale#↓ Diminuzione di 1 statistica casuale#{{Timer}} Effetti delle lacrime casuali fino all'uscita dalla stanza#Converte i piedistalli in oggetti casuali#{{Blank}} Corrompe tutti gli sprite e la musica nella stanza" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Telecomando", "Cambia il tuo personaggio in uno casuale#50% di chance che rimuova l'oggetto preso più di recente" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirante", "Genera un Delirio amichevole#Persiste fra le stanze#{{Warning}} Può essere attivo solo un boss per volta#La salute del boss degrada con il tempo" }, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "2Spooky", "{{Tears}} +0.5 Lacrime#{{Shotspeed}} +0.2 Velocità Colpi#{{Fear}} {{Fear}} Spaventa i nemici in una piccola area attorno ad Isaac" }, -- 2Spooky	
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Fa Male", "{{Timer}}  Mentre si subiscono danni, conferisce fino all'uscita dalla stanza:#↑ {{Tears}} +1.2 Rateo di Fuoco al 1° colpo#↑ {{Tears}} +0.4 Rateo di Fuoco per ogni colpo extra#Rilascia un anello di 10 lacrime attorno ad Isaac#All'impatto le lacrime lasciano una pozza di liquame" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Ad una doppia premuta del tasto di movimento Isaac effettua uno scatto#{{Damage}} Durante lo scatto Isaac è invincibile e infligge x4 dei suoi danni +8#{{Timer}} Tempo di attesa di 3 secondi#{{Burning}} All'impatto crea un cerchio di fuoco" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Iupiter", "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.3 Velocità#{{HealingRed}} Cura di 2 cuori#{{Speed}} Mentre rimane fermo la velocità cresce fino a +0.5#{{Poison}} Muoversi rilascia nubi velenose#{{Poison}} Immunità al veleno" }, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "Nazar", "↑ {{Luck}} +2 Fortuna#Immunità ai {{Burning}} danni da fuoco e agli effetti di {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno#Conferisce un'immunità di 1 secondo ai liquidi" }, -- Evil Charm
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "Rivelazione", "Volo#{{Chargeable}} Raggio sacro dai danni elevati#Non rimpiazza le lacrime di Isaac" }, -- Revelation	
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Stella di Betlemme", "Si sposta lentamente dalla 1° stanza del piano fino alla {{BossRoom}} Stanza del Boss#Si muove più velocemente se lo si supera, ed è più lento se gli si sta dietro#Dentro l'aura conferisce:#↑ {{Tears}} x2.5 Moltiplicatore Lacrime#↑ {{Damage}} x1.2 Moltiplicatore Danni#Lacrime a ricerca#50% di chance di ignorare i danni" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Lettura delle Carte", "Genera 2 portali nella 1° stanza di ogni piano#Lasciare la stanza fa sparire i portali#{{Blank}} {{ColorRed}}Rosso: {{CR}}{{BossRoom}} Stanza del Boss#{{Blank}} {{ColorYellow}}Giallo: {{CR}}{{TreasureRoom}} Stanza dei Tesori#{{Blank}} {{ColorBlue}}Blu: {{CR}}{{SecretRoom}} Stanza Segreta#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Negozio" }, --  Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "Mini Portale", "Alla doppia premuta del tasto di sparo il portale viene lanciato#Se lanciato infligge danni da contatto#Dissipa i consumabili lungo la via#Ogni consumabile dissipato ne aumenta le dimensioni e i danni, e genera 1 mosca blu#Dissipare 2-3 consumabili genera un portale per una stanza speciale, e il famiglio sparisce per il resto del piano#I contenuti nella stanza persistono per il resto della partita" }, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Giara di Fiammelle", "Genera 2 fiammelle casuali#Ad ogni uso genera 1 fiammella aggiuntiva, fino ad arrivare a 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abisso", "Consuma tutti i piedistalli nella stanza e genera 1 famiglio locusta per ognuno di essi#Le locuste infliggono i danni di Isaac 2-3 volte ad attacco#Alcuni oggetti se consumati generano 1 locusta speciale#{{Damage}} Le locuste infliggono i danni di Isaac moltiplicati per la qualità dell'oggetto consumato:#{{Quality0}} - x0.5#{{Quality1}} - x0.75#{{Quality2}} - x1.0#{{Quality3}} - x1.5#{{Quality4}} - x2.0" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "Purple Heart", "Chance doppie di nemici campioni#50& di chance che i nemici campioni lascino ricompense#Raddoppia le ricompense dei nemici campioni"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Grano del Rosario", "{{AngelChance}} Chance di una Stanza dell'Angelo aumentate del 50% #{{Collectible33}} Chance più alte di trovare \"La Bibbia\" nei {{Shop}} Negozi e nelle {{Library}} Biblioteche#Forza i {{DevilChance}}patti col diavolo a diventare {{AngelChance}}patti angelici"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "Unghia dei Piedi di Mamma", "{{MomBoss}} Buttare a terra il ninnolo durante una lotta fa cadere un Piede di Mamma nella sua posizione"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Volantino 'Smarrito'", "{{Player10}} Una volta morto resuscita nella forma di Lo Smarrito#{{SuperSecretRoom}} 33% di chance di rivelare Stanze Super Segrete Room nel piano successivo"}, -- Missing Poster	
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Zecca", "{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di 1 cuore#-15% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\", {{Trinket135}} \"Un Accendino\", o ingoiandolo" }, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "Verme Pigro", "↑ {{Damage}} +0.5 Danni#↓ {{Shotspeed}} -0.5 Velocità Colpi"}, -- Lazy Worm	
	-- Change: Complete rewrite
	[70] = {"70", "Pidocchio", "Durante una lotta genera 1 ragno blu ogni 30 secondi#A completamento stanza genera 1 ragno blu"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "Fiche da Poker", "↑ 50% di chance che i bauli generino consumabili extra#↓ 50% di chance che i bauli contengano solo 1 mosca#Aumenta le chance di ricompense da Slot Machine e altre macchine#Scambia oggetti di Qualità 0-2 nei bauli in altri di Qualità maggiore#Certe volte i bauli possono contenere oggetti al di fuori della categoria dei bauli dorati"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "Karma", "{{DonationMachine}} Usare qualsiasi Macchina di Donazione ha il 33% di chance di:#{{HealingRed}} Curare di 1 cuore (40%)#{{Coin}} Conferire 1 moneta (40%)#{{Luck}} Conferire +1 Fortuna (15%)#{{Beggar}} Generare 1 Mendicante (5%)#{{DonationMachine}} Le Macchine di Donazione inceppano più raramente#Influenza anche le donazioni ai Mendicanti e alle Macchine di Rifornimento"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "Guinzaglio per Bambini", "I famigli restano vicini ad Isaac#{{Damage}} Aumento di 25% dei danni dei famigli"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Pannolino Usato", "33% di chance per stanza che tutte le mosche nemiche diventino amichevoli#Genera 1 mosca blu quando si entra in una nuova stanza"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Tonsilla", "Subire danni 6-12 volte genera 1 famiglio che blocca i proiettili#Si massimizza a 2 famigli#Sparisce dopo aver generato 2 famigli" }, -- Tonsil
	-- Change: now affected by luck, maxing at 18 luck
	[99] = { "99", "Super Ball", "10% chance di sparare lacrime rimbalzanti#{{Luck}} 100% di chance con 18 in Fortuna" }, -- Super Ball	
	-- Change: Added +2 Tears
	[103] = {"103", "Uguaglianza!", "Trasforma i consumabili singoli in doppi quando le {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi di Isaac sono di pari numero:#↑ {{Tears}} +2 Lacrime#Trasforma i consumabili singoli in doppi"}, -- Equality!
	-- Change: "2%" to "5%"
	[104] = { "104", "Osso dei Desideri", "Se colpiti 5% di chance di venire distrutto e di generare un piedistallo" }, -- Wish Bone	
	-- Change: "2%" to "5%"
	[105] = { "105", "Sacchetto per il Pranzo", "{{Collectible22}} Se colpiti 5% di chance di venire distrutto e di generare \"Pranzo\"" }, -- Bag Lunch
	-- Change: "2%" to "5%"
	[133] = { "133", "Miccia Corta", "Le bombe di Isaac esplodono più in fretta#Le bombe infliggono il 15% dei danni in più" }, -- Short Fuse
	-- Change: added "Removes Tick"
	[135] = {"135", "Un Accendino", "{{Burning}} Entrare in una stanza ha il 20% di chance di bruciare nemici casuali#{{Warning}} Rimuove {{Trinket53}} \"Zecca\""}, -- A Lighter
	-- Change: Added coin type based information
	[172] = {"172", "Penny Maledetto", "Raccogliere 1 moneta teletrasporta Isaac in una stanza casuale#Può teletrasportare in stanza segrete#Il tipo di moneta influenza il tipo di stanza"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
		-- Purple Heart (find replace):
	[5] = { 2, 3, 4,  50, 66, 75 },
	-- Callus (append):
	[14] = { "{{SacrificeRoom}} Riduce a mezzo cuore i danni delle spine nelle Stanze dei Sacrifici", "{{Collectible108}} Riduce a mezzo cuore molti danni presi" },
	-- Mom's Toenail (find replace):
	[16] = {"posizione", "{{CR}}posizione {{ColorGold}}2 volte", "{{CR}}posizione {{ColorGold}}3 volte"},
	-- Paper Clip (find replace):
	[19] = {"Bauli Dorati", "{{CR}}Bauli Dorati {{ColorGold}}e blocchi chiave", "{{CR}}Bauli Dorati, {{ColorGold}}Blocchi e porte chiusi a chiave"},
	-- Mysterious Paper (find replace):
	[21] = {"1", "{{ColorGold}}2{{CR}}", "{{ColorGold}}2{{CR}}"},
	-- Daemon's Tail (append):
	[22] = {"{{BlackHeart}} I focolari blu e viola ora lasciano Cuori Neri"},
	-- Broken Ankh (find replace):
	[28] = { 22, 33, 50 },
	-- Umbilical Cord (find replace):
	[33] = {"mezzo cuore", "1 cuore", "1 cuore e mezzo"},
	-- Child's Heart (find replace):
	[34] = { 10, 20, 50,  33, 66, 100 },
	-- Rusted Key (find replace):
	[36] = { 10, 20, 50,  33, 66, 100 },
	-- Match Stick (find replace):
	[41] = { 10, 20, 50,  33, 66, 100 },
	-- Cursed Skull (replace):
	[43] = {
		"Quando i danni riducono Isaac a mezzo cuore o meno, viene teletrasportato in una stanza {{ColorGold}}speciale{{CR}}",
		"Quando i danni riducono Isaac a {{ColorGold}}1 cuore{{CR}} o meno, viene teletrasportato in una stanza {{ColorGold}}speciale{{CR}}",
	},
	-- Safety Cap (find replace):
	[44] = { 10, 20, 50,  33, 66, 100 },
	-- Ace of Spades (find replace):
	[45] = { 10, 20, 50,  33, 66, 100 },
	-- Counterfeit Penny (find replace):
	[52] = {"un'altra moneta", "{{ColorGold}}2{{CR}} monete", "{{ColorGold}}3{{CR}} monete"},
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}2{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{ColorGold}}Rimuovibile!",
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}2{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\", {{Trinket135}} \"Un Accendino\", o ingoiandolo",
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}3{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{ColorGold}}Rimuovibile!",
	},
	-- Isaac's Head (find replace):
	[54] = {"3.5 danni", "i danni di Isaac", "1.5x i danni di Isaac"},
	-- Judas' Tongue (replace):
	[56] = {
		"{{DevilRoom}} Abbassa {{ColorGold}}tutti{{CR}} i costi di un patto col diavolo a 1 Portacuori",
		"{{DevilRoom}} Abbassa {{ColorGold}}tutti{{CR}} i costi di un patto col diavolo a 1 Portacuori#{{ColorGold}}Constringe i patti con spuntoni sacrificali ad andare a buon fine al 1° tentativo"
	},
	-- ???'s Soul (find replace):
	[57] = {"Famiglio che rimbalza", "{{CR}}Conferisce {{ColorGold}}2 {{CR}}famigli che rimbalzano", "{{CR}}Conferisce {{ColorGold}}3 {{CR}}famigli che rimbalzano"},
	-- Samson's Lock (find replace):
	[58] = { 6.66, 13, 25 },
	-- The Left Hand (append):
	[61] = {
		"{{RedChest}} I Bauli Rossi ora contengono ricompense extra",
		"{{RedChest}} I Bauli Rossi ora contengono ricompense extra#{{ColorGold}}I Bauli Rossi non generano più ragni rossi",
	},
	-- Shiny Rock (replace):
	[62] = {
		"Le rocce con cunicolo, quelle colorate e {{ColorGold}}le stanze segrete/super segrete{{CR}} luccicano ogni 10 secondi",
		"Le rocce con cunicolo, quelle colorate e {{ColorGold}}le stanze segrete/super segrete{{CR}} luccicano ogni {{ColorGold}}5{{CR}} secondi",
	},
	-- Safety Scissors (append):
	[63] = {
		"Riduce il raggio d'esplosione dei nemici",
		"Riduce di molto il raggio d'esplosione dei nemici",
	},
	-- Super Magnet (find replace):
	[68] = {"consumabili e nemici", "{{CR}}consumabili, nemici, {{ColorGold}}sacchi e ninnoli", "{{CR}}consumabili, nemici, {{ColorGold}}sacchi, ninnoli e bauli"},
	-- Louse (find replace):
	[70] = {"1 ragno blu", "2{{CR}} ragni blu", "3{{CR}} ragni blu"},
	-- Bob's Bladder (appendix):
	[71] = {"Aumenta la grandezza del liquame", "Aumenta durata e grandezza del liquame"},
	-- Poker Chip (append):
	[76] = {"{{Slotmachine}} Raddoppia i profitti ottenuti dal gioco d'azzardo", "{{Slotmachine}} Triplica i profitti ottenuti dal gioco d'azzardo"},
	-- Store Key (append):
	[83] = {"{{Shop}} Previene la generazione di layout mediocri nei Negozi", "{{Shop}} Migliora i layout dei Negozi"},
	-- Rib of Greed (append):
	[84] = {"{{Coin}} Aumenta le chance di Doppi Penny, Nichelini, Decini e Penny Fortunati/Dorati"},
	-- Karma (find replace):
	[85] = {"1 Fortuna", "2{{CR}} Fortuna", "3{{CR}} Fortuna"},
	-- Mom's Locket (find replace):
	[87] = {"mezzo cuore", "un cuore", "un cuore e mezzo"},
	-- Meconium (find replace):
	[91] = { 33, 66, 100,  5, 7, 10 },
	-- Used Diaper (find replace):
	[93] = {"1 mosca blu", "2{{CR}} mosche blu", "3{{CR}} mosche blu"},
	-- Fish Tail (append):
	[94] = {"20% di chance di generare 3 mosche / ragni blu", "20% di chance di generare 4 mosche / ragni blu"},
	-- Tonsil (find replace):
	[97] = {"2 famigli", "3{{CR}} famigli", "4{{CR}} famigli"},
	-- Nose Goblin (replace):
	[98] = {
		"{{ColorGold}}20{{CR}}% di chance di sparare una lacrima adesiva#{{ColorGold}}75{{CR}}% di chance che sia a ricerca#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo#Le caccole si incollano per 10 secondi",
		"{{ColorGold}}30{{CR}}% di chance di sparare una lacrima adesiva {{ColorGold}}a ricerca{{CR}}#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo#Le caccole si incollano per 10 secondi",
	},
	-- Fragmented Card (append):
	[102] = {"{{SecretRoom}} Rivela la posizione di una Stanza Segreta", "{{SecretRoom}} Rivela le posizioni di entrambe le Stanze Segrete"},
	-- Lost Cork
	[106] = {"Aumenta", "{{CR}}Aumenta di molto"},
	-- Crow Heart (append):
	[107] = {
		"{{AngelDevilChance}} 25% di chance che subire danni ai Cuori Rossi non vari le probabilità di una Stanza del Diavolo/dell'Angelo",
		"{{AngelDevilChance}} 50% di chance che subire danni ai Cuori Rossi non vari le probabilità di una Stanza del Diavolo/dell'Angelo",
	},
	-- Walnut (find replace):
	[108] = {
		"1 {{UnknownHeart}} cuore casuale, 1 {{Coin}} moneta, 1 {{Key}} chiave e 1 {{Trinket}} ninnolo",
		"2{{CR}} {{UnknownHeart}} cuori casuali, {{Coin}} monete, {{Key}} chiavi e {{Trinket}} ninnoli",
		"3{{CR}} {{UnknownHeart}} cuori casuali, {{Coin}} monete, {{Key}} chiavi e {{Trinket}} ninnoli",
	},
	-- Duct Tape (append):
	[109] = {"Premere il tasto di rilascio cambierà la disposizione dei famigli"},
	-- Silver Dollar (find replace):
	[110] = {"Negozi", "Negozi potenziati"},
	-- Bloody Crown (append):
	[111] = {"Conterranno 2 oggetti tra cui scegliere"},
	-- Pay To Win (append):
	[112] = {"{{RestockMachine}} Meno chance che le scatole di \"Rifornimento\" esplodano"},
	-- Locust of War (find replace):
	[113] = {"1 mosca esplosiva d'assalto", "2{{CR}} mosche esplosive d'assalto", "3{{CR}} mosche esplosive d'assalto"},
	-- Locust of Pestilence (find replace):
	[114] = {"1 mosca velenosa d'assalto", "2{{CR}} mosche velenose d'assalto", "3{{CR}} mosche velenose d'assalto"},
	-- Locust of Famine (find replace):
	[115] = {"1 mosca rallentante d'assalto", "2{{CR}} mosche rallentanti d'assalto", "3{{CR}} mosche rallentanti d'assalto"},
	-- Locust of Death (find replace):
	[116] = {"1 mosca d'assalto", "2{{CR}} mosche d'assalto", "3{{CR}} mosche d'assalto"},
	-- Locust of Conquest (full replace):
	[117] = {
		"{{CR}}Entrare in una stanza ostile genera {{ColorGold}}2-5{{CR}} mosche d'assalto#Ogni mosca infligge i danni di Isaac x2",
		"{{CR}}Entrare in una stanza ostile genera {{ColorGold}}3-7{{CR}} mosche d'assalto#Ogni mosca infligge i danni di Isaac x2",
	},
	-- Stem Cell (find replace):
	[119] = {"mezzo", "1"},
	-- Hairpin (find replace):
	[120] = {"ricarica totalmente", "sovraccarica"},
	-- Wooden Cross (find replace):
	[121] = {"1 scudo di \"Manto Sacro\"", "2{{CR}} scudi di \"Manto Sacro\""},
	-- Filigree Feather (append):
	[123] = {"I boss angeli lasceranno anche mezzo Cuore Celeste", "I boss angeli lasceranno anche 1 Cuore Celeste"},
	-- Door Stop (append):
	[124] = {"Tiene aperte anche le porte per la Stanza Boss Rush", "Tiene aperte anche le porte per la Stanza Boss Rush e la Sala Sfida"},
	-- Rotten Penny (find replace):
	[126] = {"1 mosca blu", "2{{CR}} mosche blu", "3{{CR}} mosche blu"},
	-- Baby-Bender (append):
	[127] = {"Conferisce anche l'effetto del ninnolo {{Trinket144}} \"Verme Cerebrale\"", "Conferisce anche l'effetto dei ninnoli {{Trinket144}} \"Verme Cerebrale\" e {{Trinket65}} \"Verme Pigro\""},
	-- Blessed Penny (find replace):
	[131] = { 17, 25, 30 },
	-- Short Fuse (find replace):
	[133] = { 15, 30, 50 },
	-- Gigante Bean (append)
	[134] = {"Aumenta la spinta delle scoregge", "Aumenta la spinta delle scoregge#{{ColorGold}}Le scoregge confondono i nemici per 3 secondi"},
	-- Broken Padlock (find replace):
	[136] = {"Porte, blocchi chiave e Bauli Dorati", "{{CR}}Porte, blocchi chiave, Bauli Dorati e {{ColorGold}}Sale Arcade/Sfida", "{{CR}}Porte, blocchi chiave, Bauli Dorati, {{ColorGold}}Sale Arcade/Sfida e Stanze Boss"},
	-- 'M (append):
	[138] = {"10% di chance di caricare totalmente l'oggetto risorteggiato", "20% di chance di caricare totalmente l'oggetto risorteggiato"},
	-- Apple of Sodom (find replace):
	[140] = {"Raccogliere Cuori Rossi può convertirli", "Ogni {{CR}}Cuore Rosso raccolto viene convertito"},
	-- Brain Worm (append):
	[144] = {"25% di chance di sparare lacrime penetranti", "50% di sparare lacrime penetranti"},
	-- Devil’s Crown (append):
	[146] = {"{{Trinket174}} 25% di chance che la Stanza del Tesoro Rossa venga potenziata", "{{Trinket174}} 33% di chance che la Stanza del Tesoro Rossa venga potenziata"},
	-- Charged Penny (find replace):
	[147] = {"1 carica", "2{{CR}} cariche", "3{{CR}} cariche"},
	-- Friendship Necklace (append):
	[148] = {"Aumenta la velocità orbitale dei famigli", "Aumenta di molto la velocità orbitale dei famigli"},
	-- Panic Button (append):
	[149] = {"10% di chance di avere 1 uso gratuito dell'oggetto attivo", "20% di chance di avere 1 uso gratuito dell'oggetto attivo"},
	-- Blue Key (append):
	[150] = {"Raddoppia le ricompense di completamento delle stanze blu", "Triplica le ricompense di completamento delle stanze blu"},
	-- Flat File (append):
	[151] = {"Influisce anche sui Boss, Rancori, e Palla Incatenata"},
	-- Telescope Lens (full replace):
	[152] = {
		"{{PlanetariumChance}} +18{{CR}}% chance di un Planetario#+15% di chance aggiuntiva se non si è ancora entrati in un Planetario#I Planetari possono comparire anche in \"Utero\" e \"Carcassa\"",
		"{{PlanetariumChance}} +33{{CR}}% chance di un Planetario#+15% di chance aggiuntiva se non si è ancora entrati in un Planetario#I Planetari possono comparire anche in \"Utero\", \"Carcassa\", {{ColorGold}}\"Sheol\" e \"Cattedrale\"",
	},
	-- Holy Crown (full replace):
	[155] = {
		"{{CR}}Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio {{ColorGold}}potenziato{{CR}} in \"Cattedrale\"#{{ColorGold}}Le Stanze del Tesoro in \"Cattedrale\" conterranno 2 oggetti tra cui scegliere",
		"{{CR}}Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio {{ColorGold}}potenziato{{CR}} in \"Cattedrale\"#{{ColorGold}}Le Stanze del Tesoro in \"Cattedrale\" conterranno 2 oggetti tra cui scegliere#{{ColorGold}}Rivela la posizione della Stanza del Tesoro e del Negozio in \"Cattedrale\"",
	},
	-- Torn Card (find replace):
	[157] = { 15, 10, 5 },
	-- Gilded Key (full replace copying the entire original description, because the Golden version doesn't give a key on pickup):
	[159] = {
		"{{GoldenChest}} Rimpiazza tutti i bauli (eccetto quelli Vecchi/Mega) con Bauli Dorati#I {{GoldenChest}} Bauli Dorati possono contenere carte, pillole o ninnoli extra#{{GoldenChest}} {{ColorGold}}+10% di chance di ottenere 1 baule a completamento stanza",
		"{{Key}} +1 Chiave quando viene raccolto#Rimpiazza tutti i bauli (eccetto quelli Vecchi/Mega) con Bauli Dorati#I {{GoldenChest}} Bauli Dorati possono contenere carte, pillole o ninnoli extra#{{GoldenChest}} {{ColorGold}}+10% di chance di ottenere 1 baule a completamento stanza",
		"{{GoldenChest}} Rimpiazza tutti i bauli (eccetto quelli Vecchi/Mega) con Bauli Dorati#I {{GoldenChest}} Bauli Dorati possono contenere carte, pillole o ninnoli extra#{{GoldenChest}} {{ColorGold}}+20% di chance di ottenere 1 baule a completamento stanza"
	},
	-- Wicked Crown (full replace):
	[161] = {
		"{{CR}}Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio {{ColorGold}}potenziato{{CR}} in \"Sheol\"#{{ColorGold}}Le Stanze del Tesoro in \"Sheol\" conterranno 2 oggetti tra cui scegliere",
		"{{CR}}Genera una {{TreasureRoom}} Stanza del Tesoro e un {{Shop}} Negozio {{ColorGold}}potenziato{{CR}} in \"Sheol\"#{{ColorGold}}Le Stanze del Tesoro in \"Sheol\" conterranno 2 oggetti tra cui scegliere#{{ColorGold}}Rivela la posizione della Stanza del Tesoro e del Negozio in \"Sheol\"",
	},
	-- Nuh Uh! (append):
	[165] = {"+10% di chance di generare doppi consumabili", "+20% di chance di generare doppi consumabili"},
	-- Keeper’s Bargain (full replace):
	[171] = {
		"{{DevilRoom}} 100{{CR}}% di chance i patti col diavolo si paghino in monete anziché cuori",
		"{{DevilRoom}} 100{{CR}}% di chance i patti col diavolo si paghino in monete anziché cuori#{{ColorGold}}Aumenta le chance di saldi nei patti col diavolo",
	},
	-- Cursed Penny (append):
	[172] = {"Aumento di chance di venire teletrasportati in una stanza speciale"},
	-- Your Soul (append):
	[173] = {"10% di chance di non consumare il ninnolo", "20% di chance di non consumare il ninnolo"},
	-- Strange Key (full replace):
	[175] = {
		"Apre la porta al piano \"Calma\" a prescindere dal timer#Usare {{Collectible297}} \"Scrigno di Pandora\" consuma la chiave e genera {{ColorGold}}8{{CR}} oggetti da categorie casuali#{{ColorGold}}Permette di aprire liberamente tutte le porte e bauli del piano \"Calma\"",
		"Apre la porta al piano \"Calma\" a prescindere dal timer#Usare {{Collectible297}} \"Scrigno di Pandora\" consuma la chiave e genera {{ColorGold}}10{{CR}} oggetti da categorie casuali#{{ColorGold}}Permette di aprire liberamente tutte le porte e bauli del piano \"Calma\"",
	},
	-- Temporary Tattoo (append):
	[177] = {"Al completamente di una Sala Sfida aumenta permanentemente 1 statistica casuale", "Al completamente di una Sala Sfida aumenta permanentemente 2 statistiche casuali"},
	-- RC Remote (append):
	[179] = {"I famigli infliggeranno 2 danni da contatto per tocco", "I famigli infliggeranno 5 danni da contatto per tocco"},
	-- Expansion Pack (full replace):
	[181] = {
		"Usare un oggetto attivo aziona {{ColorGold}}2{{CR}} effetti di oggetti attivi da 1-2 cariche",
		"Usare un oggetto attivo aziona {{ColorGold}}2{{CR}} effetti di oggetti attivi da 1-2 cariche#{{ColorGold}}Aziona anche gli effetti di un oggetto attivo da 3 cariche",
	},
	-- Beth’s Essence (append):
	[182] = {"50% di chance che le fiammelle della Stanza dell'Angelo siano speciali#{{ColorGold}}I Mendicanti genereranno fiammelle speciali", "100% di chance che le fiammelle della Stanza dell'Angelo siano speciali#{{ColorGold}}I Mendicanti genereranno fiammelle speciali"},
	-- Adoption Papers (append):
	[184] = {"I famigli saranno sempre in saldo", "I famigli saranno sempre in saldo#{{Card92}} {{ColorGold}}I Negozi venderanno \"Anima di Lilith\""},
	-- Sigil of Baphomet (find replace):
	[189] = {"1 secondo", "1.5 {{CR}}secondi", "2 {{CR}}secondi"},
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
	[11] = { "11", "X - Ruota della Fortuna", "{{Slotmachine}} Genera una Slot Machine#{{FortuneTeller}} 24% di chance che sia una Macchina dei Desideri#{{CraneGame}} 1% di chance che sia una Macchina dei Premi" }, -- X - Wheel of Fortune
	-- Change: Added stone enemies and shields
	[32] = { "32", "Hagalaz", "Distrugge tutte le rocce e i nemici di pietra nella stanza"}, -- Hagalaz	
	-- Change: Complete rewrite
	[38] = { "38", "Berkano", "{{Collectible706}} Genera 3 locuste di \"Abisso\" fino all'uscita della stanza" }, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = { " una Slot Machine", " 2 {{CR}}Slot Machines", " sia una Macchina dei Desideri", " siano 2 {{CR}}Macchine dei Desideri", " sia una Macchina dei Premi", " siano 2 {{CR}}Macchine dei Premi" }, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	-- Change: Teleports to a special room instead of a random room
	[20] = {"19", "Telepillole", "Teletrasporta Isaac in una stanza speciale"}, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnesia", "{{CurseLost}} Nasconde la mappa#{{Pill}} Cancella i nomi delle pillole identificate in precedenza" }, -- Amnesia
	-- Change: Added full heal information
	[29] = {"28", "Percocet!", "{{HealingRed}} Salute al Massimo#{{Timer}} Riduce tutti i danni subiti a mezzo cuore fino all'uscita dalla stanza"}, -- Percs!
	-- Change: Added broken heart
	[30] = {"29", "Addicted!", "{{BrokenHeart}} +1 Cuore Spezzato#{{Timer}} Aumenta tutti i danni subiti ad 1 cuore fino all'uscita dalla stanza"}, -- Addicted!
	-- Change: Added additional curses information
	[32] = {"31", "???", "{{CurseMaze}} Effetto della Malediz. del Dedalo fino all'uscita dal piano#Ad usi multipli conferisce maledizioni aggiuntive"}, -- ???
	-- Change: affects whole floor
	[42] = {"41", "Ho Sonno...", "{{Slow}} Rallenta Isaac e tutti i nemici nella stanza"}, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = {"42", "Sono Euforico!!!", "Velocizza Isaac e i nemici per tutto il piano"}, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = {"43", "Gulp!", "Consuma il ninnolo di Isaac e conferisce permanentemente gli effetti della versione {{ColorGold}}dorata{{CR}}"}, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "Genera 2 missili", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "Genera 2 fiamme", -- The Candle
	-- Added info regarding doubled attack
	[289] = "Genera 2 fiamme", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {15, 23}, -- Mega Blast
	-- Added info regarding doubled familiar
	[728] = "Genera 2 famigli demoniaci", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "I Cuori Sanguinanti forniscono la metà della carica di 1 normale Portacuori", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} \"Cubo di Carne\"","{{Collectible207}} \"Palla di Cerotti\""}, -- Potato Peeler with Ball of Bandages
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Genera 16 locuste con colori ed effetti diversi", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "Necromante" -- Add Necromancer transformations


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
