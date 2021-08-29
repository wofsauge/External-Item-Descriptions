---------------------------------------
-----  Basic Italian descriptions -----
---------------------------------------

-- Last Sync with en_us: 29.07.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
}

local repCollectibles={
	[5] = {"5", "Mio Riflesso", "Lacrime sparate ottengono un effetto boomerang#↑ +1.5 Gittata#↑ +60% Gittata aggiuntiva#↑ +0.6 Velocita' di tiro#↑ +1 Altezza Lacrime"}, -- My Reflection
	[6] = {"6", "Numero Uno", "↑ +1.5 Lacrime#↓ -1.5 Gittata #↓ -20% Gittata aggiuntiva#↑ +0.76 Altezza lacrime"}, -- Number One
	[12] = {"12", "Fungo Magico", "↑ +1 Vita#↑ +0.3 Danni#↑ +50% Moltiplicatori danni#↑ +1.5 Gittata#↑ +0.3 Velocita'#↑ +0.5 Tear Height#Cura totale!"},
	[13] = {"13", "Il Virus", "Tocco velenoso#↑ +0.2 Velocita'"}, -- The Virus
	[14] = {"14", "Collera Roid", "↑ +0.3 Velocita'#↑ +1.5 Gittata#↑ +0.5 Altezza lacrime"}, -- Roid Rage
	[18] = {"18", "Un Dollaro", "+100 Monete"}, -- A Dollar
	[22] = {"22", "Pranzo", "↑ +1 Vita#Cura di un cuore"}, -- Lunch
	[23] = {"23", "Cena", "↑ +1 Vita#Cura di un cuore"}, -- Dinner
	[24] = {"24", "Dessert", "↑ +1 Vita#Cura di un cuore"}, -- Dessert
	[25] = {"25", "Colazione", "↑ +1 Vita#Cura di un cuore"}, -- Breakfast
	[26] = {"26", "Carne Marcia", "↑ +1 Vita#Cura di un cuore"}, -- Rotten Meat
	[29] = {"29", "Mutande della Mamma", "↑ +1.5 Gittata#↑ +0.5 Altezza lacrime#Evoca 3-6 Mosche Blu"}, -- Moms Underwear
	[30] = {"30", "Tacchi della Mamma", "↑ +1.5 Gittata#↑ +0.5 Altezza lacrime#12 danni da contatto"}, -- Mom's Heels
	[31] = {"31", "Rossetto della Mamma", "↑ +2.25 Gittata#↑ +0.5 Altezza lacrime#Evoca 1 cuore casuale"}, -- Mom's Lipstick
	[40] = {"40", "Kamikaze!", "Crea una grande esplosione nella posizione del giocatore#Infligge 185 danni"}, -- Kamikaze!
	[42] = {"42", "Testa Marcia di Bob", "Bomba avvelenata lanciabile#Infligge 185 + i danni delle tue lacrime#Crea una nuvola velenosa"}, -- Bob's Rotten Head
	[44] = {"44", "Teletrasporto", "Teletrasporta Isaac in una stanza casuale (eccetto I AM ERROR)#Influisci la direzione leggermente camminando nella direzione desiderata"}, -- Teleport
	[45] = {"45", "Cuore Delizia", "Cura di 1 cuore#Cura altri giocatori di mezzo cuore"}, -- Yum Heart
	[46] = {"46", "Piede Fortunato", "↑ +1.0 Fortuna#Probabilita' di vittoria aumentate in giochi d'azzardo#Probabilita' di trovare consumabili a fine stanza aumentata#Trasforma alcune pillole negative in pillole positive"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Attrazione magnetica per consumabili#Apre casse a distanza, evitando danni di casse spinate"}, -- Magneto
	[55] = {"55", "Occhio della Mamma", "Probabilita' di sparare una lacrima dietro di te"}, -- Mom's Eye
	[62] = {"62", "Amuleto del Vampiro", "↑ +0.3 Danni#Cura di mezzo cuore ogni 13 nemici uccisi"}, -- Charm of the Vampire
	[64] = {"64", "Sconti Steam", "50% sconto per oggetti in negozio#Copie multiple dell'oggetto riducono il prezzo ulteriormente"}, -- Steam Sale
	[67] = {"67", "Sorella Maggy", "Famiglio normale#Infligge 6 danni per lacrima"}, -- Sister Maggy
	[70] = {"70", "Ormoni Della Crescita", "↑ +1.0 Danni#↑ +0.2 Velocita'"}, -- Growth Hormones
	[71] = {"71", "Mini Funghetto", "↑ +0.3 Velocita'#↑ +1.5 Gittata#↑ Dimensione ridotta"}, -- Mini Mush
	[72] = {"72", "Rosario", "+3 Cuori Spirito#↑ +0.5 Lacrime#La Bibbia e' piu' comune"}, -- Rosary
	[77] = {"77", "Il Mio Piccolo Unicorno", "Invincibilita'#20 danni da contatto"}, -- My Little Unicorn
	[79] = {"79", "Il Marchio", "↑ +1.0 Danni#↑ +0.2 Velocita'#+1 Cuore Nero"}, -- The Mark
	[80] = {"80", "Il Patto", "↑ +0.5 Danni#↑ +0.7 Lacrime#+2 Cuori Neri"}, -- The Pact
	[83] = {"83", "Il Chiodo", "+ Mezzo Cuore Nero#↑ +2.0 Danni#↓ -0.18 Velocita'#Danni da contatto#Squarcia rocce"}, -- The Nail
	[98] = {"98", "La Reliquia", "Evoca un Cuore Spirito ogni 7-8 stanze"}, -- The Relic
	[101] = {"101", "L'Aureola", "↑ +1 Vita#↑ +0.3 Danni#↑ +0.2 Lacrime#↑ +0.38 Gittata#↑ +0.3 Velocita'#↑ +0.5 Altezza lacrime"}, -- The Halo
	[106] = {"106", "Sig. Mega", "↑ Danni bombe x1.85#+5 Bombe"}, -- Mr. Mega
	[110] = {"110", "Lenti a Contatto della Mamma", "Possibilita' di sparare lacrime pietrificanti#↑ +0.38 Gittata#↑ +0.5 Altezza lacrime"}, -- Mom's Contacts
	[121] = {"121", "Fungo Strano (Largo)", "↑ +1 Contenitore vita (vuoto)#↑ +1.0 Danni#↑ +0.38 Gittata#↓ -0.2 Velocita'#↑ +0.5 Altezza lacrime"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuale dei Mostri", "Evoca un famiglio casuale#Scompare al prossimo piano"}, -- Monster Manual
	[129] = {"129", "Secchio di Lardo", "↑ +2 Vita#↓ -0.2 Velocita'#Cura mezzo cuore"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ +1 Vita#↑ +0.3 Danni#Cura 1 cuore"}, -- Stigmata
	[139] = {"139", "Borsellino della Mamma", "Puoi possedere due ninnoli#Evoca 1 ninnolo casuale"}, -- Mom's Purse
	[140] = {"140", "Maledizione di Bob", "Bombe velenose#+5 bombe#Bombe rilasciano una nuvola velenosa"}, -- Bob's Curse
	[147] = {"147", "Piccone di Notch", "Rompe rocce e danneggia nemici ad ogni colpo#Colpire col piccone diminuisce la sua carica#Carica viene ripristinata a fine piano"}, -- Notched Axe
	[148] = {"148", "Infestazione", "Evoca 2-6 Mosche Blu quando ferito"}, -- Infestation
	[149] = {"149", "Ipecac", "Lacrime velenose esplosive#↑ +40 Danni#↓ -0.2 Velocita' di tiro#↓ Lacrime"}, -- Ipecac
	[152] = {"152", "Tecnologia: 2", "Attacco laser costante!#Laser infligge 13% dei tuoi danni#↓ Lacrime diminuite del 33%"}, -- Technology 2
	[158] = {"158", "Sfera di Cristallo", "Svela tutta la mappa#Evoca una carta o un Cuore Spirito#Se in possesso:#↑ +15% Probabilita' di un Planetario#100% se e' stata saltata una stanza del tesoro"}, -- Crystal Ball
	[171] = {"171", "Sedere di Ragno", "Rallenta i nemici per 4 secondi#10 danni a tutti i nemici#Nemici uccisi con il Sedere di Ragno evocano Ragni Blu"}, -- Spider Butt
	[176] = {"176", "Cellule Staminali", "↑ +1 Vita#↑ +0.16 Velocita' di tiro#Cura di 1 cuore"}, -- Stem Cells
	[178] = {"178", "Acqua Santa", "{{Throwable}} {{ColorOrange}}Lanciabile{{CR}}#Rilacia una chiazza d'acqua santa dove atterra#24 danni al secondo e pietrifica nemici terrestri"}, -- Holy Water
	[182] = {"182", "Cuore Sacro", "Lacrime a ricerca#↑ +1 Vita#↑ 230% + 1 Danni#↓ -0.4 Lacrime#↓ -0.25 Velocita' di tiro#↑ +0.5 Gittata"}, -- Sacred Heart
	[184] = {"184", "Sacro Graal", "Concede il volo#↑ +1 Vita#Cuore di 1 cuore"}, -- Holy Grail
	[188] = {"188", "Abel", "Rispecchia i tuoi movimenti#Spara verso il giocatore#Infligge 3.5 danni per lacrima#7.5 danni se stai usando Cain"}, -- Abel
	[192] = {"192", "Telepatia per Tonti", "Lacrime a ricerca per la stanza#↑ +3 Gittata"}, -- Telepathy for Dummies
	[193] = {"193", "CARNE!", "↑ +1 Vita#↑ +0.3 Danni#Cura di un cuore"}, -- MEAT!
	[194] = {"194", "Palla Magica 8", "↑ +0.16 Velocita' di tiro#Evoca una carta#+15% Probabilita' per un planetario"}, -- Magic 8 Ball
	[197] = {"197", "Succo di Gesu'", "↑ +0.5 Danni#↑ +0.38 Gittata.#↑ +0.5 Altezza lacrime"}, -- Jesus Juice
	[203] = {"203", "Pacchetto degli Umili", "Probabilita' di raddoppiare consumabili"}, -- Humbling Bundle
	[205] = {"205", "Spina Affilata", "- mezzo cuore = Ricarica una tacca del tuo oggetto attivabile"}, -- Sharp Plug
	[206] = {"206", "Ghigliottina", "↑ +1 Danni#↑ +0.33 Lacrime#La tua testa e' un orbitale#Spari lacrime dalla testa#La testa fa 105 danni al secondo"}, -- Guillotine
	[211] = {"211", "Piccolo di Ragno", "Evoca 3-5 Ragni Blu quando ferito"}, -- Spider Baby
	[214] = {"214", "Anemico", "↑ +1.5 Gittata#Quando ferito, lasci una scia di sangue dove cammini#Scia infligge 2 danni al secondo"}, -- Anemic
	[218] = {"218", "Placenta", "↑ +1 Vita#Cura di un cuore#Rigenera mezzo cuore ogni minuto"}, -- Placenta
	[224] = {"224", "Corpo di Cricket", "↓ -20% Gittata#Lacrime si dividono in 4 quando colpiscono#Lacrime divise fanno meta' dei danni#↑ +1 al limite di lacrime"}, -- Cricket's Body
	[228] = {"228", "Profumo della Mamma", "Possibilita' di sparare lacrime paurose#↑ +1 al limite di lacrime"}, -- Moms Perfume
	[230] = {"230", "Abbandono", "↑ +1.5 Danni#↑ +0.2 Velocita'#Lacrime paurose#Converte tutti i Cuori Rossi a Cuori Neri#+2 Cuori Neri"}, -- Abaddon
	[232] = {"232", "Cronometro", "Rallenta tutti i nemici permanentemente del 20%#↑ +0.3 Velocita'"}, -- Stop Watch
	[240] = {"240", "Trattamento Sperimentale", "↑ 4 Statistiche casuali e ↓2 Statistiche casuali"}, -- Experimental Treatment
	[245] = {"245", "20/20", "Raddoppia tutti i tuoi colpi#↓ -25% Danni"}, -- 20/20
	[248] = {"248", "Mente Alveare", "Ragni/Mosche Blu fanno doppi danni#Famigli basati su ragni/mosche vengono potenziati"}, -- Hive Mind
	[253] = {"253", "Crosta Magica", "↑ +1 Fortuna#↑ +1 Vita#Cura di un cuore"}, -- Magic Scab
	[254] = {"254", "Grumo di Sangue", "↑ +1 Danni#↑ +1.5 Gittata#!!! Oggetto attivo solo per l'occhio sinistro"}, -- Blood Clot
	[256] = {"256", "Bombe Incandescenti", "Bombe infuocate#+5 Bombe##Immunita' al fuoco#Bombe fanno danni al contatto"}, -- Hot Bombs
	[261] = {"261", "Proptosi", "↑ +0.5 Danni#↓ Danno della lacrima diminuisce piu' e' in volo#300% Danni a bruciapelo"}, -- Proptosis
	[262] = {"262", "Seconda Pagina Mancante", "+1 Cuore Nero#Quando ad un cuore o meno, infligge 80 danni a tutti i nemici nella stanza#Cuori Neri ed effetti Necronomicon fanno doppi danni"}, -- Missing Page 2
	 
	[263] = {"263", "Runa Chiara", "Copia l'effetto della runa o pietra spirituale corrente#Evoca una runa casuale quando ottenuto"}, -- Clear Rune   (REPENTANCE ITEM)
	 
	[273] = {"273", "Cervello di Bob", "Famiglio esplosivo lanciabile#L'esplosione fa 100 danni e avvelena#Il danno ignora armatura"}, -- Bob's Brain
	[274] = {"274", "Miglior Bocciolo", "Quando ferito, ottieni un orbitale di gittata media#L'orbitale fa 150 danni al secondo"}, -- Best Bud
	[275] = {"275", "Piccolo Brimstone", "Spara un laser di Brimstone#Il laser fa 2 danni per tick, per un totale di 20 danni"}, -- Lil Brimston
	[276] = {"276", "Cuore di Isaac", "Corpo diventa invulnerabile#!!! Quando il famiglio cuore viene colpito, prendi danni#Famiglio si carica mentre spari, sparando un esplosione di lacrime"}, -- Isaac's Heart
	[278] = {"278", "Bum oscuro", "!!! Converte:#1,5 Cuori Rossi in un Cuore Nero, un ragno (ostile), una pillola carta o runa"}, -- Dark Bum
	[280] = {"280", "Sissy Gambe-Lunghe", "Evoca casualmente Ragni Blu quando in una stanza ostile#Incanta nemici con cui viene a contatto"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Cambia i piedistalli, statistiche, consumabili e tutti i tuoi oggetti passivi#Raddoppia un raccoglibile casuale nella stanza#Ricomincia la stanza corrente e cambia i nemici#Cambia le rocce nella stanza"}, -- D100
	[285] = {"285", "D10", "Cambia tutti i nemici nella stanza#I nemici trasformati hanno vita simile alla versione precedente"}, -- D10
	[287] = {"287", "Libro dei Segreti", "Concede l'effetto della {{Collectible54}}Mappa del Tesoro, {{Collectible21}}Bussola o {{Collectible246}}Mappa Blu per il resto del piano#Concede effetti di mappatura che non possiedi#Se tutti gli effetti sono gia' attivi, concede {{Collectible76}}Visione Raggi X"}, -- Book of Secrets
	[288] = {"288", "Scatola di Ragni", "Evoca 4-8 Ragni Blu"}, -- Box of Spiders
	[289] = {"289", "Candela Rossa", "Lancia una fiamma rossa#La fiamma rimane finche' non ha fatto 23 danni 5 volte"}, -- Red Candle
	[291] = {"291", "Sciacquone!", "!!! Uccide istantaneamente nemici derivanti alla cacca!#Transforma nemici in cacca#Spegne fuochi#Trasforma lava in ossidiana"}, -- Flush!
	[292] = {"292", "Bibbia Satanica", "+1 Cuore Nero#Quando usato, l'oggetto lasciato dal boss sara' invece un oggetto appartenente ai patti con satana"}, -- Satanic Bible
	[294] = {"294", "Fagiolo di Burro", "Respinge nemici e proiettili#Se un nemico colpisce un ostacolo, prende 10 danni"}, -- Butter Bean
	[295] = {"295", "Dita Magiche", "Fa 10 + danni delle lacrime a tutti i nemici nella stanza#Prezzo: 1 moneta"}, -- Magic Fingers
	[296] = {"296", "Convertitore", "!!! Converte:#1 Cuore Nero/Spirito in un Cuore Rosso"}, -- Converter
	[297] = {"297", "Scatola di Pandora", "!!! USO SINGOLO !#!!! Evoca oggetti diversi in base al posto in cui e' attivata:#B1: 2 Cuori Spirito#B2: 2 chiavi e bombe#C1: 1 Oggetto boss#C2: B1+C1#D1: 4 Cuori Spirito#D2: 20 Monete#W1: 2 Oggetti boss#W2: Bibbia#Sheol: 1 Oggetto satanico + 1 Cuore Nero#Cat: 1 Oggetto angelico + Cuore Spirito#Chest: 1 Moneta#Home: Chiave Rossa"}, -- Pandora's box
	[300] = {"300", "Ariete", "↑ +0.25 Velocita'#Carica nemici per danneggiarli#Corri ad una velocita' abbastanza alta per non prendere danni da contatto"}, -- Aries
	[307] = {"307", "Capricorno", "↑ +1 Vita / Chiave / Bomba / Moneta#↑ +0.5 Danni#↑ +0.1 Velocita'#↑ +0.75 Gittata#↑ +1 al limite di lacrime"}, -- Capricorn
	[308] = {"308", "Acquario", "Lasci una scia di lacrime dove cammini#Scia fa 66% dei tuoi danni al secondo#Scia sinergizza coi tuoi oggetti"}, -- Aquarius
	[314] = {"314", "Cosce Tuonanti", "↑ +1 Vita#↓ -0.4 Velocita'#Cura di un cuore#Squarcia rocce su cui cammini"}, -- Thunder Thighs
	[315] = {"315", "Attrattore Strano", "Lacrime magnetiche#Ha effetto su nemici, consumabili e ninnoli#Essi sono attratti a dove atterra la lacrima"}, -- Strange Attractor
	[320] = {"320", "L'unico amico di ???", "Mosca Controllabile#Infligge 3.5 danni per tick"}, -- ???'s Only Friend
	[326] = {"326", "Respiro di Vita", "Tieni premuto spazio finche' la carica non si eusarisce per invincibilita'#Durante l'invincibilita', nemici toccati vengono colpiti da fasci di luce#!!! Non tener premuto troppo a lungo!"}, -- Breath of Life
	[328] = {"328", "Il Negativo", "↑ +1.0 Danni#Attiva l'effetto Necronomicon quando a meno di mezzo cuore rosso"}, -- The Negative
	[330] = {"330", "Latte di Soia", "↑ Lacrime alle stelle: (velocita' di fuoco x 5.5)#↓ -80% Danni#Contraccolpo delle lacrime diminuito drasticamente"}, -- Soy Milk
	[331] = {"331", "Divinita'", "Lacrime a ricerca#↑ +0.5 Danni#↑ +0.5 Gittata#↓ -0.3 Lacrime#↓ -0.3 Velocita' di tiro#↑ +0.8 Altezza lacrime#Lacrime hanno un aura danneggiante"}, -- Godhead
	[336] = {"336", "Cippolla Morta", "Lacrime penetranti + spettrali#↓ -1.5 Gittata#↓ -0.4 Velocita' di tiro#↑ +50% Dimensione lacrime"}, -- Dead Onion
	[339] = {"339", "Spilla da Balia", "↑ +1.5 Gittata#↑ +0.16 Velocita' di tiro#+1 Cuore Nero#↑ +0.5 Altezza lacrime"}, -- Safety Pin
	[342] = {"342", "Funghetto Blu", "↑ +1 Vita#↑ +0.7 Lacrime#↓ -16% Velocita' di tiro#Cura di un cuore"}, -- Blue Cap
	[344] = {"344", "Scatola di Fiammiferi", "+1 Cuore Nero#Evoca 2-3 bombe#Evoca il ninnolo {{Trinket41}} Fiammifero"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ +1.0 Danni#↑ +1.5 Gittata#↑ +0.5 Altezza lacrime"}, -- Synthoil
	[346] = {"346", "Merenda", "↑ +1 Vita#Cura di un cuore"}, -- A Snack
	[350] = {"350", "Shock Tossico", "Ad inizio di ogni stanza, tutti i nemici vengono avvelenati#Concede immunita' a veleno"}, -- Toxic Shock
	[352] = {"352", "Cannone di vetro", "Spara una lacrima spettrale penetrante (Danni:(Danni + 1) X 10)#Quando vieni ferito:#↓Prendi due cuore di danno#↑+ 1.5 Gittata"}, -- Glass Canon
	[355] = {"355", "Perla della Mamma", "↑ +0.38 Gittata#↑ +1 Fortuna#+1 Cuore Spirito#↑ +0.5 Altezza Lacrime"}, -- Mom's Pearl
	[360] = {"360", "Incubus", "Spara una copia delle lacrime che spari#Fa il 75% dei tuoi danni (100% se usi Lilith)"}, -- Incubus
	[366] = {"366", "Bombe a Spargimento", "+5 bombe#Fa si che le tue bombe esplodano in altre 4-5 bombe piu' piccole"}, -- Scatter Bombs
	[369] = {"369", "Continuum", "↑ +3.0 Gittata#↑ +1.5 Altezza Lacrime#Lacrime spettrali che quando vanno fuori schermata riappaiono al lato opposto"}, -- Continuum
	[370] = {"370", "Sig. Dolly", "↑ +0.7 Lacrime#↑ +1.5 Gittata#↑ +0.5 Altezza Lacrime#Evoca 3 cuori casuali"}, -- Mr. Dolly
	[372] = {"372", "Charged Baby", "Random chance to drop a micro battery or freeze all enemies in the room#Chance to add one charge to your spacebar item"}, -- Charged Baby
	[374] = {"374", "Luce Santa", "Probabilita' casuale di sparate una lacrima santa, che evoca un fascio di luce quando colpisce#Il fascio fa 3x i tuoi danni"}, -- Holy Light
	[375] = {"375", "Cappello dell'Host", "20% probabilita' di bloccare proiettili#Concede immunita' ad esplosioni"}, -- Host hat
	[376] = {"376", "Rifornimento", "I negozi riforniscono i loro oggetti istantaneamente quando comprati#Il prezzo dell'oggetto rifornito aumenta"}, -- Restock
	[382] = {"382", "Palla Amichevole", "Puo' essere tirata ai nemici per catturarli#Il seguente uso evoca il nemico catturato, incantato (amichevole)#Dopo aver catturato il nemico, cammina sulla palla per ricaricare l'oggetto subito"}, -- Friendly Ball
	[384] = {"384", "Piccolo Gurdy", "Quando caricato, rimbalza per tutta la stanza#Fa 5-20 danni di contatto (A seconda di quanto e' stato caricato)"}, -- Lil Gurdy
	[389] = {"389", "Sacco di Rune", "Evoca una runa casuale ogni 7-8 stanze#Puo' evocare pietre spirituale"}, -- Rune Bag
	[393] = {"393", "Bacio del Serpente", "Probabilita' casuale di sparare lacrime avvelenate#Avvelena nemici al contatto#Nemici ucciso dal veleno hanno una probabilita' del 20% di evocare un Cuore Nero"}, -- Serpent`s Kiss
	[394] = {"394", "Segnato", "Spara lacrime automaticamente al bersaglio rosso controllato dal giocatore#↑ +0.7 Lacrime#↑ +3.0 Gittata#↑ +0.3 Altezza lacrime#Famigli sparano verso il bersaglio"}, -- Marked
	[395] = {"395", "Tecnologia: X", "Lacrime rimpiazzate da un anello laser#Danni dipendono dalla dimensione dell'anello#100% danni quando caricato al massimo"}, -- Tech X
	[397] = {"397", "Raggio Traente", "Le tue lacrime viaggiano dritte seguendo un fascio luminoso, e seguono i tuoi movimenti#↑ +0.5 Lacrime#↑ +1.5 Gittata#↑ +0.16 Velocita' di tiro#↑ +0.5 Altezza Lacrime"},
	[399] = {"399", "Fauci del Vuoto", "Dopo aver sparato lacrime per 3 secondi, una croce rossa appare sopra Isaac. Dopo aver smesso di sparare, crea un anello di Brimstone nero"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Probabilita' di sparare lacrime appiccicose esplosive#Lacrime esplosive di tanto in tanto fanno i tuoi danni"}, -- Explosivo
	[404] = {"404", "Bimbo Scorreggiante", "Blocca proiettili#Se colpito, scorreggia, avvelenando, incantando o spingendo via nemici#Le scorregge fanno 5-6 danni"}, -- Farting Baby
	[405] = {"405", "Bug GB", "{{Throwable}} {{ColorOrange}}Lanciabile{{CR}} (doppio click-spara)#Cambia nemici e oggetti con cui viene a contatto (1 volta per stanza)"}, -- GB Bug
	[407] = {"407", "Purita'", "↑ Potenzia una delle tue statistiche a seconda del colore della tua aura#Quando ferito, ottieni un' area diversa#{{ColorRed}}Rossa{{CR}} = +4.0 Danni#{{ColorBlue}}Blu{{CR}} = +4 al limite di lacrime#{{ColorYellow}}Gialla{{CR}} = +0.5 Velocita'#{{ColorOrange}}Arancione{{CR}} = +3.0 Gittata, +1 Altezza lacrime"},
	[408] = {"408", "Athame", "Quando ferito, un anello di Brimstone nera appare attorno ad Isaac"}, -- Athame
	[416] = {"416", "Tasche Profonde", "Evoca 1-3 monete se una stanza non rilascia ricompense#Limite di monete aumentato a 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Rimbalza da un muro all'altro con un aura oscura, facendo 7.5-10 danni al secondo#↑ +50% danni quando sei nell'aura"}, -- Succubus
	[421] = {"421", "Fagiolo Rosso", "Incanta tutti i nemici nelle vicinanze"}, -- Kidney Bean
	[426] = {"426", "Fan Ossessionato", "Segue i tuoi movimenti con un ritardo di 0.66 secondi#Infligge 30 danni al secondo"}, -- Obsessed Fan
	[430] = {"430", "Mosca Papa'", "Segue i tuoi movimenti con un ritardo di 0.66 secondi#Spara lacrime a nemici vicini con danni uguali ai tuoi"}, -- papa Fly
	[431] = {"431", "Bimbo Multidimensionale", "Segue i tuoi movimenti con un ritardo di 0.66 secondi#Lacrime che vanno attraverso il famiglio accelerano e si dividono in 2"},
	[437] = {"437", "D7", "Ri-evoca i nemici della stanza#Puo' essere usato per ottenere piu' ricompense in una stanza"}, -- D7
	[440] = {"440", "Calcolo Renale", "Probabilita' di perder l'abilita' di sparare, finche' non spari un calcolo e una valanga di lacrime"}, -- Kidney Stone
	[442] = {"442", "Corona del Principe Oscuro", "!!! Quando ad 1 Cuore Rosso:#↑ +1.5 Gittata#↑ +2.0 Lacrime#↑ +0.2 Velocita' di tiro#(Nessun effetto su Personaggi senza Cuori Rossi)"}, -- Dark Princes Crown
	[444] = {"444", "Matita", "Ogni 15 lacrime, spari un' ammasso di lacrime"}, -- Lead Pencil
	[448] = {"448", "Scheggia di Vetro", "Quando ferito e perdi almeno mezzo cuore rosso, rilasci sangue#Direzione del sangue segue la direzione dove spari#Quando attivo, infligge mezzo cuore di danno ad Isaac ogni 20 secondi#Prendi su un cuore per fermare l'effetto"}, -- Shard of Glass
	[451] = {"451", "Panno dei Tarocchi", "Evoca una carta o runa casuale#Carte e rune hanno effetti extra"}, -- Tarot Cloth
	[453] = {"453", "Frattura Composta", "Lacrime ossa#Lacrime si dividono in 1-3 pezzi quando colpiscono qualcosa#↑ +0.38 Gittata#↑ +1.0 Altezza lacrime"}, -- Compound Fracture
	[455] = {"455", "Moneta Persa di Papa'", "↑ +0.38 Gittata#Evoca un penny fortunato"},
	[456] = {"456", "Spuntino di Mezzanotte", "↑ +1 Vita#Cura di un cuore"}, -- Midnight Snack
	[464] = {"464", "Glifo dell'equilibrio", "+2 Cuori Spirito#Nemici campioni e consumabili appaiono piu' frequentemente#consumabili cambiano a seconda di cio' di cui il giocatore ha bisogno"}, -- Glyph of Balance
	[472] = {"472", "Bimbo Reale", "I tuoi altri famigli lo seguono, sparando automaticamente a nemici#Smette di muoversi quando spari#Si teletrasporta da te quando smetti di sparare"}, -- King Baby
	[474] = {"474", "Cannone di Vetro rotto", "Quando usato diventa Cannone di Vetro"}, -- broken Glass Canon
	[489] = {"489", "D Infinity", "Effetto di un dado a piacimento#Premi il tasto 'rilascia (ctrl/R2) per cambiare dado"}, -- D Infinity
	[491] = {"491", "Bimbo acido", "Evoca una pillola casuale ogni 7 stanze#Quando una pillola viene usata, avvelena tutti i nemici nella stanza"}, -- Acid Baby
	[493] = {"493", "Adrenalina", "Per ogni mezzo cuore rosso mancante:#↑ Danni aumentati ((2 * MezziCuoriMancanti) ^ 1.6) * 0.1"}, -- Adrenaline
	[494] = {"494", "Scala di Jacob", "Lacrime sparano un laser elettrico in una direzione casuale quando colpiscono qualcosa#Laser fa meta' dei tuoi danni#Laser puo' concatenarsi tra piu' nemici"}, -- Jacobs Ladder
	[503] = {"503", "Piccolo Corno", "Possibilita' di sparare lacrime che evocano 'Big Horn' quando colpiscono un nemico#La mano di 'Big Horn' uccide non-boss istantaneamente#Infliggi 3.5 danni da contatto"}, -- Little Horn
	[504] = {"504", "Pepita Marrone", "Evoca una mosca che spara a nemici#Ogni lacrima fa 3.5 danni"}, -- Brown Nugget
	[509] = {"509", "Occhio Insanguinato", "Orbitale che spara a nemici ogni 0.33 secondi#Infligge 3.5 danni a lacrima#30 danni da contatto al secondo"}, -- Bloodshot Eye
	[523] = {"523", "Scatola da Trasloco", "Quando usato, contiene fino a 10 oggetti/consumabili nella stanza#Usando l'oggetto nuovamente, togli gli oggetti dalla scatola#Da' la possibilita' di muovere oggetti da una stanza all'altra"}, -- Moving Box
	[524] = {"524", "Tecnologia: Zero", "Lacrime sono connesse con elettricita'#Elettricita' fa 33% dei tuoi danni"}, -- Technology Zero
	[531] = {"531", "Emolacria", "Lacrime volano in un arco#Lacrime si dividono in altre lacrime all'impatto#↓ Lacrime#↑ +50% Danni#↑ +1 Danni aggiuntivi"}, -- Haemolacria
	[541] = {"541", "Midollo", "+1 Cuore D'osso#Evoca 3 Cuori Rossi"}, -- Marrow
	[543] = {"543", "Terreno Consacrato", "Evoca una cacca bianca quando ferito#(Cacca bianca ha un aura che aumenta lacrime e danni, e rende le tue lacrime a ricerca)"}, -- Hallowed Ground
	
	[553] = {"553", "Mucormicosi", "Possibilita' di sparare lacrime spora appiccicose#Spore esplodono dopo 2.5 secondi, infliggendo danni ed avvelenando nemici#Quando esplode, rilascia altre spore"}, --  Mucormycosis
	[554] = {"554", "S1nistr0", "Impaurisci nemici attorno a te"}, --  2Spooky
	[555] = {"555", "Rasoio Dorato", "Converte 5 monete in +1.2 Danni per la stanza corrente"}, --  Golden Razor
	[556] = {"556", "Zolfo", "Concede Brimstone {{Collectible118}} per la stanza corrente"}, --  Sulfur
	[557] = {"557", "Biscotto della fortuna", "Concede ad Isaac una Fortuna, Cuore Spirito, Carta dei Tarocchi, o Ninnolo"}, --  Fortune Cookie
	[558] = {"558", "Occhio Irritato", "Possibilita' di sparare 1-2 lacrime aggiuntive in direzioni casuali"}, --  Eye Sore
	[559] = {"559", "120 Volt", "Folgora nemici vicini a te ripetutamente#Folgore infligge fino a 75% dei tuoi danni"}, --  120 Volt
	[560] = {"560", "Fa Male", "Rilascia un anello di 10 lacrime attorno ad Isaac quando ferito#↑ +1.2 Lacrime quando ferito la prima volta#↑ +0.4 Lacrime per ogni ferita aggiuntiva"}, --  It Hurts
	[561] = {"561", "Latte di Mandorla", "↑ Lacrime x 4#↓ Danni x 0.3#Lacrime ottengono un effetto verme (Ninnolo) casuale"}, --  Almond Milk
	[562] = {"562", "Il Fondo", "Impedisce alle tue statistiche di diminuire per il resto della partita"}, --  Rock Bottom
	[563] = {"563", "Bombe Nancy", "+5 bombe#Bombe esplodono con un effetto casuale"}, --  Nancy Bombs
	[564] = {"564", "Una Saponetta", "↑ +0.5 Lacrime#↑ +0.2 Velocita' di tiro"}, --  A Bar of Soap
	[565] = {"565", "Cagnolino di Sangue", "Famiglio che segue nemici#Piu' nemici uccide, piu' si alza la probabilita' che si potenzi ma diventi ostile al giocatore#Attaccarlo lo tranquillizza"}, --  Blood Puppy
	[566] = {"566", "Acchiappasogni", "+1 Mezzo Cuore Spirito ad ogni inizio piano#Nell'incubo di transizione tra piani, fa vedere il boss del prossimo piano + oggetto/i del tesoro"}, --  Dream Catcher
	[567] = {"567", "Cero Pasquale", "↑ +0.4 Lacrime per ogni stanza completata senza prendere danni#Accumula fino a 5 volte"}, --  Paschal Candle
	[568] = {"568", "Intervento Divino", "Doppio tap in una direzione crea uno scudo#Scudo dura un secondo, spinge via nemici e riflette proiettili e laser nemici"}, --  Divine Intervention
	[569] = {"569", "Imprecazione di Sangue", "Ti ferisce ad inizio piano, lasciandoti a mezzo cuore rosso di vita#Aumenta le statistiche per il resto del piano:#↑ Danni + 0.15 * CuoriPersi^2#↑ Velocita' + 0.05*CuoriPersi"}, --  Blood Oath
	[570] = {"570", "Biscotto di Pongo", "Concede lacrime multi-color che hanno effetti diversi a seconda del colore"}, --  Playdough Cookie
	[571] = {"571", "Calzini da Orfano", "Previene danno da spine e liquidi#↑ +0.3 Velocita'#↑ +2 Cuori Spirito"}, --  Orphan Socks
	[572] = {"572", "Occhio dell'Occulto", "Lacrime controllabili#↑ +1 Danni#↑ +7.5 Gittata#↓ -0.16 Velocita' di tiro"}, --  Eye of the Occult
	[573] = {"573", "Cuore Immacolato", "+1 Vita#↑ +20% Danni#Cura totale!#Possibilita' di sparare lacrime orbitali"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Gain two circular auras that damage enemies#The inner aura deals more damage"}, --  Monstrance
	[575] = {"575", "L'intruso", "Un famiglio nascosto dentro la tua testa, che spara 4 lacrime rallentanti#Quando ferito, ha una possibilita' di uscire dalla tua testa"}, --  The Intruder
	[576] = {"576", "Mente Sporca", "Distruggere cacca evoca 1-4 'Dips'#Il tipo di 'Dip' dipende dalla cacca distrutta"}, --  Dirty Mind
	[577] = {"577", "Damocle", "{{Warning}} USO SINGOLO {{Warning}}#Evoca una spada sopra la tua testa, che raddoppia tutti i piedistalli e oggetti trovati da mendicanti#0.15% probabilita' che la spada cada e ti uccida ogni secondo"}, --  Damocles
	[578] = {"578", "Limonata Gratuita", "Crea una pozzanghera grossa di limonata danneggiante"}, --  Free Lemonade
	[579] = {"579", "Spada Spirituale", "Le lacrime di Isaac sono rimpiazzate da una spada#Fa 300% i tuoi danni#Se caricato fa un attacco roteante e spara un proiettile#A vita massima, spara un proiettile"}, --  Spirit Sword
	[580] = {"580", "Chiave Rossa", "Crea una nuova stanza nel muro piu' vicino, rappresentato da un contorno di una porta#Stanze possono essere speciali# Una stanza al di fuori dell'area di gioco (13x13) ti teletrasporta nella stanza 'I AM ERROR'"}, --  Red Key
	[581] = {"581", "Mosca Psichica", "Mosca orbitale#Insegue e deflette proiettili#15 Danni al secondo"}, --  Psy Fly
	[582] = {"582", "Funghetto Ondulato", "↑ +0.75 Lacrime#↓ -0.03 Velocita'#Distorce lo schermo#L'effetto si accumula piu' volta"}, --  Wavy Cap
	[583] = {"583", "Rocket in a Jar", "+5 bombs#If walking, placed bombs turn into rockets that shoots in the walking direction"}, --  Rocket in a Jar
	[584] = {"584", "Libro delle Virtu'", "Evoca un orbitale Wisp fragile che spara quando spari#Puo' essere combinato con un altro oggetto attivabile per creare Wisp diversi#Prima stanza del diavolo trovata viene rimpiazzata da una stanza degli angeli"}, --  Book of Virtues
	[585] = {"585", "Scatola d'Alabastro", "Evoca 3 Cuori Spirito e 2 oggetti degli angeli#Caricato raccogliendo cuori spirito"}, --  Alabaster Box
	[586] = {"586", "La Scala", "Evoca una scala a pioli ogni piano, portando ad un negozio angelico speciale"}, --  The Stairway
	[587] = {"587", "Menorah (Inutilizzato)", "<Non esistente>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sole", "Svela la posizione del boss {{BossRoom}}#Dopo aver battuto il boss, attiva XIX - Il Sole {{Card20}}#Ricarica il tuo oggetto attivabile, and +3 Danni and +1 Fortuna per il resto del piano"}, --  Sol
	[589] = {"589", "Luna", "Aggiunge una stanza segreta extra{{SecretRoom}} ed una stanza super segreta extra{{SuperSecretRoom}} ad ogni piano#Stanze segrete contengono un fascio di luce che concede lacrime aumentate e crea mezzo Cuore Spirito"}, --  Luna
	[590] = {"590", "Mercurius", "↑ +0.4 Velocita'#Tutte le porte che non richiedono una chiave stanno aperte"}, --  Mercurius
	[591] = {"591", "Venere", "+1 Vita#Cura Totale!#Nemici vicini vengono incantati"}, --  Venus
	[592] = {"592", "Terra", "↑ +1.0 Danni#Lacrime rimpiazzate da rocce#Danni delle lacrime varia#Distrugge ostacoli#Contraccolpo aumentato"}, --  Terra
	[593] = {"593", "Marte", "Scatto facendo doppio tap in una direzione#Durante lo scatto, sei invulnerabile e fai danno da contatto uguale a 4x i tuoi danni#Cooldown di 3 secondi"}, --  Mars
	[594] = {"594", "Giove", "+2 Vita#↓ -0.3 Velocita'#Incrementa la tua velocita' piu' stai fermo, per un massimo di +0.5#Rilasci una nuvola tossica quando ti muovi"}, --  Jupiter
	[595] = {"595", "Saturnus", "Un cerchio ti circonda#Quando in una stanza nuova, 7 lacrime ti orbitano#Possibilita' di catturare proiettili nemici nell'orbita"}, --  Saturnus
	[596] = {"596", "Urano", "Lacrime ghiacciate, che rallentano e congelano mostri uccisi#Toccare nemici congelati li fa scivolare ed esplodono in 6 frammenti di ghiaccio"}, --  Uranus
	[597] = {"597", "Nettuno", "Mentre non spari, ti carichi ti lacrime#Sparare rilascia tutte le lacrime caricate"}, --  Neptunus
	[598] = {"598", "Plutone", "↑ +0.7 Lacrime#Isaac viene rimpicciolito, da poter passare tra ostacoli e oggetti#Proiettili possono passargli sopra la testa"}, --  Pluto
	[599] = {"599", "Testa Vudu'", "Crea una stanza maledetta {{CursedRoom}} aggiuntiva ogni piano"}, --  Voodoo Head
	[600] = {"600", "Collirio", "↑ Aumenta la velocita' di fuoco del tuo occhio sinistro del 28%"}, --  Eye Drops
	[601] = {"601", "Atto di Contrizione", "↑ 0.7 Lacrime#+1 Cuore Eterno#Permette alle stanze degli angeli di apparire anche se e' stato effettuato un patto con Satana"}, --  Act of Contrition
	[602] = {"602", "Tessera Socio", "Aggiunge una botola ad ogni negozio con oggetti speciali"}, --  Member Card
	[603] = {"603", "Pacco Batteria", "Evoca 2-4 batterie#Ricarica il tuo oggetto attivabile"}, --  Battery Pack
	[604] = {"604", "Braccialetto della Mamma", "Permette ad Isaac di prendere su e tirare roccie, TNT, cacche, 'Host', e altri ostacoli#Ostacoli possono essere portati da una stanza all'altra"}, --  Mom's Bracelet
	[605] = {"605", "La Paletta", "Evoca un 'Peeper' famiglio per la stanza, lasciando una scia di sangue danneggiante"}, --  The Scooper
	[606] = {"606", "Frattura Oculare", "Possibilita' di sparare lacrime che creano fratture dove colpiscono#Fratture risucchiano nemici, consumabili, e proiettili"}, --  Ocular Rift
	[607] = {"607", "Bimbo Bollito", "Famiglio che spara lacrime in direzioni caotiche#3.5-5.3 danni per lacrima"}, --  Boiled Baby
	[608] = {"608", "Bimbo congelatore", "Famiglio che spara lacrime pietrificanti#Congela nemici uccisi"}, --  Freezer Baby
	[609] = {"609", "Eternal D6", "Cambia tutti i piedistalli nella stanza#Piedistalli hanno il 33% di possibilita' di scomparire"}, --  Eternal D6
	[610] = {"610", "Gabbia per Uccelli", "Famiglio che salta su un nemico quando entri in una stanza#Fa 45 danni e rilascia una ondata di rocce#Dopo di che, insegue nemici danneggiandoli"}, --  Bird Cage
	[611] = {"611", "Laringe", "Ti permette di urlare, danneggiando e respingendo nemici#Piu' e' carico l'oggetto, piu' danni fa e piu' respinge"}, --  Larynx
	[612] = {"612", "Anima Perduta", "Famiglio spettrale che muore in un colpo, rinascendo al prossimo piano#Se soppravvive per un piano, evoca 3 Cuori Spirito/2 Cuori Eterni/Un piedistallo"}, --  Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Bombe Sangue", "+1 Vita#Cura 5 cuori#Bombe lasciano una pozza di sangue#Se il giocatore non ha bombe, puo' piazzarne una al costo di mezzo cuore"}, --  Blood Bombs
	[615] = {"615", "Piccolo Dumpy", "Famiglio scarico#Quando ferito, spinge, stordisce o avvelena nemici circostanti"}, --  Lil Dumpy
	[616] = {"616", "Occhio d'Uccello", "Possibilita' di sparare fuochi danneggianti che bloccano proiettili#Danno equivale a 4x i tuoi danni"}, --  Bird's Eye
	[617] = {"617", "Magnetite", "Possibilita' di sparare lacrime che magnetizzano nemici#Nemici magnetizzati attraggono altri nemici, proiettili e consumabili"}, --  Lodestone
	[618] = {"618", "Pomodoro Marcio", "Possibilita' di sparare lacrime che marchiano nemici#Nemici marchiati vengono attaccati da altri nemici"}, --  Rotten Tomato
	[619] = {"619", "Diritto di Nascita", "Ha un effetto diverso per ogni personaggio"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Stufato Rosso", "Cura totale!#↑ +21.6 Danni#Nel corso dei prossimi 3 minuti, i danni tornano al valore posseduto prima di prendere l'oggetto"}, --  Red Stew
	[622] = {"622", "Genesi", "{{Warning}} USO SINGOLO {{Warning}}#Rimuove tutti gli oggetti e consumabili di Isaac#Ti teletrasporta in una camera da letto con consumabili, casse ed una botola#Per ogni oggetto perso, Stanze del Tesoro {{TreasureRoom}} mostrano un set di 3 oggetti tra cui scegliere"}, --  Genesis
	[623] = {"623", "Chiave Affilata", "+5 chiavi#Tira le tue chiavi per danni, distruggere ostacoli, o aprire porte#Nemici uccisono possono evocare contenuti di una cassa"}, --  Sharp Key
	[624] = {"624", "Bustina di Carte", "Evoca 5 carte casuali"}, --  Booster Pack
	[625] = {"625", "Mega Mush", "Ti rende gigante per 30 secondi#Aumenta danni e gittata#Diventi invulnerabile e puoi calpestare nemici e ostacoli#Effetto persiste tra stanze e piani"}, --  Mega Mush
	[626] = {"626", "Primo Pezzo di Coltello", "Prima parte del famiglio coltello"}, --  Knife Piece 1
	[627] = {"627", "Secondo Pezzo di Coltello", "Combinato con 'Primo Pezzo di Coltello' {{Collectible627}}, crea un famiglio coltello#Danneggia nemici#Apre una certa porta di carne"}, --  Knife Piece 2
	[628] = {"628", "Certificato di Morte", "{{Warning}} USO SINGOLO {{Warning}}#Ti teletrasporta in un piano contenente TUTTI gli oggetti del gioco#Dopo aver preso un oggetto, ti riporta nella stanza in cui hai attivato l'oggetto"}, --  Death Certificate
	[629] = {"629", "Mosca Bot", "Orbitale che spara lacrime schermate"}, --  Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Mannaia", "Dimezza nemici in 2 versioni piu' piccole con molta meno vita"}, --  Meat Cleaver
	[632] = {"632", "Amuleto Malvagio", "↑ +2 Fortuna#Concede invulnerabilita' al fuoco, confusione, paura, veleno, e gas tossici"}, --  Evil Charm
	[633] = {"633", "Dogma", "Concede volo e 'Mantello Sacro' {{Collectible313}} a singolo uso#↑ +2.0 Danni#↑ +0.1 Velocita'#Se il giocatore ha meno di 6 cuori, lo cura usando Cuori Rossi o Spirito"}, --  Dogma
	[634] = {"634", "Purgatorio", "Quando in una stanza con nemici, evoca crepe sul terreno#Calpestare le crepe evoca fantasmi esplosivi"}, --  Purgatory
	[635] = {"635", "Stitches", "Evoca un famiglio che va la direzione in cui Isaac spara#Quando attivato, Isaac diventa invulnerabile brevemente e scambia di posto con il famiglio#Distrugge o danneggia cose circostanti l'area di teletrasporto"}, --  Stitches
	[636] = {"636", "Tasto R", "{{Warning}} USO SINGOLO {{Warning}}#Ti teletrasporta alla stanza d'inizio del primo piano di una partita nuova#Oggetti, consumabili, Ninnoli, Vita e Statistiche restano intatte"}, --  R Key
	[637] = {"637", "Gocce a Eliminazione Diretta", "Possibilita' di sparare una lacrima pugno che spinge e stordisce nemici colpiti#Nemici colpiti che finiscono contro un muro prendono danni"}, --  Knockout Drops
	[638] = {"638", "Gomma", "Tira una gomma che uccide un nemico istantaneamente#Rimuove il nemico dalla partita permanentemente#15 Danni ai boss#Puo' essere usata una volta per piano"}, --  Eraser
	[639] = {"639", "Cuore Schifoso", "Concede un Cuore Marcio all'uso"}, --  Yuck Heart
	[640] = {"640", "Urna delle Anime", "Emette un flusso di fiamme#Si carica uccidendo nemici"}, --  Urn of Souls
	[641] = {"641", "Akeldama", "Crea una catena di lacrime dietro di te mentre combatti#Le lacrime fanno 3.5 danni"}, --  Akeldama
	[642] = {"642", "Pelle Magica", "Consuma un Contenitore Cuore o 2 Cuori Spirito per evocare un oggetto appartenente alla stanza corrente#Inoltre, concede un Cuore Spezzato che non puo' essere rigenerato#{{Warning}} Se non hai vita, USO SINGOLO"}, --  Magic Skin
	[643] = {"643", "Rivelazione", "Concede il volo e 2 Cuori Spirito#Sparare per 2.5 secondi di fila spara un laser consacrato"}, --  Revelation
	[644] = {"644", "Premio di Consolazione", "Aumenta la tua statisticha di 1#Evoca 3 monete/1 bomba/1 chiave a seconda di cio' che hai bisogno"}, --  Consolation Prize
	[645] = {"645", "Minitoma", "Orbitale Teratoma#Blocca proiettili#3.5 Danni al secondo#Se viene colpito 3 volte, si separa in piu' pezzi#I pezzi piccoli rilasciano Ragni Blu quando rotti#Rinasce 5 secondi dopo esser distrutto"}, --  Tinytoma
	[646] = {"646", "Bombe Brimstone", "+5 bombe#Bombe rilasciano 4 laser di Brimstone nelle direzioni cardinali"}, --  Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Oggetti attivabili non si ricaricano a fine stanza#Si caricano colpendo nemici#60 Danni = 1 carica"}, --  4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Plum Fruttato", "Mini 'Baby Plum' famiglio#Rimbalza diagonalmente nella stanza, sparando lacrime nella direzione opposta"}, --  Fruity Plum
	[650] = {"650", "Flauto Plum", "Evoca un 'Baby Plum' amichevole per 10 secondi, nella stanza corrente"}, --  Plum Flute
	[651] = {"651", "Stella di Betlemme", "Famiglio che vola lentamente verso il boss#Emette un aura che aumenta i danni del 20% + 1, aumenta lacrime e concede lacrime a ricerca"}, --  Star of Bethlehem
	[652] = {"652", "Cube Baby", "Familiar that slides around when walked into#It slows and deals contact damage, freezing monsters it kills"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "Passivamente, nemici uccisi evocano spiriti rossi#Quando attivato, gli spiriti esplodono"}, --  Vade Retro
	[654] = {"654", "PHD Falso", "Identifica tutte le pillole#+1 Cuore Nero#Converte pillole positive a pillole negative#↑ Pillole che diminuiscono statistiche aumentano i danni#Altre pillole evocano Cuori Neri all'uso"}, --  False PHD
	[655] = {"655", "Gira per Vincere", "Aggiunge una trottola orbitale che blocca proiettili#10.5 Danni al secondo#Quando attivato,↑ +0.5 Velocita' e aumenta enormemente la velocita' di rotazione degli orbitali"}, --  Spin to Win
	[656] = {"656", "Damocles", "<Item not obtainable>"}, -- Damocles
	[657] = {"657", "Vasculite", "Nemici esplodono in lacrime quando muoiono, con gli stessi effetti delle lacrime di Isaac"}, --  Vasculitis
	[658] = {"658", "Cellula Gigante", "Evochi dei mini-Isaac quando ferito#Seguono e sparano nemici"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ +1.5 Gittata#Aumenta la dimensione delle lacrime"}, --  Tropicamide
	[660] = {"660", "Lettura delle Carte", "Evoca due portali all'inizio di ogni piano#Portali scompaiono quando esci dalla stanza iniziale#{{ColorRed}}Rosso: {{CR}}Boss#{{ColorYellow}}Giallo: {{CR}}Stanza del Tesoro#{{ColorBlue}}Blu: {{CR}}Stanza Segreta"}, --  Card Reading
	[661] = {"661", "Quintupli", "Evoca un famiglio stazionario dov'e' morto un nemico#Limite di 5 famigli"}, --  Quints
	[662] = {"662", "Pacifista (Cut item)", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "Unghie e Denti", "Ogni 6 secondi, diventa invulnerabile per 1 secondo#Flash rossi prima di diventare invulnerabile"}, --  Tooth and Nail
	[664] = {"664", "Mangiatore Abbuffato", "+1 Vita#Piedistalli cambiano periodicamente tra cibi e l'oggetto originale#Quando un cibo e' ottenuto, ottieni 3.6 Danni extra temporanei e 2 statistiche aumentate (leggermente) casuali"}, --  Binge Eater
	[665] = {"665", "Occhio di Guppy", "Mostra i contenuti di Casse, Sacchi, e fuochi prima di essere aperti"}, --  Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Pagliaccio", "Evoca Keeper come personaggio secondario#Se muore, evoca ragni blu#Oggetto viene rimosso successivamente"}, --  Strawman
	[668] = {"668", "Nota di Papa'", "Inizia la sequenza per accedere al piano 'Home' #Ninnoli lasciati in stanze del {{TreasureRoom}} Tesoro o {{BossRoom}} Boss diventano {{Card78}} Chiave Screpolata"}, --  Dad's Note
	[669] = {"669", "Salsiccia", "↑ +1 Vita#↑ +0.5 Danni#↑ +0.2 Velocita'#↑ +1.2 Velocita' di tiro#↑ +0.16 Gittata#↑ +1 Fortuna"}, --  Sausage
	[670] = {"670", "Opzioni?", "Se una stanza rilascia un raccoglibile come ricompensa, potrai scegliere fra due ricompense#Raccoglierne una fa scomparire l'altra"}, --  Options?
	[671] = {"671", "Cuore Caramella", "Quando raccogli cuori rossi, aumenta statistiche casuali"}, --  Candy Heart
	[672] = {"672", "Un Chilo di Carne", "Patti con satana costano soldi al posto che vita#Oggetti nei negozi costano vita e non soldi#consumabili invece sono circondati da spine"}, --  A Pound of Flesh
	[673] = {"673", "Redenzione", "Concede un Cuore Spirito e +1.0 Danni se entri in una stanza di Satana senza prendere nessun oggetto"}, --  Redemption
	[674] = {"674", "Catene dello Spirito", "Quando Isaac muore, diventa un fantasma incatenato al suo corpo con mezzo cuore e puo' continuare a combattere#Ritorna in vita dopo 10 secondi#Quando usato, deve essere ricaricato con un Cuore Spirito"}, --  Spirit Shackles
	[675] = {"675", "Globo Rotto", "Quando ferito, scopre una stanza casuale nel piano#Apre porte che richiedono una chiave#Puo' aprire la porta che porta a Mega Satana#Puo' svelare la Stanza Ultra Segreta"}, --  Cracked Orb
	[676] = {"676", "Cuore Vuoto", "Se hai in Cuore Rosso vuoto ad inizio piano, te ne concede un altro#Cuori Osso non contano"}, --  Empty Heart
	[677] = {"677", "Proiezione Astrale", "Quando ferito, ferma il tempo per 3 secondi#Isaac diventa un fantasma ed esce dal suo corpo#Da fantasma condede il volo, lacrime spettrali e cancella il prossimo colpo"}, --  Astral Projection
	[678] = {"678", "Taglio Cesareo", "Tira un bimbo attaccato ad Isaac tramite cordone ombelicale#Fa danno da contatto equivalente a 3x i tuoi danni #Bimbo spara e cammina tenendo premuto il tasto giusto#Ritorna ad Isaac quando smette di sparare"}, --  C Section
	[679] = {"679", "Piccolo Abbandono", "Famiglio che spara un mini 'Fauci del Vuoto' {{Collectible399}}"}, --  Lil Abaddon
	[680] = {"680", "Vendetta di Montezuma", "Mentre spari, carica un raggio Brimstone a corta gittata#Spara dietro di te"}, --  Montezuma's Revenge
	[681] = {"681", "Piccolo Portale", "Vola in avanti e fa danni a contatto#Consuma consumabili che tocca#Ogni raccoglibile aumenta la dimensione del portale, danni, ed evoca una Mosca Blu#Ogni quattro consumabili, crea un portale che connette ad una stanza non-esplorata"}, --  Lil Portal
	[682] = {"682", "Amico Verme", "Un tentacolo saltera' dal terreno colpendo nemici#Puo' tenere fermo nemici e danneggiarli"}, --  Worm Friend
	[683] = {"683", "Speroni Ossei", "Nemici uccisi evocano ossa fluttuanti#Ossa fanno danni da contatto e bloccano proiettili"}, --  Bone Spurs
	[684] = {"684", "Anima Affamata", "Possibilita' di evocare fantasmi dopo aver ucciso un nemico#Fantasmi seguono nemici e fanno danno da contatto#Dopo 5 secondi, il fantasma esplode, facendo 7 danni ai nemici circostanti#Non prendi danni dall'esplosione"}, --  Hungry Soul
	[685] = {"685", "Barattolo di Wisp", "Evoca wisp casuali che sparano lacrime, bloccano proiettili, e fanno danno da contatto#Piu' l'oggetto e' usato, piu' wisp vengono evocati"}, --  Jar of Wisps
	[686] = {"686", "Medaglione dell'Anima", "Aumenta una statistica casuale quando raccogli un Cuore Spirito#Evoca un Cuore Spirito"}, --  Soul Locket
	[687] = {"687", "Trova Amici", "Evoca un mostro casuale amichevole controllabile come Isaac"}, --  Friend Finder
	[688] = {"688", "Bambino Interiore", "+1 Vita extra#Rinasci nella stanza corrente con mezzo cuore, dimensioni diminuite, e +0.2 velocita'"}, --  Inner Child
	[689] = {"689", "Corona Glitchata", "Piedistalli cambiano tra 5 oggetti diversi ad una velocita' alta"}, --  Glitched Crown
	[690] = {"690", "Gelatina di Pancia", "Nemici che toccano Isaac rimbalzano#Se i nemici colpiscono un ostacolo, prendono danni#Possibilita' di deflettere proiettili nemici"}, --  Belly Jelly
	[691] = {"691", "Sfera Sacra", "Migliore la qualita' degli oggetti trovati#Rendendo oggetti deboli o inutili piu' rari"}, --  Sacred Orb
	[692] = {"692", "Legame Sanguigno", "Crea un set di spine speciale nella stanza di Satana#Ferirsi sulle spine puo' risultare in una ricompensa:#35% 6 penny#15% +0.5 Danni#5% 2 Cuori Neri#2% oggetto casuale#1% Trasformazione Leviatano"}, --  Sanguine Bond
	[693] = {"693", "Lo Sciame", "Concede 9 mosche orbitanti che proteggono da un proiettile. Quando parano un colpo, diventano una Mosca Blu#Crea una mosca nuova ogni stanza completata"}, --  The Swarm
	[694] = {"694", "Crepacuore", "Concede 3 Cuori Spezzati#↑ +0.25 danni per ogni Cuore Spezzato#Ogni colpo fatale aggiunge 2 Cuori Spezzati#Se raggiungi 12 Cuori Spezzati, muori"}, --  Heartbreak
	[695] = {"695", "Ventata Sanguinante", "Quando vieni ferito, aumenta lacrime e velocita' per il resto del piano"}, --  Bloody Gust
	[696] = {"696", "Salvezza", "Crea un aureola che crea fasci di luce che colpiscono nemici dentro essa#Piu' danni prendi nel piano corrente, piu' e' grossa l'aureola"}, --  Salvation
	[697] = {"697", "Gemello Svanente", "Famiglio che diventa un clone del boss corrente nella stanza del boss#Battere il gemello concede un oggetto extra#Il clone e' piu' lento e ha 25% di vita in meno"}, --  Vanishing Twin
	[698] = {"698", "Doppino", "Due famigli che ti stanno ai fianchi#Sparano le tue lacrime, con danni ridotti al 37.5%"}, --  Twisted Pair
	[699] = {"699", "Furia di Azazel", "Per ogni stanza completata, aumenta la tua ira#Dopo 4 stanze, spari un laser di Brimstone enorme"}, --  Azazel's Rage
	[700] = {"700", "Camera dell'Eco", "Quando isaac usa una Carta, Pillola, o Runa, usa una copia di ogni carta/pillola/runa che ha usato dopo aver preso Camera dell'Eco"}, --  Echo Chamber
	[701] = {"701", "La Tomba di Isaac", "Evoca una Cassa Antica all'inizio di ogni piano#La cassa puo' contenere Cuori Spirito, Ninnoli o oggetti degli angeli/Mamma/Papa'"}, --  Isaac's Tomb
	[702] = {"702", "Spirito Vendicativo", "Dopo esser ferito, evoca un wisp orbitale che dura per tutto il piano#Massimo 6#Sparano lacrime ma non bloccano proiettili"}, --  Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Scambia tra il tuo personaggio corrente ed Esau Jr., che ha 3 Cuori Neri, +2 danni e volo#Personaggi hanno statistiche e oggetti indipendenti#{{Warning}} Morendo con qualsiasi dei due personaggi risulta in game over"}, --  Esau Jr.
	[704] = {"704", "Berserk!", "Modalita' Berserk per 5 secondi:#↑ +0.4 Velocita'#↑ Lacrime#↑ +3.0 Danni#Lacrime rimpiazzate da una mandibola d'asino"}, --  Berserk!
	[705] = {"705", "Arti Oscure", "Quando usato, ottieni ↑ +1.0 velocita' e abilita' di passare attraverso nemici/proiettili per 1 secondo#Aumenta i danni di 1 per ogni entita' toccata#Nemici toccati prendono danni equivalenti a 3x i tuoi danni"}, --  Dark Arts
	[706] = {"706", "Abisso", "Distrugge tutti i piedistalli nella stanza ed evoca una mosca attaccante per ognuno#Mosca ha effetti diversi a seconda del piedistallo distrutto"}, --  Abyss
	[707] = {"707", "Zuppa", "+1 Vita#Cura di un cuore"}, --  Supper
	[708] = {"708", "Pinzatrice", "↑ +1.0 Danni#Impedisce ad isaac di sparare lacrime da un occhio"}, --  Stapler
	[709] = {"709", "Suplex!", "Permette ad Isaac di fare uno scatto verso un nemico, afferrarlo, e poi sbatterli per terra#La sbattuta fa 50 danni e crea ondate di rocce nella zona di atterraggio"}, --  Suplex!
	[710] = {"710", "Borsa dell'Artigianato", "Raccoglie e tiene fino a 8 consumabili#Tenendo premuto il tasto 'Attiva carta' trasforma 8 consumabili in un oggetto#consumabili di qualita' piu' alta risultano in oggetti migliori"}, --  Bag of Crafting
	[711] = {"711", "Flip", "Cambia personaggi tra Lazarus normale e Lazarus contaminato"}, --  Flip
	[712] = {"712", "Lemegeton", "Evoca oggetti fantasmi orbitanti casuali#L'effetto dell'oggetto e' applicato al giocatore#Oggetti sono scelti in base alla stanza attuale"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Premere il tasto per sparare per 2 secondi evoca famigli che sparano a loro volta, usando mezzo cuore per ognuno#Quando attivato, converte i famigli in cuori#Famiglio cambia a seconda del cuore usato"}, --  Sumptorium
	[714] = {"714", "Richiamo", "Riporta il corpo del Forgotten da qualsiasi distanza"}, --  Recall
	[715] = {"715", "Stiva", "Conserva una cacca da potere usata piu' tardi"}, --  Hold
	[716] = {"716", "Il Sacco di Keeper", "Aumenta gittata, velocita' o danni quando compri oggetti con soldi#Evoca una chiave e 3 monete"}, --  Keeper's Sack
	[717] = {"717", "I Parenti di Keeper", "Rocce e altri ostacoli evocano 2 Mosche Blu quando distrutte"}, --  Keeper's Kin
	[718] = {"718", "Veste di Keeper (Cut item)", "<Item does not exist>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Scatola di Keeper", "Evoca un oggetto/raccoglibile casuale del negozio"}, --  Keeper's Box
	[720] = {"720", "Vaso del Tutto", "Evoca diversi consumabili a seconda di quanto e' carico#Se caricato al massimo, ha un effetto casuale forte#Ricompense: 1:Cacca 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Glitcha tutti i piedistalli futuri#Tutti gli oggetti avranno un effetto completamente casuale"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "Incatena il nemico piu' vicino per 5 secondi, impedendogli di fare qualsiasi cosa"}, --  Anima Sola
	[723] = {"723", "Dado Spindown", "Gli oggetti trovati su un piedistallo cambiano, diminuendo il loro ID interno di 1"}, --  Spindown Dice
	[724] = {"724", "Ipercoagulazione", "Quando ferito da un nemico, evoca mezzo/un Cuore Rosso#Il cuore scompare dopo 1.5 secondi"}, --  Hypercoagulation
	[725] = {"725", "S.I.I.", "Quando danneggi un nemico, si puo' attivare uno dei seguenti effetti:#Tira cacca#Crea una scia potenziante#Scorreggia#Evoca 5 bombe attive"}, --  IBS
	[726] = {"726", "Emottisi", "Doppio tap in una direzione di sparo per starnutire sangue#Infligge 150% dei tuoi danni#Cooldown di 1 secondo"}, --  Hemoptysis
	[727] = {"727", "Bombe Fantasma", "+5 bombe#Le tue bombe evocano fantasmi che danneggiano nemici ed esplodono dopo 10 secondi"}, --  Ghost Bombs
	[728] = {"728", "Gello", "Evoca un famiglio demoniaco connesso ad Isaac#Imita le lacrime di Isaac, le loro statistiche e effetti"}, --  Gello
	[729] = {"729", "Attacco di Decapaggio", "Tira la testa di Isaac, e quando atterra puo' sparare lacrime#Riattivare l'oggetto o camminare sulla testa la raccoglie"}, --  Decap Attack
	
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["it"].collectibles)

EID.descriptions["it"].birthright ={
	{"Isaac", "", "Ogni piedistallo ha due oggetti tra cui scegliere"},
	{"Magdalene", "", "<Nessun effetto>"},
	{"Cain", "", "<Nessun effetto>"},
	{"Judas", "", "<Nessun effetto>"},
	{"???", "", "Cuori Spirito ottenuti da oggetti sono raddopiati"},
	{"Eve", "", "Prostituta di Babilonia e' sempre attivo#Uccello Morto e' attivo senza dover prendere danni"},
	{"Samson", "", "Lussuria Sanguinosa puo' incrementare i danni altre 4 volte, per un massimo totale di +14.0 danni"},
	{"Azazel", "", "La Brimstone di Azazel diventa piu' largo, come Mega Blast#Non ha effetti sui danni"},
	{"Lazarus", "", "Se muori, resusciti come Lazarus Risen#Lazarus Risen nasce con +21.6 danni (temporaneo)"},
	{"Eden", "", "Evoca 3 piedistalli con oggetti casuali#Solo uno puo' essere preso"},
	{"The Lost", "", "Oggetti inutili a The Lost diventano piu' rari#Esempio: oggetti che danno solo vita, volo, e/o lacrime spettrali o attivati quando si prendono danni"},
	{"Lazarus Risen", "", "Concede un bonus di +21.6 danni temporaneo"},
	{"Black Judas", "", "<Nessun effetto>"},
	{"Lilith", "", "<Nessun effetto>"},
	{"Keeper", "", "<Nessun effetto>"},
	{"Apollyon", "", "<Nessun effetto>"},
	{"The Forgotten", "", "The Soul puo' muoversi liberamente"},
	{"The Forgotten Soul", "", "The Soul puo' muoversi liberamente"},
	{"Bethany", "", "Attivare un oggetto usando Cariche Spirito puo' essere gratuito"},
	{"Jacob", "", "Il fratello che raccoglie l'oggetto ottiene 3 copie di oggetti dell'altro fratello"},
	{"Esau", "", "Il fratello che raccoglie l'oggetto ottiene 3 copie di oggetti dell'altro fratello"},
	{"Tainted Isaac", "", "Aggiunge 4 spazi aggiuntivi per oggetti"},
	{"Tainted Magdalene", "", "Aggiunge 1 cuore rosso che non scompare"},
	{"Tainted Cain", "", "L'ammontare di consumabili trovati in piedistalli e' raddoppiato"},
	{"Tainted Judas", "", "<Nessun effetto>"},
	{"Tainted ???", "", "Aumenta il numero massimo di cacche che si possono tenere a 29"},
	{"Tainted Eve", "", "<Nessun effetto>"},
	{"Tainted Samson", "", "Il timer dell'abilita' Berserk guadagna 3 secondi di tempo al posto che 1 per ogni nemico ucciso"},
	{"Tainted Azazel", "", "Raddoppia la dimensione della Emottisi {{Collectible726}} di Azazel"},
	{"Tainted Lazarus", "", "<Nessun effetto>"},
	{"Tainted Eden", "", "Oggetti passivi ottenuti prima di prendere Diritto di Nascita non vengono cambiati quando ferito"},
	{"Tainted Lost", "", "+1 vita extra che ti fa rinascere nella stessa stanza infliggendo 200 danni a tutti i nemici#Puo' colpire lo stesso nemico piu' volte"},
	{"Tainted Lilith", "", ""},
	{"Tainted Keeper", "", "Monete lasciate da nemici uccisi vengono attratte fortemente verso Keeper#Nessun effetto per altre monete"},
	{"Tainted Apollyon", "", "<Nessun effetto>"},
	{"Tainted Forgotten", "", "Tainted Soul ha accesso all'abilita' di richiamo {{Collectible714}}, e richiama automaticamente il corpo da qualsiasi distanza"},
	{"Tainted Bethany", "", "<Nessun effetto>"},
	{"Tainted Jacob", "", "<Nessun effetto>"},
	{"Dead Tainted Lazarus", "", "<Nessun effetto>"},
	{"Tainted Jacob 2", "", "<Nessun effetto>"},
	{"Tainted Forgotten Soul", "", "Tainted Soul ha accesso all'abilita' di richiamo {{Collectible714}}, e richiama automaticamente il corpo da qualsiasi distanza"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint
EID.descriptions["it"].bingeEaterBuffs = {
	[22] = {"22", "", "↑+0.5 Lacrime#↑+1.5 Gittata"}, -- Lunch
	[23] = {"23", "", "↑+0.5 Lacrime#↑+0.2 Velocita' di tiro"}, -- Dinner
	[24] = {"24", "", "↑+1.0 Danni#↑+0.2 Velocita'"}, -- Dessert
	[25] = {"25", "", "↑+0.2 Velocita'#↑+1.5 Gittata"}, -- Breakfast
	[26] = {"26", "", "↑+1.0 Danni#↑+1.5 Gittata"}, -- Rotten Meat
	[456] = {"456", "", "↑+1.0 Danni#↑+1.0 Fortuna"}, -- Midnight Snack
	[346] = {"346", "", "↑+0.2 Velocita' di tiro#↑+1.0 Fortuna"}, -- A Snack
	[707] = {"707", "", "↑+0.5 Lacrime#↑+1.0 Fortuna"}, -- Supper
}

EID.descriptions["it"].spindownError = "Item disappears"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Penny Ingoiato", "Evoca 1 moneta quando vieni colpito#0-1 se sei Keeper"}, -- Swallowed Penny
	[10] = {"10", "Verme Dimenante", "Lacrime si muovono ad onde#↑ +0.4 Lacrime#Concede lacrime spettrali"}, -- Wiggle Worm
	[11] = {"11", "Verme Anello", "Lacrime si muovono a spirale#Concede lacrime spettrali"}, -- Ring Worm
	[15] = {"15", "Roccia Fortunata", "Possibilita' del 33% di trovare una moneta dentro rocce"},-- Lucky Rock
	[24] = {"24", "Penny di Sedere", "Scorreggia quando raccogli una moneta#Scorregge allontanano e avvelenano nemici"}, -- Butt Penny
	[26] = {"26", "Verme Uncinato", "Lacrime si muovono in motivi angolari#↑ +1.5 Gittata#Concede lacrime spettrali"}, -- Hook Worm
	[32] = {"32", "Funghetto della Liberta'", "Effetto di un fungo casuale ad ogni stanza"}, -- Liberty Cap
	[33] = {"33", "Cordone Ombelicale", "Se in una stanza hai mezzo cuore o meno, ottieni Piccolo Steven#Possibilita' di evocare un famiglio Gemelli quando prendi danni"}, -- Umbilical Cord
	[48] = {"48", "Una Pagina Mancante", "Quandi vieni ferito, possibilita' di danneggiare tutti i nemici nella stanza#Cuori Neri e {{Collectible35}} effetti tipo Necronomicon infliggono doppi danni"}, -- A Missing Page
	[49] = {"49", "Penny Sanguinante", "25% probabilita' di evocare mezzo Cuore Rosso quando raccogli una moneta"}, -- Bloody Penny
	[50] = {"50", "Penny Bruciato", "25% probabilita' di evocare una bomba quando raccogli una moneta"}, -- Burnt Penny
	[51] = {"51", "Penny Piatto", "25% probabilita' di evocare una chiave quando raccogli una moneta"}, -- Flat Penny
	[65] = {"65", "Verme Nastro", "↑ +3 Gittata#-50% Altezza lacrime"}, -- Tape Worm
	[66] = {"66", "Verme Pigro", "↓ -0.5 Velocita' di tiro#↑ +2 Altezza lacrime"}, -- Lazy Worm
	[69] = {"69", "Polaroid Sbiadita", "Mimetizza il giocatore casualmente#Confonde nemici casualmente#Puo' essere usato per aprire la porta nelle \"Depths II\""}, -- Faded Polaroid
	[80] = {"80", "Piuma Nera", "↑ +0.5 Danni per ogni oggetto demoniaco posseduto"}, -- Black Feather
	[92] = {"92", "Corona Incrinata", "↑ Qualsiasi potenziamento alle tue statistiche e' 20% piu' efficente"}, -- Cracked Crown
	[101] = {"101", "Lampadina Fioca", "!!! Se hai un oggetto attivabile completamente scarico:#↑ +1.5 Danni#↑ +0.5 Velocita'#↑ +1.5 Gittata#↑ +0.5 Lacrime#↑ +0.3 Velocita' di tiro#↑ +2 Fortuna"},
	[110] = {"110", "Dollaro d'Argento", "Negozi {{Shop}} possono esser trovati nel \"Womb\", \"Utero\", \"Scarred Womb\" e \"Corpse\""},
	[111] = {"111", "Corona Sanguinante", "Stanze del tesoro {{TreasureRoom}} possono esser trovate nel\"Womb\", \"Utero\", \"Scarred Womb\" e \"Corpse\""}, -- Bloody Crown
	[119] = {"119", "Cellula Staminale", "All'inizio del prossimo piano, imposta la tua vita rosa al 50% del massimo#Se la tua vita e' superiore al 50%, ti cura di mezzo cuore"}, -- Stem Cell
	[128] = {"128", "Osso del Dito", "5% di possibilita' di ottenere un Cuore d'Osso quando ferito"}, -- Finger Bone
	
	[129] = {"129", "Spaccamascelle", "Possibilita' bassa di sparare denti al posto che lacrime"}, --  Jawbreaker
	[130] = {"130", "Penna Masticata", "Possibilita' di sparare lacrime rallentanti"}, --  Chewed Pen
	[131] = {"131", "Penny Benedetto", "Possibilita' di evocare Cuori Spirito quando raccogli una moneta"}, --  Blessed Penny
	[132] = {"132", "Siringa Rotta", "Possibilita' di ottenere un effetto di una siringa casuale per la stanza corrente"}, --  Broken Syringe
	[133] = {"133", "Miccia Corta", "Bombe piazzate da Isaac esplodono piu' in fretta"}, --  Short Fuse
	[134] = {"134", "Fagiolo Gigante", "Aumenta la dimensione delle scorregge"}, --  Gigante Bean
	[135] = {"135", "Un' Accendino", "Possibilita' di incendiare nemici quando entri in una stanza"}, --  A Lighter
	[136] = {"136", "Lucchetto Rotto", "Porte, blocchi chiave e casse possono essere aperte usando esplosivi"}, --  Broken Padlock
	[137] = {"137", "Miosotis", "Quando inizi un piano nuovo, fino a 4 consumabili vengono trasferiti dal piano precedente a quello nuovo"}, --  Myosotis
	[138] = {"138", "'M", "Quando usi un oggetto attivabile, esso viene cambiato casualmente"}, --  'M
	[139] = {"139", "Amuleto Lacrima", "Effetti per lacrime che dipendono dalla fortuna vengono applicati piu' spesso"}, --  Teardrop Charm
	[140] = {"140", "Mela della Sodoma", "Raccogliere cuori rossi li converte a Ragni Blu#Funziona anche a vita massima#L'effetto puo' usare cuori necessari per curarsi"}, --  Apple of Sodom
	[141] = {"141", "Ninnananna Dimenticata", "Aumenta le lacrime dei famigli"}, --  Forgotten Lullaby
	[142] = {"142", "La Fede di Beth", "All'inizio di ogni piano, evoca 4 'Wisp'"}, --  Beth's Faith
	[143] = {"143", "Vecchio Condensatore", "Impedisce all'oggetto attivabile del caricarsi#Possibilita' di trovare una piccola batteria a fine stanza"}, --  Old Capacitor
	[144] = {"144", "Verme Cerebrale", "Lacrime possono curvare di 90 gradi per colpire nemici"}, --  Brain Worm
	[145] = {"145", "Perfezione", "↑ +10 Fortuna#Si autodistrugge quando prendi danni"}, --  Perfection
	[146] = {"146", "Corona del Diavolo", "Stanze del Tesoro {{TreasureRoom}} contengono patti con satana (E non oggetti del tesoro)"}, --  Devil's Crown
	[147] = {"147", "Penny Carico", "Possibilita' di caricare l'oggetto attivabile quando raccogli monete"}, --  Charged Penny
	[148] = {"148", "Collana dell'Amicizia", "Fa si' che i famigli girino intorno ad Isaac"}, --  Friendship Necklace
	[149] = {"149", "Pulsante Antipanico", "Attiva il tuo oggetto attivabile quando vieni ferito"}, --  Panic Button
	[150] = {"150", "Chiave Blu", "Se entri in una stanza che richiede una chiave per aprirla, una anticamera stile \"Hush\" viene aperta"}, --  Blue Key
	[151] = {"151", "Lima Piatta", "Tutte le spine nel gioco diventano ritratte#Ha effetto su stanze maledette {{CursedRoom}}, casse mimic e qualsiasi ostacolo contenente spine"}, --  Flat File
	[152] = {"152", "Lente del Telescopio", "Rende possibile trovare un secondo Planetario#Planetari possono essere trovati nel \"Womb\", \"Utero\", \"Scarred Womb\" e \"Corpse\""}, --  Telescope Lens
	[153] = {"153", "Lucchetto della Mamma", "Ogni stanza, concede l'effetto di un oggetto di Mamma casuale"}, --  Mom's Lock
	[154] = {"154", "Sacchetto di Dadi", "Quando entri in una stanza nuova, concede un dado casuale ad uso singolo#Il dado scompare quando la stanza e' lasciata#Concede l'abilita' di avere due consumabili"}, --  Dice Bag
	[155] = {"155", "Corona Santa", "Stanze del Tesoro {{TreasureRoom}} e negozi {{Shop}} possono essere trovati nella \"Cathedral\""}, --  Holy Crown
	[156] = {"156", "Bacio della Mamma", "Aumenta la vita di 1#Funziona anche per Keeper"}, --  Mother's Kiss
	[157] = {"157", "Carta Strappata", "Ogni 15 lacrime sparate, spara una lacrima Ipecac {{Collectible149}} + Mio Riflesso {{Collectible5}} con una gittata molto elevata"}, --  Torn Card
	[158] = {"158", "Tasca Strappata", "Quando ferito, Isaac lascia cadere 2 dei suoi consumabili#(Eccezioni: Cuori, Carte, Pillole, Rune)"}, --  Torn Pocket
	[159] = {"159", "Chiave Dorata", "+1 chiave#Rimpiazza tutte le casse con casse dorate#Tutte le casse dorate contengono carte, pillole e Ninnoli extra#Eccezioni: Cassa Gigante, Cassa Antica"}, --  Gilded Key
	[160] = {"160", "Sacco Fortunato", "Evoca un sacchetto ad inizio piano"}, --  Lucky Sack
	[161] = {"161", "Corona Malvagia", "Stanze del Tesoro {{TreasureRoom}} e negozi {{Shop}} possono essere trovati nello \"Sheol\""}, --  Wicked Crown
	[162] = {"162", "Il Moncone di Azazel", "Possibilita' di diventare Azazel quando inizia una stanza nuova"}, --  Azazel's Stump
	[163] = {"163", "Mirtillo Rosso", "Evoca 2 cacche amichevoli a fine stanza"}, --  Dingle Berry
	[164] = {"164", "Tappo ad Anello", "Quando piazzi una bomba, ne piazza altre due vicino (Gratuite)"}, --  Ring Cap
	[165] = {"165", "No, no e no!", "Dopo il \"Womb\", rimpiazza chiavi e monete trovate con altri consumabili#Bombe e Cuori sono i piu' comuni"}, --  Nuh Uh!
	[166] = {"166", "Plastilina", "Concede l'effetto di un oggetto casuale in ogni stanza"}, --  Modeling Clay
	[167] = {"167", "Osso Levigato", "Possibilita' di evocare un 'Bony' amichevole a fine stanza"}, --  Polished Bone
	[168] = {"168", "Cuore Cavo", "+1 Cuore d'Osso all'inizio del piano"}, --  Hollow Heart
	[169] = {"169", "Disegno di un Bambino", "Conta come oggetto di Guppy"}, --  Kid's Drawing
	[170] = {"170", "Chiave di Cristallo", "Possibilita' di aprire stanza della Chiave Rossa {{Collectible580}} quando completi una stanza"}, --  Crystal Key
	[171] = {"171", "L'affare di Keeper", "Patti col Diavolo costano soldi invece che vita"}, --  Keeper's Bargain
	[172] = {"172", "Penny Maledetto", "Quando raccogli una moneta, ti teletrasporta in una stanza casuale#Puo' portarti in stanze segrete"}, --  Cursed Penny
	[173] = {"173", "La Tua Anima", "{{Warning}} USO SINGOLO {{Warning}}#Puo' essere usato per prendere un patto del Diavolo gratuitamente"}, --  Your Soul
	[174] = {"174", "Magnete Numerico", "+10% probabilita' di trovare un patto con Satana"}, --  Number Magnet
	[175] = {"175", "Chiave Bizzarra", "Apre il passaggio per il piano di \"Hush\"#Se usato con la Scatola di Pandora {{Collectible297}} crea 6 piedistalli casuali"}, --  Strange Key
	[176] = {"176", "Piccolo Coagulo", "Evoca un famiglio che segue i movimenti di Isaac, spara dove spara lui e copia effetti delle lacrime"}, --  Lil Clot
	[177] = {"177", "Tatuaggio Temporaneo", "Evoca una cassa dopo aver battuto una stanza sfida, o un oggetto piedistallo dopo aver battuto una stanza sfida boss"}, --  Temporary Tattoo
	[178] = {"178", "M80 Ingoiato", "Isaac esplode quando prende danni"}, --  Swallowed M80
	[179] = {"179", "Telecomando RC", "I movimenti dei famigli seguono i movimenti di Isaac"}, --  RC Remote
	[180] = {"180", "Anima Trovata", "Famiglio che segue i movimenti di Isaac e spara lacrime spettrali#Ha stessi effetti delle lacrime e danni del giocatore"}, --  Found Soul
	[181] = {"181", "Pacchetto di Espansione", "Quando usi il tuo oggetto attivo, ne attiva un altro casuale"}, --  Expansion Pack
	[182] = {"182", "L'essenza di Beth", "Una volta per piano, quando prendi danno evoca un 'Wisp' {{Collectible584}} e concede invincibilita'#Evoca 5 'Wisp' quando entri in una stanza degli angeli#Evoca un 'Wisp' quando dai soldi a Mendicanti"}, --  Beth's Essence
	[183] = {"183", "I Gemelli", "Ogni stanza:#Se non hai famigli: Possibilita' di ottenere Fratello Bobby {{Collectible8}} o Sorella Maggy {{Collectible67}}# Se hai famigli: 50% possibilita' di duplicare un famiglio"}, --  The Twins
	[184] = {"184", "Documenti di Adozione", "Negozi possono vendere Famigli#Famigli saranno sempre scontati"}, --  Adoption Papers
	[185] = {"185", "Zampa di Grillo", "Possibilita' di evocare una locusta casuale"}, --  Cricket Leg
	[186] = {"186", "Il Miglior Amico di Apollyon", "{{Throwable}} {{ColorOrange}}Lanciabile{{CR}} (Doppio tap spara)#Crea 1 Mosca Attaccante che puo' essere mirata e sparata come lacrime"}, --  Apollyon's Best Friend
	[187] = {"187", "Occhiali Rotti", "33% possibilita' di trovare un oggetto misterioso in piu' nelle stanze del tesoro#Svela l'oggetto misterioso nelle Stanze del Tesoro (Percorso alternativo)"}, --  Broken Glasses
	[188] = {"188", "Cubetto di Ghiaccio", "Possibilita' di pietrificare un nemico quando entri in una stanza#Se il nemico pietrificato e' ucciso, viene congelato"}, --  Ice Cube
	[189] = {"189", "Sigillo di Baphomet", "Attiva uno scudo di 1 secondo quando uccidi un nemico"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["it"].trinkets)



-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}} " automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint
EID.descriptions["it"].tarotClothBuffs = {
	[2] = {"2", "", "In aggiunta, concede l'effetto del {{Collectible34}} Libro di Belial"}, -- I - The Magician
	[3] = {"3", "", "Poco dopo il piede di Mamma viene evocato, ne viene evocato un secondo"}, -- II - The High Priestess
	[4] = {"4", "", "Quadruplica le statistiche bonus"}, -- III - The Empress
	[5] = {"5", "", "Se il boss non e' ancora stato battuto, in aggiunta al teletrasporto concede un Cuore Spirito"}, -- IV - The Emperor
	[6] = {"6", "", "Evoca 3 Cuori Spirito"}, -- V - The Hierophant
	[7] = {"7", "", "Evoca 3 Cuori Rossi"}, -- VI - The Lovers
	[8] = {"8", "", "Durata raddoppiata"}, -- VII - The Chariot
	[9] = {"9", "", "Doppi consumabili"}, -- VIII - Justice
	[10] = {"10", "", "Impedisce a Greed di essere trovato nel negozio#Se Greed e' stato combattuto nel negozio, il negozio viene resettato"}, -- IX - The Hermit
	[11] = {"11", "", "Evoca due slot machine"}, -- X - Wheel of Fortune
	[12] = {"12", "", "Raddoppia le statistiche bonus, apparte il moltiplicatore danni"}, -- XI - Strength
	[14] = {"14", "", "Infligge 80 danni al posto che 40"}, -- XIII - Death
	[15] = {"15", "", "Evoca 2 macchine per la donazione di sangue"}, -- XIV - Temperance
	[16] = {"16", "", "Aumento di danni raddoppiato"}, -- XV - The Devil
	[17] = {"17", "", "Evoca 12 bombe troll invece che 6"}, -- XVI - The Tower
	[18] = {"18", "", "Se la stanza del tesoro e' ancora chiusa, avra' due piedistalli tra cui scegliere"}, -- XVII - The Stars
	[21] = {"21", "", "Evoca 2 mendicanti"}, -- XX - Judgement
	[56] = {"56", "", "Isaac lascia a terra tutti gli oggetti e consumabili, incluso il "}, -- 0 - The Fool?
	[59] = {"59", "", "Concede 3 Cuori Rossi temporanei"}, -- III - The Empress?
	[61] = {"61", "", "Evoca 6 Cuori d'Osso"}, -- V - The Hierophant?
	[62] = {"62", "", "Adds 4 broken hearts and spawns 4 items"}, -- VI - The Lovers?
	[64] = {"64", "", "Evoca 4-14 casse dorate"}, -- VIII - Justice?
	[70] = {"70", "", "Mangia 20 pillole"}, -- XIV - Temperance?
	[72] = {"72", "", "Evoca 14 ammassi di rocce"}, -- XVI - The Tower?
	[73] = {"73", "", "Rimuove 2 oggetti da isaac e ne crea 4"}, -- XVII - The Stars?
	[76] = {"76", "", "Evoca 2 Macchine Rifornimento"}, -- XX - Judgement?
}



EID.descriptions["it"].goldenTrinket = "ORO: Effetto raddoppiato!"

---------- Cards ----------
local repCards={
	[27] = {"27", "Asso di Fiori", "Trasforma tutti i consumabili, casse e nemici (esclusi boss) in bombe"}, -- Ace of Clubs
	[28] = {"28", "Asso di Quadri", "Trasforma tutti i consumabili, casse e nemici (esclusi boss) in penny"}, -- Ace of Diamonds
	[29] = {"29", "Asso di Picche", "Trasforma tutti i consumabili, casse e nemici (esclusi boss) in chiavi"}, -- Ace of Spades
	[30] = {"30", "Asso di Cuori", "Trasforma tutti i consumabili, casse e nemici (esclusi boss) in Cuori Rossi"}, -- Ace of Hearts
	[39] = {"39", "Algiz", "Invincibilita' per 20 secondi"}, -- Algiz
	[51] = {"51", "Carta Santa", "Concede l'effetto del Manto Sacro#(Prossimi danni che prendi son ridotti a 0)#Uso singolo"}, -- Holy card
	
	[55] = {"55", "Frammento di Runa", "Attiva l'effetto di una runa casuale#L'effetto e' ridotto"}, -- Rune Shard
	[56] = {"56", "0 - Lo Stolto?", "Lascia tutti i tuoi consumabili e cuori a terra#Ti lascia a mezzo cuore#Consumabili possono essere rimpiazzati da: {{Collectible74}} {{Collectible19}}"}, -- 0 - The Fool?
	[57] = {"57", "I - Il Mago?", "Concede un aura repellente ai proiettili e nemici#Durata: 1 minuto"}, -- I - The Magician?
	[58] = {"58", "II - L'Alta Sacerdotessa?", "Il piede di Mamma schiaccia nemici ripetutamente per un minuto"}, -- II - The High Priestess?
	[59] = {"59", "III - L'Imperatrice?", "Effetto temporaneo:#↑ +2 Cuori Rossi#↑ +1.35 Lacrime"}, -- III - The Empress?
	[60] = {"60", "IV - L'Imperatore?", "Ti teletrasporta in una stanza del Boss extra"}, -- IV - The Emperor?
	[61] = {"61", "V - Lo Ierofante?", "Evoca 2 Cuori d'Osso"}, -- V - The Hierophant?
	[62] = {"62", "VI - Gli Amanti?", "Evoca un piedistallo con un oggetto casuale (Influenzato dalla stanza corrente)#Costo: Un Cuore Rosso/due Cuori Spirito vengono rimpiazzati da un Cuore Spezzato"}, -- VI - The Lovers?
	[63] = {"63", "VII - Il Carro?", "Diventi una statua invincibile ed immobile per 10 secondi#Velocita' di fuoco estrema per la durata"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Giustizia?", "Evoca 2-4 Casse D'Oro"}, -- VIII - Justice?
	[65] = {"65", "IX - L'eremita?", "Consumabili ed oggetti nella stanza diventano monete#Monete hanno il valore dell'oggetto/consumabile trasformato"}, -- IX - The Hermit?
	[66] = {"66", "X - Ruota della Fortuna?", "Effetto di un dado casuale"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Forza?", "Nemici nella stanza sono indeboliti, rallentati e prendono doppi danni"}, -- XI - Strength?
	[68] = {"68", "XII - L'Impiccato?", "Il giocatore diventa Keeper per 30 secondi#Colpo triplo e velocita' diminuita#Nemici uccisi lasciano monete casuali"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Morte?", "Attiva l'effetto di Libro della Morte {{Collectible545}}#(Per ogni nemico ucciso nella stanza, evoca entita' scheletriche)"}, -- XIII - Death?
	[70] = {"70", "XIV - Temperanza?", "Attiva 5 effetti di pillole casuali"}, -- XIV - Temperance?
	[71] = {"71", "XV - Il Diavolo?", "Attiva l'effetto dela Bibbia {{Collectible33}}#Concede un famiglio Serafino {{Collectible390}}# Per 30 secondi"}, -- XV - The Devil?
	[72] = {"72", "XVI - La Torre?", "Evoca 6 ammassi di rocce ed ostacoli"}, -- XVI - The Tower?
	[73] = {"73", "XVII - Le Stelle?", "Rimuove l'oggetto passivo piu' vecchio#Evoca due piedistalli casuali (Influenzati dalla stanza corrente)"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - La Luna?", "Ti teletrasporta nella stanza Ultra Segreta#La via di ritorno sara' composta di Stanze Rosse"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - Il Sole?", "Ottieni lo Spirito della Notte {{Collectible159}}#↑ +1.5 Danni# Per il resto del piano#Converte Cuori Rossi in Cuori d'Osso, fino alla fine dell'effetto#Attiva la Maledizione delle Tenebre"}, -- XIX - The Sun?
	[76] = {"76", "XX - Il Giudizio?", "Evoca una Macchina di Rifornimento"}, -- XX - Judgement?
	[77] = {"77", "XXI - Il Mondo?", "Crea una botola che porta ad un vespaio"}, -- XXI - The World?
	[78] = {"78", "Chiave Incrinata", "Chiave Rossa {{Collectible580}} ad uso singolo"}, -- Cracked Key
	[79] = {"79", "Regina di Cuori", "Evoca 1-12 Cuori"}, -- Queen of Hearts
	[80] = {"80", "Carta Jolly", "Copia l'effetto della pillola, carta, runa, pietra spirituale, oggetti attivabile usato piu' recentemente"}, -- Wild Card
	[81] = {"81", "Anima di Isaac", "Cambia i piedistalli nella stanza#Dopo un secondo, tornano al piedistallo originale#L'effetto si ripete"}, -- Soul of Isaac
	[82] = {"82", "Anima di Magdalene", "Isaac ha una aura rossa per il resto della stanza#Nemici uccisi rilasciano Mezzi Cuori Rossi che scompaiono dopo due secondi"}, -- Soul of Magdalene
	[83] = {"83", "Anima di Cain", "Apre tutte le porte nella stanza#Crea Stanze Rosse (Come se si usasse la Chiave Rossa {{Collectible580}}) in ogni posizione valida"}, -- Soul of Cain
	[84] = {"84", "Anima di Judas", "Trasforma Isaac in un fantasma che puo' passare attraverso nemici, paralizzandoli#Dopo qualche secondo, Isaac li attacca tutti, guadagnando danni bonus per ogni nemico colpito"}, -- Soul of Judas
	[85] = {"85", "Anima di ???", "Causa 8 scorregge velenose con un liquido marrone danneggiante#Dopo di che, evoca 7 Culombe (Bombe cacca)#Se stai sul liquido marrone, ↑ +1.35 Lacrime and ↑ +1 Danni"}, -- Soul of ???
	[86] = {"86", "Anima di Eve", "14 Uccellini Morti vengono evocati ed attaccano nemici#Durata: stanza corrente"}, -- Soul of Eve
	[87] = {"87", "Anima di Samson", "Diventi Samson Berserk per 10 secondi#↑ +0.4 Velocita'#↑ Lacrime#↑ +3 Danni"}, -- Soul of Samson
	[88] = {"88", "Anima di Azazel", "Attiva Mega Esplosione {{Collectible441}} per 7.5 secondi"}, -- Soul of Azazel
	[89] = {"89", "Anima di Lazarus", "Muori e resusciti sopra con invincibilita' limitata#Consumabile e' usato automaticamente ad un colpo fatale (come se fosse una vita extra)"}, -- Soul of Lazarus
	[90] = {"90", "Anima di Eden", "Attiva il D6 {{Collectible105}} e D20 {{Collectible166}}#I piedistalli cambiati saranno completamente casuali"}, -- Soul of Eden
	[91] = {"91", "Anima di The Lost", "Muori e diventa The Lost per la stanza corrente"}, -- Soul of the Lost
	[92] = {"92", "Anima di Lilith", "Evoca un Famiglio casuale"}, -- Soul of Lilith
	[93] = {"93", "Anima di The Keeper", "Evoca 3-25 monete casuali"}, -- Soul of the Keeper
	[94] = {"94", "Anima di Apollyon", "Evoca 15 locuste casuali"}, -- oul of Apollyon
	[95] = {"95", "Anima di The Forgotten", "Evoca The Forgotten come personaggio aggiuntivo extra"}, -- Soul of the Forgotten
	[96] = {"96", "Anima di Bethany", "Evoca 6 'Wisp' {{Collectible584}} con proprieta' casuali"}, -- Soul of Bethany
	[97] = {"97", "Anima di Jacon ed Esau", "Evoca Esau come personaggio aggiuntivo extra (per la stanza corrente)"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["it"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "Le bombe sono chiave", "Inverte il numero di bombe con il numero di chiavi#Bombe e chiavi dorate sono invertite"}, -- Bombs are Key
	[12] = {"11", "Gittata Diminuita", "↓ -0.6 Gittata"}, -- Range Down
	[13] = {"12", "Gittata Aumentata", "↑ +0.75 Gittata"}, -- Range Up
	[42] = {"41", "Ho sonno...", "Rallenta tutti i nemici, proiettili ed Isaac per la stanza corrente"}, -- I'm Drowsy...
	[43] = {"42", "Sono Esaltato!!!", "Accelera tutti i nemici, proiettili ed Isaac per la stanza corrente#Si riattiva ogni 30-60 secondi"}, -- I'm Excited!!!
	
	[48] = {"47", "Velocita' di tiro diminuita", "↓ -0.15 Velocita' di tiro"}, -- Shot Speed Down
	[49] = {"48", "Velocita' di tiro aumentata", "↑ +0.15 Velocita' di tiro"}, -- Shot Speed Up
	[50] = {"49", "Pillola Sperimentale", "↑ Aumenta 1 statistica casuale#↓ Diminuisce 1 statistica casuale#Aumenta solo la statistica se si possiede il PHD"}, -- Experimental Pill
	[9999] = {"", "Pillola Dorata", "Effetto di una pillola casuale#Si autodistrugge dopo qualche uso"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["it"].pills)

EID.descriptions["it"].horsepills={
	{"0", "Gas Nocivo", "Avvelena tutta la stanza"}, -- Bad Gas
	{"1", "Brutta Trip", "Prendi 2 Cuori di danno"}, -- Bad Trip
	{"2", "Palle d'Acciaio", "+4 Cuori Spirito"}, -- Balls of Steel
	{"3", "Le Bombe sono Chiave", "Inverte il numero di bombe con il numero di chiavi#Il numero di chiavi e bombe e' aumentato del 50%#Bombe e chiavi dorate sono invertite"}, -- Bombs are Key
	{"4", "Diarrea Esplosiva", "Evoca mega bombe troll a ricerca su di te"}, -- Explosive Diarrhea
	{"5", "Cura Totale", "Full Health#+3 Soul Hearts"}, -- Full Health
	{"6", "Vita Aumentata", "↓ -2 Vita"}, -- Health Down
	{"7", "Vita Diminuita", "↑ +2 Vita"}, -- Health Up
	{"8", "Ho trovato delle pillole", "Nessun effetto"}, -- I Found Pills
	{"9", "Puberta'", "Nessun effetto#Se ne mangi 3 in una partita, ti trasforma in un Adulto"}, -- Puberty
	{"10", "Non Male, Mosca!", "Aggiunge un Grande Fan {{Collectible279}}#Senza limite"}, -- Pretty Fly
	{"11", "Gittata diminuita", "↓ -1.2 Gittata"}, -- Range Down
	{"12", "Gittata aumentata", "↑ +0.9 Gittata"}, -- Range Up
	{"13", "Velocita' Diminuita", "↓ -0.24 Velocita'"}, -- Speed Down
	{"14", "Velocita' Aumentata", "↑ +0.3 Velocita'"}, -- Speed Up
	{"15", "Lacrime Diminuite", "↓ -0.56 Lacrime"}, -- Tears Down
	{"16", "Lacrime Aumentate", "↑ +0.70 Lacrime"}, -- Tears Up
	{"17", "Fortuna Diminuita", "↓ -2 Fortuna"}, -- Luck Down
	{"18", "Fortuna Aumentata", "↑ +2 Fortuna"}, -- Luck Up
	{"19", "Telepillola", "Ti teletrasporta in una stanza casuale"}, -- Telepills
	{"20", "Energia 48 Ore!", "Ricarica il tuo oggetto attivabile#Evoca batterie"}, -- 48 Hour Energy!
	{"21", "Ematemesi", "Rimani con un suolo Cuore Rosso#Evoca Cuori Rossi"}, -- Hematemesis
	{"22", "Paralisi", "Impedisce movimenti per 4 secondi"}, -- Paralysis
	{"23", "Posso vedere... In eterno!", "Apre tutte le stanze segrete presenti sul piano#Concede mappatura totale"}, -- I can see forever!
	{"24", "Feromoni", "Tutti i nemici nella stanza diventano amichevoli permanentemente"}, -- Pheromones
	{"25", "Amnesia", "Oscure la mappa"}, -- Amnesia
	{"26", "Lemon Party", "Evoca una chiazza di limone colossale che danneggia nemici"}, -- Lemon Party
	{"27", "6 1 Stregone?", "Spara diagonalmente per 60 secondi"}, -- R U a Wizard?
	{"28", "Perc!", "Tutti i danni che prendi sono ridotti a mezzo cuore"},  -- Percs!
	{"29", "Dedito!", "Tutti i danni che prendi sono aumentati ad un cuore"}, -- Addicted!
	{"30", "Re-Lax", "Rilasci una scia di cacca per 4 secondi"}, -- Re-Lax
	{"31", "???", "Maledizione del perduto per il resto del piano"}, -- ???
	{"32", "Una ti fa crescere", "Diventi molto piu' grande#La tua hitbox rimane uguale"}, -- One makes you larger
	{"33", "Una ti rimpicciolisce", "Diventi molto piu' piccolo#La tua hitbox diminuisce di dimensione"}, -- One makes you small
	{"34", "Infestato!", "Evoca 2 Ragni Blu per ogni cacca presente nella stanza"}, -- Infested!
	{"35", "Infestato?", "Evoca 2 Ragni Blu per ogni nemico nella stanza#Evoca 2-6 Ragni Blu se non ci son nemici presenti"}, -- Infested?
	{"36", "Pillola Powa!", "Invincibilita' breve#↑ #+7 Danni#↑ +3 Gittata#Durata: Stanza corrente"}, -- Power Pill!
	{"37", "Visione Retro'", "Diminuisce la risoluzione del gioco per 90 secondi"}, -- Retro Vision
	{"38", "Amici Fino alla Fine!", "Evoca 6 Mosche Blu"}, -- Friends Till The End!
	{"39", "X-Lax", "Rilasci una chiazza di liquido nero scivoloso"}, -- X-Lax
	{"40", "Qualcosa non va...", "Rilasci una chiazza di liquido rallentante"}, -- Something's wrong...
	{"41", "Ho Sonno...", "Rallenta tutti i nemici e proiettili nella stanza"}, -- I'm Drowsy...
	{"42", "Sono Esaltato!!!", "Velocizza tutti i nemici e proiettili nella stanza"}, --I'm Excited!!!
	{"43", "Gulp!", "Ingoia il Ninnolo corrente e ottieni il suo effetto permanentemente"}, -- Gulp!
	{"44", "Horf!", "Spara un gruppo di lacrime Ipecac"}, -- Horf!
	{"45", "Sto camminando a mezzo metro da terra!", "Short invincibility#Fears all enemies# Two eaten enemies replenish half a heart"}, -- Feels like I'm walking on sunshine!
	{"46", "Vurp!", "Rigurgiti l'ultima pillola usata"}, -- Vurp!
	{"47", "Velocita' di Tiro Diminuita", "↓ -0.3 Velocita' di tiro"}, -- Shot Speed Down
	{"48", "Velocita' di Tiro Aumentata", "↑ +0.3 Velocita' di tiro"}, -- Shot Speed Up
	{"49", "Pillola Sperimentale", "↑ Aumenta una statistica casuale due volte#↓ Diminuisce una statistica casuale due volte#Aumenta solo la statistica se si possiede il PHD"}, -- Experimental Pill
	[9999] = {"", "Pillola Dorata", "Effetto di una pillola per cavalli casuale#Si autodistrugge dopo qualche uso"}, -- golden Pill
}

EID.descriptions["it"].CraftingBagContent = "Borsa:"
EID.descriptions["it"].CraftingRoomContent = "Stanza:"
EID.descriptions["it"].CraftingFloorContent = "Piano:"
EID.descriptions["it"].CraftingResults = "Risultato:#(Scorri: premi {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}})"
EID.descriptions["it"].CraftingBagModError = "!!! {{ColorRed}}ERRORE:#{{ColorRed}}Questa feature non supporta certe mod!"
