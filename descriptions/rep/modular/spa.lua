---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} Tocar enemigos los envenena", -- The Virus
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.2#{{Poison}} Tocar enemigos los envenena#Otorga 48 de daño por contacto cada segundo"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Throwable}} Cabeza explosiva lanzable#{{Poison}} Genera una nube de veneno al explotar#Inflige tu daño + 185", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Más probabilidad de ganar al apostar#Aumenta las probabilidades de generar recompensas tras limpiar una habitación#Cambia las píldoras malas por buenas", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} Suerte +1#Más probabilidad de ganar al apostar#Aumenta las probabilidades de generar recompensas tras limpiar una habitación#Cambia las píldoras malas por buenas"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} Las bombas hacen 10 veces tu daño#{{Damage}} Si esto resulta en +60 de daño, infligirán tu daño x5 + 30", -- Dr. Fetus
	-- Full old Desc: "¡Lágrimas bomba!#↓ {{Tears}} Lágrimas x0.4%#{{Damage}} Las bombas hacen 10 veces tu daño#{{Damage}} Si esto resulta en +60 de daño, infligirán tu daño x5 + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Atrae a los recolectables cercanos hacia el jugador#Abre cofres a distancia, ignorando el daño de los cofres de pinchos", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Permite cargar las lágrimas#↑ {{Damage}} El daño aumenta con el tiempo de carga hasta llegar al 400%", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "Reemplaza al jefe del piso por un jinete al usarlo", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 corazón de alma#↑ {{AngelDevilChance}} +17.5% de probabilidad de generar salas de Ángel/Diablo al tenerlo#Reemplaza al jefe del piso por un jinete al usarlo"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Genera una trampilla hacia el siguiente piso#{{LadderRoom}} Genera una trampilla a una mazmorra al usarse sobre la decoración del suelo", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Revela el tipo de las habitaciónes adyacentes#{{SecretRoom}} Revela las habitaciónes secretas y súper secretas#Evita el daño de projectiles que caigan desde arriba", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "{{Chargeable}} Reemplaza tus lágrimas por un cuchillo lanzable#{{Damage}} Al tenerlo en la mano inflige 2 veces tu daño, hasta 6 veces con 1/3 de carga#Cargar más el ataque sólo aumentará el alcance#El daño vuelve al doble al regresar", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Genera un familiar aleatorio durante el piso actual", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} Daño +1.2 durante la sala#{{Warning}} Inflige 1 corazón de daño al usarse#Tras el primer uso en la sala, sólo removerá medio corazón#{{Heart}} Remueve primero los corazones rojos", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Otorga inmunidad al veneno", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Poison}} Tus bombas generan una nube de veneno#{{Poison}} Otorga inmunidad al veneno"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} +1 Corazón de alma al recibir daño teniendo medio corazón#Solo puede activarse una vez por habitación#{{Warning}} No se activa con las {{DonationMachine}} máquinas de donación", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Rompe las rocas y daña a los enemigos al contacto#Golpear con el hacha reduce sus cargas#Se recarga al avanzar al siguiente piso", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "Lágrimas explosivas#{{Poison}} Lágrimas venenosas", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} Daño +40#↓ {{Tears}} Lágrimas x0.33#↓ {{Range}} Alcance x0.8#↓ {{Shotspeed}} Vel. de lágrimas x0.8#Lágrimas explosivas#{{Poison}} Lágrimas venenosas"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "Remplaza tu ojo derecho con un láser continuo#{{Damage}} El láser inflige 2 veces tu daño cada segundo", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} Lágrimas x0.67#Remplaza tu ojo derecho con un láser continuo#{{Damage}} El láser inflige 2 veces tu daño cada segundo"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Eliminar enemigos con él genera arañas azules", -- Spider Butt
	-- Full old Desc: "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Inflige 10 de daño a todos los enemigos#Eliminar enemigos con él genera arañas azules"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} Lanzable#Deja una piscina de fluido donde se haya roto#Petrifica a los enemigos", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Sueltas pedos en secuencia al recibir daño#{{Poison}} Los pedos dejan nubes venenosas y reflejan proyectiles", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} Remueve primero los corazones rojos", -- Blood Rights
	-- Full old Desc: "Inflige 40 de daño a todos los enemigos#{{Warning}} Te inflige 1 corazón de daño al usarlo#Tras el primer uso en la sala, sólo removerá medio corazón#{{Heart}} Remueve primero los corazones rojos"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "50% de probabilidad de remplazar los recolectables por sus versiones dobles", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Carga el objeto activo a cambio de medio corazón por carga faltante#Solo funciona si el objeto activo no tiene cargas#{{Heart}} Remueve primero los corazones rojos", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} Lágrimas +1#Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Otorga inmunidad a las explosiones y al fuego#{{HealingRed}} Ser golpeado por explosiones cura medio corazón", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombas#Otorga inmunidad a las explosiones y al fuego#{{HealingRed}} Ser golpeado por explosiones cura medio corazón"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "Las lágrimas se dividen en 4 al impactar#Las lágrimas partidas infligen la mitad de daño", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.5#↓ {{Range}} Alcance x0.8#Las lágrimas se dividen en 4 al impactar#Las lágrimas partidas infligen la mitad de daño"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} 8% de probabilidad de generar un corazón de alma al recibir daño#{{Luck}} 50% de probabilidad con 22 de suerte#{{HalfHeart}} Probabilidad de que los enemigos dejen caer medio corazón rojo al morir", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15% de probabilidad de disparar lágrimas que asustan", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.5#{{BlackHeart}} Convierte los contenedores de corazón en corazones negros#↑ {{BlackHeart}} +2 corazones negros#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "{{Slow}} Ralentiza un 80% a los enemigos de forma permanente", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.3#{{Slow}} Ralentiza un 80% a los enemigos de forma permanente"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Duplica el daño de las moscas y arañas azules#Aumenta el daño de las moscas y arañas familiares", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} Otorga inmunidad al fuego (excepto proyectiles)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Burning}} Tus bombas infligen daño por contacto#{{Burning}} Tus bombas dejan una llama al explotar#{{Burning}} Otorga inmunidad al fuego (excepto proyectiles)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida#Las lágrimas infligen tu daño x3 a quemarropa", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} Daño +0.5#↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida#Las lágrimas infligen tu daño x3 a quemarropa"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala#{{Collectible35}} Los efectos estilo Necronomicon y los corazones negros infligen el doble de daño", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 corazón negro#Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala#{{Collectible35}} Los efectos estilo Necronomicon y los corazones negros infligen el doble de daño"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Copia el efecto de la runa o piedra del alma que tengas sin consumirla", -- Clear Rune
	-- Full old Desc: "{{Rune}} Genera 1 runa aleatoria al tomarlo#{{Rune}} Copia el efecto de la runa o piedra del alma que tengas sin consumirla"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Te vuelves invulnerable#{{Chargeable}} El familiar carga al disparar, al soltar el botón de disparo, el corazón: #Disparará 8 lágrimas#Soltará Creep rojo#Empujará enemigos y proyectiles#{{Warning}} Recibirás daño si golpéan al familiar corazón", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Recoge los corazones rojos cercanos#Tras recoger 1.5 corazones rojos, genera:#{{SoulHeart}}/{{BlackHeart}} 1 Corazón de alma o negro#{{Pill}} Una píldora#{{Card}} Una Carta#{{Rune}} Una runa#o una araña", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Invoca arañas azules en habitaciones hostiles de forma aleatoria#{{Charm}} Encanta a los enemigos al contacto", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Duplica 1 recolectable aleatorio en la sala#Cambia tus objetos pasivos y tus estadisticas#Cambia los objetos en pedestales, los recolectables y las rocas en la sala#Reinicia la sala, regenera y degrada a los enemigos de la sala", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Degrada a todos los enemigos en la sala#Por ejemplo, las moscas rojas se convierten en moscas negras", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Copia el efecto de la carta que tengas sin consumirla", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "{{Timer}} Otorga uno de los siguientes efectos para el piso actual:", -- Book of Secrets
	-- Full old Desc: "{{Timer}} Otorga uno de los siguientes efectos para el piso actual:#{{Collectible54}} Mapa del tesoro#{{Collectible21}} La Brújula#{{Collectible246}} Mapa azul#Solo otorga efectos de mapa que no tengas#{{Collectible76}} Si están todos los efectos activos, otorga Visión de rayos X"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Lanza fuego rojo#La llama Inflige daño por contacto y bloquea proyectiles enemigos#Desaparece tras infligir daño o bloquear proyectiles 4 veces o tras 10 segundos", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Convierte a los enemigos comunes en caca#Mata de forma instantánea a enemigos y jefes de caca#Extingue fuegos#Convierte en suelo las fosas de lava", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{Warning}} Usarlo antes de la pelea contra el jefe reemplaza la recompensa del jefe por un objeto de pacto del diablo#{{AngelChance}} Tomar un objeto de pacto impedirá que aparezcan {{AngelRoom}} Salas del ángel", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Corazón negro#{{Warning}} Usarlo antes de la pelea contra el jefe reemplaza la recompensa del jefe por un objeto de pacto del diablo#{{AngelChance}} Tomar un objeto de pacto impedirá que aparezcan {{AngelRoom}} Salas del ángel"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Empuja a los enemigos y proyectiles cercanos#Inflige 10 de daño a los enemigos lanzados contra obstáculos", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Inflige el doble de tu daño + 10 a toda la habitación#{{Coin}} Usarlo cuesta 1 moneda", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Convierte 1 Corazón Negro o de Alma en un Contenedor de corazón", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "{{NoLB}}Genera recompensas en base al piso actual:#B1: 2 {{SoulHeart}}; B2: 2 {{Key}} + {{Bomb}}#C1: 1 objeto {{BossRoom}}; C2: B1+C1#D1: 4 {{SoulHeart}}; D2: 30 {{Coin}}#W1: 2 objetos {{BossRoom}}; W2: {{Collectible33}}#Sheol: 1 objeto {{DevilRoom}} + {{BlackHeart}}; Catedral: 1 objeto {{AngelRoom}} + {{SoulHeart}}#Cofre: 1 {{Coin}}#Casa: {{Collectible580}}", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Al correr sobre 0.85 de velocidad:", -- Aries
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.25#Al correr sobre 0.85 de velocidad:#Evita el daño por contacto#Inflige 25 de daño por contacto a los enemigos"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Deja un rastro de fluido#El fluido inflige 66% de tu daño cada segundo#El fluido hace sinergia con los efectos de tus lágrimas", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Lágrimas magnéticas#Las lágrimas atraerán enemigos, recolectables y trinkets#El efecto magnetico es más fuerte al final del trayecto de la lágrima", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Dispara lágrimas de forma aleatoria que copian los efectos de tus lágrimas#{{Damage}} Inflige el 75% de tu daño", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Dispara 8 lágrimas en todas direcciones#Las lágrimas imitan los efectos del jugador#↑ {{Damage}} Las lágrimas infligen tu daño +5#Se recarga al disparar lágrimas", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} Convierte tu cabeza en una torreta por la habitación#El cuerpo se controla por separado y suelta lágrimas sangrientas en la dirección de disparo", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Mantener pulsado el botón {{ButtonLT}} vaciará la barra de carga#El jugador será invencible al vaciar toda la barra#Al ser invencible, caerán rayos de luz sobre los enemigos que te toquen#Bloquear daño a la perfección, disparará un rayo sagrado en cruz#{{Warning}} Mantenerlo activo por mucho tiempo dañará al jugador", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "Reduce el empuje de forma drástica", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} Lágrimas x5.5#↓ {{Damage}} Daño x0.2%#↓ {{Tearsize}} Tamaño de lágrimas -0.3#Reduce el empuje de forma drástica"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "Las lágrimas obtienen un aura que inflige 60 de daño cada segundo", -- Godhead
	-- Full old Desc: "↑ {{Damage}} Daño +0.5#↓ {{Tears}} Lágrimas -0.3#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Lágrimas teledirigidas#Las lágrimas obtienen un aura que inflige 60 de daño cada segundo"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "Genera el trinket {{Trinket41}} Cerilla ", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Corazón negro#{{Bomb}} Genera 2-3 bombas#Genera el trinket {{Trinket41}} Cerilla "
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Dispara una gran lágrima espectral y perforante que inflige 10 veces tu daño#{{Warning}} Al recibir daño:#↓ Remueve dos corazones extra#El cañón se rompe y debe volver a cargarse#↑ {{Range}} Alcance +1.5 + un rastro de sangre por la habitación#El daño autoinfligido no activa el efecto", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Familiar demoníaco#Dispara lágrimas que copian tus efectos#{{Damage}} Inflige el 75% de tu daño", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Mosca que se mueve por las paredes y obstáculos de la habitación#Los enemigos cercanos irán hacia ella", -- Lost Fly
	-- Full old Desc: "Mosca que se mueve por las paredes y obstáculos de la habitación#Inflige 30 de daño por contacto cada segundo#Los enemigos cercanos irán hacia ella"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Slow}} Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Disparar en una única dirección aumenta la cadencia de disparo hasta un 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "Esta lágrima dejará caer un rayo de luz sobre un enemigo", -- Holy Light
	-- Full old Desc: "10% de probabilidad de disparar una lágrima sagrada#{{Luck}} 50% de probabilidad con 9 de suerte#Esta lágrima dejará caer un rayo de luz sobre un enemigo#{{Damage}}El rayo inflige tres veces tu daño"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Otorga inmunidad a las explosiones y projectiles que caigan desde arriba#25% de probabilidad de reflejar lágrimas", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Las tiendas reponen los objetos que compres de forma instantánea#Aumenta el precio de los objetos repuestos", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Las puertas, cofres y bloques con cerraduras deberán abrirse con monedas en lugar de llaves", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 monedas#Las puertas, cofres y bloques con cerraduras deberán abrirse con monedas en lugar de llaves"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Lanza una bola a los enemigos para capturarlos#Volver a usarlo invocará al enemigo como aliado#Pasar por encima de la bola después de la captura recargará instantáneamente el objeto", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Familiar lanzable que rebota por la habitación#La velocidad depende del tiempo de carga#Inflige 5-20 de daño por contacto dependiendo de su velocidad", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Cambia los obstaculos de la sala por otros obstaculos aleatorios (e.j. caca, TNT, espinas, piedras, etc.)#Pequeña probabilidad de cambiar obstaculos por botones, killswitches, mazmorras o trampillas", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Genera una runa o piedra de alma aleatoria cada 7-8 habitaciones", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Los enemigos podrán herirse entre sí, empezando a pelear entre ellos", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% de probabilidad de disparar lágrimas venenosas#{{Poison}} Envenena a los enemigos al contacto#{{BlackHeart}} Los enemigos envenenados por contacto pueden soltar un corazón negro al morir", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo#Los familiares disparan hacia la cruz#Puedes dejar de disparar presionando el boton de soltar ({{ButtonRT}})", -- Marked
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +3#Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo#Los familiares disparan hacia la cruz#Puedes dejar de disparar presionando el boton de soltar ({{ButtonRT}})"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} Reemplaza tus lágrimas por un anillo láser cargable#El tamaño del anillo aumenta hasta 100% con el tiempo de carga", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Disparar por 2.35 segundos y soltar el boton crea un láser negro a tu alrededor#El aro inflige 30 veces tu daño cada 2 segundos", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% de probabilidad de disparar lágrimas pegajosas#Las lágrimas pegadas crecen y explotan, infligiendo tu daño +60 al detonar", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos#Los pedos infligen 5-6 de daño", -- Farting Baby
	-- Full old Desc: "Bloquea proyectiles#Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos#Los pedos infligen 5-6 de daño"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} Lanzable#Cambia los enemigos y recolectables que toca", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Potencia una estadística dependiendo del color del aura#Al recibir daño, remueve el efecto y otorga un aura nueva en la siguiente sala#{{ColorYellow}}Amarillo{{CR}} = {{Speed}} Velocidad +0.5#{{ColorBlue}}Azul{{CR}} = {{Tears}} Lágrimas +2#{{ColorRed}}Rojo{{CR}} = {{Damage}} Daño +4#{{ColorOrange}}Naranja{{CR}} = {{Range}} Alcance +3", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25% de probabilidad de crear un anillo negro alrededor de un enemigo al matarlo#Inflige 30 veces tu daño cada 2 segundos#{{Luck}} +2.5% de probabilidad por punto de suerte", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} Aumenta el limite de monedas a 999#{{Coin}} Genera 1-3 monedas si no se ha generado una recompensa de habitación", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Familiar que rebota por la habitación rodeado de un aura#El aura inflige 7.5-10 de daño cada segundo a los enemigos#↑ {{Damage}} Daño x1.5l al quedarse dentro del aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Encanta a los enemigos cercanos", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Regresa al jugador a la sala anterior y revierte todas las acciones en la habitación actual#El efecto se puede usar hasta 3 veces por piso#{{Collectible66}} Tras agotar sus usos, se convertirá en El Reloj de Arena, ralentizando a los enemigos por 8 segundos", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "Las bombas tienen un 63% de probabilidad de generar un recolectable al explotar#La probabilidad se reduce en 1% por cada recolectable generado en el piso", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Las bombas tienen un 63% de probabilidad de generar un recolectable al explotar#La probabilidad se reduce en 1% por cada recolectable generado en el piso#{{Charm}} Las bombas tienen un 15% de probabilidad de encantar a los enemigos al explotar"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Una pequeña sombra seguirá al jugador#{{Timer}} Se creará un Charger oscuro por sala cuando un enemigo toque la sombra", -- My Shadow
	-- Full old Desc: "Una pequeña sombra seguirá al jugador#{{Timer}} Se creará un Charger oscuro por sala cuando un enemigo toque la sombra#El Charger inflige 8.7 de daño por contacto"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Reinicia la habitación y vuelve a generar los enemigos#Permite obtener multiples recompensas de la misma habitación", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Dispara un cúmulo de lágrimas cada 15 lágrimas ", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Al recibir daño:#{{Heart}} 25% de probabilidad de generar un corazón rojo#{{BleedingOut}} Te desangras, soltando lágrimas en la dirección de tus disparos#El sangrado inflige medio corazón de daño cada 20 segundos#El sangrado se detiene si:#Recoges un Corazón Rojo#Todos los corazones rojos estan vacios#O si el proximo daño te mataria", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Damage}} Cada 20 lágrimas, disparas una lágrima moneda que inflige 1.5 veces tu daño +10#Los enemigos golpeados se volverán estatuas de oro#{{Coin}} Las estatuas de oro sueltan 1-3 monedas al morir#{{Warning}} Disparar lágrimas moneda cuesta una moneda", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Potencia o duplica los efectos de las cartas del tarot", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Genera una carta aleatoria#{{Card}} Potencia o duplica los efectos de las cartas del tarot"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Las lágrimas se separan en 1-3 fragmentos de hueso al impactar", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} Alcance +1.5#Las lágrimas se separan en 1-3 fragmentos de hueso al impactar"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Los enemigos campeones y las habitaciones generarán los recolectables que más necesites", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 corazones de alma#Los enemigos campeones y las habitaciones generarán los recolectables que más necesites"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Hace que lo sigan otros familiares y dispara automaticamente a los enemigos#Se detiene cuando disparas#Se teletransporta hacia ti cuando dejas de disparar", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "{{Collectible352}} Se convierte en el Cañón de cristal al usarlo", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Duplica un recolectable aleatorio en la habitación actual#La copia puede no ser idéntica al original", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Consume los objetos en pedestales de la habitación#Objeto activo: Se añade el efecto al de Vacío(Apilando los efectos)#↑ Objeto pasivo: Pequeña mejora aleatoria", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Pulsa la tecla {{ButtonRT}} para cambiar entre una variedad de distintos dados#El único dado al que no se tiene acceso es al {{Collectible723}} Dado Reductor", -- D Infinity
	-- Full old Desc: "Pulsa la tecla {{ButtonRT}} para cambiar entre una variedad de distintos dados#El único dado al que no se tiene acceso es al {{Collectible723}} Dado Reductor"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Aumenta el daño por cada contenedor de corazón vacío#Al tener menos salud, el aumento de daño será mayór", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Las lágrimas generan un rayo eléctrico al impactar#Los rayos infligen la mitad de tu daño#Los rayos saltan entre enemigos", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "El fuego se encoje hasta desaparecer tras 2 segundos", -- Ghost Pepper
	-- Full old Desc: "8% de probabilidad de disparar un fuego azul que inflige daño y bloquea proyectiles#{{Luck}} 50% de probabilidad con 10 de suerte#El fuego se encoje hasta desaparecer tras 2 segundos"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Confusion}} Al entrar a una habitación te camufla y confunde a los enemigos hasta que dispares#↑ {{Speed}} Velocidad +0.5 al estar camuflado#Al descamuflarse: #Inflige daño a enemigos cercanos#{{Timer}} Aumenta temporalmente las lágrimas y el daño por la sala", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} Otorga 1 contenedor de corazón por cada 25 monedas que tengas", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "La mano mata al instante a enemigos normales e inflige 3.5 de daño a los jefes", -- Little Horn
	-- Full old Desc: "5% de probabilidad de disparar una lágrima que invoca una mano de Big Horn#{{Luck}} 20% de probabilidad con 15 de suerte#La mano mata al instante a enemigos normales e inflige 3.5 de daño a los jefes#Infliges 7 de daño por contacto cada segundo"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Genera una mosca torreta que dispara a los enemigos", -- Brown Nugget
	-- Full old Desc: "Genera una mosca torreta que dispara a los enemigos#Inflige 3.5 de daño por disparo"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} Golpear a un enemigo por detrás inflige el doble de daño y causa sangrado#Los enemigos que sangren dejarán un rastro de fluido y recibiran daño al moverse", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "Inflige tu daño + 10% de la vida máxima del enemigo a todos los enemigos de la sala#{{HalfHeart}} Probabilidad de generar medio corazón al infligir daño", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} Orbital que causa sangrado#Los enemigos que sangren dejarán un rastro de fluido rojo y tomaran daño al moverse#{{Damage}} Inflige 1.5 veces tu daño cada segundo", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbital que dispara una lágrima cada 0.33 segundos a los enemigos cercanos", -- Bloodshot Eye
	-- Full old Desc: "Orbital que dispara una lágrima cada 0.33 segundos a los enemigos cercanos#Inflige 3.5 de daño#Inflige 30 de daño por contacto cada segundo"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Probabilidad de congelar momentaneamente a enemigos y proyectiles#Los proyectiles enemigos congelados seran removidos#25% de probabilidad de duplicar las recompensas de sala", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Permite colocar bombas muy rápido#Las bombas no se empujarán entre sí", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Permite colocar bombas muy rápido#Las bombas no se empujarán entre sí"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Detiene los proyectiles cercanos durante 3 segundos y los lanza lejos#Empuja hacia afuera a los enemigos cercanos durante el efecto", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Permite almacenar hasta 10 recolectables y objetos en la habitación#Permite mover cosas entre habitaciones#Volver a usarlo los suelta en la habitación actual", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Conecta tus lágrimas con rayos de electricidad#Los rayos infligen 4.5 veces tu daño por segundo", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Genera una trampilla para saltar el piso#{{LadderRoom}} Genera una trampilla a una mazmorra al usarla sobre la decoración del suelo#Úsala en el montón de tierra en  \"Cuarto Oscuro\"#", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% de probabilidad de disparar esporas pegajosas#Las esporas explotan tras 2.5 segundos, infligiendo daño, envenenando a enemigos cercanos y soltando más esporas", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Asusta a los enemigos en un corto radio a tu alrededor", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "↑ {{Damage}} Daño +1.2#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} A cambio de 5 monedas, otorga en la habitación actual:#↑ {{Damage}} Daño +1.2"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "Usarlo repetidas veces incrementa el daño y el tamaño del rayo", -- Sulfur
	-- Full old Desc: "{{Collectible118}} Activa el efecto de Azufre en la habitación actual#Usarlo repetidas veces incrementa el daño y el tamaño del rayo"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Puede generar: #Una fortuna #{{SoulHeart}} Un Corazón de Alma#{{Rune}} Una Runa o Piedra de alma{{Card}} Una Carta#{{Trinket}} Un Trinket", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Probabilidad de disparar 1-3 lágrimas adicionales en direcciones aleatorias", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Da descargas de energía a los enemigos cercanos#{{Damage}} La electricidad inflige 3.75 veces tu daño cada segundo#Los rayos pueden saltar entre enemigos", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} Tras ser golpeado, otorga por la habitación:#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional#Libera un círculo de 10 lágrimas a tu alrededor", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "{{Trinket64}} Las lágrimas ganan los efectos aleatorios de los trinkets de gusano", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} Lágrimas x4#↓ {{Damage}} Daño x0.3#↓ {{Tearsize}} Tamaño de lágrima -0.16#{{Trinket64}} Las lágrimas ganan los efectos aleatorios de los trinkets de gusano"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ Evita que tus estadísticas bajen durante el resto de la partida", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Las bombas explotan con un efecto de bomba aleatorio", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Las bombas explotan con un efecto de bomba aleatorio"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Familiar que persigue a los enemigos#{{HalfHeart}} Genera medio corazón rojo tras matar 10 enemigos#Tras matar 15 enemigos, se vuelve más poderoso e intentará atacarte#Atacarle lo regresa a su estado normal", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} Medio corazón de alma al entrar a un nuevo piso#Durante la transición entre pisos, la pesadilla de Isaac muestra el objeto de la habitación del tesoro y al jefe del piso", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} Limpiar una habitación sin recibir daño otorga Lágrimas +0.4#Limite de Lágrimas +2 {{ColorSilver}}(5 habitaciones){{CR}}#Recibir daño remueve las bonificaciónes", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Tocar dos veces la tecla de disparo crea un escudo#El escudo dura un segundo, aleja a los enemigos, refleja proyectiles y láseres enemigos", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} Drena todos tus corazones al inicio del piso#Incrementa la velocidad y el daño durante todo el piso por cada corazón perdido#Cada medio corazón perdido cuenta para los efectos activados por daño", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Cada lágrima individual tendrá un color y efecto aleatorios", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Otorga inmunidad a los fluidos y a las espinas del suelo", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.3#{{SoulHeart}} +2 corazones de alma#Otorga inmunidad a los fluidos y a las espinas del suelo"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Permite controlar la dirección de tus lágrimas", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +7.5#↓ {{Shotspeed}} Vel. de lágrimas -0.16#Permite controlar la dirección de tus lágrimas"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% de probabilidad de disparar una lágrima extra que es orbital y espectral", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño x1.2#{{HealingRed}} Salud al maximo#20% de probabilidad de disparar una lágrima extra que es orbital y espectral"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Gana dos auras circulares que dañan a los enemigos#El aura interna inflige más daño", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Un familiar arácnido dentro de tu cabeza#{{Slow}} Dispara 4 lágrimas ralentizantes#Al recibir daño, la araña saldrá de tu cabeza y perseguirá a los enemigos", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Destruir cacas genera 1-4 caquitas amistosas#El tipo de las caquitas dependerá de la caca de origen#Reemplaza algunas rocas con caca", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#No duplica los objetos que tengan precio o provengan de cofres#{{Warning}} Tras recibir daño, probabilidad baja de que la espada te mate en un momento aleatorio", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Crea una gran piscina de limonada#La limonada inflige 24 de daño cada segundo", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "En lugar de lágrimas, tienes una espada#{{Damage}} Inflige 3 veces tu daño +3.5#{{Chargeable}} Tiene un ataque en giro + disparo de proyectil al cargarla#{{Heart}} Al tener la salud al maximo, dispara proyectiles con los ataques sin cargar", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Crea una nueva habitación adyacente a una pared disponible, indicada por el contorno de una puerta#Las habitaciónes rojas pueden ser habitaciones especiales#Entrar en una habitación fuera del límite del mapa (13 x 13 habitaciones) te enviará a la habitación I AM ERROR.", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Persigue y desvía proyectiles enemigos", -- Psy Fly
	-- Full old Desc: "Persigue y desvía proyectiles enemigos#Inflige 15 de daño por contacto cada segundo"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Distorsiona la pantalla#Efecto acumulable#Limpiar o abandonar salas reduce los efectos", -- Wavy Cap
	-- Full old Desc: "↑ {{Shotspeed}} Vel. de lágrimas +0.75#↓ {{Speed}} Velocidad -0.03#Distorsiona la pantalla#Efecto acumulable#Limpiar o abandonar salas reduce los efectos"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Colocar una bomba al disparar lanzará un cohete a la dirección donde dispares", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bombas#Colocar una bomba al disparar lanzará un cohete a la dirección donde dispares"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Invoca un fuego orbital que dispara lágrimas espectrales que puede destruirse#Puede combinarse con un segundo objeto activo para crear fuegos especiales#{{AngelRoom}} Las salas del Ángel aún se podran generar tras tomar un objeto de pacto del Diablo", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} +12.5% de probabilidad de encontrar salas de Ángel al tenerlo#Invoca un fuego orbital que dispara lágrimas espectrales que puede destruirse#Puede combinarse con un segundo objeto activo para crear fuegos especiales#{{AngelRoom}} Cambia la primer sala del Diablo por una de Ángel#{{AngelRoom}} Las salas del Ángel aún se podran generar tras tomar un objeto de pacto del Diablo"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "{{SoulHeart}} Se carga al recoger corazones de alma#Genera: #{{SoulHeart}} 3 Corazones de alma#{{AngelRoom}} Dos objetos aleatorios de la Sala del Ángel", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Genera una escalera al inicio de cada piso#{{AngelRoom}} La escalera lleva a una tienda del ángel", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 589] = "Agrega una {{SecretRoom}} habitación secreta y una {{SuperSecretRoom}} súper secreta adicional a cada piso#Las habitaciones secretas contienen un rayo de luz que al tocarlo otorga lo siguiente: #↑ {{Tears}} Lágrimas +1 al tocar el primer rayo#↑ {{Tears}} Lágrimas +0.5 al tocar los siguientes rayos#{{HalfSoulHeart}} Medio Corazón de alma", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "La mayoría de puertas se mantendrán abiertas permanentemente", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.4#La mayoría de puertas se mantendrán abiertas permanentemente"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Encanta a los enemigos cercanos", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{Charm}} Encanta a los enemigos cercanos"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Reemplaza tus lágrimas por rocas#Infligen daño variable", -- Terra
	-- Full old Desc: "↑ {{Damage}} Daño +1#Reemplaza tus lágrimas por rocas#Infligen daño variable#Pueden destruir obstáculos#Aumenta el empuje"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Embiste al pulsar dos veces la tecla de movimiento#Al embestir: te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño +8#{{Timer}} 3 segundos de recarga", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Otorga inmunidad al veneno", -- Jupiter
	-- Full old Desc: "{{EmptyHeart}} +2 contenedores de corazón#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura medio corazón#↑ {{Speed}} Bonus de velocidad +0.5 al quedarse quieto#{{Poison}} Suelta una nube de veneno al moverse otra vez#{{Poison}} Otorga inmunidad al veneno"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Al entrar en una habitación, 7 lágrimas orbitarán a tu alrededor#Estas lágrimas duran 13 segundos e infligen 1.5 veces tu daño +5#Probabilidad de atrapar proyectiles enemigos en la órbita", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "Otorga lágrimas de hielo que:#{{Slow}} Ralentizan a los enemigos#{{Freezing}} Congela a los enemigos al matarlos#Empujar enemigos congelados hará que se deslicen y exploten en 10 trozos de hielo", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Chargeable}} Cargable (Automático)#Al no disparar, se empezará a cargar un ataque#Disparar hará que sueltes una ráfaga de lágrimas hasta que dispares a tu cadencia regular#Dejar de disparar recargará el ataque", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Encoge mucho a Isaac, permitiendo que pase entre objetos#Los proyectiles puede pasarte por encima", -- Pluto
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.7#Encoge mucho a Isaac, permitiendo que pase entre objetos#Los proyectiles puede pasarte por encima"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Genera una habitación maldita adicional en cada piso#{{CursedRoom}} Se generan mejores salas malditas#{{Coin}} Genera una moneda en cada habitación maldita", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 602] = "{{Shop}} Añade una trampilla en cada tienda que permite acceder a una segunda tienda con artículos únicos", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} Recarga tu objeto activo por completo", -- Battery Pack
	-- Full old Desc: "{{Battery}} Genera 2-4 baterías#{{Battery}} Recarga tu objeto activo por completo"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Permite levantar y lanzar piedras, TNT, cacas, Hosts (enemigo calavera), y otros obstáculos#Permite moverlos entre habitaciones", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Infligen 3 veces tu daño cada segundo", -- Ocular Rift
	-- Full old Desc: "5% de probabilidad de disparar lágrimas que crean grietas donde caen#{{Luck}} 20% de probabilidad con 15 de suerte#Infligen 3 veces tu daño cada segundo#Atraen enemigos cercanos, recolectables y proyectiles"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Familiar que dispara grupos de lágrimas de manera caótica", -- Boiled Baby
	-- Full old Desc: "Familiar que dispara grupos de lágrimas de manera caótica#Inflige 3.5 o 5.25 de daño por lágrima"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Dispara lágrimas congelantes que infligen 3.5 de daño#{{Freezing}} Congela a los enemigos al matarlos", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Cambia todos los objetos de la habitación#25% de probabilidad de eliminar los objetos", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Familiar que ataca al primer enemigo que te golpée#Lanza una ola de rocas#Después persigue a los enemigos infligiendo 6.5 de daño por contacto cada segundo", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Te hace gritar, dañando y alejando a los enemigos cercanos#Cuantas más cargas tenga el objeto, más potente será el grito", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Familiar de alma que muere de un golpe y reaparece al inicio de la siguiente planta#Si sobrevive toda la planta, puede generar:#{{SoulHeart}} 3 corazones de alma#{{EternalHeart}}2 corazones eternos#{{TreasureRoom}} Un objeto de sala de tesoro#{{AngelRoom}} Un objeto de sala de ángel", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Si no tienes bombas, puedes poner una a cambio de medio corazón#Las bombas dejan fluido rojo", -- Blood Bombs
	-- Full old Desc: "{{Heart}} +1 de Vida#{{HealingRed}} Cura 4 corazones#{{HalfHeart}} Si no tienes bombas, puedes poner una a cambio de medio corazón#Las bombas dejan fluido rojo"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Familiar Dumpy que sigue al jugador#Refleja un proyectil o enemigo que pueda golpear al jugador#Probabilidad de reflejar proyectiles cerca de él#Tras reflejar un projectil, necesita ser tocado para volver a activarse", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Desaparece tras infligir daño/bloquear proyectiles 4 veces o tras 10 segundos", -- Bird's Eye
	-- Full old Desc: "8% de probabilidad de disparar fuegos que bloquean proyectiles enemigos e infligen daño por contacto#{{Luck}} 50% de probabilidad con 10 de suerte#Desaparece tras infligir daño/bloquear proyectiles 4 veces o tras 10 segundos"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Los enemigos magnetizados atraen recolectables, proyectiles y enemigos cercanos", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% de probabilidad de disparar lágrimas que magnetizan a los enemigos#{{Luck}} 100% de probabilidad con 5 de suerte#Los enemigos magnetizados atraen recolectables, proyectiles y enemigos cercanos"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Los enemigos marcados son atacados por otros enemigos", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% de probabilidad de disparar lágrimas que marcan a los enemigos#{{Luck}} 100% de probabilidad con 5 de suerte#Los enemigos marcados son atacados por otros enemigos"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Tiene un efecto distinto en cada personaje", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "El daño se pierde poco a poco durante 3 minutos#Matar enemigos extiende la duración del efecto", -- Red Stew
	-- Full old Desc: "#↑ {{Damage}} Daño +21.6#{{HealingRed}} Salud al maximo#El daño se pierde poco a poco durante 3 minutos#Matar enemigos extiende la duración del efecto"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "{{Warning}} Elimina todos tus objetos y recolectables y te teletransporta a una habitación única#La habitación contiene recolectables, cofres y una trampilla#Por cada objeto removido, se te darán a elegir entre 3 objetos del mismo grupo#Dejar la habitación te llevará a la siguiente planta", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Lanza tus llaves para infligir daño, destrozar obstáculos y abrir puertas#Los Enemigos asesinados con llaves pueden generar los contenidos de un cofre, incluyendo objetos", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 llaves#Lanza tus llaves para infligir daño, destrozar obstáculos y abrir puertas#Los Enemigos asesinados con llaves pueden generar los contenidos de un cofre, incluyendo objetos"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#{{Timer}} El efecto dura 30 segundos y persiste entre habitaciones y plantas", -- Mega Mush
	-- Full old Desc: "Te haces gigante y otorga:#↑ {{Damage}} Daño x4#↑ {{Range}} Alcance +2#↓ {{Tears}} Lágrimas -1.9#Invulnerabilidad y habilidad para destrozar enemigos y obstáculos#{{Timer}} El efecto dura 30 segundos y persiste entre habitaciones y plantas"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "Crea un cuchillo lanzable que inflige 25 de daño", -- Knife Piece 1
	-- Full old Desc: "Al ser combinado con la {{Collectible627}} Segunda parte del cuchillo:#Crea un cuchillo lanzable que inflige 25 de daño#Permite abrir una puerta hecha de carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "Crea un cuchillo lanzable que inflige 25 de daño", -- Knife Piece 2
	-- Full old Desc: "Al ser combinado con la {{Collectible626}} Primera parte del cuchillo:#Crea un cuchillo lanzable que inflige 25 de daño#Permite abrir una puerta hecha de carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Te lleva a un piso que contiene todos los objetos del juego#Tras tomar un objeto, te devuelve a la habitación en la que estabas", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Orbital que dispara lágrimas con escudo", -- Bot Fly
	-- Full old Desc: "Orbital que dispara lágrimas con escudo#Inflige 3 de daño por contacto cada segundo"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Divide a los enemigos de la habitación en 2 versiones más pequeñas con 40% de salud#Divide a los enemigos que normalmente se dividen#Inflige 25 de daño a los enemigos que no se dividan", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Otorga inmunidad a {{Burning}} quemaduras, {{Confusion}} confusión, {{Fear}} miedo y {{Poison}} veneno", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} Suerte +2#Otorga inmunidad a {{Burning}} quemaduras, {{Confusion}} confusión, {{Fear}} miedo y {{Poison}} veneno"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Genera grietas en el suelo de habitaciones hostiles#Caminar sobre ellas invoca fantasmas explosivos teledirigidos", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Genera un familiar que se mueve en la dirección de tus disparos#Al usarlo, intercambias la posición con el familiar y ganas una invencibilidad corta#Teletransportarse en cosas puede dañarlas o destruirlas", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Reinicia la partida actual#Mantendrás tus objetos, trinkets, estadisticas y recolectables#No reinicia el tiempo de la partida", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Lanza una goma que borra a un enemigo#Los enemigos borrados no apareceran durante el resto de la partida#Inflige 15 de daño a los jefes#Solo puede usarse una vez por piso", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Lanza llamas azules#Gana cargas por cada enemigo que mates", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Crea una cadena de lágrimas detrás al entrar en habitaciones hostiles#Las lágrimas infligen 3.5 de daño", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Genera un objeto del grupo de items de la habitación actual#{{BrokenHeart}} Convierte 1 contenedor de corazón o 2 corazones de alma en un corazón roto#{{Warning}} Reemplaza futuros objetos si no lo tienes{{ColorSilver}}(33% tras 1 uso, 50% tras 2, 100% tras 3)#Menor probabilidad si ya se generó en el piso actual", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} Láser Sagrado cargable#El láser no reemplaza tus lágrimas", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 Corazones de alma#Permite volar#{{Chargeable}} Láser Sagrado cargable#El láser no reemplaza tus lágrimas"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Mejora tu estadística más baja#Puede generar 3 {{Coin}} monedas, 1 {{Bomb}} bomba, o 1 {{Key}} llave dependiendo de lo que tengas menos", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Orbital que bloquea proyectiles#Se divide en versiones más pequeñas tras 3 golpes#Al romperse, las versiones pequeñas se convierten en arañas azules#Reaparece 5 segundos después", -- Tinytoma
	-- Full old Desc: "Orbital que bloquea proyectiles#Inflige daño por contacto#Se divide en versiones más pequeñas tras 3 golpes#Al romperse, las versiones pequeñas se convierten en arañas azules#Reaparece 5 segundos después"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Las bombas disparan 4 láseres de Azufre en forma de cruz#Los rayos no dañan a Isaac", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Collectible118}} Las bombas disparan 4 láseres de Azufre en forma de cruz#Los rayos no dañan a Isaac"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Los objetos activos ya no se cargan al limpiar habitaciones#Se cargan lentamente al infligir daño a los enemigos#El daño requerido aumenta por planta", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Mini Ciruelita", -- Fruity Plum
	-- Full old Desc: "Mini Ciruelita#Viaja diagonalmente por la habitación, disparando lágrimas que infligen 3 de daño#Inflige 6 de daño por contacto cada segundo"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} Invoca a Ciruelita en la habitación actual durante 10 segundos", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "{{BossRoom}} Viaja lentamente hasta la sala del jefe#Emite un aura que otorga:#↑ {{Tears}} Lágrimas x2.5#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "{{BossRoom}} Viaja lentamente hasta la sala del jefe#Emite un aura que otorga:#↑ {{Tears}} Lágrimas x2.5#↑ {{Damage}} Daño x1.8#Lágrimas Teledirigidas#50% de probabilidad de ignorar el daño recibido"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Familiar que se desliza por la habitación si lo empujas#{{Slow}} Ralentiza e inflige 17.5 de daño por contacto#{{Freezing}} Congela a los enemigos al matarlos", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Al tenerlo, los enemigos no fantasmas dejan pequeños fantasmas rojos al morir#Al usarlo, hace que los fantasmas exploten#Mata instantaneamente a cualquier enemigo fantasma (incluyendo jefes) que tengan menos de 50% de salud", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Otras píldoras sueltan corazones negros", -- False PHD
	-- Full old Desc: "{{Pill}} Identifica todas las píldoras#{{Pill}} Convierte las píldoras buenas en píldoras malas#{{BlackHeart}} +1 corazón negro#↑ {{Damage}} Las píldoras que bajan estadísticas otorgan +0.6 de daño#{{BlackHeart}} Otras píldoras sueltan corazones negros"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Otorga un orbital giratorio que bloquea proyectiles enemigos e inflige 10.5 de daño por contacto cada segundo#{VAR:ONUSEEFFECT}#Aumenta la velocidad y el daño de los orbitales", -- Spin to Win
	-- Full old Desc: "Otorga un orbital giratorio que bloquea proyectiles enemigos e inflige 10.5 de daño por contacto cada segundo#Al usarlo: #↑ {{Speed}} Velocidad +0.5#Aumenta la velocidad y el daño de los orbitales"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#No duplica los objetos que tengan precio o provengan de cofres#{{Warning}} Tras recibir daño, probabilidad baja de que la espada te mate en un momento aleatorio", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Los enemigos sueltan lágrimas al morir con los efectos de tus lágrimas", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Al recibir daño genera un minIsaac#Los minIsaacs persiguen y disparan a los enemigos cercanos", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Genera 2 portales al inicio de cada planta#Los portales desaparecen al abandonar la habitación#{{ColorRed}}Rojo: {{CR}} {{BossRoom}} Sala del jefe#{{ColorYellow}}Amarillo: {{CR}} {{TreasureRoom}} Sala del tesoro#{{ColorBlue}}Azul: {{CR}} {{SecretRoom}} Habitación secreta", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Matar a un enemigo genera un familiar torreta en ese lugar#Hasta 5 familiares", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Te vuelve invencible durante 1 segundo cada 6 segundos#Resplandece antes de activarse", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Los pedestales de objetos alternan entre el objeto original y un objeto de comida#Tomar el objeto de comida otorga:#↓ {{Speed}} Velocidad -0.03", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#{{HealingRed}} Salud al maximo#Los pedestales de objetos alternan entre el objeto original y un objeto de comida#Tomar el objeto de comida otorga:#{{HealingRed}} Cura 2 corazones#↑ {{Damage}} Daño temporal +3.6#↑ Dos mejoras de estadísticas (Dependen del objeto de comida)#↓ {{Speed}} Velocidad -0.03"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Revela el contenido de los {{Chest}} cofres, {{GrabBag}} sacos, tenderos y hogueras antes de ser abiertos o destruidos", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "Elimina todo objeto que haya recogido y a si mismo de tu inventario", -- Strawman
	-- Full old Desc: "{{Player14}} Genera un Keeper compañero#{{DevilRoom}} Los objetos de pacto del Diablo costaran monedas si esta vivo#Al morir:#Genera arañas azules#Elimina todo objeto que haya recogido y a si mismo de tu inventario#{{Warning}} Puede tomar objetos de eventos de progresión"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Tomarlo iniciará la ruta de ascenso hasta Casa#{{Trinket}} Transformará todos los trinkets dejados en la {{BossRoom}} Sala del jefe o la {{TreasureRoom}} Sala del tesoro en una {{Card78}} Llave rota", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Permite elegir entre dos recompensas de habitación", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Recoger un {{Heart}} corazón rojo otorga una mejora aleatoria de estadísticas permanente#{{Heart}} Genera un corazón rojo", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Los pactos del diablo ahora cuestan monedas#{{Shop}} Los objetos de las tiendas cuestan contenedores de corazón#Los recolectables en las tiendas son gratis pero están rodeados con espinas", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Al salir de una Sala del Diablo sin tomar nada, ganas: #{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Al salir de una Sala del Diablo sin tomar nada, ganas: #{{SoulHeart}} Un Corazón de alma#↑ {{Damage}} Daño +1"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Al morir, te vuelves un fantasma encadenado a tu cuerpo muerto y puedes seguir luchando con medio corazón de alma#Si el fantasma sobrevive, te devuelve a la vida tras 10 segundos#{{SoulHeart}} Se recarga tomando corazones de alma", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Al recibir daño:#Abre todas las puertas de la habitación#Revela una habitación aleatoria en el mapa#Destruye todas las piedras marcadas y de trampilla#Puede abrir puertas cerradas con llave#Puede abrir la puerta de Mega Satán", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 Contenedor de corazon si al iniciar una planta tienes un corazón rojo o menos#{{EmptyBoneHeart}} Los corazones de hueso no cuentan", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} Recibir daño en una habitación hostil otorga:#Lagrimas espectrales#Permite volar#Niega el daño del siguiente golpe#Congela el tiempo durante 2 segundos#Gran incremento en velocidad y lágrimas durante 2 segundos", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Cargable#Reemplaza tus lágrimas por fetos espectrales teledirigidos#{{Damage}} Los fetos infligen 2.8 veces tu daño por segundo", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Familiar que dispara un ataque similar a Fauces del Vacío#Inflige 52.5 de daño cada segundo", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Disparar de forma continua carga un ataque láser trasero", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Familiar arrojable que inflige daño por contacto al ser lanzado#Consume los recolectables a su paso#Cada uno aumenta su tamaño, daño, y genera una mosca azul#Consumir 4 recolectables genera un portal a una habitacion inexplorada", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Hace que un tentáculo salga del suelo y agarre a un enemigo#Los enemigos agarrados reciben 8 de daño cada segundo, son ralentizados y no pueden moverse", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Al morir, los enemigos generan huesos#Los huesos bloquean proyectiles e infligen daño por contacto", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Probabilidad de generar fantasmas al matar enemigos#Los fantasmas persiguen enemigos, infligen daño por contacto y explotan tras 5 segundos#La explosión inflige 7 de daño a los enemigos cercanos#La explosión no te afecta", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#Genera un fuego adicional con cada uso, hasta llegar a 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Otorga una mejora de estadística permanente al tomar {{SoulHeart}} corazones de alma", -- Soul Locket
	-- Full old Desc: "↑ Otorga una mejora de estadística permanente al tomar {{SoulHeart}} corazones de alma#{{SoulHeart}} Genera un corazón de alma"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Genera un monstruo familiar aleatorio que copia tus ataques y movimientos", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Al morir, revive en la habitación actual con:#{{HalfHeart}} Medio corazón#↑ Velocidad +0.2#Un tamaño reducido", -- Inner Child
	-- Full old Desc: "+1 vida adicional#Al morir, revive en la habitación actual con:#{{HalfHeart}} Medio corazón#↑ Velocidad +0.2#Un tamaño reducido"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Los pedestales cambian rápidamente entre 5 objetos aleatorios", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Los enemigos rebotan lejos al tocarte#50% de probabilidad de negar el daño por contacto#50% de probabilidad de desviar proyectiles", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Evita que los objetos de calidad {{Quality0}} y {{Quality1}} aparezcan#33% de probabilidad de cambiar los objetos de calidad {{Quality2}}", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "{{DevilRoom}} Genera espinas especiales en la sala del Diablo#Hacerse daño en ellas puede otorgar:#35%: Nada#33%: ↑ {{Damage}} daño +0.5#15%: 6 {{Coin}} monedas#10%: 2 {{BlackHeart}} Corazones negros#5%: {{DevilRoom}} Objeto del Diablo aleatorio#2%: Transformación en Leviathan", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Genera una nueva mosca al limpiar cada habitación#Se convierten en moscas azules tras bloquear un proyectil", -- The Swarm
	-- Full old Desc: "Otorga 8 moscas orbitales#Genera una nueva mosca al limpiar cada habitación#Se convierten en moscas azules tras bloquear un proyectil"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} Cada golpe fatal añade otros 2 corazones rotos#Mueres al tener 12 corazones rotos", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} Daño +0.25 de daño por cada corazón roto#{{BrokenHeart}} +3 corazones rotos#{{BrokenHeart}} Cada golpe fatal añade otros 2 corazones rotos#Mueres al tener 12 corazones rotos"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Al recibir daño, otorga para la planta actual:#↑ {{Speed}} Velocidad (+1.02 maximo)#↑ {{Tears}} Lagrimas (+3 maximo)", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Otorga un aura que genera rayos de luz al tocar a los enemigos#Cuanto más daño te hagan en esa planta, más grande será el aura", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Entrar en la sala de jefe genera un clon del jefe#Derrotarle genera un objeto extra#El clon es más lento y tiene un 75% de salud", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Dos familiares que disparan lágrimas que copian tus efectos y estadisticas#{{Damage}} Infligen el 37.5% de tu daño", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Acumula ira al limpiar cada habitación#{{Collectible118}} Tras 4 habitaciones, dispara un gran rayo de Azufre al entrar a la siguiente habitación", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Usar una {{Rune}} runa, {{Card}} carta o {{Pill}} píldora activa el efecto de las últimas 3 runas/cartas/píldoras que se hayan usado tras recoger Cámara de Eco", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Genera un {{DirtyChest}} cofre viejo al inicio de cada planta#Los cofres antiguos requieren una llave para abrirse y pueden contener lo siguiente:#{{SoulHeart}} Corazones de alma#{{Trinket}} Trinkets#Objetos de la sala del ángel o relacionados con Mamá y Papá", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Tras recibir daño, genera un fuego orbital#Los fuegos disparan lágrimas, no bloquean proyectiles y desaparecen en la siguiente planta#Máximo de 6 fuegos", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Cambia entre el personaje actual y Esau Junior#Esau Junior tiene {{BlackHeart}} 3 corazones negros, {{Damage}} +2 de daño y vuela#Esau Junior recibe objetos aleatorios en igual cantidad a los que tu tengas al cambiar de lugar por primera vez#Los personajes tienen objetos y vida independientes#{{Warning}} Morir como cualquier personaje termina la partida", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} Por cada enemigo asesinado:", -- Berserk!
	-- Full old Desc: "{{Battery}} Se carga al infligir daño#{{Timer}} Otorga durante 5 segundos:#↑ {{Speed}} Velocidad +0.4#↑ {{Tears}} Lágrimas x0.5#↑ {{Tears}} Lágrimas +2#↑ {{Damage}} Daño +3#Restringe el ataque a un arma a melee#{{Timer}} Por cada enemigo asesinado:#Aumenta la duración del efecto por 1 segundo#Otorga invencibilidad breve"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#↑ {{Speed}} Velocidad +1#Permite caminar a través de los enemigos y proyectiles#Al disparar o finalizar el efecto:", -- Dark Arts
	-- Full old Desc: "{{Timer}} Al usarlo, ganas durante 1 segundo (o hasta disparar):#↑ {{Speed}} Velocidad +1#Permite caminar a través de los enemigos y proyectiles#Al disparar o finalizar el efecto:#Inflige el triple de tu daño a los enemigos#Elimina los proyectiles tocados#Genera una explosion en tu ubicacion#El ataque y la explosion aumentan su daño con cada entidad atacada"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Destruye todos los objetos de la habitación y genera una langosta familiar por cada uno#Las langostas infligen tu daño 2-3 veces por ataque#Los efectos de las moscas dependen de los objetos", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Disparas todas tus lagrimas por el ojo derecho", -- Stapler
	-- Full old Desc: "↑ {{Damage}} Daño +1#Disparas todas tus lagrimas por el ojo derecho"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Te permite correr, levantar a enemigos o jefes y estamparlos contra el suelo#Estampar inflige daño y genera una ola de rocas basados en tu tamaño", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Recoge hasta 8 recolectables#Mantener el botón del activable convierte los 8 recolectables en un objeto#La calidad del objeto dependerá de la de los recolectables", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Al entrar una habitación con un pedestal, un objeto fantasma aparecerá detras#Tras el uso, el objeto fantasma intercambiará lugar con el otro#Ambos objetos se pueden tomar si es que Cambio se usa después de tomar un objeto#{{Warning}} El objeto fantasma desaparecerá si tomas el primer objeto y sales de la habitación", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Invoca un fantasma orbital que otorga un efecto de objeto pasivo aleatorio#El efecto del objeto se aplica al jugador#75% de probabilidad de ser del grupo del Tesoro/Tienda/Jefe#25% de probabilidad de ser del grupo de la sala actual", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Convierte medio corazón en un coágulo familiar#Los coágulos disparan tus lagrimas y pueden ser destruidos#El tipo de coágulos, daño, salud y efectos varian con los tipos de corazones#{{Player26}} Eva contaminada los convierte al disparar por cierto tiempo, usar el objeto de nuevo restaura su PV", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "{{Player35}} Devuelve el cuerpo de Forgotten desde culquier distancia#El alma es invencible mientras vuelve el cuerpo", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Guarda una caca bomba dentro para usarla más tarde", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} Gastar 3 monedas en la tienda otorga: #{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "#Genera {{Coin}} 3 monedas y {{Key}} una llave#{{Shop}} Gastar 3 monedas en la tienda otorga: #↑ {{Speed}} Velocidad +0.03#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.25"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Las rocas y jarrones generan 2 arañas azules al romperlos#Las rocas pueden generar ocasionalmente arañas azules en habitaciónes hostiles", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Genera un objeto o recolectable de tienda aleatorio para comprar", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Genera algunos recolectables basados en las cargas que tenga#Si está cargado al completo, tiene un efecto aleatorio más único#Recompensas según cargas: 1:caca 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Hace que los objetos futuros estén 'glitcheados'#Los objetos glitcheados tienen efectos completamente aleatorios", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Encadena al enemigo más cercano durante 5 segundos, evitando que actúen#Los enemigos encadenados no pueden moverse ni atacar#{{Player37}} Jacob Contaminado siempre encadenará a Esaú Oscuro", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Cambia todos los objetos en la habitación por otros restándole 1 al identificador interno del objeto actuál", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Tras recibir daño, sueltas medio o un corazón rojo (dependiendo de la cantidad de daño)#Los corazones soltados desaparecen tras 1.5 segundos", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Parpadeas rojo tras infligir suficiente daño#Soltar el boton de ataque mientras parpadeas:#Arroja una caca aleatoria#Genera un fluido potenciador#{{Poison}} Suelta un gas venenoso#Genera 5 bombas troll", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Estornudas sangre al pulsar dos veces el botón de disparo#Inflige 1.5 veces tu daño a los enemigos delante de ti#Enfriamiento de un segundo#{{BrimstoneCurse}} Los enemigos afectados reciben daño extra de los rayos de Azufre", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Las bombas generan fantasmas#Los fantasmas infligen 2 veces tu daño y explotan luego de 10 segundos", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Las bombas generan fantasmas#Los fantasmas infligen 2 veces tu daño y explotan luego de 10 segundos"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Genera un familiar demoníaco atado a ti#Copia tus lágrimas, estadísticas y efectos#{{Damage}} Sus lágrimas infligen el 75% de tu daño", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Lanza tu cabeza y te permite disparar lágrimas desde donde caiga#Recuperas la cabeza al pisarla o reactivar el objeto", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Genera una runa o piedra de alma al tomarlo", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} Daño +1#{{Rune}} Genera una runa o piedra de alma al tomarlo"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 33% de probabilidad de generar una moneda al destruir rocas", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 20% de probabilidad de generar una moneda al destruir una caca#Soltarás un pedo al recoger una moneda#{{Poison}} Los pedos empujan y envenenan a los enemigos", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% de probabilidad de activar un efecto de hongo aleatorio para la habitación actual", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible100}} Otorga un pequeño Steven", -- Umbilical Cord
	-- Full old Desc: "Al tener medio corazón rojo o menos:#{{Collectible100}} Otorga un pequeño Steven#{{Collectible318}} 30% de probabilidad de otorgar un familiar Géminis al recibir daño#{{Luck}} 100% de probabilidad con 35 de suerte"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Al recibir daño, 5% de probabilidad de infligir 80 de daño a todos los enemigos en la habitación#{{BlackHeart}} Los corazones negros y los efectos similares al Necronomicon reciben +40 de daño extra", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 25% de probabilidad de generar medio corazón al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 25% de probabilidad de generar una bomba al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 25% de probabilidad de generar una llave al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Te camufla de forma aleatoria#{{Confusion}} Confunde a los enemigos#Puede usarse para abrir una \"Puerta Extraña\" en las \"Profundidades II\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Multiplica las estadisticas x1.2 si se encuentran por encima del valor base", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "{{Heart}} Los corazones rojos recibirán el daño antes que los de alma o negros#{{Warning}} El daño a corazones rojos reduce la probabilidad de encontrar salas del Diablo/Ángel", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Aparecerán tiendas en el Útero y en el Cadaver", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Aparecerán salas del tesoro en el Útero y en el Cadaver", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} Cura la mitad de tus corazones rojos/de hueso al entrar a un nuevo piso#{{HealingRed}} Cura medio corazón como mínimo", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} 17% de probabilidad de generar medio corazón de alma al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% de probabilidad de activar un efecto de jeringa aleatorio por habitación", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "{{Bomb}} Las bombas explotarán más rápido", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "{{Poison}} Aumenta el tamaño de los pedos", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "{{Bomb}} Permite abrir Puertas, Candados y Cofres Dorados con explosiones#También permite abrir una \"Puerta Extraña\" en las \"Profundidades II\"", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Al bajar a una nueva planta, se generan hasta cuatro recolectables no obtenidos de la planta anterior", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Usar un objeto activo lo reemplaza por otro", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} Suerte +4 para los efectos de lágrimas basados en la suerte", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "{{Heart}} 50% de probabilidad al recoger corazones rojos de convertirlos en arañas azules#100% de probabilidad al tener la salud al maximo#Puede convertir corazones necesarios para curarte", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Duplica la velocidad de disparo de los familiares", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Al inicio de cada planta, genera 4 fuegos fatuos del Libro de virtudes", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Las lágrimas giran en ángulos de 90 grados hacia los enemigos que no haya logrado golpear", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Se destruye si recibes daño", -- Perfection
	-- Full old Desc: "↑ {{Luck}} Suerte +10#Se destruye si recibes daño"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Las habitaciones del tesoro ofrecen un pacto del Diablo en lugar de un objeto", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} Recoger monedas tiene un 17% de probabilidad de agregar una carga al objeto activo#Mayor probabilidad al recoger monedas de mayor valor", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Todos tus familiares orbitarán a tu alrededor", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Activa tu objeto activo justo antes de recibir daño si está cargado", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Permite abrir las habitaciones que requieren llaves gratis, pero te enviará a una sala similar a la de Hush#Al completar esta habitación, te permite acceder a la habitación bloqueada", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Retrae todas las espinas, volviéndolas inofensivas#{{CursedRoom}} Afecta a las salas malditas, los cofres trampa y cualquier obstaculo con espinas", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "+15% Adicionál si aún no has entrado en uno#{{Planetarium}} Los planetarios ahora aparecen en el Útero y en el Cadaver", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +9% de probabilidad de planetario#+15% Adicionál si aún no has entrado en uno#{{Planetarium}} Los planetarios ahora aparecen en el Útero y en el Cadaver"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% de probabilidad de otorgar el efecto de un objeto de Mamá aleatorio por habitación", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% de probabilidad de otorgar un dado consumible por habitación#El dado desaparece al cambiar de habitación#El dado no ocupa un lugar de consumible", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Genera una {{TreasureRoom}} sala del tesoro y una {{Shop}} tienda en la Catedral", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 Contenedor de corazón al tenerlo", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Suelta 2 de tus monedas, llaves y bombas al recibir daño#Los recolectables pueden ser reemplazados por variantes de mayor valor", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Los cofres dorados pueden contener cartas, pildoras o trinkets extra", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Llave al recoger#{{GoldenChest}} Reemplaza todos los cofres por cofres dorados (excepto mega cofres y cofres viejos)#{{GoldenChest}} Los cofres dorados pueden contener cartas, pildoras o trinkets extra"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Genera un saco al cambiar de piso", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Las {{Shop}} tiendas y {{TreasureRoom}} salas de tesoro aparecerán en Sheol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 50% de probabilidad de convertirte en Azazel al limpiar una habitación#{{Timer}} El efecto dura hasta completar y salir de otra habitación", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Vuelve amistosas a todas las caquitas enemigas#Genera una caquita amistosa al limpiar una habitación", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Genera una bomba adicional por cada bomba colocada", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Desde el Útero en adelante, cambia las monedas y llaves que se generan por una bomba, corazón, pildora, carta, trinket, batería, o mosca enemiga", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% de probabilidad de otorgar el efecto de un Objeto pasivo aleatorio en cada habitación", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "25% de probabilidad de generar un hueso amistoso al limpiar una habitación", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} +1 corazón de hueso al comenzar un nuevo piso", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Al tenerlo, cuenta como 1 objeto para la transformación de Guppy", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} 33% de probabilidad de crear una habitación de Llave Roja al limpiar una habitación#Menor probabilidad al estar en una habitación de Llave Roja", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% de probabilidad de que los pactos del diablo cuesten monedas en lugar de corazones", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Recoger una moneda te teletransporta a una habitación aleatoria#Puede teletransportarte a habitaciones secretas", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Permite llevarse un objeto de pacto del Diablo gratis#{{Warning}} Tomar objetos de pacto afectará las probabilidades de encontrar salas de Ángel", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Evita que Krampus aparezca en salas del Diáblo#Las habitaciónes del Diáblo seran mejoradas con mas pactos, corazones negros y enemigos", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% de probabilidad de pacto del diablo#Evita que Krampus aparezca en salas del Diáblo#Las habitaciónes del Diáblo seran mejoradas con mas pactos, corazones negros y enemigos"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Abre el pasaje hacia \"???\" (Vientre azul) sin importar el tiempo", -- Strange Key
	-- Full old Desc: "Abre el pasaje hacia "???" (Vientre azul) sin importar el tiempo#{{Collectible297}} La Caja de Pandora consume la llave y genera 6 objetos de grupos aleatorios"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Genera un coágulo que imita tus movimientos#Copia tus estadisticas, tus efectos de lágrima y posee un 35% de tu daño#Se regenera cada habitación", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Genera un cofre al completar una {{ChallengeRoom}} sala de desafío#{{BossRushRoom}} Genera un objeto al completar una sala de desafíos de jefe", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "50% de probabilidad de explotar al recibir daño#No destruye máquinas de donación de sangre ni confesionarios, pero suelta recolectables como si lo hubiera hecho", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Los familiares imitan tus movimientos en lugar de seguirte#Soltar el trinket hará que se queden en el último lugar que estaban", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Familiar que imita tus movimientos y dispara lágrimas espectrales#Posee tus estadisticas, efectos e inflige el 50% de tu daño#Muere de un golpe#Reaparece tras cada piso", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Tu objeto activo obtendrá el efecto aleatorio de un objeto activo adicional de 1-2 cargas", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Entrar a una {{AngelRoom}} Sala del Ángel generará 5 fuegos fatuos#25% de probabilidad de generar un fuego al dar dinero a los mendigos", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% de probabilidad de añadir o duplicar un familiar por habitación", -- The Twins
	-- Full old Desc: "50% de probabilidad de añadir o duplicar un familiar por habitación#Otorga un {{Collectible8}} Hermano Bobby o una {{Collectible67}} Hermana Maggy si no tienes familiares"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Las tiendas venden familiares por 10 monedas", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "17% de probabilidad de generar una langosta aleatoria al matar a un enemigo", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Otorga una langosta de Abismo", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% de probabilidad de añadir un objeto adicional misterioso a la habitación del tesoro#50% de probabilidad de revelar el objeto misterioso en la ruta alternativa", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Matar a un enemigo petrificado lo congela", -- Ice Cube
	-- Full old Desc: "20% de probabilidad de petrificar a enemigos aleatorios al entrar en una habitación#{{Freezing}} Matar a un enemigo petrificado lo congela"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Matar a un enemigo otorga un escudo durante un segundo#Matar más enemigos aumenta la duración del escudo", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Te teletransporta a la sala del tesoro#{{Planetarium}} Te llevará al planetario si se generó uno", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} Remueve la Maldición de Oscuridad", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Salud al maximo#Inflige 100 de daño a todos los enemigos#{{Timer}} Revela el mapa de la planta por completo (excepto las {{SuperSecretRoom}} Habitaciónes Super / {{UltraSecretRoom}} Ultra Secretas)#{{CurseDarkness}} Remueve la Maldición de Oscuridad"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "{{Beggar}} Genera un mendigo#{{DemonBeggar}} 33% de probabilidad de generar un mendigo demoníaco#2% de probabilidad de generar:#{{KeyBeggar}} Un mendigo de llaves#{{BombBeggar}} Un mendigo de bombas#{{BatteryBeggar}} Un mendigo de baterías#{{RottenBeggar}} Un mendigo podrido", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Convierte todos los recolectables, cofres y enemigos no jefes en bombas aleatorias", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Convierte todos los recolectables, cofres y enemigos no jefes en monedas aleatorias", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Convierte todos los recolectables, cofres y enemigos no jefes en llaves aleatorias", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} Convierte todos los recolectables, cofres y enemigos no jefes en corazones aleatorios", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Genera una trampilla#{{LadderRoom}} Genera una mazmorra si se usa sobre un elemento decorativo", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Usar la carta la lanza en tu direccion de movimiento#Mata a TODOS los enemigos al instante (Excepto Delirium y La Bestia)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} Otorga un escudo de Manto Sagrado de un solo uso", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Activa el efecto de una runa aleatoria#El efecto es más débil que el original", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Deja caer tus corazones y recolectables al suelo#Te deja a medio corazón#Los recolectables pueden generarse como {{Collectible74}} Un Cuarto y {{Collectible19}} ¡Buum! si hay una cantidad suficiente", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} Otorga un aura que repéle proyectiles y enemigos durante 60 segundos", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Timer}} El Pie de Mamá tratará de pisarte por 60 segundos", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "{{BossRoom}} Te teletransporta a una sala del jefe adicional#Derrotar al jefe otorga una recompensa#El jefe proviene de 2 plantas mas abajo de la actual", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Genera un objeto del grupo de la sala actual#{{BrokenHeart}} Convierte 1 corazón rojo o 2 corazones de alma en un corazón roto", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#Te convierte en una estatua invencible", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} Otorga durante 10 segundos:#↑ {{Tears}} Lágrimas x4#Te convierte en una estatua invencible"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} Genera 2-4 cofres dorados", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} Convierte los recolectables y objetos de la habitación en monedas#El valor de las monedas es el mismo que su precio en la tienda#Genera una moneda si no hay nada que convertir", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} Activa un efecto aleatorio de la sala de dados", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} Los enemigos de la habitación se vuelven más {{Slow}} lentos y reciben el doble de daño durante 30 segundos", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Disparo triple#{{Coin}} Los enemigos asesinados dejan caer monedas", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} Otorga durante 30 segundos:#↓ {{Speed}} velocidad -0.10#Disparo triple#{{Coin}} Los enemigos asesinados dejan caer monedas"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Activa el efecto del Libro de los Muertos#Genera entidades de hueso por cada enemigo eliminado en la habitación", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Consumes 5 píldoras aleatorias", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Timer}} Otorga durante 60 segundos:#{{Collectible33}} Activa el efecto de La Biblia#{{Collectible390}} Genera un familiar Serafín#{{MomsHeart}} Mata al Pie de Mamá y al Corazón de Mamá de forma instantanea#{{Warning}} Te mata al usarlo contra Satán", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Genera 7 grupos de rocas y obstáculos aleatorios", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Elimina el objeto pasivo más antiguo#Genera 2 objetos aleatorios del grupo de la sala actual", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Te teletransporta a la sala ultrasecreta#{{Collectible580}} Genera un camino de vuelta con habitaciones rojas", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{BoneHeart}} Convierte los contenedores de corazón en corazones de hueso (reversible)", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} Otorga durante la planta actual:#↑ {{Damage}} Daño +1.5#Permite volar#Lágrimas espectrales#{{BoneHeart}} Convierte los contenedores de corazón en corazones de hueso (reversible)#{{CurseDarkness}} Otorga Maldición de Oscuridad"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Genera una máquina de reabastecimiento", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Genera una trampilla a una mazmorra", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Llave Roja de un solo uso", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Copia el efecto del último recolectable activado: píldora, carta, runa, piedra de alma u objeto activo", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Hace que los objetos en pedestal de la habitación alternen entre 2 objetos distintos", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} Otorga durante la habitación actual:#{{HalfHeart}} Los enemigos sueltan medio corazón rojo al morir#Los corazones desaparecen tras 2 seconds", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Abre todas las puertas de la habitación#{{Collectible580}} Crea habitaciones rojas en cada pared", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Te convierte en un fantasma que puede atravesar enemigos y paralizarlos#Tras unos segundos, les ataca a todos", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "Suelta 8 pedos venenosos con creep marrón#Después deja un creep y 7 Bombas de Trasero#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "Suelta 8 pedos venenosos con creep marrón#Después deja un creep y 7 Bombas de Trasero#Quedarse en el creep otorga:#↑ {{Tears}} Lágrimas +1.35#↑ {{Damage}} Daño+1 "
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "14 familiares Dead Bird atacan a los enemigos# Dura en la habitación actual", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Te convierte en Sansón berserker con ataque a melee durante 10 segundos#↑ +0.4 de velocidad#↑ Más lágrimas#↑ +3 de daño", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Activa el efecto de {{Collectible441}} Mega Ráfaga durante 7.5 segundos", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Mueres y revives inmediatamente con medio corazón y unos segundos de invencibilidad#Se consume automáticamente al recibir daño fatal (como una vida adicional)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Activa el efecto de D6 {{Collectible105}} y el de D20 {{Collectible166}}#El objeto cambiado usa grupos de objetos aleatorios", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Te convierte en El Perdido en la habitación actual", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Añade un familiar aleatorio", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Genera 15 langostas aleatorias", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Aparece El Olvidado como un segundo personaje en la habitación actual", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Genera 6 fuegos fatuos del Libro de las Virtudes con propiedades aleatorias", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Aparece Esaú como un segundo personaje en la habitación actual", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Intercambia el número de {{Bomb}} bombas y de {{Key}} llaves#También intercambia las bombas y llaves doradas", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} Pixela la pantalla durante 30 segundos", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Te ralentiza a ti y a todos los enemigos de la habitación", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} Aumenta tu velocidad y la de todos los enemigos de la habitación#Reactiva el efecto luego de 30 y 60 segundos", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Efecto de píldora aleatorio#Probabilidad de destruirse tras cada uso", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Envenena toda la habitación", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Warning}} Te inflige 2 corazones de daño#Se vuelve una pildora de Salud Completa (+3 Corazones de Alma) al tener 1 corazón de salud o menos", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Intercambia el número de {{Bomb}} bombas y de {{Key}} llaves#Aumenta el número de llaves y de bombas en un 50%#Las bombas y llaves doradas también se intercambian", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Genera enormes bombas troll teledirigidas en tu posición", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Se vuelve una pildora de Mas Vida al tener 1 o menos contenedores de corazón", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2 de Vida#Se vuelve una pildora de Mas Vida al tener 1 o menos contenedores de corazón"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Añade 1 Gran fan orbital#No hay límite máximo", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} Recarga por completo el objeto activo", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Recarga por completo el objeto activo#{{Battery}} Deja caer 3-4 baterías"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} Drena todos los contenedores de corazón menos uno", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} Drena todos los contenedores de corazón menos uno#{{Heart}} Genera 1-4 corazones rojos"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "No puedes moverte ni disparar durante 4 segundos", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Convierte a los enemigos de la habitación actual en amigos", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Genera un charco de fluido que cubre el suelo y daña a los enemigos", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} Disparas en diagonal durante 60 segundos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Genera una caca detras de tí durante 10 segundos", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Maldición del Laberinto durante todo el piso", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Te haces mucho más grande#No afecta a la hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Te haces mucho más pequeño#Tu hitbox se hace más pequeña", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Genera 2 arañas azules por cada caca de la habitación", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Genera 2 arañas azules por cada enemigo de la habitación#Genera 2-6 arañas azules si no hay enemigos en la habitación", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "{{Timer}} Pixela la pantalla durante 30 segundos", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Genera una piscina de fluido resbaladizo persistente", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} Genera una piscina de fluido ralentizante persistente", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Te ralentiza a ti y a los enemigos de la habitación", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "{{Timer}} Aumenta tu velocidad y la de los enemigos de la habitación#Reactiva el efecto luego de 30 y 60 segundos", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "{{Trinket}} Consume el trinket actual y otorga sus efectos de forma permanente", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Dispara un grupo de lágrimas de {{Collectible149}}Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Genera la última píldora usada como una píldora para caballos", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Aumenta una estadística aleatoria dos veces#↓ Disminuye otra estadística aleatoria dos veces", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Efecto de píldora de caballo aleatorio#Probabilidad de destruirse tras cada uso", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
