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
	[5] = { "5", "Corazón Purpura", "Duplica la probabilidad de encontrar enemigos campeones#Los enemigos campeones sueltan mas recolectables" }, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "Cuenta de rosario", "{{AngelChance}} 50% mayor probabilidad de encontrar Salas de Ángel#{{Collectible33}} Mayor probabilidad de encontrar La Bíblia en {{Shop}} Tiendas y {{Library}} Bibliotecas#Reemplaza la {{DevilRoom}} Sala del Diablo por una {{AngelRoom}} Sala del Ángel" }, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = { "16", "Uña del pie de Mamá", "El Pie de Mamá pisoteará un lugar aleatorio de la habitación cada 60 segundos#Soltar el trinket en una habitación hostil hará que el Pie de Mamá pisotée en su ubicación" }, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "Cartel de Desaparecido", "{{Player10}} Reaparecerás como \"El Perdido\" tras morir#{{SuperSecretRoom}} 33%  de probabilidad de revelar Super Secret Room on new floor" }, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "La garrapata", "{{HealingRed}} Cura 1 corazón al entrar a una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla, {{Trinket135}} el Mechero o tragándolo" }, -- La garrapata
	-- Change: added +0.5 damage
	[66] = { "66", "Gusano Perezoso", "↑ {{Damage}} Daño +0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.5" }, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = { "70", "Piojo", "Genera una araña azul al completar habitaciones" }, -- Louse
	-- Change: Added more loot information
	[76] = { "76", "Ficha de póker", "Al abrir un cofre:#↑ 50% de probabilidad de conseguir más recolectables#↓ 50% de probabilidad de generar una mosca roja#Aumenta la probabilidad de obtener recompensas de las máquinas#Si el Cofre contiene un objeto, este será de calidad 3 o superior#Los Cofres ocasionalmente pueden tener objetos fuera de la golden chest item pool" }, -- Poker Chip
	-- Change: Added additional effects
	[85] = { "85", "Karma", "{{DonationMachine}} Al usar una Máquina de Donación, 33% de probabilidad de:#{{HealingRed}} Curar 1 corazón (40%)#{{Coin}} Generar 1 moneda (40%)#{{Luck}} Suerte +1 (15%)#{{Beggar}} Generar un Mendigo (5%)#Tambien afecta a las donaciones de Mendigos y Máquinas de Reabastecimiento" }, -- Karma
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
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él con {{Trinket41}} La cerilla, {{Trinket135}} el Mechero o tragándolo",
		"{{HealingRed}} Cura {{ColorGold}}3{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

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
