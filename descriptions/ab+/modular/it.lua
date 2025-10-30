---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "Le lacrime ottengono un effetto boomerang", -- My Reflection
	-- Full old Desc: "â†‘ {{Range}} +1.5 Gittata#â†‘ +1 Altezza Lacrime#â†‘ {{Shotspeed}} +0.6 VelocitÃ  Colpi#Le lacrime ottengono un effetto boomerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Spara lacrime normali", -- Brother Bobby
	-- Full old Desc: "Spara lacrime normali#Infligge 3.5 danni a lacrima"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Tutte le mosche nemiche sono amichevoli", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Una volta morto Isaac resuscita con la salute al massimo", -- 1up!
	-- Full old Desc: "â†‘ {{Heart}} +1 Salute#Una volta morto Isaac resuscita con la salute al massimo"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} I nemici avvelenati possono lasciare Cuori Neri", -- The Virus
	-- Full old Desc: "â†“ {{Speed}} -0.1 VelocitÃ #{{Poison}} Toccare i nemici li avvelena#{{BlackHeart}} I nemici avvelenati possono lasciare Cuori Neri"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Rivela tutte le icone sulla mappa#Non mostra il layout della mappa", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} Volo per la stanza#{{MomsHeart}} Uccide istantaneamente Mamma, Cuore di Mamma e \"Ãˆ Vivo!\"#{{Warning}} Uccide Isaac se usato contro Satana", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Genera una cacca e respinge i nemici#PuÃ² essere piazzata vicino a una fossa e distrutta con una bomba per creare un ponte", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Spara 10 lacrime in cerchio attorno ad Isaac#Le lacrime copiano gli effetti delle lacrime di Isaac, e fanno 25 danni in piÃ¹", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "{{Petrify}} Pietrifica tutti i nemici nella stanza per 4 secondi", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Produce un'esplosione nella posizione di Isaac", -- Kamikaze!
	-- Full old Desc: "Produce un'esplosione nella posizione di Isaac#Infligge 40 danni"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Spaventa tutti i nemici nella stanza per 5 secondi", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Usare l'oggetto e sparare in una direzione fa scagliare la testa#{{Poison}} La testa esplode all'impatto e avvelena i nemici colpiti dall'esplosione", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teletrasporta Isaac in una stanza casuale che non sia una Stanza I AM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% di chance di una ricompensa a completamento stanza#PiÃ¹ alte chance di vittoria nel gioco d'azzardo", -- Lucky Foot
	-- Full old Desc: "â†‘ {{Luck}} +1 Fortuna#+8% di chance di una ricompensa a completamento stanza#PiÃ¹ alte chance di vittoria nel gioco d'azzardo"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Se usato, appare un mirino direzionabile#Un missile colpisce il mirino dopo 1.5 secondi#Infligge i danni di Isaac x20", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Il prossimo colpo Ã¨ sostituito da un raggio", -- Shoop da Whoop!
	-- Full old Desc: "Il prossimo colpo Ã¨ sostituito da un raggio#Infligge i danni di Isaac x26 per 0.9 secondi"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} Tali bombe infliggono i danni delle lacrime di Isaac x5 + 30", -- Dr. Fetus
	-- Full old Desc: "â†“ {{Tears}} x2.5 Moltiplicatore Delay tra Lacrime#{{Bomb}} Isaac spara bombe al posto delle lacrime#{{Damage}} Tali bombe infliggono i danni delle lacrime di Isaac x5 + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Isaac attrae a sÃ© i consumabili", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Rivela il layout del piano#Non rivela le icone delle stanze", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Versa una pozza di liquame#TIl liquame infligge 24 danni da contatto al secondo", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Mosca orbitale a medio raggio", -- Distant Admiration
	-- Full old Desc: "Mosca orbitale a medio raggio#Infligge 75 danni da contatto al secondo"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Permette ad Isaac di superare varchi da 1 casella", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Uccidere 13 nemici cura di mezzo cuore", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} Gli oggetti attivi possono essere sovraccaricati fino a 2 cariche complete", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Gli oggetti del Negozio costano il 50% in meno", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Evoca 6 Bombe Troll intorno al centro della stanza", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Rallenta i nemici per 8 secondi", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Spara lacrime normali", -- Sister Maggy
	-- Full old Desc: "Spara lacrime normali#Infligge 3.5 danni a lacrima"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Isaac spara laser al posto delle lacrime", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Lacrime caricabili#{{Damage}} I danni scalano con i tempi di carica fino a x4#{{Tears}} Il tempo massimo di carica Ã¨ il delay tra lacrime x2.5", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "PiÃ¹ Altezza Lacrime e meno Gittata = leggermente PiÃ¹ Gittata", -- Mini Mush
	-- Full old Desc: "â†‘ {{Speed}} +0.3 VelocitÃ #â†‘ +1.5 Altezza Lacrime#â†‘ Diminuzione Statura#â†“ {{Range}} -4.25 Gittata#PiÃ¹ Altezza Lacrime e meno Gittata = leggermente PiÃ¹ Gittata"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Lv1: Orbitale#Lv2: Orbitale che spara#Lv3: Meat Boy#Lv4: Super Meat Boy", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Le Macchine di Donazione Sangue concedono piÃ¹ {{Coin}} monete", -- PHD
	-- Full old Desc: "{{Heart}} Cura 2 cuori#{{HealingRed}} Genera 1 pillola#{{Pill}} Converte le pillole negative in positive#{{BloodDonationMachine}} Le Macchine di Donazione Sangue concedono piÃ¹ {{Coin}} monete"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Apre tutte le entrate per le stanze segrete", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "Usare l'oggetto ha piÃ¹ alte chance di rimpiazzare il boss del piano con un Cavaliere", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Cuore Celeste#{{AngelDevilChance}} +17.5% di chance di una Stanza del Diavolo/dell'Angelo mentre viene tenuto#Usare l'oggetto ha piÃ¹ alte chance di rimpiazzare il boss del piano con un Cavaliere"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Una volta morto Isaac resuscita con 1 Portacuori#{{Warning}} Quando viene raccolto imposta i Portacuori di Isaac ad 1", -- Dead Cat
	-- Full old Desc: "â†‘ +9 Vite#Una volta morto Isaac resuscita con 1 Portacuori#{{Warning}} Quando viene raccolto imposta i Portacuori di Isaac ad 1"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#Permette ad Isaac di distruggere le rocce camminandoci sopra", -- The Nail
	-- Full old Desc: "Se usato:#{{SoulHeart}} +1 Cuore Celeste#{{Timer}} Conferisce fino all'uscita dalla stanza:#â†‘ {{Damage}} +0.7 Danni#â†“ {{Speed}} -0.18 VelocitÃ #Isaac infligge 40 danni da contatto al secondo#Permette ad Isaac di distruggere le rocce camminandoci sopra"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Apre una botola per il prossimo piano#{{LadderRoom}} 10% di chance di aprire una botola con cunicolo", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Monstro cade su 1 nemico e infligge 120 danni#{{Warning}} Se la stanza non ha nemici Monstro cade su Isaac", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Si lancia in avanti nella direzione in cui Isaac sta sparando", -- Little Chubby
	-- Full old Desc: "Si lancia in avanti nella direzione in cui Isaac sta sparando#Infligge 52.5 danni di contatto al secondo"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Rivela il tipo di stanza delle stanze adiacenti#{{SecretRoom}} PuÃ² rivelare Stanze Segrete e Super Segrete", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} Spaventa tutti i nemici nella stanza", -- The Gamekid
	-- Full old Desc: "{{Timer}} Conferisce per 6.5 secondi:#InvincibilitÃ #Isaac non puÃ² sparare ma infligge 40 danni da contatto al secondo#{{HealingRed}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Genera 1 moneta casuale ogni 2 stanze", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Spara laser", -- Robo-Baby
	-- Full old Desc: "Spara laser#Infligge 3.5 danni a colpo"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Genera mezzo Cuore Rosso ogni 3 stanze", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Spara proiettili rallentanti", -- Little Gish
	-- Full old Desc: "{{Slow}} Spara proiettili rallentanti#Infligge 3.5 danni a lacrima"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Spara proiettili a ricerca", -- Little Steven
	-- Full old Desc: "Spara proiettili a ricerca#Infligge 3.5 danni a lacrima"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Al contatto le lacrime si dividono in 2#Le lacrime divise infliggono metÃ  dei danni", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Risorteggia i piedistalli nella stanza corrente", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} Conferisce fino all'uscita dalla stanza:#Volo#Il corpo di Isaac si separa dalla testa e attacca i nemici con 82.5 danni da contatto al secondo"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Riduce la maggior parte dei danni presi a mezzo cuore", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "â†‘ +0.04 Danni per ogni {{Coin}} moneta che ha Isaac", -- Money = Power
	-- English: "â†‘ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Infligge 5 danni ai nemici nelle vicinanze e li avvelena#Il veleno infligge i danni di Isaac per 6 volte", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Velocizza tutti gli altri orbitali", -- Guardian Angel
	-- Full old Desc: "Orbitale#Velocizza tutti gli altri orbitali#Blocca i proiettili#Infligge 105 danni da contatto al secondo"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Spara ai nemici che gli si avvicinano", -- Demon Baby
	-- Full old Desc: "Spara ai nemici che gli si avvicinano#Infligge 3 danni a lacrima"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Le lacrime di Isaac vengono rimpiazzate da un coltello lanciabile#{{Damage}} Il coltello infligge i danni di Isaac x2 mentre viene tenuto e x6 alla massima distanza possibile", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} Carica automaticamente la 1Â° barra degli oggetti attivi#{{Battery}} Quando viene raccolto ricarica pienamente l'oggetto attivo", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Venire colpito genera un uccello", -- Dead Bird
	-- Full old Desc: "Venire colpito genera un uccello#L'uccello infligge 4.3 danni da contatto al secondo"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Quando si Ã¨ a mezzo Cuore Rosso o meno:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Quando si Ã¨ a mezzo Cuore Rosso o meno:#â†‘ {{Speed}} +0.3 VelocitÃ #â†‘ {{Damage}} +1.5 Danni"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} Genera 1 famiglio casuale fino all'uscita dalla stanza", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Attiva l'effetto di 1 oggetto attivo casuale#Sceglie l'effetto da un elenco definito di oggetti", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Bombe a ricerca", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bombe#Bombe a ricerca"
	-- English: "Homing bombs"

	[C_ID .. 126] = "â†‘ {{Damage}} +1.2 Danni#{{Warning}} Infligge 1 cuore di danni ad Isaac#{{Heart}} Rimuove per primi i Cuori Rossi", -- Razor Blade
	-- English: "â†‘ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "{{Warning}} MONOUSO {{Warning}}#Risorteggia e fa ripartire l'intero piano", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Mosca orbitale a lunga distanza", -- Forever Alone
	-- Full old Desc: "Mosca orbitale a lunga distanza#Infligge 30 danni da contatto al secondo"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "{{Speed}} Imposta la VelocitÃ  ad almeno 1.5#Volo mentre viene tenuto#Usare l'oggetto fa scattare Isaac nella direzione in cui si sta muovendo", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Genera 1 bomba ogni 2-3 stanze", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} I danni inflitti dalle lacrime aumentano con la distanza percorsa", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} Converte 1 Portacuori in 3 Cuori Celesti", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% di chance di rimpiazzare la ricompensa per completamento stanza con 1 baule#33% di chance di non generare alcuna ricompensa per completamento stanza", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} Ferisce Isaac per mezzo cuore e genera 1-2 monete", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Genera un Isaac finto che attrae i nemici ed esplode dopo 5 secondi", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Le bombe di Isaac non esplodono piÃ¹ automaticamente#Usare l'oggetto fa detonare tutte le bombe di Isaac contemporaneamente", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe di Isaac non esplodono piÃ¹ automaticamente#Usare l'oggetto fa detonare tutte le bombe di Isaac contemporaneamente"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Isaac puÃ² tenere 2 ninnoli", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} Le bombe  di Isaac avvelenano i nemici poison enemies colpiti dall'esplosione", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Poison}} Le bombe  di Isaac avvelenano i nemici poison enemies colpiti dall'esplosione"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Isaac ottiene 1 Cuore Celeste quando i danni lo riducono a mezzo cuore#PuÃ² avvenire solo 1 volta a stanza#Uscire e rientrare nella stanza permette di attivare nuovamente l'effetto", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Raccoglie monete nelle vicinanze#Genera in cambio consumabili casuali", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Permette ad Isaac di rompere rocce e muri delle stanze segrete camminandoci sopra", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici", -- Ipecac
	-- Full old Desc: "â†‘ {{Damage}} +40 Danni#â†“ {{Tears}} Meno Lacrime#Isaac spara lacrime lungo un arco#{{Poison}} Le lacrime esplodono nel punto in cui atterrano, avvelenando i nemici"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Colpire 1 nemico con una lacrima ha un 1/6 di chance di generare 1 mosca", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "Sotituisce le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco", -- Technology 2
	-- Full old Desc: "â†“ {{Tears}} x2 Moltiplicatore Lacrime#â†“ {{Damage}} x0.65 Moltiplicatore Danni#Sotituisce le lacrime dell'occhio destro di Isaac con un laser costante#{{Damage}} Il laser infligge il 20% dei danni di Isaac per tocco"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "â†‘ {{Damage}} x1.35 Moltiplicatore Danni per l'occhio sinistro", -- The Peeper
	-- Full old Desc: "â†‘ {{Damage}} x1.35 Moltiplicatore Danni per l'occhio sinistro#Levita intorno alla stanza#Infligge 17.1 danni da contatto al secondo"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Subire danni aggiunge 1 carica all'oggetto attivo", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "â†‘ {{Damage}} Subire danni conferisce piÃ¹ danni#Applicabile fino a 6 volte per piano#Dura per tutto il piano", -- Bloody Lust
	-- English: "â†‘ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Genera 1 {{SoulHeart}} Cuore Celeste, 1 {{Rune}} runa o 1 {{Card}} carta#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Genera 1 {{SoulHeart}} Cuore Celeste, 1 {{Rune}} runa o 1 {{Card}} carta#{{Timer}} Effetto di mappatura completa fino all'uscita dal piano (eccetto le {{SuperSecretRoom}} Stanze Super Segrete)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Genera 5 raggi di luce vicino ai nemici#Infligge i danni di Isaac + 20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Una volta morto Isaac resuscita nella forma di ??? (Bimbo Blu)", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Spara lacrime spettrali", -- Ghost Baby
	-- Full old Desc: "Spara lacrime spettrali#Infligge 3.5 danni a lacrima"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Fa scagliare una fiamma blu#La fiamma infligge danni da contatto, blocca i proiettili nemici, e svanisce dopo 2 secondi", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Risorteggia tutti i consumabili nella stanza", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Spara 2 lacrime in una traiettoria a forma di V", -- Harlequin Baby
	-- Full old Desc: "Spara 2 lacrime in una traiettoria a forma di V#Infligge 4 danni a lacrima"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Al posto delle lacrime appare un mirino direzionabile#Un missile colpisce il mirino dopo 1.5 secondi#Infligge i danni di Isaac x20", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Schiaccia 1 nemico casuale", -- Daddy Longlegs
	-- Full old Desc: "Schiaccia 1 nemico casuale#Infligge 40 danni al secondo"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} Rallenta i nemici per 4 secondi", -- Spider Butt
	-- Full old Desc: "{{Slow}} Rallenta i nemici per 4 secondi#Infligge 10 danni a tutti i nemici"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Spara lacrime casuali", -- Rainbow Baby
	-- Full old Desc: "Spara lacrime casuali#Infligge 3-5 danni a lacrima"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Apre tutte le porte nella stanza, incluse le {{SecretRoom}}{{SuperSecretRoom}} Stanze Segrete, {{ChallengeRoom}}{{BossRushRoom}}Sale Sfida, e la porta per Mega Satana", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Slot Machine portatile#{{Coin}} Spendi 1 moneta per una chance di generare 1 consumabile", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Subire danni fa versare una pozza di liquame#Il liquame infligge 24 danni al secondo", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Quando Isaac viene danneggiato scoreggia#{{Poison}} La scoreggia avvelena i nemici", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "{{Speed}} Imposta la VelocitÃ  ad almeno 1.5#Volo mentre viene tenuto#Usare l'oggetto fa scattare Isaac nella direzione in cui si sta muovendo, lasciando dietro di sÃ© raggi di luce", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} Rimuove per primi i Cuori Rossi", -- Blood Rights
	-- Full old Desc: "Infligge 40 danni a tutti i nemici#{{Warning}} Infligge 1 cuore di danno ad Isaac#{{Heart}} Rimuove per primi i Cuori Rossi"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Muoversi fa oscillare la palla di pelo#La palla cresce quando uccide 1 nemico#I danni inflitti dalla palla aumentano con il suo ingrandimento", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Riflette i movimenti di Isaac#Spara verso Isaac", -- Abel
	-- Full old Desc: "Riflette i movimenti di Isaac#Spara verso Isaac#Infligge 3.5 danni a lacrima"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Le lacrime di Isaac ottengono effetti casuali ogni 2-3 secondi", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Genera 1 consumabile di ciascuna tipologia", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "I bauli contengono piÃ¹ consumabili", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Chiavi#I bauli contengono piÃ¹ consumabili"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "{{Petrify}} Toccare i nemici li pietrifica e li trasforma in oro#Isaac infligge danni da contatto in base al suo numero di monete#{{Coin}} Uccidere 1 nemico dorato genera monete#La cacca generata da Isaac ha un'alta chance di essere cacca dorata", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Se possibile raddoppia i consumabili generati", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Subire danni ha il 50% di chance di generare 1 consumabile casuale", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Usare un oggetto attivo non carico lo ricarica pienamente al costo di 2 cuori#Funziona solo quando l'oggetto non ha cariche", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Lv1: Orbitale#Lv2: Orbitale che spara lacrime ammalianti#Lv3: Bandage Girl#Lv4: Super Bandage Girl", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "+15% di chance di nemici campioni", -- Champion Belt
	-- Full old Desc: "â†‘ {{Damage}} +1 Danni#+15% di chance di nemici campioni"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Le esplosioni stordiscono e danneggiano ogni nemico nella stanza", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Confusion}} Le esplosioni stordiscono e danneggiano ogni nemico nella stanza"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Rimanere fermi per 1 secondo rende Isaac invincibile", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "Una volta morto 50% di chance di ritornare in vita con mezzo cuore", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Le lacrime di Isaac distruggono i proiettili nemici", -- Lost Contact
	-- Full old Desc: "â†“ {{Shotspeed}} -0.15 VelocitÃ  Colpi#Le lacrime di Isaac distruggono i proiettili nemici"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} Quando Isaac prende danni lascia una scia di sangue fino all'uscita dalla stanza", -- Anemic
	-- Full old Desc: "â†‘ {{Range}} +5 Gittata#{{Timer}} Quando Isaac prende danni lascia una scia di sangue fino all'uscita dalla stanza"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "5% di chance di generare 1 ragno blu sparando lacrime", -- Placenta
	-- Full old Desc: "{{HealingRed}}Cura di 1 cuore#5% di chance di generare 1 ragno blu sparando lacrime#{{Luck}} 100% di chance con 10 in Fortuna"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Quando le bombe di Isaac esplodono sparano un cerchio di 10 lacrime", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Quando le bombe di Isaac esplodono sparano un cerchio di 10 lacrime"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Le lacrime di Isaac rimbalzano sui nemici e sugli ostacoli", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Tenere premuto il tasto di fuoco fa sÃ¬ che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate", -- Anti-Gravity
	-- Full old Desc: "â†‘ {{Tears}} -2 Delay tra Lacrime#Tenere premuto il tasto di fuoco fa sÃ¬ che le lacrime levitino a mezz'aria#Rilasciare il tasto di fuoco le lancia nella direzione verso cui erano state sparate"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "ImmunitÃ  a esplosioni, scosse sismiche e pestoni#{{HealingRed}} Le esplosioni curano Isaac di 1 cuore invece di danneggiarlo", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombe#ImmunitÃ  a esplosioni, scosse sismiche e pestoni#{{HealingRed}} Le esplosioni curano Isaac di 1 cuore invece di danneggiarlo"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Quando le lacrime colpiscono qualcosa si dividono in 4#Le lacrime divise infliggono la metÃ  dei danni", -- Cricket's Body
	-- Full old Desc: "â†‘ {{Tears}} -1 Delay tra Lacrime#â†‘ {{Tearsize}} x1.2 Dimensioni Lacrime#â†“ {{Range}} -10 Gittata#Quando le lacrime colpiscono qualcosa si dividono in 4#Le lacrime divise infliggono la metÃ  dei danni"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Subire danni ha una chance di generare 1 Cuore Celeste#{{HalfHeart}} I nemici hanno una chance di lasciare mezzo Cuore Rosso quando muoiono", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} Subire danni genera 1-2 monete", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Monete#{{Coin}} Subire danni genera 1-2 monete"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15% di chance di sparare lacrime spaventose", -- Mom's Perfume
	-- Full old Desc: "â†‘ {{Tears}} -1 Delay tra Lacrime#{{Fear}} 15% di chance di sparare lacrime spaventose"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} Le lacrime vengono caricate e rilasciate in un attacco a raffica", -- Monstro's Lung
	-- Full old Desc: "â†“ {{Tears}} x4.3 Moltiplicatore Delay tra Lacrime#{{Chargeable}} Le lacrime vengono caricate e rilasciate in un attacco a raffica"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15% di chance di sparare lacrime spaventose", -- Abaddon
	-- Full old Desc: "â†‘ {{Speed}} +0.2 VelocitÃ #â†‘ {{Damage}} +1.5 Danni#â†“ {{EmptyHeart}} Rimuove tutti i Portacuori#{{BlackHeart}} +6 Cuori Neri#{{Fear}} 15% di chance di sparare lacrime spaventose"
	-- English: "â†“ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Slow}} Isaac lascia una scia di liquame rallentante", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% di chance di sparare lacrime rallentanti#{{Luck}} 100% chance con 18 in Fortuna#{{Slow}} Isaac lascia una scia di liquame rallentante"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} Subire danni rallenta permanentemente tutti i nemici nella stanza", -- Stop Watch
	-- Full old Desc: "â†‘ {{Speed}} +0.3 VelocitÃ #{{Slow}} Subire danni rallenta permanentemente tutti i nemici nella stanza"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Le lacrime di Isaac gli orbitano attorno", -- Tiny Planet
	-- Full old Desc: "â†‘ +7 Altezza Lacrime#Lacrime spettrali#Le lacrime di Isaac gli orbitano attorno"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Uccidere 1 nemico genera 1 ragno blu", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Toccare 1 nemico lo trasforma in cacca", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% di chance di Cuori Eterni", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Ottenere entrambi i pezzi della chiave apre una grossa porta dorata#{{AngelChance}} +25% di chance di una Stanza dell'Angelo#{{EternalHeart}} +2% di chance di Cuori Eterni"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% di chance di Cuori Eterni", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Ottenere entrambi i pezzi della chiave apre una grossa porta dorata#{{AngelChance}} +25% di chance di una Stanza dell'Angelo#{{EternalHeart}} +2% di chance di Cuori Eterni"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Raddoppia tutte le ricompense per completamento stanza33% di chance di nessunaa ricompensa per completamento stanza", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% di chance di bloccare proiettili nemici", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Blocca i proiettili nemici che arrivano dalla direzione verso cui isaac sta sparando", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Oltre alle lacrime Isaac spara certe volte dei laser", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Isaac spara 2 lacrime alla volta", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Rivela la posizione delle stanze segrete sulla mappa", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "I famigli infliggono il doppio dei danni", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Ragni e mosche blu infliggono il doppio dei danni", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Permette ad Isaac di scegliere tra 2 oggetti dopo aver battuto un boss", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Le bombe che si ottengono come ricompensa vengono raddoppiate", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Isaac puÃ² portare 2 carte#Trasforma in carte tutte le pillole", -- Starter Deck
	-- Full old Desc: "{{Card}} Quando viene raccolto genera 1 carta#Isaac puÃ² portare 2 carte#Trasforma in carte tutte le pillole"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Isaac puÃ² portare 2 carte#Trasforma in pillole tutte le carte", -- Little Baggy
	-- Full old Desc: "{{Pill}} Quando viene raccolto genera 1 pillola#Isaac puÃ² portare 2 carte#Trasforma in pillole tutte le carte"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} Le bombe di Isaac lasciano una fiamma quando esplodono", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Burning}} Le bombe di Isaac lasciano una fiamma quando esplodono"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Le esplosioni possono ferire Isaac", -- Fire Mind
	-- Full old Desc: "{{Burning}} Le lacrime di Isaac appiccano fuoco ai nemici#10% di chance che le lacrime esplodano all'impatto con il nemico#{{Luck}} 100% di chance con 13 in Fortuna#{{Warning}} Le esplosioni possono ferire Isaac"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Quando viene raccolto e ad ogni nuovo piano risorteggia tutti gli oggetti e le statistiche di Isaac", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} ImmunitÃ  alle maledizioni", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} ImmunitÃ  alle maledizioni#{{BlackHeart}} +1 Cuori Neri#{{AngelDevilChance}} +15% di chance di una Stanza del Diavolo/dell'Angelo"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "â†“ I danni inflitti dalle lacrime diminuiscono con la distanza percorsa", -- Proptosis
	-- Full old Desc: "â†‘ {{Damage}} x2 Moltiplicatore Danni#â†“ I danni inflitti dalle lacrime diminuiscono con la distanza percorsa"
	-- English: "â†“ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Cuore Nero#Subire danni e finire a 1 cuore danneggia tutti i nemici nella stanza"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Attaccca i nemici quando Isaac prende danni", -- Smart Fly
	-- Full old Desc: "Orbitale#Attaccca i nemici quando Isaac prende danni#Infligge 22.5 danni al secondo"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% di chance di danneggiare tutti i nemici nella stanza quando viene colpito da una lacrima nemica", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} Lascia del liquame rallentante#Genera 1-2 ragni blu dopo aver completato una stanza", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Spara laser#Si muove nella direzione verso cui Isaac sta sparando", -- Robo-Baby 2.0
	-- Full old Desc: "Spara laser#Infligge 3.5 damage a colpo#Si muove nella direzione verso cui Isaac sta sparando"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Genera mosche blu mentre Isaac spara", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Lascia del liquame che infligge 6 danni al secondo", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Insegue i nemici#{{HealingRed}} Quando uccide 1 nemico cura Isaac di mezzo cuore", -- Leech
	-- Full old Desc: "Insegue i nemici#{{HealingRed}} Quando uccide 1 nemico cura Isaac di mezzo cuore#Infligge 3.2 danni al secondo"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Genera 1 consumabile casuale ogni tot stanze", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Mosca esplosiva amichevole#{{Warning}} L'esplosione puÃ² ferire Isaac", -- BBF
	-- Full old Desc: "Mosca esplosiva amichevole#L'esplosione infligge 60 danni#{{Warning}} L'esplosione puÃ² ferire Isaac"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Scatta nella direzione verso cui Isaac sta sparando#Esplode quando colpisce 1 nemico#{{Warning}} L'esplosione puÃ² ferire Isaac", -- Bob's Brain
	-- Full old Desc: "Scatta nella direzione verso cui Isaac sta sparando#Esplode quando colpisce 1 nemico#{{Poison}} L'esplosione infligge 60 danni e avvelena i nemici#{{Warning}} L'esplosione puÃ² ferire Isaac"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Subire danni genera un orbitale dal medio raggio fino all'uscita dalla stanza", -- Best Bud
	-- Full old Desc: "Subire danni genera un orbitale dal medio raggio fino all'uscita dalla stanza#L'orbitale infligge 75 danni al secondo"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} Famiglio che carica e spara un {{Collectible118}} raggio di sangue", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} Famiglio che carica e spara un {{Collectible118}} raggio di sangue#Infligge 3.5 danni per tocco, per un totale di 31.5 danni"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Isaac diventa invincibile#Genera un cuore famiglio che segue Isaac#{{Warning}} Se il cuore famiglio viene colpito, Isaac prende danni", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} Insegue i nemici e li spaventa", -- Lil Haunt
	-- Full old Desc: "{{Fear}} Insegue i nemici e li spaventa#Infligge 4 danni al secondo"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Raccoglie i Cuori Rossi nelle vicinanze#{{SoulHeart}} Genera 1 Cuore Celeste o 1 ragno per ogni 1.5 Cuori Rossi raccolti", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Grosso orbitale", -- Big Fan
	-- Full old Desc: "Grosso orbitale#Infligge 30 danni al secondo"
	-- English: "Large orbital"

	[C_ID .. 280] = "Genera ad intervalli casuali ragni blu nelle stanze ostili", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Famiglio diversivo#I nemici bersagliano lui al posto di Isaac", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Permette ad Isaac di saltare sopra varchi e ostacoli", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Risorteggia tutti i consumabili e i piedistalli nella stanza, e tutti gli oggetti passivi di Isaac", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Risorteggia tutti gli oggetti passivi di Isaac", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Risorteggia tutti i nemici nella stanza", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Attiva l'effetto della carta o della runa tenuta da Isaac senza usarla", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Lancia una fiamma rossa#La fiamma sparisce dopo aver inflitto danni o bloccato 5 proiettili", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Con la salute al massimo puÃ² conservare fino a 4 Cuori Rossi#Usare l'oggetto butta a terra tutti i cuori accumulati nel piano", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Trasforma in cacca tutti i nemici che non sono boss#Uccide istantaneamente nemici e boss fatti di cacca", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Spara raggi di zolfo fuso in 4 direzioni", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Spara raggi di zolfo fuso in 4 direzioni"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Respinge nemici e proiettili nelle vicinanze", -- Butter Bean
	-- Full old Desc: "Respinge nemici e proiettili nelle vicinanze#10% di chance di trasformarsi nel piÃ¹ forte {{Collectible484}} "Aspe', Cosa?" quando lo si scambia con un altro oggetto attivo per poi raccoglierlo"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Infligge a tutti i nemici i danni di Isaac x2#{{Coin}} Costa 1 moneta", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Converte 2 Cuori Celesti/Neri in 1 Portacuori", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "â†‘ {{Speed}} Nelle stanze ostili si guadagna lentamente velocitÃ #A 2 di VelocitÃ , Isaac diventa invincibile e infligge danni da contatto#In seguito l'aumento di velocitÃ  di \"Toro\" viene perso fino all'uscita dalla stanza", -- Taurus
	-- Full old Desc: "â†“ {{Speed}} -0.3 VelocitÃ #â†‘ {{Speed}} Nelle stanze ostili si guadagna lentamente velocitÃ #A 2 di VelocitÃ , Isaac diventa invincibile e infligge danni da contatto#In seguito l'aumento di velocitÃ  di "Toro" viene perso fino all'uscita dalla stanza"
	-- English: "â†‘ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Toccare i nemici infligge danni a contatto", -- Aries
	-- Full old Desc: "â†‘ {{Speed}} +0.25 VelocitÃ #Toccare i nemici infligge danni a contatto"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Subire danni riduce di mezzo cuore tutti i prossimi danni nella stanza", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Cuori Celesti#Subire danni riduce di mezzo cuore tutti i prossimi danni nella stanza"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Isaac puÃ² rompere le rocce camminandoci sopra", -- Leo
	-- Full old Desc: "Aumento Statura#Isaac puÃ² rompere le rocce camminandoci sopra"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Subire danni rende Isaac temporaneamente invincibile#{{Luck}} 100% chance at 10 luck#Converte le pillole negative in positive", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Bilancia le statistiche di Isaac#Le prossime modifiche nelle statistiche verranno spartite tra tutte le statistiche", -- Libra
	-- Full old Desc: "+6 {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi#Bilancia le statistiche di Isaac#Le prossime modifiche nelle statistiche verranno spartite tra tutte le statistiche"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Isaac lascia una scia di liquame#Il liquame infligge 6 danni al secondo", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "Aumenta la spinta delle lacrime", -- Pisces
	-- Full old Desc: "â†‘ {{Tears}} -1 Delay tra Lacrime#â†‘ {{Tearsize}} x1.25 Dimensioni Lacrime#Aumenta la spinta delle lacrime"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} Una volta morto Isaac resuscita nella forma di Giuda Oscuro con un x2 di Moltiplicatore Danni", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Tutti i cuori rossi curano il doppio del loro valore", -- Maggy's Bow
	-- Full old Desc: "â†‘ {{Heart}} +1 Salute#{{HealingRed}} Cura di 1 cuore#Tutti i cuori rossi curano il doppio del loro valore"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Annulla il 1Â° danno preso in una stanza", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Isaac puÃ² rompere le rocce camminandoci sopra", -- Thunder Thighs
	-- Full old Desc: "â†‘ {{Heart}} +1 Salute#â†“ {{Speed}} -0.4 VelocitÃ #Isaac puÃ² rompere le rocce camminandoci sopra"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Le lacrime di Isaac attraggono nemici, consumabili e ninnoli", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Subire danni a caricamento parziale teletrasporta Isaac in una stanza casuale", -- Cursed Eye
	-- Full old Desc: "Carica una serie di 4 lacrime#{{Warning}} Subire danni a caricamento parziale teletrasporta Isaac in una stanza casuale"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Le lacrime di Isaac lasciano del liquame#Il liquame infligge 30 danni al secondo", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Famiglio per corpo a corpo", -- Gemini
	-- Full old Desc: "Famiglio per corpo a corpo#Infligge 6 danni da contatto al secondo"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Rimbalza attorno alla stanza#Spara in direzione di Isaac#{{Damage}} Infligge i danni di Isaac", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Mosca controllabile", -- ???'s Only Friend
	-- Full old Desc: "Mosca controllabile#Infligge 37.5 danni da contatto al secondo"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Palla trascinabile che puÃ² rompere le rocce", -- Samson's Chains
	-- Full old Desc: "Palla trascinabile che puÃ² rompere le rocce#Infligge 10.7 danni da contatto al secondo"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Imita le lacrime dei famigli bebÃ¨#Se ne si Ã¨ privi, spara lacrime normali da 3.5 danni", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Spara 8 lacrime in tutte le direzioni#Le lacrime copiano gli effetti delle lacrime di Isaac#Si ricarica sparando lacrime", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teletrasporta Isaac in una Stanza {{TreasureRoom}} Tesoro, {{SecretRoom}} Segreta, {{SuperSecretRoom}} Super Segreta o {{ErrorRoom}} I AM ERROR", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} La testa di Isaac diventa un famiglio stazionario fino all'uscita dalla stanza#La testa spara lacrime da 3.5 danni#Il corpo viene controllato separatamente e continua a sparare le lacrime di Isaac", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Tenere premuto il tasto USA svuota la barra di carica#A barra di carica vuota Isaac diventa temporaneamente invincibile#{{Warning}} Tenerlo premuto troppo a lungo infligge danni ad Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Subire danni e finire con mezzo Cuore Rosso o meno rende Isaac temporaneamente invincibile", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Subire danni e finire con mezzo Cuore Rosso o meno danneggia tutti i nemici nella stanza", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Rimpiazza le lacrime di Isaac con una grande lacrima controllabile", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "{{Damage}} Le lacrime ottengono un'aura che infligge x4.5 dei danni di Isaac al secondo", -- Godhead
	-- Full old Desc: "â†‘ {{Damage}} +0.5 Danni#â†‘ {{Range}} +1.2 Gittata#â†‘ +0.8 Altezza Lacrime#â†“ {{Tears}} -0.3 Lacrime#â†“ {{Shotspeed}} -0.3 VelocitÃ  Colpi#Lacrime a ricerca#{{Damage}} Le lacrime ottengono un'aura che infligge x4.5 dei danni di Isaac al secondo"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Una volta morto Isaac resuscita nella forma di Lazzaro (Risorto)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Effetto di mappatura completa", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Conferisce un'aura che repelle i nemici e i proiettili", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Cuori Celesti#Conferisce un'aura che repelle i nemici e i proiettili"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} Rallenta ogni 4Â° stanza#13% di chance che tale stanza sia velocizzata", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Boomerang lanciabile#{{Petrify}} Pietrifica i nemici e infligge i danni di Isaac x2#PuÃ² afferrare e riportare oggetti", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "{{Warning}} MONOUSO {{Warning}}#Raddoppia tutti i piedistalli e i consumabili nella stanza", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Attiva l'effetto della pillola tenuta da Isaac senza usarla", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Entrare in una stanza avvelena tutti i nemici#I nemici uccisi lasciano una pozza di liquame#Il liquame infligge 30 danni al secondo", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Pietrifica tutti i nemici nella stanza#{{Poison}} Infligge 5 danni e avvelena i nemici nelle vicinanze#Rilascia una scossa sismica nella direzione in cui si sta muovendo#La scossa sismica puÃ² aprire stanze segrete e rompere rocce", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} Sparare il cannone riduce la salute di Isaac a mezzo cuore#Spara una grossa lacrima penetrante + spettrale che infligge i danni di Isaac x10", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Le bombe creano un'esplosione a croce", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe creano un'esplosione a croce"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} Usare un oggetto attivo attiva 2 volte il suo effetto", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} Raddoppia tutti i famigli fino all'uscita dalla stanza#{{Collectible113}} Se Isaac non ha famigli conferisce 1 \"BebÃ¨ Demone\" fino all'uscita dalla stanza", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Isaac spara in diagonale 2 lacrime alla volta", -- The Wiz
	-- Full old Desc: "Lacrime spettrali#Isaac spara in diagonale 2 lacrime alla volta"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Aumenta la spinta delle lacrime", -- 8 Inch Nails
	-- Full old Desc: "â†‘ {{Damage}} +1.5 Danni#Aumenta la spinta delle lacrime"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Spara lacrime con lo stesso rateo di fuoco, danni ed effetti di quelle di Isaac", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Spara lacrime con gli stessi danni ed effetti di quelle di Isaac#Spara alla metÃ  del rateo di fuoco degli altri famigli", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Genera 1 consumabile casuale ogni qualche stanza", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Blocca e attrae i proiettili nemici#{{EternalHeart}} Bloccare dieci proiettili in una stanza genera 1 Cuore Eterno", -- Sworn Protector
	-- Full old Desc: "Orbitale#Infligge 105 danni da contatto al secondo#Blocca e attrae i proiettili nemici#{{EternalHeart}} Bloccare dieci proiettili in una stanza genera 1 Cuore Eterno"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Mosca orbitale a medio raggio", -- Friend Zone
	-- Full old Desc: "Mosca orbitale a medio raggio#Infligge 45 danni da contatto al secondo"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Si muove lungo i muri/ostacoli", -- Lost Fly
	-- Full old Desc: "Si muove lungo i muri/ostacoli#Infligge 105 danni da contatto al secondo"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Le bombe di Isaac si attaccano ai nemici#Uccidere 1 nemico con una bomba genera dei ragni blu", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#Le bombe di Isaac si attaccano ai nemici#Uccidere 1 nemico con una bomba genera dei ragni blu"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "â†‘ {{Tears}} Sparare verso una direzione diminuisce gradualmente il delay tra lacrime fino al 200%", -- Epiphora
	-- English: "â†‘ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Le lacrime possono passare attraverso un lato dello schermo e uscire dall'altro", -- Continuum
	-- Full old Desc: "â†‘ {{Range}} +2.25 Gittata#â†‘ +1.5 Altezza Lacrime#Lacrime spettrali#Le lacrime possono passare attraverso un lato dello schermo e uscire dall'altro"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} Subire danni genera 6 Bombe Troll#Le Bombe Troll ricevono gli effetti delle bombe di Isaac", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Ogni 30 secondi in una stanza non completata, il famiglio puÃ²:#{{Battery}} Generare 1 pila (max 2 per stanza)#{{Battery}} Aggiungere 1 carica all'oggetto attivo (max 2 per stanza)#{{Petrify}} Pietrificare tutti i nemici nella stanza", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "â†‘ {{Damage}} Le lacrime che colpiscono consecutivamente i nemici conferiscono +25% dei danni (max +100%)#I colpi mancati hanno una chance di resettare il moltiplicatore", -- Dead Eye
	-- English: "â†‘ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Damage}} Il raggio infligge i danni di Isaac x4", -- Holy Light
	-- Full old Desc: "10% di chance di sparare lacrime sacre, che quando colpiscono generano un raggio di luce#{{Luck}} 50% di chance con 9 in Fortuna#{{Damage}} Il raggio infligge i danni di Isaac x4"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Conferisce immunitÃ  alle esplosioni, scosse sismiche e ai pestoni di Mamma e Satana#25% di chance di riflettere i proiettili nemici", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Comprare oggetti al Negozio lo rifornisce istantaneamente", -- Restock
	-- Full old Desc: "Genera 3 consumabili casuali#Comprare oggetti al Negozio lo rifornisce istantaneamente"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "I ragni nemici non bersagliano o infliggono danni da contatto ad Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Tenere premuto il tasto di fuoco per 2.35 secondi genera 1 Bomba PopÃ²", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "{{Coin}} Le porte con una singola toppa vanno aperte con le monete al posto delle chiavi", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Monete#{{Coin}} Le porte con una singola toppa vanno aperte con le monete al posto delle chiavi"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Conferisce 1 oggetto casuale all'inizio della prossima run", -- Eden's Blessing
	-- Full old Desc: "â†‘ {{Tears}} +0.7 Lacrime#Conferisce 1 oggetto casuale all'inizio della prossima run"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "PuÃ² essere lanciata ai nemici per catturarli#{{Friendly}} Usare l'oggetto dopo aver catturato 1 nemico lo genera come compagno amichevole", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Divide tutte le lacrime di Isaac presenti sullo schermo in cerchi da 6 lacrime", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Si getta e rimbalza per la stanza ad una velocitÃ  che dipende dalla quantitÃ  di carica#Infligge dai 5 ai 90 danni da contatto al secondo in base alla velocitÃ ", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} Raccolgie le monete nelle vicinanze#Aumenta di livello dopo aver raccolto 6, 12, e 24 monete#Lv2: Chance di generare 1 oggetto a completamento stanza#Lv3: Spara lacrime capaci di generare monete quando colpiscono#Lv4: Insegue i nemici, certe volte lascia 1 bomba, se raccoglie monete puÃ² generare 1 oggetto", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Risorteggia gli ostacoli in altri ostacoli casuali (ad es. cacca, vasi, TNT, cacca rossa, blocchi di pietra etc.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} Famiglio circondato da un grande alone che rallenta i nemici e i proiettili al suo interno", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} Raccoglie chiavi nelle vicinanze#{{Chest}} In cambio genera bauli casuali", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Genera 1 runa casuale ogni 5-6 stanze", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Spara lacrime di \"Sacro Cuore\"", -- Seraphim
	-- Full old Desc: "Spara lacrime di "Sacro Cuore"#Infligge 10 danni a lacrima"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Subire danni ammalia tutti i nemici nella stanza", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Conferisce 1 effetto di un oggetto dello zodiaco casuale ad ogni piano", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% di chance di sparare lacrime velenose#{{Poison}} Al contatto con i nemici li avvelena#{{BlackHeart}} I nemici avvelenati una volta morti hanno una chance di lasciare 1 Cuore Nero", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno", -- Marked
	-- Full old Desc: "â†‘ {{Tears}} +0.7 Lacrime#â†‘ {{Range}} +3.15 Gittata#â†‘ +0.3 Altezza Lacrime#Isaac spara automaticamente lacrime verso un mirino mobile rosso presente sul terreno"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Le lacrime di Isaac vengono rimpiazzate da un anello laser caricabile#Le dimensioni dell'anello aumentano in base alla quantitÃ  di carica", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Crea fino a 2 portali tra cui si puÃ² viaggiare#Possono essere posti in stanze diverse", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "Le lacrime di Isaac si muovono sempre lungo un raggio di luce di fronte a lui", -- Tractor Beam
	-- Full old Desc: "â†‘ {{Tears}} +0.5 Lacrime#â†‘ {{Range}} +5.25 Gittata#â†‘ +0.5 Altezza Lacrime#â†‘ {{Shotspeed}} +0.16 VelocitÃ  Colpi#Le lacrime di Isaac si muovono sempre lungo un raggio di luce di fronte a lui"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "{{Shrink}} Le lacrime possono rimpicciolire i nemici#I nemici rimpiccioliti possono essere schiacciati e uccisi camminandoci sopra", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Isaac impugna una lancia davanti a lui#{{Fear}} La lancia infligge il doppio dei suoi danni e al contatto puÃ² spaventare i nemici", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% di chance di sparare lacrime a bomba adesiva#Le lacrime a bomba adesiva non infliggono danni quando colliscono ed esplodono dopo qualche secondo", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Tutti gli oggetti vengono scelti da una categoria di oggetti casuale", -- Chaos
	-- Full old Desc: "Tutti gli oggetti vengono scelti da una categoria di oggetti casuale#Genera 1-6 consumabili casuali"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Mostra le barre di salute e i danni subiti di tutti i nemici#Al contatto con i nemici infligge effetti di stato casuali#Genera pile ad intervalli casuali", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Se colpito, 10% di chance di scoreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici", -- Farting Baby
	-- Full old Desc: "Blocca i proiettili#Se colpito, 10% di chance di scoreggiare e di {{Charm}} ammaliare, {{Poison}} avvelenare o respingere i nemici"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Rimbalza per la stanza", -- GB Bug
	-- Full old Desc: "Rimbalza per la stanza#Infligge 120 danni al secondo e al contatto con i nemici applica effetti di stato casuale"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Moltiplica le statistiche dei danni, lacrime, gittata e velocitÃ  di Isaac in un range tra il x0.5 e il x2#I moltiplicatori vengono risorteggiati ad ogni uso", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "Dona un'aura colorata ad Isaac, a seconda dell'aura vi sono vantaggi diversi#L'aura cambia subendo danni#Rosso = +4.0 di Danno#Blue = -4 di Intervallo fra le lacrime#Giallo = +0.5 di VelocitÃ #Arancione = +7.5 di Gittata", -- Purity
	-- English: "â†‘ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = â†‘ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = â†‘ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = â†‘ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = â†‘ {{Range}} +7.5 Range, â†‘ +1 Tear height"

	[C_ID .. 408] = "Subire danni crea un anello di zolfo fuso nero attorno ad Isaac#{{BlackHeart}} I nemici uccisi dall'anello hanno una chance del 15% di lasciare 1 Cuore Nero", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} Quando Isaac non ha Cuori Rossi:#Volo#Per ogni 40 secondi passati in una stanza ostile si ottiene uno scudo per 10 secondi", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Cuori Neri#{{EmptyHeart}} Quando Isaac non ha Cuori Rossi:#Volo#Per ogni 40 secondi passati in una stanza ostile si ottiene uno scudo per 10 secondi"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "L'occhio si muove in linea retta e spara lacrime nella stessa direzione di Isaac", -- Evil Eye
	-- Full old Desc: "3.33% di chance di sparare un occhio#{{Luck}} 10% chance con 20 in Fortuna#L'occhio si muove in linea retta e spara lacrime nella stessa direzione di Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "â†‘ {{Damage}} +0.5 Danni per ogni nemico ucciso nella stanza#Si massimizza a +5 Danni dopo 10 uccisioni", -- Lusty Blood
	-- English: "â†‘ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Subire danni per 15 volte genera 1 famiglio demoniaco permanente#Dopo 2 famigli, ne occorrono 30 invece di 15#Si massimizza a 4 famigli", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Raccogliere 15 cuori genera 1 famiglio angelico permanenente#Si massimizza a 5 famigli#{{SoulHeart}} Se sono stati presi tutti i famigli, genera invece 1 Cuore Celeste", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Permette ad Isaac di scegliere tra 2 oggetti nelle Stanze dei Tesori", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Se Isaac non ha Portacuori danneggiati:#{VAR:EFFECTLIST}#Subire danni rimuove l'effetto per la stanza", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Cuori Celesti#Se Isaac non ha Portacuori danneggiati:#â†‘ {{Damage}} x2 Moltiplicatore Danni#â†‘ {{Range}} +5.25 Gittata#â†‘ +0.5 Altezza Lacrime#â†“ {{Shotspeed}} -0.3 VelocitÃ  Colpi#Subire danni rimuove l'effetto per la stanza"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Permette ad Isaac di portare 2 rune/carte/pillole", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Rimbalza per la stanza circondata da un'aura danneggiante che infligge i danni di Isaac x1.29 al secondo#â†‘ {{Damage}} x1.5 Moltiplicatore Danni se dentro l'aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#â†‘ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Ogni lacrima di Isaac ottiene un effetto diverso", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teletrasporta Isaac in una stanza non completata", -- Teleport 2.0
	-- Full old Desc: "Teletrasporta Isaac in una stanza non completata#Gerarchia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Camminare in cerchio tracccia un pentagramma per terra, il quale infligge 10 danni per tocco", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Ammalia e infligge 5 danni a tutti i nemici a distanza ravvicinata", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Riporta Isaac nella stanza precedente e annulla tutte le azioni svolte nella stanza in cui l'oggetto Ã¨ stato usato", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Isaac viene circondato da una grande aureola che al contatto infligge i suoi danni al secondo#Chance di riflettere i proiettili nemici", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "I consumabili hanno una chance di venire rimpiazzati da 1 {{GrabBag}sacco:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Genera 1 sacco", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} Genera un cono di luce rallentante di fronte ad Isaac", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Genera un blocco di TNT spostabile#Usare l'oggetto per una seconda volta nella stessa stanza fa esplodere a distanza il blocco", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Colpire 1 nemico con una lacrima ha il 5% di chance di generare 1 Penny", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Spara lacrime che infliggono i danni di Isaac ai nemici nelle vicinanze", -- Papa Fly
	-- Full old Desc: "Riproduce i movimenti di Isaac con un delay di 1 secondo#Spara lacrime che infliggono i danni di Isaac ai nemici nelle vicinanze"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Le lacrime che gli passano attraverso sono raddoppiate e ottengono PiÃ¹ Gittata e VelocitÃ  Colpi", -- Multidimensional Baby
	-- Full old Desc: "Riproduce i movimenti di Isaac con un delay di 2 secondi#Le lacrime che gli passano attraverso sono raddoppiate e ottengono PiÃ¹ Gittata e VelocitÃ  Colpi"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "{{Charm}} Le bombe di Isaac quando esplodono hanno il 25% di chance di lasciare 1 consumabile casuale e il 15% di chance di ammaliare i nemici", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombe#{{Charm}} Le bombe di Isaac quando esplodono hanno il 25% di chance di lasciare 1 consumabile casuale e il 15% di chance di ammaliare i nemici"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} Subire danni spaventa tutti i nemici e genera un Assalitore nero amichevole", -- My Shadow
	-- Full old Desc: "{{Fear}} Subire danni spaventa tutti i nemici e genera un Assalitore nero amichevole#L'Assalitore infligge 5 danni al secondo"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Uccidere 1 nemico aggiunge 1 mosca blu nelle giara, fino a un totale di 20#Usare l'oggetto libera tutte le mosche", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Spara 4 lacrime in un pattern a croce", -- Lil Loki
	-- Full old Desc: "Spara 4 lacrime in un pattern a croce#Infligge 3.5 danni a lacrima"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Subire danni conferisce piÃ¹ Lacrime per il resto della stanza", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Ripristina la stanza e resuscita tutti i nemici#PuÃ² essere usato per ottenere piÃ¹ ricompense per completamento stanza da una singola stanza#Se usata dopo una lotta con Avarizia, risorteggia la stanza in un ordinario Negozio/Stanza Segreta", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} Raddoppia gli effetti dei ninnoli", -- Mom's Box
	-- Full old Desc: "{{Trinket}} Genera 1 ninnolo casuale#Mentre viene tenuto:#â†‘ {{Luck}} +1 Fortuna#{{Trinket}} Raddoppia gli effetti dei ninnoli"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "Isaac certe volte smette di sparare e carica un attacco che rilascia uno scroscio di lacrime e un calcolo renale", -- Kidney Stone
	-- Full old Desc: "â†‘ +2 Altezza Lacrime#â†“ {{Speed}} -0.2 VelocitÃ #â†“ {{Range}} -17 Gittata#Isaac certe volte smette di sparare e carica un attacco che rilascia uno scroscio di lacrime e un calcolo renale"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} Spara un grosso raggio di sangue di Mega Satana per 15 secondi#Il raggio persiste tra stanze e piani", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "Se si rimane con 1 Cuore Rosso pieno:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "Se si rimane con 1 Cuore Rosso pieno:#â†‘ {{Tears}} +0.75 Lacrime#â†‘ {{Range}} +1.5 Gittata#â†‘ +1 Altezza Lacrime#â†‘ {{Shotspeed}} +0.2 VelocitÃ  Colpi"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Ogni 15 lacrime Isaac spara un ammasso di lacrime#Le lacrime nell'ammasso infliggono il doppio dei danni", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} In stanze con una roccia con cunicolo si sente un cane abbaiare", -- Dog Tooth
	-- Full old Desc: "â†‘ {{Speed}} +0.1 VelocitÃ #â†‘ {{Damage}} +0.3 Danni#{{SecretRoom}}{{SuperSecretRoom}} In stanze adiacenti a Stanze Segrete/Super Segrete si sente un lupo ululare#{{LadderRoom}} In stanze con una roccia con cunicolo si sente un cane abbaiare"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} Isaac mentre spara Ã¨ circondato da un'aura verde che avvelena i nemici", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Sparare senza fermarsi per 7.5 secondi genera una nube di puzzo#La nube infligge i danni di Isaac per 5 volte al secondo#La nube dura 15 secondi, e sparandole si puÃ² spostarla", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Una volta subiti danni:#{{Heart}} 25% di chance di generare 1 Cuore Rosso#{{Collectible214}} 10% di chance di ottenere â†‘ {{Range}} +5 Gittata e di lasciare una scia di sangue fino all'uscita dalla stanza", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get â†‘ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} I proiettili nemici hanno il 25% di chance di venire riflessi come lacrime stordenti", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Cuore Celeste#{{Confusion}} I proiettili nemici hanno il 25% di chance di venire riflessi come lacrime stordenti"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Ogni 20 lacrime, Isaac spara una lacrima-moneta che infligge il doppio dei danni#{{Petrify}} I nemici colpiti dalla moneta vengono pietrificati e tramutati in oro#{{Coin}} 1 nemico dorato ucciso butta a terra 1-4 monete#{{Warning}} Sparare una lacrima-moneta costa 1 moneta", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Gli effetti delle carte sono raddoppiati o potenziati", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Genera 1 carta#{{Card}} Gli effetti delle carte sono raddoppiati o potenziati"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Subire danni fa sparare un cerchio di 10 lacrime attorno ad Isaac#Le lacrime infliggono i danni di Isaac +25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa", -- Compound Fracture
	-- Full old Desc: "â†‘ {{Range}} +1.5 Gittata#â†‘ +1 Altezza Lacrime#Quando le lacrime colpiscono qualcosa si sgretolano in 1-3 piccole schegge d'ossa"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Quando viene raccolto genera 1 {{Rune}} runa, {{Card}} carta o {{Pill}} pillola#Permette ad Isaac di portare 2 rune/carte/pillole", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} Genera 1 Penny Fortunato", -- Dad's Lost Coin
	-- Full old Desc: "â†‘ {{Range}} +1.5 Gittata#â†‘ +1 Altezza Lacrime#{{Luck}} Genera 1 Penny Fortunato"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% di chance di annullare i danni subiti", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 Cuore Celeste#20% di chance di annullare i danni subiti"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Permette ad Isaac di portare 2 ninnoli", -- Belly Button
	-- Full old Desc: "{{Trinket}} Permette ad Isaac di portare 2 ninnoli#{{Trinket}} Genera 1 ninnolo casuale"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% di chance di sparare una caccola appiccicosa#{{Luck}} Non Ã¨ influenzato dalla Fortuna", -- Sinus Infection
	-- Full old Desc: "20% di chance di sparare una caccola appiccicosa#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo e rimangono incollate per 60 secondi#{{Luck}} Non Ã¨ influenzato dalla Fortuna"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% di chance di sparare lacrime stordenti#Scurisce leggermente lo schermo", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} Quando le sacche ovali colpiscono generano del liquame rallentante e 1 ragno o mosca blu", -- Parasitoid
	-- Full old Desc: "15% di chance di sparare sacche ovali#{{Luck}} 50% di chance con 5 in Fortuna#{{Slow}} Quando le sacche ovali colpiscono generano del liquame rallentante e 1 ragno o mosca blu"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Colpire 1 nemico rende la lacrima a ricerca e ne raddoppia i danni", -- Eye of Belial
	-- Full old Desc: "â†‘ {{Range}} +1.5 Gittata#â†‘ +1 Altezza Lacrime#Lacrime penetranti#Colpire 1 nemico rende la lacrima a ricerca e ne raddoppia i danni"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Le lacrime di Isaac possono distruggere le rocce e aprire le porte", -- Sulfuric Acid
	-- Full old Desc: "â†‘ {{Damage}} +0.3 Danni#Le lacrime di Isaac possono distruggere le rocce e aprire le porte"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "I nemici lasciano qualsiasi consumabile di cui Isaac ha piÃ¹ bisogno", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Cuori Celesti#I nemici lasciano qualsiasi consumabile di cui Isaac ha piÃ¹ bisogno"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Permette ad Isaac di sparare lacrime in tutte le direzioni", -- Analog Stick
	-- Full old Desc: "â†‘ {{Tears}} +0.3 Lacrime#Permette ad Isaac di sparare lacrime in tutte le direzioni"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} Il 1Â° nemico ucciso in una stanza esplode e avvelena tutti i nemici nelle vicinanze#I nemici avvelenati quando muoiono esplodono e avvelenano i nemici nelle vicinanze", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Infligge costantemente il 10% dei danni di Isaac nella direzione che indica", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Lascia una scia di liquame#Il liquame infligge 6 danni al secondo#I nemici che toccano la nuvola possono essere colpiti da un raggio di luce sacra", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Rimbalza per la stanza#Quando Isaac spara smette di muoversi#Mentre Ã¨ fermo blocca i proiettili", -- Hushy
	-- Full old Desc: "Rimbalza per la stanza#Infligge 30 danni da contatto al secondo#Quando Isaac spara smette di muoversi#Mentre Ã¨ fermo blocca i proiettili"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Ogni lacrima infligge 3.5 danni", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Carica un attacco a raffica simile a quello di {{Collectible229}} "Polmone di Monstro"#Ogni lacrima infligge 3.5 danni"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Ãˆ seguito dagli altri famigli#Quando Isaac spara smette di muoversi#Quando Isaac smette di sparare si teletrasporta da lui", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Si lancia in avanti molto lentamente", -- Big Chubby
	-- Full old Desc: "Si lancia in avanti molto lentamente#Blocca i proiettili#Infligge 40.5 danni da contatto al secondo"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "Infligge 9,999,999 danni a tutti i nemici", -- Plan C
	-- Full old Desc: "{{Warning}} MONOUSO {{Warning}}#Infligge 9,999,999 danni a tutti i nemici#{{Warning}} Isaac muore dopo 3 secondi"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Duplica 1 consumabile casuale nella stanza", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Consuma tutti i piedistalli nella stanza#Oggetti attivi: Attiva i loro effetti, e lo stesso vale per ogni uso futuro di \"Vuoto\"#â†‘ Gli oggetti passivi conferiscono 2 aumenti a statistiche casuali", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#â†‘ Passive items grant two random stat ups"

	[C_ID .. 478] = "Blocca tutti i nemici nella stanza fino a quando Isaac non spara#Toccare 1 nemico bloccato infligge comunque danni ad Isaac#I nemici si sbloccano dopo 30 secondi", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Consuma i ninnoli tenuti da Isaac e conferisce permanentemente i loro effetti#Aumenta la chance di generare ninnoli", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Converte i consumabili in mosche o ragni blu#Raddoppia tutte le mosche e i ragni blu#Se Isaac non ha alcuna mosca o ragno blu ne genera 1", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} Corrompe tutti gli sprite e la musica della stanza", -- Dataminer
	-- Full old Desc: "â†‘ Aumento di 1 statistica casuale#â†“ Diminuzione di 1 statistica casuale#{{Timer}} Fino all'uscita dalla stanza un effetto di lacrime casuale#{{Blank}} Corrompe tutti gli sprite e la musica della stanza"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Cambia il tuo personaggio in uno casuale#Rimuove l'oggetto preso piÃ¹ di recente", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "{{Warning}} MONOUSO {{Warning}}#Coinvolge tutto il piano#{VAR:EFFECTLIST}#Infligge 200 danni a tutti i nemici#Apre le stanze segrete", -- Mama Mega!
	-- Full old Desc: "{{Warning}} MONOUSO {{Warning}}#Coinvolge tutto il piano#Fa esplodere tutti gli ostacoli#Infligge 200 danni a tutti i nemici#Apre le stanze segrete#Apre la porta per Boss Rush e per Calma a prescindere dal tempo"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Se usato spinge via i nemici e genera una scossa sismica attorno ad Isaac#La scossa sismica puÃ² aprire le stanze e distruggere le rocce", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% di chance di raddoppiare tutti gli oggetti, consumabili e bauli nella stanza#50% di chance di rimuovere oggetti / consumabili nella stanza e di generare 1 moneta", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Ferisce Isaac senza togliere salute#Attiva gli effetti di oggetti che richiedono di subire danni", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} Lascia una scia di sangue", -- Potato Peeler
	-- Full old Desc: "{{EmptyHeart}} Rimuove 1 Portacuori per:#â†‘ {{Damage}} +0.2 Danni#{{Collectible73}} 1 "Cubo di Carne"#{{Timer}} Conferisce fino all'uscita dalla stanza:#â†‘ {{Range}} +5 Gittata#{{Collectible214}} Lascia una scia di sangue"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "Conferisce l'effetto di un oggetto casuale fino all'uscita dalla stanza", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Attiva l'effetto di un dado casuale ad ogni uso", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "{{Warning}} MONOUSO {{Warning}}#Genera 2 oggetti casuali in base alla categoria di oggetti della stanza corrente#Parte senza cariche", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Usare 1 pillola avvelena i nemici nella stanza", -- Acid Baby
	-- Full old Desc: "{{Pill}} Genera 1 pillola casuale ogni 3 stanze#{{Poison}} Usare 1 pillola avvelena i nemici nella stanza"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Evidenzia le posizioni di {{SecretRoom}} stanze segrete, rocce colorate e {{LadderRoom}} cunicoli", -- YO LISTEN!
	-- Full old Desc: "â†‘ {{Luck}} +1 Fortuna#Evidenzia le posizioni di {{SecretRoom}} stanze segrete, rocce colorate e {{LadderRoom}} cunicoli"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Per ogni Portacuori vuoto:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Per ogni Portacuori vuoto:#â†‘ {{Damage}} +0.2 Danni"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "All'impatto le lacrime generano 1-2 scintille elettriche#Le scintille infliggono la metÃ  dei danni di Isaac", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Chance di sparare una fiamma rossa che blocca i proiettili nemici e infligge danni da contatto#La fiamma sparisce dopo aver inflitto danni o bloccato proiettili per 5 volte", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Gli aghi uccidono istantaneamente i nemici normali, scoppiando in 10 lacrime#{{Damage}} Contro i boss gli aghi infliggono i danni di Isaac x3", -- Euthanasia
	-- Full old Desc: "3.33% di chance di sparare un ago#{{Luck}} 100% di chance con 15 in Fortuna#Gli aghi uccidono istantaneamente i nemici normali, scoppiando in 10 lacrime#{{Damage}} Contro i boss gli aghi infliggono i danni di Isaac x3"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Entrare in una stanza confonde tutti i nemici fino a quando Isaac non inizia a sparare", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Nei casi in cui comparirebbe una Stanza dell'Angelo o del Diavolo vengono generate entrambe#Entrare in una delle 2 stanze fa sparire l'altra", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} +1 Portacuori per ogni 25 monete ottenute dopo aver preso \"Gozzo di Avarizia\"", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "{{Slow}} Sparando viene certe volte scagliata una lacrima con liquame bianco che infligge il doppio dei danni e rallenta i nemici#Subire danni fa sparare una lacrima con liquame bianco", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "Isaac infligge 3.5 danni da contatto", -- Little Horn
	-- Full old Desc: "5% di chance di sparare lacrime che uccidono istantaneamente i nemici#{{Luck}} 20% di chance con 15 in Fortuna#Isaac infligge 3.5 danni da contatto"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Genera una mosca torretta che spara ai nemici#Ogni colpo infligge 2 danni", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "{{Friendly}} Entrare in una stanza ostile ha una chance di generare 1 nemico amichevole", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} Colpire 1 nemico da dietro infligge il doppio dei danni e causa sanguinamento, che infligge il 10% della salute massima del nemico ogni 5 secondi", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Infligge a tutti i nemici i danni di Isaac +10% della salute massima di ogni nemico#{{HalfHeart}} Infliggere danni con la cannuccia puÃ² generare mezzi cuori#{{HalfSoulHeart}} Non avere portacuori genera invece Cuori Celesti", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} Orbitale che causa sanguinamento, infliggendo 10% della salute massima del nemico di danno ogni 5 secondi#{{Damage}} Infligge i danni di Isaac x3 al secondo#Non blocca i proiettili", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbitale che ogni 2 secondi spara una lacrima in una direzione casuale#Non blocca i proiettili", -- Bloodshot Eye
	-- Full old Desc: "Orbitale che ogni 2 secondi spara una lacrima in una direzione casuale#Infligge 3.5 danni a lacrima#Infligge 30 danni da contatto al secondo#Non blocca i proiettili"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Friendly}} Genera una forma boss di Delirio amichevole fino all'uscita dalla stanza", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbita attorno a 1 nemico casuale finchÃ© esso non muore", -- Angry Fly
	-- Full old Desc: "Orbita attorno a 1 nemico casuale finchÃ© esso non muore#Infligge 30 danni da contatto agli altri nemici"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Buco nero lanciabile che risucchia qualsiasi cosa#Infligge 0.4 danni per tocco#Distrugge rocce nelle vicinanze#Dura 6 secondi", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} Ammalia/spaventa i nemici in maniera casuale#Subire ha una chance casuale di generare 1 Cacca Arcobaleno", -- Bozo
	-- Full old Desc: "â†‘ {{Damage}} +0.1 Danni#{{SoulHeart}} +1 Cuore Celeste#{{Charm}} Ammalia/spaventa i nemici in maniera casuale#Subire ha una chance casuale di generare 1 Cacca Arcobaleno"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Fa sÃ¬ che alcuni nemici o proiettili si blocchino ad intermittenza per poco tempo#25% di chance di raddoppiare le ricompense di completamento stanza", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "{{Warning}} MONOUSO {{Warning}}#Genera un oggetto casuale in base alla categoria di oggetti della stanza corrente#Chance di generare invece \"Un Pezzo di Carbone\" o \"La Cacca\"", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Genera un irrigatore che spara attorno a sÃ© le stesse lacrime di Isaac", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Annulla il delay del piazzamento delle bombe", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombe#Annulla il delay del piazzamento delle bombe"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Famiglio dalle sembianze di un bebÃ¨ del co-op casuale#Ha effetti delle lacrime casuali#Gli effetti cambiano ad ogni piano", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Si trasforma ogni 10 secondi in 1 famiglio casuale", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Uccidere 15 enemies aggiunge 1 carica all'oggetto attivo", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Rende gratuito un oggetto casuale nel {{Shop}} Negozio o nella {{DevilRoom}} Stanza del Diavolo#Tenere l'oggetto garantisce che almeno un oggetto nel Negozio sia in saldo", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Ferma tutti i proiettili che si avvicinano ad Isaac per 3 secondi e in seguito li risorteggia via", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Conserva tutti i consumabili e oggetti della stanza corrente#Usare di nuovo l'oggetto butta a terra tutto nel piano#Permette ad Isaac di spostare tra le stanze la sua roba", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Le lacrime di Isaac sono connesse tra loro da raggi d'elettricitÃ #I raggi infliggono i danni di Isaac", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Subire danni genera un orbitale che blocca i proiettili#Si massimizza a 3 orbitali#Gli orbitali vengono distrutti se subiscono troppi danni", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Genera un piccolo famiglio cavaliere che genera locuste#Il cavaliere e le locuste cambiano ogni 10 secondi", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Mostra per qualche secondo un cursore spostabile, dopodichÃ© evoca uno spettro che, in base alla posizione del cursore, puÃ²:#Aprire porte o bauli#Recuperare un oggetto#50% di chance di rubare dal Negozio/Stanza del Diavolo#Attaccare 1 nemico finchÃ© non muore#Esplodere muri, rocce, negozianti, statue di angeli, macchine o scrocconi", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Prisma orbitale#Le lacrime amiche che lo colpiscono si dividono in 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Le lacrime di Isaac rimbalzano tra loro e quando smettono di muoversi spariscono", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Uccidere i nemici nell'ordine imposto dal marchio {{DeathMark}} sopra di loro conferisce 1 consumabile casuale o un aumento di 1 statistica", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "Le lacrime di Isaac volano in un arco e all'impatto scoppiano in laccrime piÃ¹ piccole", -- Haemolacria
	-- Full old Desc: "â†‘ {{Damage}} x1.31 Moltiplicatore Danni#â†“ {{Tears}} x2 Moltiplicatore Delay tra Lacrime#â†“ {{Tears}} +10 Delay tra Lacrime #Le lacrime di Isaac volano in un arco e all'impatto scoppiano in laccrime piÃ¹ piccole"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Le lacrime di Isaac rallentano progressivamente, per poi fermarsi e scoppiare in 8 lacrime piÃ¹ piccole#Le lacrime possono fondersi tra loro per ingrandirsi", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Rimpiazza le lacrime di Isaac con raggi di luce penetranti#I raggi infliggono il 33% dei danni ma possono colpire piÃ¹ volte i nemici", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Permette ad Isaac di tenere 2 oggetti attivi#Gli oggetti possono eessere scambiati con il tasto di rilascio ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} Entrare in una Stanza Boss conferisce 1 scudo di \"Manto Sacro\" (previene i danni per 1 volta)", -- Blanket
	-- Full old Desc: "{{HealingRed}} Cura 1 cuore#{{SoulHeart}} +1 Cuore Celeste#{{HolyMantle}} Entrare in una Stanza Boss conferisce 1 scudo di "Manto Sacro" (previene i danni per 1 volta)"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "{{Warning}} MONOUSO {{Warning}}#Sacrifica fino a 2 famigli e genera un oggetto del Diavolo per ogni sacrificio#{{Coin}} Trasforma i ragni/mosche blu in monete", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Quando viene raccolto genera 1 pillola casuale#Spara una striscia di liquame#Il tipo di liquame cambia ad ogni uso di una pillola", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Subire danni ha il 10% di chance di consumare il ninnolo tenuto da Isaac e di conferire permanentemente i suoi effetti", -- Marbles
	-- Full old Desc: "{{Trinket}} Genera 3 ninnoli casuali#{{Collectible479}} Subire danni ha il 10% di chance di consumare il ninnolo tenuto da Isaac e di conferire permanentemente i suoi effetti"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "{{Friendly}} Subire danni genera 1 nemico amichevole#Genera amici piÃ¹ forti quanto piÃ¹ vengono completate stanze senza subire danni", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Le lacrime di Isaac rimbalzano sul pavimento e causa danni da schizzi ad ogni rimbalzo", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Riflette i proiettili nemici", -- Slipped Rib
	-- Full old Desc: "Orbitale#Riflette i proiettili nemici"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Subire danni genera 1 Cacca Bianca#Dentro l'aura della cacca:#{VAR:EFFECTLIST}#Chance di bloccare i danni", -- Hallowed Ground
	-- Full old Desc: "Subire danni genera 1 Cacca Bianca#Dentro l'aura della cacca:#â†‘ {{Tears}} x0.5 Moltiplicatore Delay tra Lacrime#Chance di bloccare i danni"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Levita di fronte ad Isaac#Infligge i danni di Isaac x6 al secondo", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "{{Friendly}} Genera un osso orbitale o un Ossuto amichevole per ogni nemico ucciso nella stanza", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "{{Petrify}} Conferisce un'aura che pietrifica i nemici", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Genera il ninnolo \"Foglio Misterioso\"", -- Divorce Papers
	-- Full old Desc: "â†‘ {{Tears}} +0.7 Lacrime#{{EmptyBoneHeart}} +1 Cuore Osseo#{{Trinket21}} Genera il ninnolo "Foglio Misterioso""
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Famiglio che opera a mo' di Boomerang#PuÃ² afferrare e riportare consumabili", -- Jaw Bone
	-- Full old Desc: "Famiglio che opera a mo' di Boomerang#Infligge 7 danni da contatto#PuÃ² afferrare e riportare consumabili"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "Spara 8 lacrime ossute in tutte le direzioni", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Rimpiazza tutti i Cuori Rossi di Isaac con 6 Cuori Ossei vuoti#Se si perde 1 Cuore Osseo:#â†‘ {{Tears}} +0.5 Lacrime#Spara 8 lacrime ossute in tutte le direzioni"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "I piedi di Mamma cercano costantemente di schiacciare Isaac#Usare l'oggetto ferma i pestoni fino all'uscita dalla stanza#{{Warning}} (Prova a vincere la Boss Rush con l'oggetto!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Completa \"Pala di Mamma\"#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Genera una botola per il prossimo piano#10% di chance di una {{LadderRoom}} botola per un cunicolo#{{Warning}} Usa la pala sul cumulo di terra nella \"Camera Oscura\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Subire danni genera 1 moneta", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% di chance di ottenere ricompense dalla cacca", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} -1 Carica richiesta per gli oggetti attivi", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = " {{Collectible44}} Usare un oggetto attivo teletrasporta Isaac in una stanza casuale", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Chance doppie di nemici campioni", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} Attrae monete verso Isaac", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Chance piÃ¹ alte di trovare \"La Bibbia\" nei {{Shop}} Negozi e nelle {{Library}} Biblioteche", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} Chance di una Stanza dell'Angelo aumentate del 50% #{{Collectible33}} Chance piÃ¹ alte di trovare "La Bibbia" nei {{Shop}} Negozi e nelle {{Library}} Biblioteche"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 5% di chance mentre si subiscono danni di ricevere per 6.5 secondi:#InvincibilitÃ #Isaac non puÃ² sparare ma infligge 40 danni da contatto al secondo#{{HealingRed}} Uccidere 2 nemici cura di mezzo cuore#{{Fear}} Spaventa tutti i nemici nella stanza"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = " Le lacrime di Isaac pulsano#Influisce sull'hitbox delle lacrime", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "Le lacrime di Isaac hanno un moto ondeggiante", -- Wiggle Worm
	-- Full old Desc: "â†‘ {{Tears}} +0.3 Lacrime#Le lacrime di Isaac hanno un moto ondeggiante"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Le lacrime di Isaac hanno un moto a spirale molto veloce", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Lacrime piÃ¹ larghe del 50%#Aumenta la spinta", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Permette ad Isaac di avere gratuitamente 1 oggetto del Negozio", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "ImmunitÃ  ai liquidi e alle spine per terra", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Distruggere rocce genera monete", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +10% di chance che i Cuori Celesti casuali possano venire generati come Cuori Neri", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% di chance di Cuori Eterni", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} I Bauli Dorati possono essere aperti senza chiavi", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Quando la salute di Isaac viene ridotta a mezzo cuore genera 1 Cuore Nero#{{Warning}} Sparisce dopo aver generato 3 Cuori Neri", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Conferisce ad intervalli casuali 1 degli effetti di: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Conferisce ad intervalli casuali 1 degli effetti di: #{{Collectible327}} "La Polaroid"#{{Collectible328}} "Il Negativo"#{{Trinket48}} "Una Pagina Mancante"#{{Trinket23}} "Volantino 'Smarrito'""
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Diminuisce del 20% la chance di generare dei cuori#{{BlackHeart}} Tutti i cuori consumabili diventano Cuori Neri#Aumenta la chance di generare chiavi come ricompensa", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Una volta morto resuscita nella forma di Lo Smarrito", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} Chance piÃ¹ alte del 20% di generare monete dalla cacca#Raccogliere monete fa scoreggiare Isaac", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Isaac scoreggia o genera cacca ogni 30 secondi", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "Le lacrime di Isaac si muovono in modo angolare", -- Hook Worm
	-- Full old Desc: "â†‘ {{Range}} +10 Gittata#Le lacrime di Isaac si muovono in modo angolare"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} Una volta morto 22% di chance di resuscitare nella forma di ??? (Bimbo Blu)", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Subire danni genera 1 mosca blu", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% di chance di un effetto di 1 fungo casuale a stanza#PuÃ² rivelare stanze speciali sulla minimappa", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10% di chance che la ricompensa per completamento stanza sia 1 cuore casuale#{{Heart}} 33% di chance di 1 cuore extra da bauli, rocce colorate e macchine distrutte", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% di chance che la ricompensa per completamento stanza sia 1 chiave#{{Key}} 33% di chance di 1 chiave extra da bauli, rocce colorate e macchine distrutte", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% di chance che i cuori generati siano {{SoulHeart}} Cuori Celesti, {{BlackHeart}} Cuori Neri o {{EmptyBoneHeart}} Cuori Ossei", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} Subire danni ha il 20% di chance di conferire â†‘ {{Damage}} +1.8 Danni fino all'uscita dalla stanza", -- Red Patch
	-- Full old Desc: "{{Timer}} Subire danni ha il 20% di chance di conferire â†‘ {{Damage}} +1.8 Danni fino all'uscita dalla stanza#{{Luck}} 100% chance con 8 in Fortuna"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% di chance che la ricompensa per completamento stanza sia 1 bomba#{{Bomb}} 33% di chance di 1 bomba extra da bauli, rocce colorate e macchine distrutte#{{Warning}} Rimuove {{Trinket53}} \"Zecca\"", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% di chance di 1 ricompensa per completamento stanza#33% di chance di consumabili extra da bauli, rocce colorate e macchine distrutte", -- Lucky Toe
	-- Full old Desc: "â†‘ {{Luck}} +1 Fortuna#+8% di chance di 1 ricompensa per completamento stanza#33% di chance di consumabili extra da bauli, rocce colorate e macchine distrutte"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Quando i danni riducono Isaac a mezzo cuore o meno, viene teletrasportato in una stanza causale", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% di chance che la ricompensa per completamento stanza sia 1 pillola#{{Pill}} 33% di chance di 1 pillola extra da bauli, rocce colorate e macchine distrutte", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% di chance che la ricompensa per completamento stanza sia 1 carta#{{Card}} 33% di chance di 1 carta extra da bauli, rocce colorate e macchine distrutte", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} Raccogliere 1 moneta ha il 50% di chance di generare mezzo Cuore Rosso", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} Raccogliere 1 moneta ha il 50% di chance di generare 1 Bomba", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} Raccogliere 1 moneta ha il 50% di chance di generare 1 Chiave", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} Raccogliere 1 moneta ha il 50% di chance di aggiungere un'altra moneta al contatore", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} All'ingresso in una {{BossRoom}} Stanza del Boss cura di 1 cuore#-15% di salute del boss#{{Warning}} Una volta raccolto, non puÃ² piÃ¹ venire rimosso#Rimovibile solo con {{Trinket41}} \"Fiammifero\" o ingoiandolo", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Famiglio con lacrime penetranti", -- Isaac's Head
	-- Full old Desc: "Famiglio con lacrime penetranti#Infligge 3.5 danni per lacrima"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Entrare in nuovo piano conferisce +1 Cuore Eterno", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Abbassa tutti i costi di un patto col diavolo a 1 Portacuori#Non abbassa il costo da 3 Cuori Celesti ", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Famiglio che rimbalza attorno alla stanza#Spara nella stessa direzione di Isaac", -- ???'s Soul
	-- Full old Desc: "Famiglio che rimbalza attorno alla stanza#Spara nella stessa direzione di Isaac#Infligge 3.5 danni a lacrima"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} Uccidere 1 nemico ha il 6.66% di chance di conferire â†‘ {{Damage}} +0.5 Danni fino all'uscita dalla stanza", -- Samson's Lock
	-- Full old Desc: "{{Timer}} Uccidere 1 nemico ha il 6.66% di chance di conferire â†‘ {{Damage}} +0.5 Danni fino all'uscita dalla stanza#{{Luck}} 100% di chance con 10 in Fortuna"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} Trasforma tutti i bauli in Bauli Rossi", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Le rocce con cunicolo e le rocce colorate luccicano ogni 10 secondi", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} Trasforma le Bombe Troll in bombe consumabili", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Ogni 3 secondi conferisce un effetto di un verme casuale", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Subire danni ha il 50% di attivare 1 dei seguenti effetti:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Subire danni ha il 50% di attivare 1 dei seguenti effetti:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Isaac attrae consumabili e nemici", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Cammuffa Isaac ad intervalli casuali#{{Confusion}} Confonde i nemici", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Certe volte genera 1 ragno blu nelle stanze ostili", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Le bombe di Isaac lasciano liquame danneggiante", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% di chance che la ricompensa di completamento stanza sia 1 pila#{{Battery}} +10% di chance che i consumabili casuali siano 1 pila#{{Battery}} 5% di chance a completamento stanza di aggiungere una carica all'oggetto attivo tenuto", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 10% di chance che le bombe che scoppiano buttino a terra 1 bomba consumabile", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} +0.5% di chance di rivelare un cunicolo mentre si distrugge una roccia", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Conferisce l'effetto di un ninnolo casuale ad ogni stanza", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "â†‘ 50% di chance che i bauli generino consumabili extra#â†“ 50% di chance che i bauli contengano solo una mosca", -- Poker Chip
	-- English: "â†‘ 50% chance for chests to spawn extra pickups#â†“ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Aumenta la spinta", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Gli effetti di stato applicati ai nemici durano il doppio", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Usare una {{Rune}} runa, {{Card}} carta or {{Pill}} pillola ha il 25% di chance di generare una copia di quella runa, carta o pillola", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "InvincibilitÃ  dura di piÃ¹", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+15% di chance di ottenere oggetti doppi nel prossimo piano", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Permette ad Isaac di aprire Negozi senza chiavi", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} 5% piÃ¹ monete e meno cuori dalle ricompense per completamento stanza#Avarizia e Super Avarizia non appaiono piÃ¹ nei {{Shop}} Negozi o {{SecretRoom}} Stanze Segrete", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Usare una Macchina di Donazione ha il 33% di chance di:#{{HealingRed}} Curare di 1 cuore (40%)#{{Coin}} Conferire 1 moneta (40%)#{{Luck}} Conferire +1 Fortuna (15%)#{{Beggar}} Generare un Mendicante (5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Distruggere una cacca genera 1 mosca blu", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Usare una chiave cura di mezzo cuore#{{Heart}} Converte i mezzi cuori in cuori interi", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Previene la generazione di oggetti attivi", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "I famigli restano vicini ad Isaac", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Quando una cacca viene distrutta esplode, infliggendo 100 danni", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% di chance che si generi 1 Cacca Nera#{{BlackHeart}} Distruggere Cacche Nere ha un 5% di chance di generare un Cuore Nero", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "â†‘ x1.33 Moltiplicatore delle statistiche al di sopra di 1 {{Speed}} VelocitÃ , 3.5 {{Damage}} Danni, 23.75 {{Range}} Gittata, 1 {{Shotspeed}} VelocitÃ  Colpi", -- Cracked Crown
	-- Full old Desc: "â†‘ {{Tears}} x0.8 Delay tra Lacrime#â†‘ x1.33 Moltiplicatore delle statistiche al di sopra di 1 {{Speed}} VelocitÃ , 3.5 {{Damage}} Danni, 23.75 {{Range}} Gittata, 1 {{Shotspeed}} VelocitÃ  Colpi"
	-- English: "â†‘ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% di chance per stanza che tutte le mosche nemiche diventino amichevoli", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Raddoppia tutte le mosche/ragni blu generate", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "Il dente infligge i danni di Isaac x2", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3% di chance di sparare lacrime dentate velenose#Il dente infligge i danni di Isaac x2"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "Le lacrime di Isaac si muovono velocemente a spirale", -- Ouroboros Worm
	-- Full old Desc: "â†‘ {{Range}} +4 Gittata#â†‘ +2 Altezza Lacrime#Lacrime spettrali#Chance di lacrime a ricerca#{{Luck}} 100% di chance con 9 in Fortuna#Le lacrime di Isaac si muovono velocemente a spirale"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Sparisce dopo aver generato 2 famigli", -- Tonsil
	-- Full old Desc: "Subire danni 12-20 volte genera 1 famiglio che blocca i proiettili#Sparisce dopo aver generato 2 famigli"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% di chance di sparare una lacrima adesiva#50% di chance che sia a ricerca#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo", -- Nose Goblin
	-- Full old Desc: "10% di chance di sparare una lacrima adesiva#50% di chance che sia a ricerca#{{Damage}} Le caccole infliggono i danni di Isaac 1 volta al secondo#Le caccole si incollano per 60 secondi"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% chance di sparare lacrime rimbalzanti", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Tenere un oggetto attivo totalmente carico conferisce:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Tenere un oggetto attivo totalmente carico conferisce:#â†‘ {{Speed}} +0.25 VelocitÃ #â†‘ {{Tears}} +0.2 Lacrime#â†‘ {{Damage}} +0.5 Danni#â†‘ {{Range}} +0.75 Gittata#â†‘ {{Shotspeed}} +0.1 VelocitÃ  Colpi#â†‘ {{Luck}} +1 Fortuna"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Tenere un oggetto attivo totalmente scarico conferisce:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Tenere un oggetto attivo totalmente scarico conferisce:#â†‘ {{Speed}} +0.5 VelocitÃ #â†‘ {{Tears}} +0.4 Lacrime#â†‘ {{Damage}} +1.5 Danni#â†‘ {{Range}} +1.5 Gittata#â†‘ {{Shotspeed}} +0.3 VelocitÃ  Colpi#â†‘ {{Luck}} +2 Fortuna"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 Stanza segreta extra a piano mentre viene tenuto", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Trasforma i consumabili singoli in doppi quando le {{Coin}} monete, {{Bomb}} bombe e {{Key}} chiavi di Isaac sono di pari numero", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Aumenta il raggio del liquame non nemico", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Subire danni esaurisce i Cuori Rossi prima dei Cuori Neri/Celesti#I danni ai Cuori Rossi non riducono le chance di una Stanza del Diavolo/dell'Angelo", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Venire colpiti da 1-9 esplosioni distrugge il ninnolo e butta terra 1 {{UnknownHeart}} cuore casuale, 1 {{Coin}} moneta, 1 {{Key}} chiave e 1 {{Trinket}} ninnolo#Non Ã¨ richiesto di subire danni", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "I famigli rimangono in un posto e non possono muoversi", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} I Negozi appaiono in \"Utero\"", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Le Stanze dei Tesori appaiono in \"Utero\"", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Le cassette di rifornimento vengono sempre generate nelle {{TreasureRoom}} Stanze dei Tesori", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Entrare in una stanza ostile genera 1 mosca esplosiva d'assalto#La mosca infligge i danni di Isaac x2 + danni esplosivi", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} Entrare in una stanza ostile genera 1 mosca velenosa d'assalto#La mosca infligge i danni di Isaac x2", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} Entrare in una stanza ostile genera 1 mosca rallentante d'assalto#La mosca infligge i danni di Isaac x2", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Entrare in una stanza ostile genera 1 mosca d'assalto#La mosca infligge i danni di Isaac x4", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Entrare in una stanza ostile genera 1-4 mosche d'assalto#Ogni mosca infligge i danni di Isaac x2", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "{{Timer}}Uccidere 1 nemico ha il 5% di chance di conferire il volo fino all'uscita dalla stanza", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} Entrare in un nuovo piano cura di mezzo cuore", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} Entrare in una stanza boss non completata ricarica totalmente gli oggetti attivi", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Conferisce 1 scudo di \"Manto Sacro\" che nega il 1Â° danno preso nel piano", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Usare un oggetto attivo butta a terra un piedistallo#Subire danni ha il 2% di chance di buttare a terra uno degli oggetti passivi di isaac", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "I boss angeli lasciano oggetti angelici invece di Pezzi di Chiave", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "L'ultima porta attraversata rimane aperta", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Collega i famigli con raggi d'elettricitÃ #I raggi infliggono 6 danni", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Raccogliere 1 moneta genera 1 mosca blu", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Conferisce proiettili a ricerca a tutti i famigli", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teletrasporta Isaac nella 1Â° stanza del piano", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Il piede di Mamma calpesta 1 nemico#Se non ci sono nemici il piede di Mamma calpesta Isaac", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Teletrasporta Isaac nella Stanza del Boss", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Genera 1 {{UnknownHeart}} cuore, {{Coin}} moneta, {{Bomb}} bomba e {{Key}} chiave casuali", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Teletrasporta Isaac nel negozio", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Genera 1 {{Slotmachine}} Slot Machine#{{FortuneTeller}} 25% di chance che sia 1 Macchina dei Desideri", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Genera 1 Macchina di Donazione Sangue", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Genera 6 Bombe Troll", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Teletrasporta Isaac nella Stanza dei Tesori", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Teletrasporta Isaac nella Stanza Segreta", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Genera 1 Mendicante#{{DemonBeggar}} 33% di chance che sia 1 Mendicacuori#2% di chance che sia 1 Chiavaiolo o Scroccabombe", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Duplica il numero di bombe di Isaac", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Duplica il numero di monete di Isaac", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Duplica il numero di chiavi di Isaac", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Duplica il numero di cuori di Isaac {{ColorSilver}}(non di Portacuori){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Converte tutti i consumabili in bombe casuali", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Converte tutti i consumabili in monete casuali", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Converte tutti i consumabili in chiavi casuali", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Converte tutti i consumabili in bombe casuali", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Teletrasporta Isaac nella Stanza del Diavolo o dell'Angelo", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Distrugge tutte le rocce nella stanza", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplica tutti i consumabili nella stanza", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Genera una botola per il prossimo piano#{{LadderRoom}} 8% di chance di una botola con cunicolo", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Rimuove tutte le maledizioni fino all'uscita dal piano", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Cuore Celeste#{{CurseCursed}} Rimuove tutte le maledizioni fino all'uscita dal piano"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Risorteggia tutti i piedistalli nella stanza", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Attiva l'effetto di 1 runa casuale#Se usata 25% di chance di autoduplicarsi", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Converte i piedistalli nella stanza in aumenti di statistiche casuali#Converte tutti i consumabili nella stanza in mosche blu", -- Black Rune
	-- Full old Desc: "Infligge 40 danni #Converte i piedistalli nella stanza in aumenti di statistiche casuali#Converte tutti i consumabili nella stanza in mosche blu"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Usare la carta la lancia nella direzione in cui Isaac si sta muovendo#Uccide istantaneamente QUALSIASI nemico tocchi (eccetto Delirio)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Rende gratuiti tutti gli oggetti nel {{Shop}} Negozio o nella {{DevilRoom}} Stanza del Diavolo", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Se usato mostra consigli \"utili\"", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Riempie di cacca tutta la stanza", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Uccide istantaneamente Isaac e genera 10 consumabili o oggetti sul pavimento#Gli oggetti generati vengono dalla categoria di oggetti della stanza corrente", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Apre tutte le porte nella stanza corrente", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Concede 1 uso gratuito dell'oggetto attivo di Isaac", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Risorteggia tutti i piedistalli e i consumabili nella stanza", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "2 mani di Mamma scendono giÃ¹ e afferrano 1 nemico ciascuno", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} Scudo di \"Manto Sacro\" fino all'uscita dalla stanza (previene i danni per 1 volta)#25% di chance di generare un'altra \"Carta Sacra\"", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Permette ad Isaac di distruggere le rocce camminandoci sopra", -- Huge Growth
	-- Full old Desc: "{{Timer}} Conferisce fino all'uscita dalla stanza:#â†‘ {{Damage}} +7 Danni#â†‘ {{Range}} +30 Gittata#Aumento Statura#Permette ad Isaac di distruggere le rocce camminandoci sopra"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Slow}} Rallenta i nemici", -- Era Walk
	-- Full old Desc: "{{Timer}} Conferisce fino all'uscita dalla stanza:#â†‘ {{Speed}} +0.5 VelocitÃ #â†“ {{Shotspeed}} -1 VelocitÃ  Colpi#{{Slow}} Rallenta i nemici"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "{{Poison}} Isaac scoreggia e avvelena i nemici nelle vicinanze", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} Infligge 1 cuore di danno ad Isaac#{{Heart}} Con 1 cuore o meno diventa 1 pillola \"Salute al Massimo\"", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Inverte il numero di {{Bomb}} bombe e di {{Key}} chiavi di Isaac", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Isaac genera velocemente 5 bombe accese", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "{{Heart}} Con 0 o 1 cuore diventa 1 pillola \"PiÃ¹ Salute\"", -- Health Down
	-- Full old Desc: "â†“ {{EmptyHeart}} -1 Salute#{{Heart}} Con 0 o 1 cuore diventa 1 pillola "PiÃ¹ Salute""
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Assumerne 3 conferisce la trasformazione \"Adulto\":#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Nessun effetto#Assumerne 3 conferisce la trasformazione "Adulto":#â†‘ {{Heart}} +1 Salute"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teletrasporta Isaac in una stanza casuale#{{ErrorRoom}} Piccola chance di teletrasportare Isaac nella Stanza I AM ERROR", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} Ricarica totalmente l'oggetto attivo", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Ricarica totalmente l'oggetto attivo#{{Battery}} Genera 1-2 pile"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} Esaurisce tutti i Portacuori a parte 1", -- Hematemesis
	-- Full old Desc: "{{Warning}} Esaurisce tutti i Portacuori a parte 1#{{Heart}} Genera 1-4 Cuori Rossi"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Impedisce ad Isaac di muoversi e sparare per 2 secondi", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Apre tutte le entrate per le stanze segrete nel piano", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Ammalia tutti i nemici nella stanza", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Nasconde la mappa fino all'uscita dal piano", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Genera per terra una grossa pozza che danneggia i nemici", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} Isaac spara in diagonale per 30 secondi", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} Riduce tutti i danni subiti a mezzo cuore fino all'uscita dalla stanza", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} Aumenta tutti i danni subiti ad 1 cuore fino all'uscita dalla stanza", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Isaac genera cacca dietro di lui per 2 secondi", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Effetto della Malediz. del Dedalo fino all'uscita dal piano", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Non influisce sulla sua hitbox", -- One makes you larger
	-- Full old Desc: "Aumenta la statura di Isaac#Non influisce sulla sua hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "In piÃ¹ diminuisce la sua hitbox", -- One makes you small
	-- Full old Desc: "Diminuisce la statura di Isaac#In piÃ¹ diminuisce la sua hitbox"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Genera 1 ragno blu per ogni cacca nella stanza", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Genera 1 ragno blu per ogni nemico nella stanza#Se non ci sono nemici nella stanza genera 1-3 ragni blu", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} Per 3 volte rende lo schermo pixellato per 30 secondi", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Genera una pozza di liquame scivoloso", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Genera una pozza di liquame rallentante", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Rallenta tutti i nemici nella stanza", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Velocizza tutti i nemici nella stanza", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Consuma il ninnolo di Isaac e conferisce permanentemente i suoi effetti", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Spara una lacrima di \"Ipecac\"", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Genera l'ultima pillola utilizzata prima di \"Vurp!\"", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
