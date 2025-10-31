local languageCode = "spa"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "Genera una charco de limonada#La limonada inflige 24 de daño cada segundo#La limonada persiste hasta abandonar la habitación", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "Invoca un pajaro que ataca a los enemigos tras recibir daño#Persiste entre habitaciones al tener medio corazón de salud", -- Dead Bird
	-- Full old Desc: "Invoca un pajaro que ataca a los enemigos tras recibir daño#El pajaro inflige 4.3 de daño por contacto cada segundo#Persiste entre habitaciones al tener medio corazón de salud"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 141] = "{{Trinket}} Genera un trinket de moneda aleatorio", -- Pageant Boy
	-- Full old Desc: "{{Coin}} Genera 7 monedas aleatorias#{{Trinket}} Genera un trinket de moneda aleatorio"
	-- English: "Spawns a random penny trinket"

	[C_ID .. 351] = "Petrifica e inflige 100 de daño a los enemigos de la habitación actual#{{Poison}} Envenena e inflige 5 de daño a los enemigos cercanos#Puede abrir cuartos secretos y destruir rocas", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "Caminar en un círculo dibuja un símbolo de pentagrama en el suelo#El pentagrama inflige 130 de daño por contacto y dura 4 segundos#Aumenta el tamaño de las explosiones#Las fogatas explotan al extinguirse", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "Bloquea proyectiles enemigos#{{Tears}} Tras bloquear 10 proyectiles, se rompe y aumenta tus lágrimas durante el piso actual", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "Disparar durante 4 segundos genera una nube de pedo#La nube aumentará su tamaño durante 10 segundos#La nube inflige menos daño al ser más grande#Puede ser movida disparandole", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "Rebota por la habitación#Se detiene cuando disparas#Al detenerse, bloquea proyectiles y dispara ráfagas de lágrimas en un radio", -- Hushy
	-- Full old Desc: "Rebota por la habitación#Inflige 30 de daño por contacto cada segundo#Se detiene cuando disparas#Al detenerse, bloquea proyectiles y dispara ráfagas de lágrimas en un radio"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 475] = "{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}#10 a 12 segundos contra Delirium y Mother", -- Plan C
	-- Full old Desc: "Inflige 9.999.999 de daño a todos los enemigos#{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}#10 a 12 segundos contra Delirium y Mother"
	-- English: "{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother"

	[C_ID .. 481] = "{{Blank}} Corrompe la musica y los graficos en la habitacion", -- Dataminer
	-- Full old Desc: "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}} Efecto de lágrima aleatorio para la habitación actual#Corrompe los objetos en pedestales de la habitación#{{Blank}} Corrompe la musica y los graficos en la habitacion"
	-- English: "{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Cambia tu personaje por otro de forma aleatoria#50% de probabilidad de eliminar el último objeto pasivo recogido", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "Genera una version Delirium amistosa de un Jefe#Se mantiene entre Habitaciones#{{Warning}} Solo un jefe puede existir a la vez#La salud del jefe se deteriora con el tiempo", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "{{Timer}} Recibir daño otorga durante la habitacion:#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional#Libera un anillo de 10 lágrimas a tu alrededor#Las lágrimas dejan un charco de fluido", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "Embiste al pulsar dos veces la tecla de movimiento#Al embestir: te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño +8#{{Timer}} 3 segundos de recarga#{{Burning}} Genera un aro de fuego al impacto", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "Inmunidad a efectos de {{Burning}} Quemadura, {{Confusion}} Confusión, {{Fear}} Miedo, {{Slow}} Telarañas y {{Poison}} Veneno#Otorga un segundo de inmunidad a los fluidos", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} Suerte +2#Inmunidad a efectos de {{Burning}} Quemadura, {{Confusion}} Confusión, {{Fear}} Miedo, {{Slow}} Telarañas y {{Poison}} Veneno#Otorga un segundo de inmunidad a los fluidos"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "Genera 2 portales al inicio de cada planta#Los portales desaparecen al abandonar la habitación#{{Blank}} {{ColorRed}}Rojo: {{CR}}{{BossRoom}} Sala del jefe#{{Blank}} {{ColorYellow}}Amarillo: {{CR}}{{TreasureRoom}} Sala del tesoro#{{Blank}} {{ColorBlue}}Azul: {{CR}}{{SecretRoom}} Habitación secreta#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Tienda", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "Disparar 2 veces en una dirección lanza el portal#Inflige daño por contacto al ser lanzado#Consume los recolectables a su paso#Cada uno aumentará su tamaño, daño, y generará una Mosca Azul#Consumir 2-3 recolectables genera un portal a una habitacion especial y el familiar desaparece por el resto del nivel#El contenido de la habitacion persiste por el resto de la partida", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#Genera un fuego adicional con cada uso, hasta llegar a 12#El primer uso genera 2 fuegos", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "Consume los objetos en pedestales de la habitacion y genera un familiar langosta por objeto#Algunos objetos generan una langosta especial al ser consumidos#{{Damage}} Las langostas infligen tu daño multiplicado por la calidad del objeto consumido:#{{Quality0}} - x0.5#{{Quality1}} - x0.75#{{Quality2}} - x1#{{Quality3}} - x1.5#{{Quality4}} - x2", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "Duplica la probabilidad de encontrar enemigos campeones#50% de probabilidad de que los enemigos campeones suelten recolectables#Los enemigos campeones sueltan el doble recolectables", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "{{MomBossSmall}} Soltar el trinket en una habitación hostil hará que el Pie de Mamá pisotée en su ubicación", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "{{Player10}} Reaparecerás como \"El Perdido\" tras morir#{{SuperSecretRoom}} 33% de probabilidad de revelar Habitaciones Super Secretas al cambiar de piso", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "{{HealingRed}} Cura 1 corazón al entrar a una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla, {{Trinket135}} el Mechero o tragándolo", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "Genera una araña azul al completar habitaciones", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "Al abrir un cofre:#↑ 50% de probabilidad de conseguir más recolectables#↓ 50% de probabilidad de generar una mosca roja#Aumenta la probabilidad de obtener recompensas de las máquinas#Si el Cofre contiene un objeto, este será de calidad 3 o superior#Los Cofres ocasionalmente pueden tener objetos fuera del \"Grupo de objetos\" del Cofre Dorado", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "{{DonationMachine}} Al usar una Máquina de Donación, 33% de probabilidad de:#{{HealingRed}} Curar 1 corazón rojo {{ColorSilver}}(40%)#{{Coin}} Generar una moneda {{ColorSilver}}(40%)#{{Luck}} Suerte +1 {{ColorSilver}}(15%)#{{Beggar}} Generar un mendigo {{ColorSilver}}(5%)#Tambien afecta a las donaciones de Mendigos y Máquinas de Reabastecimiento", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "Mantiene a los familiares cerca del jugador#{{Damage}} Aumenta ligeramente el daño de los familiares", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "33% de probabilidad por habitación de volver amistosas a todas las moscas enemigas#Genera una mosca azul al entrar a una nueva sala", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "Al tener el mismo número de {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves:#↑ {{Tears}} Lágrimas +2#Convierte los recolectables en sus versiones dobles", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "Las bombas colocadas explotan más rápido#Las bombas hacen un 15% mas de daño", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "<MISSING>", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "Recoger una moneda te teletransporta a una habitación aleatoria#{{SecretRoom}} Puede teletransportarte a habitaciones secretas#El tipo de habitación dependerá de la calidad de moneda recogida", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "Genera una {{Slotmachine}} Máquina Tragaperras#{{FortuneTeller}} 24% de probabilidad de generar una Máquina de la Fortuna#{{CraneGame}} 1% de probabilidad de generar un Juego de la Grua", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "Destruye todas las rocas y enemigos de roca en la habitación actual", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "{{Collectible706}} Invoca 3 langostas del Abismo durante la habitación", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "Te teletransporta a una habitación especial", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "{{CurseLost}} Oculta el mapa del piso actual#{{Pill}} Olvida las pildoras previamente identificadas", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Maldición del Laberinto durante el piso actual#Usarlo multiples veces otorga maldiciones adicionales", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Te ralentiza y a todos los enemigos durante el piso actual", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "Te acelera y a todos los enemigos durante el piso actual", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "{{Trinket}} Consume el trinket actual y otorga sus efectos {{ColorGold}}mejorados{{CR}} de forma permanente", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
