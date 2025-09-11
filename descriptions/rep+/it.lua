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
	[56] = { "56", "Limonata Accidentale", "Versa una pozza di liquido#TIl liquido infligge 24 danni da contatto al secondo#Il liquido persiste fino all'uscita dalla stanza" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Uccello Morto", "Venire colpito genera un uccello#L'uccello infligge 4.3 danni da contatto al secondo#Persiste fra le stanze se Isaac ha mezzo cuore" }, -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "Reginello", "{{Coin}} Genera 7 monete casuali#Genera un ninnolo penny casuale" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "Eredità di Sangue", "Infligge 40 danni a tutti i nemici#{{Tears}} +0.48 Rateo di Fuoco fino all'uscita dalla stanza#{{Warning}} Infligge 1 cuore di danno ad Isaac#Dopo il primo uso in una stanza, infligge invece mezzo cuore di danno#{{Heart}} Rimuove per primi i Cuori Rossi" }, -- Blood Rights
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
	[481] = { "481", "Dataminer", "↑ Aumento di una statistica casuale#↓ Diminuzione di una statistica casuale#{{Timer}} Effetti delle lacrime casuali fino all'uscita dalla stanza#Converte i piedistalli in oggetti casuali#{{Blank}} Corrompe tutti gli sprite e la musica nella stanza" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Telecomando", "Cambia il tuo personaggio in uno casuale#50% di chance che rimuova l'oggetto preso più di recente" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirante", "Genera un Delirio amichevole#Persiste fra le stanze#{{Warning}} Può essere attivo solo un boss per volta#La salute del boss degrada con il tempo" }, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "2Spooky", "{{Tears}} +0.5 Lacrime#{{Shotspeed}} +0.2 Velocità Colpi#{{Fear}} {{Fear}} Spaventa i nemici in una piccola area attorno ad Isaac" }, -- 2Spooky	
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Fa Male", "{{Timer}}  Mentre si subiscono danni, conferisce fino all'uscita dalla stanza:#↑ {{Tears}} +1.2 Rateo di Fuoco al primo colpo#↑ {{Tears}} +0.4 Rateo di Fuoco per ogni colpo extra#Rilascia un anello di 10 lacrime attorno ad Isaac#All'impatto le lacrime lasciano una pozza di liquido" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Ad una doppia premuta del tasto di movimento Isaac effettua uno scatto#{{Damage}} Durante lo scatto Isaac è invincibile e infligge x4 dei suoi danni +8#{{Timer}} Tempo di attesa di 3 secondi#{{Burning}} All'impatto crea un cerchio di fuoco" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Iupiter", "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.3 Velocità#{{HealingRed}} Cura di 2 cuori#{{Speed}} Mentre rimane fermo la velocità cresce fino a +0.5#{{Poison}} Muoversi rilascia nubi velenose#{{Poison}} Immunità al veleno" }, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "Nazar", "↑ {{Luck}} +2 Fortuna#Immunità ai {{Burning}} danni da fuoco e agli effetti di {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno#Conferisce un'immunità di 1 secondo ai liquidi" }, -- Evil Charm
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "Rivelazione", "Volo#{{Chargeable}} Raggio sacro dai danni elevati#Non rimpiazza le lacrime di Isaac" }, -- Revelation	
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Stella di Betlemme", "Si sposta lentamente dalla prima stanza del piano fino alla {{BossRoom}} Stanza del Boss#Si muove più velocemente se lo si supera, ed è più lento se gli si sta dietro#Dentro l'aura conferisce:#↑ {{Tears}} x2.5 Moltiplicatore Lacrime#↑ {{Damage}} x1.2 Moltiplicatore Danni#Lacrime a ricerca#50% di chance di ignorare i danni" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Lettura delle Carte", "Genera 2 portali nella prima stanza di ogni piano#Lasciare la stanza fa sparire i portali#{{Blank}} {{ColorRed}}Rosso: {{CR}}{{BossRoom}} Stanza del Boss#{{Blank}} {{ColorYellow}}Giallo: {{CR}}{{TreasureRoom}} Stanza dei Tesori#{{Blank}} {{ColorBlue}}Blu: {{CR}}{{SecretRoom}} Stanza Segreta#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Negozio" }, --  Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "Mini Portale", "Alla doppia premuta del tasto di sparo il portale viene lanciato#Se lanciato infligge danni da contatto#Dissipa i consumabili lungo la via#Ogni consumabile dissipato ne aumenta le dimensioni e i danni, e genera 1 mosca blu#Dissipare 2-3 consumabili genera un portale per una stanza speciale, e il famiglio sparisce per il resto del piano#I contenuti nella stanza persistono per il resto della partita" }, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Giara di Fiammelle", "Genera 2 fiammelle casuali#Ad ogni uso genera 1 fiammella aggiuntiva, fino ad arrivare a 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abisso", "Consuma tutti i piedistalli nella stanza e genera un famiglio locusta per ciascuno di essi#Le locuste infliggono i danni di Isaac 2-3 volte ad attacco#Alcuni oggetti se consumati generano una locusta speciale#{{Damage}} Le locuste infliggono i danni di Isaac moltiplicati per la qualità dell'oggetto consumato:#{{Quality0}} - x0.5#{{Quality1}} - x0.75#{{Quality2}} - x1.0#{{Quality3}} - x1.5#{{Quality4}} - x2.0" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "Purple Heart", "Chance doppie di nemici campioni#I nemici campioni lasciano più ricompense"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Rosary Bead", "{{AngelChance}} Chance di una Stanza dell'Angelo aumentate del 50% #{{Collectible33}} Chance più alte di trovare \"La Bibbia\" nei {{Shop}} Negozi e nelle {{Library}} Biblioteche#Forza i {{DevilChance}}patti col diavolo a diventare {{AngelChance}}patti angelici"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "Unghia dei Piedi di Mamma", "Il piede di Mamma calpesta un punto casuale della stanza ogni 20 secondi#Buttare a terra il ninnolo durante una lotta fa cadere un Piede di Mamma nella sua posizione"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Volantino 'Smarrito'", "{{Player10}} Una volta morto resuscita nella forma di Lo Smarrito#{{SuperSecretRoom}} 33% di chance di rivelare Stanze Super Segrete Room nel piano successivo"}, -- Missing Poster	
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Zecca", "{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di 1 cuore#-15% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\", {{Trinket135}} \"Un Accendino\", o ingoiandolo" }, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "Verme Pigro", "↑ {{Damage}} +0.5 Danni#↓ {{Shotspeed}} -0.5 Velocità Colpi"}, -- Lazy Worm	
	-- Change: Complete rewrite
	[70] = {"70", "Pidocchio", "A completamento stanza genera un ragno blu"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "Fiche da Poker", "↑ 50% di chance che i bauli generino consumabili extra#↓ 50% di chance che i bauli contengano solo una mosca#Aumenta le chance di ricompense da Slot Machine e altre macchine#Se le contiene un oggetto, lo forza a Qualità 3 o maggiore#Certe volte i bauli possono contenere oggetti al di fuori della categoria dei bauli dorati"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "Karma", "{{DonationMachine}} Usare qualsiasi Macchina di Donazione ha il 33% di chance di:#{{HealingRed}} Curare di 1 cuore (40%)#{{Coin}} Conferire 1 moneta (40%)#{{Luck}} Conferire +1 Fortuna (15%)#{{Beggar}} Generare un Mendicante (5%)#Influenza anche le donazioni ai Mendicanti e alle Macchine di Rifornimento"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "Guinzaglio per Bambini", "I famigli restano vicini ad Isaac#{{Damage}} I famigli ottengono un lieve moltiplicatore ai danni"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Pannolino Usato", "33% di chance per stanza che tutte le mosche nemiche diventino amichevoli#Genera 1 mosca blu quando si entra in una nuova stanza"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Tonsilla", "Subire danni 6-12 volte genera un famiglio che blocca i proiettili#Si massimizza a 2 famigli" }, -- Tonsil
	-- Change: Added +2 Tears
	[103] = {"103", "Uguaglianza!", "Trasforma i consumabili singoli in doppi quando le {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi di Isaac sono di pari numero:#↑ {{Tears}} +2 Lacrime#Trasforma i consumabili singoli in doppi"}, -- Equality!
	-- Change: "2%" to "5%"
	[104] = { "104", "Osso dei Desideri", "Se colpiti 5% di chance di venire distrutto e di generare un piedistallo" }, -- Wish Bone	
	-- Change: "2%" to "5%"
	[133] = { "133", "Miccia Corta", "Le bombe di Isaac esplodono più in fretta#Le bombe infliggono il 15% dei danni in più" }, -- Short Fuse
	-- Change: "2%" to "5%"
	[105] = { "105", "Sacchetto per il Pranzo", "{{Collectible22}} Se colpiti 5% di chance di venire distrutto e di generare \"Pranzo\"" }, -- Bag Lunch
	-- Change: Added coin type based information
	[172] = {"172", "Penny Maledetto", "Raccogliere 1 moneta teletrasporta Isaac in una stanza casuale#Può teletrasportare in stanza segrete#Il tipo di moneta influenza il tipo di stanza"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}2{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{ColorGold}}Rimuovibile!",
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}2{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\", {{Trinket135}} \"Un Accendino\", o ingoiandolo",
		"{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di {{ColorGold}}3{{CR}} cuori#-{{ColorGold}}30{{CR}}% di salute del boss#{{ColorGold}}Rimuovibile!",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

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
	["5.100.205 (Tainted Magdalene)"] = "I Cuori Sanguinanti forniscono la metà della carica di un normale Portacuori", -- Sharp Plug + Tainted Magdalene
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
