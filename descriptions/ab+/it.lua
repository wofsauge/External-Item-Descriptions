---------------------------------------
-----  Basic Italian descriptions  ----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow | ↓ = Down Arrow | # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "it"

-- init it table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Italian"

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "La Cipolla Triste", "↑ {{Tears}} +0.7 Lacrime"},
	{"2", "Il Terzo Occhio", "↓ {{Tears}} Meno lacrime#Isaac spara 3 lacrime alla volta"},
	{"3", "Piega-cucchiai", "Lacrime a ricerca"},
	{"4", "Testa di Cricket", "↑ {{Damage}} +0.5 Danni#↑ {{Damage}} x1.5 Moltiplicatore Danni"},
	{"5", "Il Mio Riflesso", "↑ {{Range}} +1.5 Gittata#↑ +1 Altezza Lacrime#↑ {{Shotspeed}} +0.6 Velocità Colpi#Le lacrime ottengono un effetto boomerang"},
	{"6", "La Numero Uno", "↑  +1.5 Lacrime#↓ -15.78 Gittata#↑ +0.45 Altezza Lacrime"},
	{"7", "Sangue Del Martire", "↑ {{Damage}} +1 Danni"},
	{"8", "Fratello Bobby", "Spara lacrime normali#Infligge 3.5 danni a lacrima"},
	{"9", "Scatolo", "Tutte le mosche nemiche sono amichevoli"},
	{"10", "Aureola Di Mosche", "+2 Mosche orbitali#Blocca i proiettili nemici"},
	{"11", "1up!", "↑ {{Heart}} +1 Salute#Una volta morto Isaac resuscita con la salute al massimo"},
	{"12", "Fungo Magico", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +0.3 Danni#↑ {{Damage}} x1.5 Moltiplicatore Danni#↑ {{Range}} +5.25 Range#↑ +0.5 Altezza Lacrime#Aumento Statura#{{HealingRed}} Salute al massimo"},
	{"13", "Il Virus", "↓ {{Speed}} -0.1 Velocità#{{Poison}} Toccare i nemici li avvelena#{{BlackHeart}} I nemici avvelenati possono lasciare Cuori Neri"},
	{"14", "Iniezione di Ferocia", "↑ {{Speed}} +0.6 Velocità#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"15", "<3", "↑ {{Heart}} +1 Salute#{{HealingRed}} Salute al massimo"},
	{"16", "Fegato Crudo", "↑ {{Heart}} +2 Salute#{{HealingRed}} Salute al massimo"},
	{"17", "Passepartout", "{{Key}} +99 Chiavi"},
	{"18", "Un Dollaro", "{{Coin}} +99 Monete"},
	{"19", "Bum!", "{{Bomb}} +10 Bombe"},
	{"20", "Trascendenza", "Volo"},
	{"21", "La Bussola", "Rivela tutte le icone sulla mappa#Non mostra il layout della mappa"},
	{"22", "Pranzo", "↑ {{Heart}} +1 Salute"},
	{"23", "Cena", "↑ {{Heart}} +1 Salute"},
	{"24", "Dessert", "↑ {{Heart}} +1 Salute"},
	{"25", "Colazione", "↑ {{Heart}} +1 Salute"},
	{"26", "Carne Marcia", "↑ {{Heart}} +1 Salute"},
	{"27", "Mestolo", "↑ {{Speed}} +0.3 Velocità"},
	{"28", "La Cintura", "↑ {{Speed}} +0.3 Velocità"},
	{"29", "Mutande di Mamma", "↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"30", "Tacchi di Mamma", "↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"31", "Rossetto di Mamma", "↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"32", "Gruccia di Ferro", "↑ {{Tears}} +0.7 Lacrime"},
	{"33", "La Bibbia", "{{Timer}} Volo per la stanza#{{MomsHeart}} Uccide istantaneamente Mamma, Cuore di Mamma e \"È Vivo!\"#{{Warning}} Uccide Isaac se usato contro Satana"},
	{"34", "Il Libro di Belial", "{{AngelDevilChance}} +12.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#{{Timer}} Si riceve fino all'uscita dalla stanza:#↑ {{Damage}} +2 Danni"},
	{"35", "Il Necronomicon", "Infligge 40 danni a tutti i nemici nella stanza"},
	{"36", "La Cacca", "Genera una cacca e respinge i nemici#Può essere piazzata vicino a una fossa e distrutta con una bomba per creare un ponte"},
	{"37", "Sig. Bum", "Lascia a terra una grossa bomba ai piedi di Isaac che infligge 110 danni"},
	{"38", "Testa di Tammy", "Spara 10 lacrime in cerchio attorno ad Isaac#Le lacrime copiano gli effetti delle lacrime di Isaac, e fanno 25 danni in più"},
	{"39", "Reggiseno di Mamma", "{{Petrify}} Pietrifica tutti i nemici nella stanza per 4 secondi"},
	{"40", "Kamikaze!", "Produce un'esplosione nella posizione di Isaac#Infligge 40 danni"},
	{"41", "Assorbente di Mamma", "{{Fear}} Spaventa tutti i nemici nella stanza per 5 secondi"},
	{"42", "Testa Marcia di Bob", "Usare l'oggetto e sparare in una direzione fa scagliare la testa#{{Poison}} La testa esplode all'impatto e avvelena i nemici colpiti dall'esplosione"},
	{"43", "", "<item does not exist>"},
	{"44", "Teletrasporto!", "Teletrasporta Isaac in una stanza casuale che non sia una Stanza I AM ERROR"},
	{"45", "Cuore Gustoso", "{{HealingRed}} Cura di 1 cuore"},
	{"46", "Piede Fortunato", "↑ {{Luck}} +1 Fortuna#+8% di chance di una ricompensa a completamento stanza#Più alte chance di vittoria nel gioco d'azzardo"},
	{"47", "Telecomando del Dottore", "{{Collectible168}} Se usato, appare un mirino direzionabile#Un missile colpisce il mirino dopo 1.5 secondi#Infligge i danni di Isaac x20"},
	{"48", "Freccia di Cupido", "Lacrime penetranti"},
	{"49", "Shoop da Whoop!", "{{Collectible118}}Usare l'oggetto e sparare in una direzione aziona un laser dai danni elevati"},
	{"50", "Steven", "↑ {{Damage}} +1 Danni"},
	{"51", "Pentagramma", "↑ {{Damage}} +1 Danni#{{AngelDevilChance}} +10% di chance di una Stanza del Diavolo/dell'Angelo)"},
	{"52", "Dr. Fetus", "↓ {{Tears}} x2.5 Moltiplicatore Delay tra Lacrime#{{Bomb}} Isaac spara bombe al posto delle lacrime#{{Damage}} Tali bombe infliggono i danni delle lacrime di Isaac x5 + 30"},
	{"53", "Magneto", "Isaac attrae a sé i consumabili"},
	{"54", "Mappa del Tesoro", "Rivela il layout del piano#Non rivela le icone delle stanze"},
	{"55", "Occhio di Mamma", "50% di chance di sparare una lacrima extra dietro di sé#{{Luck}} 100% di chance con 2 di Fortuna"},
	{"56", "Limonata Accidentale", "Versa una pozza di liquido#TIl liquido infligge 24 danni da contatto al secondo"},
	{"57", "Ammiratore Segreto", "Mosca orbitale a medio raggio#Infligge 75 danni da contatto al secondo"},
	{"58", "Libro delle Ombre", "{{Timer}} Invincibilità per 10 secondi"},
	{"59", "", "<item does not exist>"},
	{"60", "La Scala", "Permette ad Isaac di superare varchi da 1 casella"},
	{"61", "", "<item does not exist>"},
	{"62", "Fascino del Vampiro", "{{HealingRed}} Uccidere 13 nemici cura di mezzo cuore"},
	{"63", "La Pila", "{{Battery}} Gli oggetti attivi possono essere sovraccaricati fino a due cariche complete"},
	{"64", "Saldi di Steam", "{{Shop}} Gli oggetti del Negozio costano il 50% in meno"},
	{"65", "Ricette dell'Anarchico", "Evoca 6 Bombe Troll intorno al centro della stanza"},
	{"66", "La Clessidra", "{{Slow}} Rallenta i nemici per 8 secondi"},
	{"67", "Sorella Maggy", "Spara lacrime normali#Infligge 3.5 danni a lacrima"},
	{"68", "Tecnologia", "Isaac spara laser al posto delle lacrime"},
	{"69", "Latte al Cioccolato", "{{Chargeable}} Lacrime caricabili#{{Damage}} I danni scalano con i tempi di carica fino a x4#{{Tears}} Il tempo massimo di carica è il delay tra lacrime x2.5"},
	{"70", "Ormoni della Crescita", "↑ {{Speed}} +0.4 Velocità#↑ {{Damage}} +1 Danni"},
	{"71", "Mini Fungo", "↑ {{Speed}} +0.3 Velocità#↑ +1.5 Altezza Lacrime#↑ Diminuzione Statura#↓ {{Range}} -4.25 Gittata#Più Altezza Lacrime e meno Gittata = leggermente Più Gittata"},
	{"72", "Rosario", "{{SoulHeart}} +3 Cuori Celesti#{{Collectible33}} \"La Bibbia\" viene aggiunta a tute le categorie di oggetti"},
	{"73", "Cubo di Carne", "Lv1: Orbitale#Lv2: Orbitale che spara#Lv3: Meat Boy#Lv4: Super Meat Boy"},
	{"74", "Un Quarto", "{{Coin}} +25 Monete"},
	{"75", "Dottorato", "{{Heart}} Cura 2 cuori#{{HealingRed}} Genera 1 pillola#{{Pill}} Converte le pillole negative in positive#{{BloodDonationMachine}} Le Macchine di Donazione Sangue concedono più {{Coin}} monete"},
	{"76", "Vista a Raggi-X", "{{SecretRoom}} Apre tutte le entrate per le stanze segrete"},
	{"77", "Il mio Piccolo Unicorno", "{{Timer}} Conferisce per 6 secondi:#↑ {{Speed}} +0.28 Velocità#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo"},
	{"78", "Libro dell'Apocalisse", "{{SoulHeart}} +1 Cuore Celeste#{{AngelDevilChance}} +17.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#Usare l'oggetto ha più alte chance di rimpiazzare il boss del piano con un Cavaliere"},
	{"79", "Il Marchio", "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1 Danni#{{SoulHeart}} +1 Cuore Celeste"},
	{"80", "Il Patto", "↑ {{Tears}} +0.7 Lacrime#↑ {{Damage}} +0.5 Danni#{{SoulHeart}} +2 Cuori Celesti"},
	{"81", "Gatto Morto", "↑ +9 Vite#Una volta morto Isaac resuscita con 1 Portacuori#{{Warning}} Quando viene raccolto imposta i Portacuori di Isaac ad 1"},
	{"82", "Signore dell'Abisso", "↑ {{Speed}} +0.3 Velocità#Volo"},
	{"83", "Il Chiodo", "Se usato:#{{SoulHeart}} +1 Cuore Celeste#{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +0.7 Danni#↓ {{Speed}} -0.18 Velocità#Isaac infligge 40 danni da contatto al secondo#Permette ad Isaac di distruggere le rocce camminandoci sopra"},
	{"84", "Scaviamo più a Fondo!", "Apre una botola per il prossimo piano#{{LadderRoom}} 10% di chance di aprire una botola con cunicolo"},
	{"85", "Mazzo di Carte", "{{Card}} Genera 1 carta"},
	{"86", "Dente di Monstro", "Monstro cade su un nemico e infligge 120 danni#{{Warning}} Se la stanza non ha nemici Monstro cade su Isaac"},
	{"87", "Corna di Loki", "25% di chance di sparare in 4 direzioni#{{Luck}} 100% di chance con 7 di Fortuna"},
	{"88", "Cicciottella", "Si lancia in avanti nella direzione in cui Isaac sta sparando#Infligge 52.5 danni di contatto al secondo"},
	{"89", "Morso di Ragno", "{{Slow}} 25% di chance di sparare lacrime rallentanti#{{Luck}} 100% di chance con 15 di Fortuna"},
	{"90", "La Pietruzza", "↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +1 Danni#↓ {{Speed}} -0.2 Velocità"},
	{"91", "Casco da Minatore", "Rivela il tipo di stanza delle stanze adiacenti#{{SecretRoom}} Può rivelare Stanze Segrete e Super Segrete"},
	{"92", "Super Cerotto", "↑ {{Heart}} +1 Salute#{{HealingRed}} Cura di 1 cuore#{{SoulHeart}} +2 Cuori Celesti"},
	{"93", "Il Gamekid", "{{Timer}} Conferisce per 6.5 secondi:#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo#{{HealingRed}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"},
	{"94", "Sacco di Penny", "{{Coin}} Genera 1 moneta casuale ogni 2 stanze"},
	{"95", "Robo-Bebè", "Spara laser#Infligge 3.5 danni a colpo"},
	{"96", "Piccola C.H.A.D.", "{{HalfHeart}} Genera mezzo Cuore Rosso ogni 3 stanze"},
	{"97", "Il Libro del Peccato", "Genera un consumabile casuale"},
	{"98", "La Reliquia", "{{SoulHeart}} Evoca 1 Cuore Celeste per ogni 5-6 stanze"},
	{"99", "Piccolo Gish", "{{Slow}} Spara proiettili rallentanti#Infligge 3.5 danni a lacrima"},
	{"100", "Piccolo Steven", "Spara proiettili a ricerca#Infligge 3.5 danni a lacrima"},
	{"101", "L'Aureola", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +0.3 Danni#↑ {{Range}} +0.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"102", "Boccetta di Mamma", "{{Pill}} Genera 1 pillola"},
	{"103", "Il Raffreddore", "{{Poison}} 25% di chance di sparare lacrime velenose#{{Luck}} 100% di chance con 12 di Fortuna"},
	{"104", "Il Parassita", "Al contatto le lacrime si dividono in 2#Le lacrime divise infliggono metà dei danni"},
	{"105", "Il D6", "Rilancia i piedistalli nella stanza corrente"},
	{"106", "Mr. Mega", "↑ {{Bomb}} x1.83 danni delle bombe#{{Bomb}} +5 Bombe"},
	{"107", "Forbici Seghettate", "{{Timer}} Conferisce fino all'uscita dalla stanza:#Volo#Il corpo di Isaac si separa dalla testa e attacca i nemici con 82.5 danni da contatto al secondo"},
	{"108", "L'Ostia", "Riduce la maggior parte dei danni presi a mezzo cuore"},
	{"109", "Soldi = Forza", "↑ +0.04 Danni per ogni {{Coin}} moneta che ha Isaac"},
	{"110", "Lentine di Mamma", "↑ {{Range}} +0.25 Gittata#↑ +0.5 Altezza Lacrime#20% di chance di sparare lacrime pietrificanti#{{Luck}} 50% di chance con 20 di Fortuna"},
	{"111", "Il Fagiolo", "{{Poison}} Infligge 5 danni ai nemici nelle vicinanze e li avvelena#Il veleno infligge i danni di Isaac per 6 volte"},
	{"112", "Angelo Custode", "Orbitale#Velocizza tutti gli altri orbitali#Blocca i proiettili#Infligge 105 danni da contatto al secondo"},
	{"113", "Bebè Demone", "Spara ai nemici che gli si avvicinano#Infligge 3 danni a lacrima"},
	{"114", "Coltello di Mamma", "Le lacrime di Isaac vengono rimpiazzate da un coltello lanciabile#{{Damage}} Il coltello infligge i danni di Isaac x2 mentre viene tenuto e x6 alla massima distanza possibile"},
	{"115", "Tavola Ouija", "Lacrime spettrali"},
	{"116", "9 Volt", "{{Battery}} Carica automaticamente la prima barra degli oggetti attivi#{{Battery}} Quando viene raccolto ricarica pienamente l'oggetto attivo"},
	{"117", "Uccello Morto", "Venire colpito genera un uccello#L'uccello infligge 4.3 danni da contatto al secondo"},
	{"118", "Zolfo Fuso", "↓ {{Tears}} x3 Moltiplicatore del delay delle lacrime#{{Chargeable}} Le lacrime di Isaac vengono rimpiazzate da un raggio di sangue caricabile"},
	{"119", "Sacca di sangue", "↑ {{Heart}} +1 Salute#↑ +0.3 Velocità#{{HealingRed}} Cura di 4 cuori"},
	{"120", "Buffungo (Piccolo)", "↑ {{Speed}} +0.3 Velocità#↑ {{Tears}} +1.7 Lacrime#↓ {{Damage}} x0.9 Moltiplicatore Danni#↓ {{Damage}} -0.4 Danni"},
	{"121", "Buffungo (Grande)", "↑ {{EmptyHeart}} +1 Portacuore#↑ {{Damage}} +0.3 Danni#↑ {{Range}} +0.25 Gittata#↑ +0.5 Altezza Lacrime#↓ {{Speed}} -0.1 Velocità"},
	{"122", "Meretrice di Babilonia", "Quando si è a mezzo Cuore Rosso o meno:#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +1.5 Danni"},
	{"123", "Manuale dei Mostri", "{{Timer}} Genera un famiglio casuale fino all'uscita dalla stanza"},
	{"124", "Pergamene del Mar Morto", "Attiva l'effetto di un oggetto attivo casuale#Sceglie l'effetto da un elenco definito di oggetti"},
	{"125", "Bobby-Bomba", "{{Bomb}} +5 Bombe#Bombe a ricerca"},
	{"126", "Lametta", "↑ {{Damage}} +1.2 Danni#{{Warning}} Infligge 1 cuore di danni ad Isaac#{{Heart}} Rimuove per primi i Cuori Rossi"},
	{"127", "NonTiRicordarDiMe", "{{Warning}} MONOUSO {{Warning}}#Rilancia e fa ripartire l'intero piano"},
	{"128", "Forever Alone", "Mosca orbitale a lunga distanza#Infligge 30 danni da contatto al secondo"},
	{"129", "Secchio di Lardo", "↑ {{EmptyHeart}} +2 Portacuori vuoti#↓ {{Speed}} -0.2 Velocità#{{HealingRed}} Cura di mezzo cuore"},
	{"130", "Un Pony", "{{Speed}} Imposta la Velocità ad almeno 1.5#Volo mentre viene tenuto#Usare l'oggetto fa scattare Isaac nella direzione in cui si sta muovendo"},
	{"131", "Sacco di Bombe", "{{Bomb}} Genera 1 bomba ogni 2-3 stanze"},
	{"132", "Un Pezzo di Carbone", "{{Damage}} I danni inflitti dalle lacrime aumentano con la distanza percorsa"},
	{"133", "Zampa di Guppy", "{{SoulHeart}} Converte 1 Portacuori in 3 Cuori Celesti"},
	{"134", "Coda di Guppy", "{{Chest}} 33% di chance di rimpiazzare la ricompensa per completamento stanza con un baule#33% di chance di non generare alcuna ricompensa per completamento stanza"},
	{"135", "Flebo", "{{Coin}} Ferisce Isaac per mezzo cuore e genera 1-2 monete"},
	{"136", "Amico del Cuore", "Genera un Isaac finto che attrae i nemici ed esplode dopo 5 secondi"},
	{"137", "Detonatore", "{{Bomb}} +5 Bombe#Le bombe di Isaac non esplodono più automaticamente#Usare l'oggetto fa detonare tutte le bombe di Isaac contemporaneamente"},
	{"138", "Stimmate", "↑ {{Heart}} +1 Salute#↑ {{Damage}} +0.3 Danni"},
	{"139", "Borsetta di Mamma", "{{Trinket}} Isaac può tenere 2 ninnoli"},
	{"140", "Maledizione di Bob", "{{Bomb}} +5 Bombe#{{Poison}} Le bombe  di Isaac avvelenano i nemici poison enemies colpiti dall'esplosione"},
	{"141", "Reginello", "{{Coin}} Genera 7 monete casuali"},
	{"142", "Scapolare", "{{SoulHeart}} Isaac ottiene 1 Cuore Celeste quando i danni lo riducono a mezzo cuore#Può avvenire solo 1 volta a stanza#Uscire e rientrare nella stanza permette di attivare nuovamente l'effetto"},
	{"143", "Speed Ball", "↑ {{Speed}} +0.3 Velocità#↑ {{Shotspeed}} +0.2 Velocità Colpi"},
	{"144", "Amico Scrocco", "{{Coin}} Raccoglie monete nelle vicinanze#Genera in cambio consumabili casuali"},
	{"145", "Testa di Guppy", "Evoca 2-4 mosche blu"},
	{"146", "Santino", "{{EternalHeart}} +1 Cuore Eterno"},
	{"147", "Piccone Minatorio", "Permette ad Isaac di rompere rocce e muri delle stanze segrete camminandoci sopra"},
	{"148", "Infestazione", "Subire danni genera 1-3 mosche blu"},
	{"149", "Ipecac", "↑ {{Damage}} +40 Danni#↓ {{Tears}} Meno Lacrime#Isaac spara lacrime lungo un arco#{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici"},
	{"150", "Amor Duro", "{{Damage}} 10% di chance di sparare denti che infliggono i danni di Isaac x3.2#{{Luck}} 100% di chance con 9 di Fortuna"},
	{"151", "Mosca al Naso", "Colpire un nemico con una lacrima ha un 1/6 di chance di generare una mosca"},
	{"152", "Tecnologia 2", "↓ {{Tears}} x2 Moltiplicatore Lacrime#↓ {{Damage}} x0.65 Moltiplicatore Danni#Sotituisce le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco"},
	{"153", "Ragno Mutante", "↓ {{Tears}} Meno Lacrime#Isaac spara 4 lacrime alla volta"},
	{"154", "Esfoliazione Chimica", "↑ {{Damage}} +2 Danni per l'occhio sinistro"},
	{"155", "Il Guardone", "↑ {{Damage}} x1.35 Moltiplicatore Danni per l'occhio sinistro#Levita intorno alla stanza#Infligge 17.1 danni da contatto al secondo"},
	{"156", "Soggolo", "{{Battery}} Subire danni aggiunge 1 carica all'oggetto attivo"},
	{"157", "Furia Sanguinolenta", "↑ {{Damage}} Subire danni conferisce più danni#Applicabile fino a 6 volte per piano#Dura per tutto il piano"},
	{"158", "Sfera di Cristallo", "Genera 1 {{SoulHeart}} Cuore Celeste, 1 {{Rune}} runa o 1 {{Card}} carta#{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto le {{SuperSecretRoom}} Stanze Super Segrete)"},
	{"159", "Spirito della Notte", "Lacrime Spettrali#Volo"},
	{"160", "Apriti Cielo", "Genera 5 raggi di luce vicino ai nemici#Infligge i danni di Isaac + 20"},
	{"161", "Ankh", "{{Player4}} Una volta morto Isaac resuscita nella forma di ??? (Bimbo Blu)"},
	{"162", "Croce Celtica", "Subire danni ha il 20% di chance di rendere Isaac temporaneamente invincibile#{{Luck}} 100% di chance con 27 di Fortuna"},
	{"163", "Bebè Fantasma", "Spara lacrime spettrali#Infligge 3.5 danni a lacrima"},
	{"164", "La Candela", "Fa scagliare una fiamma blu#La fiamma infligge danni da contatto, blocca i proiettili nemici, e svanisce dopo 2 secondi"},
	{"165", "Gatto a Nove Code", "↑ {{Damage}} +1 Danni#↑ {{Shotspeed}} +0.23 Velocità Colpi"},
	{"166", "D20", "Rilancia tutti i consumabili nella stanza"},
	{"167", "Bebè Arlecchino", "Spara due lacrime in una traiettoria a forma di V#Infligge 4 danni a lacrima"},
	{"168", "Epic Fetus", "Al posto delle lacrime appare un mirino direzionabile#Un missile colpisce il mirino dopo 1.5 secondi#Infligge i danni di Isaac x20"},
	{"169", "Polifemo", "↑ {{Damage}} +4 Danni#↑ {{Damage}} x2 Moltiplicatore Danni#↓ {{Tears}} Meno Lacrime#Le lacrime penetrano i nemici uccisi in caso di danni residui"},
	{"170", "Papà Gambalunga", "Schiaccia un nemico casuale#Infligge 40 danni al secondo"},
	{"171", "Chiappe Ragnesche", "{{Slow}} Rallenta i nemici per 4 secondi#Infligge 10 danni a tutti i nemici"},
	{"172", "Lama Sacrificale", "Orbitale#Blocca i proiettili nemici#Infligge 225 danni al secondo"},
	{"173", "Mitra", "Maggiori chance di trovare Cuori Celesti"},
	{"174", "Bimbo Arcobaleno", "Spara lacrime casuali#Infligge 3-5 danni a lacrima"},
	{"175", "Chiave di Papà", "Apre tutte le porte nella stanza, incluse le {{SecretRoom}}{{SuperSecretRoom}} Stanze Segrete, {{ChallengeRoom}}{{BossRushRoom}}Sale Sfida, e la porta per Mega Satana"},
	{"176", "Cellule staminali", "↑ {{Heart}} +1 Salute#↑ {{Shotspeed}} +0.16 Velocità Colpi"},
	{"177", "Slot Portatile", "Slot machine portatile#{{Coin}} Spendi 1 moneta per una chance di generare 1 consumabile"},
	{"178", "Acqua Santa", "Subire danni fa versare una pozza di liquido#Il liquido infligge 24 danni al secondo"},
	{"179", "Destino", "{{EternalHeart}} +1 Cuore Eterno#Volo"},
	{"180", "Il Fagiolo Nero", "Quando Isaac viene danneggiato scorreggia#{{Poison}} La scorreggia avvelena i nemici"},
	{"181", "Pony Bianco", "{{Speed}} Imposta la Velocità ad almeno 1.5#Volo mentre viene tenuto#Usare l'oggetto fa scattare Isaac nella direzione in cui si sta muovendo, lasciando dietro di sé raggi di luce"},
	{"182", "Sacro Cuore", "↑ {{Heart}} +1 Salute#↑ {{Damage}} x2.3 Moltiplicatore Danni#↑ {{Damage}} +1 Danni#↑ {{Range}} +0.38 Gittata#↑ +0.75 Altezza Lacrime#↓ {{Tears}} -0.4 Lacrime#↓ {{Shotspeed}} -0.25 Velocità Colpi#{{HealingRed}} Salute al massimo#Lacrime a ricerca"},
	{"183", "Stuzzicadenti", "↑ {{Tears}} +0.7 Lacrime#↑ {{Shotspeed}} +0.16 Velocità Colpi"},
	{"184", "Sacro Graal", "↑ {{Heart}} +1 Salute#Volo"},
	{"185", "Colomba Morta", "Lacrime Spettrali#Volo"},
	{"186", "Eredità di Sangue", "Infligge 40 danni a tutti i nemici#{{Warning}} Infligge 1 cuore di danno ad Isaac#{{Heart}} Rimuove per primi i Cuori Rossi"},
	{"187", "Palla di Pelo di Guppy", "Muoversi fa oscillare la palla di pelo#La palla cresce quando uccide un nemico#I danni inflitti dalla palla aumentano con il suo ingrandimento"},
	{"188", "Abele", "Riflette i movimenti di Isaac#Spara verso Isaac#Infligge 3.5 danni a lacrima"},
	{"189", "Super Fan di SMB", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.2 Velocità#↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +0.3 Danni#↑ {{Range}} +0.5 Gittata#↑ +1 Altezza Lacrime#{{HealingRed}} Salute al massimo"},
	{"190", "Bombarolo", "{{Bomb}} +99 Bombe"},
	{"191", "Banconota da 3 Dollari", "Le lacrime di Isaac ottengono effetti casuali ogni 2-3 secondi"},
	{"192", "Telepatia per Negati", "{{Timer}} Lacrime a ricerca fino all'uscita dalla stanza"},
	{"193", "CARNE!", "↑ {{Heart}} +1 Salute#↑ {{Damage}} +0.3 Danni"},
	{"194", "Palla Magica", "↑ {{Shotspeed}} +0.16 Velocità Colpi#{{Card}} Genera 1 carta"},
	{"195", "Borsellino di Mamma", "{{Pill}} Genera 4 pillole"},
	{"196", "Anti-stress", "↑ {{Tears}} +0.4 Lacrime#{{SoulHeart}} Genera 2 Cuori Celesti"},
	{"197", "Succhino di Cristo", "↑ {{Damage}} +0.5 Danni#↑ {{Range}} +0.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"198", "Scatola", "Genera 1 consumabile di ciascun tipo"},
	{"199", "Chiave di Mamma", "{{Key}} +2 Chiavi#I bauli contengono più consumabili"},
	{"200", "Ombretto di Mamma", "Lacrime ammalianti"},
	{"201", "Lingotto di Ferro", "↑ {{Damage}} +0.3 Danni#{{Confusion}} 10% di chance di sparare lacrime stordenti#{{Luck}} 100% di chance con 27 di Fortuna"},
	{"202", "Tocco di Mida", "{{Petrify}} Toccare i nemici li pietrifica e li trasforma in oro#Isaac infligge danni da contatto in base al suo numero di monete#{{Coin}} Uccidere un nemico dorato genera monete#La cacca generata da Isaac ha un'alta chance di essere cacca dorata"},
	{"203", "Offerta Imperdibile", "Se possibile raddoppia i consumabili generati"},
	{"204", "Marsupio", "Subire danni ha il 50% di chance di generare 1 consumabile casuale"},
	{"205", "Presa Diretta", "{{Battery}} Usare un oggetto attivo non carico lo ricarica pienamente al costo di 2 cuori#Funziona solo quando l'oggetto non ha cariche"},
	{"206", "Ghigliottina", "↑ {{Tears}} +0.5 Lacrime#↑ {{Damage}} +1 Danni#La testa di isaac diventa un orbitale che spara, non prende danni e infligge 105 danni da contatto al secondo"},
	{"207", "Palla di Cerotti", "Lv1: Orbitale#Lv2: Orbitale che spara lacrime ammalianti#Lv3: Bandage Girl#Lv4: Super Bandage Girl"},
	{"208", "Cintura del Campione", "↑ {{Damage}} +1 Danni#+15% di chance di nemici campioni"},
	{"209", "Bombe Popò", "{{Bomb}} +5 Bombe#{{Confusion}} Le esplosioni stordiscono e danneggiano ogni nemico nella stanza"},
	{"210", "Foglia Mangiucchiata", "Rimanere fermi per 1 secondo rende Isaac invincibile"},
	{"211", "Bimboragno", "Subire danni genera 1-2 ragni blu"},
	{"212", "Collare di Guppy", "Una volta morto 50% di chance di ritornare in vita con mezzo cuore"},
	{"213", "Lentina Persa", "↓ {{Shotspeed}} -0.15 Velocità Colpi#Le lacrime di Isaac distruggono i proiettili nemici"},
	{"214", "Anemia", "↑ {{Range}} +5 Gittata#{{Timer}} Quando Isaac prende danni lascia una scia di sangue fino all'uscita dalla stanza"},
	{"215", "Testa di Capra", "{{AngelDevilChance}} 100% di chance che si apra una Stanza del Diavolo/Dell'Angelo"},
	{"216", "Vesti Cerimoniali", "↑ {{Damage}} +1 Danni#{{BlackHeart}} +3 Cuori Neri"},
	{"217", "Parrucca di Mamma", "{{HealingRed}} Cura di 1 cuore#5% di chance di generare un ragno blu sparando lacrime#{{Luck}} 100% di chance con 10 di Fortuna"},
	{"218", "Placenta", "{{HealingRed}}Cura di 1 cuore#5% di chance di generare un ragno blu sparando lacrime#{{Luck}} 100% di chance con 10 di Fortuna"},
	{"219", "Cerotto Vecchio", "↑ {{EmptyHeart}} +1 Portacuori vuoto#{{Heart}} Subire danni ha il 10% di chance di generare 1 Cuore Rosso"},
	{"220", "Bombe Tristi", "{{Bomb}} +5 Bombe#Quando le bombe di Isaac esplodono sparano un cerchio di 10 lacrime"},
	{"221", "Mastice", "Le lacrime di Isaac rimbalzano sui nemici e sugli ostacoli"},
	{"222", "Anti-Gravità", "↑ {{Tears}} -2 Delay tra Lacrime#Tenere premuto il tasto di fuoco fa sì che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate"},
	{"223", "Piromane", "{{Bomb}} +5 Bombe#Immunità a esplosioni, scosse sismiche e pestoni#{{HealingRed}} Le esplosioni curano Isaac di 1 cuore invece di danneggiarlo"},
	{"224", "Corpo di Cricket", "↑ {{Tears}} -1 Delay tra Lacrime#↑ {{Tearsize}} x1.2 Dimensioni Lacrime#↓ {{Range}} -10 Gittata#Quando le lacrime colpiscono qualcosa si dividono in 4#Le lacrime divise infliggono la metà dei danni"},
	{"225", "Latex", "{{SoulHeart}} Subire danni ha una chance di generare 1 Cuore Celeste#{{HalfHeart}} I nemici hanno una chance di lasciare mezzo Cuore Rosso quando muoiono"},
	{"226", "Loto Nero", "↑ {{Heart}} +1 Salute#{{SoulHeart}} +1 Cuore Celeste#{{BlackHeart}} +1 Cuore Nero"},
	{"227", "Salvadanaio", "{{Coin}} +3 Monete#{{Coin}} Subire danni genera 1-2 monete"},
	{"228", "Profumo di Mamma", "↑ {{Tears}} -1 Delay tra Lacrime#{{Fear}} 15% di chance di sparare lacrime spaventose"},
	{"229", "Polmone di Monstro", "↓ {{Tears}} x4.3 Moltiplicatore Delay tra Lacrime#{{Chargeable}} Le lacrime vengono caricate e rilasciate in un attacco a raffica"},
	{"230", "Abaddon", "↑ {{Speed}} +0.2 Velocità#↑ {{Damage}} +1.5 Danni#↓ {{EmptyHeart}} Rimuove tutti i Portacuori#{{BlackHeart}} +6 Cuori Neri#{{Fear}} 15% di chance di sparare lacrime spaventose"},
	{"231", "Palla di Catrame", "{{Slow}} 10% di chance di sparare lacrime rallentanti#{{Luck}} 100% chance con 18 di Fortuna#{{Slow}} Isaac lascia una scia di liquido rallentante"},
	{"232", "Cipollotto", "↑ {{Speed}} +0.3 Velocità#{{Slow}} Subire danni rallenta permanentemente tutti i nemici nella stanza"},
	{"233", "Pianetino", "↑ +7 Altezza Lacrime#Lacrime spettrali#Le lacrime di Isaac gli orbitano attorno"},
	{"234", "Infestazione 2", "Uccidere un nemico genera un ragno blu"},
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Toccare un nemico lo trasforma in cacca"},
	{"237", "Tocco Mortale", "↑ {{Damage}} +1.5 Danni#↑ {{Tearsize}} x2 Dimensioni Lacrime#↓ {{Tears}} -0.3 Lacrime#Lacrime penetranti"},
	{"238", "Pezzo di Chiave 1", "{{Warning}} Ottenere entrambi i pezzi della chiave apre una grossa porta dorata#{{AngelChance}} +25% di chance di una Stanza dell'Angelo#{{EternalHeart}} +2% di chance di Cuori Eterni"},
	{"239", "Pezzo di Chiave 2", "{{Warning}} Ottenere entrambi i pezzi della chiave apre una grossa porta dorata#{{AngelChance}} +25% di chance di una Stanza dell'Angelo#{{EternalHeart}} +2% di chance di Cuori Eterni"},
	{"240", "Trattamento Sperimentale", "↑ Aumenta 4 statistiche casuali#↓ Riduce 2 statistiche casuali"},
	{"241", "Contratto con gli Abissi", "Raddoppia tutte le ricompense per completamento stanza33% di chance di nessunaa ricompensa per completamento stanza"},
	{"242", "Infamia", "50% di chance di bloccare proiettili nemici"},
	{"243", "Scutum Fidei", "Blocca i proiettili nemici che arrivano dalla direzione verso cui isaac sta sparando"},
	{"244", "Tecn. 0.5", "Oltre alle lacrime Isaac spara occasionalmente dei laser"},
	{"245", "Dieci Decimi", "Isaac spara 2 lacrime alla volta"},
	{"246", "Mappa Blu", "{{SecretRoom}} Rivela la posizione delle stanze segrete sulla mappa"},
	{"247", "AMICI PER LA PELLE!", "I famigli infliggono il doppio dei danni"},
	{"248", "Mente Alveare", "Ragni e mosche blu infliggono il doppio dei danni"},
	{"249", "Ci sono alternative", "Permette ad Isaac di scegliere tra 2 oggetti dopo aver battuto un boss"},
	{"250", "Bombe 2x1", "{{Bomb}} Le bombe che si ottengono come ricompensa vengono raddoppiate"},
	{"251", "Mazzo Introduttivo", "{{Card}} Quando viene raccolto genera 1 carta#Isaac può portare 2 carte#Trasforma in carte tutte le pillole"},
	{"252", "Portapillole", "{{Pill}} Quando viene raccolto genera 1 pillola#Isaac può portare 2 carte#Trasforma in pillole tutte le carte"},
	{"253", "Scabbia Magica", "↑ {{Heart}} +1 Salute#↑ {{Luck}} +1 Fortuna"},
	{"254", "Grumo di Sangue", "↑ {{Damage}} +1 Danni all'occhio sinistro#↑ {{Range}} +5 Gittata per l'occhio sinistro#↑ +0.5 Altezza Lacrime"},
	{"255", "Vite", "↑ {{Tears}} +0.5 Lacrime#↑ {{Shotspeed}} +0.2 Velocità Colpi"},
	{"256", "Bombe Incendiarie", "{{Bomb}} +5 Bombe#{{Burning}} Le bombe di Isaac lasciano una fiamma quando esplodono"},
	{"257", "Mente in Fiamme", "{{Burning}} Le lacrime di Isaac appiccano fuoco ai nemici#10% di chance che le lacrime esplodano all'impatto con il nemico#{{Luck}} 100% di chance con 13 di Fortuna#{{Warning}} Le esplosioni possono ferire Isaac"},
	{"258", "Missing No.", "Ad ogni nuovo piano rilancia tutti gli oggetti e statistiche di Isaac quando viene raccolto e ad ogni nuovo piano"},
	{"259", "Materia Oscura", "↑ {{Damage}} +1 Danni#{{Fear}} 33% di chance di sparare lacrime spaventoso#{{Luck}} 100% di chance con 20 di Fortuna"},
	{"260", "Candela Nera", "{{CurseBlind}} Immunità alle maledizioni#{{BlackHeart}} +1 Cuori Neri#{{AngelDevilChance}} +15% di chance di una Stanza del Diavolo/dell'Angelo"},
	{"261", "Proptosi", "↑ {{Damage}} x2 Moltiplicatore Danni#↓ I danni inflitti dalle lacrime diminuiscono con la distanza percorsa"},
	{"262", "Pagina Mancante 2", "{{BlackHeart}} +1 Cuore Nero#Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza"},
	{"263", "", "<item does not exist>"},
	{"264", "Moscastuta", "Orbitale#Attaccca i nemici quando Isaac prende danni#Infligge 22.5 danni al secondo"},
	{"265", "Bebè Asciutto", "10% di chance di danneggiare tutti i nemici nella stanza quando viene colpito da una lacrima nemica"},
	{"266", "Sacca Colante", "{{Slow}} Lascia del liquido rallentante#Genera 1-2 ragni blu dopo aver completato una stanza"},
	{"267", "Robo-Bebè 2.0", "Spara laser#Infligge 3.5 damage a colpo#Si muove nella direzione verso cui Isaac sta sparando"},
	{"268", "Bebè Marcio", "Genera mosche blu mentre Isaac spara"},
	{"269", "Bebè Decapitato", "Lascia del liquido che infligge 6 danni al secondo"},
	{"270", "Sanguisuga", "Insegue i nemici#{{HealingRed}} Quando uccide un nemico cura Isaac di mezzo cuore#Infligge 3.2 danni al secondo"},
	{"271", "Sacco delle Meraviglie", "Genera 1 consumabile casuale ogni tot stanze"},
	{"272", "BMF", "Mosca esplosiva amichevole#L'esplosione infligge 60 danni#{{Warning}} L'esplosione può ferire Isaac"},
	{"273", "Cervello di Bob", "Scatta nella direzione verso cui Isaac sta sparando#Esplode quando colpisce un nemico#{{Poison}} L'esplosione infligge 60 danni e avvelena i nemici#{{Warning}} L'esplosione può ferire Isaac"},
	{"274", "Scudiero", "Subire danni genera un orbitale dal medio raggio fino all'uscita dalla stanza#L'orbitale infligge 75 danni al secondo"},
	{"275", "Mini Zolfo Fuso", "{{Chargeable}} Famiglio che carica e spara un {{Collectible118}} raggio di sangue#Infligge 3.5 danni a tocco, per un totale di 31.5 danni"},
	{"276", "Cuore di Isaac", "Isaac diventa invincibile#Genera un cuore famiglio che segue Isaac#{{Warning}} Se il cuore famiglio viene colpito, Isaac prende danni"},
	{"277", "Mini Tormento", "{{Fear}} Insegue i nemici e li spaventa#Infligge 4 danni al secondo"},
	{"278", "Scroccoscuro", "{{Heart}} Raccoglie i Cuori Rossi nelle vicinanze#{{SoulHeart}} Genera 1 Cuore Celeste o un ragno per ogni 1.5 Cuori Rossi raccolti"},
	{"279", "Grande Fan", "Grosso orbitale#Infligge 30 danni al secondo"},
	{"280", "Sorellina Gambalunga", "Genera ad intervalli casuali ragni blu nelle stanze ostili"},
	{"281", "Sacco da Boxe", "Famiglio diversivo#I nemici bersagliano lui al posto di Isaac"},
	{"282", "Come Saltare", "Permette ad Isaac di saltare sopra varchi e ostacoli"},
	{"283", "D100", "Rilancia tutti i consumabili e i piedistalli nella stanza, e tutti gli oggetti passivi di Isaac"},
	{"284", "D4", "Rilancia tutti gli oggetti passivi di Isaac"},
	{"285", "D10", "Rilancia tutti i nemici nella stanza"},
	{"286", "Carta Bianca", "Attiva l'effetto della carta o della runa tenuta da Isaac senza usarla"},
	{"287", "Libro dei Segreti", "{{Timer}} Conferisce uno dei seguenti effetti fino all'uscita dal piano:#{{Collectible54}} \"Mappa del Tesoro\"#{{Collectible21}} \"La Bussola\"#{{Collectible246}} \"Mappa Blu\""},
	{"288", "Scatola di Ragni", "Genera 1-4 ragni blu"},
	{"289", "Candela Rossa", "Lancia una fiamma rossa#La fiamma sparisce dopo aver inflitto danni o bloccato 5 proiettili"},
	{"290", "La Giara di Vetro", "{{Heart}} Con la salute al massimo può conservare fino a 4 Cuori Rossi#Usare l'oggetto butta a terra tutti i cuori accumulati nel piano"},
	{"291", "Sciacquone!", "Trasforma in cacca tutti i nemici che non sono boss#Uccide istantaneamente nemici e boss fatti di cacca"},
	{"292", "Bibbia Satanica", "{{BlackHeart}} +1 Cuore Nero"},
	{"293", "Testa di Krampus", "{{Collectible118}} Spara raggi di zolfo fuso in 4 direzioni"},
	{"294", "Fagiolo di Lima", "Respinge nemici e proiettili nelle vicinanze#10% di chance di trasformarsi nel più forte {{Collectible484}} \"Aspe', Cosa?\" quando lo si scambia con un altro oggetto attivo per poi raccoglierlo"},
	{"295", "Dita Magiche", "Infligge a tutti i nemici i danni di Isaac x2#{{Coin}} Costa 1 moneta"},
	{"296", "Convertitore", "{{Heart}} Converte 2 Cuori Celesti/Neri in 1 Portacuori"},
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Scrigno di Pandora", "{{Warning}} MONOUSO {{Warning}} Genera ricompense in base al piano:#S1: 2{{SoulHeart}}; S2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}G1: Oggetto del Boss; G2: G1 + 2{{SoulHeart}}#P1: 4{{SoulHeart}}; P2: 20{{Coin}}#U1: 2 Oggetti del Boss#U2: {{Collectible33}} \"La Bibbia\"#???/Il Vuoto: Nulla#Sheol: Oggetto Demoniaco + 1{{BlackHeart}}#Catt.: Oggetto Angelico + 1{{EternalHeart}}#Camera Oscura: Sblocca {{Collectible523}} \"Scatola per Traslochi\"#Baule: 1{{Coin}}"},
	{"298", "Moncherino di Unicorno", "{{Timer}} Conferisce per 6 secondi:#↑ {{Speed}} +0.28 Velocità#Invincibilità#Isaac non può sparare (no danni da contatto)"},
	{"299", "Toro", "↓ {{Speed}} -0.3 Velocità#↑ {{Speed}} Nelle stanze ostili si guadagna lentamente velocità#A 2 di Velocità, Isaac diventa invincibile e infligge danni da contatto#In seguito l'aumento di velocità di \"Toro\" viene perso fino all'uscita dalla stanza"},
	{"300", "Ariete", "↑ {{Speed}} +0.25 Velocità#Toccare i nemici infligge danni a contatto"},
	{"301", "Cancro", "{{SoulHeart}} +3 Cuori Celesti#Subire danni riduce di mezzo cuore tutti i prossimi danni nella stanza"},
	{"302", "Leone", "Aumento Statura#Isaac può rompere le rocce camminandoci sopra"},
	{"303", "Vergine", "Subire danni rende Isaac temporaneamente invincibile#{{Luck}} 100% chance at 10 luck#Converte le pillole negative in positive"},
	{"304", "Bilancia", "+6 {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi#Bilancia le statistiche di Isaac#Le prossime modifiche nelle statistiche verranno spartite tra tutte le statistiche"},
	{"305", "Scorpione", "{{Poison}} Lacrime velenose"},
	{"306", "Sagittario", "↑ {{Speed}} +0.2 Velocità#Lacrime penetranti"},
	{"307", "Capricorno", "↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.1 Velocità#↑ {{Tears}} -1 Delay tra Lacrime#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +1.5 Gittata#+1 {{Coin}} moneta, {{Bomb}} bomba e {{Key}} chiave"},
	{"308", "Acquario", "Isaac lascia una scia di liquido#Il liquido infligge 6 danni al secondo"},
	{"309", "Pesci", "↑ {{Tears}} -1 Delay tra Lacrime#↑ {{Tearsize}} x1.25 Dimensioni Lacrime#Aumenta la spinta delle lacrime"},
	{"310", "Mascara di Eva", "↑ {{Damage}} x2 Moltiplicatore Danni#↓ {{Tears}} x0.5 Moltiplicatore Lacrime#↓ {{Shotspeed}} -0.5 Velocità Colpi"},
	{"311", "Ombra di Giuda", "{{Player12}} Una volta morto Isaac resuscita nella forma di Giuda Oscuro con un x2 di Moltiplicatore Danni"},
	{"312", "Fiocco di Madda", "↑ {{Heart}} +1 Salute#{{HealingRed}} Cura di 1 cuore#Tutti i cuori rossi curano il doppio del loro valore"},
	{"313", "Manto Sacro", "Annulla il primo danno preso in una stanza"},
	{"314", "Coscione", "↑ {{Heart}} +1 Salute#↓ {{Speed}} -0.4 Velocità#Isaac può rompere le rocce camminandoci sopra"},
	{"315", "Calamita Strana", "Le lacrime di Isaac attraggono nemici, consumabili e ninnoli"},
	{"316", "Occhio Maledetto", "Carica una serie di 4 lacrime#{{Warning}} Subire danni a caricamento parziale teletrasporta Isaac in una stanza casuale"},
	{"317", "Liquido Misterioso", "Le lacrime di Isaac lasciano del liquido#Il liquido infligge 30 danni al secondo"},
	{"318", "Gemelli", "Famiglio per corpo a corpo#Infligge 6 danni da contatto al secondo"},
	{"319", "L'Altro Occhio di Caino", "Rimbalza attorno alla stanza#Spara in direzione di Isaac#{{Damage}} Infligge i danni di Isaac"},
	{"320", "L'Unico Amico di ???", "Mosca controllabile#Infligge 37.5 danni da contatto al secondo"},
	{"321", "Catene di Sansone", "Palla trascinabile che può rompere le rocce#Infligge 10.7 danni da contatto al secondo"},
	{"322", "Bebè Scemotto", "Imita le lacrime dei famigli bebè#Se ne si è privi, spara lacrime normali da 3.5 danni"},
	{"323", "Lacrime di Isaac", "Spara 8 lacrime in tutte le direzioni#Le lacrime copiano gli effetti delle lacrime di Isaac#Si ricarica sparando lacrime"},
	{"324", "Indefinito", "Teletrasporta Isaac in una Stanza {{TreasureRoom}} Tesoro, {{SecretRoom}} Segreta, {{SuperSecretRoom}} Super Segreta o {{ErrorRoom}} I AM ERROR"},
	{"325", "Forbici", "{{Timer}} La testa di Isaac diventa un famiglio stazionario fino all'uscita dalla stanza#La testa spara lacrime da 3.5 danni#Il corpo viene controllato separatamente e continua a sparare le lacrime di Isaac"},
	{"326", "Alito di Vita", "Tenere premuto il tasto USA svuota la barra di carica#A barra di carica vuota Isaac diventa temporaneamente invincibile#{{Warning}} Tenerlo premuto troppo a lungo infligge danni ad Isaac"},
	{"327", "La Polaroid", "Subire danni e finire con mezzo Cuore Rosso o meno rende Isaac temporaneamente invincibile"},
	{"328", "Il Negativo", "Subire danni e finire con mezzo Cuore Rosso o meno danneggia tutti i nemici nella stanza"},
	{"329", "Il Trattamento Ludovico", "Rimpiazza le lacrime di Isaac con una grande lacrima controllabile"},
	{"330", "Latte di Soia", "↑ {{Tears}} Più Lacrime: (delay/4)-2#↓ {{Damage}} x0.2 Moltiplicatore Danni#↓ {{Tearsize}} x0.5 Dimensioni Lacrime"},
	{"331", "Divinità", "↑ {{Damage}} +0.5 Danni#↑ {{Range}} +1.2 Gittata#↑ +0.8 Altezza Lacrime#↓ {{Tears}} -0.3 Lacrime#↓ {{Shotspeed}} -0.3 Velocità Colpi#Lacrime a ricerca#{{Damage}} Le lacrime ottengono un'aura che infligge x4.5 dei danni di Isaac al secondo"},
	{"332", "Bende di Lazzaro", "{{Player11}} Una volta morto Isaac resuscita nella forma di Lazzaro (Risorto)"},
	{"333", "La Mente", "Effetto di mappatura completa"},
	{"334", "Il Corpo", "↑ {{Heart}} +3 Salute"},
	{"335", "L'Anima", "{{SoulHeart}} +2 Cuori Celesti#Conferisce un'aura che repelle i nemici e i proiettili"},
	{"336", "Cipolla Morta", "↑ {{Range}} +0.25 Gittata#↑ {{Tearsize}} x1.5 Dimensioni Lacrime#↓ -0.5 Altezza Lacrime#↓ {{Shotspeed}} -0.4 Velocità Colpi#Lacrime penetranti + spettrali"},
	{"337", "Cipollotto Rotto", "{{Slow}} Rallenta ogni 4° stanza#13% di chance che tale stanza sia velocizzata"},
	{"338", "Il Boomerang", "Boomerang lanciabile#{{Petrify}} Pietrifica i nemici e infligge i danni di Isaac x2#Può afferrare e riportare oggetti"},
	{"339", "Spilla da Balia", "↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime#↑ {{Shotspeed}} +0.16 Velocità Colpi#{{BlackHeart}} +1 Cuore Nero"},
	{"340", "Pillola di Caffeina", "↑ {{Speed}} +0.3 Velocità#↑ Diminuzione Statura#{{Pill}} Genera una pillola casuale"},
	{"341", "Foto Strappata", "↑ {{Tears}} +0.7 Lacrime#↑ {{Shotspeed}} +0.16 Velocità Colpi"},
	{"342", "Cappello Blu", "↑ {{Heart}} +1 Salute#↑ {{Tears}} +0.7 Lacrime#↓ {{Shotspeed}} -0.16 Velocità Colpi"},
	{"343", "Chiave dell'Ometto", "↑ {{Luck}} +1 Fortuna#{{SoulHeart}} +1 Cuore Celeste#{{Key}} Genera 2 chiavi"},
	{"344", "Scatola di Cerini", "{{BlackHeart}} +1 Cuore Nero#{{Bomb}} Genera 3 bombe"},
	{"345", "Sintolio", "↑ {{Damage}} +1 Danni#↑ {{Range}} +2.5 Gittata"},
	{"346", "Uno Snack", "↑ {{Heart}} +1 Salute"},
	{"347", "Diplopia", "{{Warning}} MONOUSO {{Warning}}#Raddoppia tutti i piedistalli e i consumabili nella stanza"},
	{"348", "Placebo", "{{Pill}} Attiva l'effetto della pillola tenuta da Isaac senza usarla"},
	{"349", "Nichelino di Legno", "{{Coin}} 56% di chance di generare 1 moneta casuale"},
	{"350", "Shock Tossico", "{{Poison}} Entrare in una stanza avvelena tutti i nemici#I nemici uccisi lasciano una pozza di liquido#Il liquido infligge 30 danni al secondo"},
	{"351", "Mega Fagiolo", "Pietrifica tutti i nemici nella stanza#{{Poison}} Infligge 5 danni e avvelena i nemici nelle vicinanze#Rilascia una scossa sismica nella direzione in cui si sta muovendo#La scossa sismica può aprire stanze segrete e rompere rocce"},
	{"352", "Cannone di Vetro", "{{Warning}} Sparare il cannone riduce la salute di Isaac a mezzo cuore#Spara una grossa lacrima penetrante + spettrale che infligge i danni di Isaac x10"},
	{"353", "Bomber Boy", "{{Bomb}} +5 Bombe#Le bombe creano un'esplosione a croce"},
	{"354", "Crack Jack", "↑ {{Heart}} +1 Salute#{{Trinket}} Genera 1 ninnolo"},
	{"355", "Perle di Mamma", "↑ {{Range}} +1.25 Gittata#↑ +0.5 Altezza Lacrime#↑ {{Luck}} +1 Fortuna"},
	{"356", "Batteria per Auto", "{{Battery}} Usare un oggetto attivo attiva due volte il suo effetto"},
	{"357", "Scatola degli Amici", "{{Timer}} Raddoppia tutti i famigli fino all'uscita dalla stanza#{{Collectible113}} Se Isaac non ha famigli conferisce un \"Bebè Demone\" fino all'uscita dalla stanza"},
	{"358", "Il Genio", "Lacrime spettrali#Isaac spara in diagonale 2 lacrime alla volta"},
	{"359", "Chiodo schiaccia Chiodo", "↑ {{Damage}} +1.5 Danni#Aumenta la spinta delle lacrime"},
	{"360", "Incubo", "Spara lacrime con lo stesso rateo di fuoco, danni ed effetti di quelle di Isaac"},
	{"361", "Dono del Destino", "Spara lacrime con gli stessi danni ed effetti di quelle di Isaac#Spara alla metà del rateo di fuoco degli altri famigli"},
	{"362", "Bauletto", "Genera 1 consumabile casuale ogni qualche stanza"},
	{"363", "Eterno Protettore", "Orbitale#Infligge 105 danni da contatto al secondo#Blocca e attrae i proiettili nemici#{{EternalHeart}} Bloccare dieci proiettili in una stanza genera 1 Cuore Eterno"},
	{"364", "Friend Zone", "Mosca orbitale a medio raggio#Infligge 45 danni da contatto al secondo"},
	{"365", "Mosca Smarrita", "Si muove lungo i muri/ostacoli#Infligge 105 danni da contatto al secondo"},
	{"366", "Bomba a Grappolo", "{{Bomb}} +5 Bombe#Le bombe di Isaac's bombs si sparpagliano in 2-4 piccole bombe"},
	{"367", "Bombe Appiccicose", "{{Bomb}} +5 Bombe#Le bombe di Isaac si attaccano ai nemici#Uccidere un nemico con una bomba genera dei ragni blu"},
	{"368", "Epifora", "↑ {{Tears}} Sparare verso una direzione diminuisce gradualmente il delay tra lacrime fino al 200%"},
	{"369", "Continuum", "↑ {{Range}} +2.25 Gittata#↑ +1.5 Altezza Lacrime#Lacrime spettrali#Le lacrime possono passare attraverso un lato dello schermo e uscire dall'altro"},
	{"370", "Sig. Bambolotto", "↑ {{Tears}} +0.7 Lacrime#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime#{{UnknownHeart}} Genera 3 cuori casuali"},
	{"371", "Maledizione della Torre", "{{Warning}} Subire danni genera 6 Bombe Troll#Le Bombe Troll ricevono gli effetti delle bombe di Isaac"},
	{"372", "Bebè Carico", "Ogni 30 secondi in una stanza non completata, il famiglio può:#{{Battery}} Generare una pila (max 2 per stanza)#{{Battery}} Aggiungere una carica all'oggetto attivo (max 2 per stanza)#{{Petrify}} Pietrificare tutti i nemici nella stanza"},
	{"373", "Cecchino", "↑ {{Damage}} Le lacrime che colpiscono consecutivamente i nemici conferiscono +25% dei danni (max +100%)#I colpi mancati hanno una chance di resettare il moltiplicatore"},
	{"374", "Luce Sacra", "10% di chance di sparare lacrime sacre, che quando colpiscono generano un raggio di luce#{{Luck}} 50% di chance con 9 di Fortuna#{{Damage}} Il raggio infligge i danni di Isaac x4"},
	{"375", "Cascospite", "Conferisce immunità alle esplosioni, scosse sismiche e ai pestoni di Mamma e Satana#25% di chance di riflettere i proiettili nemici"},
	{"376", "Rifornimento", "Genera 3 consumabili casuali#Comprare oggetti al Negozio lo rifornisce istantaneamente"},
	{"377", "Sacca Brulicante", "I ragni nemici non bersagliano o infliggono danni da contatto ad Isaac"},
	{"378", "La Numero Due", "Tenere premuto il tasto di fuoco per 2.35 secondi genera una Bomba Popò"},
	{"379", "Pupula Duplex", "↑ {{Tearsize}} x2 Dimensioni Lacrime#Lacrime spettrali"},
	{"380", "Pay to Play", "{{Coin}} +5 Monete#{{Coin}} Le porte con una singola toppa vanno aperte con le monete al posto delle chiavi"},
	{"381", "Benedizione di Eden", "↑ {{Tears}} +0.7 Lacrime#Conferisce un oggetto casuale all'inizio della prossima run"},
	{"382", "Sfera Amikè", "Può essere lanciata ai nemici per catturarli#{{Friendly}} Usare l'oggetto dopo aver catturato un nemico lo genera come compagno amichevole"},
	{"383", "Detonatore di Lacrime", "Divide tutte le lacrime di Isaac presenti sullo schermo in cerchi da 6 lacrime"},
	{"384", "Mini Gastrina", "{{Chargeable}} Si getta e rimbalza per la stanza ad una velocità che dipende dalla quantità di carica#Infligge dai 5 ai 90 danni da contatto al secondo in base alla velocità"},
	{"385", "Bumbo", "{{Coin}} Raccolgie le monete nelle vicinanze#Aumenta di livello dopo aver raccolto 6, 12, e 24 monete#Lv2: Chance di generare un oggetto a completamento stanza#Lv3: Spara lacrime capaci di generare monete quando colpiscono#Lv4: Insegue i nemici, occasionalmente lascia una bomba, se raccoglie monete può generare un oggetto"},
	{"386", "D12", "Rilancia gli ostacoli in altri ostacoli casuali (ad es. cacca, vasi, TNT, cacca rossa, blocchi di pietra etc.)"},
	{"387", "Incensiere", "{{Slow}} Famiglio circondato da un grande alone che rallenta i nemici e i proiettili al suo interno"},
	{"388", "Scrocchiave", "{{Key}} Raccoglie chiavi nelle vicinanze#{{Chest}} In cambio genera bauli casuali"},
	{"389", "Sacco di Rune", "{{Rune}} Genera 1 runa casuale ogni 5-6 stanze"},
	{"390", "Serafino", "Spara lacrime di \"Sacro Cuore\"#Infligge 10 danni a lacrima"},
	{"391", "Tradimento", "{{Charm}} Subire danni ammalia tutti i nemici nella stanza"},
	{"392", "Zodiaco", "Conferisce un effetto di un oggetto dello zodiaco casuale ad ogni piano"},
	{"393", "Bacio del Serpente", "{{Poison}} 15% di chance di sparare lacrime velenose#{{Poison}} Al contatto con i nemici li avvelena#{{BlackHeart}} I nemici avvelenati una volta morti hanno una chance di lasciare 1 Cuore Nero"},
	{"394", "Mirino", "↑ {{Tears}} +0.7 Lacrime#↑ {{Range}} +3.15 Gittata#↑ +0.3 Altezza Lacrime#Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno"},
	{"395", "Tecn. X", "{{Chargeable}} Le lacrime di Isaac vengono rimpiazzate da un anello laser caricabile#Le dimensioni dell'anello aumentano in base alla quantità di carica"},
	{"396", "Bisturi", "Crea fino a 2 portali tra cui si può viaggiare#Possono essere posti in stanze diverse"},
	{"397", "Raggio Traente", "↑ {{Tears}} +0.5 Lacrime#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime#↑ {{Shotspeed}} +0.16 Velocità Colpi#Le lacrime di Isaac si muovono sempre lungo un raggio di luce di fronte a lui"},
	{"398", "Trip Divino", "{{Shrink}} Le lacrime possono rimpicciolire i nemici#I nemici rimpiccioliti possono essere schiacciati e uccisi camminandoci sopra"},
	{"399", "Fauci dell'Oblio", "↑ {{Damage}} +1 Danni#{{Chargeable}} Sparare lacrime per 2.35 secondi e rilasciare il tasto di fuoco crea un anello di zolfo fuso nero attorno ad Isaac#{{BlackHeart}} I nemici uccisi dall'anello nero hanno una chance di lasciare Cuori Neri"},
	{"400", "Lancia del Destino", "Isaac impugna una lancia davanti a lui#{{Fear}} La lancia infligge il doppio dei suoi danni e al contatto può spaventare i nemici"},
	{"401", "Explosivo", "25% di chance di sparare lacrime a bomba adesiva#Le lacrime a bomba adesiva non infliggono danni quando colliscono ed esplodono dopo qualche secondo"},
	{"402", "Caos", "Tutti gli oggetti vengono scelti da una categoria di oggetti casuale#Genera 1-6 consumabili casuali"},
	{"403", "Ragno Moddato", "Mostra le barre di salute e i danni subiti di tutti i nemici#Al contatto con i nemici infligge effetti di stato casuali#Genera pile ad intervalli casuali"},
	{"404", "Bebè Scoreggione", "Blocca i proiettili#Se colpito, 10% di chance di scorreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici"},
	{"405", "Bug Rompigioco", "Rimbalza per la stanza#Infligge 120 danni al secondo e al contatto con i nemici applica effetti di stato casuale"},
	{"406", "D8", "Moltiplica le statistiche dei danni, lacrime, gittata e velocità di Isaac in un range tra il x0.5 e il x2#I moltiplicatori vengono rilanciati ad ogni uso"},
	{"407", "Purezza", "Dona un'aura colorata ad Isaac, a seconda dell'aura vi sono vantaggi diversi#L'aura cambia subendo danni#Rosso = +4.0 di Danno#Blue = -4 di Intervallo fra le lacrime#Giallo = +0.5 di Velocità#Arancione = +7.5 di Gittata"},
	{"408", "Athame", "Subire danni crea un anello di zolfo fuso nero attorno ad Isaac#{{BlackHeart}} I nemici uccisi dall'anello hanno una chance del 15% di lasciare 1 Cuore Nero"},
	{"409", "Recipiente Vuoto", "{{BlackHeart}} +2 Cuori Neri#{{EmptyHeart}} Quando Isaac non ha Cuori Rossi:#Volo#Per ogni 40 secondi passati in una stanza ostile si ottiene uno scudo per 10 secondi"},
	{"410", "Malocchio", "3.33% di chance di sparare un occhio#{{Luck}} 10% chance con 20 di Fortuna#L'occhio si muove in linea retta e spara lacrime nella stessa direzione di Isaac"},
	{"411", "Sangue Furente", "↑ {{Damage}} +0.5 Danni per ogni nemico ucciso nella stanza#Si massimizza a +5 Danni dopo 10 uccisioni"},
	{"412", "Immorale Concezione", "Subire danni per 15 volte genera un famiglio demoniaco permanente#Dopo due famigli, ne occorrono 30 invece di 15#Si massimizza a 4 famigli"},
	{"413", "Immacolata Concezione", "Raccogliere 15 cuori genera un famiglio angelico permanenente#Si massimizza a 5 famigli#{{SoulHeart}} Se sono stati presi tutti i famigli, genera invece 1 Cuore Celeste"},
	{"414", "Più Alternative", "{{TreasureRoom}} Permette ad Isaac di scegliere tra 2 oggetti nelle Stanze dei Tesori"},
	{"415", "Corona di Luce", "{{SoulHeart}} +2 Cuori Celesti#Se Isaac non ha Portacuori danneggiati:#↑ {{Damage}} x2 Moltiplicatore Danni#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime#↓ {{Shotspeed}} -0.3 Velocità Colpi#Subire danni rimuove l'effetto per la stanza"},
	{"416", "Tasche profonde", "Permette ad Isaac di portare due rune/carte/pillole"},
	{"417", "Succuba", "Rimbalza per la stanza circondata da un'aura danneggiante che infligge i danni di Isaac x1.29 al secondo#↑ {{Damage}} x1.5 Moltiplicatore Danni se dentro l'aura"},
	{"418", "Torta di Canditi", "Ogni lacrima di Isaac ottiene un effetto diverso"},
	{"419", "Teletrasporto 2.0", "Teletrasporta Isaac in una stanza non completata#Gerarchia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"},
	{"420", "Polvere nera", "Camminare in cerchio tracccia un pentagramma per terra, il quale infligge 10 danni a tocco"},
	{"421", "Fagiolo rene", "{{Charm}} Ammalia e infligge 5 danni a tutti i nemici a distanza ravvicinata"},
	{"422", "Clessidra Luminosa", "Riporta Isaac nella stanza precedente e annulla tutte le azioni svolte nella stanza in cui l'oggetto è stato usato"},
	{"423", "Cerchio Protettivo", "Isaac viene circondato da una grande aureola che al contatto infligge i suoi danni al secondo#Chance di riflettere i proiettili nemici"},
	{"424", "Testa di Sacco", "I consumabili hanno una chance di venire rimpiazzati da un {{GrabBag}sacco:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Genera un sacco"},
	{"425", "Luce Notturna", "{{Slow}} Genera un cono di luce rallentante di fronte ad Isaac"},
	{"426", "Fan Ossessionato", "Riproduce i movimenti di Isaac con un delay di 3 secondi#Infligge 30 danni al secondo"},
	{"427", "Blocco di TNT", "Genera un blocco di TNT spostabile#Usare l'oggetto per una seconda volta nella stessa stanza fa esplodere a distanza il blocco"},
	{"428", "Pigiamino", "{{HealingRed}} Salute al massimo#{{SoulHeart}} +4 Cuori Celesti"},
	{"429", "Testa del Mercante", "{{Coin}} Colpire un nemico con una lacrima ha il 5% di chance di generare un Penny"},
	{"430", "Papà Mosca", "Riproduce i movimenti di Isaac con un delay di 1 secondo#Spara lacrime che infliggono i danni di Isaac ai nemici nelle vicinanze"},
	{"431", "Bebè Multidimensionale", "Riproduce i movimenti di Isaac con un delay di 2 secondi#Le lacrime che gli passano attraverso sono raddoppiate e ottengono Più Gittata e Velocità Colpi"},
	{"432", "Bombe Glitterate", "{{Bomb}} +5 Bombe#{{Charm}} Le bombe di Isaac quando esplodono hanno il 25% di chance di lasciare 1 consumabile casuale e il 15% di chance di ammaliare i nemici"},
	{"433", "La Mia Ombra", "{{Fear}} Subire danni spaventa tutti i nemici e genera un Assalitore nero amichevole#L'Assalitore infligge 5 danni al secondo"},
	{"434", "Barattolo di Mosche", "Uccidere un nemico aggiunge 1 mosca blu nelle giara, fino a un totale di 20#Usare l'oggetto libera tutte le mosche"},
	{"435", "Mini Loki", "Spara 4 lacrime in un pattern a croce#Infligge 3.5 danni a lacrima"},
	{"436", "Latte!", "{{Tears}} Subire danni conferisce più Lacrime per il resto della stanza"},
	{"437", "D7", "Ripristina la stanza e resuscita tutti i nemici#Può essere usato per ottenere più ricompense per completamento stanza da una singola stanza#Se usata dopo una lotta con Avarizia, rilancia la stanza in un ordinario Negozio/Stanza Segreta"},
	{"438", "Ciuccio", "↑ {{Tears}} +0.75 Lacrime#↑ Diminuzione Statura#{{SoulHeart}} +1 Cuore Celeste"},
	{"439", "Scatola di Mamma", "{{Trinket}} Genera 1 ninnolo casuale#Mentre viene tenuto:#↑ {{Luck}} +1 Fortuna#{{Trinket}} Raddoppia gli effetti dei ninnoli"},
	{"440", "Calcolo Renale", "↑ +2 Altezza Lacrime#↓ {{Speed}} -0.2 Velocità#↓ {{Range}} -17 Gittata#Isaac occasionalmente smette di sparare e carica un attacco che rilascia uno scroscio di lacrime e un calcolo renale"},
	{"441", "Mega Sbotto", "{{Timer}} Spara un grosso raggio di sangue di Mega Satana per 15 secondi#Il raggio persiste tra stanze e piani"},
	{"442", "Corona del Principe delle Tenebre", "Se si rimane con 1 Cuore Rosso pieno:#↑ {{Tears}} +0.75 Lacrime#↑ {{Range}} +1.5 Gittata#↑ +1 Altezza Lacrime#↑ {{Shotspeed}} +0.2 Velocità Colpi"},
	{"443", "Mela!", "↑ {{Tears}} +0.3 Lacrime#{{Damage}} 6.66% di chance di sparare lamette che infliggono i danni di Isaac x4#{{Luck}} 100% di chance con 14 di Fortuna"},
	{"444", "Matita", "Ogni 15 lacrime Isaac spara un ammasso di lacrime#Le lacrime nell'ammasso infliggono il doppio dei danni"},
	{"445", "Canino", "↑ {{Speed}} +0.1 Velocità#↑ {{Damage}} +0.3 Danni#{{SecretRoom}}{{SuperSecretRoom}} In stanze adiacenti a Stanze Segrete/Super Segrete si sente un lupo ululare#{{LadderRoom}} In stanze con una roccia con cunicolo si sente un cane abbaiare"},
	{"446", "Dente Marcio", "{{Poison}} Isaac mentre spara è circondato da un'aura verde che avvelena i nemici"},
	{"447", "Fagiolo Aleggiante", "Sparare senza fermarsi per 7.5 secondi genera una nube di puzzo#La nube infligge i danni di Isaac per 5 volte al secondo#La nube dura 15 secondi, e sparandole si può spostarla"},
	{"448", "Scheggia di Vetro", "Una volta subiti danni:#{{Heart}} 25% di chance di generare 1 Cuore Rosso#{{Collectible214}} 10% di chance di ottenere ↑ {{Range}} +5 Gittata e di lasciare una scia di sangue fino all'uscita dalla stanza"},
	{"449", "Placca di Metallo", "{{SoulHeart}} +1 Cuore Celeste#{{Confusion}} I proiettili nemici hanno il 25% di chance di venire riflessi come lacrime stordenti"},
	{"450", "Occhio di Avarizia", "Ogni 20 lacrime, Isaac spara una lacrima-moneta che infligge il doppio dei danni#{{Petrify}} I nemici colpiti dalla moneta vengono pietrificati e tramutati in oro#{{Coin}} Un nemico dorato ucciso butta a terra 1-4 monete#{{Warning}} Sparare una lacrima-moneta costa 1 moneta"},
	{"451", "Tappetino del Cartomante", "{{Card}} Genera 1 carta#{{Card}} Gli effetti delle carte sono raddoppiati o potenziati"},
	{"452", "Vene Varicose", "Subire danni fa sparare un cerchio di 10 lacrime attorno ad Isaac#Le lacrime infliggono i danni di Isaac +25"},
	{"453", "Frattura Esposta", "↑ {{Range}} +1.5 Gittata#↑ +1 Altezza Lacrime#Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa"},
	{"454", "Polidattilia", "Quando viene raccolto genera una {{Rune}} runa, {{Card}} carta o {{Pill}} pillola#Permette ad Isaac di portare 2 rune/carte/pillole"},
	{"455", "Moneta Perduta di Papà", "↑ {{Range}} +1.5 Gittata#↑ +1 Altezza Lacrime#{{Luck}} Genera un Penny Fortunato"},
	{"456", "Spuntino di Mezzanotte", "↑ {{Heart}} +1 Salute"},
	{"457", "Testa Conica", "{{SoulHeart}} +1 Cuore Celeste#20% di chance di annullare i danni subiti"},
	{"458", "Ombelico", "{{Trinket}} Permette ad Isaac di portare 2 ninnoli#{{Trinket}} Genera 1 ninnolo casuale"},
	{"459", "Sinusite", "20% di chance di sparare una caccola appiccicosa#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo e rimangono incollate per 60 secondi#{{Luck}} Non è influenzato dalla Fortuna"},
	{"460", "Glaucoma", "{{Confusion}} 5% di chance di sparare lacrime stordenti#Scurisce leggermente lo schermo"},
	{"461", "Parassitoide", "15% di chance di sparare sacche ovali#{{Luck}} 50% di chance con 5 di Fortuna#{{Slow}} Quando le sacche ovali colpiscono generano del liquido rallentante e un ragno o mosca blu"},
	{"462", "Occhio di Belial", "↑ {{Range}} +1.5 Gittata#↑ +1 Altezza Lacrime#Lacrime penetranti#Colpire un nemico rende la lacrima a ricerca e ne raddoppia i danni"},
	{"463", "Acido Solforico", "↑ {{Damage}} +0.3 Danni#Le lacrime di Isaac possono distruggere le rocce e aprire le porte"},
	{"464", "Glifo dell'Equilibrio", "{{SoulHeart}} +2 Cuori Celesti#I nemici lasciano qualsiasi consumabile di cui Isaac ha più bisogno"},
	{"465", "Levetta Analogica", "↑ {{Tears}} +0.3 Lacrime#Permette ad Isaac di sparare lacrime in tutte le direzioni"},
	{"466", "Contagio", "{{Poison}} Il primo nemico ucciso in una stanza esplode e avvelena tutti i nemici nelle vicinanze#I nemici avvelenati quando muoiono esplodono e avvelenano i nemici nelle vicinanze"},
	{"467", "Dito!", "{{Damage}} Infligge costantemente il 10% dei danni di Isaac nella direzione che indica"},
	{"468", "Ombroso", "Segue i movimenti di Isaac con un delay di 1 secondo#Infligge 30 danni da contatto al secondo#{{Friendly}} Dopo aver inferto 600 danni, viene assorbito da Isaac, aumentando i suoi danni da contatto e generando Assalitori amichevoli"},
	{"469", "Depressione", "Lascia una scia di liquido#Il liquido infligge 6 danni al secondo#I nemici che toccano la nuvola possono essere colpiti da un raggio di luce sacra"},
	{"470", "Calmina", "Rimbalza per la stanza#Infligge 30 danni da contatto al secondo#Quando Isaac spara smette di muoversi#Mentre è fermo blocca i proiettili"},
	{"471", "Mini Monstro", "{{Chargeable}} Carica un attacco a raffica simile a quello di {{Collectible229}} \"Polmone di Monstro\"#Ogni lacrima infligge 3.5 danni"},
	{"472", "Re Bebè", "È seguito dagli altri famigli#Quando Isaac spara smette di muoversi#Quando Isaac smette di sparare si teletrasporta da lui"},
	{"473", "Cicciottona", "Si lancia in avanti molto lentamente#Blocca i proiettili#Infligge 40.5 danni da contatto al secondo"},
	{"474", "Tonsilla", "Blocca i proiettili nemici"},
	{"475", "Piano C", "{{Warning}} MONOUSO {{Warning}}#Infligge 9,999,999 danni a tutti i nemici#{{Warning}} Isaac muore dopo 3 secondi"},
	{"476", "D1", "Duplica 1 consumabile casuale nella stanza"},
	{"477", "Vuoto", "Consuma tutti i piedistalli nella stanza#Oggetti attivi: Attiva i loro effetti, e lo stesso vale per ogni uso futuro di \"Vuoto\"#↑ Gli oggetti passivi conferiscono due aumenti a statistiche casuali"},
	{"478", "Pausa", "Blocca tutti i nemici nella stanza fino a quando Isaac non spara#Toccare un nemico bloccato infligge comunque danni ad Isaac#I nemici si sbloccano dopo 30 secondi"},
	{"479", "Fonderia", "{{Trinket}} Consuma i ninnoli tenuti da Isaac e conferisce permanentemente i loro effetti#Aumenta la chance di generare ninnoli"},
	{"480", "Compost", "Converte i consumabili in mosche o ragni blu#Raddoppia tutte le mosche e i ragni blu#Se Isaac non ha alcuna mosca o ragno blu ne genera 1"},
	{"481", "Dataminer", "↑ Aumento di una statistica casuale#↓ Diminuzione di una statistica casuale#{{Timer}} Fino all'uscita dalla stanza un effetto delle lacrime casuale#{{Blank}} Corrompe tutti gli sprite e la musica della stanza"},
	{"482", "Telecomando", "Cambia il tuo personaggio in uno casuale#Rimuove l'oggetto preso più di recente"},
	{"483", "Mamma Mega!", "{{Warning}} MONOUSO {{Warning}}#Coinvolge tutto il piano#Fa esplodere tutti gli ostacoli#Infligge 200 danni a tutti i nemici#Apre le stanze segrete#Apre la porta per Boss Rush e per Calma a prescindere dal tempo"},
	{"484", "Aspe', Cosa?", "Se usato spinge via i nemici e genera una scossa sismica attorno ad Isaac#La scossa sismica può aprire le stanze e distruggere le rocce"},
	{"485", "Penny Storto", "50% di chance di raddoppiare tutti gli oggetti, consumabili e bauli nella stanza#50% di chance di rimuovere oggetti / consumabili nella stanza e di generare 1 moneta"},
	{"486", "Lametta Smussata", "Ferisce Isaac senza togliere salute#Attiva gli effetti di oggetti che richiedono di subire danni"},
	{"487", "Pelapatate", "{{EmptyHeart}} Rimuove 1 Portacuori per:#↑ {{Damage}} +0.2 Danni#{{Collectible73}} Un \"Cubo di Carne\"#{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Range}} +5 Gittata#{{Collectible214}} Lascia una scia di sangue"},
	{"488", "Metronomo", "Conferisce l'effetto di un oggetto casuale fino all'uscita dalla stanza"},
	{"489", "D Infinito", "Attiva l'effetto di un dado casuale ad ogni uso"},
	{"490", "Anima di Eden", "{{Warning}} MONOUSO {{Warning}}#Genera 2 oggetti casuali in base alla categoria di oggetti della stanza corrente#Parte senza cariche"},
	{"491", "Bebè Acido", "{{Pill}} Genera una pillola casuale ogni 3 stanze#{{Poison}} Usare una pillola avvelena i nemici nella stanza"},
	{"492", "YO SENTI QUA!", "↑ {{Luck}} +1 Fortuna#Evidenzia le posizioni di {{SecretRoom}} stanze segrete, rocce colorate e {{LadderRoom}} cunicoli"},
	{"493", "Adrenalina", "Per ogni Portacuori vuoto:#↑ {{Damage}} +0.2 Danni"},
	{"494", "Scala di Giacobbe", "All'impatto le lacrime generano 1-2 scintille elettriche#Le scintille infliggono la metà dei danni di Isaac"},
	{"495", "Peperoncino Fantasma", "Chance di sparare una fiamma rossa che blocca i proiettili nemici e infligge danni da contatto#La fiamma sparisce dopo aver inflitto danni o bloccato proiettili per 5 volte"},
	{"496", "Eutanasia", "3.33% di chance di sparare un ago#{{Luck}} 100% di chance con 15 di Fortuna#Gli aghi uccidono istantaneamente i nemici normali, scoppiando in 10 lacrime#{{Damage}} Contro i boss gli aghi infliggono i danni di Isaac x3"},
	{"497", "Mutande Camo", "Entrare in una stanza confonde tutti i nemici fino a quando Isaac non inizia a sparare"},
	{"498", "Dualismo", "{{AngelDevilChance}} Nei casi in cui comparirebbe una Stanza dell'Angelo o del Diavolo vengono generate entrambe#Entrare in una delle due stanze fa sparire l'altra"},
	{"499", "Eucaristia", "{{AngelChance}} 100% di chance di generare una Stanza dell'Angelo"},
	{"500", "Sacco di Sacchi", "Genera in sacco ogni 5-6 stanze"},
	{"501", "Gozzo di Avarizia", "{{Heart}} +1 Portacuori per ogni 25 monete ottenute dopo aver preso \"Gozzo di Avarizia\""},
	{"502", "Brufolone", "{{Slow}} Sparando viene occasionalmente scagliata una lacrima con liquido bianco che infligge il doppio dei danni e rallenta i nemici#Subire danni fa sparare una lacrima con liquido bianco"},
	{"503", "Piccolo Corno", "5% di chance di sparare lacrime che uccidono istantaneamente i nemici#{{Luck}} 20% di chance con 15 di Fortuna#Isaac infligge 3.5 danni da contatto"},
	{"504", "Pepita Marrone", "Genera una mosca torretta che spara ai nemici#Ogni colpo infligge 2 danni"},
	{"505", "Pokè Go", "{{Friendly}} Entrare in una stanza ostile ha una chance di generare un nemico amichevole"},
	{"506", "Pugnalatore", "{{BleedingOut}} Colpire un nemico da dietro infligge il doppio dei danni e causa sanguinamento, che infligge il 10% della salute massima del nemico ogni 5 secondi"},
	{"507", "Cannuccia Appuntita", "{{Damage}} Infligge a tutti i nemici i danni di Isaac +10% della salute massima di ciascun nemico#{{HalfHeart}} Infliggere danni con la cannuccia può generare mezzi cuori#{{HalfSoulHeart}} Non avere portacuori genera invece Cuori Celesti"},
	{"508", "Rasoio di Mamma", "{{BleedingOut}} Orbitale che causa sanguinamento, infliggendo 10% della salute massima del nemico di danno ogni 5 secondi#{{Damage}} Infligge i danni di Isaac x3 al secondo#Non blocca i proiettili"},
	{"509", "Occhio Insanguinato", "Orbitale che ogni 2 secondi spara una lacrima in una direzione casuale#Infligge 3.5 danni a lacrima#Infligge 30 danni da contatto al secondo#Non blocca i proiettili"},
	{"510", "Delirante", "{{Friendly}} Genera una forma boss di Delirio amichevole fino all'uscita dalla stanza"},
	{"511", "Moscarrabbiata", "Orbita attorno a un nemico casuale finché esso non muore#Infligge 30 danni da contatto agli altri nemici"},
	{"512", "Buco Nero", "Buco nero lanciabile che risucchia qualsiasi cosa#Infligge 0.4 danni per tocco#Distrugge rocce nelle vicinanze#Dura 6 secondi"},
	{"513", "Pagliaccio", "↑ {{Damage}} +0.1 Danni#{{SoulHeart}} +1 Cuore Celeste#{{Charm}} Ammalia/spaventa i nemici in maniera casuale#Subire ha una chance casuale di generare una Cacca Arcobaleno"},
	{"514", "Modem Sfasciato", "Fa sì che alcuni nemici o proiettili si blocchino ad intermittenza per poco tempo#25% di chance di raddoppiare le ricompense di completamento stanza"},
	{"515", "Dono Segreto", "{{Warning}} MONOUSO {{Warning}}#Genera un oggetto casuale in base alla categoria di oggetti della stanza corrente#Chance di generare invece \"Un Pezzo di Carbone\" o \"La Cacca\""},
	{"516", "Irrigatore", "Genera un irrigatore che spara attorno a sé le stesse lacrime di Isaac"},
	{"517", "Bombe Leste", "{{Bomb}} +7 Bombe#Annulla il delay del piazzamento delle bombe"},
	{"518", "Amico in Scatola", "Famiglio dalle sembianze di un bebè del co-op casuale#Ha effetti delle lacrime casuali#Gli effetti cambiano ad ogni piano"},
	{"519", "Mini Delirio", "Si trasforma ogni 10 secondi in un famiglio casuale"},
	{"520", "Morsetti", "Uccidere 15 enemies aggiunge 1 carica all'oggetto attivo"},
	{"521", "Coupon", "Rende gratuito un oggetto casuale nel {{Shop}} Negozio o nella {{DevilRoom}} Stanza del Diavolo#Tenere l'oggetto garantisce che almeno un oggetto nel Negozio sia in saldo"},
	{"522", "Telecinesi", "Ferma tutti i proiettili che si avvicinano ad Isaac per 3 secondi e in seguito li rilancia via"},
	{"523", "Scatola per Traslochi", "Conserva tutti i consumabili e oggetti della stanza corrente#Usare di nuovo l'oggetto butta a terra tutto nel piano#Permette ad Isaac di spostare tra le stanze la sua roba"},
	{"524", "Tecnologia Zero", "Le lacrime di Isaac sono connesse tra loro da raggi d'elettricità#I raggi infliggono i danni di Isaac"},
	{"525", "Lebbra", "Subire danni genera un orbitale che blocca i proiettili#Si massimizza a 3 orbitali#Gli orbitali vengono distrutti se subiscono troppi danni"},
	{"526", "7 Sigilli", "Genera un piccolo famiglio cavaliere che genera locuste#Il cavaliere e le locuste cambiano ogni 10 secondi"},
	{"527", "Mr. GUARDI!", "Mostra per qualche secondo un cursore spostabile, dopodiché evoca uno spettro che, in base alla posizione del cursore, può:#Aprire porte o bauli#Recuperare un oggetto#50% di chance di rubare dal Negozio/Stanza del Diavolo#Attaccare un nemico finché non muore#Esplodere muri, rocce, negozianti, statue di angeli, macchine o scrocconi"},
	{"528", "Prisma Angelico", "Prisma orbitale#Le lacrime amiche che lo colpiscono si dividono in 4"},
	{"529", "Pop!", "Le lacrime di Isaac rimbalzano tra loro e quando smettono di muoversi spariscono"},
	{"530", "Lista Nera", "Uccidere i nemici nell'ordine imposto dal marchio {{DeathMark}} sopra di loro conferisce 1 consumabile casuale o un aumento di una statistica"},
	{"531", "Emolacria", "↑ {{Damage}} x1.31 Moltiplicatore Danni#↓ {{Tears}} x2 Moltiplicatore Delay tra Lacrime#↓ {{Tears}} +10 Delay tra Lacrime #Le lacrime di Isaac volano in un arco e all'impatto scoppiano in laccrime più piccole"},
	{"532", "Lacrifagia", "Le lacrime di Isaac rallentano progressivamente, per poi fermarsi e scoppiare in 8 lacrime più piccole#Le lacrime possono fondersi tra loro per ingrandirsi"},
	{"533", "Trisagion", "Rimpiazza le lacrime di Isaac con raggi di luce penetranti#I raggi infliggono il 33% dei danni ma possono colpire più volte i nemici"},
	{"534", "Zainetto", "Permette ad Isaac di tenere 2 oggetti attivi#Gli oggetti possono eessere scambiati con il tasto di rilascio ({{ButtonRT}})"},
	{"535", "Copertina", "{{Heart}} Cura 1 cuore#{{SoulHeart}} +1 Cuore Celeste#{{HolyMantle}} Entrare in una stnaza boss conferisce uno scudo di \"Manto Sacro\" (previene i danni per 1 volta)"},
	{"536", "Altare Sacrificale", "{{Warning}} MONOUSO {{Warning}}#Sacrifica fino a 2 famigli e genera un oggetto del Diavolo per ogni sacrificio#{{Coin}} Trasforma i ragni/mosche blu in monete"},
	{"537", "Mini Conato", "{{Pill}} Quando viene raccolto genera una pillola casuale#Spara una striscia di liquido#Il tipo di liquido cambia ad ogni uso di una pillola"},
	{"538", "Biglie", "{{Trinket}} Genera 3 ninnoli casuali#{{Collectible479}} Subire danni ha il 10% di chance di consumare il ninnolo tenuto da Isaac e di conferire permanentemente i suoi effetti"},
	{"539", "Uovo Misterioso", "{{Friendly}} Subire danni genera un nemico amichevole#Genera amici più forti quanto più vengono completate stanze senza subire danni"},
	{"540", "Sasso Piatto", "Le lacrime di Isaac rimbalzano sul pavimento e causa danni da schizzi ad ogni rimbalzo"},
	{"541", "Midollo", "{{Heart}} Genera 3 Cuori Rossi#{{EmptyBoneHeart}} +1 Cuore Osseo"},
	{"542", "Costola Fluttuante", "Orbitale#Riflette i proiettili nemici"},
	{"543", "Terra Consacrata", "Subire danni genera una Cacca Bianca#Dentro l'aura della cacca:#↑ {{Tears}} x0.5 Moltiplicatore Delay tra Lacrime#Chance di bloccare i danni"},
	{"544", "Costola Appuntita", "Levita di fronte ad Isaac#Infligge i danni di Isaac x6 al secondo"},
	{"545", "Libro dei Morti", "{{Friendly}} Genera un osso orbitale o un Ossuto amichevole per ogni nemico ucciso nella stanza"},
	{"546", "Anello di Papà", "{{Petrify}} Conferisce un'aura che pietrifica i nemici"},
	{"547", "Documenti per il Divorzio", "↑ {{Tears}} +0.7 Lacrime#{{EmptyBoneHeart}} +1 Cuore Osseo#{{Trinket21}} Genera il ninnolo \"Foglio Misterioso\""},
	{"548", "Mandibola", "Famiglio che opera a mo' di Boomerang#Infligge 7 danni da contatto#Può afferrare e riportare consumabili"},
	{"549", "Osteogenesi Imperfetta", "{{EmptyBoneHeart}} Rimpiazza tutti i Cuori Rossi di Isaac con 6 Cuori Ossei vuoti#Se si perde un Cuore Osseo:#↑ {{Tears}} +0.5 Lacrime#Spara 8 lacrime ossute in tutte le direzioni"},
	{"550", "Pala Rotta", "I piedi di Mamma cercano costantemente di schiacciare Isaac#Usare l'oggetto ferma i pestoni fino all'uscita dalla stanza#{{Warning}} (Prova a vincere la Boss Rush con l'oggetto!)"},
	{"551", "Pala Rotta", "Completa \"Pala di Mamma\"#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\""},
	{"552", "Pala di Mamma", "Genera una botola per il prossimo piano#10% di chance di una {{LadderRoom}} botola per un cunicolo#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\""},
}

---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Nessun effetto",
	[35] = {40, 80}, -- The Necronomicon
	[37] = {" una ", " due ", "grossa bomba", "{{CR}}grosse bombe", "infligge", "{{CR}}infliggono"}, -- Mr. Boom
	[38] = {10, 20}, -- Tammy's Head
	[45] = {1, 2, "cuore", "{{CR}}cuori"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist's Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {1, 2}, -- Book of Revelations
	[83] = {1, 2}, -- The Nail
	[85] = {1, 2, "carta", "{{CR}}carte"}, -- Deck of Cards
	[86] = {120, 240}, -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {1, 2, "consumabile", "{{CR}}consumabili"}, -- The Book of Sin
	[102] = {1, 2, "pillola", "{{CR}}pillole"}, -- Mom's Bottle of Pills
	[105] = "Rilancia due volte, esaurendo più velocemente le categorie di oggetti", -- The D6
	[107] = "Genera due corpi", -- The Pinking Shears
	[111] = {5, 10}, -- The Bean
	[123] = {" un ", " due ", "famiglio casuale", "{{CR}}famigli casuali"}, -- Monster Manual
	[124] = {" un ", " due ", "effetto", "{{CR}}effetti", "un oggetto attivo casuale", "{{CR}}due oggetti attivi casuali"}, -- Dead Sea Scrolls
	[136] = {" un'esca ", " due esche ", "attrae", "{{CR}}attraggono", "esplode", "{{CR}}esplodono"}, -- Best Friend
	[145] = {"2-4", "4-8"}, -- Guppy's Head
	[146] = {1, 2, "Cuore Eterno", "{{CR}}Cuori Eterni"}, -- Prayer Card (should this just say +1 health...)
	[158] = {1, 2, "Cuore Celeste", "{{CR}}Cuori Celesti", "runa", "{{CR}}rune", "carta", "{{CR}}carte"}, -- Crystal Ball
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = "Rilancia due volte, aiutando con il progresso della trasfromazione ma esaurendo più velocemente le categorie di oggetti", -- D100
	[284] = "Rilancia due volte, aiutando con il progresso della trasfromazione ma esaurendo più velocemente le categorie di oggetti", -- D4
	[286] = "Lo attiva due volte", -- Blank Card
	[287] = {"uno", "due"}, -- Book of Secrets
	[288] = {"1-4", "2-8"}, -- Box of Spiders
	[292] = {1, 2}, -- Satanic Bible
	[293] = {440, 880}, -- Head of Krampus
	[294] = "Spinta aumentata", -- Butter Bean
	[298] = {6, 12}, -- Unicorn Stump
	[348] = "Lo attiva due volte", -- Placebo
	[349] = "Attiva la chance due volte", -- Wooden Nickel
	[351] = {5, 10}, -- Mega Bean
	[357] = {"Raddoppia", "Triplica"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {" un ", " due ", "blocco di TNT spostabile", "{{CR}}blocchi di TNT spostabili", "il blocco", "{{CR}}i blocchi"}, -- Mine Crafter
	[439] = {1, 2, "ninnolo casuale", "{{CR}}ninnoli casuali"}, -- Mom's Box
	[476] = {1, 2, "consumabile casuale", "{{CR}}consumabili casuali"}, -- D1
	[477] = "Attiva ogni effetto assorbito due volte", -- Void
	[480] = {"Raddoppia", "Quadruplica"}, -- Compost
	[481] = "Due aumenti e diminuzioni di statistica", -- Dataminer
	[482] = "Cambia due volte il personaggio e rimuove due oggetti", -- Clicker
	[485] = "25% di chance di quadruplicare, 25% di chance di raddoppiare e rimuovere gli originali, 50% di chance di rimuoverli", -- Crooked Penny
	[486] = {"gli effetti", "{{CR}}{{BlinkYellowGreen}}due volte gli effetti"}, -- Dull Razor
	[488] = "Lo attiva due volte, ma rimane solo il secondo effetto", -- Metronome
	[489] = {" l'effetto ", " gli effetti "}, -- D Infinity (TODO: d infinity's desc addon is not visible in item reminder)
	[504] = {" una ", " due ", "mosca", "{{CR}}mosche", "spara", "{{CR}}sparano"}, -- Brown Nugget
	[507] = "Si attiva due volte", -- Sharp Straw
	[510] = {"una", "due", "forma", "{{CR}}forme", "amichevole", "{{CR}}amichevoli"}, -- Delirious
	[516] = {"un", "due", "irrigatore che spara", "{{CR}}irrigatori che sparano"}, -- Sprinkler
	[521] = {"un", "due", "oggetto casuale", "{{CR}}oggetti casuali"}, -- Coupon
	[523] = "Scambia i contenuti della scatola con i consumabili nella stanza", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = "Ferma i pestoni per due stanze (o due ondate della Boss Rush)", -- Broken Shovel
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Nessun effetto da {1}",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Danni raddoppiati", -- Cube of Meat
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
	["5.100.187"] = "Danni raddoppiati", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "Danni raddoppiati", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "Genera un ragno blu extra", -- Juicy Sack
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
	["5.100.319"] = {"i danni di Isaac", "il doppio {{CR}}dei danni di Isaac"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Danni raddoppiati", -- Incubus
	["5.100.361"] = "Danni raddoppiati", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Più alte chance di generare pile", -- Charged Baby
	["5.100.384"] = {"5-90", "10-180"}, -- Lil Gurdy
	["5.100.385"] = "Danni raddoppiati", -- Bumbo
	["5.100.388"] = "Genera più spesso bauli", -- Key Bum
	["5.100.389"] = {"5-6", "4-5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "Più alte chance di generare pile", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "L'aura danneggiante aumenta, ma non i suoi danni", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"i danni di Isaac", "il doppio {{CR}}dei danni di Isaac"}, -- Papa Fly
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
	["5.100.518"] = "Danni raddoppiati", -- Buddy in a Box
	["5.100.519"] = "Danni raddoppiati", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "I danni da contatto dei cavalieri sono raddoppiati", -- 7 Seals
	["5.100.537"] = "Aumenta le dimensioni del liquido, ma non i danni", -- Lil Spewer
	["5.100.539"] = "Genera una variante campione del nemico", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Il danno da contatto delle ossa orbitali è raddoppiato", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone

	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Il danno di \"Incubo\" viene raddoppiato", -- Incubus (for BFFS pedestal)
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	{"1", "Penny Ingerito", "{{Coin}} Subire danni genera 1 moneta"},
	{"2", "Cacca Pietrificata", "50% di chance di ottenere ricompense dalla cacca"},
	{"3", "Pila AAA", "{{Battery}} -1 Carica richiesta per gli oggetti attivi"},
	{"4", "Telecomando Rotto", " {{Collectible44}} Usare un oggetto attivo teletrasporta Isaac in una stanza casuale"},
	{"5", "Cuore Viola", "Doppie chance di nemici campioni"},
	{"6", "Magnete Rotto", "{{Coin}} Attrae monete verso Isaac"},
	{"7", "Grano del Rosario", "{{AngelChance}} Chance di una Stanza dell'Angelo aumentate del 50% #{{Collectible33}} Chance più alte di trovare \"La Bibbia\" nei {{Shop}} Negozi e nelle {{Library}} Biblioteche"},
	{"8", "Cartuccia", "{{Timer}} 5% di chance mentre si subiscono danni di ricevere per 6.5 secondi:#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo#{{HealingRed}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"},
	{"9", "Verme Pulsante", " Le lacrime di Isaac pulsano#Influisce sull'hitbox delle lacrime"},
	{"10", "Verme Ondulato", "↑ {{Tears}} +0.3 Lacrime#Le lacrime di Isaac hanno un moto ondeggiante"},
	{"11", "Verme Anello", "Le lacrime di Isaac hanno un moto a spirale molto veloce"},
	{"12", "Verme Piatto", "Lacrime più larghe del 50%#Aumenta la spinta"},
	{"13", "Buono Acquisto", "{{Shop}} Permette ad Isaac di avere gratuitamente 1 oggetto del Negozio"},
	{"14", "Callo", "Immunità ai liquidi e alle spine per terra"},
	{"15", "Pietra Fortunata", "{{Coin}} Distruggere rocce genera monete"},
	{"16", "Unghia dei Piedi di Mamma", "Il piede di Mamma calpesta un punto casuale della stanza ogni 60 secondi"},
	{"17", "Rossetto Nero", "{{BlackHeart}} +5% di chance che i Cuori Celesti casuali possano venire generati come Cuori Neri"},
	{"18", "Passo della Bibbia", "{{EternalHeart}} +3% di chance di Cuori Eterni"},
	{"19", "Graffetta", "{{GoldenChest}} I Bauli Dorati possono essere aperti senza chiavi"},
	{"20", "Zampa di Scimmia", "{{BlackHeart}} Quando la salute di Isaac viene ridotta a mezzo cuore genera 1 Cuore Nero#{{Warning}} Sparisce dopo aver generato 3 Cuori Neri"},
	{"21", "Foglio Misterioso", "Conferisce ad intervalli casuali gli effetti di: #{{Collectible327}} \"La Polaroid\"#{{Collectible328}} \"Il Negativo\"#{{Trinket48}} \"Una Pagina Mancante\"#{{Trinket23}} \"Volantino 'Smarrito'\""},
	{"22", "Coda del Demonio", "{{Heart}} Diminuisce del 20% la chance di generare dei cuori#{{BlackHeart}} Tutti i Cuori consumabili diventano Cuori Neri#Aumenta la chance di generare chiavi come ricompensa"},
	{"23", "Volantino 'Smarrito'", "{{Player10}} Una volta morto resuscita nella forma di Lo Smarrito"},
	{"24", "Penny Popò", "{{Coin}} Chance più alte del 20% di generare monete dalla cacca#Raccogliere monete fa scorreggiare Isaac"},
	{"25", "Caramella Misteriosa", "Isaac scorreggia o genera cacca ogni 30 secondi"},
	{"26", "Verme Uncino", "↑ {{Range}} +10 Gittata#Le lacrime di Isaac si muovono in modo angolare"},
	{"27", "Verme Frusta", "↑ {{Shotspeed}} +0.5 Velocità Colpi"},
	{"28", "Ankh Rotto", "{{Player4}} Una volta morto 22% di chance di resuscitare nella forma di ??? (Bimbo Blu)"},
	{"29", "Testa di Pesce", "Subire danni genera 1 mosca blu"},
	{"30", "Congiuntivite", "{{Poison}} 10% di chance di sparare lacrime velenose#{{Luck}} 100% di chance con 18 di Fortuna"},
	{"31", "Puntina", "10% di chance di sparare lacrime penetranti + spettrali#{{Luck}} 100% di chance con 18 di Fortuna"},
	{"32", "Fungo della Libertà", "25% di chance di un effetto di un fungo casuale a stanza#Può rivelare stanze speciali sulla minimappa"},
	{"33", "Cordone Ombelicale", "{{Timer}} Quando la salute di Isaac viene ridotta a mezzo cuore genera {{Collectible100}} \"Piccolo Steven\" fino all'uscita dalla stanza"},
	{"34", "Cuore di Bambino", "{{UnknownHeart}} 10% di chance che la ricompensa per completamento stanza sia 1 cuore casuale#{{Heart}} 33% di chance di 1 cuore extra da bauli, rocce colorate e macchine distrutte"},
	{"35", "Corno Ricurvo", "↑ {{Damage}} +2 Danni"},
	{"36", "Chiave Arrugginita", "{{Key}} 10% di chance che la ricompensa per completamento stanza sia 1 chiave#{{Key}} 33% di chance di 1 chiave extra da bauli, rocce colorate e macchine distrutte"},
	{"37", "Zoccolo di Capra", "↑ {{Speed}} +0.15 Velocità"},
	{"38", "Perla di Mamma", "+10% di chance che i cuori generati siano {{SoulHeart}} Cuori Celesti, {{BlackHeart}} Cuori Neri o {{EmptyBoneHeart}} Cuori Ossei"},
	{"39", "Cancro", "↑ {{Tears}} -2 Delay tra Lacrime"},
	{"40", "Toppa Rossa", "{{Timer}} Subire danni ha il 20% di chance di conferire ↑ {{Damage}} +1.8 Danni fino all'uscita dalla stanza#{{Luck}} 100% chance con 8 di Fortuna"},
	{"41", "Fiammifero", "{{Bomb}} 10% di chance che la ricompensa per completamento stanza sia 1 bomba#{{Bomb}} 33% di chance di 1 bomba extra da bauli, rocce colorate e macchine distrutte#{{Warning}} Rimuove {{Trinket53}} \"Zecca\""},
	{"42", "Alluce Fortunato", "↑ {{Luck}} +1 Fortuna#+8% di chance di 1 ricompensa per completamento stanza#33% di chance di consumabili extra da bauli, rocce colorate e macchine distrutte"},
	{"43", "Teschio Maledetto", "Quando i danni riducono Isaac a mezzo cuore o meno, viene teletrasportato in una stanza causale"},
	{"44", "Tappino di Sicurezza", "{{Pill}} 10% di chance che la ricompensa per completamento stanza sia 1 pillola#{{Pill}} 33% di chance di 1 pillola extra da bauli, rocce colorate e macchine distrutte"},
	{"45", "Asso di Picche", "{{Card}} 10% di chance che la ricompensa per completamento stanza sia 1 carta#{{Card}} 33% di chance di 1 carta extra da bauli, rocce colorate e macchine distrutte"},
	{"46", "Forchetta di Isaac", "{{HealingRed}} Completare una stanza ha il 10% di chance di curare di mezzo cuore#{{Luck}} 100% di chance con 18 di Fortuna"},
	{"47", "", "<Item does not exist>"},
	{"48", "Una Pagina Mancante", "Subire danni ha il 5% di chance di infliggere 40 danni a tutti i nemici nella stanza"},
	{"49", "Penny Sanguinolento", "{{HalfHeart}} Raccogliere 1 moneta ha il 50% di chance di generare mezzo Cuore Rosso"},
	{"50", "Penny Bruciato", "{{Bomb}} Raccogliere 1 moneta ha il 50% di chance di generare 1 Bomba"},
	{"51", "Penny Appiattito", "{{Key}} Raccogliere 1 moneta ha il 50% di chance di generare 1 Chiave"},
	{"52", "Penny Contraffatto", "{{Coin}} Raccogliere 1 moneta ha il 50% di chance di aggiungere un'altra moneta al contatore"},
	{"53", "Zecca", "{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di 1 cuore#-15% di salute del boss#{{Warning}} Una volta raccolto, non può più venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\" o ingoiandolo"},
	{"54", "Testa Di Isaac", "Famiglio con lacrime penetranti#Infligge 3.5 danni a lacrima"},
	{"55", "Fede di Madda", "{{EternalHeart}} Entrare in nuovo piano conferisce +1 Cuore Eterno"},
	{"56", "Lingua di Giuda", "{{DevilRoom}} Abbassa tutti i costi di un patto con il diavolo di 1 Portacuori#Non abbassa il costo da 3 Cuori Celesti "},
	{"57", "Anima di ???", "Famiglio che rimbalza attorno alla stanza#Spara nella stessa direzione di Isaac#Infligge 3.5 danni a lacrima"},
	{"58", "Ciocca di Sansone", "{{Timer}} Uccidere un nemico ha il 6.67% di chance di conferire ↑ {{Damage}} +0.5 Danni fino all'uscita dalla stanza#{{Luck}} 100% di chance con 10 di Fortuna"},
	{"59", "Occhio di Caino", "Entrare in un nuovo piano ha il 25% di chance di rivelare icone sulla mappa#{{Luck}} 100% di chance con 3 di Fortuna"},
	{"60", "Zampa d'Uccello di Eva", "{{Collectible117}} Uccidere un nemico ha il 5% di chance di generare un \"Uccello Morto\"#{{Luck}} 100% di chance con 8 di Fortuna"},
	{"61", "La Mano Sinistra", "{{RedChest}} Trasforma tutti i bauli in Bauli Rossi"},
	{"62", "Pietra Brillante", "Le rocce con cunicolo e le rocce colorate luccicano ogni 10 secondi"},
	{"63", "Forbicine", "{{Bomb}} Trasforma le Bombe Troll in bombe consumabili"},
	{"64", "Verme Arcobaleno", "Ogni 3 secondi conferisce un effetto di un verme casuale"},
	{"65", "Verme Solitario", "↑ {{Range}} x2 Moltiplicatore Gittata#↓ x0.5 Altezza Lacrime"},
	{"66", "Verme Pigro", "↑ {{Range}} +4 Gittata#↑ +2 Altezza Lacrime#↓ {{Shotspeed}} -0.4 Velocità Colpi"},
	{"67", "Dado Incrinato", "Subire danni ha il 50% di attivare uno dei seguenti effetti:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"},
	{"68", "Super Magnete", "Isaac attrae consumabili e nemici"},
	{"69", "Polaroid Sbiadita", "Cammuffa Isaac ad intervalli casuali#{{Confusion}} Confonde i nemici"},
	{"70", "Pidocchio", "Genera occasionalmente un ragno blu nelle stanze ostili"},
	{"71", "Vescica di Bob", "Le bombe di Isaac lasciano liquido danneggiante"},
	{"72", "Pila dell'Orologio", "{{Battery}} 6.66% di chance che la ricompensa di completamento stanza sia 1 pila#{{Battery}} +10% di chance che i consumabili casuali siano 1 pila#{{Battery}} 5% di chance a completamento stanza di aggiungere una carica all'oggetto attivo tenuto"},
	{"73", "Minicicciolo", "{{Bomb}} 10% di chance che le bombe che scoppiano buttino a terra una bomba consumabile"},
	{"74", "Rilevatore", "{{LadderRoom}} +0.5% di chance di rivelare un cunicolo mentre si distrugge una roccia"},
	{"75", "Errore", "Conferisce l'effetto di un ninnolo casuale ad ogni stanza"},
	{"76", "Fiche da Poker", "↑ 50% di chance che i bauli generino consumabili extra#↓ 50% di chance che i bauli contengano solo una mosca"},
	{"77", "Vescicola", "Aumenta la spinta"},
	{"78", "Lancetta dei Secondi", "Gli effetti di stato applicati ai nemici durano il doppio"},
	{"79", "Senza Nome, Senza Fine", "Usare una {{Rune}} runa, {{Card}} carta or {{Pill}} pillola ha il 25% di chance di generare una copia di quella runa, carta o pillola"},
	{"80", "Piuma Nera", "↑ {{Damage}} +0.2 Danni per ogni oggetto tenuto con \"Più malvagità\""},
	{"81", "Furia Cieca", "Invincibilità dura di più"},
	{"82", "Ferro di Cavallo Dorato", "+15% di chance di ottenere oggetti doppi nel prossimo piano"},
	{"83", "Chiave del Negozio", "{{Shop}} Permette ad Isaac di aprire Negozi senza chiavi"},
	{"84", "Costola di Avarizia", "{{Coin}} 5% più monete e meno cuori dalle ricompense per completamento stanza#Avarizia e Super Avarizia non appaiono più nei {{Shop}} Negozi o {{SecretRoom}} Stanze Segrete"},
	{"85", "Karma", "{{DonationMachine}} Usare una Macchina di Donazione ha il 33% di chance di:#{{HealingRed}} Curare di 1 cuore (40%)#{{Coin}} Conferire 1 moneta (40%)#{{Luck}} Conferire +1 Fortuna (15%)#{{Beggar}} Generare un Mendicante (5%)"},
	{"86", "Piccola Larva", "Distruggere una cacca genera 1 mosca blu"},
	{"87", "Ciondolo di Mamma", "{{HealingRed}} Usare una chiave cura di mezzo cuore#{{Heart}} Converte i mezzi cuori in cuori interi"},
	{"88", "NO!", "Previene la generazione di oggetti attivi"},
	{"89", "Guinzaglio per Bambini", "I famigli restano vicini ad Isaac"},
	{"90", "Ministercolo", "Quando una cacca viene distrutta esplode, infliggendo 100 danni"},
	{"91", "Meconio", "33% di chance che si generi una Cacca Nera#{{BlackHeart}} Distruggere Cacche Nere ha un 5% di chance di generare un Cuore Nero"},
	{"92", "Corona Incrinata", "↑ {{Tears}} x0.8 Delay tra Lacrime#↑ x1.33 Moltiplicatore delle statistiche al di sopra di 1 {{Speed}} Velocità, 3.5 {{Damage}} Danni, 23.75 {{Range}} Gittata, 1 {{Shotspeed}} Velocità Colpi"},
	{"93", "Pannolino Usato", "15% di chance per stanza che tutte le mosche nemiche diventino amichevoli"},
	{"94", "Coda di Pesce", "Raddoppia tutte le mosche/ragni blu generate"},
	{"95", "Dente Nero", "{{Poison}} 3% di chance di sparare lacrime dentate velenose#Il dente infligge i danni di Isaac x2"},
	{"96", "Verme Uroboro", "↑ {{Range}} +4 Gittata#↑ +2 Altezza Lacrime#Lacrime spettrali#Chance di lacrime a ricerca#{{Luck}} 100% di chance con 9 di Fortuna#Le lacrime di Isaac si muovono velocemente a spirale"},
	{"97", "Tonsilla", "Subire danni 12-20 volte genera un famiglio che blocca i proiettili#Si massimizza a 2 famigli"},
	{"98", "Pepita Verde", "10% di chance di sparare lacrime adesive a ricerca#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo#Le lacrime si incollano per 60 secondi"},
	{"99", "Super Palla", "10% chance di sparare lacrime rimbalzanti"},
	{"100", "Lampadina Vivida", "Tenere un oggetto attivo totalmente carico conferisce:#↑ {{Speed}} +0.25 Velocità#↑ {{Tears}} +0.2 Lacrime#↑ {{Damage}} +0.5 Danni#↑ {{Range}} +0.75 Gittata#↑ {{Shotspeed}} +0.1 Velocità Colpi#↑ {{Luck}} +1 Fortuna"},
	{"101", "Lampadina Fioca", "Tenere un oggetto attivo totalmente scarico conferisce:#↑ {{Speed}} +0.5 Velocità#↑ {{Tears}} +0.4 Lacrime#↑ {{Damage}} +1.5 Danni#↑ {{Range}} +1.5 Gittata#↑ {{Shotspeed}} +0.3 Velocità Colpi#↑ {{Luck}} +2 Fortuna"},
	{"102", "Carta Stracciata", "{{SecretRoom}} +1 Stanza segreta extra a piano mentre viene tenuto"},
	{"103", "Uguaglianza!", "Trasforma i consumabili singoli in doppi quando le {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi di Isaac sono di pari numero"},
	{"104", "Osso dei Desideri", "Se colpiti 2% di chance di venire distrutto e di generare un piedistallo"},
	{"105", "Sacchetto per il Pranzo", "{{Collectible22}} Se colpiti 2% di chance di venire distrutto e di generare \"Pranzo\""},
	{"106", "Tappo di Sughero Smarrito", "Aumenta il raggio del liquido non nemico"},
	{"107", "Cuore di Corvo", "Subire danni esaurisce i Cuori Rossi prima dei Cuori Neri/Celesti#I danni ai Cuori Rossi non riducono le chance di una Stanza del Diavolo/dell'Angelo"},
	{"108", "Noce", "Venire colpiti da 1-9 esplosioni distrugge il ninnolo e butta terra 1 {{UnknownHeart}} cuore casuale, 1 {{Coin}} moneta, 1 {{Key}} chiave e 1 {{Trinket}} ninnolo#Non è richiesto di subire danni"},
	{"109", "Nastro Adesivo", "I famigli rimangono in un posto e non possono muoversi"},
	{"110", "Dollaro D'Argento", "{{Shop}} I Negozi appaiono in \"Utero\""},
	{"111", "Corona Sanguinolenta", "{{TreasureRoom}} Le Stanze dei Tesori appaiono in \"Utero\""},
	{"112", "Pay To Win", "{{RestockMachine}} Le cassette di rifornimento vengono sempre generate nelle {{TreasureRoom}} Stanze dei Tesori"},
	{"113", "Locusta della Guerra", "Entrare in una stanza ostile genera una mosca esplosiva d'attacco#La mosca infligge i danni di Isaac x2 + danni esplosivi"},
	{"114", "Locusta della Pestilenza", "{{Poison}} Entrare in una stanza ostile genera una mosca velenosa d'attacco#La mosca infligge i danni di Isaac x2"},
	{"115", "Locusta della Carestia", "{{Slow}} Entrare in una stanza ostile genera una mosca rallentante d'attacco#La mosca infligge i danni di Isaac x2"},
	{"116", "Locusta dela Morte", "Entrare in una stanza ostile genera una mosca d'attacco#La mosca infligge i danni di Isaac x4"},
	{"117", "Locusta della Conquista", "Entrare in una stanza ostile genera 1-4 mosche d'attacco#Ogni mosca infligge i danni di Isaac x2"},
	{"118", "Ali di Pipistrello", "{{Timer}}Uccidere un nemico ha il 5% di chance di conferire il volo fino all'uscita dalla stanza"},
	{"119", "Cellula Staminale", "{{HealingRed}} Entrare in un nuovo piano cura di mezzo cuore"},
	{"120", "Forcina per Capelli", "{{Battery}} Entrare in una stanza boss non completata ricarica completamente gli oggetti attivi"},
	{"121", "Croce di Legno", "{{Collectible313}} Annulla il primo danno preso nel piano"},
	{"122", "Burro!", "Usare un oggetto attivo butta a terra un piedistallo#Subire danni ha il 2% di chance di buttare a terra uno degli oggetti passivi di isaac"},
	{"123", "Piuma di Filigrana", "I boss angeli lasciano oggetti angelici invece di Pezzi di Chiave"},
	{"124", "Fermaporte", "L'ultima porta attraversata rimane aperta"},
	{"125", "Prolunga", "Collega i famigli con raggi d'elettricità#I raggi infliggono 6 danni"},
	{"126", "Penny Marcio", "Raccogliere 1 moneta genera 1 mosca blu"},
	{"127", "Piega-cucchiaini", "Conferisce proiettili a ricerca a tutti i famigli"},
	{"128", "Falangi", "{{EmptyBoneHeart}} Subire danni ha il 2% di chance di conferire un Cuore Osseo"},
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - Il Matto", "Teletrasporta Isaac nella prima stanza del piano"},
	{"2", "I - Il Bagatto", "{{Timer}} Lacrime a ricerca fino all'uscita dalla stanza"},
	{"3", "II - La Papessa", "Il piede di Mamma calpesta un nemico#Se non ci sono nemici il piede di Mamma calpesta Isaac"},
	{"4", "III - L'Imperatrice", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +1.5 Danni"},
	{"5", "IV - L'Imperatore", "{{BossRoom}} Teletrasporta Isaac nella Stanza del Boss"},
	{"6", "V - Il Papa", "{{SoulHeart}} Genera 2 Cuori Celesti"},
	{"7", "VI - Gli Amanti", "{{Heart}} Genera 2 Cuori Rossi"},
	{"8", "VII - Il Carro", "{{Timer}} Conferisce per 6 secondi:#↑ {{Speed}} +0.28 Velocità#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo"},
	{"9", "VIII - Giustizia", "Genera 1 {{UnknownHeart}} cuore, {{Coin}} moneta, {{Bomb}} bomba e {{Key}} chiave casuali"},
	{"10", "IX - L'Eremita", "{{Shop}} Teletrasporta Isaac nel negozio"},
	{"11", "X - Ruota della Fortuna", "Genera una {{Slotmachine}} Slot Machine#{{FortuneTeller}} 25% di chance che sia una Macchina dei Desideri"},
	{"12", "XI - Forza", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Heart}} +1 Salute#↑ {{Speed}} +0.3 Velocità#↑ {{Damage}} +0.3 Danni#↑ {{Damage}} x1.5 Moltiplicatore Danni#↑ {{Range}} +5.25 Gittata#↑ +0.5 Altezza Lacrime"},
	{"13", "XII - L'Appeso", "{{Timer}} Volo fino all'uscita dalla stanza"},
	{"14", "XIII - Morte", "Infligge 40 danni a tutti i nemici nella stanza"},
	{"15", "XIV - Temperanza", "{{DonationMachine}} Genera una Macchina di Donazione Sangue"},
	{"16", "XV - Il Diavolo", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +2 Danni"},
	{"17", "XVI - La Torre", "Genera 6 Bombe Troll"},
	{"18", "XVII - Le Stelle", "{{TreasureRoom}} Teletrasporta Isaac nella Stanza dei Tesori"},
	{"19", "XVIII - La Luna", "{{SecretRoom}} Teletrasporta Isaac nella Stanza Segreta"},
	{"20", "XIX - Il Sole", "{{HealingRed}} Salute al massimo#Infligge 100 danni a tutti i nemici#{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto la {{SuperSecretRoom}} Stanza Super Segreta)"},
	{"21", "XX - Il Giudizio", "Genera un Mendicante#{{DemonBeggar}} 33% di chance che sia un Mendicacuori#2% di chance che sia un Chiavaiolo o uno Scroccabombe"},
	{"22", "XXI - Il Mondo", "{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto la {{SuperSecretRoom}} Stanza Super Segreta)"},
	{"23", "2 di Fiori", "{{Bomb}} Duplica il numero di bombe di Isaac"},
	{"24", "2 di Quadri", "{{Coin}} Duplica il numero di monete di Isaac"},
	{"25", "2 di Picche", "{{Key}} Duplica il numero di chiavi di Isaac"},
	{"26", "2 di Cuori", "{{HealingRed}} Duplica il numero di cuori di Isaac {{ColorSilver}}(non di Portacuori){{CR}}"},
	{"27", "Asso di Fiori", "{{Bomb}} Converte tutti i consumabili in bombe casuali"},
	{"28", "Asso di Quadri", "{{Coin}} Converte tutti i consumabili in monete casuali"},
	{"29", "Asso di Picche", "{{Key}} Converte tutti i consumabili in chiavi casuali"},
	{"30", "Asso di Cuori", "{{Heart}} Converte tutti i consumabili in bombe casuali"},
	{"31", "Jolly", "{{AngelDevilChance}} Teletrasporta Isaac nella Stanza del Diavolo o dell'Angelo"},
	{"32", "Hagalaz", "Distrugge tutte le rocce nella stanza"},
	{"33", "Jera", "Duplica tutti i consumabili nella stanza"},
	{"34", "Ehwaz", "Genera una botola per il prossimo piano#{{LadderRoom}} 8% di chance di una botola con cunicolo"},
	{"35", "Dagaz", "{{SoulHeart}} +1 Cuore Celeste#{{CurseCursed}} Rimuove tutte le maledizioni fino all'uscita dal piano"},
	{"36", "Ansuz", "{{Timer}} Effetto di mappatura completa fino all'uscita dal piano"},
	{"37", "Perthro", "Rilancia tutti i piedistalli nella stanza"},
	{"38", "Berkano", "Evoca 3 ragni blu e 3 mosche blu"},
	{"39", "Algiz", "{{Timer}} Rende Isaac invincibile per 30 secondi"},
	{"40", "Runa Muta", "Attiva l'effetto di una runa casuale#Se usata 25% di chance di autoduplicarsi"},
	{"41", "Runa Nera", "Infligge 40 danni #Converte i piedistalli nella stanza in aumenti di statistiche casuali#Converte tutti i consumabili nella stanza in mosche blu"},
	{"42", "Carta del Caos", "Usare la carta la lancia nella direzione in cui Isaac si sta muovendo#Uccide istantaneamente QUALSIASI nemico tocchi (eccetto Delirio)"},
	{"43", "Carta di Credito", "Rende gratuiti tutti gli oggetti nel {{Shop}} Negozio o nella {{DevilRoom}} Stanza del Diavolo"},
	{"44", "Carta delle Regole", "Se usato mostra consigli \"utili\""},
	{"45", "Cards Against Humanity", "Riempie di cacca tutta la stanza"},
	{"46", "Re Suicida", "Uccide istantaneamente Isaac e genera 10 consumabili o oggetti sul pavimento#Gli oggetti generati vengono dalla categoria di oggetti della stanza corrente"},
	{"47", "Carta Esci Gratis di Prigione", "Apre tutte le porte nella stanza corrente"},
	{"48", "Carta ?", "Concede un uso gratuito dell'oggetto attivo di Isaac"},
	{"49", "Scheggia di Dado", "Rilancia tutti i piedistalli e i consumabili nella stanza"},
	{"50", "Contatto di Emergenza", "Due mani di Mamma scendono giù e afferrano un nemico ciascuno"},
	{"51", "Carta Sacra", "{{HolyMantle}} Scudo di \"Manto Sacro\" fino all'uscita dalla stanza (previene i danni per 1 volta)#25% di chance di generare un'altra \"Carta Sacra\""},
	{"52", "Crescita Gigante", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Damage}} +7 Danni#↑ {{Range}} +30 Gittata#Aumento Statura#Permette ad Isaac di distruggere le rocce camminandoci sopra"},
	{"53", "Richiamo Antico", "{{Card}} Genera 3 carte casuali"},
	{"54", "Passo Epocale", "{{Timer}} Conferisce fino all'uscita dalla stanza:#↑ {{Speed}} +0.5 Velocità#↓ {{Shotspeed}} -1 Velocità Colpi#{{Slow}} Rallenta i nemici"},
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
	[9] = {"Genera {{ColorShinyPurple}}2{{CR}} {{UnknownHeart}} cuori, {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi casuali"}, -- VIII - Justice
	[11] = {" una ", " 2 ", "Macchina", "{{CR}}Macchine"," sia una Macchina dei Desideri", " siano 2 {{CR}}Macchine dei Desideri"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" una ", " 2 ", "Macchina", " {{CR}}Macchine", "un Mendicacuore", "2 {{CR}}Mendicacuori"},-- XIV - Temperance (+ Greed version) 
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {" un Mendicante", " 2 {{CR}}Mendicanti", "sia un Mendicauori", "siano 2 {{CR}}Mendicacuori", "sia un Chiavaiolo o uno Scroccabombe", "siano 2 {{CR}}Chiavaioli o Scroccabombe"}, -- XX - Judgement
	[23] = {"Duplica", "Quadruplica"}, -- 2 of Clubs
	[24] = {"Duplica", "Quadruplica"}, -- 2 of Diamonds
	[25] = {"Duplica", "Quadruplica"}, -- 2 of Spades
	[26] = {"Duplica", "Quadruplica"}, -- 2 of Hearts
	[33] = {"Duplica", "Quadruplica"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Rilancia 2 volte", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Attiva 2 effetti di rune e tenta di duplicarsi 2 volte", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Si attiva 2 volte", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Pillola non identificata"

EID.descriptions[languageCode].pills={
	{"0", "Gas Nocivo", "{{Poison}} Isaac scorreggia e avvelena i nemici nelle vicinanze"},
	{"1", "Brutto Trip", "{{Warning}} Infligge 1 cuore di danno ad Isaac#{{Heart}} Con 1 cuore o meno diventa una pillola \"Salute al Massimo\""},
	{"2", "Palle D'Acciaio", "{{SoulHeart}} +2 Cuori Celesti"},
	{"3", "Le Bombe sono Chiavi", "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi di Isaac"},
	{"4", "Diarrea Esplosiva", "Isaac genera velocemente 5 bombe accese"},
	{"5", "Salute al Massimo", "{{HealingRed}} Cura completamente tutti i Portacuori"},
	{"6", "Meno Salute", "↓ {{EmptyHeart}} -1 Salute#{{Heart}} Con 0 o 1 cuore diventa una pillola \"Più Salute\""},
	{"7", "Più Salute", "↑ {{EmptyHeart}} +1 Portacuore vuoto"},
	{"8", "Ho Trovato delle Pillole", "Nessun effetto"},
	{"9", "Pubertà", "Nessun effetto#Assumerne 3 conferisce la trasformazione \"Adulto\":#↑ {{Heart}} +1 Salute"},
	{"10", "Moscarina", "+1 Mosca orbitale"},
	{"11", "Meno Gittata", "↓ {{Range}} -2 Gittata"},
	{"12", "Più Gittata", "↑ {{Range}} +2.5 Gittata"},
	{"13", "Meno Velocità", "↓ {{Speed}} -0.12 Velocità"},
	{"14", "Più Velocità", "↑ {{Speed}} +0.15 Velocità"},
	{"15", "Meno Lacrime", "↓ {{Tears}} -0.28 Lacrime"},
	{"16", "Più Lacrime", "↑ {{Tears}} +0.35 Lacrime"},
	{"17", "Meno Fortuna", "↓ {{Luck}} -1 Fortuna"},
	{"18", "Più Fortuna", "↑ {{Luck}} +1 Fortuna"},
	{"19", "Telepillole", "Teletrasporta Isaac in una stanza casuale#{{ErrorRoom}} Piccola chance di teletrasportare Isaac nella Stanza I AM ERROR"},
	{"20", "Energia per 48 Ore!", "{{Battery}} Ricarica completamente l'oggetto attivo#{{Battery}} Genera 1-2 pile"},
	{"21", "Ematemesi", "{{Warning}} Esaurisce tutti i Portacuori a parte 1#{{Heart}} Genera 1-4 Cuori Rossi"},
	{"22", "Paralisi", "Impedisce ad Isaac di muoversi e sparare per 2 secondi"},
	{"23", "Ho Visto Tutto!", "{{SecretRoom}} Apre tutte le entrate per le stanze segrete nel piano"},
	{"24", "Feromoni", "{{Charm}} Ammalia tutti i nemici nella stanza"},
	{"25", "Amnesia", "{{CurseLost}} Nasconde la mappa fino all'uscita dal piano"},
	{"26", "Limonata", "Genera per terra una grossa pozza che danneggia i nemici"},
	{"27", "Ma 6 1 Mago?", "{{Timer}} Isaac spara in diagonale per 30 secondi"},
	{"28", "Percocet!", "{{Timer}} Riduce tutti i danni subiti a mezzo cuore fino all'uscita dalla stanza"},
	{"29", "Astinenza!", "{{Timer}} Aumenta tutti i danni subiti ad 1 cuore fino all'uscita dalla stanza"},
	{"30", "Re-Lax", "Isaac genera cacca dietro di lui per 2 secondi"},
	{"31", "???", "{{CurseMaze}} Effetto della Malediz. del Dedalo fino all'uscita dal piano"},
	{"32", "Una ti Rende Più Grande", "Aumenta la statura di Isaac#Non influisce sulla sua hitbox"},
	{"33", "Una ti Rende più Piccolo", "Diminuisce la statura di Isaac#In più diminuisce la sua hitbox"},
	{"34", "Infestato!", "Genera 1 ragno blu per ogni cacca nella stanza"},
	{"35", "Infestato?", "Genera 1 ragno blu per ogni nemico nella stanza#Se non ci sono nemici nella stanza genera 1-3 ragni blu"},
	{"36", "Pillola del Potere!", "{{Timer}} Conferisce per 6.5 secondi:#Invincibilità#Isaac non può sparare ma infligge 40 danni da contatto al secondo#{{HealingRed}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"},
	{"37", "Rétro Visione", "{{Timer}} Per 3 volte rende lo schermo pixellato per 30 secondi"},
	{"38", "Amici fino alla Fine!", "Genera 3 mosche blu"},
	{"39", "Liqui-Lax", "Genera una pozza di liquido scivoloso"},
	{"40", "Qualcosa Non Quadra...", "{{Slow}} Genera una pozza di liquido rallentante"},
	{"41", "Ho Sonno...", "{{Slow}} Rallenta tutti i nemici nella stanza"},
	{"42", "Sono Euforico!!!", "Velocizza tutti i nemici nella stanza"},
	{"43", "Gulp!", "{{Trinket}} Consuma il ninnolo di Isaac e conferisce permanentemente i suoi effetti"},
	{"44", "Orf!", "{{Collectible149}} Spara una lacrima di \"Ipecac\""},
	{"45", "Baciato dal Sole!", "{{Timer}} Conferisce per 6 secondi:#Invincibilità#Isaac non può sparare (Nessun danno da contatto)"},
	{"46", "Vurp!", "Genera l'ultima pillola utilizzata prima di \"Vurp!\""},
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Maddalena", ""},
	[2] = {"Caino", ""},
	[3] = {"Giuda", ""},
	[4] = {"???", "Non può avere Cuori Rossi#{{SoulHeart}} Gli aumenti di salute conferiscono Cuori Celesti"},
	[5] = {"Eva", ""},
	[6] = {"Sansone", ""},
	[7] = {"Azazel", "Volo##{{Collectible118}} Al posto delle lacrime \"Zolfo Fuso\" dal corto raggio"},
	[8] = {"Lazzaro", "Quando muore resuscita come Lazzaro Risorto con 1 Portacuori"},
	[9] = {"Eden", "Ogni partita inizia con statistiche e oggetti casuali"},
	[10] = {"Lo Smarrito", "Volo#Lacrime spettrali#{{Warning}} Niente Salute#{{DevilRoom}} I patti con il diavolo possono essere stretti gratuitamente 1 volta per stanza"},
	[11] = {"Lazzaro Risorto", "Statistiche aumentate e x1.2 Moltiplicatore Danni"},
	[12] = {"Giuda Oscuro", "{{Damage}} x2 Moltiplicatore Danni#Può ottenere Cuori Rossi#{{Player3}} Conta come Giuda per gli obiettivi"},
	[13] = {"Lilith", "Non può sparare lacrime#{{Collectible360}} Il suo \"Incubo\" spara per lei"},
	[14] = {"Mercante", "{{CoinHeart}} Si cura raccogliendo monete#Massimale di 2 Portamonete#I cuori consumabili vengono trasformati in mosche blu"},
	[15] = {"Apollion", ""},
	[16] = {"Il Dimenticato", "Si ha un attacco in mischia che può essere caricato e lanciato#{{BoneHeart}} Può possedere fino a 6 Cuori Ossei#{{Player17}} Premere {{ButtonRT}} lo scambia con L'Anima#{{SoulHeart}} L'Anima può possedere fino a 6 Cuori Celesti/Neri, vola e ha lacrime spettrali#L'Anima è incatenata ad Il Dimenticato entro un breve raggio"},
	[17] = {"L'Anima Dimenticata", "Si ha un attacco in mischia che può essere caricato e lanciato#{{BoneHeart}} Può possedere fino a 6 Cuori Ossei#{{Player17}} Premere {{ButtonRT}} lo scambia con L'Anima#{{SoulHeart}} L'Anima può possedere fino a 6 Cuori Celesti/Neri, vola e ha lacrime spettrali#L'Anima è incatenata ad Il Dimenticato entro un breve raggio"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Prossime Ricompense Stanza dei Sacrifici]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% di chance di 1 moneta#{{Bomb}} Se si è in S1 e si ha sconfitto il boss in meno di 1 minuto, 100% di chance di 1 bomba"},
	{"2", "", "{{Coin}} 50% di chance di 1 moneta#{{Bomb}} Se si è in S1 e si ha sconfitto il boss in meno di 1 minuto, 100% di chance di 1 bomba"},
	{"3", "", "{{AngelChance}} 67% di chance che aumentino le chance di una Stanza dell'Angelo"},
	{"4", "", "{{Chest}} 50% di chance di 1 baule casuale"},
	{"5", "", "{{Coin}} 33% chance di 3 monete#{{AngelChance}} 67% di chance che aumentino le chance di una Stanza dell'Angelo"},
	{"6", "", "{{AngelRoom}} 33% di chance di teletrasportarsi nella Stanza dell'Angelo#{{DevilRoom}} Teletrasporta nella Stanza del Diavolo se la sua porta è stata generata nel piano corrente#{{Chest}} 67% di chance di un baule casuale"},
	{"7", "", "{{AngelRoom}} 33% di chance di 1 oggetto della stanza dell'Angelo#{{SoulHeart}} 67% di chance di 1 Cuore Celeste"},
	{"8", "", "100% di chance di 7 Bombe Troll"},
	{"9", "", "100% di chance di genrare Uriel"},
	{"10", "", "{{SoulHeart}} 50% chance di 7 Cuori Celesti#{{Coin}} 50% chance di 30 monete"},
	{"11", "", "100% di chance di generare Gabriel"},
	{"12", "", "50% di chance di teletrasportarsi nella \"Camera Oscura\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Effetti della Stanza del Dado]"

EID.descriptions[languageCode].dice={
	{"1", "", "Rilancia tutti gli oggetti di Isaac in oggetti casuali della categoria di oggetti della stanza in cui erano stati ottenuti"},
	{"2", "", "Rilancia tutti i consumabili nella stanza"},
	{"3", "", "Rilancia tutti i consumabili e ninnoli nel piano#Non influisce sulla {{AngelDevilChance}} Stanza del Diavolo/dell'Angelo o sui {{LadderRoom}} cunicoli"},
	{"4", "", "Rilancia tutti i piedistalli nel piano#Non influisce sulla {{AngelDevilChance}} Stanza del Diavolo/dell'Angelo o sui {{LadderRoom}} cunicoli"},
	{"5", "", "Rilancia e ripristina il piano corrente"},
	{"6", "", "Rilancia tutti gli oggetti di Isaac#Rilancia tutti i consumabili, ninnoli e piedistalli nel piano"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fungoduria",			-- 2
	"Belzebù",		-- 3
	"Siamesi",		-- 4
	"Tossicone",				-- 5
	"Sì, Madre?",		-- 6
	"Quanta Cacca",			-- 7
	"Bob",				-- 8
	"Leviatano",		-- 9
	"Serafino",			-- 10
	"Super Scroccone",		-- 11
	"Sapientino",			-- 12
	"Bimbo Ragno",		-- 13
	"Adulto",			-- 14
	"Piedone"			-- 15
}

---------- MISC ----------

-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- TODO: Not Implemented right now...
	return text
end

EID.descriptions[languageCode].VoidText = "Se assorbito, si ottiene:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{1} Velocità", "{1} Lacrime", "{1} Danni", "{1} Gittata", "{1} Velocità Colpi", "{1} Fortuna"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Danni", "↑ {{Tears}} -4 Delay tra Lacrime", "↑ {{Speed}} +0.5 Velocità", "↑ {{Range}} +7.5 Gittata#↑ +1 Altezza Lacrime"}

EID.descriptions[languageCode].CrookedPennyHeads = "Testa"
EID.descriptions[languageCode].CrookedPennyTails = "Croca"

EID.descriptions[languageCode].LuckModifier = "{1}% di chance con {2} di Fortuna"

EID.descriptions[languageCode].CollectionPageInfo = "Questo oggetto deve essere raccolto per la collezione!"

EID.descriptions[languageCode].BlackFeatherInformation = "Oggetti tenuti al momento: {{ColorLime}}{1}{{CR}} (+{2} Danni)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} USO SINGOLO {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"↑ {{Heart}} +{1} Salute", "{{SoulHeart}} +{1} Cuore Celeste/i",
	"↑ {{EmptyHeart}} +{1} Portacuori vuoto/i", "{{SoulHeart}} +{1} Cuore/i Celeste/i",
	"↓ {{EmptyHeart}} {1} Salute", "↓ {{SoulHeart}} {1} Cuore/i Celeste/i"},

	["Red to Black"] = {"↑ {{Heart}} +{1} Salute", "{{BlackHeart}} +{1} Cuore/i Nero/i",
	"↑ {{EmptyHeart}} +{1} Portacuori vuoto/i", "{{BlackHeart}} +{1} Cuore/i Nero/i",
	"↓ {{EmptyHeart}} {1} Salute", "↓ {{BlackHeart}} {1} Cuore/i Nero/i"},

	["Red to Bone"] = {"↑ {{Heart}} +{1} Salute", "{{BoneHeart}} +{1} Cuore/i Osseo/i",
	"↑ {{EmptyHeart}} +{1} Portacuori vuoto/i", "{{EmptyBoneHeart}} +{1} Cuore/i Osseo/i Vuoto/i", "{{HealingRed}}", "{{HealingBone}}", -- Red HP to Bone Hearts
	"↓ {{EmptyHeart}} {1} Salute", "↓ {{EmptyBoneHeart}} {1} Cuore/i Osseo/i"}, -- Red HP to Bone Hearts

	["Red to Coin"] = {"↑ {{Heart}} +{1} Salute", "{{CoinHeart}} +{1} Portamonete",
	"↑ {{EmptyHeart}} +{1} Portacuori vuoto/i", "{{EmptyCoinHeart}} +{1} Portamonete vuoto/i",
	"{{HealingRed}} Cura di {1} cuore/i", "{{HealingCoin}} Cura di {1} moneta/e", "{{HealingRed}} Cura di mezzo cuore", "{{HealingCoin}} Cura di 1 moneta", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}} {1} Salute", "↓ {{EmptyCoinHeart}} {1} Portamonete"},

	["Red to None"] = {"↑ {{Heart}} +{1} Salute", "", "↑ {{EmptyHeart}} +{1} Portacuori vuoto/i", "", "↓ {{EmptyHeart}} {1} Salute", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Nome Oggetto Demo",
	DemoObjectTransformation = "Trasformazione Demo",
	DemoObjectText = "Questo testo è in italiano#Una lunga descrizione molto figa per simulare linebreak causati dalla larghezza del testo nell'EID!#{{Collectible4}} Anche questa è una riga figa#{{Heart}} Questa riga ti ama#{{AngelDevilChance}} Questa riga può essere il tuo angelo o il tuo diavolo#\1 {{Damage}} +1 Aumento di statistica",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Esito",
	InventoryEmpty = "(Il PG non ha oggetti)",
	CategoryNames = {
		Overview = "Panoramica Inventario",
		Wisps = "Fiammelle di Lemegeton",
		Special = "Speciale",
		Actives = "Oggetti attivi tenuti",
		Pockets = "Oggetti secondari tenuti",
		Trinkets = "Ninnoli tenuti",
		Passives = "Oggetti passivi tenuti",
		Character = "Info Personaggio",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Stanza Normale", "Negozio", "Stanza I AM ERROR", "Stanza dei Tesori", "Stanza del Boss", "Stanza Miniboss", "Stanza Segreta", "Stanza Super Segreta", "Sala Arcade", "Stanza Maledetta", "Sala Sfida", "Biblioteca", "Stanza dei Sacrifici", "Stanza del Diavolo", "Stanza dell'Angelo", "Stanza Cunicolo", "Stanza Boss Rush", "Stanza di Isaac", "Stanza Spoglia", "Stanza del Baule", "Stanza del Dado", "Mercato Nero", "Anticamera", "Planetario", "Entrata Teletrasporto", "Uscita Teletrasporto", "Botola Percorso Alternativo", "Stanza Chiave Blu", "Stanza Ultra Segreta",
-- Not technically room types but still potentially useful to have localized
[666] = "Stanza del Diavolo/dell'Angelo", [1024] = "Stanza Rossa", [1025] = "Stanza Rossa Speciale" }

-- currently used for D1 and Glyph of Balance; contains Rep pickups for ease of localization
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "None",

	["5.10"] = "{{Heart}} Cuore",
	["5.10.1"] = "{{Heart}} Cuore", ["5.10.2"] = "{{HalfHeart}} Mezzo Cuore", ["5.10.3"] = "{{SoulHeart}} Cuore Celeste", ["5.10.4"] = "{{EternalHeart}} Cuore Eterno", ["5.10.5"] = "{{Heart}} Double Heart", ["5.10.6"] = "{{BlackHeart}} Cuore Nero", ["5.10.7"] = "{{GoldHeart}} Cuore D'Oro", ["5.10.8"] = "{{HalfSoulHeart}} Mezzo Cuore Celeste", ["5.10.9"] = "{{Heart}} Scappo Cuore", ["5.10.10"] = "{{BlendedHeart}} Cuore Fuso", ["5.10.11"] = "{{EmptyBoneHeart}} Cuore Osseo", ["5.10.12"] = "{{RottenHeart}} Cuore Marcio",

	["5.20"] = "{{Coin}} Moneta",
	["5.20.1"] = "{{Crafting8}} Penny", ["5.20.2"] = "{{Crafting9}} Nichelino", ["5.20.3"] = "{{Crafting10}} Decino", ["5.20.4"] = "{{Crafting8}} Doppio Penny", ["5.20.5"] = "{{Crafting11}} Penny Fortunato", ["5.20.6"] = "{{Crafting9}} Nichelino Appiccicoso", ["5.20.7"] = "{{Crafting26}} Penny Dorato",

	["5.30"] = "{{Key}} Chiave",
	["5.30.1"] = "{{Crafting12}} Chiave", ["5.30.2"] = "{{Crafting13}} Chiave Dorata", ["5.30.3"] = "{{Crafting12}} Portachiavi", ["5.30.4"] = "{{Crafting14}} Chiave Carica",

	["5.40"] = "{{Bomb}} Bomba",
	["5.40.1"] = "{{Crafting15}} Bomba", ["5.40.2"] = "{{Crafting15}} Doppia Bomba", ["5.40.3"] = "{{Crafting15}} Bomba Troll", ["5.40.4"] = "{{Crafting16}} Bomba Dorata", ["5.40.5"] = "{{Crafting15}} Mega Bomba Troll", ["5.40.7"] = "{{Crafting17}} Giga Bomba",

	["5.42"] = "{{Crafting29}} Pupù", ["5.42.1"] = "{{Crafting29}} Grossa Pupù",

	["5.90"] = "{{Battery}} Pila",
	["5.90.0"] = "{{Crafting19}} Mini Pila", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Mini Pila", ["5.90.2"] = "{{Crafting18}} Micro Pila", ["5.90.3"] = "{{Crafting20}} Mega Pila", ["5.90.4"] = "{{Crafting28}} Pila Dorata",

	["5.50"] = "{{Chest}} Baule", ["5.51"] = "{{BombChest}} Baule Detonabile", ["5.52"] = "{{SpikedChest}} Baule Spinoso", ["5.53"] = "{{EternalChest}} Baule Eterno", ["5.54"] = "{{MimicChest}} Baule Imitante", ["5.55"] = "{{OldChest}} Vecchio Baule", ["5.56"] = "{{WoodenChest}} Baule di Legno", ["5.57"] = "{{MegaChest}} Mega Baule", ["5.58"] = "{{HauntedChest}} Baule Infestato", ["5.60"] = "{{GoldenChest}} Baule Dorato", ["5.360"] = "{{RedChest}} Baule Rosso",

	["5.69"] = "{{GrabBag}} ", ["5.69.1"] = "{{GrabBag}} Sacco Sorpresa", ["5.69.2"] = "{{BlackSack}} Sacco Nero",

	["5.70"] = "{{Pill}} Pillola",
	["5.300"] = "{{Card}} Carta",
	["5.301"] = "{{Rune}} Runa", -- not a real id
	["5.350"] = "{{Trinket}} Ninnolo",

}

-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Sovrascritto da {1}",
	["Overrides"] = "Sovrascrive {1}",
	["Almost No Effect"] = "Effetto esiguo o nullo su {1}",
	["No Effect"] = "Effetto nullo su {1}",
	["No Effect Replace"] = {"Nessun effetto per {1}"},
	["No Effect From"] = "Nessun effetto da {1}",
	["Can't Charge"] = "Non può caricare {1}",
	["Can't Be Charged"] = "Non può essere caricato da {1}",
	["Can't Be Duplicated"] = "Non può essere duplicato",
	["No Effect (Greed)"] = "{{GreedMode}} Effetto nullo in Modalità Avido",
	["No Effect (Copies)"] = "Nessun effetto extra da più copie", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Nessun effetto extra da famigli", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "Effetto diverso per {1}",
	["Dies on Use"] = "{{Warning}} Se usato {1} muore", -- for Razor Blade and such as The Lost
	
	
	------ GREED MODE ------
	["Room to Wave"] = {"stanza", "ondata", "stanze", "ondate"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Nella Modalità Avido campioni non lasciano consumabili!", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} Genera un Mendicacuori"}, -- Temperance (Greed)
	["5.300.19"] = {"Teletrasporta Isaac nella prima stanza del piano"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Salute al massimo#Infligge 100 danni a tutti i nemici"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Non si attiva per ciascuna ondata, bensì per ciascuna stanza", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} Nessuno scudo nelle Ondate Boss, solo contro Ultra Avarizia", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} Nessuna carica nelle Ondate Boss, solo contro Ultra Avarizia", -- Hairpin (Greed)
	["5.100.246"] = {"{{SuperSecretRoom}} Rivela la posizione nella mappa della Stanza Super Segreta"}, -- Blue Map (Greed)
	["5.100.333"] = {"{{SuperSecretRoom}} Rivela la posizione nella mappa della Stanza Super Segreta"}, -- The Mind (Greed)
	["5.100.514"] = {"Fa sì che ad intervalli casuali alcuni nemici e proiettili si fermino brevemente"}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 33% di chance di un cuore extra da bauli, rocce colorate e da macchine distrutte"}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 33% di chance di una chiave extra da bauli, rocce colorate e da macchine distrutte"}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 33% di chance di una bomba extra da bauli, rocce colorate e da macchine distrutte#{{Warning}} Rimuove {{Trinket53}} \"Zecca\""}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 33% di chance di una pillola extra da bauli, rocce colorate e da macchine distrutte"}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 33% di chance di una carta extra da bauli, rocce colorate e da macchine distrutte"}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} +10% di chance che un consumabile casuale sia una pila#{{Battery}} 5% di chance di aggiungere 1 carica all'oggetto attivo tenuto mentre si completa un'ondata"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"{{Warning}} MONOUSO {{Warning}} Genera ricompense in base al piano:#Seminterrato: 2{{Bomb}} + 2{{Key}}#Grotte: Oggetto del Boss + 2{{SoulHeart}}#Profondità: 20{{Coin}}#Grembo: 2 Oggetti del Boss#Sheol: Oggetto Demoniaco + 1{{BlackHeart}}#Il Negozio/Ultra Avarizia: 1{{Coin}}"}, -- Pandora's Box
	

	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Morire in una {{SacrificeRoom}} Stanza dei Sacrifici mentre viene tenuto questo ninnolo sblocca Lo Smarrito", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Sblocca {{Collectible523}} \"Scatola per Traslochi\"", "Nulla"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 Cuori Celesti"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 Cuori Celesti#{{BlackHeart}} +1 Cuore Nero"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 Cuori Celesti#{{BlackHeart}} +1 Cuore Nero"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 Cuore Celeste#{{BlackHeart}} +2 Cuori Neri"}, -- for Black Heart chars
	
	
	["5.100.135 (PHD)"] = "Genera 2-3 monete se si ha {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Genera 0-1 monete nel caso di {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "Quando viene raccolto {1} ottiene un semplice ↑ {{Tears}} +0.4 Lacrime", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1} può ottenere portamonete extra", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} morirà", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Isaac spara altre 3 lacrime#Nessuna ulteriore diminuzione della statistica", -- The Inner Eye
	["5.100.153 (Copies)"] = "Isaac spara altre 4 lacrime#Nessun ulteriore aumento della statistica", -- Mutant Spider
	["5.100.245 (Copies)"] = "Isaac spara altre 2 lacrime", -- 20/20
	["5.100.358 (Copies)"] = "Isaac spara altre 2 lacrime più vicine al centro", -- The Wiz
	["5.100.64 (Copies)"] = "Possedere questo oggetto per 2 volte rende gratuiti tutti gli oggetti nel Negozio", -- Steam Sale
	["5.100.118 (Copies)"] = "Isaac spara un ulteriore raggio", -- Brimstone
	["5.100.224 (Copies)"] = "Copie extra conferiscono solo -0.2 Velocità", -- Kidney Stone
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Le torrette di \"Pepita Marrone\" contano come famigli",
	["Sacrificial Conception"] = "I famigli ottenuti da {1} possono essere sacrificati e resusciteranno",
	["Sacrificial Angels"] = "{1} genera 2 Cuori Neri se sacrificati",
	["Sacrificial Void"] = "Se assorbito da \"Vuoto\" può essere usato più volte",
	
	["5.100.116 (1 Room)"] = "Se si è in una stanza non completata le ricariche a 1 stanza diventano ricariche da 15 secondi", -- 9 Volt
	["5.100.116 (Timed)"] = "Le ricariche a tempo iniziano piene per metà", -- 9 Volt
	["9 Volt 1 Room"] = "Ricariche da 15 secondi se si è in una stanza non completata", -- Actives + 9 Volt
	["9 Volt Timed"] = "Dopo l'uso le cariche sono piene per metà", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Riduce il costo di mezzo cuore", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} non può prevenire la morte", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Non previene la morte da {1}", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "x1.5 Moltiplicatore Danni se è attivo l'effetto di {1}", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Moltiplicatore Danni", -- Book of Belial
	["5.300.16"] = "x1.5 Moltiplicatore Danni", -- XV - The Devil
	
	["5.100.81"] = "I personaggi che non hanno Cuori Rossi vengono portati ad 1 Cuore Celeste/Nero", -- Dead Cat
	["5.100.316"] = "{1} rimuove l'effetto di teletrasporto", -- Cursed Eye
	["5.100.260"] = "Rimuove l'effetto di teletrasporto di {1}", -- Black Candle
	["Void Single Use"] = "Gli oggetti monouso vengono attivati per 1 volta sola", -- Single Use Actives + Void
	["? Card Single Use"] = "Dopo l'uso di \"Carta ?\" gli oggetti monouso spariranno", -- Single Use Actives + ? Card
	["5.300.48"] = "Teletrasporta nella Stanza I AM ERROR#\"Carta Bianca\" e \"Carta ?\" verranno distrutte", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Usare \"Carta ?\" con \"Carta Bianca\" teletrasporta nella Stanza I AM ERROR e distrugge ambo le carte", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Gli oggetti gratuiti non verranno riforniti", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} +0.2 Danni", -- Black Feather items
	
	["Bulb Multiple"] = "Considera solamente l'oggetto attivo primario", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Gli attivi con 0 cariche non attivano la lampadina", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "Praticamente inutili con le ricariche a tempo", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Con {1} si attiva ad 1 Cuore Rosso", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Isaac spara di fronte e ai lati", -- R U A Wizard + The Wiz
	["5.100.523"] = "Per {1} conta come un oggetto passivo", -- Moving Box + Void
	["Mongo Babies"] = "Può essere copiato da {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "Con {1} il laser rimpiaza completamente le lacrime",
	["Brimstone Proptosis"] = "A bruciapelo i raggi infliggono x2 di danni extra, che diminuiscono con la distanza",
	["Brimstone Ipecac"] = "Durante la carica vengono sparate lacrime di \"Ipecac\"#I +40 Danni vengono applicati al laser",
	["Proptosis Anti-Gravity"] = "Le lacrime non perdono danni finché non iniziano a muoversi",
	["Epic Fetus Soy Milk"] = "La durata del mirino non viene diminuita, ma i danni dei missili vengono ridotti drasticamente",
	["Eye of Belial Dr. Fetus"] = "Le bombe penetrano ma non sono a ricerca e non infliggono danni extra",
	["Epic Fetus Brimstone"] = "{1} ha la priorità#I razzi sparano 10 raggi",
	["Epic Fetus Mom's Knife"] = "{1} ha la priorità#I razzi sparano 10 coltelli",
	["Haemolacria Brimstone"] = "{1} ha la priorità#Le lacrime si dividono in 4-7 raggi",
	["Brimstone Mom's Knife"] = "{1} ha la priorità#In base all'ammontare della carica viene sparata una raffica di coltelli",
	["Ludovico Ipecac"] = "La lacrima infligge +4 Danni ma non esplode o avvelena",
	["Technology Ipecac"] = "Il laser infligge +4 Danni e avvelena i bersagli",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} x1.25 Moltiplicatore Lacrime",
	["Chocolate Milk Marked"] = "Isaac carica i colpi automaticamente in base alla distanza dal mirino",
	["Ghost Pepper Fart"] = "Scorreggiare fa sparare una fiamma dietro ad Isaac",
	["Damage Multiplier Stack"] = "Il moltiplicatore danni non scala",
	["White Poop"] = "Genera invece una Cacca Bianca",
	["White Poop Chance"] = "Chance di generare una Cacca Bianca",
	["Golden Poop Chance"] = "Chance di generare una Cacca Dorata",
	["5.100.483"] = "{{GoldenBomb}} Avere una bomba doratta mentre si usa l'oggetto lo consuma e concede un uso ulteriore di \"Mamma Mega\"",

	["5.300.5"] = {"{{BossRoom}} Teletrasporta Isaac in una Stanza Boss casuale"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Se non c'è una Stanza dei Tesori teletrasporta Isaac in una stanza casuale", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Teletrasporta Isaac in una Stanza dei Tesori casuale"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Teletrasporta Isaac nella prima stanza del piano"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Se non c'è un Negozio teletrasporta Isaac in una stanza casuale", -- IX - The Hermit (Womb and below)

}



