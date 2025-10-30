---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "Lágrimas con efecto boomerang", -- My Reflection
	-- Full old Desc: "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#↑ {{Shotspeed}} Vel. de lágrimas +0.6#Lágrimas con efecto boomerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Dispara lágrimas normales que infligen 3.5 de daño", -- Brother Bobby
	-- Full old Desc: "Dispara lágrimas normales que infligen 3.5 de daño"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Las moscas enemigas serán inofensivas o aliadas", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Reaparecerás con la salud al maximo tras morir", -- 1up!
	-- Full old Desc: "↑ +1 Vida extra#Reaparecerás con la salud al maximo tras morir"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Los enemigos envenenados pueden soltar corazones negros al morir", -- The Virus
	-- Full old Desc: "↓ {{Speed}} Velocidad -0.1#{{Poison}} Tocar enemigos los envenena#{{BlackHeart}} Los enemigos envenenados pueden soltar corazones negros al morir"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Revela los iconos del mapa#No revela las habitaciónes del mapa", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} Permite volar durante la habitación actual#Mata al instante al Pie de Mamá y al Corazón de Mamá#{{Warning}} Te mata al instante al usarlo contra Satán", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Genera una caca en el suelo y empuja a los enemigos cercanos#Colocarla al lado de una fosa y destruirla con una bomba creará un puente", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Dispara 10 lágrimas en un círculo a tu alrededor#Las lágrimas copian tus efectos e infligen tu daño + 25", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Petrifica a todos los enemigos en la habitación durante 4 segundos", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Provoca una explosión en la ubicación del jugador", -- Kamikaze!
	-- Full old Desc: "Provoca una explosión en la ubicación del jugador#Inflige 40 de daño"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Asusta a todos los enemigos en la habitación durante 5 segundos", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "{{Throwable}} Cabeza explosiva lanzable#{{Poison}} La explosion inflige tu daño + 50 y envenena a los enemigos cercanos", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Te teletransporta a una habitación aleatoria (excepto a la habitación I AM ERROR)", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% de probabilidad de generar un recolectable tras limpiar una habitación#Aumenta la probabilidad de ganar al apostar", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} Suerte +1#+8% de probabilidad de generar un recolectable tras limpiar una habitación#Aumenta la probabilidad de ganar al apostar"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Al activarse, invoca un ataque aéreo controlable#{{Damage}} Los cohetes infligen 20 veces tu daño", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Reemplaza el siguiente disparo por un rayo", -- Shoop da Whoop!
	-- Full old Desc: "Reemplaza el siguiente disparo por un rayo#Inflige 26 veces tu daño durante 0.9 segundos"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} Las bombas infligen 5 veces tu daño + 30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} Lágrimas x0.4#Reemplaza tus lágrimas por bombas#{{Damage}} Las bombas infligen 5 veces tu daño + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Atrae a los recolectables cercanos hacia el jugador", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Revela las habitaciónes del mapa#No revela los iconos del mapa", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Genera una charco de limonada#La limonada inflige 24 de daño cada segundo", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Mosca orbital de medio alcance", -- Distant Admiration
	-- Full old Desc: "Mosca orbital de medio alcance#Inflige 75 de daño por contacto cada segundo"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Permite caminar sobre fosas de hasta un cuadro de distancia", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Cura medio corazón por cada 13 enemigos asesinados", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} Permite a los objetos activos almacenar el doble de cargas", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Reduce el costo de las tiendas en un 50%", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Genera 6 bombas troll cerca del centro de la habitación", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Ralentiza a los enemigos durante 8 segundos", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Dispara lágrimas normales que infligen 3.5 de daño", -- Sister Maggy
	-- Full old Desc: "Dispara lágrimas normales que infligen 3.5 de daño"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Reemplaza tus lágrimas con láseres", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Permite cargar las lágrimas#↑ {{Damage}} El daño aumenta con el tiempo de carga hasta llegar al 400%#{{Tears}} El tiempo de carga maximo es 2.5 veces tus lágrimas", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "NVL1: Orbital#NVL2: Orbital que dispara#NVL3: Meat boy#NVL4: Super Meat boy", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Las máquinas de donación de sangre sueltan más {{Coin}} monedas", -- PHD
	-- Full old Desc: "{{HealingRed}} Cura 2 corazones#{{Pill}} Genera 1 píldora#{{Pill}} Transforma las píldoras malas en píldoras buenas#{{BloodDonationMachine}} Las máquinas de donación de sangre sueltan más {{Coin}} monedas"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Abre las entradas de todas las salas secretas", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "Probabilidad de reemplazar al jefe del piso actual por un Jinete al usarse", -- Book of Revelations
	-- Full old Desc: "+{{SoulHeart}} 1 Corazón de alma#{{AngelDevilChance}} +17.5% de probabilidad de encontrar salas de Angel/Diablo al tenerlo#Probabilidad de reemplazar al jefe del piso actual por un Jinete al usarse"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Reaparece con 1 contenedor de corazón tras morir#{{Warning}} Establece tus contenedores de corazón en 1 al tomarlo", -- Dead Cat
	-- Full old Desc: "↑ +9 Vidas extra#Reaparece con 1 contenedor de corazón tras morir#{{Warning}} Establece tus contenedores de corazón en 1 al tomarlo"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#Permite romper rocas caminando sobre ellas", -- The Nail
	-- Full old Desc: "Al usarlo:#{{SoulHeart}} +1 Corazón de alma#{{Timer}} Otorga durante la habitación:#↑ {{Damage}} Daño +0.7#↓ {{Speed}} Velocidad -0.18#Inflige 40 de daño por contacto cada segundo#Permite romper rocas caminando sobre ellas"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Genera una trampilla hacia el siguiente piso#{{LadderRoom}} 10% de probabilidad de generar una trampilla a una mazmorra", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Monstro aplasta a un enemigo al azar, infligiendo 120 de daño#{{Warning}} Monstro aplastará al jugador si no hay enemigos en la sala", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Embiste en la dirección de tus disparos", -- Little Chubby
	-- Full old Desc: "Embiste en la dirección de tus disparos#Inflige 52.5 de daño por contacto cada segundo"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Revela el tipo de las habitaciónes adyacentes#{{SecretRoom}} Revela las habitaciónes secretas y súper secretas", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} Asusta a todos los enemigos en la sala", -- The Gamekid
	-- Full old Desc: "{{Timer}} Otorga durante 6.5 segundos:#Invencibilidad#No puedes disparar, pero infliges 40 de daño por contacto cada segundo#{{HealingRed}} Probabilidad de curar medio corazón rojo al matar un enemigo#{{Fear}} Asusta a todos los enemigos en la sala"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Genera una moneda aleatoria cada 2 habitaciones", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Dispara láseres que infligen 3.5 de daño", -- Robo-Baby
	-- Full old Desc: "Dispara láseres que infligen 3.5 de daño"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Genera medio corazón rojo cada 3 habitaciones", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Dispara lágrimas ralentizantes que infligen 3.5 de daño", -- Little Gish
	-- Full old Desc: "{{Slow}} Dispara lágrimas ralentizantes que infligen 3.5 de daño"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Dispara lágrimas teledirigidas que infligen 3.5 de daño", -- Little Steven
	-- Full old Desc: "Dispara lágrimas teledirigidas que infligen 3.5 de daño"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Las lágrimas se dividen en 2 al impactar#Las lágrimas divididas infligen la mitad de daño", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Cambia los objetos en pedestales de la habitación actual por otros", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} Durante la habitación actual:#Permite volar#Tu cuerpo se separa y ataca a los enemigos#El cuerpo inflige 82.5 de daño por contacto cada segundo"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Reduce todo el daño recibido a medio corazón", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 de daño por cada {{Coin}} moneda que tengas", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Pedo venenoso#{{Poison}} Eenvenena e inflige 5 de daño a los enemigos cercanos#El veneno inflige tu daño 6 veces", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Acelera a los otros orbitales", -- Guardian Angel
	-- Full old Desc: "Familiar orbital#Acelera a los otros orbitales#Bloquea proyectiles#Inflige 105 de daño por contacto cada segundo"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Dispara automáticamente a los enemigos cercanos", -- Demon Baby
	-- Full old Desc: "Dispara automáticamente a los enemigos cercanos#Inflige 3 de daño por lágrima"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "{{Chargeable}} Reemplaza tus lágrimas por un cuchillo lanzable#{{Damage}} Al tenerlo en la mano inflige 2 veces tu daño#Inflige 6 veces tu daño al recorrer su máxima distancia", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} Carga automaticamente la primera barra de los objetos activos#{{Battery}} Carga por completo el objeto activo actual", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Invoca un pajaro que ataca a los enemigos tras recibir daño", -- Dead Bird
	-- Full old Desc: "Invoca un pajaro que ataca a los enemigos tras recibir daño#El pájaro inflige 4.3 de daño por contacto cada segundo"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Al tener medio corazón o menos:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Al tener medio corazón o menos:#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +1.5"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} Genera un familiar aleatorio durante la habitación actual", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Activa un efecto aleatorio de una lista de objetos activos", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Bombas teledirigidas", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bombas#Bombas teledirigidas"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} Daño +1.2 en la habitación actual#{{Warning}} Inflige 1 corazón de daño al usarse#{{Heart}} Remueve primero los corazones rojos", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Reinicia y cambia el piso actual#Se consume tras usarlo", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Mosca orbital de largo alcance", -- Forever Alone
	-- Full old Desc: "Mosca orbital de largo alcance#Inflige 30 de daño por contacto cada segundo"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Al tenerlo:#{{Speed}} Establece tu velocidad minima a 1.5#Permite volar#Al usarlo, embiste en la dirección de movimiento", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Suelta 1 bomba cada 3 habitaciones", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} El daño de tus lágrimas aumentará con la distancia recorrida", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} Convierte 1 contenedor de corazón en 3 corazones de alma", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% de probabilidad de remplazar la recompensa de habitación por un cofre#33% de probabilidad de eliminar la recompensa", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} Te inflige medio corazón de daño y genera 1-2 monedas#{{Heart}} Remueve primero los corazones rojos", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Genera un señuelo que atrae a los enemigos y explota tras 5 segundos", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Las bombas colocadas ya no explotarán automaticamente#Permite detonar las bombas colocadas de forma remota", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bombas#Las bombas colocadas ya no explotarán automaticamente#Permite detonar las bombas colocadas de forma remota"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Permite llevar 2 trinkets", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} Bombas venenosas", -- Bob's Curse
	-- Full old Desc: "↑ {{Bomb}} +5 Bombas#{{Poison}} Bombas venenosas"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart]] +1 Corazón de alma al recibir daño teniendo medio corazón#Solo puede activarse una vez por habitación", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Recoge monedas cercanas#Genera recolectables aleatorios tras recoger 3-4 monedas", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "{{Timer}} Durante la habitación actual:#Permite romper rocas al caminar sobre ellas#Permite romper las paredes que conducen a habitaciones secretas", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "{{Poison}}Las lágrimas explotan y envenenan a los enemigos cercanos", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} Daño +40#↓ {{Tears}} Lágrimas x0.5#Tus lágrimas son disparadas en arco#{{Poison}}Las lágrimas explotan y envenenan a los enemigos cercanos"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Las lágrimas tienen 1/6 de probabilidad de generar moscas azules al golpear un enemigo", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "Remplaza tu ojo derecho con un láser continuo#{{Damage}} El láser inflige 3 veces tu daño cada segundo", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} Lágrimas x0.5#↓ {{Damage}} Daño x0.65#Remplaza tu ojo derecho con un láser continuo#{{Damage}} El láser inflige 3 veces tu daño cada segundo"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Flota por la habitación", -- The Peeper
	-- Full old Desc: "Flota por la habitación#Inflige 17 de daño por contacto cada segundo"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Recibir daño añade una carga a tu objeto activo", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} Al ser golpeado, aumenta hasta 6 veces tu daño#La bonificación se reinicia tras cambiar de planta", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Puede generar:#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Puede generar:#Un {{SoulHeart}} Corazón de Alma, {{Card}} carta o {{Rune}} runa#{{Timer}} Revela el mapa del piso actual(excepto la {{SuperSecretRoom}} Habitación Súper Secreta)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Genera 5 rayos de luz cerca de tus enemigos#Cada rayo inflige 8 veces tu daño +160 cada 0.8 segundos", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Reapareces como ??? (Blue Baby) tras morir", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Dispara lágrimas espectrales que infligen 3.5 de daño", -- Ghost Baby
	-- Full old Desc: "Dispara lágrimas espectrales que infligen 3.5 de daño"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Lanza un fuego azul#Inflige daño por contacto, bloquea proyectiles enemigos y desaparece tras 2 segundos", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Cambia todos los recolectables en la habitación", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Dispara dos lágrimas en un patrón en V que infligen 4 de daño", -- Harlequin Baby
	-- Full old Desc: "Dispara dos lágrimas en un patrón en V que infligen 4 de daño"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Reemplaza tus lágrimas por un ataque aéreo controlable#{{Damage}} Los cohetes infligen 20 veces tu daño", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Aplasta a un enemigo cercano cada 4 segundos", -- Daddy Longlegs
	-- Full old Desc: "Aplasta a un enemigo cercano cada 4 segundos#Inflige 40 de daño por segundo"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} Ralentiza a los enemigos durante 4 segundos", -- Spider Butt
	-- Full old Desc: "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Inflige 10 de daño a todos los enemigos"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Dispara lágrimas aleatorias que infligen 3-5 de daño", -- Rainbow Baby
	-- Full old Desc: "Dispara lágrimas aleatorias que infligen 3-5 de daño"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Abre todas las puertas en la habitación actual#Puede abrir las {{SecretRoom}}/{{SuperSecretRoom}} Salas Secretas, {{ChallengeRoom}}/{{BossRushRoom}} Salas de Desafio y la puerta de Mega Satán", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "{{Coin}} Probabilidad de generar un recolectable aleatorio a cambio de una moneda", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Genera un charco de agua bendita tras recibir daño#El charco inflige 24 de daño cada segundo", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Te tiras un pedo al recibir daño#{{Poison}} El pedo envenena a los enemigos cercanos", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Al tenerlo:#{{Speed}} Establece tu velocidad minima en 1.5#Permite volar#Al usarlo, embiste en la dirección de movimiento, dejando un rastro de rayos de luz", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} Remueve primero los corazones rojos", -- Blood Rights
	-- Full old Desc: "Inflige 40 de daño a cada enemigo#{{Warning}} Te inflige 1 corazón de daño al usarlo#{{Heart}} Remueve primero los corazones rojos"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Bola de pelos que te sigue#Bloquea proyectiles e inflige daño a enemigos#Matar enemigos aumenta su tamaño y daño", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Refleja tus movimientos#Dispara hacia tu ubicación", -- Abel
	-- Full old Desc: "Refleja tus movimientos#Dispara hacia tu ubicación#Inflige 3.5 de daño"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Tus lágrimas obtienen efectos aleatorios cada 2-3 segundos", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Genera 1 recolectable de cada tipo", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Los cofres contienen más recolectables", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Llaves#Los cofres contienen más recolectables"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Convierte a los enemigos en estatuas de oro al tocarlos#Inflige daño por contacto basado en tu cantidad de monedas#{{Coin}} Los enemigos dorados dejan caer monedas al morir#Mayor probabilidad de que la caca que genéres sea dorada", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Reemplaza los recolectables por sus versiones dobles", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% de probabilidad de soltar un recolectable aleatorio tras recibir daño", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Carga el objeto activo a cambio de 2 corazones por carga faltante#Solo funciona si el objeto activo no tiene cargas", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "NVL1: Orbital#{{Charm}} NVL2: Orbital que dispara lágrimas encantadoras#{{Charm}} NVL3: Bandage girl#{{Charm}} NVL4: Bandage girl NVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "+15% de probabilidad de encontrar enemigos campeones#No aumenta la probabilidad de encontrar jefes campeones", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} Daño +1#+15% de probabilidad de encontrar enemigos campeones#No aumenta la probabilidad de encontrar jefes campeones"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Las explosiones dañan y confunden a todos los enemigos en la habitación", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Confusion}} Las explosiones dañan y confunden a todos los enemigos en la habitación"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Otorga invencibilidad tras quedarte quieto por 1 segundo", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% de probabilidad de reaparecer con medio corazón tras morir", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Las lágrimas bloquean proyectiles enemigos", -- Lost Contact
	-- Full old Desc: "↓ {{Shotspeed}} Vel. de lágrimas -0.16#Las lágrimas bloquean proyectiles enemigos"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} Al recibir daño, deja un rastro de fluido en el suelo durante la habitación#El fluido inflige 6 de daño cada segundo", -- Anemic
	-- Full old Desc: "↑ {{Range}} Alcance +5 #{{Timer}} Al recibir daño, deja un rastro de fluido en el suelo durante la habitación#El fluido inflige 6 de daño cada segundo"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 50% de probabilidad de curar medio corazón cada minuto", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#{{HealingRed}} 50% de probabilidad de curar medio corazón cada minuto"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Tus bombas disparan 10 lágrimas en un circulo al explotar", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Tus bombas disparan 10 lágrimas en un circulo al explotar"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Las lágrimas rebotan al chocar contra paredes, enemigos y obstáculos", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} Lágrimas +2#Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Otorga inmunidad a las explosiones#{{HealingRed}} Ser golpeado por explosiones cura 1 corazón", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombas#Otorga inmunidad a las explosiones#{{HealingRed}} Ser golpeado por explosiones cura 1 corazón"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Las lágrimas se dividen en 4 al impactar#Las lágrimas divididas infligen la mitad de daño", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} Lágrimas +1#↑ {{Tearsize}} Tamaño de lágrimas x1.2#↓ {{Range}} Alcance -10#Las lágrimas se dividen en 4 al impactar#Las lágrimas divididas infligen la mitad de daño"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Probabilidad de generar un corazón de alma al recibir daño#{{HalfHeart}} Probabilidad de que los enemigos dejen caer medio corazón rojo al morir", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} Genera 1-2 monedas al recibir daño", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 monedas#{{Coin}} Genera 1-2 monedas al recibir daño"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos", -- Mom's Perfume
	-- Full old Desc: "↑ {{Tears}} Lágrimas +1#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} Otorga un ataque cargado que escupirá una ráfaga de lágrimas rojas, similar a Monstro", -- Monstro's Lung
	-- Full old Desc: "↓ {{Tears}} Lágrimas x0.23#{{Chargeable}} Otorga un ataque cargado que escupirá una ráfaga de lágrimas rojas, similar a Monstro"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos", -- Abaddon
	-- Full old Desc: "#↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.5#↓ {{EmptyHeart}} Remueve todos tus contenedores de corazón#↑ {{BlackHeart}} +6 Corazones negros#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "Deja un rastro de fluido que ralentiza a los enemigos", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% de probabilidad de disparar lágrimas ralentizantes#{{Luck}} 100% de probabilidad con 18 de suerte#Deja un rastro de fluido que ralentiza a los enemigos"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} Ralentiza a los enemigos en la habitación de forma permanente al recibir daño", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.3#{{Slow}} Ralentiza a los enemigos en la habitación de forma permanente al recibir daño"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Las lágrimas orbitan a tu alrededor", -- Tiny Planet
	-- Full old Desc: "↑ {{Tearsize}} Tamaño de lágrimas +7#Lágrimas espectrales#Las lágrimas orbitan a tu alrededor"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Genera una araña azul al matar a un enemigo", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Convierte a los enemigos en caca al tocarlos", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Juntar ambas Piezas de llave abrirá una puerta Dorada#{{AngelRoom}} +25% de probabilidad de encontrar salas de Ángel#{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Juntar ambas Piezas de llave abrirá una puerta Dorada#{{AngelRoom}} +25% de probabilidad de encontrar salas de Ángel#{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Duplica las recompensas al limpiar habitaciónes#33% de probabilidad de eliminar las recompensas", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% de probabilidad de bloquear proyectiles enemigos", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Escudo que bloquea proyectiles en la dirección que disparas", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Dispara láseres ocasionalmente junto a tus lágrimas", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Disparas 2 lágrimas a la vez", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Revela las habitaciones secretas en el mapa", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Duplica el daño de los familiares", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Duplica el daño de las moscas y arañas azules", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Permite elegir entre 2 objetos al derrotar un jefe", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Convierte todas las bombas recolectables en bombas dobles", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Permite llevar 2 cartas#Convierte todas las píldoras en cartas", -- Starter Deck
	-- Full old Desc: "{{Card}} Genera una carta al recogerlo#Permite llevar 2 cartas#Convierte todas las píldoras en cartas"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Permite llevar 2 píldoras#Convierte todas las cartas en píldoras", -- Little Baggy
	-- Full old Desc: "{{Pill}} Genera una píldora al recogerlo#Permite llevar 2 píldoras#Convierte todas las cartas en píldoras"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} Tus bombas dejan una llama al explotar", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Burning}} Tus bombas dejan una llama al explotar"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} La explosión puede hacerte daño", -- Fire Mind
	-- Full old Desc: "{{Burning}} Tus lágrimas incendian a los enemigos#10% de probabilidad de disparar lágrimas que explotan al impactar enemigos#{{Luck}} 100% de probabilidad con 13 de suerte#{{Warning}} La explosión puede hacerte daño"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Cambia todos tus objetos y estadísticas al recogerlo y tras cambiar de piso", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Otorga inmunidad a las maldiciones", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Otorga inmunidad a las maldiciones#↑ {{BlackHeart}} +1 Corazón negro#{{AngelDevilChance}} +15% de probabilidad de encontrar salas de Ángel/Diablo"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida", -- Proptosis
	-- Full old Desc: "↑{{Damage}} Daño x2#↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 corazón negro#Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Ataca a los enemigos cercanos tras recibir daño", -- Smart Fly
	-- Full old Desc: "Mosca orbital#Ataca a los enemigos cercanos tras recibir daño#Inflige 22.5 de daño por contacto cada segundo"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Bloquea proyectiles enemigos#Tras bloquear un proyectil, 10% de probabilidad de infligir daño a los enemigos en la habitación", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} Deja un rastro de fluido ralentizante#Genera 1-2 arañas azules tras limpiar una habitación", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Dispara láseres#Se mueve en la diercción que estes disparando", -- Robo-Baby 2.0
	-- Full old Desc: "Dispara láseres#Inflige 3.5 de daño por disparo#Se mueve en la diercción que estes disparando"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Genera moscas azules al disparar", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Deja un rastro de fluido en el suelo#El fluido inflige 6 de daño por contacto cada segundo", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Persigue a los enemigos#{{HealingRed}} Cura medio corazón al matar un enemigo", -- Leech
	-- Full old Desc: "Persigue a los enemigos#{{HealingRed}} Cura medio corazón al matar un enemigo#Inflige 3.2 de daño por contacto cada segundo"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Genera recolectables aleatorios cada 5-6 habitaciones", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Mosca explosiva aliada#{{Warning}} La explosión puede herir al jugador", -- BBF
	-- Full old Desc: "Mosca explosiva aliada#La explosión inflige 60 de daño#{{Warning}} La explosión puede herir al jugador"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "{{Throwable}} Familiar lanzable#{{Poison}} La explosión inflige 60 de daño y envenena a los enemigos cercanos", -- Bob's Brain
	-- Full old Desc: "{{Throwable}} Familiar lanzable#{{Poison}} La explosión inflige 60 de daño y envenena a los enemigos cercanos#{{Warning}} La explosión puede herir al jugador"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Al recibir daño, genera un orbital de alcance medio durante la sala", -- Best Bud
	-- Full old Desc: "Al recibir daño, genera un orbital de alcance medio durante la sala#Inflige 75 de daño por contacto cada segundo"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} Familiar que carga y dispara un {{Collectible118}} rayo de sangre", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} Familiar que carga y dispara un {{Collectible118}} rayo de sangre#El rayo inflige 31.5 de daño cada 0.63 segundos"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Te vuelves invulnerable#{{Warning}} Recibirás daño si golpéan al familiar corazón", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} Persigue y asusta a los enemigos cercanos", -- Lil Haunt
	-- Full old Desc: "{{Fear}} Persigue y asusta a los enemigos cercanos#Inflige 4 de daño por contacto cada segundo"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Recoge corazones rojos cercanos#{{SoulHeart}} Genera 1 Corazón de alma o una araña tras recoger 1.5 corazones rojos", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Orbital grande", -- Big Fan
	-- Full old Desc: "Orbital grande#Inflige 30 de daño por contacto cada segundo"
	-- English: "Large orbital"

	[C_ID .. 280] = "Invoca arañas azules en habitaciones hostiles de forma aleatoria", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Señuelo que deambula por la habitación#Los enemigos lo atacarán en vez de al jugador si está cerca", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Permite saltar sobre pozos y obstaculos", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Cambia los objetos en pedestales y los recolectabes en la habitación#{{Warning}} Cambia todos los objetos pasivos del jugador", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Cambia los objetos pasivos del jugador", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Cambia a los enemigos en la habitación", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Copia el efecto de la carta o runa que tengas sin consumirla", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Lanza fuego rojo#La llama Inflige daño por contacto y bloquea proyectiles enemigos#Desaparece luego de infligir daño o bloquear proyectiles 5 veces", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Permite almacenar hasta 4 corazones rojos al tener la salud al maximo#Usar el objeto suelta los corazones almacenados en el suelo", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Convierte a los enemigos comunes en caca#Mata de forma instantánea a enemigos y jefes de caca", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Dispara un rayo de Azufre en 4 direcciones", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Dispara un rayo de Azufre en 4 direcciones#Los rayos infligen 440 de daño cada 1.33 segundos"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Empuja a los enemigos y proyectiles cercanos", -- Butter Bean
	-- Full old Desc: "Empuja a los enemigos y proyectiles cercanos#10% de probabilidad de convertirse en {{Collectible484}} Espera, ¿qué? tras intercambiarlo por otro objeto activo y volverlo a recoger"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Inflige el doble de tu daño a toda la habitación#{{Coin}} Usarlo cuesta 1 moneda", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Convierte 2 Corazones Negros o de Alma en un Contenedor de corazón", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Obtienes velocidad gradualmente en habitaciónes hostiles#{{Speed}} Al alcanzar 2 de velocidad, otorga invencibilidad y daño por contacto#Solo se activa 1 vez por habitación", -- Taurus
	-- Full old Desc: "↓ {{Speed}} Velocidad -0.3#↑ {{Speed}} Obtienes velocidad gradualmente en habitaciónes hostiles#{{Speed}} Al alcanzar 2 de velocidad, otorga invencibilidad y daño por contacto#Solo se activa 1 vez por habitación"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Permite infligir daño por contacto a los enemigos", -- Aries
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.25#Permite infligir daño por contacto a los enemigos"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Tras recibir daño, reduce el daño que recibas en la habitación a la mitad", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Corazones de Alma#Tras recibir daño, reduce el daño que recibas en la habitación a la mitad"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Permite romper las rocas al caminar sobre ellas", -- Leo
	-- Full old Desc: "Aumenta tu tamaño#Permite romper las rocas al caminar sobre ellas"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Probabilidad de volverte invencible tras recibir daño#{{Luck}} 100% de probabilidad con 10 de suerte#{{Pill}} Convierte las píldoras negativas en positivas", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Equilibra tus estadísticas#Se distribuirán los cambios de estadísticas futuros", -- Libra
	-- Full old Desc: "+6 {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves#Equilibra tus estadísticas#Se distribuirán los cambios de estadísticas futuros"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Dejas un rastro de fluido#El fluido inflige 6 de daño por segundo", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "Aumenta el empuje de las lágrimas", -- Pisces
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.5#↑ {{Tearsize}} Tamaño de lágrima x1.25#Aumenta el empuje de las lágrimas"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "↑ +1 Vida extra#{{Player12}} Al morir, reapareces como Judas Oscuro con el doble de daño", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Duplica la curación obtenida por corazones rojos", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#Duplica la curación obtenida por corazones rojos"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Ignora el daño recibido una sola vez por habitación", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Permite romper rocas al caminar sobre ellas", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 de Vida#↓ {{Speed}} Velocidad -0.4#Permite romper rocas al caminar sobre ellas"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Lágrimas magnéticas#Las lágrimas atraerán enemigos, recolectables y trinkets", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Recibir daño mientras carga el ataque te teletrasnporta a una habitación aleatoria", -- Cursed Eye
	-- Full old Desc: "{{Chargeable}} Ola cargable de 4 lágrimas#{{Warning}} Recibir daño mientras carga el ataque te teletrasnporta a una habitación aleatoria"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Las lágrimas dejan fluido en el suelo#El fluido inflige 30 de daño por segundo", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Familiar de corto alcance", -- Gemini
	-- Full old Desc: "Familiar de corto alcance#Inflige 6 de daño por contacto cada segundo"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Rebota por la habitación#Dispara lágrimas de baja precisión que infligen tu daño", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Mosca controlable", -- ???'s Only Friend
	-- Full old Desc: "Mosca controlable#Inflige 37.5 de daño por contacto cada segundo"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Bola de acero encadenada que puede destruir rocas", -- Samson's Chains
	-- Full old Desc: "Bola de acero encadenada que puede destruir rocas#Inflige 10.7 de daño por contacto cada segundo"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Imita los efectos de lágrimas de uno de tus familiares#Inflige 3.5 de daño si no tienes familiares", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Dispara 8 lágrimas en todas direcciones#Las lágrimas imitan los efectos del jugador#Se recarga al disparar lágrimas", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Te teletransporta a:#{{TreasureRoom}} Sala del Tesoro#{{SecretRoom}} Habitación Secreta#{{SuperSecretRoom}} Habitación Súper Secreta#{{ErrorRoom}} o la sala de I AM ERROR", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} Convierte tu cabeza en una torreta por la habitación#Esta dispara lágrimas que infligen 3.5 de daño#El cuerpo se controla por separado y dispara normalmente", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Mantener presionado el boton de USO vacía la barra de carga del objeto#Vaciar la barra te vuelve invencible temporalmente#{{Warning}} Mantener presionado demasiado tiempo te hará daño", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Recibir daño teniendo medio o ningun corazón rojo:#Otorga un escudo de invencibilidad durante 5 segundos", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Recibir daño teniendo medio o ningun corazón rojo:#Inflige 40 de daño a todos los enemigos en la habitación", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Reemplaza tus lágrimas con una lágrima gigante controlable", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "{{Damage}} Las lágrimas obtienen un aura que inflige 4.5 veces tu daño por segundo", -- Godhead
	-- Full old Desc: "↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +1.2#↑ {{Tearsize}} Tamaño de lágrimas +0.8#↓ {{Tears}} Lágrimas -0.3#↓{{Shotspeed}} Vel. de lágrimas -0.3#Lágrimas teledirigidas#{{Damage}} Las lágrimas obtienen un aura que inflige 4.5 veces tu daño por segundo"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Reaparece como Lázaro Resucitado tras morir", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Revela completamente el mapa", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Otorga un aura que empuja a enemigos y proyectiles", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Corazones de alma#Otorga un aura que empuja a enemigos y proyectiles"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} Ralentiza la habitación cada cuatro salas#13% de probabilidad de acelerar la habitación", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Boomerang lanzable#Confunde a los enemigos e inflige el doble de tu daño#Puede recoger y acercar objetos", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplica los objetos en pedestales y los consumibles en la habitación", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Copia el efecto de la píldora que tengas", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Envenena a todos los enemigos al entrar en una habitación#Los enemigos muertos dejan un charco de fluido#El fluido inflige 30 de daño cada segundo", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Petrifica a los enemigos de la habitación actual#{{Poison}} Envenena e inflige 5 de daño a los enemigos cercanos#Genera una onda de piedra#La onda puede romper piedras y abrir habitaciones secretas", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} Reduce tu vida a medio corazón al usar el cañón#Dispara una gran lágrima espectral y perforante que inflige 10 veces tu daño", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Tus bombas explotarán en un patrón de cruz", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bombas#Tus bombas explotarán en un patrón de cruz"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} Duplica el efecto de los objetos activos", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} Duplica los familiares durante la habitación actual#{{Collectible113}} Invoca un Bebé Demonio si no tienes familiares", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Dispara 2 lágrimas simultaneas en diagonal", -- The Wiz
	-- Full old Desc: "Lágrimas espectrales#Dispara 2 lágrimas simultaneas en diagonal"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Aumenta el empuje", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} Daño +1.5#Aumenta el empuje"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Familiar demoníaco#Dispara lágrimas que copian tus estadisticas y efectos", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Dispara lágrimas que copian tu daño y efectos#Dispara a la mitad de velocidad que otros familiares", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "35% de probabilidad de soltar un recolectable aleatorio por habitación", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Bloquea y atrae proyectiles#{{EternalHeart}} Genera un corazón eterno tras bloquear 10 proyectiles en una habitación", -- Sworn Protector
	-- Full old Desc: "Familiar orbital#Inflige 105 de daño por contacto cada segundo#Bloquea y atrae proyectiles#{{EternalHeart}} Genera un corazón eterno tras bloquear 10 proyectiles en una habitación"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Mosca orbital de rango medio", -- Friend Zone
	-- Full old Desc: "Mosca orbital de rango medio#Inflige 45 de daño por contacto cada segundo"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Se mueve por las paredes y obstáculos de la habitación", -- Lost Fly
	-- Full old Desc: "Se mueve por las paredes y obstáculos de la habitación#Inflige 105 de daño por contacto cada segundo"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Disparar en una única dirección reduce la precisión y aumenta la cadencia de disparo hasta un 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Las lágrimas pueden atravesar las paredes y aparecer del lado contrario", -- Continuum
	-- Full old Desc: "↑ {{Range}} Alcance +2.25#↑ {{Tearsize}} Tamaño de lágrimas +1.5#Lágrimas espectrales#Las lágrimas pueden atravesar las paredes y aparecer del lado contrario"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} Genera 6 bombas troll al recibir daño#Las bombas copian los efectos de tus bombas", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Al en una habitación hostil cada 30 segundos:#{{Battery}} Genera una batería(Hasta 2 por habitación)#{{Battery}} Agrega una carga al objeto activo (Hasta 2 por habitación)#Petrifica a los enemigos de la habitación", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} +25% de daño por cada lágrima que golpee a un enemigo (máximo +100%)#Fallar reinicia el daño", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Luck}} 50% de probabilidad con 9 de suerte", -- Holy Light
	-- Full old Desc: "10% de probabilidad de disparar una lágrima sagrada#Las lágrimas sagradas hacen caer rayos de luz desde el cielo#{{Luck}} 50% de probabilidad con 9 de suerte#El rayo inflige cuatro veces tu daño"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Otorga inmunidad a las explosiones y projectiles que caigan desde arriba#25% de probabilidad de reflejar las lágrimas enemigas", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Las tiendas reponen los objetos que compres de forma instantánea", -- Restock
	-- Full old Desc: "Genera 3 recolectables aleatorios#Las tiendas reponen los objetos que compres de forma instantánea"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Las arañas enemigas te ignoran y no hacen daño por contacto", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Genera una {{Collectible209}} Bomba de Trasero encendida tras disparar durante 2.35 segundos", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Las puertas cerradas deberán abrirse con monedas en lugar de llaves", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 monedas#Las puertas cerradas deberán abrirse con monedas en lugar de llaves"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Otorga un objeto aleatorio al inicio de la siguiente partida", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.7#Otorga un objeto aleatorio al inicio de la siguiente partida"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Lanza una bola a los enemigos para capturarlos#Volver a usarlo invocará al enemigo como aliado", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Divide todas tus lágrimas en pantalla en un círculo de 6 lágrimas", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Familiar lanzable que rebota por la habitación#La velocidad depende del tiempo de carga#Inflige 5-90 de daño por contacto dependiendo de su velocidad", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} Recoge las monedas cercanas#Sube de nivel tras recoger 6, 12 y 24 monedas#Nivel 2: Suelta recolectables tras limpiar una habitaciòn#Nivel 3: Dispara lágrimas en la misma dirección del jugador#Nivel 4: Ya no dispara, persigue a los enemigos. Puede colocar bombas#Después de nivel 4: recoge monedas y suelta recolectables aleatorios", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Cambia los obstaculos de la sala por otros obstaculos aleatorios (e.j. caca, TNT, espinas, piedras, etc.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} Familiar con un aura de luz que ralentiza a los enemigos y proyectiles", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} Recoge las llaves cercanas#{{Chest}} Genera cofres aleatorios a cambio", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Genera una runa aleatoria cada 5-6 habitaciones", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Dispara lágrimas de {{Collectible182}} Corazón sagrado", -- Seraphim
	-- Full old Desc: "Dispara lágrimas de {{Collectible182}} Corazón sagrado#Inflige 10 de daño por lágrima"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Encanta a todos los enemigos en la habitación al recibir daño", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Otorga el efecto de un objeto del zodíaco aleatorio por planta", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% de probabilidad de disparar lágrimas venenosas#{{Poison}} Envenena a los enemigos al contacto#{{BlackHeart}} Los enemigos envenenados pueden soltar un corazón negro al morir", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo", -- Marked
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +3.15#↑ {{Tearsize}} Tamaño de lágrimas +0.3#Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Reemplaza tus lágrimas por un anillo láser cargable#El tamaño del anillo aumenta con el tiempo de carga", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Permite crear hasta dos portales para viajar entre ellos#Los portales pueden colocarse en diferentes habitaciones", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "Las lágrimas viajan siguiendo un rayo de luz enfrente del jugador", -- Tractor Beam
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#Las lágrimas viajan siguiendo un rayo de luz enfrente del jugador"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Las lágrimas pueden encoger a los enemigos#Los enemigos encogidos pueden ser aplastados al caminar sobre ellos", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} 5% de probabilidad de generar corazones negros al matar enemigos con el anillo negro", -- Maw of the Void
	-- Full old Desc: "↑ {{Damage}} Daño +1#{{Chargeable}} Disparar por 2.35 segundos y soltar el boton genera un láser negro a tu alrededor#Inflige 30 veces tu daño cada 2 segundos#{{BlackHeart}} 5% de probabilidad de generar corazones negros al matar enemigos con el anillo negro"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Sostienes una lanza al frente#{{Fear}} La lanza inflige el doble de tu daño y puede asustar a los enemigos al contacto", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% de probabilidad de disparar lágrimas bomba pegajosas#Las lágrimas bomba pegajosas no infligen daño y explotan luego de unos segundos", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Todos los objetos en pedestales seran elegidos de grupos aleatorios", -- Chaos
	-- Full old Desc: "Todos los objetos en pedestales seran elegidos de grupos aleatorios#Genera 1-6 recolectables aleatorios"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Permite ver el daño de tus lágrimas y la barra de vida de los enemigos#Inflige efectos aleatorios al tocar a un enemigo#Suelta baterías de forma aleatoria", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos", -- Farting Baby
	-- Full old Desc: "Bloquea proyectiles#Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Rebota por la habitaciòn", -- GB Bug
	-- Full old Desc: "Rebota por la habitaciòn#Inflige 120 de daño por contacto cada segundo y aplica un efecto aleatorio a los enemigos"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Multlipica tus estadísticas entre ↓ x0.5 y ↑ x2#Afecta al daño, las lágrimas, el Alcance y la velocidad", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Potencia una estadística dependiendo del color del aura#Al recibir daño, remueve el efecto y otorga un aura nueva en la siguiente sala#{{ColorYellow}}Amarillo{{CR}} = {{Speed}} Velocidad +0.5#{{ColorBlue}}Azul{{CR}} = {{Tears}} Lágrimas +4#{{ColorRed}}Rojo{{CR}} = {{Damage}} Daño +4#{{ColorOrange}}Naranja{{CR}} = {{Range}} Alcance +7.5, {{Tearsize}} Tamaño de lágrimas +1", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Genera un anillo láser negro a tu alrededor al recibir daño#El anillo inflige 30 veces tu daño#{{BlackHeart}} Probabilidad de soltar un corazón negro al matar enemigos con él", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} Al no tener corazones rojos:#Permite volar#Cada 40 segundos al estar en una habitación hostil, otorga un escudo durante 10 segundos", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 corazones negros#{{EmptyHeart}} Al no tener corazones rojos:#Permite volar#Cada 40 segundos al estar en una habitación hostil, otorga un escudo durante 10 segundos"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "Los ojos disparan lágrimas en la misma dirección que el jugador", -- Evil Eye
	-- Full old Desc: "3.33% de probabilidad de disparar un ojo#{{Luck}} 10% de probabilidad con 20 de suerte#Los ojos disparan lágrimas en la misma dirección que el jugador"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "↑ {{Damage}} Daño +0.5 por cada enemigo asesinado en la habitación actual#Limite de +5 de daño al matar 10 enemigos", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Recibir daño 15 veces genera un familiar demoníaco permanente#El daño requerido aumenta a 30 tras generar 2 familiares#Limite de 4 familiares", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Recoger 15 corazones genera un familiar angelical permanente#Hasta 5 familiares#{{SoulHeart}} Una vez alcanzado el limite, genera un corazon de alma en vez de mas familiares", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Permite elegir entre 2 objetos en la sala del tesoro", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Al tener la salud al maximo, recibirás:#{VAR:EFFECTLIST}#Recibir daño remueve el efecto", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Corazones de alma#Al tener la salud al maximo, recibirás:#↑ {{Damage}} Daño x2#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Recibir daño remueve el efecto"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Permite llevar dos {{Rune}} runas, {{Card}} cartas o {{Pill}} píldoras a la vez", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Familiar que rebota por la habitación rodeado de un aura#El aura inflige 1.29 veces tu daño cada segundo#↑ {{Damage}} Daño x1.5 al estar dentro del aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Otorga un efecto de lágrima diferente para cada lágrima disparada", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Te teletransporta a una habitación sin explorar", -- Teleport 2.0
	-- Full old Desc: "Te teletransporta a una habitación sin explorar#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Caminar en un círculo dibuja un símbolo de pentagrama en el suelo#El pentagrama inflige 130 de daño por contacto y dura 4 segundos", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Encanta e inflige 5 de daño a enemigos cercanos", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Regresa al jugador a la sala anterior y revierte todas las acciones en la habitación actual", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Genera un gran halo a tu alrededor#El halo inflige tu daño al contacto por segundo#Probabilidad de reflejar proyectiles enemigos", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Probabilidad de reemplazar los recolectables por {{GrabBag}}sacos:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Genera un saco", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} Genera un cono de luz frente al jugador#La luz ralentiza a enemigos y proyectiles", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Genera un barril de TNT empujable#Volver a usar el objeto en la misma habitación detonará remotamente el barril", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} 5% de probabilidad de generar monedas al golpear a un enemigo", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "{{Damage}} Dispara lágrimas que infligen tu daño a enemigos cercanos", -- Papa Fly
	-- Full old Desc: "Familiar que sigue tus movimientos con 1 segundo de retraso#{{Damage}} Dispara lágrimas que infligen tu daño a enemigos cercanos"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Las lágrimas que lo traspasen se dividen y ganan una mejora de alcance y velocidad", -- Multidimensional Baby
	-- Full old Desc: "Familiar que sigue tus movimientos con 2 segundos de retraso#Las lágrimas que lo traspasen se dividen y ganan una mejora de alcance y velocidad"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Otorga a tus bombas:", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Otorga a tus bombas:#25% de probabilidad de generar un recolectable aleatorio al explotar#{{Charm}} 15% de probabilidad de encantar enemigos al explotar"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} Al recibir daño, asusta a los enemigos de la habitación y genera un Charger oscuro", -- My Shadow
	-- Full old Desc: "{{Fear}} Al recibir daño, asusta a los enemigos de la habitación y genera un Charger oscuro#El Charger inflige 5 de daño por contacto cada segundo"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Matar un enemigo añadirá una mosca azul al tarro#Máximo de 20 moscas#Usar el Tarro liberará las moscas que tengas", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Dispara 4 lágrimas en un patrón de cruz que infligen 3.5 de daño", -- Lil Loki
	-- Full old Desc: "Dispara 4 lágrimas en un patrón de cruz que infligen 3.5 de daño"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Recibir daño aumenta tus lágrimas durante la habitación actual", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Reinicia la habitación actual#Permite obtener multiples recompensas de la misma habitación#Al usarlo tras luchar contra Codicia, convierte la habitación en una tienda", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} Potencia los efectos de los trinkets", -- Mom's Box
	-- Full old Desc: "{{Trinket}} Genera un trinket aleatorio#Al tenerlo:#↑ {{Luck}} Suerte +1#{{Trinket}} Potencia los efectos de los trinkets"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "Ocasionalmente dejas de disparar para cargar una rafaga de lágrimas y una piedra del riñón", -- Kidney Stone
	-- Full old Desc: "↑ {{Tearsize}} Tamaño de lágrimas +2#↓ {{Speed}} Velocidad -0.2#↓ {{Range}} Alcance -17#Ocasionalmente dejas de disparar para cargar una rafaga de lágrimas y una piedra del riñón"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} Dispara un gran láser de Mega Satán durante 15 segundos#El láser persiste entre habitaciones y plantas", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "Otorga al tener un corazón rojo lleno:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "Otorga al tener un corazón rojo lleno:#↑ {{Tears}} Lágrimas +0.75#↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#↑ {{Shotspeed}} Vel. de lágrimas +0.2"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Dispara un cúmulo de lágrimas cada 15 lágrimas#Las lágrimas del cúmulo infligen el doble de daño", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Se oirá un ladrido si hay una trampilla bajo una roca", -- Dog Tooth
	-- Full old Desc: "↑ {{Speed}} Velocidad +0.1#↑ {{Damage}} Daño +0.3#{{SecretRoom}}/{{SuperSecretRoom}} Se oirá un aullido al entrar en una habitación adyacente a una sala secreta o super secreta#{{LadderRoom}} Se oirá un ladrido si hay una trampilla bajo una roca"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} Al disparar, otorga un aura que envenena a los enemigos cercanos", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Disparar durante 7.5 segundos genera una nube de gas#La nube inflige tu daño 5 veces por segundo#La nube persiste por 15 segundos y puede ser movida al dispararle", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Al recibir daño: #{{Heart}} 25% de probabilidad de generar un corazón rojo#{{Collectible214}} 10% de probabilidad de obtener ↑ {{Range}} Alcance +5 y dejar un rastro de fluido por la habitación", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "25% de probabilidad de reflejar proyectiles enemigos", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Corazón de alma#25% de probabilidad de reflejar proyectiles enemigos#{{Confusion}} Los proyectiles reflejados se vuelven lágrimas aturdidoras"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "{{Damage}} Cada 20 lágrimas, disparas una lágrima moneda que inflige el doble de tu daño#Los enemigos golpeados se volverán estatuas de oro#{{Coin}} Las estatuas de oro sueltan 1-4 monedas al morir#{{Warning}} Disparar lágrimas moneda cuesta una moneda", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Potencia o duplica el efecto de las cartas del tarot", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Genera una carta o runa aleatoria#{{Card}} Potencia o duplica el efecto de las cartas del tarot"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Libera un círculo de 10 lágrimas al recibir daño#Las lágrimas infligen tu daño +25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "Las lágrimas se separan en 1-3 fragmentos de hueso al impactar", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#Las lágrimas se separan en 1-3 fragmentos de hueso al impactar"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Genera una {{Rune}} runa, {{Card}} carta o {{Pill}} píldora aleatoria al tomarlo#Permite llevar 2 runas, cartas o píldoras a la vez", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} Genera una moneda de la suerte", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#{{Luck}} Genera una moneda de la suerte"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% de probabilidad de ignorar el daño", -- Cone Head
	-- Full old Desc: "↑ {{SoulHeart}} +1 Corazón de alma#20% de probabilidad de ignorar el daño"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Permite llevar 2 trinkets a la vez", -- Belly Button
	-- Full old Desc: "{{Trinket}} Permite llevar 2 trinkets a la vez#{{Trinket}} Genera un trinket aleatorio al tomarlo"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% de probabilidad de disparar lágrimas de moco#{{Luck}} No es afectado por la suerte", -- Sinus Infection
	-- Full old Desc: "20% de probabilidad de disparar lágrimas de moco#{{Damage}} Los mocos se pegan al enemigo durante 60 segundos e infligen tu daño cada segundo#{{Luck}} No es afectado por la suerte"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% de probabilidad de disparar lágrimas aturdidoras#Obscurece un poco la pantalla", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} Genera fluido ralentizante y una araña o mosca azul al impactar", -- Parasitoid
	-- Full old Desc: "15% de probabilidad de disparar sacos de huevos#{{Luck}} 50% de probabilidad con 5 de suerte#{{Slow}} Genera fluido ralentizante y una araña o mosca azul al impactar"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Tras golpear un enemigo, las lágrimas infligen el doble de daño y se vuelven teledirigidas", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#Lágrimas perforantes#Tras golpear un enemigo, las lágrimas infligen el doble de daño y se vuelven teledirigidas"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Probabilidad de disparar lágrimas ácidas que destruyen rocas y abren puertas", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} Daño +0.3#Probabilidad de disparar lágrimas ácidas que destruyen rocas y abren puertas"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Los enemigos campeones soltarán los recolectables que más necesites", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Corazones de alma#Los enemigos campeones soltarán los recolectables que más necesites"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Permite disparar lágrimas en cualquier dirección", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.3#Permite disparar lágrimas en cualquier dirección"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} El primer enemigo asesinado explota y envenena a los enemigos cercanos#Los enemigos envenenados también explotan al morir", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Inflige constantemente el 10% de tu daño en la dirección que señala el dedo", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Deja un rastro de fluido#El fluido inflige 6 de daño por segundo#Los enemigos que toquen la nube pueden hacer caer un rayo de luz sagrada", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Rebota por la habitación#Se detiene cuando disparas#Bloquea proyectiles al detenerse", -- Hushy
	-- Full old Desc: "Rebota por la habitación#Inflige 30 de daño por contacto cada segundo#Se detiene cuando disparas#Bloquea proyectiles al detenerse"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Inflige 3.5 de daño por lágrima", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Carga una rafaga de lágrimas similar al {{Collectible229}} Pulmón de Monstro#Inflige 3.5 de daño por lágrima"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Hace que lo sigan otros familiares#Se detiene cuando disparas#Se teletransporta hacia ti cuando dejas de disparar", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Carga lentamente hacia adelante", -- Big Chubby
	-- Full old Desc: "Carga lentamente hacia adelante#Bloquea proyectiles#Inflige 40.5 de daño por contacto"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}", -- Plan C
	-- Full old Desc: "Inflige 9.999.999 de daño a todos los enemigos#{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Duplica un recolectable aleatorio en la habitación actual", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Consume todos los objetos en pedestales de la habitación#↑ Objeto pasivo: Mejora 2 estadisticas aleatorias#Objeto activo: Añade el efecto del objeto al de Vacío (Los efectos se apilan)", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Congela a todos los enemigos en la habitación hasta que vuelvas a disparar#Los enemigos congelados aun pueden hacer daño#Los enemigos se descongelan tras 30 segundos", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Consume tu trinket y otorga su efecto de forma permanente#{{Trinket}} Aparecen más trinkets", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Convierte los recolectables en moscas o arañas azules#Duplica las moscas y arañas azules que tengas#Genera una mosca o araña azul si no tienes ninguna", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} Corrompe los graficos y la musica de la habitación", -- Dataminer
	-- Full old Desc: "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}}Efecto de lágrima aleatorio para la habitación actual#{{Blank}} Corrompe los graficos y la musica de la habitación"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Cambia tu personaje por otro de forma aleatoria#Elimina el último objeto que hayas recogido", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Afecta a todo el piso actual#Destruye todos los obstaculos de la habitación#{VAR:EFFECTLIST}#{{SecretRoom}}/{{SuperSecretRoom}} Abre las habitaciónes secretas y súper secretas#Abre la Boss rush/puerta de Hush sin importar el tiempo", -- Mama Mega!
	-- Full old Desc: "Afecta a todo el piso actual#Destruye todos los obstaculos de la habitación#Inflige 200 de daño a todos los enemigos#{{SecretRoom}}/{{SuperSecretRoom}} Abre las habitaciónes secretas y súper secretas#Abre la Boss rush/puerta de Hush sin importar el tiempo"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Al usarlo, empuja a los enemigos y genera una ola de rocas#La ola de rocas puede abrir habitaciones o romper piedras", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% de probabilidad de duplicar todos los objetos, recolectables y cofres en la habitación#50% de probabilidad de eliminar los objetos y recolectables de la habitación y soltar una moneda", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Te inflige daño sin perder ningún corazón#Activa los efectos de tus objetos que requieran recibir daño", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} Dejas un rastro de fluido rojo en el suelo", -- Potato Peeler
	-- Full old Desc: "{{Heart}} A cambio de un contenedor de corazón, otorga:#↑ {{Damage}} Daño +0.2#{{Collectible73}} Un Cubo de carne#{{Timer}} Otorga durante la habitación:#↑ {{Range}} Alcance +5#{{Collectible214}} Dejas un rastro de fluido rojo en el suelo"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "{{Timer}} Otorga el efecto de un objeto aleatorio durante la habitación", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Activa un efecto de dado aleatorio por cada uso", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Genera 2 objetos aleatorios del grupo de la habitación actual", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Usar una píldora envenena a todos los enemigos en la habitación", -- Acid Baby
	-- Full old Desc: "{{Pill}} Genera una píldora aleatoria cada 3 habitaciones#{{Poison}} Usar una píldora envenena a todos los enemigos en la habitación"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Señala la ubicación de {{SecretRoom}} salas secretas, rocas marcadas y {{LadderRoom}} trampillas", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} Suerte +1#Señala la ubicación de {{SecretRoom}} salas secretas, rocas marcadas y {{LadderRoom}} trampillas"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Otorga por cada contenedor de corazón vacío:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Otorga por cada contenedor de corazón vacío:#↑ {{Damage}} Daño +0.2"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Las lágrimas generan 1-2 rayos eléctricos al impactar#Los rayos infligen la mitad de tu daño", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Probabilidad de disparar un fuego rojo que inflige daño y bloquea proyectiles#El fuego persiste hasta bloquear 5 disparos o infligir daño 5 veces", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Las agujas matan a los enemigos normales de un golpe, disparando 10 lágrimas alrededor#{{Damage}} Inflige el triple de tu daño contra jefes", -- Euthanasia
	-- Full old Desc: "3.33% de probabilidad de disparar agujas#100% de probabilidad con 15 de suerte#Las agujas matan a los enemigos normales de un golpe, disparando 10 lágrimas alrededor#{{Damage}} Inflige el triple de tu daño contra jefes"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "{{Confusion}} Al entrar a una habitación confunde a los enemigos hasta que dispares", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Genera una sala de Ángel y de Diablo#Entrar en una sala hará desaparecer la otra", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Otorga 1 contenedor de corazón por cada 25 monedas obtenidas tras recoger el objeto", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Ocasionalmente dispara una lágrima blanca#{{Slow}} La lágrima blanca inflige el doble de tu daño y suelta fluido ralentizante#Dispara una lagrima blanca al recibir daño", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "Infliges 3.5 de daño por contacto", -- Little Horn
	-- Full old Desc: "5% de probabilidad de disparar una lágrima que mata instantaneamente a los enemigos normales#{{Luck}} 20% de probabilidad con 15 de suerte#Infliges 3.5 de daño por contacto"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Genera una mosca torreta que dispara a los enemigos#Inflige 2 de daño por disparo", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Probabilidad de generar un enemigo aliado al entrar a una habitación hostil", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} Golpear a un enemigo por detrás inflige el doble de daño y causa sangrado#El sangrado inflige el 10% de la vida total de los enemigos cada 5 segundos", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Inflige tu daño +10% de la vida máxima del enemigo a todos los enemigos en la habitación#{{HalfHeart}} Probabilidad de soltar medio corazón al infligir daño", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} Orbital que causa sangrado#inflige el 10% de la salud de los enemigos cada 5 segundos#{{Damage}} Inflige 3 veces tu daño por contacto cada segundo", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Dispara una lágrima en una dirección aleatoria cada 2 segundos#No bloquea proyectiles", -- Bloodshot Eye
	-- Full old Desc: "Dispara una lágrima en una dirección aleatoria cada 2 segundos#Inflige 3.5 de daño#Inflige 30 de daño por contacto cada segundo#No bloquea proyectiles"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Timer}} Genera una versión aliada de Delirium en la habitación actual", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbita alrededor de un enemigo aleatorio hasta que muera", -- Angry Fly
	-- Full old Desc: "Orbita alrededor de un enemigo aleatorio hasta que muera#Inflige 30 de daño por contacto cada segundo"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Agujero negro lanzable que atrae todo#Inflige 6 de daño por segundo#Destruye rocas cercanas#Dura 6 segundos", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} Encanta o asusta a un enemigo de forma aleatoria#Probabilidad de generar una caca arcoíris al recibir daño", -- Bozo
	-- Full old Desc: "↑ {{Damage}} Daño +0.1#↑ {{SoulHeart}} +1 Corazón de alma#{{Charm}} Encanta o asusta a un enemigo de forma aleatoria#Probabilidad de generar una caca arcoíris al recibir daño"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Probabilidad de congelar momentaneamente a enemigos y proyectiles#25% de probabilidad de generar el duplicar las recompensas de la habitación", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Genera un objeto aleatorio del grupo de la habitación actual#Probabilidad de generar:#{{Collectible132}} Un trozo de carbón#{{Collectible36}} La Caca", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Genera un Aspersor que dispara lágrimas con tus efectos a su alrededor", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Permite colocar bombas mas rápido", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombas#Permite colocar bombas mas rápido"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Familiar de aspecto de bebé cooperativo#Efecto de lágrima aleatorio#Cambia de efecto en cada piso", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Se transforma en un familiar aleatorio cada 10 segundos", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "{{Battery}} Matar 15 enemigos añade una carga a tu objeto activo actual", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Vuelve gratis un objeto aleatorio en la {{Shop}} Tienda o la {{DevilRoom}} sala de Diablo#Garantiza un descuento en la tienda al tenerlo", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Detiene los proyectiles enemigos cercanos durante 3 segundos y los lanza lejos", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Permite almacenar los recolectables y objetos en la habitación#Volver a usarlo suelta todo en la habitación actual#Permite mover objetos entre habitaciones", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Conecta tus lágrimas con rayos de electricidad#Los rayos infligen tu daño por segundo", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Genera un orbital que bloquea proyectiles al recibir daño#Los orbitales infligen 35 de daño por contacto cada segundo#Limite de 3 orbitales#los orbitales pueden destruirse al recibir demasiado daño", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Jinete familiar que genera langostas#El Jinete y las langostas cambian cada 10 segundos", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Invoca un familiar capaz de:#Abrir puertas y cofres#Traerte objetos#50% de probabilidad de robar objetos de la tienda o del pacto#Luchar contra enemigos#Explotar#Activar placas de presión", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Prisma orbital#Las lágrimas que pasen por el prisma se dividen en 4 lágrimas", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Las lágrimas rebotan entre ellas y desaparecen al dejar de moverse", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Otorga una recompensa tras matar enemigos {{DeathMark}} marcados en el orden indicado", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "Las lágrimas se ralentizan mientras viajan#Al detenerse, explotan en 8 lágrimas pequeñas#Las lágrimas pueden acumularse, volviendose más grandes", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Remplaza tus lágrimas por rayos perforantes de luz blanca#Los rayos infligen 33% de tu daño, pero impactan multiples veces", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Permite llevar hasta 2 objetos activos#Pulsa la tecla de soltar objetos ({{ButtonRT}}) para cambiar entre objetos activos", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} Otorga un escudo de Manto Sagrado al entrar a una {{BossRoom}} sala de jefe", -- Blanket
	-- Full old Desc: "{{HealingRed}} Cura un corazón rojo#{{SoulHeart}} +1 Corazón de alma#{{HolyMantle}} Otorga un escudo de Manto Sagrado al entrar a una {{BossRoom}} sala de jefe"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Permite sacrificar hasta 2 familiares para generar un objeto de {{DevilRoom}} pacto del Diablo por sacrificio#{{Coin}} Convierte las arañas o moscas azules en monedas", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Genera una píldora aleatoria al recogerlo#Familiar que deja un rastro de fluido#El tipo de fluido depende del tipo de píldora", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Al recibir daño, 10% de probabilidad de consumir tu trinket y otorgar sus efectos permanentemente", -- Marbles
	-- Full old Desc: "{{Trinket}} Genera 3 trinkets aleatorios#{{Collectible479}} Al recibir daño, 10% de probabilidad de consumir tu trinket y otorgar sus efectos permanentemente"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Genera un enemigo encantado al recibir daño#Genera aliados más fuertes cuantas más habitaciones limpies sin recibir daño", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Las lágrimas rebotan en el suelo e infligen daño por rebote a los enemigos cercanos", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Refleja projectiles enemigos", -- Slipped Rib
	-- Full old Desc: "Orbital#Refleja projectiles enemigos"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Al recibir daño, genera una caca blanca con un aura#El aura otorga lo siguiente:#{VAR:EFFECTLIST}#50% de probabilidad de ignorar el daño recibido", -- Hallowed Ground
	-- Full old Desc: "Al recibir daño, genera una caca blanca con un aura#El aura otorga lo siguiente:#↑ {{Tears}} Lágrimas x2#50% de probabilidad de ignorar el daño recibido"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Levita en frente del jugador#Inflige 6 veces tu daño por segundo", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Genera un hueso orbital o Bonies aliados por cada enemigo derrotado en la habitación#Máximo de 8 invocaciones", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Otorga un aura que petrifica a los enemigos cercanos", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "Genera el trinket {{Trinket21}} Papel misterioso", -- Divorce Papers
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.7#{{EmptyBoneHeart}} +1 Corazón de hueso#Genera el trinket {{Trinket21}} Papel misterioso"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Familiar boomerang#Puede recoger y acercar objetos", -- Jaw Bone
	-- Full old Desc: "Familiar boomerang#Inflige 7 de daño por contacto#Puede recoger y acercar objetos"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "Dispara 8 lágrimas de hueso a tu alrededor", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Reemplaza todos tus contenedores de corazón por 6 corazones de hueso#Al perder un corazón de hueso:#↑ {{Tears}} Lágrimas +0.5#Dispara 8 lágrimas de hueso a tu alrededor"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Los pies de mamá te atacarán constantemente#Al usarlo, los pies dejarán de caer en esta habitación#{{Warning}} (¡Intenta ganar la Boss Rush con esto!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Segunda parte de la pala rota#{{Warning}} Úsala en el montón de tierra en la \"Sala Oscura\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Genera una trampilla hacia el siguiente nivel#{{LadderRoom}} 10% de probabilidad de generar una trampilla a una mazmorra#{{Warning}} Úsala en el montón de tierra en la \"Dark Room\"(La sala oscura)", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Genera una moneda al recibir daño", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% de probabilidad de obtener recolectables al romper cacas", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} Los objetos activos necesitan una carga menos", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} Usar un objeto activo te teletransporta a una habitación aleatoria", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Duplica la probabilidad de encontrar enemigos y jefes campeones", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} Atrae las monedas hacia el jugador", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "Aumenta la probabilidad de encontrar {{Collectible33}} La Bíblia en {{Shop}} Tiendas y {{Library}} Bibliotecas", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 75% de probabilidad de reemplazar la {{DevilRoom}} Sala del Diablo por una {{AngelRoom}} Sala del Ángel#Aumenta la probabilidad de encontrar {{Collectible33}} La Bíblia en {{Shop}} Tiendas y {{Library}} Bibliotecas"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 5% de probabilidad al ser golpeado de activar el efecto de {{Collectible93}} El Gamekid durante 6.5 segundos"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Las lágrimas aumentan y disminuyen su tamaño#Afecta a la hitbox de la lágrima", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "Las lágrimas se mueven en ondas", -- Wiggle Worm
	-- Full old Desc: "↑ {{Tears}} Lágrimas +0.4#Las lágrimas se mueven en ondas"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Las lágrimas se mueven en espiral a gran velocidad", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Lágrimas 50% más grandes#Aumenta el empuje", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Permite llevarse un objeto de la tienda gratis", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Otorga inmunidad a las espinas de suelo y el fluido", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Genera monedas al destruir rocas", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +5% de probabilidad de reemplazar los corazones de alma por corazones negros", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% de probabilidad de encontrar corazones eternos", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} Permite abrir los Cofres Dorados sin usar llaves", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Al tener medio corazón, deja caer un corazón negro#{{Warning}} Desaparece luego de 3 usos", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Otorga aleatoriamente el efecto de:#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Otorga aleatoriamente el efecto de:#{{Collectible327}} La Polaroid#{{Collectible328}} El Negativo#{{Trinket48}} Una página perdida#{{Trinket23}} Cartel de desaparición"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Disminuye a 20% la probabilidad de generar corazones#{{BlackHeart}} Convierte los corazones en corazones negros#{{Key}} Aumenta la probabilidad de generar llaves", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Reaparecerás como \"El Perdido\" tras morir", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 20% de probabilidad de generar una moneda al destruir una caca#Soltarás un pedo al recoger una moneda", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Generas una caca o sueltas un pedo cada 30 segundos", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "Las lágrimas se mueven en ángulos rectos", -- Hook Worm
	-- Full old Desc: "↑ {{Range}} Alcance +10#Las lágrimas se mueven en ángulos rectos"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% de probabilidad de reaparecer como \"???\" al morir", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Genera una mosca azul al recibir daño", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% de probabilidad de activar un efecto de hongo aleatorio para la habitación actual#Puede revelar la ubicación de habitaciones especiales en el mapa", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10% de probabilidad de que la recompensa de la sala sea un corazón aleatorio#{{Heart}} 33% de probabilidad de obtener corazones extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% de probabilidad de que la recompensa de la sala sea una llave#{{Key}} 33% de probabilidad de obtener llaves extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "10% de probabilidad de encontrar {{SoulHeart}} Corazones de Alma, {{BlackHeart}} Corazones Negros o {{EmptyBoneHeart}} Corazones de Hueso", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} 20% de probabilidad de obtener ↑ {{Damage}} Daño +1.8 al recibir daño", -- Red Patch
	-- Full old Desc: "{{Timer}} 20% de probabilidad de obtener ↑ {{Damage}} Daño +1.8 al recibir daño#{{Luck}} 100% de probabilidad con 8 de suerte"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% de probabilidad de que la recompensa de la sala sea una bomba#{{Bomb}} 33% de probabilidad de obtener bombas extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos#{{Warning}} Remueve {{Trinket53}} la garrapata", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% de probabilidad de obtener una recompensa de sala#33% de probabilidad de obtener un recolectable extra de cofres, las rocas marcadas y máquinas destruidas", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} Suerte +1#+8% de probabilidad de obtener una recompensa de sala#33% de probabilidad de obtener un recolectable extra de cofres, las rocas marcadas y máquinas destruidas"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Al recibir daño hasta quedar a medio corazón o menos, te teletransporta a una habitación aleatoria", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% de probabilidad de que la recompensa de la sala sea una pildora#{{Pill}} 33% de probabilidad de obtener pildoras extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% de probabilidad de que la recompensa de la sala sea una carta#{{Card}} 33% de probabilidad de obtener cartas extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} 50% de probabilidad de generar medio corazón al recoger una moneda", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} 50% de probabilidad de generar bombas al recoger una moneda", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 50% de probabilidad de generar llaves al recoger una moneda", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 50% de probabilidad de incrementar +1 el valor de las monedas al recogerlas", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} Cura 1 corazón rojo al entrar en una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla o tragándolo", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Familiar con lágrimas perforantes", -- Isaac's Head
	-- Full old Desc: "Familiar con lágrimas perforantes#Inflige 3.5 de daño"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} +1 Corazón Eterno al cambiar de piso", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Reduce los precios de los pactos del Diablo a un corazón#{{SoulHeart}} No reduce los pactos de 3 Corazones de Alma", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Familiar que rebota por la habitación#Dispara en la misma dirección que el jugador", -- ???'s Soul
	-- Full old Desc: "Familiar que rebota por la habitación#Dispara en la misma dirección que el jugador#Inflige 3.5 de daño#Dispara lágrimas espectrales y teledirigidas"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} Matar a un enemigo tiene un 6.66% de probabilidad de otorgar ↑ {{Damage}} Daño +0.5 por la habitación", -- Samson's Lock
	-- Full old Desc: "{{Timer}} Matar a un enemigo tiene un 6.66% de probabilidad de otorgar ↑ {{Damage}} Daño +0.5 por la habitación#{{Luck}} 100% de probabilidad con 10 de suerte"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} Reemplaza todos los cofres por Cofres Rojos", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Las rocas marcadas y de trampilla parpadearán cada 10 segundos", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} Convierte las bombas troll en bombas recolectables", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Otorga un efecto de gusano aleatorio cada 3 segundos", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Recibir daño activa uno de los siguientes efectos:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Recibir daño activa uno de los siguientes efectos:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "{{Collectible53}} Atrae los recolectables y enemigos hacia el jugador", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Te camufla de forma aleatoria#{{Confusion}} Confunde a los enemigos", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Genera aleatoriamente una araña azul en habitaciónes hostiles", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Las bombas dejan fluido", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% de probabilidad de reemplazar la recompensa de la habitación por una batería#{{Battery}} +2% de probabilidad de que los recolectables sean baterías#{{Battery}} 5% de probabilidad de añadir una carga al objeto activo al limpiar una habitación", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 10% de probabilidad de que las bombas generen bombas recolectables tras explotar", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} +0.5% de probabilidad de encontrar trampillas al destruir rocas", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Otorga el efecto de un trinket aleatorio por sala", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "Al abrir un cofre:#↑ 50% de probabilidad de conseguir más recolectables#↓ 50% de probabilidad de generar una mosca roja", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Aumenta el empuje", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Duplica la duración de los efectos de estado aplicados a enemigos", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "25% de probabilidad al usar una {{Rune}} runa, {{Pill}} píldora o {{Card}} carta de generar una copia", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Duplica el tiempo de invencibilidad tras recibir daño", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} +15% de probabilidad de generar dos objetos para elegír en futuras salas del tesoro", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Permite abrir las tiendas gratis", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} Genera 5% mas monedas y menos corazones como recompensa de habitación#Codicia y Super Codicia ya no aparecerán en la {{Shop}} Tienda y en la {{SecretRoom}} Habitación Secreta", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Al usar una Máquina de Donación, 33% de probabilidad de:#{{HealingRed}} Curar 1 corazón rojo {{ColorSilver}}(40%)#{{Coin}} Generar una moneda {{ColorSilver}}(40%)#{{Luck}} Suerte +1 {{ColorSilver}}(15%)#{{Beggar}} Generar un Mendigo {{ColorSilver}}(5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Romper caca genera una mosca azul", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Cura medio corazón al usar llaves#{{Heart}} Convierte los medios corazones en corazones enteros", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Previene que aparezcan objetos activos", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Mantiene a los familiares cerca del jugador", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Las cacas explotan al ser destruidas, infligiendo 60 de daño#No afecta a las cacas rojas", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% de probabilidad de encontrar cacas negras#{{BlackHeart}} 5% de probabilidad de generar un corazón negro al romper una caca negra", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ Multiplica las estadisticas x1.33 si se encuentran por encima del valor base", -- Cracked Crown
	-- Full old Desc: "↑ {{Tears}} Lágrimas x0.8#↑ Multiplica las estadisticas x1.33 si se encuentran por encima del valor base"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% de probabilidad por habitación de volver amistosas a todas las moscas enemigas", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Duplica al generar las moscas y arañas azules", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "Los dientes infligen el doble de tu daño", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3% de probabilidad de disparar un diente negro venenoso#Los dientes infligen el doble de tu daño#{{Luck}} 100% de probabilidad con 32 de suerte"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "Las lágrimas se mueven rapidamente en espiral", -- Ouroboros Worm
	-- Full old Desc: "↑ {{Range}} +4 de Alcance#↑ Altura de lágrima +2#Lágrimas espectrales#Probabilidad de disparar lágrimas teledirigidas#{{Luck}} 100% de probabilidad con 9 de suerte#Las lágrimas se mueven rapidamente en espiral"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Limite de 2 familiares", -- Tonsil
	-- Full old Desc: "Recibir daño 12-20 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% de probabilidad de disparar una lágrima de moco pegajosa#50% de probabilidad de que sea teledirigida#{{Damage}} Los mocos infligen tu daño una vez cada segundo", -- Nose Goblin
	-- Full old Desc: "10% de probabilidad de disparar una lágrima de moco pegajosa#50% de probabilidad de que sea teledirigida#{{Damage}} Los mocos infligen tu daño una vez cada segundo#Los mocos se pegan durante 60 segundos"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% de probabilidad de disparar lágrimas que rebotan", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Otorga al tener un objeto activo cargado:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Otorga al tener un objeto activo cargado:#↑ {{Speed}} Velocidad +0.25#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.75#↑ {{Shotspeed}} Vel. de lágrimas +0.1#↑ Altura de lágrima +0.5#↑ {{Luck}} +1 de Suerte"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Otorga al tener un objeto activo descargado:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Otorga al tener un objeto activo descargado:#↑ {{Speed}} Velocidad +0.5#↑ {{Tears}} Lágrimas +0.4#↑ {{Damage}} Daño +1.5#↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.3#↑ Altura de lágrima +1#↑ {{Luck}} +2 de Suerte"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 Sala Secreta adicional en cada planta", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Al tener el mismo número de {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves:#Convierte los recolectables en sus versiones dobles", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Aumenta el radio de los rastros de fluido producidos por el jugador", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "{{Heart}} Los corazones rojos recibirán el daño antes que los de alma o negros#{{AngelDevilChance}} El daño a corazones rojos no reduce la probabilidad de encontrar salas del Diablo/Ángel", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Tras ser golpeado por 1-9 explosiones:#Destruye el trinket#Suelta un {{UnknownHeart}} corazón, {{Coin}} moneda, {{Key}} llave y {{Trinket}} trinket aleatorios", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Los familiares se moverán de forma relativa a tu posición", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Aparecerán tiendas en el Útero", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Aparecerán salas del tesoro en el Útero", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Las máquinas de reabastecimiento siempre aparecen en las {{TreasureRoom}} Salas del Tesoro", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "{{Bomb}} Genera una langosta explosiva al entrar en una habitación hostil#Las langostas infligen el doble de tu daño + la explosión", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} Genera una langosta venenosa al entrar en una habitación hostil#Las langostas infligen el doble de tu daño", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} Genera una langosta que ralentiza al entrar en una habitación hostil#Las langostas infligen el doble de tu daño", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Genera una langosta al entrar en una habitación hostil#Las langostas infligen cuatro veces tu daño", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Genera 2-5 langostas al entrar en una habitación hostil#Las langostas infligen el doble de tu daño", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "5% de probabilidad de otorgar vuelo durante la habitación al matar un enemigo", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} Cura medio corazón al entrar a un nuevo piso", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} Entrar en una sala de jefe recarga completamente tu objeto activo", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Otorga un escudo sagrado de un solo uso por piso", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Suelta el objeto activo tras usarlo#2% de probabilidad de soltar uno de tus objetos pasivos al recibir daño", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Los Ángeles soltarán objetos de ángel en lugar de piezas de llave", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Mantiene abierta la última puerta utilizada", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Conecta a los familiares entre si con rayos de electricidad#Los rayos infligen 6 de daño", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Recoger una moneda genera una mosca azul", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Otorga lágrimas teledirigidas a todos tus familiares", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Te teletransporta a la primer habitación del piso actual", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "El Pie de Mamá aplastará a un enemigo#Te aplastará si no hay enemigos", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Te teletransporta a la Sala de Jefe", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Genera {{UnknownHeart}} un corazón, {{Coin}} una moneda, {{Bomb}} una bomba y {{Key}} una llave al azar", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Te teletransporta a la tienda", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Genera una {{Slotmachine}} Máquina Tragaperras#{{FortuneTeller}} 24% de probabilidad de generar una Máquina de la Fortuna", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{BloodDonationMachine}} Genera una máquina de donación de sangre", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Invoca 6 bombas troll", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Te teletransporta a la sala del tesoro", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Te teletransporta a la habitación secreta", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "{{Beggar}} Genera un mendigo#{{DemonBeggar}} 33% de probabilidad de generar un mendigo demoníaco#{{KeyBeggar}}/{{BombBeggar}} 2% de probabilidad de generar un mendigo de llaves o de bombas", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Duplica tus bombas", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Duplica tus monedas", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Duplica tus llaves", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Duplica tus Corazones Rojos {{ColorSilver}}(No duplica contenedores){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Convierte todos los recolectables en bombas aleatorias", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Convierte todos los recolectables en monedas aleatorias", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Convierte todos los recolectables en llaves aleatorias", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Convierte todos los recolectables en corazones aleatorios", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Te teletransporta a la sala de Diablo/Ángel", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Destruye todas las rocas de la habitación actual", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplica todos los recolectables en la habitación", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "{{Crawlspace}} Genera una trampilla#{{LadderRoom}} 8% de probabilidad de generar una trampilla a una mazmorra", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Remueve las maldiciónes del piso actual", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Corazón de alma#{{CurseCursed}} Remueve las maldiciónes del piso actual"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "{{Collectible105}} Cambia los objetos en pedestales en la habitación", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efecto de runa aleatorio#25% de probabilidad de duplicarse a si mismo", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "{{Collectible477}} Consume los objetos de pedestal en la sala y potencia una estadística aleatoria por cada objeto consumido#Convierte los recolectables en la sala en moscas azules", -- Black Rune
	-- Full old Desc: "Inflige 40 de daño a todos los enemigos#{{Collectible477}} Consume los objetos de pedestal en la sala y potencia una estadística aleatoria por cada objeto consumido#Convierte los recolectables en la sala en moscas azules"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Carta lanzable que mata a cualquier enemigo al instante (excepto Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Elimina el precio de todos los objetos en la tienda actual o la {{DevilRoom}} Sala del Diablo, haciendo que todo sea gratis", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Al usarlo, muestra consejos \"útiles\"", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Llena toda la habitación de caca", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Te mata instantáneamente y genera 10 recolectables/objetos en el suelo#Los objetos generados serán del grupo de la habitación actual", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Abre todas las puertas de la habitación actual", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Activa tu objeto activo sin consumir cargas", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Cambia los objetos en pedestales y recolectables en la habitación", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Invoca 2 Manos de Mamá para que sujeten a un enemigo cada una", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} Otorga un escudo de Manto Sagrado para la habitación actual#25% de probabilidad de generar otra Carta Sagrada", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Permite romper rocas caminando sobre ellas", -- Huge Growth
	-- Full old Desc: "{{Timer}} Otorga durante la habitación actual:#↑ {{Damage}} Daño +7#↑ {{Range}} Alcance +30#↑ +Tamaño#Permite romper rocas caminando sobre ellas"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Ralentiza a los enemigos", -- Era Walk
	-- Full old Desc: "{{Timer}} Otorga durante la habitación actual:#↑ {{Speed}} Velocidad +0.5#{{Shotspeed}} Vel. de lágrimas -1#Ralentiza a los enemigos"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Te tiras un pedo!#{{Poison}} Envenena a los enemigos cercanos", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} Te inflige 1 corazón de daño#Se vuelve una pildora de \"Salud completa\" al tener 1 corazón o menos", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Intercambia el número de {{Bomb}} bombas por el de {{Key}} llaves", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Genera 5 bombas encendidas en tu posición", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Se vuelve una pildora de \"Más salud\" al tener 1 contenedor o menos", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -1 Contenedor de corazón#Se vuelve una pildora de "Más salud" al tener 1 contenedor o menos"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Consumir 3 te transforma en Adulto:#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Sin efecto#Consumir 3 te transforma en Adulto:#↑ {{Heart}} +1 de Vida"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Te teletransporta a una habitación aleatoria#{{ErrorRoom}} Probabilidad menor de teletransportarte a la habitación de \"I AM ERROR\"", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} Recarga completamente el objeto activo", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Recarga completamente el objeto activo#{{Battery}} Genera 1-2 baterías"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} Drena todos los corazones menos el último", -- Hematemesis
	-- Full old Desc: "{{Warning}} Drena todos los corazones menos el último#{{Heart}} Genera 1-4 corazones rojos"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Congelado!#No puedes moverte ni disparar durante 2 segundos", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Abre las entradas de las habitaciones secretas en el piso actual", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Encanta a todos los enemigos de la habitación", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Oculta el mapa del piso actual", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Genera un gran charco en el suelo que daña a los enemigos", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} Disparas en diagonal durante 60 segundos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} Reduce el daño recibido a medio corazón durante la habitación actual", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} Aumenta el daño recibido a un corazón durante la habitación actual", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Genera una caca al moverte durante 2 segundos", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Maldición del Laberinto durante el piso actual", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "No afecta a tu hitbox", -- One makes you larger
	-- Full old Desc: "Aumenta tu tamaño#No afecta a tu hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Reduce el tamaño de tu hitbox", -- One makes you small
	-- Full old Desc: "Reduce tu tamaño#Reduce el tamaño de tu hitbox"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Genera 1 mosca azul por cada caca en la habitación", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Genera 1 araña azul por cada enemigo en la habitación#Genera 1-3 arañas cuando no hay enemigos", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} Pixelea la pantalla 3 veces durante 30 segundos", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Genera una piscina de fluido resbaladizo", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Genera una piscina de fluido ralentizante", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Ralentiza a todos los enemigos en la habitación", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Acelera a todos los enemigos en la habitación", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Consume el trinket actual y otorga sus efectos de forma permanente", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Dispara una lágrima de Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Genera la última píldora usada anterior a esta", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
