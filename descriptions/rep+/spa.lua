---------------------------------------
-----  Basic Spanish descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "spa"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Accidente de Limón", "Crea una piscina de limonada#La limonada Inflige 24 de daño por segundo#esta persiste hasta que abandones la habitacion"}, -- Accidente de Limón
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Ave Muerta", "Tras ser golpeado genera un pajaro que ataca a los enemigos#El pajaro inflige 4.3 de daño de contacto por segundo#Persiste entre habitaciones si el jugador esta a 1/2 corazon"}, -- Ave Muerta
	-- Change: Complete rewrite
	[351] = {"351", "Mega Frijol", "Causa 100 de daño y petrifica a los enemigos en la habitacion#{{Poison}} Causa 5 de daño y envenena a cualquier enemigo cercano#Puede abrir cuartos secretos y destruir rocas"}, -- Mega Frijol
	-- Change: Complete rewrite
	[436] = {"436", "¡Leche!", "Bloquea proyectiles Enemigos#{{Tears}} Tras bloquear 10 disparos, se rompera y aumentara tus lagrimas durante el resto del nivel"}, -- ¡Leche!
	-- Change: Complete rewrite
	[447] = {"447", "Frijol Persistente", "Disparar por 4 segundos sin parar genera una nube de popo#La nube aumenta su tamaño luego de diez segundos#La nube hace menos daño al ser mas grande#Puede ser movida disparandole"}, -- Frijol Persistente
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Shhh", "Rebota por la habitación#Inflige 30 de Daño de contacto por segundo#Se detiene cuando Isaac dispara#Al detenerse bloquea proyectiles y dispara rafagas de lagrimas en un radio"}, -- Shhh
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}} Efecto aleatorio de lágrima para la habitación actual#Vuelve los objetos de pedestales en objetos corrompidos#{{Blank}} Corrompe la musica y los graficos en la habitacion"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirious", "Genera una version Delirium amistosa de un Jefe#Se mantiene entre Habitaciones#{{Warning}} Solo un jefe puede existir a la vez#Las cargas del objeto se basan en la calidad del jefe generado previamente"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Duele..", "{{Timer}} Al recibir daño, recibe por la habitacion:#↑ {{Tears}} Lagrimas +1.2 con el primer golpe#↑ {{Tears}} Lagrimas +0.4 por cada golpe adicional#Libera un anillo de 10 lagrimas alrededor de Isaac#Las lagrimas dejan un charco de creep al impactar"}, -- ¡Eso duele!
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Júpiter", "↑ {{EmptyHeart}} +2 Contenedores de Corazón Vacíos#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura 2 corazones#{{Speed}} Bonus de velocidad +0.5 al quedarse quieto#{{Poison}} Libera nubes de veneno al moverse#{{Poison}} inmunidad al Veneno"}, -- Júpiter
	-- Change: Complete rewrite
	[632] = {"632", "Nazar", "↑ {{Luck}} Suerte +2#Inmunidad a efectos de {{Burning}} Quemadura, {{Confusion}} Confusión, {{Fear}} Miedo, {{Slow}} Telarañas y {{Poison}} Veneno#Otorga 1 segundo de inmunidad al creep"}, -- Amuleto Maldito
	-- Change: Complete rewrite
	[681] = {"681", "Portal Pequeño", "Disparar 2 veces en una dirección lanza el portal#Inflige daño por contacto al ser lanzado#Consume los recolectables a su paso#Cada uno aumentará su tamaño, daño, y generará una Mosca Azul#Consumir 2-3 recolectables genera un portal a una habitacion especial y el familiar desaparece por el resto del nivel#El contenido de la habitacion persiste por el resto de la partida"}, -- Portal Pequeño
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abismo", "Consume todo objeto dentro de la habitacion y genera una langosta familiar por objeto#Algunos objetos generan una langosta especial al ser consumidos#{{Damage}} Las langostas infligen tu daño multiplicado por la calidad del objeto consumido:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abismo	
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "La garrapata", "{{HealingRed}} Cura 1 corazón al entrar a una {{BossRoom}} Sala de Jefe#El jefe comienza con -15% de vida#{{Warning}} Al ser recogido, no puede ser soltado#Solo es quitado con {{Trinket41}} la Cerilla {{Trinket135}} el Mechero, o tragándotelo"}, -- La garrapata
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Amígdala", "Recibir daño 6-12 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares a la vez"}, -- Amígdala
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Fusible corto", "Las bombas colocadas explotan más rápido#Las bombas hacen un 15% mas de daño"}, -- Fusible corto
	-- Change: "2%" to "5%"
	[104] = {"104", "Hueso de los deseos", "Probabilidad de 5% de destruirse y generar un objeto al ser golpeado"}, -- Hueso de los deseos
	-- Change: "2%" to "5%"
	[105] = {"105", "Bolsa del almuerzo", "Probabilidad de 5% de destruirse y generar {{Collectible22}} Almuerzo al ser golpeado"}, -- Bolsa del almuerzo
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

-- Table that contains commonly used descriptions for abyss synergies
local abyssPresets = {
	noEffect = "Sin efectos",
	normalTwo = "Dos langostas normales",
	smallFour = "Cuatro langostas pequeñas",
	blackFear = "Langostas negras que asustan a los enemigos",
	blueConfuse = "Langostas azules que empujan y confunden a los enemigos",
	blueFreeze = "Langostas azules que congelan a los enemigos",
	cyanDestroyProjectiles = "Langosta cian que destruye proyectiles enemigos",
	cyanElectricity = "Langosta cian que crea arcos de electricidad causando 0.1 de daño por tick",
	grayConfuse = "Langosta gris que confunde a los enemigos",
	grayPetrify = "Langosta gris que petrifica a los enemigos",
	grayMagnetize = "Langosta gris que magnetiza a los enemigos",
	graySlow = "Langosta gris claro que ralentiza enemigos",
	grayBones = "Langosta gris claro que crea 1-3 fragmentos de hueso tras golpear enemigos",
	greenPoison = "Langosta verde que envenena a los enemigos",
	pinkMimic = "Langosta rosa que imita aleatoriamente los efectos de otras langostas especiales",
	pinkCharm = "Langosta rosa que encanta a los enemigos",
	purpleHoming = "Langosta morada teledirigida",
	orangeBurn = "Langosta ardiente que incendia a los enemigos",
	redBleed = "Langosta rojiza que inflige sangrado a los enemigos",
	redLarge = "Langosta rojiza grande",
	whiteBeam = "Langosta blanca brillante que puede generar rayos de luz que infligen el triple del daño de Isaac",
	whiteGodhead = "Langosta blanca brillante con un aura que inflige 2 de daño por tick a los enemigos dentro",
	yellowExplode = "Langosta amarilla explosiva",
	yellowPoisonExplode = "Langosta amarilla que envenena a los enemigos y explota",
	yellowMimicExplode = "Langosta amarilla que explota e imita aleatoriamente los efectos de otras langostas especiales",
}

-- Special Locust effects when Item was eaten by Abyss
local abyssSynergies = {
	[4] = abyssPresets.noEffect, -- Cricket's Head
	[6] = "Langosta veloz que inflige daño rapidamente", -- Number One
	[7] = abyssPresets.noEffect, -- Blood of the Martyr
	[10] = "Dos langostas cian que destruyen proyectiles enemigos", -- Halo of Flies
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
	[71] = "Langosta roja pequeña", -- Mini Mush
	[73] = abyssPresets.cyanDestroyProjectiles, -- Cube of Meat
	[77] = abyssPresets.cyanDestroyProjectiles, -- My Little Unicorn
	[89] = abyssPresets.graySlow, -- Spider Bite
	[95] = abyssPresets.cyanElectricity, -- Robo Baby
	[99] = abyssPresets.graySlow, -- Little Gish
	[100] = abyssPresets.purpleHoming, -- Little Steven
	[104] = "Una Langosta roja normal y dos langostas rojas pequeñas", -- The Parasite
	[106] = abyssPresets.yellowExplode, -- Mr. Mega
	[108] = abyssPresets.cyanDestroyProjectiles, -- The Wafer
	[110] = abyssPresets.grayPetrify, -- Mom's Contacts
	[111] = abyssPresets.greenPoison, -- The Bean
	[112] = abyssPresets.cyanDestroyProjectiles, -- Guardian Angel
	[114] = "Langosta roja grande que ataca rapidamente", -- Mom's Knife
	[116] = abyssPresets.cyanElectricity, -- 9 Volt
	[118] = "Langosta negra grande", -- Brimstone
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
	[178] = "Langosta blanca brillante que puede generar rayos de luz que infligen el triple del daño de Isaac", -- Holy Water
	[180] = abyssPresets.greenPoison, -- The Black Bean
	[181] = abyssPresets.whiteBeam, -- White Pony
	[182] = "Langosta blanca, lenta, brillante y teledirigida que puede generar rayos de luz que infligen el triple del daño de Isaac", -- Sacred Heart
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
	[231] = "Langosta negra que ralentiza a los enemigos", -- Ball of Tar
	[232] = abyssPresets.graySlow, -- Stop Watch
	[242] = abyssPresets.cyanDestroyProjectiles, -- Infamy
	[243] = abyssPresets.cyanDestroyProjectiles, -- Trinity Shield
	[244] = abyssPresets.cyanDestroyProjectiles, -- Tech.5
	[245] = abyssPresets.normalTwo, -- 20/20
	[248] = abyssPresets.redLarge, -- Hive Mind
	[250] = abyssPresets.yellowExplode, -- BOGO Bombs
	[256] = "Langosta amarilla ardiente que incendia a los enemigos y explota", -- Hot Bombs
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
	[279] = "Langosta cian grande y muy lenta que destruye proyectiles enemigos", -- Big Fan
	[281] = abyssPresets.cyanDestroyProjectiles, -- Punching Bag
	[289] = abyssPresets.orangeBurn, -- Red Candle
	[294] = abyssPresets.blueConfuse, -- Butter Bean
	[298] = abyssPresets.cyanDestroyProjectiles, -- Unicorn Stump
	[300] = abyssPresets.blueConfuse, -- Aries
	[303] = abyssPresets.cyanDestroyProjectiles, -- Virgo
	[309] = abyssPresets.blueConfuse, -- Pisces
	[310] = "Langosta negra, grande y lenta", -- Eve's Mascara
	[313] = abyssPresets.cyanDestroyProjectiles, -- Holy Mantle
	[315] = abyssPresets.grayMagnetize, -- Strange Attractor
	[317] = abyssPresets.greenPoison, -- Mysterious Liquid
	[326] = abyssPresets.cyanDestroyProjectiles, -- Breath of Life
	[330] = "Langosta pequeña extremadamente veloz que inflige daño rapidamente", -- Soy Milk
	[331] = abyssPresets.whiteGodhead, -- Godhead
	[336] = "Langosta roja lenta", -- Dead Onion
	[337] = abyssPresets.graySlow, -- Broken Watch
	[338] = abyssPresets.grayPetrify, -- Boomerang
	[347] = abyssPresets.normalTwo, -- Diplopia
	[350] = abyssPresets.greenPoison, -- Toxic Shock
	[351] = "Langosta verde que envenena, empuja y confunde a los enemigos", -- Mega Bean
	[353] = abyssPresets.yellowExplode, -- Bomber Boy
	[356] = abyssPresets.cyanElectricity, -- Car Battery
	[360] = abyssPresets.normalTwo, -- Incubus
	[363] = abyssPresets.cyanDestroyProjectiles, -- Sworn Protector
	[366] = "Dos langostas amarillas que explotan", -- Scatter Bombs
	[367] = "Langosta amarilla que ralentiza a los enemigos y explota", -- Sticky Bombs
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
	[398] = "Langosta azul que encoje a los enemigos", -- God's Flesh
	[401] = abyssPresets.yellowExplode, -- Explosivo
	[402] = abyssPresets.pinkMimic, -- Chaos
	[403] = abyssPresets.pinkMimic, -- Spider Mod
	[404] = "Langosta cian que envenena a los enemigos y destruye proyectiles enemigos", -- Farting Baby
	[405] = abyssPresets.pinkMimic, -- GB Bug
	[415] = abyssPresets.whiteBeam, -- Crown of Light
	[417] = abyssPresets.whiteGodhead, -- Succubus
	[418] = abyssPresets.pinkMimic, -- Fruit Cake
	[421] = abyssPresets.pinkCharm, -- Kidney Bean
	[423] = abyssPresets.cyanDestroyProjectiles, -- Circle of Protection
	[425] = abyssPresets.graySlow, -- Night Light
	[427] = abyssPresets.yellowExplode, -- Mine Crafter
	[432] = abyssPresets.yellowMimicExplode, -- Glitter Bombs
	[441] = "Langosta negra grande", -- Mega Blast
	[446] = abyssPresets.greenPoison, -- Dead Tooth
	[448] = abyssPresets.redBleed, -- Shard of Glass
	[449] = abyssPresets.cyanDestroyProjectiles, -- Metal Plate
	[453] = abyssPresets.grayBones, -- Compound Fracture
	[457] = abyssPresets.cyanDestroyProjectiles, -- Cone Head
	[459] = abyssPresets.greenPoison, -- Sinus Infection
	[460] = abyssPresets.grayConfuse, -- Glaucoma
	[466] = abyssPresets.greenPoison, -- Contagion
	[473] = "Langosta roja grande y lenta", -- Big Chubby
	[478] = abyssPresets.grayPetrify, -- Pause
	[483] = "Langosta amarilla grande que explota", -- Mama Mega
	[488] = abyssPresets.pinkMimic, -- Metronome
	[495] = abyssPresets.orangeBurn, -- Ghost Pepper
	[497] = abyssPresets.grayConfuse, -- Camo Undies
	[502] = abyssPresets.graySlow, -- Large Zit
	[506] = abyssPresets.redBleed, -- Backstabber
	[508] = abyssPresets.redBleed, -- Mom's Razor
	[510] = abyssPresets.pinkMimic, -- Delirious
	[512] = abyssPresets.grayMagnetize, -- Black Hole
	[514] = "Langosta gris que petrifica y confunde a los enemigos", -- Broken Modem
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
	[561] = "Langosta pequeña y veloz que inflige daño rapidamente", -- Almond Milk
	[563] = abyssPresets.yellowMimicExplode, -- Nancy Bombs
	[568] = abyssPresets.cyanDestroyProjectiles, -- Divine Intervention
	[570] = abyssPresets.pinkMimic, -- Playdough Cookie
	[574] = abyssPresets.whiteGodhead, -- Monstrance
	[575] = abyssPresets.graySlow, -- The Intruder
	[577] = "Dos langostas cian que destruyen proyectiles enemigos", -- Damocles
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
	[625] = "Langosta roja grande que ataca rapidamente", -- Mega Mush
	[629] = abyssPresets.cyanDestroyProjectiles, -- Bot Fly
	[631] = "Dos langostas rojas pequeñas", -- Meat Cleaver
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
	[693] = "Tres langostas cian que destruyen proyectiles enemigos", -- The Swarm
	[698] = abyssPresets.normalTwo, -- Twisted Pair
	[721] = abyssPresets.pinkMimic, -- TMTRAINER
	[727] = abyssPresets.yellowExplode, -- Ghost Bombs
	[706] = "Genera 16 langostas de diferentes colores y efectos", -- Abyss
}

EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
