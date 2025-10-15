---------------------------------------
-----  Basic Spanish descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line  |  ! = Warning
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "spa"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "Accidente de Limón", "Genera una charco de limonada#La limonada inflige 24 de daño cada segundo#La limonada persiste hasta abandonar la habitación" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Ave Muerta", "Invoca un pajaro que ataca a los enemigos tras recibir daño#El pajaro inflige 4.3 de daño por contacto cada segundo#Persiste entre habitaciones al tener medio corazón de salud" }, -- Dead Bird
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "Chico del desfile", "{{Coin}} Genera 7 monedas aleatorias#{{Trinket}} Genera un trinket de moneda aleatorio" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "Derechos de sangre", "Inflige 40 de daño a todos los enemigos#{{Tears}} Lágrimas +0.48 durante la sala actual#{{Warning}} Te inflige 1 corazón de daño al usarlo#Tras el primer uso en la sala, sólo removerá medio corazón#{{Heart}} Remueve primero los corazones rojos" }, -- Blood Rights
	-- Change: added random tear effects information
	[244] = { "244", "Tech.5", "Dispara láseres ocasionalmente junto a tus lágrimas#Pequeña probabilidad de que los láseres tengan un efecto aleatorio" }, -- Tech.5
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Saco de boxeo", "Señuelo que deambula por la habitación#Los enemigos lo atacarán en vez de al jugador si está cerca#Bloquea proyectiles enemigos" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "La técnica de Ludovico", "↑ {{Shotspeed}} Vel. de lágrimas +0.2#Reemplaza tus lágrimas con una lágrima gigante controlable" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Frijol", "Petrifica e inflige 100 de daño a los enemigos de la habitación actual#{{Poison}} Envenena e inflige 5 de daño a los enemigos cercanos#Puede abrir cuartos secretos y destruir rocas" }, -- Mega Frijol
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[420] = { "420", "Polvo Oscuro", "Caminar en un círculo dibuja un símbolo de pentagrama en el suelo#El pentagrama inflige 130 de daño por contacto y dura 4 segundos#Aumenta el tamaño de las explosiones#Las fogatas explotan al extinguirse" }, -- Black Powder
	-- Change: Complete rewrite
	[436] = { "436", "¡Leche!", "Bloquea proyectiles enemigos#{{Tears}} Tras bloquear 10 proyectiles, se rompe y aumenta tus lágrimas durante el piso actual" }, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "Frijol Persistente", "Disparar durante 4 segundos genera una nube de pedo#La nube aumentará su tamaño durante 10 segundos#La nube inflige menos daño al ser más grande#Puede ser movida disparandole" }, -- Frijol Persistente
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Shhh", "Rebota por la habitación#Inflige 30 de daño por contacto cada segundo#Se detiene cuando disparas#Al detenerse, bloquea proyectiles y dispara ráfagas de lágrimas en un radio" }, -- Shhh
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[475] = { "475", "Plan C", "Inflige 9.999.999 de daño a todos los enemigos#{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}#10 a 12 segundos contra Delirium y Mother" }, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Dataminer", "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}} Efecto de lágrima aleatorio para la habitación actual#Corrompe los objetos en pedestales de la habitación#{{Blank}} Corrompe la musica y los graficos en la habitacion" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50% 
	[482] = { "482", "Control Remoto", "Cambia tu personaje por otro de forma aleatoria#50% de probabilidad de eliminar el último objeto pasivo recogido" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirious", "Genera una version Delirium amistosa de un Jefe#Se mantiene entre Habitaciones#{{Warning}} Solo un jefe puede existir a la vez#La salud del jefe se deteriora con el tiempo" }, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "Tengo miedo", "{{Tears}} Lágrimas +0.5#{{Shotspeed}} Vel. de lágrimas +0.2#{{Fear}} Asusta a los enemigos en un corto radio a tu alrededor" }, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Duele..", "{{Timer}} Recibir daño otorga durante la habitacion:#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional#Libera un anillo de 10 lágrimas a tu alrededor#Las lágrimas dejan un charco de fluido" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Embiste al pulsar dos veces la tecla de movimiento#Al embestir: te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño +8#{{Timer}} 3 segundos de recarga#{{Burning}} Genera un aro de fuego al impacto" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Júpiter", "↑ {{EmptyHeart}} +2 Contenedores de corazón vacíos#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura 2 corazones#{{Speed}} +0.5 de Velocidad adicional al quedarte quieto#{{Poison}} Libera nubes de veneno al moverse#{{Poison}} Inmunidad al Veneno" }, -- Júpiter
	-- Change: Complete rewrite
	[632] = { "632", "Nazar", "↑ {{Luck}} Suerte +2#Inmunidad a efectos de {{Burning}} Quemadura, {{Confusion}} Confusión, {{Fear}} Miedo, {{Slow}} Telarañas y {{Poison}} Veneno#Otorga un segundo de inmunidad a los fluidos" }, -- Amuleto Maldito
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "Revelación", "Permite volar#{{Chargeable}} Láser Sagrado cargable#El láser no reemplaza tus lágrimas" }, -- Revelation
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Estrella de Belén", "{{BossRoom}} Viaja lentamente hasta la sala del jefe#Emite un aura que otorga:#↑ {{Tears}} Lágrimas x2.5#↑ {{Damage}} Daño x1.2#Lágrimas Teledirigidas#50% de probabilidad de ignorar el daño recibido" }, -- Star of Bethlehem
	-- Change: Complete rewrite
	[660] = { "660", "Lectura de cartas", "Genera 2 portales al inicio de cada planta#Los portales desaparecen al abandonar la habitación#{{Blank}} {{ColorRed}}Rojo: {{CR}}{{BossRoom}} Sala del jefe#{{Blank}} {{ColorYellow}}Amarillo: {{CR}}{{TreasureRoom}} Sala del tesoro#{{Blank}} {{ColorBlue}}Azul: {{CR}}{{SecretRoom}} Habitación secreta#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Tienda" }, -- Card Reading
	-- Change: Added info about the green portal
	[681] = { "681", "Portal Pequeño", "Disparar 2 veces en una dirección lanza el portal#Inflige daño por contacto al ser lanzado#Consume los recolectables a su paso#Cada uno aumentará su tamaño, daño, y generará una Mosca Azul#Consumir 2-3 recolectables genera un portal a una habitacion especial y el familiar desaparece por el resto del nivel#El contenido de la habitacion persiste por el resto de la partida" }, -- Portal Pequeño
	-- Change: Added info for first usage
	[685] = { "685", "Tarro de Avispas", "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#Genera un fuego adicional con cada uso, hasta llegar a 12#El primer uso genera 2 fuegos" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abismo", "Consume los objetos en pedestales de la habitacion y genera un familiar langosta por objeto#Algunos objetos generan una langosta especial al ser consumidos#{{Damage}} Las langostas infligen tu daño multiplicado por la calidad del objeto consumido:#{{Quality0}} - x0.5#{{Quality1}} - x0.75#{{Quality2}} - x1#{{Quality3}} - x1.5#{{Quality4}} - x2" }, -- Abismo	
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = { "5", "Corazón Purpura", "Duplica la probabilidad de encontrar enemigos campeones#50% de probabilidad de que los enemigos campeones suelten recolectables#Los enemigos campeones sueltan el doble recolectables" }, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Cuenta de rosario", "{{AngelChance}} 50% mayor probabilidad de encontrar Salas de Ángel#{{Collectible33}} Mayor probabilidad de encontrar La Bíblia en {{Shop}} Tiendas y {{Library}} Bibliotecas#Reemplaza la {{DevilRoom}} Sala del Diablo por una {{AngelRoom}} Sala del Ángel" }, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = { "16", "Uña del pie de Mamá", "Al soltar el trinket en una habitación hostil, el Pie de Mamá pisoteará en su ubicación" }, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Cartel de Desaparecido", "{{Player10}} Reaparecerás como \"El Perdido\" tras morir#{{SuperSecretRoom}} 33% de probabilidad de revelar Habitaciones Super Secretas al cambiar de piso" }, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "La garrapata", "{{HealingRed}} Cura 1 corazón al entrar a una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla, {{Trinket135}} el Mechero o tragándolo" }, -- La garrapata
	-- Change: added +0.5 damage
	[66] = { "66", "Gusano Perezoso", "↑ {{Damage}} Daño +0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.5" }, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = { "70", "Piojo", "Genera una araña azul al completar habitaciones" }, -- Louse
	-- Change: Added more loot information
	[76] = { "76", "Ficha de póker", "Al abrir un cofre:#↑ 50% de probabilidad de conseguir más recolectables#↓ 50% de probabilidad de generar una mosca roja#Aumenta la probabilidad de obtener recompensas de las máquinas#Si el Cofre contiene un objeto, este será de calidad 3 o superior#Los Cofres ocasionalmente pueden tener objetos fuera del \"Grupo de objetos\" del Cofre Dorado" }, -- Poker Chip
	-- Change: Added additional effects
	[85] = { "85", "Karma", "{{DonationMachine}} Al usar una Máquina de Donación, 33% de probabilidad de:#{{HealingRed}} Curar 1 corazón rojo {{ColorSilver}}(40%)#{{Coin}} Generar una moneda {{ColorSilver}}(40%)#{{Luck}} Suerte +1 {{ColorSilver}}(15%)#{{Beggar}} Generar un mendigo {{ColorSilver}}(5%)#Tambien afecta a las donaciones de Mendigos y Máquinas de Reabastecimiento" }, -- Karma
	-- Change: Added damage up information
	[89] = { "89", "Correa de Niño", "Mantiene a los familiares cerca del jugador#{{Damage}} Aumenta ligeramente el daño de los familiares" }, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "Pañal usado", "33% de probabilidad por habitación de volver amistosas a todas las moscas enemigas#Genera una mosca azul al entrar a una nueva sala" }, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Amígdala", "Recibir daño 6-12 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares a la vez" }, -- Amígdala
	-- Change: Added +2 Tears
	[103] = { "103", "Equality!", "Al tener el mismo número de {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves:#↑ {{Tears}} Lágrimas +2#Convierte los recolectables en sus versiones dobles" }, -- Equality!
	-- Change: "2%" to "5%"
	[104] = { "104", "Hueso de los deseos", "5% de probabilidad de destruirse y generar un objeto al ser golpeado" }, -- Hueso de los deseos
	-- Change: "2%" to "5%"
	[105] = { "105", "Bolsa del almuerzo", "5% de probabilidad de destruirse y generar {{Collectible22}} Almuerzo al ser golpeado" }, -- Bolsa del almuerzo
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Mecha corta", "Las bombas colocadas explotan más rápido#Las bombas hacen un 15% mas de daño" }, -- Short Fuse
	-- Change: Added coin type based information
	[172] = { "172", "Moneda maldita", "Recoger una moneda te teletransporta a una habitación aleatoria#Puede teletransportarte a habitaciones secretas#El tipo de habitación dependerá de la calidad de moneda recogida" }, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Purple Heart (replace):
	[5] = {
		"{{ColorGold}}Triplica {{CR}}la probabilidad de encontrar enemigos campeones#{{ColorGold}}66{{CR}}% de probabilidad de que los enemigos campeones suelten recolectables#Los enemigos campeones sueltan el doble recolectables",
		"{{ColorGold}}Cuatriplica {{CR}}la probabilidad de encontrar enemigos campeones#{{ColorGold}}75{{CR}}% de probabilidad de que los enemigos campeones suelten recolectables#Los enemigos campeones sueltan el doble recolectables",
	},
	-- Callus (append):
	[14] = { "{{SacrificeRoom}} Reduce el daño de las espinas en la sala del sacrificio a medio corazón", "{{Collectible108}} Reduce la mayoria del daño recibido a medio corazón" },
	-- Mom's Toenail (find replace):
	[16] = { "pisoteará", "{{CR}}pisoteará {{ColorGold}}2 veces", "{{CR}}pisoteará {{ColorGold}}3 veces" },
	-- Paper Clip (find replace):
	[19] = { "cofres dorados", "{{CR}}cofres dorados {{ColorGold}}y candados", "{{CR}}cofres dorados, {{ColorGold}}candados y puertas cerradas" },
	-- Mysterious Paper (find replace):
	[21] = { "el efecto de", "{{ColorGold}}2{{CR}} de los siguientes efectos", "{{ColorGold}}2{{CR}} de los siguientes efectos" },
	-- Daemon's Tail (append):
	[22] = { "{{BlackHeart}} Las fogatas azules y moradas ahora dejarán caer corazones negros" },
	-- Broken Ankh (find replace):
	[28] = { 22, 33, 50 },
	-- Umbilical Cord (find replace):
	[33] = { "medio corazón rojo", "un corazón rojo", "un corazón y medio" },
	-- Child's Heart (find replace):
	[34] = { 10, 20, 50,  33, 66, 100 },
	-- Rusted Key (find replace):
	[36] = { 10, 20, 50,  33, 66, 100 },
	-- Match Stick (find replace):
	[41] = { 10, 20, 50,  33, 66, 100 },
	-- Cursed Skull (replace):
	[43] = {
		"Al recibir daño hasta quedar a medio corazón o menos, te teletransporta a una habitación {{ColorGold}}especial",
		"Al recibir daño hasta quedar a {{ColorGold}}un corazón {{CR}}o menos, te teletransporta a una habitación {{ColorGold}}especial",
	},
	-- Safety Cap (find replace):
	[44] = { 10, 20, 50,  33, 66, 100 },
	-- Ace of Spades (find replace):
	[45] = { 10, 20, 50,  33, 66, 100 },
	-- Counterfeit Penny (find replace):
	[52] = { "incrementar +1", "{{CR}}incrementar {{ColorGold}}+2", "{{CR}}incrementar {{ColorGold}}+3" },
	-- Tick (replace): added "{{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él con {{Trinket41}} La cerilla, {{Trinket135}} el Mechero o tragándolo",
		"{{HealingRed}} Cura {{ColorGold}}3{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
	},
	-- Isaac's Head (find replace):
	[54] = { "3.5 de daño", "tu daño", "1.5 veces tu daño" },
	-- Judas' Tongue (replace):
	[56] = {
		"{{DevilRoom}} Reduce los precios de {{ColorGold}}todos{{CR}} los pactos del Diablo a un contenedor de corazón",
		"{{DevilRoom}} Reduce los precios de {{ColorGold}}todos{{CR}} los pactos del Diablo a un contenedor de corazón#{{ColorGold}}Los pactos de espinas pagarán al primer intento"
	},
	-- ???'s Soul (find replace):
	[57] = { "Familiar que rebota", "{{CR}}Otorga {{ColorGold}}2 {{CR}}familiares que rebotan", "{{CR}}Otorga {{ColorGold}}3 {{CR}}familiares que rebotan" },
	-- Samson's Lock (find replace):
	[58] = { 6.66, 13, 25 },
	-- The Left Hand (append):
	[61] = {
		"{{RedChest}} Los Cofres Rojos contendrán recolectables extra",
		"{{RedChest}} Los Cofres Rojos contendrán recolectables extra#{{ColorGold}}Los Cofres Rojos no generarán Arañas Rojas",
	},
	-- Shiny Rock (replace):
	[62] = {
		"Las rocas marcadas, de trampilla {{ColorGold}}y entradas de salas secretas/super secretas {{CR}}parpadearán cada 10 segundos",
		"Las rocas marcadas, de trampilla {{ColorGold}}y entradas de salas secretas/super secretas {{CR}}parpadearán cada {{ColorGold}}5 {{CR}}segundos",
	},
	-- Safety Scissors (append):
	[63] = {
		"Reduce el radio de explosiones enemigas",
		"Reduce en gran medida el radio de explosiones enemigas",
	},
	-- Super Magnet (find replace):
	[68] = { "recolectables y enemigos", "{{CR}}recolectables, enemigos, {{ColorGold}}sacos y trinkets", "{{CR}}recolectables, enemigos, {{ColorGold}}sacos, trinkets y cofres" },
	-- Louse (find replace):
	[70] = { "una araña azul", "2{{CR}} arañas azules", "3{{CR}} arañas azules" },
	-- Bob's Bladder (apendice):
	[71] = { "Aumenta el tamaño del fluido", "Aumenta el tamaño y duración del fluido" },
	-- Poker Chip (append):
	[76] = { "{{Slotmachine}} Duplica las recompensas al apostar", "{{Slotmachine}} Triplica las recompensas al apostar" },
	-- Store Key (append):
	[83] = { "{{Shop}} Evita que las tiendas sean de baja calidad", "{{Shop}} Mejora las tiendas" },
	-- Rib of Greed (append):
	[84] = { "{{Coin}} Aumenta la probabilidad de duplicar todo tipo de monedas" },
	-- Karma (find replace):
	[85] = { "Suerte +1", "{{CR}}Suerte {{ColorGold}}+2", "{{CR}}Suerte {{ColorGold}}+3" },
	-- Mom's Locket (find replace):
	[87] = { "medio corazón", "un corazón", "un corazón y medio" },
	-- Meconium (find replace):
	[91] = { 33, 66, 100,  5, 7, 10 },
	-- Used Diaper (find replace):
	[93] = { "una mosca azul", "2 {{CR}}moscas azules", "3 {{CR}}moscas azules" },
	-- Fish Tail (append):
	[94] = { "20% de probabilidad de generar 3 moscas/arañas azules", "20% de probabilidad de generar 4 moscas/arañas azules" },
	-- Tonsil (find replace):
	[97] = { "2 familiares", "3{{CR}} familiares", "4{{CR}} familiares" },
	-- Nose Goblin (replace):
	[98] = {
		"{{ColorGold}}20{{CR}}% de probabilidad de disparar una lágrima de moco pegajosa#{{ColorGold}}75{{CR}}% de probabilidad de que sea teledirigida#{{Damage}} Los mocos infligen tu daño una vez cada segundo#Los mocos se pegan durante 10 segundos",
		"{{ColorGold}}30{{CR}}% de probabilidad de disparar una lágrima de moco pegajosa y {{ColorGold}}teledirigida#{{Damage}} Los mocos infligen tu daño una vez cada segundo#Los mocos se pegan durante 10 segundos",
	},
	-- Fragmented Card (append):
	[102] = { "{{SecretRoom}} Revela la ubicacion de una de las habitaciones secretas", "{{SecretRoom}} Revela la ubicacion de las habitaciones secretas" },
	-- Lost Cork
	[106] = { "Aumenta", "Aumenta{{CR}} en gran medida" },
	-- Crow Heart (append):
	[107] = {
		"{{AngelDevilChance}} 25% de probabilidad de no reducir la probabilidad de pactos al recibir daño",
		"{{AngelDevilChance}} 50% de probabilidad de no reducir la probabilidad de pactos al recibir daño",
	},
	-- Walnut (find replace):
	[108] = {
		"un {{UnknownHeart}} corazón, {{Coin}} moneda, {{Key}} llave y {{Trinket}} trinket aleatorios",
		"2{{CR}} {{UnknownHeart}} corazones, {{Coin}} monedas, {{Key}} llaves y {{Trinket}} trinkets aleatorios",
		"3{{CR}} {{UnknownHeart}} corazones, {{Coin}} monedas, {{Key}} llaves y {{Trinket}} trinkets aleatorios",
	},
	-- Duct Tape (append):
	[109] = {"Presionar rápidamente el botón para soltar cambia entre diferentes formaciones de familiares"},
	-- Silver Dollar (find replace):
	[110] = { "tiendas", "{{CR}}tiendas {{ColorGold}}mejoradas" },
	-- Bloody Crown (append):
	[111] = { "Estas tendrán 2 objetos para elegir" },
	-- Pay To Win (append):
	[112] = { "{{RestockMachine}} Reduce la probabilidad de que las máquinas de reabastecimiento exploten" },
	-- Locust of War (find replace):
	[113] = { "una langosta explosiva", "2{{CR}} langostas explosivas", "3{{CR}} langostas explosivas" },
	-- Locust of Pestilence (find replace):
	[114] = { "una langosta venenosa", "2{{CR}} langostas venenosas", "3{{CR}} langostas venenosas" },
	-- Locust of Famine (find replace):
	[115] = { "una langosta que ralentiza", "2{{CR}} langostas que ralentizan", "3{{CR}} langostas que ralentizan" },
	-- Locust of Death (find replace):
	[116] = { "una langosta", "2{{CR}} langostas", "3{{CR}} langostas" },
	-- Locust of Conquest (full replace):
	[117] = {
		"{{CR}}Genera {{ColorGold}}2-5{{CR}} langostas al entrar en una habitación hostil#Las langostas infligen el doble de tu daño",
		"{{CR}}Genera {{ColorGold}}3-7{{CR}} langostas al entrar en una habitación hostil#Las langostas infligen el doble de tu daño",
	},
	-- Stem Cell (find replace):
	[119] = { "la mitad de", "todos" },
	-- Hairpin (find replace):
	[120] = { "recarga completamente", "sobrecarga" },
	-- Wooden Cross (find replace):
	[121] = { "un escudo sagrado", "2{{CR}} escudos sagrados" },
	-- Filigree Feather (append):
	[123] = { "Los Ángeles también soltarán medio corazón de alma", "Los Ángeles también soltarán un corazón de alma" },
	-- Door Stop (append):
	[124] = { "También mantiene abiertas las puertas de Boss Rush", "También mantiene abiertas las puertas de Boss Rush y salas de desafío" },
	-- Rotten Penny (find replace):
	[126] = { "una mosca azul", "2{{CR}} moscas azules", "3{{CR}} moscas azules" },
	-- Baby-Bender (append):
	[127] = { "También les otorga el efecto del {{Trinket144}} Gusano de cerebro", "También les otorga los efectos del {{Trinket144}} Gusano de cerebro y el {{Trinket65}} Gusano Estirado" },
	-- Blessed Penny (find replace):
	[131] = { 17, 25, 30 },
	-- Short Fuse (find replace):
	[133] = { 15, 30, 50 },
	-- Gigante Bean (append)
	[134] = { "Aumenta el empuje de los pedos", "Aumenta el empuje de los pedos#{{Confusion}} {{ColorGold}}Los pedos confunden a los enemigos durante 3 segundos" },
	-- Broken Padlock (find replace):
	[136] = { "puertas, candados y cofres dorados", "{{CR}}puertas, candados. cofres dorados, {{ColorGold}}Arcades y salas de desafío", "{{CR}}puertas, candados. cofres dorados chests, {{ColorGold}}Arcades, salas de jefe y de desafío" },
	-- 'M (append):
	[138] = { "{{Battery}} 10% de probabilidad de recargar el objeto cambiado por completo", "{{Battery}} 20% de probabilidad de recargar el objeto cambiado por completo" },
	-- Apple of Sodom (find replace):
	[140] = { "corazones rojos", "cualquier tipo {{CR}}de corazones" },
	-- Brain Worm (append):
	[144] = { "25% de probabilidad de disparar lágrimas perforantes", "50% de probabilidad de disparar lágrimas perforantes" },
	-- Devil’s Crown (append):
	[146] = { "{{Trinket174}} 25% de probabilidad de mejorar las habitaciones del tesoro rojas", "{{Trinket174}} 33% de probabilidad de mejorar las habitaciones del tesoro rojas" },
	-- Charged Penny (find replace):
	[147] = { "una carga", "2{{CR}} cargas", "3{{CR}} cargas" },
	-- Friendship Necklace (append):
	[148] = { "Aumenta la velocidad de los familiares orbitales", "Aumenta enormemente la velocidad de los familiares orbitales" },
	-- Panic Button (append):
	[149] = { "10% de probabilidad de usar el objeto activo gratis", "20% de probabilidad de usar el objeto activo gratis" },
	-- Blue Key (append):
	[150] = { "Duplica las recompensas al completar habitaciones azules", "Triplica las recompensas al completar habitaciones azules" },
	-- Flat File (append):
	[151] = { "Tambien afecta a Jefes, Grudges, y Bolas con Cadena" },
	-- Telescope Lens (full replace):
	[152] = {
		"{{PlanetariumChance}} +18{{CR}}% de probabilidad de Planetario#+15% de probabilidad adicional si aún no has entrado a un Planetario#Los planetarios pueden generarse en el Útero y el Cadáver",
		"{{PlanetariumChance}} +33{{CR}}% de probabilidad de Planetario#+15% de probabilidad adicional si aún no has entrado a un Planetario#Los planetarios pueden generarse en el Útero, el Cadáver, {{ColorGold}}Sheol y la Catedral",
	},
	-- Holy Crown (full replace):
	[155] = {
		"{{CR}}Genera una {{TreasureRoom}} Sala del tesoro y una {{Shop}} Tienda {{ColorGold}}mejorada {{CR}}en la Catedral#{{TreasureRoom}} {{ColorGold}}Las Salas del tesoro en la Catedral tendrán 2 Objetos para elegir",
		"{{CR}}Genera una {{TreasureRoom}} Sala del tesoro y una {{Shop}} Tienda {{ColorGold}}mejorada {{CR}}en la Catedral#{{TreasureRoom}} {{ColorGold}}Las Salas del tesoro en la Catedral tendrán 2 Objetos para elegir#{{ColorGold}}Revela la ubicación de la Sala del tesoro y la Tienda en la Catedral",
	},
	-- Torn Card (find replace):
	[157] = { 15, 10, 5 },
	-- Gilded Key (full replace copying the entire original description, because the Golden version doesn't give a key on pickup):
	[159] = {
		"{{GoldenChest}} Reemplaza todos los cofres (excepto Viejos y Mega) con Cofres Dorados#{{GoldenChest}} Los Cofres Dorados pueden tener cartas, pildoras o trinkets extra#{{GoldenChest}} {{ColorGold}}+10% de probabilidad de generar un Cofre al limpiar una habitación",
		"{{Key}} +1 Llave al recoger#{{GoldenChest}} Reemplaza todos los cofres (excepto Viejos y Mega) con Cofres Dorados#{{GoldenChest}} Los Cofres Dorados pueden tener cartas, pildoras o trinkets extra#{{GoldenChest}} {{ColorGold}}+10% de probabilidad de generar un Cofre al limpiar una habitación",
		"{{GoldenChest}} Reemplaza todos los cofres (excepto Viejos y Mega) con Cofres Dorados#{{GoldenChest}} Los Cofres Dorados pueden tener cartas, pildoras o trinkets extra#{{GoldenChest}} {{ColorGold}}+20% de probabilidad de generar un Cofre al limpiar una habitación"
	},
	-- Wicked Crown (full replace):
	[161] = {
		"{{CR}}Genera una {{TreasureRoom}} Sala del tesoro y una {{Shop}} Shop {{ColorGold}}mejorada {{CR}}en Sheol#{{TreasureRoom}} {{ColorGold}}Las Salas del tesoro en Sheol tendrán 2 Objetos para elegir",
		"{{CR}}Genera una {{TreasureRoom}} Sala del tesoro y una {{Shop}} Shop {{ColorGold}}mejorada {{CR}}en Sheol#{{TreasureRoom}} {{ColorGold}}Las Salas del tesoro en Sheol tendrán 2 Objetos para elegir#{{ColorGold}}Revela la ubicación de la Sala del tesoro y la Tienda en Sheol",
	},
	-- Nuh Uh! (append):
	[165] = { "+10% de probabilidad de encontrar recolectables dobles", "+20% de probabilidad de encontrar recolectables dobles" },
	-- Keeper’s Bargain (full replace):
	[171] = {
		"{{DevilRoom}} 100{{CR}}% chance for devil deals to cost coins instead of hearts",
		"{{DevilRoom}} 100{{CR}}% chance for devil deals to cost coins instead of hearts#{{ColorGold}}Increases chance of Devil deals being on sale",
	},
	-- Cursed Penny (append):
	[172] = { "Aumenta la probabilidad de ser teletransportado a una habitacion especial" },
	-- Your Soul (append):
	[173] = { "10% de probabilidad de no destruir el trinket", "20% de probabilidad de no destruir el trinket" },
	-- Strange Key (full replace):
	[175] = {
		"Abre el pasaje hacia \"???\" (Vientre azul) sin importar el tiempo#Using {{Collectible297}} La Caja de Pandora consume la llave y genera {{ColorGold}}8 {{CR}}objetos de grupos aleatorios#{{ColorGold}}Permite abrir todas las puertas y cofres en el \"Vientre azul\" gratis",
		"Abre el pasaje hacia \"???\" (Vientre azul) sin importar el tiempo#Using {{Collectible297}} La Caja de Pandora consume la llave y genera {{ColorGold}}10 {{CR}}objetos de grupos aleatorios#{{ColorGold}}Permite abrir todas las puertas y cofres en el \"Vientre azul\" gratis",
	},
	-- Temporary Tattoo (append):
	[177] = { "Aumenta permanentemente una estadística aleatoria al completar una Sala del Desafio", "Aumenta permanentemente 2 estadísticas aleatorias al completar una Sala del Desafio" },
	-- RC Remote (append):
	[179] = { "Los familiares infligen 2 de daño por contacto por tick", "Los familiares infligen 5 de daño por contacto por tick" },
	-- Expansion Pack (full replace):
	[181] = {
		"Tu objeto activo obtendrá los efectos aleatorios de {{ColorGold}}2 {{CR}}objetos activos adicionales de 1-2 cargas",
		"Tu objeto activo obtendrá los efectos aleatorios de {{ColorGold}}2 {{CR}}objetos activos adicionales de 1-2 cargas#{{ColorGold}}También activa el efecto aleatorio de un objeto activo de 3 cargas",
	},
	-- Beth’s Essence (append):
	[182] = { "50% de probabilidad de que los fuegos fatuos de la Sala del Ángel sean especiales#{{ColorGold}}Los Mendigos generarán fuegos fatuos especiales", "100% de probabilidad de que los fuegos fatuos de la Sala del Ángel sean especiales#{{ColorGold}}Los Mendigos generarán fuegos fatuos especiales" },
	-- Adoption Papers (append):
	[184] = { "Los familiares siempre estarán en descuento", "Los familiares siempre estarán en descuento#{{Card92}} {{ColorGold}}Las tiendas podrán vender el \"Alma de Lilith\"" },
	-- Sigil of Baphomet (find replace):
	[189] = { "un segundo", "1.5 {{CR}}segundos", "2 {{CR}}segundos" },
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

----- Golden Trinkets Data -----

local goldenTrinketData = {
	[5] = {fullReplace = true}, -- Purple Heart
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
	-- Change: Added 1% chance to spawn a Crane Game
	[11] = { "11", "X - La Rueda de la Fortuna", "Genera una {{Slotmachine}} Máquina Tragaperras#{{FortuneTeller}} 24% de probabilidad de generar una Máquina de la Fortuna#{{CraneGame}} 1% de probabilidad de generar un Juego de la Grua" }, -- X - Wheel of Fortune
	-- Change: Added stone enemies and shields
	[32] = { "32", "Hagalaz", "Destruye todas las rocas y enemigos de roca en la habitación actual" }, -- Hagalaz
	-- Change: Complete rewrite
	[38] = { "38", "Berkano", "{{Collectible706}} Invoca 3 langostas del Abismo durante la habitación" }, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = { " una ", " 2 ", "Máquina", "{{CR}}Maquinas","generar una", " {{CR}}que una sea una", "generar un", "{{CR}}que una sea un" }, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	-- Change: Teleports to a special room instead of a random room
	[20] = { "19", "Telepíldoras", "Te teletransporta a una habitación especial" }, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnesia", "{{CurseLost}} Oculta el mapa del piso actual#{{Pill}} Olvida las pildoras previamente identificadas" }, -- Amnesia
	-- Change: Added full heal information
	[29] = { "28", "¡Percs!", "{{HealingRed}} Salud al maximo#{{Timer}} Reduce todo daño recibido en la habitación actual a medio corazón" }, -- Percs!
	-- Change: Added broken heart
	[30] = { "29", "¡Adicto!", "{{BrokenHeart}} +1 Corazón roto#{{Timer}} Aumenta todo daño recibido en la habitación actual a un corazón" }, -- Addicted!
	-- Change: Added additional curses information
	[32] = { "31", "¿¿??", "{{CurseMaze}} Maldición del Laberinto durante el piso actual#Usarlo multiples veces otorga maldiciones adicionales" }, -- ???
	-- Change: affects whole floor
	[42] = { "41", "Tengo mucho sueño...", "{{Slow}} Te ralentiza y a todos los enemigos durante el piso actual" }, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = { "42", "¡¡TENGO MUCHA ENERGÍA!!", "Te acelera y a todos los enemigos durante el piso actual" }, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = { "43", "¡Gulp!", "{{Trinket}} Consume el trinket actual y otorga sus efectos {{ColorGold}}mejorados{{CR}} de forma permanente" }, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "Invoca 2 ataques aéreos", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "Genera 2 flamas", -- The Candle
	-- Added info regarding doubled attack
	[289] = "Genera 2 flamas", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {15, 23}, -- Mega Blast
	-- Added info regarding doubled familiar
	[728] = "Genera 2 familiares demoniacos", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Los corazones etereos solo otorgan la mitad de las cargas que un contenedor de corazón regular", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} Cubo de carne","{{Collectible207}} Bola de vendas"}, -- Potato Peeler with Ball of Bandages
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Genera 16 langostas de diferentes colores y efectos", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "Nigromante" -- Add Necromancer transformation


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
