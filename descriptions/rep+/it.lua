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

-- Table that contains commonly used descriptions for abyss synergies
local abyssPresets = {
	noEffect = "Nessun effetto speciale",
	normalTwo = "2 locuste normali",
	smallFour = "4 locuste piccole",
	blackFear = "Locusta nera che spaventa i nemici",
	blueConfuse = "Locusta blu che respinge e confonde i nemici",
	blueFreeze = "Locusta blu che congela i nemici",
	cyanDestroyProjectiles = "Locusta turchese che distrugge i proiettili nemici",
	cyanElectricity = "Locusta turchese che crea scariche elettriche che infliggono 0.1 danni a tocco",
	grayConfuse = "Locusta grigia che confonde i nemici",
	grayPetrify = "Locusta grigia che pietrifica i nemici",
	grayMagnetize = "Locusta grigia che magnetizza i nemici",
	graySlow = "Locusta grigio chiaro che rallenta i nemici",
	grayBones = "Locusta grigio chiaro che crea 1-3 schegge d'ossa quando colpiscono i nemici",
	greenPoison = "Locusta verde che avvelena i nemici",
	pinkMimic = "Locusta rosa che imita gli effetti delle altre locuste speciali ad intervalli casuali",
	pinkCharm = "Locusta rosa che ammalia i nemici",
	purpleHoming = "Locusta viola a ricerca",
	orangeBurn = "Locusta arancione e incandescente che incendia i nemici",
	redBleed = "Locusta rosso scuro che infligge sanguinamento ai nemici",
	redLarge = "Locusta rossa più grande",
	whiteBeam = "Locusta bianca e lucente che può generare raggi di luce che infliggono x3 dei danni di Isaac",
	whiteGodhead = "Locusta bianca e lucente che ha l'aura di \"Divinità\" che infligge rapidamente ai nemici al suo interno 2 danni a tocco",
	yellowExplode = "Locusta gialla che esplode",
	yellowPoisonExplode = "Locusta gialla che avvelena i nemici ed esplode",
	yellowMimicExplode = "Locusta gialla che esplode e imita gli effetti delle altre locuste speciali ad intervalli casuali",
}

-- Special Locust effects when Item was eaten by Abyss
local abyssSynergies = {
	[4] = abyssPresets.noEffect, -- Cricket's Head
	[6] = "Locusta veloce che infligge danni un po' più velocemente", -- Number One
	[7] = abyssPresets.noEffect, -- Blood of the Martyr
	[10] = "2 locuste turchesi che distruggono i proiettili nemici", -- Halo of Flies
	[12] = abyssPresets.redLarge, -- Magic Mushroom
	[19] = abyssPresets.yellowExplode, -- Boom!
	[37] = abyssPresets.yellowExplode, -- Mr. Boom
	[39] = abyssPresets.grayPetrify, -- Mom's Bra
	[40] = abyssPresets.yellowExplode, -- Kamikaze!
	[47] = abyssPresets.yellowExplode, -- Doctor's Remote
	[52] = abyssPresets.yellowExplode, -- Dr. Fetus
	[41] = abyssPresets.blackFear, -- Mom's Pad
	[53] = abyssPresets.grayMagnetize, -- Magneto
	[58] = abyssPresets.cyanDestroyProjectiles, -- Book of Shadows
	[62] = abyssPresets.redBleed, -- Charm of the Vampire
	[63] = abyssPresets.cyanElectricity, -- The Battery
	[65] = abyssPresets.yellowExplode, -- Anarchist Cookbook
	[66] = abyssPresets.graySlow, -- The Hourglass
	[68] = abyssPresets.cyanElectricity, -- Technology
	[69] = abyssPresets.redLarge, -- Chocolate Milk
	[71] = "Locusta rossa più piccola", -- Mini Mush
	[73] = abyssPresets.cyanDestroyProjectiles, -- Cube of Meat
	[77] = abyssPresets.cyanDestroyProjectiles, -- My Little Unicorn
	[89] = abyssPresets.graySlow, -- Spider Bite
	[95] = abyssPresets.cyanElectricity, -- Robo Baby
	[99] = abyssPresets.graySlow, -- Little Gish
	[100] = abyssPresets.purpleHoming, -- Little Steven
	[104] = "1 locusta rossa normale e 2 locuste rosse più piccole", -- The Parasite
	[106] = abyssPresets.yellowExplode, -- Mr. Mega
	[108] = abyssPresets.cyanDestroyProjectiles, -- The Wafer
	[110] = abyssPresets.grayPetrify, -- Mom's Contacts
	[111] = abyssPresets.greenPoison, -- The Bean
	[112] = abyssPresets.cyanDestroyProjectiles, -- Guardian Angel
	[114] = "Locusta rossa più grande che attacca più velocemente", -- Mom's Knife
	[116] = abyssPresets.cyanElectricity, -- 9 Volt
	[118] = "Locusta nera più grande", -- Brimstone
	[124] = abyssPresets.pinkMimic, -- Dead Sea Scrolls
	[125] = abyssPresets.yellowExplode, -- Bobby-Bomb
	[136] = abyssPresets.yellowExplode, -- Best Friend
	[137] = abyssPresets.yellowExplode, -- Remote Detonator
	[140] = abyssPresets.yellowExplode, -- Bob's Curse
	[149] = abyssPresets.greenPoison, -- Ipecac
	[153] = abyssPresets.smallFour, -- Mutant Spider
	[160] = abyssPresets.whiteBeam, -- Crack the Sky
	[162] = abyssPresets.cyanDestroyProjectiles, -- Celtic Cross
	[164] = abyssPresets.orangeBurn, -- The Candle
	[168] = abyssPresets.yellowExplode, -- Epic Fetus
	[169] = abyssPresets.redLarge, -- Polyphemus
	[171] = abyssPresets.graySlow, -- Spider Butt
	[172] = abyssPresets.cyanDestroyProjectiles, -- Sacrificial Dagger
	[178] = "Locusta bianca e lucente che pietrifica i nemici e che può generare raggi di luce che infliggono x3 dei danni di Isaac", -- Holy Water
	[180] = abyssPresets.greenPoison, -- The Black Bean
	[181] = abyssPresets.whiteBeam, -- White Pony
	[182] = "Locusta bianca, lenta, lucente e a ricerca che può generare raggi di luce che infliggono x3 dei danni di Isaac", -- Sacred Heart
	[187] = abyssPresets.cyanDestroyProjectiles, -- Guppy's Hairball
	[190] = abyssPresets.yellowExplode, -- Pyro
	[191] = abyssPresets.pinkMimic, -- 3 Dollar Bill
	[192] = abyssPresets.purpleHoming, -- Telepathy for Dummies
	[200] = abyssPresets.pinkCharm, -- Mom's Eyeshadow
	[201] = abyssPresets.grayConfuse, -- Iron Bar
	[202] = abyssPresets.grayPetrify, -- Midas' Touch
	[207] = abyssPresets.cyanDestroyProjectiles, -- Ball of Bandages
	[209] = abyssPresets.yellowPoisonExplode, -- Butt Bombs
	[210] = abyssPresets.cyanDestroyProjectiles, -- Gnawed Leaf
	[213] = abyssPresets.cyanDestroyProjectiles, -- Lost Contact
	[220] = abyssPresets.yellowExplode, -- Sad Bombs
	[224] = abyssPresets.smallFour, -- Cricket's Body
	[228] = abyssPresets.blackFear, -- Mom's Perfume
	[230] = abyssPresets.blackFear, -- Abaddon
	[231] = "Locusta nera che rallenta i nemici", -- Ball of Tar
	[232] = abyssPresets.graySlow, -- Stop Watch
	[242] = abyssPresets.cyanDestroyProjectiles, -- Infamy
	[243] = abyssPresets.cyanDestroyProjectiles, -- Trinity Shield
	[244] = abyssPresets.cyanDestroyProjectiles, -- Tech.5
	[245] = abyssPresets.normalTwo, -- 20/20
	[248] = abyssPresets.redLarge, -- Hive Mind
	[250] = abyssPresets.yellowExplode, -- BOGO Bombs
	[256] = "Locusta gialla e incandescente che brucia i nemici ed esplode", -- Hot Bombs
	[258] = abyssPresets.pinkMimic, -- Missing No.
	[259] = abyssPresets.blackFear, -- Dark Matter
	[264] = abyssPresets.purpleHoming, -- Smart Fly
	[265] = abyssPresets.cyanDestroyProjectiles, -- Dry Baby
	[266] = abyssPresets.graySlow, -- Juicy Sack
	[267] = abyssPresets.cyanElectricity, -- Robo-Baby 2.0
	[272] = abyssPresets.yellowExplode, -- BBF
	[273] = abyssPresets.yellowPoisonExplode, -- Bob's Brain
	[276] = abyssPresets.blueConfuse, -- Isaac's Heart
	[277] = abyssPresets.blackFear, -- Lil Haunt
	[279] = "Locusta turchese, grande e molto lenta che distrugge i proiettili nemici", -- Big Fan
	[281] = abyssPresets.cyanDestroyProjectiles, -- Punching Bag
	[289] = abyssPresets.orangeBurn, -- Red Candle
	[294] = abyssPresets.blueConfuse, -- Butter Bean
	[298] = abyssPresets.cyanDestroyProjectiles, -- Unicorn Stump
	[300] = abyssPresets.blueConfuse, -- Aries
	[303] = abyssPresets.cyanDestroyProjectiles, -- Virgo
	[309] = abyssPresets.blueConfuse, -- Pisces
	[310] = "Locusta nera, grande e lenta", -- Eve's Mascara
	[313] = abyssPresets.cyanDestroyProjectiles, -- Holy Mantle
	[315] = abyssPresets.grayMagnetize, -- Strange Attractor
	[317] = abyssPresets.greenPoison, -- Mysterious Liquid
	[326] = abyssPresets.cyanDestroyProjectiles, -- Breath of Life
	[330] = "Locusta minuscola e velocissima che infligge danni più velocemente", -- Soy Milk
	[331] = abyssPresets.whiteGodhead, -- Godhead
	[336] = "Locusta rossa e lenta", -- Dead Onion
	[337] = abyssPresets.graySlow, -- Broken Watch
	[338] = abyssPresets.grayPetrify, -- Boomerang
	[347] = abyssPresets.normalTwo, -- Diplopia
	[350] = abyssPresets.greenPoison, -- Toxic Shock
	[351] = "Locusta verde che avvelena, respinge e confonde i nemici", -- Mega Bean
	[353] = abyssPresets.yellowExplode, -- Bomber Boy
	[356] = abyssPresets.cyanElectricity, -- Car Battery
	[360] = abyssPresets.normalTwo, -- Incubus
	[363] = abyssPresets.cyanDestroyProjectiles, -- Sworn Protector
	[366] = "2 locuste gialle che esplodono", -- Scatter Bombs
	[367] = "Locusta gialla che rallenta i nemici ed esplode", -- Sticky Bombs
	[371] = abyssPresets.yellowExplode, -- Curse of the Tower
	[372] = abyssPresets.cyanElectricity, -- Charged Baby
	[374] = abyssPresets.whiteBeam, -- Holy Light
	[375] = abyssPresets.cyanDestroyProjectiles, -- Host Hat
	[378] = abyssPresets.yellowExplode, -- Number Two
	[379] = abyssPresets.redLarge, -- Pupula Duplex
	[387] = abyssPresets.graySlow, -- Censer
	[391] = abyssPresets.pinkCharm, -- Betrayal
	[393] = abyssPresets.greenPoison, -- Serpent's Kiss
	[395] = abyssPresets.cyanElectricity, -- Tech X
	[398] = "Locusta blu che rimpicciolisce i nemici", -- God's Flesh
	[401] = abyssPresets.yellowExplode, -- Explosivo
	[402] = abyssPresets.pinkMimic, -- Chaos
	[403] = abyssPresets.pinkMimic, -- Spider Mod
	[404] = "Locusta turchese che avvelena i nemici e distrugge i loro proiettili", -- Farting Baby
	[405] = abyssPresets.pinkMimic, -- GB Bug
	[415] = abyssPresets.whiteBeam, -- Crown of Light
	[417] = abyssPresets.whiteGodhead, -- Succubus
	[418] = abyssPresets.pinkMimic, -- Fruit Cake
	[421] = abyssPresets.pinkCharm, -- Kidney Bean
	[423] = abyssPresets.cyanDestroyProjectiles, -- Circle of Protection
	[425] = abyssPresets.graySlow, -- Night Light
	[427] = abyssPresets.yellowExplode, -- Mine Crafter
	[432] = abyssPresets.yellowMimicExplode, -- Glitter Bombs
	[441] = "Grossa locusta nera", -- Mega Blast
	[446] = abyssPresets.greenPoison, -- Dead Tooth
	[448] = abyssPresets.redBleed, -- Shard of Glass
	[449] = abyssPresets.cyanDestroyProjectiles, -- Metal Plate
	[453] = abyssPresets.grayBones, -- Compound Fracture
	[457] = abyssPresets.cyanDestroyProjectiles, -- Cone Head
	[459] = abyssPresets.greenPoison, -- Sinus Infection
	[460] = abyssPresets.grayConfuse, -- Glaucoma
	[466] = abyssPresets.greenPoison, -- Contagion
	[473] = "Locusta rossa più grande e più lenta", -- Big Chubby
	[478] = abyssPresets.grayPetrify, -- Pause
	[483] = "Locusta gialla più grande che esplode", -- Mama Mega
	[488] = abyssPresets.pinkMimic, -- Metronome
	[495] = abyssPresets.orangeBurn, -- Ghost Pepper
	[497] = abyssPresets.grayConfuse, -- Camo Undies
	[502] = abyssPresets.graySlow, -- Large Zit
	[506] = abyssPresets.redBleed, -- Backstabber
	[508] = abyssPresets.redBleed, -- Mom's Razor
	[510] = abyssPresets.pinkMimic, -- Delirious
	[512] = abyssPresets.grayMagnetize, -- Black Hole
	[514] = "Locusta grigia che pietrifica e confonde i nemici", -- Broken Modem
	[517] = abyssPresets.yellowExplode, -- Fast Bombs
	[519] = abyssPresets.pinkMimic, -- Lil Delirium
	[520] = abyssPresets.cyanElectricity, -- Jumper Cables
	[524] = abyssPresets.cyanElectricity, -- Technology Zero
	[525] = abyssPresets.cyanDestroyProjectiles, -- Leprosy
	[533] = abyssPresets.whiteBeam, -- Trisagion
	[541] = abyssPresets.grayBones, -- Marrow
	[542] = abyssPresets.grayBones, -- Slipped Rib
	[544] = abyssPresets.grayBones, -- Pointy Rib
	[545] = abyssPresets.grayBones, -- Book of the Dead
	[546] = abyssPresets.grayPetrify, -- Dad's Ring
	[548] = abyssPresets.grayBones, -- Jawbone
	[549] = abyssPresets.grayBones, -- Brittle Bones
	[553] = abyssPresets.greenPoison, -- Mucomycosis
	[554] = abyssPresets.blackFear, -- 2Spooky
	[561] = "Locusta minuscola e velocissima che infligge danni più velocemente", -- Almond Milk
	[563] = abyssPresets.yellowMimicExplode, -- Nancy Bombs
	[568] = abyssPresets.cyanDestroyProjectiles, -- Divine Intervention
	[570] = abyssPresets.pinkMimic, -- Playdough Cookie
	[574] = abyssPresets.whiteGodhead, -- Monstrance
	[575] = abyssPresets.graySlow, -- The Intruder
	[577] = "2 locuste turchesi che distruggono i proiettili nemici", -- Damocles
	[581] = abyssPresets.cyanDestroyProjectiles, -- Psy Fly
	[583] = abyssPresets.yellowExplode, -- Rocket in a Jar
	[591] = abyssPresets.pinkCharm, -- Venus
	[594] = abyssPresets.greenPoison, -- Jupiter
	[596] = abyssPresets.blueFreeze, -- Uranus
	[603] = abyssPresets.cyanElectricity, -- Battery Pack
	[606] = abyssPresets.grayMagnetize, -- Ocular Rift
	[608] = abyssPresets.blueFreeze, -- Freezer Baby
	[615] = abyssPresets.cyanDestroyProjectiles, -- Lil Dumpy
	[616] = abyssPresets.orangeBurn, -- Bird's Eye
	[617] = abyssPresets.grayMagnetize, -- Lodestone
	[618] = abyssPresets.pinkCharm, -- Rotten Tomato
	[622] = abyssPresets.pinkMimic, -- Genesis
	[625] = "Grossa locusta rossa che attacca più velocemente", -- Mega Mush
	[629] = abyssPresets.cyanDestroyProjectiles, -- Bot Fly
	[631] = "2 piccole locuste rosse", -- Meat Cleaver
	[637] = abyssPresets.blueConfuse, -- Knockout Drops
	[640] = abyssPresets.orangeBurn, -- Urn of Souls
	[645] = abyssPresets.cyanDestroyProjectiles, -- Tinytoma
	[646] = abyssPresets.yellowExplode, -- Brimstone Bombs
	[647] = abyssPresets.cyanElectricity, -- 4.5 Volt
	[652] = abyssPresets.blueFreeze, -- Cube Baby
	[663] = abyssPresets.cyanDestroyProjectiles, -- Tooth and Nail
	[683] = abyssPresets.grayBones, -- Bone Spurs
	[689] = abyssPresets.pinkMimic, -- Glitched Crown
	[690] = abyssPresets.blueConfuse, -- Belly Jelly
	[693] = "3 locuste turchesi che distruggono i proiettili nemici", -- The Swarm
	[698] = abyssPresets.normalTwo, -- Twisted Pair
	[721] = abyssPresets.pinkMimic, -- TMTRAINER
	[727] = abyssPresets.yellowExplode, -- Ghost Bombs
	[706] = "Genera 16 locuste dai colori ed effetti diversi", -- Abyss
}

EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
