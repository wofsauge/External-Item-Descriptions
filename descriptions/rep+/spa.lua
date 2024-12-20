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
	[706] = {"706", "Abismo", "Consume todo objeto dentro de la habitacion y genera una mosca familiar por objeto#Algunos objetos generan una mosca especial al ser consumidos#{{Damage}} Las moscas hacen daño igual a Isaac multiplicado por la calidad del objeto consumido:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abismo	
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


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
