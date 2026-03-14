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
	[56] = { "56", "Accidente de Limón", "Genera una charco de limonada#La limonada inflige 24 de daño cada segundo#La limonada persiste hasta abandonar la habitacion" }, -- Accidente de Limón
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Ave Muerta", "Invoca un pajaro que ataca a los enemigos tras recibir daño#El pajaro inflige 4.3 de daño por contacto cada segundo#Persiste entre habitaciones al tener medio corazón de salud" }, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Saco de boxeo", "Señuelo que deambula por la habitación#Los enemigos lo atacarán en vez de al jugador si está cerca#Bloquea proyectiles enemigos" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "La técnica de Ludovico", "↑ {{Shotspeed}} Vel. de lágrimas +0.2#Reemplaza tus lágrimas con una lágrima gigante controlable" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Frijol", "Petrifica e inflige 100 de daño a los enemigos de la habitación actual#{{Poison}} Envenena e inflige 5 de daño a los enemigos cercanos#Puede abrir cuartos secretos y destruir rocas" }, -- Mega Frijol
	-- Change: Complete rewrite
	[436] = { "436", "¡Leche!", "Bloquea proyectiles enemigos#{{Tears}} Tras bloquear 10 proyectiles, se rompe y aumenta tus lagrimas durante el piso actual" }, -- ¡Leche!
	-- Change: Complete rewrite
	[447] = { "447", "Frijol Persistente", "Disparar durante 4 segundos genera una nube de pedo#La nube aumentará su tamaño durante 10 segundos#La nube inflige menos daño al ser más grande#Puede ser movida disparandole" }, -- Frijol Persistente
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Shhh", "Rebota por la habitación#Inflige 30 de daño por contacto cada segundo#Se detiene cuando disparas#Al detenerse, bloquea proyectiles y dispara ráfagas de lágrimas en un radio" }, -- Shhh
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Dataminer", "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}} Efecto de lágrima aleatorio para la habitación actual#Corrompe los objetos en pedestales de la habitación#{{Blank}} Corrompe la musica y los graficos en la habitacion" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50% 
	[482] = { "482", "Control Remoto", "Cambia tu personaje por otro de forma aleatoria#50% de probabilidad de eliminar el último objeto pasivo recogido" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Delirious", "Genera una version Delirium amistosa de un Jefe#Se mantiene entre Habitaciones#{{Warning}} Solo un jefe puede existir a la vez#La salud del jefe se deteriora con el tiempo" }, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Duele..", "{{Timer}} Recibir daño otorga durante la habitacion:#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional#Libera un anillo de 10 lágrimas a tu alrededor#Las lagrimas dejan un charco de fluido" }, -- ¡Eso duele!
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Embiste al pulsar dos veces la tecla de movimiento#Al embestir: te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño +8#{{Timer}} 3 segundos de recarga#{{Burning}} Genera un aro de fuego al impacto" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Júpiter", "↑ {{EmptyHeart}} +2 Contenedores de corazón vacíos#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura 2 corazones#{{Speed}} +0.5 de Velocidad adicional al quedarte quieto#{{Poison}} Libera nubes de veneno al moverse#{{Poison}} Inmunidad al Veneno" }, -- Júpiter
	-- Change: Complete rewrite
	[632] = { "632", "Nazar", "↑ {{Luck}} Suerte +2#Inmunidad a efectos de {{Burning}} Quemadura, {{Confusion}} Confusión, {{Fear}} Miedo, {{Slow}} Telarañas y {{Poison}} Veneno#Otorga un segundo de inmunidad a los fluidos" }, -- Amuleto Maldito
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
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "La garrapata", "{{HealingRed}} Cura 1 corazón al entrar a una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla, {{Trinket135}} el Mechero o tragándolo" }, -- La garrapata
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Amígdala", "Recibir daño 6-12 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares a la vez" }, -- Amígdala
	-- Change: "2%" to "5%"
	[104] = { "104", "Hueso de los deseos", "5% de probabilidad de destruirse y generar un objeto al ser golpeado" }, -- Hueso de los deseos
	-- Change: "2%" to "5%"
	[105] = { "105", "Bolsa del almuerzo", "5% de probabilidad de destruirse y generar {{Collectible22}} Almuerzo al ser golpeado" }, -- Bolsa del almuerzo
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Fusible corto", "Las bombas colocadas explotan más rápido#Las bombas hacen un 15% mas de daño" }, -- Fusible corto
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
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnesia", "{{CurseLost}} Oculta el mapa del piso actual#{{Pill}} Olvida las pildoras previamente identificadas" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Los corazones etereos solo otorgan la mitad de las cargas que un contenedor de corazón regular", -- Sharp Plug + Tainted Magdalene
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

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
