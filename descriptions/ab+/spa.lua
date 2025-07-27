---------------------------------------
-----  Basic Spanish descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line  |  ! = Warning
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "spa"

-- init Spanish table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Spanish"
EID.descriptions[languageCode].alternativeLanguageCodes = {"spanish",  "es"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "Cebolla triste", "↑ {{Tears}} Lágrimas +0.7"}, -- Cebolla triste
	{"2", "El Ojo Interior", "↓ {{Tears}} Lágrimas x0.48#Disparo triple"}, -- The Inner Eye
	{"3", "Doblador de cucharas", "Lágrimas teledirigidas"}, -- Doblador de cucharas
	{"4", "Cabeza de Cricket", "↑ {{Damage}} Daño +0.5#↑ {{Damage}} Daño x1.5"}, -- Cabeza de Cricket
	{"5", "Mi reflejo", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#↑ {{Shotspeed}} Vel. de lágrimas +0.6#Lágrimas con efecto boomerang"}, -- My Reflection
	{"6", "Número 1", "↑{{Tears}} Lágrimas +1.5#↑ {{Tearsize}} Tamaño de lágrimas +0.76#↓ {{Range}} Alcance -17,62"}, -- Número 1
	{"7", "Sangre del mártir", "↑ {{Damage}} Daño +1"}, -- Blood of the Martyr
	{"8", "Hermano Bobby", "Dispara lágrimas normales que infligen 3.5 de daño"}, -- Brother Bobby
	{"9", "Escatol", "Las moscas enemigas serán inofensivas o aliadas"}, -- Skatole
	{"10", "Halo de moscas", "+2 moscas orbitales#Bloquea proyectiles enemigos"}, -- Halo de moscas
	{"11", "¡+1!", "↑ +1 Vida extra#Reaparecerás con la salud al maximo tras morir"}, -- 1up!
	{"12", "Hongo Mágico", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño 0.3#↑ {{Damage}} Daño x1.5#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#{{HealingRed}} Salud al maximo"}, -- Magic Mushroom
	{"13", "El virus", "↓ {{Speed}} Velocidad -0.1#{{Poison}} Tocar enemigos los envenena#{{BlackHeart}} Los enemigos envenenados pueden soltar corazones negros al morir"}, -- The Virus
	{"14", "Furia por esteroides", "↑ {{Speed}} Velocidad +0.6#↑ {{Range}} Alcance +5.25#↑{{Tearsize}} Tamaño de lágrimas +0.5"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Salud al completo"}, -- <3
	{"16", "Hígado crudo", "↑ {{Heart}} +2 de Vida#{{HealingRed}} Salud al maximo"}, -- Raw Liver
	{"17", "Llave esquelética", "{{Key}} +99 llaves"}, -- Skeleton Key
	{"18", "Un dólar", "{{Coin}} +99 monedas"}, -- A Dollar
	{"19", "¡Buum!", "{{Bomb}} +10 Bombas"}, -- ¡Buum!
	{"20", "Trascendencia", "Permite volar"}, -- Transcendence
	{"21", "La Brújula", "Revela los iconos del mapa#No revela las habitaciónes del mapa"}, -- The Compass
	{"22", "Almuerzo", "↑ {{Heart}} +1 de Vida"}, -- Almuerzo
	{"23", "Cena", "↑ {{Heart}} +1 de Vida"}, -- Cena
	{"24", "Postre", "↑ {{Heart}} +1 de Vida"}, -- Postre
	{"25", "Desayuno", "↑ {{Heart}} +1 de Vida"}, -- Desayuno
	{"26", "Carne podrida", "↑ {{Heart}} +1 de Vida"}, -- Carne podrida
	{"27", "Cuchara de madera", "↑ {{Speed}} Velocidad +0.3"}, -- Cuchara de madera
	{"28", "El cinturón", "↑ {{Speed}} Velocidad +0.3"}, -- El cinturón
	{"29", "Ropa interior de Mamá", "↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"},  -- Ropa interior de Mamá
	{"30", "Tacones de Mamá", "↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Tacones de Mamá
	{"31", "Labial de Mamá", "↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Mom's Lipstick
	{"32", "Percha de Alambre", "↑ {{Tears}} Lágrimas +0.7"}, -- Percha de Alambre
	{"33", "La Biblia", "{{Timer}} Permite volar durante la habitación actual#Mata al instante al Pie de Mamá y al Corazón de Mamá#{{Warning}} Te mata al instante al usarlo contra Satán"}, -- The Bible
	{"34", "Libro de Belial", "{{AngelDevilChance}} +12.5% de probabilidad de generar salas de Angel/Diablo al tenerlo#{{Timer}} Otorga durante la habitación;#↑ {{Damage}} Daño +2"}, -- The Book of Belial
	{"35", "El Necronomicón", "Inflige 40 de daño a todos los enemigos en la habitación"}, -- The Necronomicon
	{"36", "La Popó", "Genera una caca en el suelo y empuja a los enemigos cercanos#Colocarla al lado de una fosa y destruirla con una bomba creará un puente"}, -- The Poop
	{"37", "Sr. Buum", "Genera una gran bomba en el suelo que inflige 110 de daño"}, -- Mr. Boom
	{"38", "Cabeza de Tammy", "Dispara 10 lágrimas en un círculo a tu alrededor#Las lágrimas copian tus efectos e infligen tu daño + 25"}, -- Tammy's Head
	{"39", "Sostén de Mamá", "Petrifica a todos los enemigos en la habitación durante 4 segundos"}, -- Mom's Bra
	{"40", "¡Kamikaze!", "Provoca una explosión en la ubicación del jugador#Inflige 40 de daño"}, -- Kamikaze!
	{"41", "Toallita de Mamá", "{{Fear}} Asusta a todos los enemigos en la habitación durante 5 segundos"}, -- Mom's Pad
	{"42", "Cabeza podrida de Bob", "{{Throwable}} Cabeza explosiva lanzable#{{Poison}} La explosion inflige tu daño + 50 y envenena a los enemigos cercanos"}, -- Bob's Rotten Head
	{"43", "", "<Este objeto no existe>"},
	{"44", "¡Teletransporte!", "Te teletransporta a una habitación aleatoria (excepto a la habitación I AM ERROR)"}, -- Teleport!
	{"45", "Delicioso Corazón", "{{HealingRed}} Cura 1 corazón"}, -- Delicioso Corazón
	{"46", "Pie de la suerte", "↑ {{Luck}} Suerte +1#+8% de probabilidad de generar un recolectable tras limpiar una habitación#Aumenta la probabilidad de ganar al apostar"}, -- Lucky Foot
	{"47", "Control Remoto de Doctor", "{{Collectible168}} Al activarse, invoca un ataque aéreo controlable#{{Damage}} Los cohetes infligen 20 veces tu daño"}, -- Doctor's Remote
	{"48", "Flecha de Cupido", "Lágrimas perforantes"}, -- Flecha de Cupido
	{"49", "Kamehame... ¡¿Eeeeeeh?!", "Reemplaza el siguiente disparo por un rayo#Inflige 26 veces tu daño durante 0.9 segundos"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} Daño +1"}, -- Steven
	{"51", "Pentáculo", "↑ {{Damage}} Daño +1#↑ {{AngelDevilChance}} +10% de probabilidad de encontrar salas de Angel/Diablo"}, -- Pentagram
	{"52", "Dr. Fetus", "↓ {{Tears}} Lágrimas x0.4#Reemplaza tus lágrimas por bombas#{{Damage}} Las bombas infligen 5 veces tu daño + 30"}, -- Dr. Fetus
	{"53", "Magneto", "Atrae a los recolectables cercanos hacia el jugador"}, -- Magneto
	{"54", "Mapa del tesoro", "Revela las habitaciónes del mapa#No revela los iconos del mapa"}, -- Treasure Map
	{"55", "Ojo de Mamá", "50% de probabilidad de disparar una lágrima hacia atrás#{{Luck}} 100% de probabilidad con 2 de suerte"}, -- Mom's Eye
	{"56", "Accidente de Limón", "Genera una charco de limonada#La limonada inflige 24 de daño cada segundo"}, -- Lemon Mishap
	{"57", "Admiración lejana", "Mosca orbital de medio alcance#Inflige 75 de daño por contacto cada segundo"}, -- Admiración lejana
	{"58", "Libro de las Sombras", "{{Timer}} Otorga invencibilidad durante 10 segundos"}, -- Book of Shadows
	{"59", "", "<Este objeto no existe>"},
	{"60", "La escalera", "Permite caminar sobre fosas de hasta un cuadro de distancia"}, -- The Ladder
	{"61", "", "<Este objeto no existe>"},
	{"62", "Encanto del Vampiro", "{{HealingRed}} Cura medio corazón por cada 13 enemigos asesinados"}, -- Charm of the Vampire
	{"63", "La Batería", "{{Battery}} Permite a los objetos activos almacenar el doble de cargas"}, -- The Battery
	{"64", "Rebajas de Steam", "{{Shop}} Reduce el costo de las tiendas en un 50%"}, -- Steam Sale
	{"65", "Recetario de Anarquista", "Genera 6 bombas troll cerca del centro de la habitación"}, -- Anarchist Cookbook
	{"66", "El reloj de arena", "{{Slow}} Ralentiza a los enemigos durante 8 segundos"}, -- The Hourglass
	{"67", "Hermana Maggy", "Dispara lágrimas normales que infligen 3.5 de daño"}, -- Sister Maggy
	{"68", "Tecnología", "Reemplaza tus lágrimas con láseres"}, -- Technology
	{"69", "Batido de chocolate", "{{Chargeable}} Permite cargar las lágrimas#↑ {{Damage}} El daño aumenta con el tiempo de carga hasta llegar al 400%#{{Tears}} El tiempo de carga maximo es 2.5 veces tus lágrimas"},
	{"70", "Hormonas de crecimiento", "↑ {{Speed}} Velocidad +0.4#↑ {{Damage}} Daño +1"}, -- Growth Hormones
	{"71", "Honguito", "↑ {{Speed}} Velocidad +0.3#↑ {{Tearsize}} Tamaño de lágrimas +1.5#↑ Reduce tu tamaño#↓ {{Range}} Alcance -4.25"}, -- Mini Mush
	{"72", "Rosario", "{{SoulHeart}} +3 Corazones de alma#{{Collectible33}} La Biblia se vuelve más común"}, -- Rosary
	{"73", "Cubo de carne", "NVL1: Orbital#NVL2: Orbital que dispara#NVL3: Meat boy#NVL4: Super Meat boy"}, -- Cubo de carne
	{"74", "Un cuarto", "{{Coin}} +25 monedas"}, -- Un cuarto
	{"75", "PHD", "{{HealingRed}} Cura 2 corazones#{{Pill}} Genera 1 píldora#{{Pill}} Transforma las píldoras malas en píldoras buenas#{{BloodDonationMachine}} Las máquinas de donación de sangre sueltan más {{Coin}} monedas"}, -- PHD
	{"76", "Visión de rayos X", "{{SecretRoom}} Abre las entradas de todas las salas secretas"}, -- X-Ray Vision
	{"77", "Mi pequeño unicornio", "{{Timer}} Otorga durante 6 segundos:#↑ {{Speed}} Velocidad +0.28#Invencibilidad#No puedes disparar, pero infliges 40 de daño por contacto cada segundo"}, -- My Little Unicorn
	{"78", "Libro de Revelaciones", "+{{SoulHeart}} 1 Corazón de alma#{{AngelDevilChance}} +17.5% de probabilidad de encontrar salas de Angel/Diablo al tenerlo#Probabilidad de reemplazar al jefe del piso actual por un Jinete al usarse"}, -- Book of Revelations
	{"79", "La marca", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1#{{SoulHeart}}+1 Corazón de alma"}, -- La marca
	{"80", "El pacto", "↑ {{Tears}} Lágrimas +0.7#↑ {{Damage}} Daño +0.5#{{SoulHeart}} +2 Corazones de alma"}, -- El pacto
	{"81", "Gato muerto", "↑ +9 Vidas extra#Reaparece con 1 contenedor de corazón tras morir#{{Warning}} Establece tus contenedores de corazón en 1 al tomarlo"}, -- Dead Cat
	{"82", "Señor del Abismo", "↑ {{Speed}} Velocidad +0.3#Permite volar"}, -- Lord of the Pit
	{"83", "El clavo", "Al usarlo:#{{SoulHeart}} +1 Corazón de alma#{{Timer}} Otorga durante la habitación:#↑ {{Damage}} Daño +0.7#↓ {{Speed}} Velocidad -0.18#Inflige 40 de daño por contacto cada segundo#Permite romper rocas caminando sobre ellas"}, -- The Nail
	{"84", "¡Necesitamos Ir Más Profundo!", "Genera una trampilla hacia el siguiente piso#{{LadderRoom}} 10% de probabilidad de generar una trampilla a una mazmorra"}, -- We Need To Go Deeper!
	{"85", "Mazo de Cartas", "{{Card}} Genera 1 carta"}, -- Mazo de cartas
	{"86", "Diente de Monstro", "Monstro aplasta a un enemigo al azar, infligiendo 120 de daño#{{Warning}} Monstro aplastará al jugador si no hay enemigos en la sala"}, -- Monstro's Tooth
	{"87", "Cuernos de Loki", "25% de probabilidad de disparar en 4 direcciones#{{Luck}} 100% de probabilidad con 7 de suerte"}, -- Loki's Horns
	{"88", "Pequeño Chubby", "Embiste en la dirección de tus disparos#Inflige 52.5 de daño por contacto cada segundo"}, -- Little Chubby
	{"89", "Picadura de araña", "{{Slow}} 25% de probabilidad de disparar lágrimas ralentizantes#{{Luck}} 100% de probabilidad con 15 de suerte"}, -- Picadura de araña
	{"90", "La Roca pequeña", "↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +1#↓ {{Speed}} Velocidad -0.2"}, -- La Roca pequeña
	{"91", "Sombrero de espeleólogo", "Revela el tipo de las habitaciónes adyacentes#{{SecretRoom}} Revela las habitaciónes secretas y súper secretas"}, -- Spelunker Hat
	{"92", "Súper Vendaje", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{SoulHeart}} +2 Corazones de Alma"}, -- Súper Vendaje
	{"93", "El Gamekid", "{{Timer}} Otorga durante 6.5 segundos:#Invencibilidad#No puedes disparar, pero infliges 40 de daño por contacto cada segundo#{{HealingRed}} Probabilidad de curar medio corazón rojo al matar un enemigo#{{Fear}} Asusta a todos los enemigos en la sala"}, -- The Gamekid
	{"94", "Bolsa de centavos", "{{Coin}} Genera una moneda aleatoria cada 2 habitaciones"}, -- Bolsa de centavos
	{"95", "Robo-Baby", "Dispara lásers que infligen 3.5 de daño"}, -- Robo-Baby
	{"96", "Pequeño C.H.A.D.", "{{HalfHeart}} Genera medio corazón rojo cada 3 habitaciones"}, -- Little C.H.A.D.
	{"97", "El Libro del Pecado", "Genera un recolectable aleatorio"}, -- El Libro del Pecado
	{"98", "La Reliquia", "{{SoulHeart}} Genera 1 corazón de alma cada 5-6 habitaciones"}, -- The Relic
	{"99", "Pequeño Gish", "{{Slow}} Dispara lágrimas ralentizantes que infligen 3.5 de daño"}, -- Little Gish
	{"100", "Pequeño Steven", "Dispara lágrimas teledirigidas que infligen 3.5 de daño"}, -- Little Steven
	{"101", "El Halo", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.3#↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- El Halo
	{"102", "Botella de Píldoras de Mamá", "{{Pill}} Genera 1 píldora"}, -- Botella de Píldoras de Mamá
	{"103", "El Resfriado Común", "{{Poison}} 25% de probabilidad de disparar lágrimas venenosas #{{Luck}} 100% de probabilidad con 12 de suerte"}, -- The Common Cold
	{"104", "El parásito", "Las lágrimas se dividen en 2 al impactar#Las lágrimas divididas infligen la mitad de daño"}, -- The Parasite
	{"105", "El D6", "Cambia los objetos en pedestales de la habitación actual por otros"}, -- The D6
	{"106", "Sr. Mega", "↑ {{Bomb}} Daño de bomba x1.83#{{Bomb}} +5 Bombas"}, -- Mr. Mega
	{"107", "Las Tijeras Dentadas", "{{Timer}} Durante la habitación actual:#Permite volar#Tu cuerpo se separa y ataca a los enemigos#El cuerpo inflige 82.5 de daño por contacto cada segundo"}, -- The Pinking Shears
	{"108", "La Hostia", "Reduce todo el daño recibido a medio corazón"}, -- La Hostia
	{"109", "Dinero = poder", "↑ {{Damage}} +0.04 de daño por cada {{Coin}} moneda que tengas"}, -- Dinero = poder
	{"110", "Lentillas de Mamá", "↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#20% de probabilidad de disparar lágrimas petrificadoras#{{Luck}} 50% de probabilidad con 20 de suerte"}, -- Mom's Contacts
	{"111", "El frijol", "Pedo venenoso#{{Poison}} Eenvenena e inflige 5 de daño a los enemigos cercanos#El veneno inflige tu daño 6 veces"}, -- The Bean
	{"112", "Ángel Guardián", "Familiar orbital#Acelera a los otros orbitales#Bloquea proyectiles#Inflige 105 de daño por contacto cada segundo"}, -- Guardian Angel
	{"113", "Bebé Demonio", "Dispara automáticamente a los enemigos cercanos#Inflige 3 de daño por lágrima"}, -- Demon Baby
	{"114", "Cuchillo de Mamá", "{{Chargeable}} Reemplaza tus lágrimas por un cuchillo lanzable#{{Damage}} Al tenerlo en la mano inflige 2 veces tu daño#Inflige 6 veces tu daño al recorrer su máxima distancia"}, -- Mom's Knife
	{"115", "Tabla Ouija", "Lágrimas espectrales"}, -- Tabla Ouija
	{"116", "9 Voltios", "{{Battery}} Carga automaticamente la primera barra de los objetos activos#{{Battery}} Carga por completo el objeto activo actual"}, -- 9 Volt
	{"117", "Ave Muerta", "Invoca un pajaro que ataca a los enemigos tras recibir daño#El pájaro inflige 4.3 de daño por contacto cada segundo"}, -- Dead Bird
	{"118", "Azufre", "↓ {{Tears}} Lágrimas x0.33#{{Chargeable}} Reemplaza tus lágrimas por un rayo de sangre cargable#{{Damage}} Inflige 13 veces tu daño cada 0.9 segundos"}, -- Brimstone
	{"119", "Bolsa de Sangre", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} +0.3 de velocidad#{{HealingRed}} Cura 4 corazones"}, -- Bolsa de Sangre
	{"120", "Hongo Raro (Delgado)", "↑ {{Speed}} Velocidad +0.3#↑ {{Tears}} Lágrimas +1.7#↓ {{Damage}} Daño x0.9#↓ {{Damage}} Daño -0.4"}, -- Odd Mushroom (Thin)
	{"121", "Hongo Raro (Largo)", "↑ {{EmptyHeart}} +1 Contenedor de corazón vacío#↑ {{Damage}} Daño +0.3#↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↓ {{Speed}} Velocidad -0.1"}, -- Odd Mushroom (Large)
	{"122", "Ramera de Babilonia", "Al tener medio corazón o menos:#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +1.5"}, -- Whore of Babylon
	{"123", "Manual de monstruos", "{{Timer}} Genera un familiar aleatorio durante la habitación actual"}, -- Monster Manual
	{"124", "Manuscritos del Mar Muerto", "Activa un efecto aleatorio de una lista de objetos activos"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bomba", "{{Bomb}} +5 Bombas#Bombas teledirigidas"}, -- Bobby-Bomb
	{"126", "Cuchilla", "↑ {{Damage}} Daño +1.2 en la habitación actual#{{Warning}} Inflige 1 corazón de daño al usarse#{{Heart}} Remueve primero los corazones rojos"}, -- Razor Blade
	{"127", "Olvídame Ya", "Reinicia y cambia el piso actual#Se consume tras usarlo"}, -- Forget Me Now
	{"128", "Siempre solo", "Mosca orbital de largo alcance#Inflige 30 de daño por contacto cada segundo"}, -- Forever Alone
	{"129", "Cubo de manteca", "↑ {{EmptyHeart}} +2 Contenedores de corazón vacíos#↓ {{Speed}} Velocidad -0.2#{{HealingRed}} Cura medio corazón"}, -- Bucket of Lard
	{"130", "Un poni", "Al tenerlo:#{{Speed}} Establece tu velocidad minima a 1.5#Permite volar#Al usarlo, embiste en la dirección de movimiento"}, -- A Pony
	{"131", "Bolsa de Bombas", "{{Bomb}} Suelta 1 bomba cada 3 habitaciones"}, -- Bomb Bag
	{"132", "Un Trozo de Carbón", "{{Damage}} El daño de tus lágrimas aumentará con la distancia recorrida"}, -- A Lump of Coal
	{"133", "Pata de Guppy", "{{SoulHeart}} Convierte 1 contenedor de corazón en 3 corazones de alma"}, -- Guppy's Paw
	{"134", "Cola de Guppy", "{{Chest}} 33% de probabilidad de remplazar la recompensa de habitación por un cofre#33% de probabilidad de eliminar la recompensa"}, -- Guppy's Tail
	{"135", "Bolsa I.V.", "{{Coin}} Te inflige medio corazón de daño y genera 1-2 monedas#{{Heart}} Remueve primero los corazones rojos"}, -- IV Bag
	{"136", "Mejor Amigo", "Genera un señuelo que atrae a los enemigos y explota tras 5 segundos"}, -- Best Friend
	{"137", "Detonador remoto", "{{Bomb}} +5 Bombas#Las bombas colocadas ya no explotarán automaticamente#Permite detonar las bombas colocadas de forma remota"}, -- Remote Detonator
	{"138", "Estigma", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +0.3"}, -- Estigma
	{"139", "Bolso de Mamá", "{{Trinket}} Permite llevar 2 trinkets"}, -- Bolso de Mamá
	{"140", "Maldición de Bob", "↑ {{Bomb}} +5 Bombas#{{Poison}} Bombas venenosas"}, -- Maldición de Bob
	{"141", "Chico del desfile", "{{Coin}} Genera 7 monedas aleatorias"},
	{"142", "Escapulario", "{{SoulHeart]] +1 Corazón de alma al recibir daño teniendo medio corazón#Solo puede activarse una vez por habitación"}, -- Scapular
	{"143", "Bola Rápida", "↑ {{Speed}} +0.3 Velocidad#↑ {{Shotspeed}} +0.2 Vel. de lágrimas"}, -- Speed Ball
	{"144", "Amigo Pordiosero", "{{Coin}} Recoge monedas cercanas#Genera recolectables aleatorios tras recoger 3-4 monedas"}, -- Amigo Pordiosero
	{"145", "Cabeza de Guppy", "Genera 2-4 moscas azules"}, -- Cabeza de Guppy
	{"146", "Carta de Plegaria", "{{EternalHeart}} +1 Corazón eterno"}, -- Carta de Plegaria
	{"147", "Pico de Notch", "{{Timer}} Durante la habitación actual:#Permite romper rocas al caminar sobre ellas#Permite romper las paredes que conducen a habitaciones secretas"}, -- Notched Axe
	{"148", "Infestación", "Genera 1-3 moscas azules al recibir daño"}, -- Infestation
	{"149", "Ipecac", "↑ {{Damage}} Daño +40#↓ {{Tears}} Lágrimas x0.5#Tus lágrimas son disparadas en arco#{{Poison}}Las lágrimas explotan y envenenan a los enemigos cercanos"}, -- Ipecac
	{"150", "Amor Rudo", "10% de probabilidad de disparar dientes#{{Damage}} Los dientes infligen 3.2 veces tu daño#{{Luck}} 100% de probabilidad con 9 de suerte"}, -- Tough Love
	{"151", "Miasis", "Las lágrimas tienen 1/6 de probabilidad de generar moscas azules al golpear un enemigo"}, -- The Mulligan
	{"152", "Tecnología 2", "↓ {{Tears}} Lágrimas x0.5#↓ {{Damage}} Daño x0.65#Remplaza tu ojo derecho con un láser continuo#{{Damage}} El láser inflige 3 veces tu daño cada segundo"}, -- Technology 2
	{"153", "Araña mutante", "↓ {{Tears}} Lágrimas x0.48#Disparo cuádruple"}, -- Mutant Spider
	{"154", "Exfoliación química", "Otorga para el ojo izquierdo:#↑ {{Damage}} Daño +2"}, -- Chemical Peel
	{"155", "El fisgón", "Flota por la habitación#Inflige 17 de daño por contacto cada segundo"}, -- El fisgón
	{"156", "Hábito", "{{Battery}} Recibir daño añade una carga a tu objeto activo"}, -- Habit
	{"157", "Lujuria de Sangre", "↑ {{Damage}} Al ser golpeado, aumenta hasta 6 veces tu daño#La bonificación se reinicia tras cambiar de planta"}, -- Bloody Lust
	{"158", "Bola de cristal", "Puede generar:#Un {{SoulHeart}} Corazón de Alma, {{Card}} carta o {{Rune}} runa#{{Timer}} Revela el mapa del piso actual(excepto la {{SuperSecretRoom}} Habitación Súper Secreta)"}, -- Crystal Ball
	{"159", "Espíritu de la noche", "Permite volar#Lágrimas espectrales"}, -- Spirit of the Night
	{"160", "Desgarra el Cielo", "Genera 5 rayos de luz cerca de tus enemigos#Cada rayo inflige 8 veces tu daño +160 cada 0.8 segundos"}, -- Crack the Sky
	{"161", "Anj", "{{Player4}} Reapareces como ??? (Blue Baby) tras morir"}, -- Ankh
	{"162", "Cruz celta", "20% de probabilidad de volverte invencible tras recibir daño#{{Luck}} 100% de probabilidad con 27 de suerte"}, -- Celtic Cross
	{"163", "Bebé fantasma", "Dispara lágrimas espectrales que infligen 3.5 de daño"}, -- Ghost Baby
	{"164", "La Vela", "Lanza un fuego azul#Inflige daño por contacto, bloquea proyectiles enemigos y desaparece tras 2 segundos"}, -- The Candle
	{"165", "Gato de nueve colas", "↑ {{Damage}} Daño +1#↑ {{Shotspeed}} Vel. de lágrimas +0.23"}, -- Cat-o-nine-tails
	{"166", "D20", "Cambia todos los recolectables en la habitación"}, -- D20
	{"167", "Bebé arlequín", "Dispara dos lágrimas en un patrón en V que infligen 4 de daño"}, -- Harlequin Baby
	{"168", "Fetus Épico", "Reemplaza tus lágrimas por un ataque aéreo controlable#{{Damage}} Los cohetes infligen 20 veces tu daño"},
	{"169", "Polifemo", "↑ {{Damage}} Daño +4#↑ {{Damage}} Daño x2#↓ {{Tears}} Lágrimas x0.48#Las lágrimas atraviesan a los enemigos si el daño supera su salud"}, -- Polyphemus
	{"170", "Papá Patas-largas", "Aplasta a un enemigo cercano cada 4 segundos#Inflige 40 de daño por segundo"}, -- Papá Patas-largas
	{"171", "Trasero Aracnido", "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Inflige 10 de daño a todos los enemigos"}, -- Trasero Aracnido
	{"172", "Daga de Sacrificio", "Cuchillo orbital#Bloquea proyectiles enemigos#Inflige 225 de daño por contacto cada segundo"}, -- Sacrificial Dagger
	{"173", "Mitra", "{{SoulHeart}} 50% de probabilidad de convertir los corazones rojos en corazones de alma"}, -- Mitre
	{"174", "Bebé arcoiris", "Dispara lágrimas aleatorias que infligen 3-5 de daño"}, -- Rainbow Baby
	{"175", "Llave de Papá", "Abre todas las puertas en la habitación actual#Puede abrir las {{SecretRoom}}/{{SuperSecretRoom}} Salas Secretas, {{ChallengeRoom}}/{{BossRushRoom}} Salas de Desafio y la puerta de Mega Satán"}, -- Dad's Key
	{"176", "Células madre", "↑ {{Heart}} +1 de Vida#↑ {{Shotspeed}} Vel. de lágrimas +0.16"}, -- Stem Cells
	{"177", "Tragamonedas portátil", "{{Coin}} Probabilidad de generar un recolectable aleatorio a cambio de una moneda"}, -- Portable Slot
	{"178", "Agua bendita", "Genera un charco de agua bendita tras recibir daño#El charco inflige 24 de daño cada segundo"}, -- Holy Water
	{"179", "Destino", "{{EternalHeart}} +1 Corazón eterno#Permite volar"}, -- Fate
	{"180", "El frijol negro", "Te tiras un pedo al recibir daño#{{Poison}} El pedo envenena a los enemigos cercanos"}, -- The Black Bean
	{"181", "Poni blanco", "Al tenerlo:#{{Speed}} Establece tu velocidad minima en 1.5#Permite volar#Al usarlo, embiste en la dirección de movimiento, dejando un rastro de rayos de luz"}, -- White Pony
	{"182", "Sagrado corazón", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño x2.3#↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +4.125#↑ {{Tearsize}} Tamaño de lágrimas +0.75#↓ {{Tears}} Lágrimas -0.4#↓ {{Shotspeed}} Vel. de lágrimas -0.25#{{HealingRed}} Salud al máximo#Lágrimas teledirigidas"}, -- Sacred Heart
	{"183", "Mondadientes", "↑ {{Tears}} Lágrimas +0.7#↑ {{Shotspeed}} Vel. de lágrimas +0.16"}, -- Tooth Picks
	{"184", "Santo Grial", "↑ {{Heart}} +1 de Vida#Permite volar"}, -- Santo Grial
	{"185", "Paloma muerta", "Lágrimas espectrales#Permite volar"}, -- Dead Dove
	{"186", "Derechos de sangre", "Inflige 40 de daño a cada enemigo#{{Warning}} Te inflige 1 corazón de daño al usarlo#{{Heart}} Remueve primero los corazones rojos"}, -- Blood Rights
	{"187", "Bola de pelo de Guppy", "Bola de pelos que te sigue#Bloquea proyectiles e inflige daño a enemigos#Matar enemigos aumenta su tamaño y daño"}, -- Guppy's Hairball
	{"188", "Abel", "Refleja tus movimientos#Dispara hacia tu ubicación#Inflige 3.5 de daño"}, -- Abel
	{"189", "Súper Fan de SMB", "↑ {{Heart}} +1 de Vida#↑{{Speed}} Velocidad +0.2#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.3#↑ {{Range}} Alcance +0.5#↑ {{Tearsize}} Tamaño de lágrimas +1#{{HealingRed}} Salud al maximo"}, -- SMB Super Fan
	{"190", "Piro", "{{Bomb}} +99 Bombas"}, -- Piro
	{"191", "Billete de 3 dólares", "Tus lágrimas obtienen efectos aleatorios cada 2-3 segundos"}, -- Billete de 3 dólares
	{"192", "Telepatía para Tontos", "{{Timer}} Otorga lágrimas teledirigidas para la habitación actual"}, -- Telepathy For Dummies
	{"193", "¡CARNE!", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +0.3"}, -- ¡CARNE!
	{"194", "Bola 8 mágica", "↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{Card}} Genera una carta"}, -- Magic 8 Ball
	{"195", "Monedero de Mamá", "{{Pill}} Genera 4 píldoras"}, -- Monedero de Mamá
	{"196", "Squeezy", "↑ {{Tears}} Lágrimas +0.4#{{SoulHeart}} Genera 2 corazones de alma"}, -- Squeezy
	{"197", "Jugo de Jesús", "↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Jesus Juice
	{"198", "Caja", "Genera 1 recolectable de cada tipo"}, -- Caja
	{"199", "Llave de Mamá", "{{Key}} +2 Llaves#Los cofres contienen más recolectables"}, -- Llave de Mamá
	{"200", "Sombra de ojos de Mamá", "{{Charm}} 10% de probabilidad de disparar lágrimas encantadoras#{{Luck}} 100% de probabilidad con 27 de suerte"}, -- Mom's Eyeshadow
	{"201", "Barra de hierro", "↑ {{Damage}} Daño +0.3#{{Confusion}} 10% de probabilidad de disparar lágrimas que confunden#{{Luck}} 100% de probabilidad con 27 de suerte"}, -- Iron Bar
	{"202", "Toque de Midas", "Convierte a los enemigos en estatuas de oro al tocarlos#Inflige daño por contacto basado en tu cantidad de monedas#{{Coin}} Los enemigos dorados dejan caer monedas al morir#Mayor probabilidad de que la caca que genéres sea dorada"}, -- Midas' Touch
	{"203", "Paquete modesto", "Reemplaza los recolectables por sus versiones dobles"}, -- Humbleing Bundle
	{"204", "Riñonera", "50% de probabilidad de soltar un recolectable aleatorio tras recibir daño"}, -- Fanny Pack
	{"205", "Enchufe Afilado", "{{Battery}} Carga el objeto activo a cambio de 2 corazones por carga faltante#Solo funciona si el objeto activo no tiene cargas"}, -- Sharp Plug
	{"206", "Guillotina", "↑ {{Tears}} Más lágrimas#↑ {{Damage}} Daño +1#Convierte tu cabeza en un orbital#Disparas desde la cabeza#La cabeza inflige 105 de daño por contacto cada segundo"}, -- Guillotine
	{"207", "Bola de vendas", "NVL1: Orbital#{{Charm}} NVL2: Orbital que dispara lágrimas encantadoras#{{Charm}} NVL3: Bandage girl#{{Charm}} NVL4: Bandage girl NVL2"}, -- Ball of Bandages
	{"208", "Cinturón de campeón", "↑ {{Damage}} Daño +1#+15% de probabilidad de encontrar enemigos campeones#No aumenta la probabilidad de encontrar jefes campeones"}, -- Champion Belt
	{"209", "Bombas de Trasero", "{{Bomb}} +5 Bombas#{{Confusion}} Las explosiones dañan y confunden a todos los enemigos en la habitación"}, -- Butt Bombs
	{"210", "Hoja roída", "Otorga invencibilidad tras quedarte quieto por 1 segundo"}, -- Gnawed Leaf
	{"211", "Bebé-araña", "Genera 1-2 arañas azules al recibir daño"}, -- Spiderbaby
	{"212", "Collar de Guppy", "50% de probabilidad de reaparecer con medio corazón tras morir"}, -- Guppy's Collar
	{"213", "Lentilla perdida", "↓ {{Shotspeed}} Vel. de lágrimas -0.16#Las lágrimas bloquean proyectiles enemigos"}, -- Lost Contact
	{"214", "Anémico", "↑ {{Range}} Alcance +5 #{{Timer}} Al recibir daño, deja un rastro de fluido en el suelo durante la habitación#El fluido inflige 6 de daño cada segundo"}, -- Anemic
	{"215", "Cabeza de cabra", "↑ {{AngelDevilChance}} 100% de probabilidad de encontrar salas de Ángel/Diablo"}, -- Goat Head
	{"216", "Manto Ceremonial", "↑ {{Damage}} Daño +1#{{BlackHeart}} +3 Corazones negros"}, -- Ceremonial Robes
	{"217", "Peluca de Mamá", "{{HealingRed}} Cura 1 corazón#5% de probabilidad de generar una araña azul al disparar#{{Luck}} 100% de probabilidad con 10 de suerte"}, -- Mom's Wig
	{"218", "Placenta", "↑ {{Heart}} +1 de Vida#{{HealingRed}} 50% de probabilidad de curar medio corazón cada minuto"}, -- Placenta
	{"219", "Vendaje Viejo", "↑ {{EmptyHeart}} +1 Contenedor de corazón#{{Heart}} Al recibir daño, 10% de probabilidad de generar corazones"}, -- Old Bandage
	{"220", "Bombas Tristes", "{{Bomb}} +5 Bombas#Tus bombas disparan 10 lágrimas en un circulo al explotar"}, -- Sad Bombs
	{"221", "Pegamento Elástico", "Las lágrimas rebotan al chocar contra paredes, enemigos y obstáculos"}, -- Rubber Cement
	{"222", "Anti-Gravedad", "↑ {{Tears}} Lágrimas +2#Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas"}, -- Anti-Gravity
	{"223", "Piromaníaco", "{{Bomb}} +5 Bombas#Otorga inmunidad a las explosiones#{{HealingRed}} Ser golpeado por explosiones cura 1 corazón"}, -- Pyromaniac
	{"224", "Cuerpo de Cricket", "↑ {{Tears}} Lágrimas +1#↑ {{Tearsize}} Tamaño de lágrimas x1.2#↓ {{Range}} Alcance -10#Las lágrimas se dividen en 4 al impactar#Las lágrimas divididas infligen la mitad de daño"}, -- Cricket's Body
	{"225", "Máscara BDSM", "{{SoulHeart}} Probabilidad de generar un corazón de alma al recibir daño#{{HalfHeart}} Probabilidad de que los enemigos dejen caer medio corazón rojo al morir"}, -- Gimpy
	{"226", "Loto Negra", "↑ {{Heart}} +1 de Vida#↑ {{SoulHeart}} +1 Corazón de alma#↑ {{BlackHeart}} +1 Corazón negro"}, -- Black Lotus
	{"227", "El Cochinito", "{{Coin}} +3 monedas#{{Coin}} Genera 1-2 monedas al recibir daño"}, -- Piggy Bank
	{"228", "Perfume de Mamá", "↑ {{Tears}} Lágrimas +1#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos"},  -- Mom's Perfume
	{"229", "Pulmón de Monstro", "↓ {{Tears}} Lágrimas x0.23#{{Chargeable}} Otorga un ataque cargado que escupirá una ráfaga de lágrimas rojas, similar a Monstro"}, -- Monstro's Lung
	{"230", "Abaddón", "#↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.5#↓ {{EmptyHeart}} Remueve todos tus contenedores de corazón#↑ {{BlackHeart}} +6 Corazones negros#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos"}, -- Abaddon
	{"231", "Bola de alquitrán", "{{Slow}} 10% de probabilidad de disparar lágrimas ralentizantes#{{Luck}} 100% de probabilidad con 18 de suerte#Deja un rastro de fluido que ralentiza a los enemigos"}, -- Ball of Tar
	{"232", "Cronómetro", "↑ {{Speed}} Velocidad +0.3#{{Slow}} Ralentiza a los enemigos en la habitación de forma permanente al recibir daño"}, -- Stop Watch
	{"233", "Mini-Planeta", "↑ {{Tearsize}} Tamaño de lágrimas +7#Lágrimas espectrales#Las lágrimas orbitan a tu alrededor"}, -- Tiny Planet
	{"234", "Infestación 2", "Genera una araña azul al matar a un enemigo"}, -- Infestation 2
	{"235", "", "<Este objeto no existe>"},
	{"236", "E. Coli", "Convierte a los enemigos en caca al tocarlos"}, -- E. Coli
	{"237", "Toque de la Muerte", "↑ {{Damage}} Daño +1.5#↑ {{Tearsize}} Tamaño de lágrima x2#↓ {{Tears}} Lágrimas -0.3#Lágrimas perforantes#Reemplaza tus lágrimas con guadañas"}, -- Death's Touch
	{"238", "Trozo de Llave 1", "{{Warning}} Juntar ambas Piezas de llave abrirá una puerta Dorada#{{AngelRoom}} +25% de probabilidad de encontrar salas de Ángel#{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos"}, -- Trozo de Llave 1
	{"239", "Trozo de Llave 2", "{{Warning}} Juntar ambas Piezas de llave abrirá una puerta Dorada#{{AngelRoom}} +25% de probabilidad de encontrar salas de Ángel#{{EternalHeart}} +2% de probabilidad de encontrar corazones eternos"}, -- Trozo de Llave 2
	{"240", "Tratamiento experimental", "↑ Aumenta 4 estadísticas aleatorias#↓ Reduce 2 estadísticas aleatorias"}, -- Experimental Treatment
	{"241", "Contrato de Abajo", "Duplica las recompensas al limpiar habitaciónes#33% de probabilidad de eliminar las recompensas"}, -- Contract from Below
	{"242", "Infamia", "50% de probabilidad de bloquear proyectiles enemigos"}, -- Infamy
	{"243", "Escudo de Trinidad", "Escudo que bloquea proyectiles en la dirección que disparas"}, -- Trinity Shield
	{"244", "Tech.5", "Dispara láseres ocasionalmente junto a tus lágrimas"}, -- Tech.5
	{"245", "20/20", "Disparas 2 lágrimas a la vez"}, -- 20/20
	{"246", "Mapa azul", "{{SecretRoom}} Revela las habitaciones secretas en el mapa"}, -- Blue Map
	{"247", "Amigos X siempre", "Duplica el daño de los familiares"}, -- Amigos X siempre
	{"248", "Mente de Colmena", "Duplica el daño de las moscas y arañas azules"}, -- Hive Mind
	{"249", "Hay opciones", "Permite elegir entre 2 objetos al derrotar un jefe"}, -- Hay opciones
	{"250", "Bombas 2x1", "{{Bomb}} Convierte todas las bombas recolectables en bombas dobles"}, -- Bogo Bombs
	{"251", "Mazo inicial", "{{Card}} Genera una carta al recogerlo#Permite llevar 2 cartas#Convierte todas las píldoras en cartas"}, -- Starter Deck
	{"252", "Pequeña bolsa", "{{Pill}} Genera una píldora al recogerlo#Permite llevar 2 píldoras#Convierte todas las cartas en píldoras"}, -- Little Baggy
	{"253", "Costra mágica", "↑ {{Heart}} +1 de Vida#↑ {{Luck}} Suerte +1"}, -- Magic Scab
	{"254", "Coágulo", "Otorga para el ojo izquierdo:#↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +5"}, -- Blood Clot
	{"255", "Tornillo", "↑ {{Tears}} Lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2"}, -- Screw
	{"256", "Bombas Ardientes", "{{Bomb}} +5 Bombas#{{Burning}} Tus bombas dejan una llama al explotar"}, -- Hot Bombs
	{"257", "Mente en llamas", "{{Burning}} Tus lágrimas incendian a los enemigos#10% de probabilidad de disparar lágrimas que explotan al impactar enemigos#{{Luck}} 100% de probabilidad con 13 de suerte#{{Warning}} La explosión puede hacerte daño"}, -- Fire Mind
	{"258", "Missing No.", "Cambia todos tus objetos y estadísticas al recogerlo y tras cambiar de piso"}, -- Missing No.
	{"259", "Materia oscura", "↑ {{Damage}} Daño +1#{{Fear}} 33% de probabilidad de disparar lágrimas que asustan a los enemigos#{{Luck}} 100% de probabilidad con 20 de suerte"}, -- Dark Matter
	{"260", "Vela negra", "{{CurseBlind}} Otorga inmunidad a las maldiciones#↑ {{BlackHeart}} +1 Corazón negro#{{AngelDevilChance}} +15% de probabilidad de encontrar salas de Ángel/Diablo"}, -- Black Candle
	{"261", "Proptosis", "↑{{Damage}} Daño x2#↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida"},
	{"262", "Hoja 2 faltante", "{{BlackHeart}} +1 corazón negro#Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala"}, -- Missing Page 2
	{"263", "", "<Este objeto no existe>"},
	{"264", "Mosca Inteligente", "Mosca orbital#Ataca a los enemigos cercanos tras recibir daño#Inflige 22.5 de daño por contacto cada segundo"}, -- Smart Fly
	{"265", "Bebé Seco", "Bloquea proyectiles enemigos#Tras bloquear un proyectil, 10% de probabilidad de infligir daño a los enemigos en la habitación"}, -- Dry Baby
	{"266", "Nido Jugoso", "{{Slow}} Deja un rastro de fluido ralentizante#Genera 1-2 arañas azules tras limpiar una habitación"}, -- Juicy Sack
	{"267", "Robo-Baby 2.0", "Dispara láseres#Inflige 3.5 de daño por disparo#Se mueve en la diercción que estes disparando"}, -- Robo-Baby 2.0
	{"268", "Bebé Podrido", "Genera moscas azules al disparar"}, -- Bebé Podrido
	{"269", "Bebé sin Cabeza", "Deja un rastro de fluido en el suelo#El fluido inflige 6 de daño por contacto cada segundo"}, -- Headless Baby
	{"270", "Sanguijuela", "Persigue a los enemigos#{{HealingRed}} Cura medio corazón al matar un enemigo#Inflige 3.2 de daño por contacto cada segundo"}, -- Leech
	{"271", "Bolsa misteriosa", "Genera recolectables aleatorios cada 5-6 habitaciones"}, -- Bolsa misteriosa
	{"272", "Mosca Hermosa", "Mosca explosiva aliada#La explosión inflige 60 de daño#{{Warning}} La explosión puede herir al jugador"}, -- BBF
	{"273", "Cerebro de Bob", "{{Throwable}} Familiar lanzable#{{Poison}} La explosión inflige 60 de daño y envenena a los enemigos cercanos#{{Warning}} La explosión puede herir al jugador"}, -- Bob's Brain
	{"274", "Gran Amigo", "Al recibir daño, genera un orbital de alcance medio durante la sala#Inflige 75 de daño por contacto cada segundo"}, -- Best Bud
	{"275", "Mini-Azufre", "{{Chargeable}} Familiar que carga y dispara un {{Collectible118}} rayo de sangre#El rayo inflige 31.5 de daño cada 0.63 segundos"}, -- Lil Brimstone
	{"276", "Corazón de Isaac", "Te vuelves invulnerable#{{Warning}} Recibirás daño si golpéan al familiar corazón"}, -- Isaac's Heart
	{"277", "Mini-Espectro", "{{Fear}} Persigue y asusta a los enemigos cercanos#Inflige 4 de daño por contacto cada segundo"}, -- Lil Haunt
	{"278", "Pordiosero Oscuro", "{{Heart}} Recoge corazones rojos cercanos#{{SoulHeart}} Genera 1 Corazón de alma o una araña tras recoger 1.5 corazones rojos"}, -- Dark Bum
	{"279", "Gran Fan", "Orbital grande#Inflige 30 de daño por contacto cada segundo"}, -- Big Fan
	{"280", "Sissy Patitas-Largas", "Invoca arañas azules en habitaciones hostiles de forma aleatoria"}, -- Sissy Longlegs
	{"281", "Saco de boxeo", "Señuelo que deambula por la habitación#Los enemigos lo atacarán en vez de al jugador si está cerca"}, -- Punching Bag
	{"282", "Cómo saltar", "Permite saltar sobre pozos y obstaculos"}, -- How to Jump
	{"283", "D100", "Cambia los objetos en pedestales y los recolectabes en la habitación#{{Warning}} Cambia todos los objetos pasivos del jugador"},
	{"284", "D4", "Cambia los objetos pasivos del jugador"}, -- D4
	{"285", "D10", "Cambia a los enemigos en la habitación"}, -- D10
	{"286", "Carta en Blanco", "Copia el efecto de la carta o runa que tengas sin consumirla"}, -- Blank Card
	{"287", "Libro de Secretos", "{{Timer}} Otorga uno de los siguientes efectos para el piso actual:#{{Collectible54}} Mapa del tesoro#{{Collectible21}} La Brújula#{{Collectible246}} Mapa azul"}, -- Book of Secrets
	{"288", "Caja de Arañas", "Genera 1-4 arañas azules"}, -- Caja de arañas
	{"289", "Vela roja", "Lanza fuego rojo#La llama Inflige daño por contacto y bloquea proyectiles enemigos#Desaparece luego de infligir daño o bloquear proyectiles 5 veces"}, -- Vela roja
	{"290", "El Jarro", "{{Heart}} Permite almacenar hasta 4 corazones rojos al tener la salud al maximo#Usar el objeto suelta los corazones almacenados en el suelo"}, -- The Jar
	{"291", "¡Flush!", "Convierte a los enemigos comunes en caca#Mata de forma instantánea a enemigos y jefes de caca"}, -- ¡Flush!
	{"292", "Biblia Satánica", "{{BlackHeart}} +1 Corazón negro"}, -- Satanic Bible
	{"293", "Cabeza de Krampus", "{{Collectible118}} Dispara un rayo de Azufre en 4 direcciones#Los rayos infligen 440 de daño cada 1.33 segundos"}, -- Head of Krampus
	{"294", "Frijol Mantequilla", "Empuja a los enemigos y proyectiles cercanos#10% de probabilidad de convertirse en {{Collectible484}} Espera, ¿qué? tras intercambiarlo por otro objeto activo y volverlo a recoger"}, -- Butter Bean
	{"295", "Dedos mágicos", "Inflige el doble de tu daño a toda la habitación#{{Coin}} Usarlo cuesta 1 moneda"}, -- Magic Fingers
	{"296", "Conversor", "{{Heart}} Convierte 2 Corazones Negros o de Alma en un Contenedor de corazón"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Caja de Pandora", "{{NoLB}}Genera recompensas en base al piso actual:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: 1 Objeto de jefe; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 objetos {{BossRoom}}; W2: {{Collectible33}} Biblia#???/Vacío: Nada#Sheol: 1 Objeto {{DevilRoom}} + 1 {{BlackHeart}}; Catedral: 1 Objeto {{AngelRoom}} + 1{{EternalHeart}}#{{NoLB}}Cuarto Oscuro: Desbloquea {{Collectible523}} Caja de mudanza#Cofre: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Paso de Unicornio", "{{Timer}} Otorga durante 6 segundos:#{{Speed}} Velocidad +0.28#Invencibilidad#Inmunidad al daño por contacto#No puedes disparar"}, -- Unicorn Stump
	{"299", "Tauro", "↓ {{Speed}} Velocidad -0.3#↑ {{Speed}} Obtienes velocidad gradualmente en habitaciónes hostiles#{{Speed}} Al alcanzar 2 de velocidad, otorga invencibilidad y daño por contacto#Solo se activa 1 vez por habitación"}, -- Taurus
	{"300", "Aries", "↑ {{Speed}} Velocidad +0.25#Permite infligir daño por contacto a los enemigos"}, -- Aries
	{"301", "Cáncer", "{{SoulHeart}} +3 Corazones de Alma#Tras recibir daño, reduce el daño que recibas en la habitación a la mitad"}, -- Cancer
	{"302", "Leo", "Aumenta tu tamaño#Permite romper las rocas al caminar sobre ellas"}, -- Leo
	{"303", "Virgo", "Probabilidad de volverte invencible tras recibir daño#{{Luck}} 100% de probabilidad con 10 de suerte#{{Pill}} Convierte las píldoras negativas en positivas"}, -- Virgo
	{"304", "Libra", "+6 {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves#Equilibra tus estadísticas#Se distribuirán los cambios de estadísticas futuros"}, -- Libra
	{"305", "Escorpio", "{{Poison}} Lágrimas venenosas"}, -- Escorpio
	{"306", "Sagitario", "↑ {{Speed}} Velocidad +0.2#Lágrimas perforantes"}, -- Sagittarius
	{"307", "Capricornio", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.1#↑ {{Tears}} Lágrimas +0.50#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +1.5#+1 {{Coin}} moneda, {{Bomb}} bomba y {{Key}} llave"}, -- Capricorn
	{"308", "Aquario", "Dejas un rastro de fluido#El fluido inflige 6 de daño por segundo"}, -- Aquarius
	{"309", "Piscis", "↑ {{Tears}} Lágrimas +0.5#↑ {{Tearsize}} Tamaño de lágrima x1.25#Aumenta el empuje de las lágrimas"}, -- Piscis
	{"310", "Rímel de Eva", "↑ {{Damage}} Daño x2#↓ {{Tears}} Lágrimas x0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.5"}, -- Eve's Mascara
	{"311", "Sombra de Judas", "↑ +1 Vida extra#{{Player12}} Al morir, reapareces como Judas Oscuro con el doble de daño"}, -- Judas' Shadow
	{"312", "Moño de Maggy", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#Duplica la curación obtenida por corazones rojos"}, -- Maggy's Bow
	{"313", "Manto sagrado", "Ignora el daño recibido una sola vez por habitación"}, -- Holy Mantle
	{"314", "Curvas Gruesas", "↑ {{Heart}} +1 de Vida#↓ {{Speed}} Velocidad -0.4#Permite romper rocas al caminar sobre ellas"}, -- Curvas Gruesas
	{"315", "Atractor extraño", "Lágrimas magnéticas#Las lágrimas atraerán enemigos, recolectables y trinkets"},
	{"316", "Ojo maldito", "{{Chargeable}} Ola cargable de 4 lágrimas#{{Warning}} Recibir daño mientras carga el ataque te teletrasnporta a una habitación aleatoria"},
	{"317", "Líquido misterioso", "Las lágrimas dejan fluido en el suelo#El fluido inflige 30 de daño por segundo"}, -- Mysterious Liquid
	{"318", "Géminis", "Familiar de corto alcance#Inflige 6 de daño por contacto cada segundo"}, -- Gemini
	{"319", "El otro ojo de Caín", "Rebota por la habitación#Dispara lágrimas de baja precisión que infligen tu daño"}, -- Cain's Other Eye
	{"320", "Único amigo de ???", "Mosca controlable#Inflige 37.5 de daño por contacto cada segundo"}, -- ???'s Only Friend
	{"321", "Cadenas de Sansón", "Bola de acero encadenada que puede destruir rocas#Inflige 10.7 de daño por contacto cada segundo"}, -- Samson's Chains
	{"322", "Bebé Mongo", "Imita los efectos de lágrimas de uno de tus familiares#Inflige 3.5 de daño si no tienes familiares"}, -- Mongo Baby
	{"323", "Lágrimas de Isaac", "Dispara 8 lágrimas en todas direcciones#Las lágrimas imitan los efectos del jugador#Se recarga al disparar lágrimas"}, -- Lágrimas de Isaac
	{"324", "Undefined", "Te teletransporta a:#{{TreasureRoom}} Sala del Tesoro#{{SecretRoom}} Habitación Secreta#{{SuperSecretRoom}} Habitación Súper Secreta#{{ErrorRoom}} o la sala de I AM ERROR"}, -- Undefined
	{"325", "Tijeras", "{{Timer}} Convierte tu cabeza en una torreta por la habitación#Esta dispara lágrimas que infligen 3.5 de daño#El cuerpo se controla por separado y dispara normalmente"}, -- Scissors
	{"326", "Respiración de vida", "Mantener presionado el boton de USO vacía la barra de carga del objeto#Vaciar la barra te vuelve invencible temporalmente#{{Warning}} Mantener presionado demasiado tiempo te hará daño"},
	{"327", "La Polaroid", "Recibir daño teniendo medio o ningun corazón rojo:#Otorga un escudo de invencibilidad durante 5 segundos"}, -- The Polaroid
	{"328", "El Negativo", "Recibir daño teniendo medio o ningun corazón rojo:#Inflige 40 de daño a todos los enemigos en la habitación"}, -- The Negative
	{"329", "La técnica de Ludovico", "Reemplaza tus lágrimas con una lágrima gigante controlable"}, -- La técnica de Ludovico
	{"330", "Leche de Soya", "↑ {{Tears}} Lágrimas x4#↓ {{Damage}} Daño x0.2#↓ {{Tearsize}} Tamaño de lágrima x0.5"}, -- Soy Milk
	{"331", "Deidad", "↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +1.2#↑ {{Tearsize}} Tamaño de lágrimas +0.8#↓ {{Tears}} Lágrimas -0.3#↓{{Shotspeed}} Vel. de lágrimas -0.3#Lágrimas teledirigidas#{{Damage}} Las lágrimas obtienen un aura que inflige 4.5 veces tu daño por segundo"}, -- Godhead
	{"332", "Harapos de Lázaro", "{{Player11}} Reaparece como Lázaro Resucitado tras morir"}, -- Lazarus' Rags
	{"333", "La Mente", "Revela completamente el mapa"}, -- The Mind
	{"334", "El Cuerpo", "↑ {{Heart}} +3 de Vida"}, -- El Cuerpo
	{"335", "El Alma", "{{SoulHeart}} +2 Corazones de alma#Otorga un aura que empuja a enemigos y proyectiles"}, -- The Soul
	{"336", "Cebolla Muerta", "↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrima x1.5#↓ {{Tearsize}} Tamaño de lágrima -0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.4#Otorga lágrimas perforantes y espectrales"},
	{"337", "Reloj roto", "{{Slow}} Ralentiza la habitación cada cuatro salas#13% de probabilidad de acelerar la habitación"}, -- Broken Watch
	{"338", "El Búmeran", "Boomerang lanzable#Confunde a los enemigos e inflige el doble de tu daño#Puede recoger y acercar objetos"}, -- The Boomerang
	{"339", "El Gancho", "↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#↑ {{BlackHeart}} +1 Corazón negro"}, -- Safety Pin
	{"340", "Píldora de Cafeína", "↑ {{Speed}} Velocidad +0.3#↑ Reduce tu tamaño#{{Pill}} Genera una píldora aleatoria al tomarlo"}, -- Caffeine Pill
	{"341", "Foto destruida", "↑ {{Tears}} Lágrimas +0.7#↑ {{Shotspeed}} Vel. de lágrimas +0.16%"}, -- Torn Photo
	{"342", "Hongo Azul", "↑ {{Heart}} +1 de Vida#↑ {{Tears}} Lágrimas +0.7#↓ {{Shotspeed}} Vel. de lágrimas  -0.16"}, -- Blue Cap
	{"343", "Llave de casa", "↑ {{Luck}} Suerte +1#↑ {{SoulHeart}} +1 Corazón de alma#{{Key}} Genera 2 llaves"}, -- Latch Key
	{"344", "Caja de Fósforos", "{{BlackHeart}} +1 Corazón negro#{{Bomb}} Genera 3 bombas"}, -- Match Book
	{"345", "Synthol", "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Synthoil
	{"346", "Un Bocadillo", "↑ {{Heart}} +1 de Vida"}, -- Un Bocadillo
	{"347", "Diplopia", "Duplica los objetos en pedestales y los consumibles en la habitación"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Copia el efecto de la píldora que tengas"}, -- Placebo
	{"349", "Moneda de Madera", "{{Coin}} 50% de probabilidad de generar una moneda aleatoria"},
	{"350", "Shock tóxico", "{{Poison}} Envenena a todos los enemigos al entrar en una habitación#Los enemigos muertos dejan un charco de fluido#El fluido inflige 30 de daño cada segundo"}, -- Toxic Shock
	{"351", "Mega Frijol", "Petrifica a los enemigos de la habitación actual#{{Poison}} Envenena e inflige 5 de daño a los enemigos cercanos#Genera una onda de piedra#La onda puede romper piedras y abrir habitaciones secretas"}, -- Mega Bean
	{"352", "Cañón de cristal", "{{Warning}} Reduce tu vida a medio corazón al usar el cañón#Dispara una gran lágrima espectral y perforante que inflige 10 veces tu daño"}, -- Cañón de cristal
	{"353", "Bomber Boy", "{{Bomb}} +5 Bombas#Tus bombas explotarán en un patrón de cruz"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} +1 de Vida#{{Trinket}} Genera un trinket aleatorio"}, -- Crack Jacks
	{"355", "Perlas de Mamá", "↑ {{Range}} Alcance +1.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↑ {{Luck}} Suerte +1"}, -- Mom's Pearls
	{"356", "Batería de Coche", "{{Battery}} Duplica el efecto de los objetos activos"}, -- Car Battery
	{"357", "Cajón de Amigos", "{{Timer}} Duplica los familiares durante la habitación actual#{{Collectible113}} Invoca un Bebé Demonio si no tienes familiares"}, -- Box of Friends
	{"358", "El genio", "Lágrimas espectrales#Dispara 2 lágrimas simultaneas en diagonal"}, -- The Wiz
	{"359", "Clavos de 8 Pulgadas", "↑ {{Damage}} Daño +1.5#Aumenta el empuje"}, -- Clavos de 8 Pulgadas
	{"360", "Íncubo", "Familiar demoníaco#Dispara lágrimas que copian tus estadisticas y efectos"}, -- Incubus
	{"361", "Premio del destino", "Dispara lágrimas que copian tu daño y efectos#Dispara a la mitad de velocidad que otros familiares"}, -- Fate's Reward
	{"362", "Mini-Cofre", "35% de probabilidad de soltar un recolectable aleatorio por habitación"}, -- Lil Chest
	{"363", "Protector fiel", "Familiar orbital#Inflige 105 de daño por contacto cada segundo#Bloquea y atrae proyectiles#{{EternalHeart}} Genera un corazón eterno tras bloquear 10 proyectiles en una habitación"}, -- Sworn Protector
	{"364", "Solo Amigos", "Mosca orbital de rango medio#Inflige 45 de daño por contacto cada segundo"}, -- Solo Amigos
	{"365", "Mosca perdida", "Se mueve por las paredes y obstáculos de la habitación#Inflige 105 de daño por contacto cada segundo"}, -- Lost Fly
	{"366", "Bombas de dispersión", "{{Bomb}} +5 Bombas#Hace que las bombas se dividan en 2-4 bombas pequeñas al explotar"}, -- Bombas de dispersión
	{"367", "Bombas Pegajosas", "{{Bomb}} +5 Bombas#Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo"}, -- Sticky Bombs
	{"368", "Epífora", "↑ {{Tears}} Disparar en una única dirección reduce la precisión y aumenta la cadencia de disparo hasta un 200%"},
	{"369", "Continuo", "↑ {{Range}} Alcance +2.25#↑ {{Tearsize}} Tamaño de lágrimas +1.5#Lágrimas espectrales#Las lágrimas pueden atravesar las paredes y aparecer del lado contrario"}, -- Continuum
	{"370", "Sr. Muñeca", "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#{{UnknownHeart}} Genera 3 corazones aleatorios"}, -- Sr. Muñeca
	{"371", "Maldición de la torre", "{{Warning}} Genera 6 bombas troll al recibir daño#Las bombas copian los efectos de tus bombas"}, -- Curse of the Tower
	{"372", "Bebé recargado", "Al en una habitación hostil cada 30 segundos:#{{Battery}} Genera una batería(Hasta 2 por habitación)#{{Battery}} Agrega una carga al objeto activo (Hasta 2 por habitación)#Petrifica a los enemigos de la habitación"}, -- Charged Baby
	{"373", "Ojo Muerto", "↑ {{Damage}} +25% de daño por cada lágrima que golpee a un enemigo (máximo +100%)#Fallar reinicia el daño"}, -- Ojo Muerto
	{"374", "Luz sagrada", "10% de probabilidad de disparar una lágrima sagrada#Las lágrimas sagradas hacen caer rayos de luz desde el cielo#{{Luck}} 50% de probabilidad con 9 de suerte#El rayo inflige cuatro veces tu daño"}, -- Holy Light
	{"375", "Sombrero Host", "Otorga inmunidad a las explosiones y projectiles que caigan desde arriba#25% de probabilidad de reflejar las lágrimas enemigas"}, -- Sombrero Host
	{"376", "Reponer", "Genera 3 recolectables aleatorios#Las tiendas reponen los objetos que compres de forma instantánea"}, -- Restock
	{"377", "Nido repleto", "Las arañas enemigas te ignoran y no hacen daño por contacto"}, -- Bursting Sack
	{"378", "Número 2", "Genera una {{Collectible209}} Bomba de Trasero encendida tras disparar durante 2.35 segundos"}, -- No. 2
	{"379", "Pupila Doble", "{{Tearsize}} Tamaño de lágrimas x2#Lágrimas espectrales"}, -- Pupula Duplex
	{"380", "Pay To Play", "{{Coin}} +5 monedas#Las puertas cerradas deberán abrirse con monedas en lugar de llaves"}, -- Pay To Play
	{"381", "Bendición del Edén", "↑ {{Tears}} Lágrimas +0.7#Otorga un objeto aleatorio al inicio de la siguiente partida"}, -- Eden's Blessing
	{"382", "Bola amiga", "Lanza una bola a los enemigos para capturarlos#Volver a usarlo invocará al enemigo como aliado"}, -- Friendly Ball
	{"383", "Detonador de lágrimas", "Divide todas tus lágrimas en pantalla en un círculo de 6 lágrimas"}, -- Tear Detonator
	{"384", "Mini-Gurdy", "{{Chargeable}} Familiar lanzable que rebota por la habitación#La velocidad depende del tiempo de carga#Inflige 5-90 de daño por contacto dependiendo de su velocidad"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Recoge las monedas cercanas#Sube de nivel tras recoger 6, 12 y 24 monedas#Nivel 2: Suelta recolectables tras limpiar una habitaciòn#Nivel 3: Dispara lágrimas en la misma dirección del jugador#Nivel 4: Ya no dispara, persigue a los enemigos. Puede colocar bombas#Después de nivel 4: recoge monedas y suelta recolectables aleatorios"}, -- Bumbo
	{"386", "D12", "Cambia los obstaculos de la sala por otros obstaculos aleatorios (e.j. caca, TNT, espinas, piedras, etc.)"}, -- D12
	{"387", "Incensario", "{{Slow}} Familiar con un aura de luz que ralentiza a los enemigos y proyectiles"}, -- Censer
	{"388", "Pordiosero de Llaves", "{{Key}} Recoge las llaves cercanas#{{Chest}} Genera cofres aleatorios a cambio"}, -- Key Bum
	{"389", "Bolsa de Runas", "{{Rune}} Genera una runa aleatoria cada 5-6 habitaciones"}, -- Bolsa de Runas
	{"390", "Serafín", "Dispara lágrimas de {{Collectible182}} Corazón sagrado#Inflige 10 de daño por lágrima"}, -- Seraphim
	{"391", "Traición", "{{Charm}} Encanta a todos los enemigos en la habitación al recibir daño"}, -- Betrayal
	{"392", "Zodíaco", "Otorga el efecto de un objeto del zodíaco aleatorio por planta"}, -- Zodiac
	{"393", "Beso de Serpiente", "{{Poison}} 15% de probabilidad de disparar lágrimas venenosas#{{Poison}} Envenena a los enemigos al contacto#{{BlackHeart}} Los enemigos envenenados pueden soltar un corazón negro al morir"}, -- Serpent's Kiss
	{"394", "En la Mira", "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +3.15#↑ {{Tearsize}} Tamaño de lágrimas +0.3#Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo"},
	{"395", "Tech X", "{{Chargeable}} Reemplaza tus lágrimas por un anillo láser cargable#El tamaño del anillo aumenta con el tiempo de carga"}, -- Tech X
	{"396", "Bisturí Ventricular", "Permite crear hasta dos portales para viajar entre ellos#Los portales pueden colocarse en diferentes habitaciones"}, -- Ventricle Razor
	{"397", "Rayo tractor", "↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#Las lágrimas viajan siguiendo un rayo de luz enfrente del jugador"}, -- Tractor Beam
	{"398", "Carne de Dioses", "Las lágrimas pueden encoger a los enemigos#Los enemigos encogidos pueden ser aplastados al caminar sobre ellos"}, -- God's Flesh
	{"399", "Fauces del Vacío", "↑ {{Damage}} Daño +1#{{Chargeable}} Disparar por 2.35 segundos y soltar el boton genera un laser negro a tu alrededor#Inflige 30 veces tu daño cada 2 segundos#{{BlackHeart}} 5% de probabilidad de generar corazones negros al matar enemigos con el anillo negro"}, -- Maw of the Void
	{"400", "Lanza del destino", "Sostienes una lanza al frente#{{Fear}} La lanza inflige el doble de tu daño y puede asustar a los enemigos al contacto"}, -- Spear of Destiny
	{"401", "Explosivo", "25% de probabilidad de disparar lágrimas bomba pegajosas#Las lágrimas bomba pegajosas no infligen daño y explotan luego de unos segundos"}, -- Explosivo
	{"402", "Caos", "Todos los objetos en pedestales seran elegidos de grupos aleatorios#Genera 1-6 recolectables aleatorios"}, -- Chaos
	{"403", "SpiderMod", "Permite ver el daño de tus lágrimas y la barra de vida de los enemigos#Inflige efectos aleatorios al tocar a un enemigo#Suelta baterías de forma aleatoria"}, -- Spider Mod
	{"404", "Bebé Tira-Pedos", "Bloquea proyectiles#Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos"}, -- Farting Baby
	{"405", "Error crítico", "Rebota por la habitaciòn#Inflige 120 de daño por contacto cada segundo y aplica un efecto aleatorio a los enemigos"}, -- GB Bug
	{"406", "D8", "Multlipica tus estadísticas entre ↓ x0.5 y ↑ x2#Afecta al daño, las lágrimas, el Alcance y la velocidad"}, -- D8
	{"407", "Pureza", "↑ Potencia una estadística dependiendo del color del aura#Al recibir daño, remueve el efecto y otorga un aura nueva en la siguiente sala#{{ColorYellow}}Amarillo{{CR}} = {{Speed}} Velocidad +0.5#{{ColorBlue}}Azul{{CR}} = {{Tears}} Lágrimas +4#{{ColorRed}}Rojo{{CR}} = {{Damage}} Daño +4#{{ColorOrange}}Naranja{{CR}} = {{Range}} Alcance +7.5, {{Tearsize}} Tamaño de lágrimas +1"}, -- Pureza
	{"408", "Athame", "Genera un anillo láser negro a tu alrededor al recibir daño#El anillo inflige 30 veces tu daño#{{BlackHeart}} Probabilidad de soltar un corazón negro al matar enemigos con él"}, -- Athame
	{"409", "Recipiente vacío", "{{BlackHeart}} +2 corazones negros#{{EmptyHeart}} Al no tener corazones rojos:#Permite volar#Cada 40 segundos al estar en una habitación hostil, otorga un escudo durante 10 segundos"}, -- Empty Vessel
	{"410", "Mal de Ojo", "3.33% de probabilidad de disparar un ojo#{{Luck}} 10% de probabilidad con 20 de suerte#Los ojos disparan lágrimas en la misma dirección que el jugador"}, -- Evil Eye
	{"411", "Sangre lujuriosa", "↑ {{Damage}} Daño +0.5 por cada enemigo asesinado en la habitación actual#Limite de +5 de daño al matar 10 enemigos"}, -- Lusty Blood
	{"412", "Impura Concepción", "Recibir daño 15 veces genera un familiar demoníaco permanente#El daño requerido aumenta a 30 tras generar 2 familiares#Limite de 4 familiares"}, -- Cambion Conception
	{"413", "Inmaculada Concepción", "Recoger 15 corazones genera un familiar angelical permanente#Hasta 5 familiares#{{SoulHeart}} Una vez alcanzado el limite, genera un corazon de alma en vez de mas familiares"}, -- Immaculate Conception
	{"414", "Más opciones", "{{TreasureRoom}} Permite elegir entre 2 objetos en la sala del tesoro"}, -- More Options
	{"415", "Corona de la luz", "{{SoulHeart}} +2 Corazones de alma#Al tener la salud al maximo, recibirás:#↑ {{Damage}} Daño x2#↑ {{Range}} Alcance +5.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Recibir daño remueve el efecto"}, -- Crown of Light
	{"416", "Bolsillos profundos", "Permite llevar dos {{Rune}} runas, {{Card}} cartas o {{Pill}} píldoras a la vez"}, -- Deep Pockets
	{"417", "Súcubo", "Familiar que rebota por la habitación rodeado de un aura#El aura inflige 1.29 veces tu daño cada segundo#↑ {{Damage}} Daño x1.5 al estar dentro del aura"}, -- Succubus
	{"418", "Pastel de frutas", "Otorga un efecto de lágrima diferente para cada lágrima disparada"}, -- Fruit Cake
	{"419", "Teletransporte 2.0", "Te teletransporta a una habitación sin explorar#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teletransporte 2.0
	{"420", "Polvo Oscuro", "Caminar en un círculo dibuja un símbolo de pentagrama en el suelo#El pentagrama inflige 130 de daño por contacto y dura 4 segundos"}, -- Black Powder
	{"421", "Frijol Rojo", "{{Charm}} Encanta e inflige 5 de daño a enemigos cercanos"}, -- Kidney Bean
	{"422", "Reloj de Arena brillante", "Regresa al jugador a la sala anterior y revierte todas las acciones en la habitación actual"}, -- Glowing Hour Glass
	{"423", "Círculo de protección", "Genera un gran halo a tu alrededor#El halo inflige tu daño al contacto por segundo#Probabilidad de reflejar proyectiles enemigos"}, -- Circle of Protection
	{"424", "Cara de Bolsa", "Probabilidad de reemplazar los recolectables por {{GrabBag}}sacos:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Genera un saco"}, -- Sack Head
	{"425", "Luz Nocturna", "{{Slow}} Genera un cono de luz frente al jugador#La luz ralentiza a enemigos y proyectiles"}, -- Night Light
	{"426", "Fan obsesionado", "Familiar que sigue tus movimientos con 3 segundos de retraso#Inflige 30 de daño por contacto cada segundo"}, -- Obsessed Fan
	{"427", "Mine Crafter", "Genera un barril de TNT empujable#Volver a usar el objeto en la misma habitación detonará remotamente el barril"}, -- Mine Crafter
	{"428", "Pijama", "{{HealingRed}} Salud al maximo#{{SoulHeart}} +4 Corazones de alma"}, -- PJs
	{"429", "Cabeza de Keeper", "{{Coin}} 5% de probabilidad de generar monedas al golpear a un enemigo"}, -- Head of the Keeper
	{"430", "Mosca Papá", "Familiar que sigue tus movimientos con 1 segundo de retraso#{{Damage}} Dispara lágrimas que infligen tu daño a enemigos cercanos"}, -- Papa Fly
	{"431", "Bebé multidimensional", "Familiar que sigue tus movimientos con 2 segundos de retraso#Las lágrimas que lo traspasen se dividen y ganan una mejora de alcance y velocidad"}, -- Multidimensional Baby 
	{"432", "Bombas Brillantes", "{{Bomb}} +5 Bombas#Otorga a tus bombas:#25% de probabilidad de generar un recolectable aleatorio al explotar#{{Charm}} 15% de probabilidad de encantar enemigos al explotar"}, -- Glitter Bombs
	{"433", "Mi sombra", "{{Fear}} Al recibir daño, asusta a los enemigos de la habitación y genera un Charger oscuro#El Charger inflige 5 de daño por contacto cada segundo"}, -- My Shadow
	{"434", "Jarra de Moscas", "Matar un enemigo añadirá una mosca azul al tarro#Máximo de 20 moscas#Usar el Tarro liberará las moscas que tengas"}, -- Jar of Flies
	{"435", "Mini-Loki", "Dispara 4 lágrimas en un patrón de cruz que infligen 3.5 de daño"}, -- Lil Loki
	{"436", "¡Leche!", "{{Tears}} Recibir daño aumenta tus lágrimas durante la habitación actual"}, -- Milk!
	{"437", "D7", "Reinicia la habitación actual#Permite obtener multiples recompensas de la misma habitación#Al usarlo tras luchar contra Codicia, convierte la habitación en una tienda"}, -- D7
	{"438", "Chupón", "↑ {{Tears}} Lágrimas +0.75#↑ Reduce tu tamaño#{{SoulHeart}} +1 Corazón de alma"}, -- Binky
	{"439", "Caja de Mamá", "{{Trinket}} Genera un trinket aleatorio#Al tenerlo:#↑ {{Luck}} Suerte +1#{{Trinket}} Potencia los efectos de los trinkets"}, -- Mom's Box
	{"440", "Piedra de Riñón", "↑ {{Tearsize}} Tamaño de lágrimas +2#↓ {{Speed}} Velocidad -0.2#↓ {{Range}} Alcance -17#Ocasionalmente dejas de disparar para cargar una rafaga de lágrimas y una piedra del riñón"}, -- Kidney Stone
	{"441", "Mega Ráfaga", "{{Timer}} Dispara un gran láser de Mega Satán durante 15 segundos#El láser persiste entre habitaciones y plantas"}, -- Mega Blast
	{"442", "Corona del Príncipe Oscuro", "Otorga al tener un corazón rojo lleno:#↑ {{Tears}} Lágrimas +0.75#↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#↑ {{Shotspeed}} Vel. de lágrimas +0.2"}, -- Dark Prince's Crown
	{"443", "¡Manzana!", "↑ {{Tears}} Lágrimas +0.3#{{Damage}} 6.66% de probabilidad de disparar cuchillas que infligen 4 veces tu daño#{{Luck}} 100% de probabilidad con 14 de suerte"}, -- Apple!
	{"444", "Lápiz", "Dispara un cúmulo de lágrimas cada 15 lágrimas#Las lágrimas del cúmulo infligen el doble de daño"}, -- Lead Pencil
	{"445", "Diente de Perro", "↑ {{Speed}} Velocidad +0.1#↑ {{Damage}} Daño +0.3#{{SecretRoom}}/{{SuperSecretRoom}} Se oirá un aullido al entrar en una habitación adyacente a una sala secreta o super secreta#{{LadderRoom}} Se oirá un ladrido si hay una trampilla bajo una roca"}, -- Diente de Perro
	{"446", "Diente Muerto", "{{Poison}} Al disparar, otorga un aura que envenena a los enemigos cercanos"}, -- Dead Tooth
	{"447", "Frijol Persistente", "Disparar durante 7.5 segundos genera una nube de gas#La nube inflige tu daño 5 veces por segundo#La nube persiste por 15 segundos y puede ser movida al dispararle"}, -- Linger Bean
	{"448", "Pedazo de vidrio", "Al recibir daño: #{{Heart}} 25% de probabilidad de generar un corazón rojo#{{Collectible214}} 10% de probabilidad de obtener ↑ {{Range}} Alcance +5 y dejar un rastro de fluido por la habitación"}, -- Shard of Glass
	{"449", "Placa Metálica", "{{SoulHeart}} +1 Corazón de alma#25% de probabilidad de reflejar proyectiles enemigos#{{Confusion}} Los proyectiles reflejados se vuelven lágrimas aturdidoras"}, -- Metal Plate
	{"450", "Ojo de Codicia", "{{Damage}} Cada 20 lágrimas, disparas una lágrima moneda que inflige el doble de tu daño#Los enemigos golpeados se volverán estatuas de oro#{{Coin}} Las estatuas de oro sueltan 1-4 monedas al morir#{{Warning}} Disparar lágrimas moneda cuesta una moneda"}, -- Eye of Greed
	{"451", "Tela de Tarot", "{{Card}} Genera una carta o runa aleatoria#{{Card}} Potencia o duplica el efecto de las cartas del tarot"}, -- Tarot Cloth
	{"452", "Venas Varicosas", "Libera un círculo de 10 lágrimas al recibir daño#Las lágrimas infligen tu daño +25"}, -- Varicose Veins
	{"453", "Fractura Compuesta", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#Las lágrimas se separan en 1-3 fragmentos de hueso al impactar"}, -- Compound Fracture
	{"454", "Polidactilia", "Genera una {{Rune}} runa, {{Card}} carta o {{Pill}} píldora aleatoria al tomarlo#Permite llevar 2 runas, cartas o píldoras a la vez"}, -- Polydactyly
	{"455", "Moneda perdida de Papá", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#{{Luck}} Genera una moneda de la suerte"}, -- Dad's Lost Coin
	{"456", "Bocadillo nocturno", "↑ {{Heart}} +1 de Vida"}, -- Bocadillo nocturno
	{"457", "Cabeza de Cono", "↑ {{SoulHeart}} +1 Corazón de alma#20% de probabilidad de ignorar el daño"}, -- Cone Head
	{"458", "Ombligo", "{{Trinket}} Permite llevar 2 trinkets a la vez#{{Trinket}} Genera un trinket aleatorio al tomarlo"}, -- Belly Button
	{"459", "Infección sinusal", "20% de probabilidad de disparar lágrimas de moco#{{Damage}} Los mocos se pegan al enemigo durante 60 segundos e infligen tu daño cada segundo#{{Luck}} No es afectado por la suerte"}, -- Sinus Infection
	{"460", "Glaucoma", "{{Confusion}} 5% de probabilidad de disparar lágrimas aturdidoras#Obscurece un poco la pantalla"}, -- Glaucoma
	{"461", "Parasitoide", "15% de probabilidad de disparar sacos de huevos#{{Luck}} 50% de probabilidad con 5 de suerte#{{Slow}} Genera fluido ralentizante y una araña o mosca azul al impactar"}, -- Parasitoid
	{"462", "Ojo de Belial", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1#Lágrimas perforantes#Tras golpear un enemigo, las lágrimas infligen el doble de daño y se vuelven teledirigidas"}, -- Eye of Belial
	{"463", "Ácido sulfúrico", "↑ {{Damage}} Daño +0.3#Probabilidad de disparar lágrimas ácidas que destruyen rocas y abren puertas"}, -- Ácido sulfúrico
	{"464", "Glifo del equilibrio", "{{SoulHeart}} +2 Corazones de alma#Los enemigos campeones soltarán los recolectables que más necesites"},
	{"465", "Mando Analógico", "↑ {{Tears}} Lágrimas +0.3#Permite disparar lágrimas en cualquier dirección"}, -- Mando Analógico
	{"466", "Contagio", "{{Poison}} El primer enemigo asesinado explota y envenena a los enemigos cercanos#Los enemigos envenenados también explotan al morir"}, -- Contagion
	{"467", "¡Dedo!", "{{Damage}} Inflige constantemente el 10% de tu daño en la dirección que señala el dedo"}, -- Finger!
	{"468", "Sombra", "Sigue tus movimientos con un segundo de retraso#Inflige 30 de daño por contacto#Absorbes la sombra tras infligir 600 de daño, aumentando tu daño por contacto"}, -- Shade
	{"469", "Depresión", "Deja un rastro de fluido#El fluido inflige 6 de daño por segundo#Los enemigos que toquen la nube pueden hacer caer un rayo de luz sagrada"}, -- Depression
	{"470", "Shhh", "Rebota por la habitación#Inflige 30 de daño por contacto cada segundo#Se detiene cuando disparas#Bloquea proyectiles al detenerse"}, -- Hushy
	{"471", "Mini-Monstro", "{{Chargeable}} Carga una rafaga de lágrimas similar al {{Collectible229}} Pulmón de Monstro#Inflige 3.5 de daño por lágrima"}, -- Mini-Monstro
	{"472", "Rey bebé", "Hace que lo sigan otros familiares#Se detiene cuando disparas#Se teletransporta hacia ti cuando dejas de disparar"}, -- King Baby
	{"473", "Gran Chubby", "Carga lentamente hacia adelante#Bloquea proyectiles#Inflige 40.5 de daño por contacto"}, -- Big Chubby
	{"474", "Amígdala", "Bloquea proyectiles enemigos"}, -- Tonsil
	{"475", "Plan C", "Inflige 9.999.999 de daño a todos los enemigos#{{Warning}} Moriras 3 segundos después de usarlo {{Warning}}"}, -- Plan C
	{"476", "D1", "Duplica un recolectable aleatorio en la habitación actual"}, -- D1
	{"477", "Vacío", "Consume todos los objetos en pedestales de la habitación#↑ Objeto pasivo: Mejora 2 estadisticas aleatorias#Objeto activo: Añade el efecto del objeto al de Vacío (Los efectos se apilan)"}, -- Void
	{"478", "Pausa", "Congela a todos los enemigos en la habitación hasta que vuelvas a disparar#Los enemigos congelados aun pueden hacer daño#Los enemigos se descongelan tras 30 segundos"}, -- Pause
	{"479", "Fundidora", "{{Trinket}} Consume tu trinket y otorga su efecto de forma permanente#{{Trinket}} Aparecen más trinkets"}, -- Smelter
	{"480", "Abono", "Convierte los recolectables en moscas o arañas azules#Duplica las moscas y arañas azules que tengas#Genera una mosca o araña azul si no tienes ninguna"}, -- Compost
	{"481", "Dataminer", "↑ Mejora una estadística aleatoria#↓ Reduce una estadística aleatoria#{{Timer}}Efecto de lágrima aleatorio para la habitación actual#{{Blank}} Corrompe los graficos y la musica de la habitación"}, -- Dataminer
	{"482", "Control Remoto", "Cambia tu personaje por otro de forma aleatoria#Elimina el último objeto que hayas recogido"}, -- Clicker
	{"483", "¡Mamá Mega!", "Afecta a todo el piso actual#Destruye todos los obstaculos de la habitación#Inflige 200 de daño a todos los enemigos#{{SecretRoom}}/{{SuperSecretRoom}} Abre las habitaciónes secretas y súper secretas#Abre la Boss rush/puerta de Hush sin importar el tiempo"}, -- Mama Mega!
	{"484", "Espera... ¿qué?", "Al usarlo, empuja a los enemigos y genera una ola de rocas#La ola de rocas puede abrir habitaciones o romper piedras"}, -- Wait What?
	{"485", "Moneda Doblada", "50% de probabilidad de duplicar todos los objetos, recolectables y cofres en la habitación#50% de probabilidad de eliminar los objetos y recolectables de la habitación y soltar una moneda"}, -- Crooked Penny
	{"486", "Hoja sin Filo", "Te inflige daño sin perder ningún corazón#Activa los efectos de tus objetos que requieran recibir daño"},
	{"487", "Pelador de Papas", "{{Heart}} A cambio de un contenedor de corazón, otorga:#↑ {{Damage}} Daño +0.2#{{Collectible73}} Un Cubo de carne#{{Timer}} Otorga durante la habitación:#↑ {{Range}} Alcance +5#{{Collectible214}} Dejas un rastro de fluido rojo en el suelo"}, -- Potato Peeler
	{"488", "Metrónomo", "{{Timer}} Otorga el efecto de un objeto aleatorio durante la habitación"}, -- Metronome
	{"489", "D infinito", "Activa un efecto de dado aleatorio por cada uso"}, -- D Infinito
	{"490", "Alma de Edén", "Genera 2 objetos aleatorios del grupo de la habitación actual"}, -- Eden's Soul
	{"491", "Bebé ácido", "{{Pill}} Genera una píldora aleatoria cada 3 habitaciones#{{Poison}} Usar una píldora envenena a todos los enemigos en la habitación"}, -- Acid Baby
	{"492", "YO LISTEN!", "↑ {{Luck}} Suerte +1#Señala la ubicación de {{SecretRoom}} salas secretas, rocas marcadas y {{LadderRoom}} trampillas"}, -- YO LISTEN!
	{"493", "Adrenalina", "Otorga por cada contenedor de corazón vacío:#↑ {{Damage}} Daño +0.2"}, -- Adrenaline
	{"494", "Escalera de Jacob", "Las lágrimas generan 1-2 rayos eléctricos al impactar#Los rayos infligen la mitad de tu daño"}, -- Escalera de Jacob
	{"495", "Pimiento fantasma", "Probabilidad de disparar un fuego rojo que inflige daño y bloquea proyectiles#El fuego persiste hasta bloquear 5 disparos o infligir daño 5 veces"}, -- Ghost Pepper
	{"496", "Eutanasia", "3.33% de probabilidad de disparar agujas#100% de probabilidad con 15 de suerte#Las agujas matan a los enemigos normales de un golpe, disparando 10 lágrimas alrededor#{{Damage}} Inflige el triple de tu daño contra jefes"}, -- Euthanasia
	{"497", "Interior Camuflado", "{{Confusion}} Al entrar a una habitación confunde a los enemigos hasta que dispares"}, -- Camo Undies
	{"498", "Dualidad", "{{AngelDevilChance}} Genera una sala de Ángel y de Diablo#Entrar en una sala hará desaparecer la otra"}, -- Duality
	{"499", "Eucaristía", "↑ {{AngelChance}} 100% de probabilidad de encontrar salas de Ángel"}, -- Eucharist
	{"500", "Bolsa de Bolsas", "Genera un saco cada 5-6 habitaciónes"}, -- Sack of Sacks
	{"501", "Esófago de Codicia", "Otorga 1 contenedor de corazón por cada 25 monedas obtenidas tras recoger el objeto"}, -- Greed's Gullet
	{"502", "Grano grande", "Ocasionalmente dispara una lágrima blanca#{{Slow}} La lágrima blanca inflige el doble de tu daño y suelta fluido ralentizante#Dispara una lagrima blanca al recibir daño"}, -- Large Zit
	{"503", "Cuernito", "5% de probabilidad de disparar una lágrima que mata instantaneamente a los enemigos normales#{{Luck}} 20% de probabilidad con 15 de suerte#Infliges 3.5 de daño por contacto"}, -- Little Horn
	{"504", "Nugget café", "Genera una mosca torreta que dispara a los enemigos#Inflige 2 de daño por disparo"}, -- Brown Nugget
	{"505", "Poke Go", "Probabilidad de generar un enemigo aliado al entrar a una habitación hostil"}, -- Poke Go
	{"506", "Apuñala espaldas", "{{BleedingOut}} Golpear a un enemigo por detrás inflige el doble de daño y causa sangrado#El sangrado inflige el 10% de la vida total de los enemigos cada 5 segundos"}, -- Backstabber
	{"507", "Pajilla afilada", "{{Damage}} Inflige tu daño +10% de la vida máxima del enemigo a todos los enemigos en la habitación#{{HalfHeart}} Probabilidad de soltar medio corazón al infligir daño"}, -- Sharp Straw
	{"508", "Afeitadora de Mamá", "{{BleedingOut}} Orbital que causa sangrado#inflige el 10% de la salud de los enemigos cada 5 segundos#{{Damage}} Inflige 3 veces tu daño por contacto cada segundo"}, -- Mom's Razor
	{"509", "Ojo Dispara-lágrimas", "Dispara una lágrima en una dirección aleatoria cada 2 segundos#Inflige 3.5 de daño#Inflige 30 de daño por contacto cada segundo#No bloquea proyectiles"}, -- Ojo Dispara-lágrimas
	{"510", "Delirious", "{{Timer}} Genera una versión aliada de Delirium en la habitación actual"}, -- Delirious
	{"511", "Mosca Enojada", "Orbita alrededor de un enemigo aleatorio hasta que muera#Inflige 30 de daño por contacto cada segundo"}, -- Mosca Enojada
	{"512", "Agujero negro", "Agujero negro lanzable que atrae todo#Inflige 6 de daño por segundo#Destruye rocas cercanas#Dura 6 segundos"}, -- Agujero negro
	{"513", "Bozo", "↑ {{Damage}} Daño +0.1#↑ {{SoulHeart}} +1 Corazón de alma#{{Charm}} Encanta o asusta a un enemigo de forma aleatoria#Probabilidad de generar una caca arcoíris al recibir daño"}, -- Bozo
	{"514", "Modem Roto", "Probabilidad de congelar momentaneamente a enemigos y proyectiles#25% de probabilidad de generar el duplicar las recompensas de la habitación"}, -- Broken Modem
	{"515", "Regalo misterioso", "Genera un objeto aleatorio del grupo de la habitación actual#Probabilidad de generar:#{{Collectible132}} Un trozo de carbón#{{Collectible36}} La Caca"}, -- Mystery Gift
	{"516", "Aspersor", "Genera un Aspersor que dispara lágrimas con tus efectos a su alrededor"}, -- Sprinkler
	{"517", "Bombas Rápidas", "{{Bomb}} +7 Bombas#Permite colocar bombas mas rápido"}, -- Bombas Rápidas
	{"518", "Compañero Encajonado", "Familiar de aspecto de bebé cooperativo#Efecto de lágrima aleatorio#Cambia de efecto en cada piso"}, -- Buddy in a Box
	{"519", "Mini-Delirio", "Se transforma en un familiar aleatorio cada 10 segundos"}, -- Mini-Delirio
	{"520", "Cables de Salto", "{{Battery}} Matar 15 enemigos añade una carga a tu objeto activo actual"},
	{"521", "Cupón", "Vuelve gratis un objeto aleatorio en la {{Shop}} Tienda o la {{DevilRoom}} sala de Diablo#Garantiza un descuento en la tienda al tenerlo"}, -- Coupon
	{"522", "Telequinesia", "Detiene los proyectiles enemigos cercanos durante 3 segundos y los lanza lejos"},
	{"523", "Caja de mudanza", "Permite almacenar los recolectables y objetos en la habitación#Volver a usarlo suelta todo en la habitación actual#Permite mover objetos entre habitaciones"}, -- Moving Box
	{"524", "Tecnología Cero", "Conecta tus lágrimas con rayos de electricidad#Los rayos infligen tu daño por segundo"}, -- Tecnología Cero
	{"525", "Lepra", "Genera un orbital que bloquea proyectiles al recibir daño#Los orbitales infligen 35 de daño por contacto cada segundo#Limite de 3 orbitales#los orbitales pueden destruirse al recibir demasiado daño"}, -- Leprosy
	{"526", "Los 7 Sellos", "Jinete familiar que genera langostas#El Jinete y las langostas cambian cada 10 segundos"}, -- 7 Seals
	{"527", "¡Sr. YO!", "Invoca un familiar capaz de:#Abrir puertas y cofres#Traerte objetos#50% de probabilidad de robar objetos de la tienda o del pacto#Luchar contra enemigos#Explotar#Activar placas de presión"}, -- Mr. ME!
	{"528", "Prisma angelical", "Prisma orbital#Las lágrimas que pasen por el prisma se dividen en 4 lágrimas"}, -- Angelic Prism
	{"529", "¡Pop!", "Las lágrimas rebotan entre ellas y desaparecen al dejar de moverse"}, -- ¡Pop!
	{"530", "Lista de la muerte", "Otorga una recompensa tras matar enemigos {{DeathMark}} marcados en el orden indicado"}, -- Death's List
	{"531", "Hemolacria", "↑ {{Damage}} Daño x1.31#↓ {{Tears}} Lágrimas x0.5#Las lágrimas vuelan en un arco y explotan en lágrimas más pequeñas al impacto"}, -- Haemolacria
	{"532", "Lacrifagia", "Las lágrimas se ralentizan mientras viajan#Al detenerse, explotan en 8 lágrimas pequeñas#Las lágrimas pueden acumularse, volviendose más grandes"}, -- Lachryphagy
	{"533", "Trisagio", "Remplaza tus lágrimas por rayos perforantes de luz blanca#Los rayos infligen 33% de tu daño, pero impactan multiples veces"}, -- Trisagion
	{"534", "Mochila", "Permite llevar hasta 2 objetos activos#Pulsa la tecla de soltar objetos ({{ButtonRT}}) para cambiar entre objetos activos"}, -- Schoolbag
	{"535", "Manto", "{{HealingRed}} Cura un corazón rojo#{{SoulHeart}} +1 Corazón de alma#{{HolyMantle}} Otorga un escudo de Manto Sagrado al entrar a una {{BossRoom}} sala de jefe"}, -- Blanket
	{"536", "Altar de sacrificio", "Permite sacrificar hasta 2 familiares para generar un objeto de {{DevilRoom}} pacto del Diablo por sacrificio#{{Coin}} Convierte las arañas o moscas azules en monedas"}, -- Sacrificial Altar
	{"537", "Mini-vómitos", "{{Pill}} Genera una píldora aleatoria al recogerlo#Familiar que deja un rastro de fluido#El tipo de fluido depende del tipo de píldora"}, -- Lil Spewer
	{"538", "Canicas", "{{Trinket}} Genera 3 trinkets aleatorios#{{Collectible479}} Al recibir daño, 10% de probabilidad de consumir tu trinket y otorgar sus efectos permanentemente"}, -- Marbles
	{"539", "Huevo misterioso", "Genera un enemigo encantado al recibir daño#Genera aliados más fuertes cuantas más habitaciones limpies sin recibir daño"}, -- Mystery Egg
	{"540", "Piedra plana", "Las lágrimas rebotan en el suelo e infligen daño por rebote a los enemigos cercanos"}, -- Flat Stone
	{"541", "Médula", "{{Heart}} Genera 3 corazones rojos#{{EmptyBoneHeart}} +1 Corazón de hueso"}, -- Marrow
	{"542", "Costilla deslizante", "Orbital#Refleja projectiles enemigos"}, -- Costilla deslizante
	{"543", "Suelo Santificado", "Al recibir daño, genera una caca blanca con un aura#El aura otorga lo siguiente:#↑ {{Tears}} Lágrimas x2#50% de probabilidad de ignorar el daño recibido"}, -- Hallowed Ground
	{"544", "Costilla con Punta", "Levita en frente del jugador#Inflige 6 veces tu daño por segundo"}, -- Pointy Rib
	{"545", "Libro de los Muertos", "Genera un hueso orbital o Bonies aliados por cada enemigo derrotado en la habitación#Máximo de 8 invocaciones"}, -- Libro de los Muertos
	{"546", "Anillo de papá", "Otorga un aura que petrifica a los enemigos cercanos"}, -- Dad's Ring
	{"547", "Papeles del divorcio", "↑ {{Tears}} Lágrimas +0.7#{{EmptyBoneHeart}} +1 Corazón de hueso#Genera el trinket {{Trinket21}} Papel misterioso"}, -- Divorce Papers
	{"548", "Hueso de Mandíbula", "Familiar boomerang#Inflige 7 de daño por contacto#Puede recoger y acercar objetos"}, -- Jaw Bone
	{"549", "Huesos frágiles", "{{EmptyBoneHeart}} Reemplaza todos tus contenedores de corazón por 6 corazones de hueso#Al perder un corazón de hueso:#↑ {{Tears}} Lágrimas +0.5#Dispara 8 lágrimas de hueso a tu alrededor"}, -- Brittle Bones
	{"550", "Pala rota", "Los pies de mamá te atacarán constantemente#Al usarlo, los pies dejarán de caer en esta habitación#{{Warning}} (¡Intenta ganar la Boss Rush con esto!)"}, -- Broken Shovel
	{"551", "Pala rota", "Segunda parte de la pala rota#{{Warning}} Úsala en el montón de tierra en la \"Sala Oscura\""}, -- Broken Shovel
	{"552", "Pala de Mamá", "Genera una trampilla hacia el siguiente nivel#{{LadderRoom}} 10% de probabilidad de generar una trampilla a una mazmorra#{{Warning}} Úsala en el montón de tierra en la \"Dark Room\"(La sala oscura)"}, -- Mom's Shovel
}

---------- Modifiers ----------

-- Effect of Car Battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Sin efecto",
	[35] = {40, 80}, -- El Necronomicón
	[37] = { " una ", " 2 ", "bomba", "{{CR}}bombas" }, -- Sr. Buum
	[38] = {10, 20}, -- Cabeza de Tammy
	[45] = {1, 2, "corazón", "{{CR}}corazones"}, -- Delicioso Corazón
	[58] = {10, 20}, -- Libro de las Sombras
	[65] = {6, 12}, -- Recetario de Anarquista
	[66] = {8, 16}, -- El reloj de arena
	[77] = {6, 12}, -- Mi pequeño unicornio
	[78] = {1, 2, "corazón", "{{CR}}corazones"}, -- Libro de Revelaciones
	[83] = {1, 2, "corazón", "{{CR}}corazones"}, -- El clavo
	[85] = {1, 2, "carta", "{{CR}}cartas"}, -- Mazo de cartas
	[86] = {120, 240}, -- Diente de Monstro
	[93] = {6.5, 13}, -- El Gamekid
	[97] = {" un ", " 2 ", "recolectable", "{{CR}}recolectables"}, -- El Libro del Pecado
	[102] = {1, 2, "píldora", "{{CR}}píldoras"}, -- Botella de Píldoras de Mamá
	[105] = "Cambia 2 veces, agotando mas rapido los grupos de objetos", -- El D6
	[107] = "Genera 2 cuerpos", -- Las Tijeras Dentadas
	[111] = {5, 10}, -- El frijol
	[123] = {" un ", " 2 ", "familiar", "{{CR}}familiares"}, -- Manual de monstruos
	[124] = {" un ", " 2 ", "efecto", "{{CR}}efectos"}, -- Pergaminos del Mar Muerto
	[136] = {" un ", " 2 ", "señuelo", "{{CR}}señuelos"}, -- Mejor Amigo
	[145] = {"2-4", "4-8"}, -- Cabeza de Guppy
	[146] = {1, 2, " corazón", " {{CR}}corazones"}, -- Carta de Plegaria (por que no le puse +1 de vida...)
	[158] = {" un ", " 2 ", " corazón", " {{CR}}corazones", "runa", "{{CR}}runas", "carta", "{{CR}}cartas"}, -- Bola de cristal
	[160] = {5, 10}, -- Desgarra el Cielo
	[171] = {10, 20}, -- Trasero Aracnido
	[283] = "Cambia 2 veces, ayuda en el progreso de las transformaciones pero vacia mas rapido los grupos de objetos", -- D100
	[284] = "Cambia 2 veces, ayuda en el progreso de las transformaciones pero vacia mas rapido los grupos de objetos", -- D4
	[286] = "Se activa 2 veces", -- Carta en Blanco
	[287] = {"uno", "2"}, -- Libro de Secretos
	[288] = {"1-4", "2-8"}, -- Caja de arañas
	[292] = {1, 2}, -- Biblia satánica
	[293] = {440, 880}, -- Cabeza de Krampus
	[294] = "Mayor empuje", -- Frijol Mantequilla
	[298] = {6, 12}, -- Paso de Unicornio
	[348] = "Se activa 2 veces", -- Placebo
	[349] = "Se activa 2 veces", -- Moneda de Madera
	[351] = {5, 10}, -- Mega Frijol
	[357] = {"Duplica", "Triplica"}, -- Cajón de Amigos
	[383] = {6, 36}, -- Detonador de lágrimas
	[421] = {5, 10}, -- Frijol Rojo
	[427] = {" un ", " 2 ", "barril", "{{CR}}barriles", "el barril", "{{CR}}los barriles"}, -- Minero artesano
	[439] = {" un ", " 2 ", "trinket", "{{CR}}trinkets"}, -- Caja de Mamá
	[476] = {" un ", " 2 ", "recolectable", "{{CR}}recolectables"}, -- D1
	[477] = "Activa los objetos activos absorbidos 2 veces", -- Vacío
	[480] = {"Duplica", "Cuadruplica"}, -- Abono
	[481] = "Aumenta y disminuye 2 estadísticas aleatorias", -- Dataminer
	[482] = "Cambia tu personaje dos veces y remueve 2 objetos", -- Control Remoto
	[485] = "25% de probabilidad de cuadruplicar, 25% de probabilidad de duplicar y eliminar los originales, 50% de probabilidad de eliminar", -- Moneda Doblada
	[486] = {"efectos", "{{CR}}efectos {{BlinkYellowGreen}}2 {{CR}}veces"}, -- Hoja sin Filo
	[488] = "Se activa 2 veces, pero solo se mantendrá el último efecto", -- Metrónomo
	[489] = {" un ", " 2 ", "efecto", "{{CR}}efectos"}, -- D infinito
	[504] = {" una ", " 2 ", "mosca", "{{CR}}moscas"}, -- Nugget café
	[507] = "Se activa 2 veces", -- Pajilla afilada
	[510] = {" una ", " 2 ", "versión", "{{CR}}versiones"}, -- Delirious
	[516] = {" una ", " 2 ", "torreta", "{{CR}}torretas"}, -- Aspersor
	[521] = {"un", "dos", "objeto", "{{CR}}objetos"}, -- Cupón
	[523] = "Intercambia los contenidos de la caja con los recolectables de la habitación", -- Caja de mudanza
	[545] = {8, 16}, -- Libro de los Muertos
	[550] = "Detiene los pisotones durante 2 habitaciones (u oleadas de la BossRush)", -- Pala rota
}

-- Effect of BFFS! on Familiars
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Sin efecto para {1}",
	["5.100.8"] = {3.5, 7}, -- Hermano Bobby
	["5.100.57"] = {75, 150}, -- Admiración lejana
	["5.100.67"] = {3.5, 7}, -- Hermana Maggy
	["5.100.73"] = "Doble de daño", -- Cubo de carne
	["5.100.88"] = {52.5, 105}, -- Pequeño Chubby
	["5.100.94"] = {"2", "1-2"}, -- Bolsa de centavos
	["5.100.95"] = {3.5, 7}, -- Robo-Baby
	["5.100.96"] = {"3", "2-3"}, -- Pequeño C.H.A.D.
	["5.100.98"] = {"5-6", "4-5"}, -- La Reliquia
	["5.100.99"] = {3.5, 7}, -- Pequeño Gish
	["5.100.100"] = {3.5, 7}, -- Pequeño Steven
	["5.100.107"] = {82.5, 165}, -- Las Tijeras Dentadas
	["5.100.112"] = {105, 210}, -- Ángel Guardián
	["5.100.113"] = {3, 6}, -- Bebé Demonio
	["5.100.117"] = {4.3, 8.6}, -- Ave Muerta
	["5.100.128"] = {30, 60}, -- Siempre solo
	["5.100.131"] = {"3", "2-3"}, -- Bolsa de Bombas
	["5.100.144"] = {"3-4", "3"}, -- Amigo Pordiosero
	["5.100.155"] = {17, 34}, -- El fisgón
	["5.100.163"] = {3.5, 7}, -- Bebé fantasma
	["5.100.167"] = {4, 8}, -- Bebé arlequín
	["5.100.170"] = {40, 80}, -- Papá Patas-largas
	["5.100.172"] = {225, 450}, -- Daga de Sacrificio
	["5.100.174"] = {"3-5", "6-10"}, -- Bebé arcoiris
	["5.100.187"] = "Doble de daño", -- Bola de pelo de Guppy
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (incluye sinergia de Rep con Cain)
	["5.100.206"] = {105, 210}, -- Guillotina
	["5.100.207"] = "Doble de daño", -- Bola de vendas
	["5.100.264"] = {22.5, 45}, -- Mosca Inteligente
	["5.100.266"] = "Genera una araña azul extra", -- Nido jugoso
	["5.100.267"] = {3.5, 7}, -- Robo-Baby 2.0
	["5.100.270"] = {3.2, 6.4}, -- Sanguijuela
	["5.100.271"] = {"5-6", "4-5"}, -- Bolsa misteriosa
	["5.100.272"] = {60, 85}, -- Mosca Hermosa
	["5.100.273"] = {60, 85}, -- Cerebro de Bob
	["5.100.274"] = {75, 150}, -- Gran Amigo
	["5.100.275"] = {31.5, 63}, -- Mini-Azufre
	["5.100.277"] = {4, 8}, -- Minitormento
	["5.100.279"] = {30, 60}, -- Gran Fan
	["5.100.318"] = {6, 12}, -- Géminis
	["5.100.319"] = {" tu ", " {{CR}}doble de tu "}, -- El otro ojo de Caín
	["5.100.320"] = {37.5, 75}, -- Único amigo de ???
	["5.100.321"] = {10.7, 21.4}, -- Cadenas de Sansón
	["5.100.322"] = {3.5, 7}, -- Bebé Mongo
	["5.100.325"] = {3.5, 7}, -- Tijeras
	["5.100.360"] = " tu ", " doble {{CR}}de tu ", -- Íncubo
	["5.100.361"] = "Doble de daño", -- Premio del destino
	["5.100.362"] = {35, 44}, -- Mini-Cofre
	["5.100.363"] = {105, 210}, -- Protector fiel
	["5.100.364"] = {45, 90}, -- Solo Amigos
	["5.100.365"] = {105, 210}, -- Mosca perdida
	["5.100.372"] = "Mayor probabilidad de soltar baterías", -- Bebé recargado
	["5.100.384"] = {"5-90", "10-180"}, -- Mini-Gurdy
	["5.100.385"] = "Doble de daño", -- Bumbo
	["5.100.388"] = "Mayor probabilidad de generar cofres", -- Pordiosero de Llaves
	["5.100.389"] = {"5-6", "4-5"}, -- Bolsa de Runas
	["5.100.390"] = {10, 20}, -- Serafín
	["5.100.403"] = "Mayor probabilidad de soltar baterías", -- Spider Mod
	["5.100.405"] = {120, 240}, -- Error_crítico
	["5.100.417"] = "El aura de daño es mas grande, pero no la que aumenta el daño", -- Súcubo
	["5.100.426"] = {30, 60}, -- Fan obsesionado
	["5.100.430"] = {" tu ", " doble {{CR}}de tu "}, -- Mosca Papá
	["5.100.435"] = {3.5, 7}, -- Mini-Loki
	["5.100.468"] = {30, 60}, -- Sombra
	["5.100.470"] = {30, 60}, -- Shhh
	["5.100.471"] = {3.5, 7}, -- Mini-Monstro
	["5.100.473"] = {40.5, 81}, -- Gran Chubby
	["5.100.491"] = {"3", "2-3"}, -- Bebé ácido
	["5.100.500"] = {"5-6", "4-5"}, -- Bolsa de Bolsas
	["5.100.508"] = {3, 6}, -- Afeitadora de Mamá
	["5.100.509"] = {3.5, 7, 30, 60}, -- Ojo Dispara-lágrimas
	["5.100.511"] = {30, 60}, -- Mosca Enojada
	["5.100.518"] = "Doble de daño", -- Compañero Encajonado
	["5.100.519"] = "Doble de daño", -- Mini-Delirio
	["5.100.525"] = {35, 70}, -- Lepra
	["5.100.526"] = "Duplica el daño por contacto del jinete", -- Los 7 Sellos
	["5.100.537"] = "Incrementa el tamaño del fluido, pero no el daño", -- Arcadio
	["5.100.539"] = "Genera una variante campeon del enemigo", -- Huevo misterioso
	["5.100.544"] = {6, 12}, -- Costilla con Punta
	["5.100.545"] = "Duplica el daño por contacto de los orbitales de hueso", -- Libro de los Muertos
	["5.100.548"] = {7, 14}, -- Hueso de Mandíbula
	
	["5.350.54"] = {3.5, 7}, --- Cabeza de Isaac
	["5.350.57"] = {3.5, 7}, --- Alma de ???
	["Lilith"] = "Duplica el daño de Íncubo", -- Íncubo (for BFFS pedestal)
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	{"1", "Moneda tragada", "{{Coin}} Genera 1 moneda al recibir daño"}, -- Swallowed Penny
	{"2", "Popó petrificado", "50% de probabilidad de obtener recolectables al romper cacas"}, -- Petrified Poop
	{"3", "Batería AAA", "{{Battery}} Los objetos activos necesitan 1 carga menos"}, -- AAA Battery
	{"4", "Control Remoto Roto", "{{Collectible44}} Usar un objeto activo te teletransporta a una habitación aleatoria"}, -- Broken Remote
	{"5", "Corazón Purpura", "Duplica la probabilidad de encontrar enemigos y jefes campeones"}, -- Purple Heart
	{"6", "Imán roto", "{{Coin}} Atrae las monedas hacia el jugador"}, -- Broken Magnet
	{"7", "Cuenta de rosario", "{{AngelChance}} 75% de probabilidad de reemplazar la {{DevilRoom}} Sala del Diablo por una {{AngelRoom}} Sala del Ángel#Aumenta la probabilidad de encontrar {{Collectible33}} La Bíblia en {{Shop}} Tiendas y {{Library}} Bibliotecas"}, -- Rosary Bead
	{"8", "Cartucho", "{{Timer}} 5% de probabilidad al ser golpeado de activar el efecto de {{Collectible93}} El Gamekid durante 6.5 segundos"}, -- Cartridge
	{"9", "Gusano de Pulso", "Las lágrimas aumentan y disminuyen su tamaño#Afecta a la hitbox de la lágrima"}, -- Pulse Worm
	{"10", "Gusano Ondulante", "↑ {{Tears}} Lágrimas +0.4#Las lágrimas se mueven en ondas"}, -- Wiggle Worm
	{"11", "Gusano Circular", "Las lágrimas se mueven en espiral a gran velocidad"}, -- Ring Worm
	{"12", "Gusano plano", "Lágrimas 50% más grandes#Aumenta el empuje"}, -- Flat Worm
	{"13", "Tarjeta de crédito", "{{Shop}} Permite llevarse un objeto de la tienda gratis"}, -- Credit Card
	{"14", "Callo", "Otorga inmunidad a las espinas de suelo y el fluido"}, -- Callus
	{"15", "Roca de la suerte", "{{Coin}} Genera monedas al destruir rocas"}, -- Lucky Rock
	{"16", "Uña del pie de Mamá", "El Pie de Mamá caerá en un lugar aleatorio de la habitación cada 60 segundos"}, -- Mom's Toenail
	{"17", "Pintalabios negro", "{{BlackHeart}} +5% de probabilidad de reemplazar los corazones de alma por corazones negros"}, -- Black Lipstick
	{"18", "Folleto Biblico", "{{EternalHeart}} +3% de probabilidad de encontrar corazones eternos"}, -- Bible Tract
	{"19", "Clip de Papel", "{{GoldenChest}} Permite abrir los cofres dorados sin usar llaves"}, -- Paper Clip
	{"20", "Pata de mono", "{{BlackHeart}} Al tener medio corazón, deja caer un corazón negro#{{Warning}} Desaparece luego de 3 usos"}, -- Monkey Paw
	{"21", "Papel misterioso", "Otorga aleatoriamente el efecto de:#{{Collectible327}} La Polaroid#{{Collectible328}} El Negativo#{{Trinket48}} Una página perdida#{{Trinket23}} Cartel de desaparición"}, -- Mysterious Paper
	{"22", "Cola de Demonio", "{{Heart}} Disminuye a 20% la probabilidad de generar corazones#{{BlackHeart}} Convierte los corazones en corazones negros#{{Key}} Aumenta la probabilidad de generar llaves"}, -- Daemon's Tail
	{"23", "Cartel de Desaparecido", "{{Player10}} Reaparecerás como \"El Perdido\" tras morir"}, -- Missing Poster
	{"24", "Moneda de Trasero", "{{Coin}} 20% de probabilidad de generar una moneda al destruir una caca#Soltarás un pedo al recoger una moneda"}, -- Butt Penny
	{"25", "Dulce misterioso", "Generas una caca o sueltas un pedo cada 30 segundos"}, -- Mysterious Candy
	{"26", "Gusano Cuadrado", "↑ {{Range}} Alcance +10#Las lágrimas se mueven en ángulos rectos"}, -- Hook Worm
	{"27", "Gusano Fugáz", "↑ {{Shotspeed}} Vel. de lágrimas +0.5"}, -- Whip Worm
	{"28", "Anj roto", "{{Player4}} 22% de probabilidad de reaparecer como \"???\" al morir"}, -- Broken Ankh
	{"29", "Cabeza de Pez", "Genera una mosca azul al recibir daño"}, -- Cabeza de Pez
	{"30", "Ojo Rojo", "{{Poison}} 10% de probabilidad de disparar lágrimas venenosas#{{Luck}} 100% de probabilidad con 18 de suerte"}, -- Pinky Eye
	{"31", "Chincheta", "10% de probabilidad de disparar lágrimas perforantes y espectrales#{{Luck}} 100% de probabilidad con 18 de suerte"}, -- Push Pin
	{"32", "Monguis", "25% de probabilidad de activar un efecto de hongo aleatorio para la habitación actual#Puede revelar las habitaciones especiales en el mapa"}, -- Liberty Cap
	{"33", "Cordón umbilical", "{{Timer}} Genera un {{Collectible 100}} Pequeño Steven para la sala cuando tu salud es reducida a medio corazón rojo"}, -- Umbilical Cord
	{"34", "Corazón de niño", "{{UnknownHeart}} 10% de probabilidad de que la recompensa de la sala sea un corazón aleatorio#{{Heart}} 33% de probabilidad de obtener corazones extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos"}, -- Child's Heart
	{"35", "Cuerno Curvo", "↑ {{Damage}} Daño +2"}, -- Cuerno Curvo
	{"36", "Llave oxidada", "{{Key}} 10% de probabilidad de que la recompensa de la sala sea una llave#{{Key}} 33% de probabilidad de obtener llaves extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos"}, -- Rusted Key
	{"37", "Pezuña de cabra", "↑ {{Speed}} Velocidad +0.15"}, -- Pezuña de cabra
	{"38", "Perla de Mamá", "10% de probabilidad de encontrar {{SoulHeart}} Corazones de Alma, {{BlackHeart}} Corazones Negros o {{EmptyBoneHeart}} Corazones de Hueso"}, -- Mom's Pearl
	{"39", "Cáncer", "↑ {{Tears}} Lágrimas +2"}, -- Cáncer
	{"40", "Parche rojo", "{{Timer}} 20% de probabilidad de obtener ↑ {{Damage}} Daño +1.8 al recibir daño#{{Luck}} 100% de probabilidad con 8 de suerte"}, -- Red Patch
	{"41", "Fósforo", "{{Bomb}} 10% de probabilidad de que la recompensa de la sala sea una bomba#{{Bomb}} 33% de probabilidad de obtener bombas extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos#{{Warning}} Remueve {{Trinket53}} la garrapata"}, -- Match Stick
	{"42", "Dedo de la Suerte", "↑ {{Luck}} Suerte +1#+8% de probabilidad de obtener una recompensa de sala#33% de probabilidad de obtener un recolectable extra de cofres, las rocas marcadas y máquinas destruidas"}, -- Lucky Toe
	{"43", "Cráneo maldito", "Al recibir daño hasta quedar a medio corazón o menos, te teletransporta a una habitación aleatoria"}, -- Cursed Skull
	{"44", "Tapa de Seguridad", "{{Pill}} 10% de probabilidad de que la recompensa de la sala sea una pildora#{{Pill}} 33% de probabilidad de obtener pildoras extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos"}, -- Safety Cap
	{"45", "As de Espadas", "{{Card}} 10% de probabilidad de que la recompensa de la sala sea una carta#{{Card}} 33% de probabilidad de obtener cartas extra de algunos cofres, las rocas marcadas, algunas máquinas destruidas y algunos mendigos"}, -- Ace of Spades
	{"46", "Tenedor de Isaac", "{{HealingRed}} Probabilidad del 10% de curar medio corazón al limpiar una habitación#{{Luck}} 100% de probabilidad con 18 de suerte"}, -- Tenedor de Isaac
	{"47", "", "<Este trinket no existe>"},
	{"48", "Una Página Faltante", "Al recibir daño, 5% de probabilidad de infligir 40 de daño a todos los enemigos en la habitación"}, -- Una Página Faltante
	{"49", "Moneda Sangrienta", "{{HalfHeart}} 50% de probabilidad de generar medio corazón al recoger una moneda"}, -- Bloody Penny
	{"50", "Moneda Quemada", "{{Bomb}} 50% de probabilidad de generar bombas al recoger una moneda"}, -- Burnt Penny
	{"51", "Moneda Plana", "{{Key}} 50% de probabilidad de generar llaves al recoger una moneda"}, -- Flat Penny
	{"52", "Moneda Falsificada", "{{Coin}} 50% de probabilidad de incrementar +1 el valor de las monedas al recogerlas"}, -- Counterfeit Penny
	{"53", "Garrapata", "{{HealingRed}} Cura 1 corazón rojo al entrar en una {{BossRoom}} Sala de Jefe#Reduce un 15% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él recogiendo {{Trinket41}} la Cerilla o tragándolo"}, -- Tick
	{"54", "Cabeza de Isaac", "Familiar con lágrimas perforantes#Inflige 3.5 de daño"}, -- Isaac's Head
	{"55", "La fe de Maggy", "{{EternalHeart}} Otorga un Corazón Eterno al entrar a un nuevo piso"}, -- Maggy's Faith
	{"56", "Lengua de Judas", "{{DevilRoom}} Reduce los precios de los pactos del Diablo a un corazón#{{SoulHeart}} No reduce los pactos de 3 Corazones de Alma"}, -- Judas' Tongue
	{"57", "Alma de ???", "Familiar que rebota por la habitación#Dispara en la misma dirección que el jugador#Inflige 3.5 de daño#Dispara lágrimas espectrales y teledirigidas"}, -- ???'s Soul
	{"58", "Mechón de Sansón", "{{Timer}} Matar a un enemigo tiene 1/15 de probabilidad de otorgar ↑ {{Damage}} Daño +0.5 por la habitación#{{Luck}} 100% de probabilidad con 10 de suerte"}, -- Samson's Lock
	{"59", "Ojo de Caín", "{{Collectible21}} 25% de probabilidad de revelar los iconos del mapa al empezar un nuevo piso#{{Luck}} 100% de probabilidad con 3 de suerte"}, -- Cain's Eye
	{"60", "Pata del Ave de Eva", "{{Collectible117}} 5% de probabilidad de generar un pájaro muerto al matar un enemigo#{{Luck}} 100% de probabilidad con 8 de suerte"}, -- Eve's Bird Foot
	{"61", "La Mano izquierda", "{{RedChest}} Reemplaza todos los cofres por cofres rojos"}, -- La Mano izquierda
	{"62", "Rocas brillantes", "Las rocas marcadas y de trampilla parpadean cada 10 segundos"}, -- Shiny Rock
	{"63", "Tijeras de Seguridad", "{{Bomb}} Convierte las bombas troll en bombas recolectables"}, -- Safety Scissors
	{"64", "Gusano de Arcoíris", "Otorga un efecto de gusano aleatorio cada 3 segundos"}, -- Rainbow Worm
	{"65", "Gusano Estirado", "↑ {{Range}} Alcance x2#↓ Altura de lágrima x0.5"}, -- Tape Worm
	{"66", "Gusano Perezoso", "↑ {{Range}} Alcance +4#↑ Altura de lágrima +2#↓ {{Shotspeed}} Vel. de lágrimas -0.5"}, -- Lazy Worm
	{"67", "Dado Roto", "Recibir daño activa uno de los siguientes efectos:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"}, -- Cracked Dice
	{"68", "Súper Imán", "Atrae a los recolectables y enemigos hacia el jugador"}, -- Super Magnet
	{"69", "Polaroid Desvanecida", "Te camufla de forma aleatoria#{{Confusion}} Confunde a los enemigos"}, -- Faded Polaroid
	{"70", "Piojo", "Genera aleatoriamente una araña azul en habitaciónes hostiles"}, -- Louse
	{"71", "Vejiga de Bob", "Las bombas dejan fluido"}, -- Bob's Bladder
	{"72", "Batería de Reloj", "{{Battery}} 6.66% de probabilidad de reemplazar la recompensa de la habitación por una batería#{{Battery}} +2% de probabilidad de que los recolectables sean baterías#{{Battery}} 5% de probabilidad de añadir una carga al objeto activo al limpiar una habitación"}, -- Watch Battery
	{"73", "Detonador", "{{Bomb}} 10% de probabilidad de que las bombas generen bombas recolectables tras explotar"}, -- Blasting Cap
	{"74", "Detector de Clavos", "{{LadderRoom}} +0.5% de probabilidad de encontrar trampillas al destruir rocas"}, -- Stud Finder
	{"75", "Error", "Otorga el efecto de un trinket aleatorio por sala"}, -- Error
	{"76", "Ficha de póker", "Al abrir un cofre:#↑ 50% de probabilidad de conseguir más recolectables#↓ 50% de probabilidad de generar una mosca roja"}, -- Poker Chip
	{"77", "Ampolla", "Aumenta el empuje"}, -- Blister
	{"78", "Segunda mano", "Duplica la duración de los efectos de estado aplicados a enemigos"}, -- Second Hand
	{"79", "Sin final, sin nombre", "25% de probabilidad al usar una {{Rune}} runa, {{Pill}} píldora o {{Card}} carta de generar una copia"}, -- Endless Nameless
	{"80", "Pluma Negra", "↑ {{Damage}} Daño +0.2 por cada objeto \"malvado\" que tengas"}, -- Black Feather
	{"81", "Furia del Ciego", "Duplica el tiempo de invencibilidad tras recibir daño"}, -- Blind Rage
	{"82", "Herradura de oro", "{{TreasureRoom}} +15% de probabilidad de generar dos objetos para elegír en futuras salas del tesoro"}, -- Golden Horse Shoe
	{"83", "Llave de Tienda", "{{Shop}} Permite abrir las tiendas gratis"}, -- Store Key
	{"84", "Costilla de Codicia", "{{Coin}} Genera 5% mas monedas y menos corazones como recompensa de habitación#Codicia y Super Codicia ya no aparecerán en la {{Shop}} Tienda y en la {{SecretRoom}} Habitación Secreta"}, -- Rib of Greed
	{"85", "Karma", "{{DonationMachine}} Al usar una Máquina de Donación, 33% de probabilidad de:#{{HealingRed}} Curar 1 corazón (40%)#{{Coin}} Generar 1 moneda (40%)#{{Luck}} Suerte +1 (15%)#{{Beggar}} Generar un Mendigo (5%)"}, -- Karma
	{"86", "Mini-Larva", "Romper caca genera una mosca azul"}, -- Lil Larva
	{"87", "Medallón de Mamá", "{{HealingRed}} Cura medio corazón al usar llaves#{{Heart}} Convierte los medios corazones en corazones enteros"}, -- Mom's Locket
	{"88", "¡NO!", "Previene que aparezcan objetos activos"}, -- NO!
	{"89", "Correa de Niño", "Los familiares se mantendrán cerca del jugador"}, -- Child Leash
	{"90", "Detonador café", "Las cacas explotan al ser destruidas, infligiendo 60 de daño#No afecta a las cacas rojas"}, -- Brown Cap
	{"91", "Meconio", "33% de probabilidad de encontrar cacas negras#{{BlackHeart}} 5% de probabilidad de generar un corazón negro al romper una caca negra"}, -- Meconium
	{"92", "Corona Quebrada", "↑ {{Tears}} Lágrimas x0.8#↑ Multiplica las estadisticas x1.33 si se encuentran por encima del valor base"}, -- Cracked Crown
	{"93", "Pañal usado", "15% de probabilidad por habitación de volver amistosas a todas las moscas enemigas"}, -- Used Diaper
	{"94", "Cola de pescado", "Duplica al generar las moscas y arañas azules"}, -- Fish Tail
	{"95", "Diente negro", "{{Poison}} 3% de probabilidad de disparar un diente negro venenoso#Los dientes infligen el doble de tu daño#{{Luck}} 100% de probabilidad con 32 de suerte"}, -- Black Tooth
	{"96", "Gusano Ouroboros", "↑ {{Range}} +4 de Alcance#↑ Altura de lágrima +2#Lágrimas espectrales#Probabilidad de disparar lágrimas teledirigidas#{{Luck}} 100% de probabilidad con 9 de suerte#Las lágrimas se mueven rapidamente en espiral"}, -- Ouroboros Worm
	{"97", "Angina", "Recibir daño 12-20 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares"}, -- Tonsil
	{"98", "Duende de Nariz", "10% de probabilidad de disparar lágrimas de moco#{{Damage}} Los mocos infligen tu daño una vez cada segundo#Los mocos se pegan durante 60 segundos#50% de probabilidad de que los mocos sean teledirigidos"}, -- Nose Goblin
	{"99", "Super Bola", "10% de probabilidad de disparar lágrimas que rebotan"}, -- Super Ball
	{"100", "Bombilla Vibrante", "Otorga al tener un objeto activo cargado:#↑ {{Speed}} Velocidad +0.25#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.75#↑ {{Shotspeed}} Vel. de lágrimas +0.1#↑ Altura de lágrima +0.5#↑ {{Luck}} +1 de Suerte"}, -- Vibrant Bulb
	{"101", "Bombilla Muerta", "Otorga al tener un objeto activo descargado:#↑ {{Speed}} Velocidad +0.5#↑ {{Tears}} Lágrimas +0.4#↑ {{Damage}} Daño +1.5#↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.3#↑ Altura de lágrima +1#↑ {{Luck}} +2 de Suerte"}, -- Dim Bulb
	{"102", "Carta Dividida", "{{SecretRoom}} +1 Sala Secreta adicional en cada planta"}, -- Fragmented Card
	{"103", "¡Igualdad!", "Convierte los recolectables en sus versiones dobles al tener el mismo número de {{Coin}} monedas, {{Key}} llaves y {{Bomb}} bombas"}, -- Equality!
	{"104", "Hueso de los deseos", "2% de probabilidad de consumir el trinket y generar un objeto al recibir daño"}, -- Wish Bone
	{"105", "Bolsa de Almuerzo", "2% de probabilidad de consumir el trinket y generar {{Collectible22}} Almuerzo al recibir daño"}, -- Bag Lunch
	{"106", "Corcho Perdido", "Aumenta el radio de los rastros de fluido producidos por el jugador"}, -- Lost Cork
	{"107", "Corazón de cuervo", "{{Heart}} Los corazones rojos recibirán el daño antes que los de alma o negros#{{AngelDevilChance}} El daño a corazones rojos no reduce la probabilidad de encontrar salas del Diablo/Ángel"}, -- Crow Heart
	{"108", "Nuez", "Tras ser golpeado por 1-9 explosiones:#Destruye el trinket#Suelta un {{UnknownHeart}} corazón, {{Coin}} moneda, {{Key}} llave y {{Trinket}} trinket aleatorios"}, -- Walnut
	{"109", "Cinta adhesiva", "Los familiares se moverán de forma relativa a tu posición"}, -- Duct Tape
	{"110", "Dólar de Plata", "{{Shop}} Las tiendas aparecerán en el Útero"}, -- Silver Dollar
	{"111", "Corona sangrienta", "{{TreasureRoom}} Las Salas del Tesoro aparecerán en el Útero"}, -- Bloody Crown
	{"112", "Pay To Win", "{{RestockMachine}} Las máquinas de reabastecimiento siempre aparecen en las {{TreasureRoom}} Salas del Tesoro"}, -- Pay To Win
	{"113", "Langosta de Guerra", "Genera una langosta explosiva al entrar a una habitación hostil#Las langostas infligen el doble de tu daño + la explosión"}, -- Locust of War
	{"114", "Langosta de Pestilencia", "{{Poison}} Genera una langosta venenosa al entrar a una habitación hostil#Las langostas infligen el doble de tu daño"}, -- Locust of Pestilence
	{"115", "Langosta de Hambruna", "{{Slow}} Genera una langosta que ralentiza al entrar a una habitación hostil#Las langostas infligen el doble de tu daño"}, -- Locust of Famine
	{"116", "Langosta de Muerte", "Genera una langosta al entrar a una habitación hostil#Las langostas infligen cuatro veces tu daño"}, -- Locust of Death
	{"117", "Langosta de Conquista", "Genera 2-5 langostas al entrar a una habitación hostil#Las langostas infligen el doble de tu daño"}, -- Locust of Conquest
	{"118", "Ala de murciélago", "5% de probabilidad de otorgar vuelo durante la habitación al matar un enemigo"}, -- Bat Wing
	{"119", "Célula madre", "{{HealingRed}} Cura medio corazón al entrar a un nuevo piso"}, -- Stem Cell
	{"120", "Horquilla", "{{Battery}} Entrar en una sala de jefe recarga completamente tu objeto activo"},-- Hairpin
	{"121", "Cruz de madera", "{{Collectible313}} Otorga un escudo de un solo uso en cada piso"}, -- Wooden Cross
	{"122", "Mantequilla", "Suelta el objeto activo tras usarlo#2% de probabilidad de soltar uno de tus objetos pasivos al recibir daño"}, -- Butter!
	{"123", "Pluma de filigrana", "Los ángeles soltarán objetos de ángel en lugar de piezas de llave"}, -- Filigree Feather
	{"124", "Tope de puerta", "Mantiene abierta la última puerta utilizada"}, -- Door Stop
	{"125", "Cable de Extensión", "Conecta a los familiares entre si con rayos de electricidad#Los rayos infligen 6 de daño"}, -- Extension Cord
	{"126", "Moneda Podrida", "Recoger una moneda genera una mosca azul"}, -- Rotten Penny
	{"127", "Bebé Doblador", "Otorga lágrimas teledirigidas a todos tus familiares"}, -- Baby-Bender
	{"128", "Hueso del Dedo", "{{EmptyBoneHeart}} 2% de probabilidad de obtener un corazón de hueso al recibir daño"}, -- Finger Bone
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	{"1", "0 - El Bufón", "Te teletransporta a la primer habitación del piso actual"}, -- 0 - The Fool
	{"2", "I - El Mago", "{{Timer}} Lágrimas teledirigidas durante la habitación actual"}, -- I - The Magician
	{"3", "II - La Suma Sacerdotisa", "El Pie de Mamá aplastará a un enemigo#Te aplastará si no hay enemigos"}, -- II - The High Priestess
	{"4", "III - La Emperatriz", "{{Timer}} Otorga durante la habitación actual:#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +1.5"}, -- III - The Empress
	{"5", "IV - El Emperador", "{{BossRoom}} Te teletransporta a la Sala de Jefe"}, -- IV - The Emperor
	{"6", "V - El Hierofante", "{{SoulHeart}} Genera 2 corazones de alma"}, -- V - The Hierophant
	{"7", "VI - Los Enamorados", "{{Heart}} Genera 2 corazones rojos"}, -- VI - The Lovers
	{"8", "VII - El Carruaje", "{{Timer}} Otorga durante 6 segundos:#↑ {{Speed}} Velocidad +0.28#Invencibilidad#No puedes disparar, pero infliges 40 de daño por contacto"}, -- VII - The Chariot
	{"9", "VIII - Justicia", "Genera {{UnknownHeart}} un corazón, {{Coin}} una moneda, {{Bomb}} una bomba y {{Key}} una llave al azar"}, -- VIII - Justice
	{"10", "IX - El Ermitaño", "{{Shop}} Te teletransporta a la tienda"}, -- IX - The Hermit
	{"11", "X - La Rueda de la Fortuna", "Genera una {{Slotmachine}} Máquina Tragaperras#{{FortuneTeller}} 24% de probabilidad de generar una Máquina de la Fortuna"}, -- X - Wheel of Fortune
	{"12", "XI - Fuerza", "{{Timer}} Otorga durante la habitación actual:#↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +0.3#↑ {{Damage}} Daño x1.5#↑{{Range}} Alcance +5.25#↑ Tamaño de lágrimas +0.5"}, -- XI - Strength
	{"13", "XII - El Colgado", "{{Timer}} Permite volar durante la habitación actual"}, -- XII - The Hanged Man
	{"14", "XIII - Muerte", "Inflige 40 de daño a todos los enemigos en la habitación"}, -- XIII - Death
	{"15", "XIV - Templanza", "{{BloodDonationMachine}} Genera una máquina de donación de sangre"}, -- XIV - Temperance
	{"16", "XV - El Diablo", "{{Timer}} Otorga durante la habitación actual:#↑ {{Damage}} Daño +2"}, -- XV - The Devil
	{"17", "XVI - La Torre", "Invoca 6 bombas troll"}, -- XVI - The Tower
	{"18", "XVII - Las Estrellas", "{{TreasureRoom}} Te teletransporta a la sala del tesoro"}, -- XVII - The Stars
	{"19", "XVIII - La Luna", "{{SecretRoom}} Te teletransporta a la habitación secreta"}, -- XVIII - The Moon
	{"20", "XIX - El Sol", "{{HealingRed}} Salud al maximo#Inflige 100 de daño a todos los enemigos#Revela el mapa completo del piso (excepto la {{SuperSecretRoom}} Habitación Super Secreta)"}, -- XIX - The Sun
	{"21", "XX - Juicio", "{{Beggar}} Genera un mendigo#{{DemonBeggar}} 33% de probabilidad de generar un mendigo demoníaco#{{KeyBeggar}}/{{BombBeggar}} 2% de probabilidad de generar un mendigo de llaves o de bombas"}, -- XX - Judgement
	{"22", "XXI - El Mundo", "Revela el mapa completo del piso actual (excepto la {{SuperSecretRoom}} Habitación Super Secreta)"}, -- XXI - The World
	{"23", "2 de Tréboles", "{{Bomb}} Duplica tus bombas"}, -- 2 of Clubs
	{"24", "2 de Diamantes", "{{Coin}} Duplica tus monedas"}, -- 2 of Diamonds
	{"25", "2 de Picas", "{{Key}} Duplica tus llaves"}, -- 2 of Spades
	{"26", "2 de Corazones", "{{HealingRed}} Duplica tus Corazones Rojos {{ColorSilver}}(No duplica contenedores){{CR}}"},
	{"27", "As de Tréboles", "{{Bomb}} Convierte todos los recolectables en bombas aleatorias"}, -- Ace of Clubs
	{"28", "As de Diamantes", "{{Coin}} Convierte todos los recolectables en monedas aleatorias"}, -- Ace of Diamonds
	{"29", "As de Picas", "{{Key}} Convierte todos los recolectables en llaves aleatorias"}, -- Ace of Spades
	{"30", "As de Corazones", "{{UnknownHeart}} Convierte todos los recolectables en corazones aleatorios"}, -- Ace of Hearts
	{"31", "Joker", "{{AngelDevilChance}} Te teletransporta a la sala de Diablo/Ángel"}, -- Joker
	{"32", "Hagalaz", "Destruye todas las rocas de la habitación actual"}, -- Hagalaz
	{"33", "Jera", "Duplica todos los recolectables en la habitación"}, -- Jera
	{"34", "Ehwaz", "{{Crawlspace}} Genera una trampilla#{{LadderRoom}} 8% de probabilidad de generar una trampilla a una mazmorra"}, -- Ehwaz
	{"35", "Dagaz", "{{SoulHeart}} +1 Corazón de alma#{{CurseCursed}} Remueve las maldiciónes del piso actual"}, -- Dagaz
	{"36", "Ansuz", "{{Timer}} Revela el mapa completo del piso actual"}, -- Ansuz
	{"37", "Perthro", "{{Collectible105}} Cambia los objetos en pedestales en la habitación"}, -- Perthro
	{"38", "Berkano", "Genera 3 arañas azules y 3 moscas azules"}, -- Berkano
	{"39", "Algiz", "{{Timer}} Otorga invencibilidad durante 30 segundos"}, -- Algiz
	{"40", "Runa en blanco", "Efecto de runa aleatorio#25% de probabilidad de duplicarse a si mismo"}, -- Blank Rune
	{"41", "Runa negra", "Inflige 40 de daño a todos los enemigos#{{Collectible477}} Consume los objetos de pedestal en la sala y potencia una estadística aleatoria por cada objeto consumido#Convierte los recolectables en la sala en moscas azules"}, -- Black Rune
	{"42", "Carta del caos", "Carta lanzable que mata a cualquier enemigo al instante (excepto Delirium)"}, -- Chaos Card
	{"43", "Tarjeta de crédito", "Elimina el precio de todos los objetos en la tienda actual o la {{DevilRoom}} Sala del Diablo, haciendo que todo sea gratis"}, -- Credit Card
	{"44", "Carta de reglas", "Al usarlo, muestra consejos \"útiles\""}, -- Rules Card
	{"45", "Una Carta Contra la Humanidad", "Llena toda la habitación de caca"}, -- A Card Against Humanity
	{"46", "Rey suicida", "Te mata instantáneamente y genera 10 recolectables/objetos en el suelo#Los objetos generados serán del grupo de la habitación actual"}, -- Suicide King
	{"47", "Carta Sal Libre de Prisión", "Abre todas las puertas de la habitación actual"}, -- Get Out Of Jail Free Card
	{"48", "¿? Carta", "Activa tu objeto activo sin consumir cargas"}, -- ? Card
	{"49", "Fragmento de Dado", "Cambia los objetos en pedestales y recolectables en la habitación"}, -- Dice Shard
	{"50", "Contacto de emergencia", "Invoca 2 Manos de Mamá para que sujeten a un enemigo cada una"}, -- Emergency Contact
	{"51", "Carta sagrada", "{{HolyMantle}} Otorga un escudo de Manto Sagrado para la habitación actual#25% de probabilidad de generar otra Carta Sagrada"}, -- Holy Card
	{"52", "Gran Crecimiento", "{{Timer}} Otorga durante la habitación actual:#↑ {{Damage}} Daño +7#↑ {{Range}} Alcance +30#↑ +Tamaño#Permite romper rocas caminando sobre ellas"}, -- Huge Growth
	{"53", "Recuerdo Antiguo", "{{Card}} Genera 3 cartas aleatorias"}, -- Ancient Recall
	{"54", "Caminando una Era", "{{Timer}} Otorga durante la habitación actual:#↑ {{Speed}} Velocidad +0.5#{{Shotspeed}} Vel. de lágrimas -1#Ralentiza a los enemigos"}, -- Era Walk
}

--[[ Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple) ]]
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Genera {{ColorShinyPurple}}2{{CR}} {{UnknownHeart}} corazones, {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves al azar"}, -- VIII - Justice
	[11] = {" una ", " 2 ", "Máquina", "{{CR}}Maquinas","generar una", "{{CR}}que una sea una"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" una ", " 2 ", " Máquina", " {{CR}}Máquinas", "mendigo demoníaco", "{{CR}}mendigos demoníacos"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {"Genera un mendigo", "{{CR}}Genera {{ColorShinyPurple}}2{{CR}} mendigos", "generar ", "{{CR}}que uno sea ", "generar:", "{{CR}}que uno sea:"}, -- XX - Judgement
	[23] = {"Duplica", "Cuadruplica"}, -- 2 of Clubs
	[24] = {"Duplica", "Cuadruplica"}, -- 2 of Diamonds
	[25] = {"Duplica", "Cuadruplica"}, -- 2 of Spades
	[26] = {"Duplica", "Cuadruplica"}, -- 2 of Hearts
	[33] = {"Duplica", "Cuadruplica"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = {"los ", "2 veces {{CR}}los "}, -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Activa 2 efectos de runa aleatorios e intenta duplicarse a si mismo 2 veces", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = {"el ", "2 veces {{CR}}el "}, -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Píldora sin identificar"

EID.descriptions[languageCode].pills={
	{"0", "Vaya pedo", "Te tiras un pedo!#{{Poison}} Envenena a los enemigos cercanos"}, -- Bad Gas
	{"1", "Mal viaje", "{{Warning}} Te inflige 1 corazón de daño#Se vuelve una pildora de \"Salud completa\" al tener 1 corazón o menos"}, -- Bad Trip
	{"2", "Bolas de acero", "{{SoulHeart}} +2 corazones de alma"}, -- Balls of Steel
	{"3", "Las bombas son llaves", "Intercambia el número de {{Bomb}} bombas por el de {{Key}} llaves"}, -- Bombs are Key
	{"4", "Diarrea explosiva", "Genera 5 bombas encendidas en tu posición"}, -- Explosive Diarrhea
	{"5", "Salud completa", "{{HealingRed}} Salud al maximo"}, -- Full Health
	{"6", "Menos salud", "↓ {{EmptyHeart}} -1 Contenedor de corazón#Se vuelve una pildora de \"Más salud\" al tener 1 contenedor o menos"}, -- Health Down
	{"7", "Más salud", "↑ {{EmptyHeart}} +1 contenedor de corazón vacío"}, -- Health Up
	{"8", "Encontré Píldoras", "Sin efecto"}, -- I Found Pills
	{"9", "Pubertad", "Sin efecto#Consumir 3 te transforma en Adulto:#↑ {{Heart}} +1 de Vida"}, -- Puberty
	{"10", "Mosca bonita", "+1 Mosca orbital"}, -- Pretty Fly
	{"11", "Menos Alcance", "↓ {{Range}} Alcance -2"}, -- Range Down
	{"12", "Más Alcance", "↑ {{Range}} Alcance +2.5"}, -- Range Up
	{"13", "Menos velocidad", "↓ {{Speed}} Velocidad -0.12"}, -- Speed Down
	{"14", "Más velocidad", "↑ {{Speed}} Valocidad +0.15"}, -- Speed Up
	{"15", "Menos lágrimas", "↓ {{Tears}} Lágrimas -0.28"}, -- Tears Down
	{"16", "Más lágrimas", "↑ {{Tears}} Lágrimas +0.35"}, -- Tears Up
	{"17", "Menos suerte", "↓ {{Luck}} Suerte -1"} , -- Luck Down
	{"18", "Más suerte", "↑ {{Luck}} Suerte +1"}, -- Luck Up
	{"19", "Telepíldoras", "Te teletransporta a una habitación aleatoria#{{ErrorRoom}} Probabilidad menor de teletransportarte a la habitación de \"I AM ERROR\""}, -- Telepills
	{"20", "¡48 Horas de energía!", "{{Battery}} Recarga completamente el objeto activo#{{Battery}} Genera 1-2 baterías"}, -- 48 Hour Energy!
	{"21", "Hematémesis", "{{Warning}} Drena todos los corazones menos el último#{{Heart}} Genera 1-4 corazones rojos"}, -- Hematemesis
	{"22", "Parálisis", "Congelado!#No puedes moverte ni disparar durante 2 segundos"}, -- Paralysis
	{"23", "¡Puedo ver para siempre!", "{{SecretRoom}} Abre las entradas de las habitaciones secretas en el piso actual"}, -- I can see forever!
	{"24", "Feromonas", "{{Charm}} Encanta a todos los enemigos de la habitación"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Oculta el mapa del piso actual"}, -- Amnesia
	{"26", "Fiesta de limonada", "Genera un gran charco en el suelo que daña a los enemigos"}, -- Lemon Party
	{"27", "¿Eres un Mago?", "{{Timer}} Disparas en diagonal durante 60 segundos"}, -- R U A Wizard?
	{"28", "¡Percs!", "{{Timer}} Reduce el daño recibido a medio corazón durante la habitación actual"}, -- Percs!
	{"29", "¡Adicto!", "{{Timer}} Aumenta el daño recibido a un corazón durante la habitación actual"}, -- Addicted!
	{"30", "Relaxante", "Genera una caca al moverte durante 2 segundos"}, -- Re-Lax
	{"31", "¿¿??", "{{CurseMaze}} Maldición del Laberinto durante el piso actual"}, -- ???
	{"32", "Una te hace grande", "Aumenta tu tamaño#No afecta a tu hitbox"}, -- One makes you larger
	{"33", "Una te hace pequeño", "Reduce tu tamaño#Reduce el tamaño de tu hitbox"}, -- One makes you small
	{"34", "¡Infestado!", "Genera 1 mosca azul por cada caca en la habitación"}, -- Infested!
	{"35", "¿Infestado?", "Genera 1 araña azul por cada enemigo en la habitación#Genera 1-3 arañas cuando no hay enemigos"}, -- Infested?
	{"36", "¡Píldora de Poder!", "{{Timer}} Otorga durante 6.5 segundos:#Invencibilidad#No puedes disparar, pero infliges 40 de daño por contacto cada segundo#{{HealingRed}} Probabilidad de curar medio corazón rojo al matar un enemigo#{{Fear}} Asusta a todos los enemigos en la habitación"}, -- Power Pill!
	{"37", "Visión Retro", "{{Timer}} Pixelea la pantalla 3 veces durante 30 segundos"}, -- Retro Vision
	{"38", "¡Amigos hasta el fin!", "Genera 3 moscas azules"}, -- Friends Till The End!
	{"39", "X-Lax", "Genera una piscina de fluido resbaladizo"}, -- X-Lax
	{"40", "Algo está mal...", "{{Slow}} Genera una piscina de fluido ralentizante"}, -- Something's wrong...
	{"41", "Tengo mucho sueño...", "{{Slow}} Ralentiza a todos los enemigos en la habitación"}, -- I'm Drowsy...
	{"42", "¡¡TENGO MUCHA ENERGÍA!!", "Acelera a todos los enemigos en la habitación"}, -- I'm Excited!!
	{"43", "¡Gulp!", "{{Trinket}} Consume el trinket actual y otorga sus efectos de forma permanente"}, -- Gulp!
	{"44", "¡Horf!", "{{Collectible149}} Dispara una lágrima de Ipecac"}, -- Horf!
	{"45", "¡Es como si caminara sobre el sol!", "{{Timer}} Otorga durante 6 segundos:#Invencibilidad#No puedes disparar (Sin daño por contacto)"}, -- Feels like I'm walking on sunshine!
	{"46", "¡Vurp!", "Genera la última píldora usada anterior a esta"}, -- Vurp!
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalena", ""},
	[2] = {"Caín", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "No puede tener corazones rojos#{{SoulHeart}} los Objetos de vida otorgan Corazones de Alma"},
	[5] = {"Eva", ""},
	[6] = {"Sansón", ""},
	[7] = {"Azazel", "Puede volar#{{Collectible118}} Dispara un rayo de corto alcance en vez de lágrimas"},
	[8] = {"Lázaro", "Al morir, Reaparece como Lázaro Resucitado con 1 contenedor de corazón"},
	[9] = {"Edén", "Inicia cada partida con estadísticas y objetos aleatorios"},
	[10] = {"El Perdido", "Puede volar#Lágrimas espectrales#{{Warning}} Sin salud#{{DevilRoom}} Puede tomar un Pacto del Diablo gratis por sala"},
	[11] = {"Lázaro Resucitado", "Estadísticas incrementadas y Daño x1.2"},
	[12] = {"Judas Oscuro", "{{Damage}} Daño x2#{{Player3}} Cuenta como Judas en las Marcas de finalización"},
	[13] = {"Lilith", "No dispara lágrimas#{{Collectible360}} Un Íncubo dispara por ella"},
	[14] = {"Keeper", "{{CoinHeart}} Recupera salud recogiendo monedas#Máximo de 2 Corazones Moneda#Convierte los Corazones en moscas azules"},
	[15] = {"Apolión", ""},
	[16] = {"El Olvidado", "Ataca con un hueso que puede ser arrojado#{{BoneHeart}} Puede tener hasta 6 Corazones de hueso#{{Player17}} Presiona {{ButtonRT}} para cambiar por El Alma#{{SoulHeart}} El Alma puede llevar hasta 6 corazones negros/de alma#Puede volar y disparar lágrimas espectrales#El Alma está encadenada alrededor de El Olvidado"},
	[17] = {"Alma del Olvidado", "Ataca con un hueso que puede ser arrojado#{{BoneHeart}} Puede tener hasta 6 Corazones de hueso#{{Player17}} Presiona {{ButtonRT}} para cambiar por El Alma#{{SoulHeart}} El Alma puede llevar hasta 6 corazones negros/de alma#Puede volar y disparar lágrimas espectrales#El Alma está encadenada alrededor de El Olvidado"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Siguiente pago de la sala del Sacrificio]"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "{{Coin}} 50% de probabilidad de soltar 1 moneda#{{Bomb}} 100% de probabilidad de soltar 1 bomba al matar al Jefe de B1 en menos de 1 minuto"},
	{"2", "", "{{Coin}} 50% de probabilidad de soltar 1 moneda#{{Bomb}} 100% de probabilidad de soltar 1 bomba al matar al Jefe de B1 en menos de 1 minuto"},
	{"3", "", "{{AngelRoom}} 67% de probabilidad de aumentar la probabilidad de encontrar salas de Ángel"},
	{"4", "", "{{Chest}} 50% de probabilidad de soltar 1 cofre aleatorio"},
	{"5", "", "{{Coin}} 33% de probabilidad de soltar 3 monedas#{{AngelRoom}} 67% de probabilidad de aumentar la probabilidad de encontrar salas de Ángel"},
	{"6", "", "{{AngelRoom}} 33% de probabilidad de teletransportarte a la sala de Ángel#{{DevilRoom}} Te teletransporta a la sala de Diablo si ya se ha generado en este piso#{{Chest}} 67% de probabilidad de un cofre aleatorio"},
	{"7", "", "{{AngelRoom}} 33% de probabilidad de 1 objeto de Ángel aleatorio#{{SoulHeart}} 67% de probabilidad de 1 corazón de alma"},
	{"8", "", "100% de probabilidad de generar 7 bombas troll"},
	{"9", "", "100% de probabilidad de invocar al ángel \"Uriel\""},
	{"10", "", "{{SoulHeart}} 50% de probabilidad de soltar 7 corazones de alma#{{Coin}} 50% de probabilidad de soltar 30 monedas"},
	{"11", "", "100% de probabilidad de generar al ángel \"Gabriel\""},
	{"12", "", "50% de probabilidad de teletransportarte al \"Cuarto Oscuro\""},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Efecto del dado]"

EID.descriptions[languageCode].dice={
	{"1", "", "Cambia tus objetos por otros del mismo grupo#(no afecta a los recolectables)"},
	{"2", "", "Cambia los recolectables de la habitación"},
	{"3", "", "Cambia todos los recolectables y trinkets del piso actual"},
	{"4", "", "Cambia los objetos en pedestales del piso#No afecta los {{DevilRoom}} Pactos del Diablo"},
	{"5", "", "Cambia y reinicia la planta actual"},
	{"6", "", "Cambia todos tus objetos#Cambia los recolectables, trinkets y objetos en la planta actual"}
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",							-- 0 = none
	"Guppy",					-- 1
	"Fungi",					-- 2
	"Señor de las moscas",		-- 3
	"Siameses",					-- 4
	"Adicto",					-- 5
	"¿Sí, madre?",				-- 6
	"Me cago en...",			-- 7
	"Bob",						-- 8
	"Leviatán",					-- 9
	"Serafín",					-- 10
	"Super-pordiosero",			-- 11
	"Ratón de biblioteca",		-- 12
	"Bebé araña",				-- 13
	"Adulto",					-- 14
	"Gigante"					-- 15
}

---------- Misc. text ----------

-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- replace {pluralize} placeholders inside the text with an "s"
	text = EID:ReplaceVariableStr(text, "plural_s", amount > 1 and "s" or "")
	text = EID:ReplaceVariableStr(text, "plural_es", amount > 1 and "es" or "")
	text = EID:ReplaceVariableStr(text, "plural_zon", amount > 1 and "zones" or "zón")
	return text
end

EID.descriptions[languageCode].VoidText = "Otorga al absorberlo:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{{Speed}} Velocidad {1}", "{{Tears}} Lágrimas {1}", "{{Damage}} Daño {1}", "{{Range}} Alcance {1}", "{{Shotspeed}} Vel. de lágrimas {1}", "{{Luck}} Suerte {1}"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} Daño +4", "↑ {{Tears}} Vel. de lágrimas -4", "↑ {{Speed}} Velocidad +0.5", "↑ {{Range}} Alcance +7.5#↑ {{Tearsize}} Tamaño de lágrimas +1"}

EID.descriptions[languageCode].CrookedPennyHeads = "Cara"
EID.descriptions[languageCode].CrookedPennyTails = "Cruz"

EID.descriptions[languageCode].LuckModifier = "{1}% de probabilidad con {2} de suerte"

EID.descriptions[languageCode].CollectionPageInfo = "¡Debes tomar este objeto para completar la pagina de colección!"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorLime}}{1}{{CR}} objetos que incrementan (+{2} de Daño)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} UN SOLO USO {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	-- cora{plural_zon} will automatically replace "corazón" with "corazones" if it's > 1
	["Red to Soul"] = {
	"↑ {{Heart}} +{1} de Vida", "{{SoulHeart}} +{1} Cora{plural_zon} de Alma",
	"↑ {{EmptyHeart}} +{1} contenedor{plural_es} de corazón vacío{plural_s}", "{{SoulHeart}} +{1} Cora{plural_zon} de Alma",
	"↓ {{EmptyHeart}} {1} de Vida", "↓ {{SoulHeart}} {1} Cora{plural_zon} de Alma"},
	
	["Red to Black"] = {
	"↑ {{Heart}} +{1} de Vida", "{{BlackHeart}} +{1} Corazon{plural_es} Negro{plural_s}",
	"↑ {{EmptyHeart}} +{1} contenedor{plural_es} de corazón vacío{plural_s}", "{{BlackHeart}} +{1} Cora{plural_zon} Negro{plural_s}",
	"↓ {{EmptyHeart}} {1} de Vida", "↓ {{BlackHeart}} {1} Cora{plural_zon} Negro{plural_s}"},
	
	["Red to Bone"] = {
	"↑ {{Heart}} +{1} de Vida", "{{BoneHeart}} +{1} Cora{plural_zon} de Hueso",
	"↑ {{EmptyHeart}} +{1} contenedor{plural_es} de corazón vacío{plural_s}", "{{EmptyBoneHeart}} +{1} Cora{plural_zon} de Hueso Vacío{plural_s}", "{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}} {1} de Vida", "↓ {{EmptyBoneHeart}} {1} Cora{plural_zon} de Hueso"},
	
	["Red to Coin"] = {
	"↑ {{Heart}} +{1} de Vida", "{{CoinHeart}} +{1} Cora{plural_zon} de Moneda",

	"↑ {{EmptyHeart}} +{1} contenedor{plural_es} de corazón vacío{plural_s}", "{{EmptyCoinHeart}} +{1} Cora{plural_zon} de Moneda Vacíos",

	"{{HealingRed}} Cura {1} cora{plural_zon}", "{{HealingCoin}} Cura {1} Cora{plural_zon} de Moneda",
	"{{HealingRed}} Cura medio corazón", "{{HealingCoin}} Cura medio Corazón de Moneda",
	"{{HealingRed}}", "{{HealingCoin}}",
	"↓ {{EmptyHeart}} {1} de Vida", "↓ {{EmptyCoinHeart}} {1} Cora{plural_zon} de Moneda"}, -- Red HP to Coin Hearts
	
	["Red to None"] = {
	"↑ {{Heart}} +{1} de Vida", "",
	"↑ {{EmptyHeart}} +{1} contenedor{plural_es} de corazón vacío{plural_s}", "",
	"↓ {{EmptyHeart}} {1} de Vida", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Ejemplo de nombre de objeto",
	DemoObjectTransformation = "Ejemplo de transformación",
	DemoObjectText = "Este texto está en español#¡Una descripción larga y genial para demostrar los saltos de línea causados por el tamaño del texto de EID!#\1 Esta linea también es genial#Esta linea te ama {{Heart}}#{{AngelDevilChance}} Esta línea puede ser tu ángel o tu demonio#\1 {{Damage}} Aumento de estadísticas +1",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "Resultado de {1}",
	InventoryEmpty = "(No posees objetos)",
	CategoryNames = {
		Overview = "Descripción del Inventario",
		Wisps = "Fantasmas del Lemegeton",
		Special = "Especial",
		Actives = "Objetos Activos Actuales",
		Pockets = "Objetos de Bolsillo Actuales",
		Trinkets = "Trinkets Actuales",
		Passives = "Objetos Pasivos Actuales",
		Character = "Información del Personaje",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Sala regular", "Tienda", "Sala de I AM ERROR", "Sala del tesoro", "Sala de Jefe", "Sala de minijefe", "Sala secreta", "Sala súper secreta", "Arcade", "Sala maldita", "Sala de desafío", "Librería", "Sala del sacrificio", "Sala del Diablo", "Sala del Ángel", "Mini-sótano", "Sala del desafío de Jefes", "Habitación de Isaac", "Barren Room", "Sala de cofres", "Sala de dados", "Mercado negro", "Habitación de salida", "Planetario", "Entrada de teletransportador", "Salida de teletransportador", "Trampilla de la ruta alterna", "Sala de la Llave Azul", "Sala ultra secreta",
-- Not technically room types but still potentially useful to have localized
[666] = "Sala del Diablo/Ángel", [1024] = "Sala roja", [1025] = "Sala roja especial" }

-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "Ninguno",

	["5.10"] = "{{Heart}} Corazón",
	["5.10.1"] = "{{Heart}} Corazón", ["5.10.2"] = "{{HalfHeart}} Medio corazón", ["5.10.3"] = "{{SoulHeart}} Corazón de alma", ["5.10.4"] = "{{EternalHeart}} Corazón eterno", ["5.10.5"] = "{{Heart}} Corazón doble", ["5.10.6"] = "{{BlackHeart}} Corazón negro", ["5.10.7"] = "{{GoldHeart}} Corazón de oro", ["5.10.8"] = "{{HalfSoulHeart}} Medio corazón de alma", ["5.10.9"] = "{{Heart}} Corazón asustado", ["5.10.10"] = "{{BlendedHeart}} Corazón mezclado", ["5.10.11"] = "{{EmptyBoneHeart}} Corazón de hueso", ["5.10.12"] = "{{RottenHeart}} Corazón podrido",

	["5.20"] = "{{Coin}} Moneda",
	["5.20.1"] = "{{Crafting8}} Moneda", ["5.20.2"] = "{{Crafting9}} Níquel", ["5.20.3"] = "{{Crafting10}} 10 centavos", ["5.20.4"] = "{{Crafting8}} Moneda doble", ["5.20.5"] = "{{Crafting11}} Moneda de la suerte", ["5.20.6"] = "{{Crafting9}} Níquel pegajoso", ["5.20.7"] = "{{Crafting26}} Moneda dorada",

	["5.30"] = "{{Key}} Llave",
	["5.30.1"] = "{{Crafting12}} Llave", ["5.30.2"] = "{{Crafting13}} Llave dorada", ["5.30.3"] = "{{Crafting12}} Llavero", ["5.30.4"] = "{{Crafting14}} Llave cargada",

	["5.40"] = "{{Bomb}} Bomba",
	["5.40.1"] = "{{Crafting15}} Bomba", ["5.40.2"] = "{{Crafting15}} Bomba doble", ["5.40.3"] = "{{Crafting15}} Bomba troll", ["5.40.4"] = "{{Crafting16}} Bomba dorada", ["5.40.5"] = "{{Crafting15}} Bomba megatroll", ["5.40.7"] = "{{Crafting17}} Bomba gigante",
	
	["5.42"] = "{{Crafting29}} Recursos de caca", ["5.42.1"] = "{{Crafting29}} Recursos de caca grandes",

	["5.90"] = "{{Battery}} Batería",
	["5.90.0"] = "{{Crafting19}} Batería", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Batería pequeña", ["5.90.2"] = "{{Crafting18}} Mini Batería", ["5.90.3"] = "{{Crafting20}} Mega batería", ["5.90.4"] = "{{Crafting28}} Batería dorada",

	["5.50"] = "{{Chest}} Cofre", ["5.51"] = "{{BombChest}} Cofre de piedra", ["5.52"] = "{{SpikedChest}} Cofre con espinas", ["5.53"] = "{{EternalChest}} Cofre eterno", ["5.54"] = "{{MimicChest}} Cofre mímico", ["5.55"] = "{{OldChest}} Cofre viejo", ["5.56"] = "{{WoodenChest}} Cofre de madera", ["5.57"] = "{{MegaChest}} Mega cofre", ["5.58"] = "{{HauntedChest}} Cofre embrujado", ["5.60"] = "{{GoldenChest}} Cofre dorado", ["5.360"] = "{{RedChest}} Cofre rojo",

	["5.69"] = "{{GrabBag}} Saco", ["5.69.1"] = "{{GrabBag}} Saco", ["5.69.2"] = "{{BlackSack}} Saco negro",

	["5.70"] = "{{Pill}} Píldora",
	["5.300"] = "{{Card}} Carta",
	["5.301"] = "{{Rune}} Runa", -- not a real id
	["5.350"] = "{{Trinket}} Trinket",

}

-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Anulado por {1}",
	["Overrides"] = "Prioridad sobre {1}",
	["Almost No Effect"] = "Poco o ningún efecto para {1}",
	["No Effect"] = "No afecta a {1}",
	["No Effect Replace"] = {"No afecta a {1}"},
	["No Effect From"] = "Ningún efecto de {1}",
	["Can't Charge"] = "No puede cargar a {1}",
	["Can't Be Charged"] = "No recibe carga de {1}",
	["Can't Be Duplicated"] = "No puede ser duplicado",
	["No Effect (Greed)"] = "{{GreedMode}} Sin efecto en el Modo Codicia",
	["No Effect (Copies)"] = "Tener multiples copias no otorga efectos adicionales", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Sin efecto adicional en familiares", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}Efecto diferente para {1}{{CR}}",
	["Dies on Use"] = "{{Warning}} {1} morirá al usarlo", -- for Razor Blade and such as The Lost
	
	
	------ GREED MODE ------
	["Room to Wave"] = {"Limpiar", "Completar", "limpiar", "completar", "habitación", "oleada", "habitaciones", "oleadas", "sala", "oleada", "salas", "oleadas"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "{{Warning}} ¡Los campeones no soltarán recolectables en el Modo Codicia!", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} Genera un Mendigo Demoníaco"}, -- Temperance (Greed)
	["5.300.19"] = {"Te teletransporta a la sala inicial del piso actual"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Salud al maximo#Inflige 100 de daño a todos los enemigos"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Solo se activará una vez por habitación", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} No otorga Escudo contra los Jefes, solo contra Ultra Codicia", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} No otorga cargas contra los Jefes, solo contra Ultra Codicia", -- Hairpin (Greed)
	["5.100.246"] = {"{{SuperSecretRoom}} Revela la ubicación de la Sala Súper Secreta en el mapa"}, -- Blue Map (Greed)
	["5.100.333"] = {"{{SuperSecretRoom}} Revela la ubicación de la Sala Súper Secreta en el mapa"}, -- The Mind (Greed)
	["5.100.514"] = {"Provoca que algunos enemigos y proyectiles se congelen momentaneamente de forma aleatoria"}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 33% de probabilidad de obtener un corazón extra de los cofres, rocas marcadas, y máquinas destruidas"}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 33% de probabilidad de obtener una llave extra de los cofres, rocas marcadas, y máquinas destruidas"}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 33% de probabilidad de obtener una bomba extra de los cofres, rocas marcadas, y máquinas destruidas#{{Warning}} Remueve la {{Trinket53}} Garrapata"}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 33% de probabilidad de obtener una pildora extra de los cofres, rocas marcadas, y máquinas destruidas"}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 33% de probabilidad de obtener una carta extra de los cofres, rocas marcadas, y máquinas destruidas"}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} +10% de probabilidad de obtener una bateria#{{Battery}} 5% de probabilidad de añadir 1 carga a tu objeto activo al completar una oleada"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"Genera recompensas en base al piso actual:#Sotano: 2{{Bomb}} + 2{{Key}}#Cuevas: Objeto de Jefe + 2{{SoulHeart}}#Profundidades: 20{{Coin}}#Matriz: 2 Objetos de Jefe#Sheol: Objeto de Diablo + 1{{BlackHeart}}#La Tienda/Ultra Codicia: 1{{Coin}}"}, -- Pandora's Box
	
	
	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Morir en una {{SacrificeRoom}} Sala del Sacrificio al tener este trinket desbloquea a {{Player10}} El Perdido", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Desbloquea la {{Collectible523}} Caja de mudanza", "Nada"}, -- Pandora's Box unlocking Moving Box
	
	
	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 Corazones de alma"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 Corazones de alma#{{BlackHeart}} +1 Corazón negro"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 Corazones de alma#{{BlackHeart}} +1 Corazón negro"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 Corazón de alma#{{BlackHeart}} +2 Corazones negros"}, -- for Black Heart chars
	
	
	["5.100.135 (PHD)"] = "Genera 2-3 monedas al tener {1}", -- IV Bag PHD
	["Keeper 0-1"] = "Genera 0-1 moneda como {1}", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1} solo obtendrá ↑ {{Tears}} Lágrimas +0.4 al recogerlo", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "Permite a {1} obtener más contenedores de salud", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "{{Warning}} {1} solo morirá", -- Abaddon
	

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Disparas 3 lágrimas adicionales#No disminuirá tus estadisticas", -- The Inner Eye
	["5.100.153 (Copies)"] = "Disparas 4 lágrimas adicionales#No disminuirá tus estadisticas", -- Mutant Spider
	["5.100.245 (Copies)"] = "Disparas 2 lágrimas adicionales", -- 20/20
	["5.100.358 (Copies)"] = "Disparas 2 lágrimas adicionales cerca del centro", -- The Wiz
	["5.100.64 (Copies)"] = "Tener 2 copias de este objeto vuelve las tiendas gratis", -- Steam Sale
	["5.100.118 (Copies)"] = "Disparas un rayo adicional", -- Brimstone
	["5.100.224 (Copies)"] = "Las copias adicionales solo otorgan Velocidad -0.2", -- Kidney Stone
	
	
	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Las moscas del Nugget café cuentan como familiares",
	["Sacrificial Conception"] = "Los familiares generados por {1} pueden ser sacrificados, y podrán reaparecer",
	["Sacrificial Angels"] = "{1} genera 2 Corazones negros al ser sacrificado",
	["Sacrificial Void"] = "Puede usarse multiples veces si es absorbido por Vacio",
	
	["5.100.116 (1 Room)"] = "Las recargas de una sala se vuelven recargas de 15 segundos al estar en una habitación hostil", -- 9 Volt
	["5.100.116 (Timed)"] = "Las recargas temporizadas comienzan a mitad de carga", -- 9 Volt
	["9 Volt 1 Room"] = "Recargas de 15 segundos al estar en una habitación hostil", -- Actives + 9 Volt
	["9 Volt Timed"] = "Las recargas comienzan a mitad de carga luego del uso", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "Reduce el costo a Medio corazón", -- Sharp Plug + Wafer
	
	["Suicide 1"] = "{1} no evita la muerte", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "No evita que {1} te mate", -- Plan C, Damocles, Suicide King
	
	["5.100.7"] = "Daño x1.5 mientras {1} se encuentre activado", -- Blood of the Martyr
	["5.100.34"] = "Daño x1.5", -- Book of Belial
	["5.300.16"] = "Daño x1.5", -- XV - The Devil
	
	["5.100.81"] = "Reaparecerás con 1 Corazón de alma/negro si no puedes tener contenedores de corazón", -- Dead Cat
	["5.100.316"] = "{1} remueve el efecto de teletransportación", -- Cursed Eye
	["5.100.260"] = "Remueve el efecto de teletransportación de {1}", -- Black Candle
	["Void Single Use"] = "Los objetos de un solo uso solo se activarán una vez", -- Single Use Actives + Void
	["? Card Single Use"] = "Los objetos de un solo uso desaparecerán tras usar la ¿? Carta", -- Single Use Actives + ? Card
	["5.300.48"] = "Al usar la ¿? Carta con la Carta en blanco:#Te teletransporta a la sala de I Am Error#{{Warning}} Destruye ambas cartas", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Al usar la ¿? Carta con la Carta en blanco:#Te teletransporta a la sala de I Am Error#{{Warning}} Destruye ambas cartas", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Los objetos gratis no serán reabastecidos", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{Damage}} Daño +0.2", -- Black Feather items
	
	["Bulb Multiple"] = "Solo revisará la carga del objeto activo primario", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "No tiene efecto con objetos activos sin cargas", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "No es efectivo al tener recargas temporizadas", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "Activa el efecto a 1 Corazón Rojo al jugar como {1}", -- Whore of Babylon + Eve
	
	["5.70.28"] = "Disparas al frente y a ambos lados", -- R U A Wizard + The Wiz
	["5.100.523"] = "Cuenta como objeto pasivo para {1}", -- Moving Box + Void
	["Mongo Babies"] = "Puede ser imitado por {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "Al tener {1}, el laser remplazará tus lágrimas por completo",
	["Brimstone Proptosis"] = "Los rayos infligen el doble de daño a quemarropa, y va disminuyendo con la distancia",
	["Brimstone Ipecac"] = "Dispara lágrimas de Ipecac al cargar#+40 de daño para el laser",
	["Proptosis Anti-Gravity"] = "Las lágrimas estaticas no perderán daño hasta que se muevan",
	["Epic Fetus Soy Milk"] = "No reduce el tiempo de la mira, pero si reduce drasticamente el daño del cohete",
	["Eye of Belial Dr. Fetus"] = "Las bombas perforan, pero no cambian su curso ni infligen daño adicional",
	["Epic Fetus Brimstone"] = "{1} tendrá prioridad#Los cohetes disparan 10 rayos",
	["Epic Fetus Mom's Knife"] = "{1} tendrá prioridad#Los cohetes disparan 10 cuchillos",
	["Haemolacria Brimstone"] = "{1} tendrá prioridad#Las lágrimas se dividen en 4-7 rayos",
	["Brimstone Mom's Knife"] = "{1} tendrá prioridad#Dispara una ráfaga de cuchillos en función al tiempo de carga",
	["Ludovico Ipecac"] = "La lágrima obtiene +4 de daño, pero no explota ni envenena",
	["Technology Ipecac"] = "El láser obtiene +4 de daño y envenena al impactar",
	["Chocolate Milk Overrides"] = "↑ {{Tears}} Lágrimas x1.25",
	["Chocolate Milk Marked"] = "Cargas de forma automatica en función a la distancia de la mira",
	["Ghost Pepper Fart"] = "Disparas una flama por detras al tirarte un pedo",
	["Damage Multiplier Stack"] = "Los multiplicadores de daño no se acumulan",
	["White Poop"] = "Genera Caca Blanca en su lugar",
	["White Poop Chance"] = "Probabilidad de generar Caca Blanca",
	["Golden Poop Chance"] = "Probabilidad de generar Caca Dorada",
	["5.100.483"] = "{{GoldenBomb}} Tener una bomba dorada la consume y permite volver a usar a ¡Mama Mega!",
	
	["5.300.5"] = {"{{BossRoom}} Te teletransporta a una sala de Jefe aleatoria"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Te teletransporta a una habitación aleatoria si no hay una sala del Tesoro", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} Te teletransporta a una sala del Tesoro aleatoria"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Te teletransporta a la primera habitación del piso actual"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Te teletransporta a una habitación aleatoria si no hay una Tienda", -- IX - The Hermit (Womb and below)
	
}
