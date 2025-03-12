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
	[56] = {"56", "Limonata Accidentale", "Versa una pozza di liquido#TIl liquido infligge 24 danni da contatto al secondo#Il liquido persiste fino all'uscita dalla stanza"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Uccello Morto", "Venire colpito genera un uccello#L'uccello infligge 4.3 danni da contatto al secondo#Persiste fra le stanze se Isaac ha mezzo cuore"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "Mega Fagiolo", "Infligge 100 danni e pietrifica tutti i nemici nella stanza#{{Poison}} Infligge 5 danni e avvelena i nemici nelle vicinanze#Può aprire stanze segrete e rompere rocce"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Latte!", "Blocca i proiettili nemici#{{Tears}} Dopo 10 colpi, si rompe e conferisce più Lacrime per il resto del piano"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Fagiolo Aleggiante", "Sparare senza fermarsi per 4 secondi genera una nube tossica#Dopo 10 secondi la nube aumenta di dimensioni#Con l'aumento delle dimensioni la nube infligge meno danni#Sparandole si può spostarla"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Calmina", "Rimbalza per la stanza#Infligge 30 danni da contatto al secondo#Quando Isaac spara smette di muoversi#Mentre è fermo blocca i proiettili e spara cerchi di lacrime a scrosci"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Aumento di una statistica casuale#↓ Diminuzione di una statistica casuale#{{Timer}} Effetti delle lacrime casuali fino all'uscita dalla stanza#Converte i piedistalli in oggetti casuali#{{Blank}} Corrompe tutti gli sprite e la musica nella stanza"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirante", "Genera un Delirio amichevole#Persiste fra le stanze#{{Warning}} Può essere attivo solo un boss per volta#La carica dell'oggetto dipende dalla qualità del boss generato in precedenza"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Fa Male", "{{Timer}}  Mentre si subiscono danni, conferisce fino all'uscita dalla stanza:#↑ {{Tears}} +1.2 Rateo di Fuoco al primo colpo#↑ {{Tears}} +0.4 Rateo di Fuoco per ogni colpo extra#Rilascia un anello di 10 lacrime attorno ad Isaac#All'impatto le lacrime lasciano una pozza di liquido"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Iupiter", "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.3 Velocità#{{HealingRed}} Cura di 2 cuori#{{Speed}} Mentre rimane fermo la velocità cresce fino a +0.5#{{Poison}} Muoversi rilascia nubi velenose#{{Poison}} Immunità al veleno"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Nazar", "↑ {{Luck}} +2 Fortuna#Immunità ai {{Burning}} danni da fuoco e agli effetti di {{Confusion}} confusione, {{Fear}} paura, e {{Poison}} veleno#Conferisce un'immunità di 1 secondo ai liquidi"}, -- Evil Charm
	-- Change: Added Shop vortex
	[660] = {"660", "Lettura delle Carte", "Genera 2 portali nella prima stanza di ogni piano#Lasciare la stanza fa sparire i portali#{{Blank}} {{ColorRed}}Rosso: {{CR}}{{BossRoom}} Stanza del Boss#{{Blank}} {{ColorYellow}}Giallo: {{CR}}{{TreasureRoom}} Stanza dei Tesori#{{Blank}} {{ColorBlue}}Blu: {{CR}}{{SecretRoom}} Stanza Segreta#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Negozio"}, --  Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Mini Portale", "Alla doppia premuta del tasto di sparo il portale viene lanciato#Se lanciato infligge danni da contatto#Dissipa i consumabili lungo la via#Ogni consumabile dissipato ne aumenta le dimensioni e i danni, e genera 1 mosca blu#Dissipare 2-3 consumabili genera un portale per una stanza speciale, e il famiglio sparisce per il resto del piano#I contenuti nella stanza persistono per il resto della partita"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abisso", "Consuma tutti i piedistalli nella stanza e genera un famiglio locusta per ciascuno di essi#Le locuste infliggono i danni di Isaac 2-3 volte ad attacco#Alcuni oggetti se consumati generano una locusta speciale#{{Damage}} Le locuste infliggono i danni di Isaac moltiplicati per la qualità dell'oggetto consumato:#{{Quality0}} - x0.5#{{Quality1}} - x0.75#{{Quality2}} - x1.0#{{Quality3}} - x1.5#{{Quality4}} - x2.0"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Zecca", "{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di 1 cuore#-15% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\", {{Trinket135}} \"Un Accendino\", o ingoiandolo"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Tonsilla", "Subire danni 6-12 volte genera un famiglio che blocca i proiettili#Si massimizza a 2 famigli"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Miccia Corta", "Le bombe di Isaac esplodono più in fretta#Le bombe infliggono il 15% dei danni in più"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Osso dei Desideri", "Se colpiti 5% di chance di venire distrutto e di generare un piedistallo"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Sacchetto per il Pranzo", "{{Collectible22}} Se colpiti 5% di chance di venire distrutto e di generare \"Pranzo\""}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Genera 3 locuste di \"Abisso\" fino all'uscita della stanza"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Genera 16 locustse con colori ed effetti diversi", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
