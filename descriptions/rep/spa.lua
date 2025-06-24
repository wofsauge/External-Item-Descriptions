---------------------------------------
-----  Basic Spanish descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line  |  ! = Warning
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "spa"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "El Ojo Interior", "Disparo triple#↓ {{Tears}} Lágrimas x0.51"}, -- Inner Eye
	[5] = {"5", "Mi reflejo", "↑ {{Damage}} Daño +1.5#↑ {{Range}} Alcance +1.5#↑ {{Range}} Alcance x2#↑ {{Shotspeed}} Vel. de lágrimas x1.6#↓ {{Luck}} Suerte -1#Lágrimas con efecto boomerang"}, -- My Reflection
	[6] = {"6", "Número 1", "↑ {{Tears}} Lágrimas +1.5#↓ {{Range}} Alcance -1.5#↓ {{Range}} Alcance x0.8"}, -- Number One
	[12] = {"12", "Hongo Mágico", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +0.3#↑ {{Damage}} Daño x1.5#↑ {{Range}} Alcance +2.5#{{HealingRed}} Salud al maximo"},  -- Magic Mushroom
	[13] = {"13", "El virus", "↑ {{Speed}} Velocidad +0.2#{{Poison}} Tocar enemigos los envenena#Otorga 48 de daño por contacto cada segundo"}, -- The Virus
	[14] = {"14", "Furia por esteroides", "↑ {{Speed}} Velocidad +0.3#↑ {{Range}} Alcance +2.5"}, -- Roid Rage
	[18] = {"18", "Un dólar", "{{Coin}} +100 monedas"}, -- A Dollar
	[22] = {"22", "Almuerzo", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Almuerzo
	[23] = {"23", "Cena", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Cena
	[24] = {"24", "Postre", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Postre
	[25] = {"25", "Desayuno", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Desayuno
	[26] = {"26", "Carne podrida", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Carne podrida
	[29] = {"29", "Ropa interior de Mamá", "↑ {{Range}} Alcance +2.5#Genera 3-6 moscas azules"}, -- Mom's Underwear
	[30] = {"30", "Tacones de Mamá", "↑ {{Range}} Alcance +2.5#Infliges 24 de daño por contacto cada segundo"}, -- Mom's Heels
	[31] = {"31", "Labial de Mamá", "↑ {{Range}} Alcance +3.75#{{UnknownHeart}} Genera un corazón aleatorio"}, -- Mom's Lipstick
	[37] = {"37", "Sr. Buum", "Genera una gran bomba a tus pies que inflige 185 de daño"}, -- Mr. Boom
	[40] = {"40", "¡Kamikaze!", "Provoca una gran explosión en la ubicación del jugador#Inflige 185 de daño#{{Warning}} La explosión daña al jugador"}, -- Kamikaze!
	[41] = {"41", "Toallita de Mamá", "{{Fear}} Asusta a todos los enemigos en la habitación durante 5 segundos#Genera una mosca azul"}, -- Mom's Pad
	[42] = {"42", "Cabeza podrida de Bob", "{{Throwable}} Cabeza explosiva lanzable#{{Poison}} Genera una nube de veneno al explotar#Inflige tu daño + 185"}, -- Bob's Rotten Head
	[46] = {"46", "Pie de la suerte", "↑ {{Luck}} Suerte +1#Más probabilidad de ganar al apostar#Aumenta las probabilidades de generar recompensas tras limpiar una habitación#Cambia las píldoras malas por buenas"}, -- Lucky Foot
	[49] = {"49", "Kamehame... ¡¿Eeeeeeh?!", "Reemplaza el siguiente disparo por un rayo#Inflige 24 veces tu daño durante 0.83 segundos"}, -- Shoop da Whoop!
	[52] = {"52", "Dr. Fetus", "¡Lágrimas bomba!#↓ {{Tears}} Lágrimas x0.4%#{{Damage}} Las bombas hacen 10 veces tu daño#{{Damage}} Si esto resulta en +60 de daño, infligirán tu daño x5 + 30"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Atrae a los recolectables cercanos hacia el jugador#Abre cofres a distancia, ignorando el daño de los cofres de pinchos"}, -- Magneto
	[55] = {"55", "Ojo de Mamá", "50% de probabilidad de disparar una lágrima hacia atrás#{{Luck}} 100% de probabilidad con 5 de suerte"}, -- Mom's Eye
	[59] = {"59", "Libro de Belial", "↑ {{AngelDevilChance}} +12.5% de probabilidad de generar salas de Ángel/Diablo#{{Timer}} Otorga por habitación:#↑ {{Damage}} Daño +2"}, -- The Book of Belial
	[62] = {"62", "Encanto del Vampiro", "↑ {{Damage}} Daño +0.3#{{HealingRed}} Cura medio corazón por cada 13 enemigos asesinados"}, -- Charm of the Vampire
	[67] = {"67", "Hermana Maggy", "Dispara lágrimas normales que infligen 5 de daño"}, -- Sister Maggy
	[69] = {"69", "Batido de chocolate", "{{Chargeable}} Permite cargar las lágrimas#↑ {{Damage}} El daño aumenta con el tiempo de carga hasta llegar al 400%"}, -- Chocolate Milk
	[70] = {"70", "Hormonas de crecimiento", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1"}, -- Growth Hormones
	[71] = {"71", "Honguito", "↑ {{Speed}} Velocidad +0.3#↑ {{Range}} Alcance +1.5#↑ Reduce tu tamaño"}, -- Mini Mush
	[72] = {"72", "Rosario", "↑ {{Tears}} Lágrimas +0.5#{{SoulHeart}} +3 Corazones de alma#{{Collectible33}} La Biblia se vuelve más común"}, -- Rosario
	[78] = {"78", "Libro de Revelaciones", "{{SoulHeart}} +1 corazón de alma#↑ {{AngelDevilChance}} +17.5% de probabilidad de generar salas de Ángel/Diablo al tenerlo#Reemplaza al jefe del piso por un jinete al usarlo"}, -- Book of Revelations
	[79] = {"79", "La marca", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1#{{BlackHeart}} +1 Corazón negro"}, -- La marca
	[80] = {"80", "El pacto", "↑ {{Tears}} Lágrimas +0.7#↑ {{Damage}} Daño +0.5#{{BlackHeart}} +2 Corazones negros"}, -- El pacto
	[83] = {"83", "El clavo", "Al usarlo:#{{HalfBlackHeart}} + medio corazón negro#↓ {{Speed}} Velocidad -0.18#↑ {{Damage}} Daño +0.7#Inflige 40 de daño por contacto cada segundo#Permite romper rocas caminando sobre ellas"}, -- The Nail
	[84] = {"84", "¡Necesitamos Ir Más Profundo!", "Genera una trampilla hacia el siguiente piso#{{LadderRoom}} Genera una trampilla a una mazmorra al usarse sobre la decoración del suelo"}, -- We Need To Go Deeper!
	[87] = {"87", "Cuernos de Loki", "25% de probabilidad de disparar en 4 direcciones#{{Luck}} 100% de probabilidad con 15 de suerte"}, -- Loki's Horns
	[91] = {"91", "Sombrero de espeleólogo", "Revela el tipo de las habitaciónes adyacentes#{{SecretRoom}} Revela las habitaciónes secretas y súper secretas#Evita el daño de projectiles que caigan desde arriba"}, -- Spelunker Hat
	[98] = {"98", "La reliquia", "{{SoulHeart}} Genera 1 corazón de alma cada 7-8 habitaciones"}, -- The Relic
	[101] = {"101", "El Halo", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.3#↑ {{Range}} Alcance +1.5#{{HealingRed}} Cura 1 corazón"}, -- The Halo
	[106] = {"106", "Sr. Mega", "↑ {{Bomb}} Daño de bombas x1.85#{{Bomb}} +5 Bombas"}, -- Sr. Mega
	[107] = {"107", "Las Tijeras Dentadas", "{{Timer}} Durante la habitación actual:#Permite volar#Tu cuerpo se separa y ataca a los enemigos#El cuerpo inflige 23.5 de daño por contacto cada segundo"}, -- The Pinking Shears
	[110] = {"110", "Lentillas de Mamá", "↑ {{Range}} Alcance +1.5#20% de probabilidad de disparar lágrimas petrificadoras#{{Luck}} 50% de probabilidad con 20 de suerte"}, -- Mom's Contacts
	[114] = {"114", "Cuchillo de mamá", "{{Chargeable}} Reemplaza tus lágrimas por un cuchillo lanzable#{{Damage}} Al tenerlo en la mano inflige 2 veces tu daño, hasta 6 veces con 1/3 de carga#Cargar más el ataque sólo aumentará el alcance#El daño vuelve al doble al regresar"}, -- Mom's Knife
	[115] = {"115", "Tabla Ouija", "↑ {{Tears}} Lágrimas +0.4#Lágrimas espectrales"}, -- Ouija Board
	[118] = {"118", "Azufre", "↓ {{Tears}} Lágrimas x0.33#{{Chargeable}} Reemplaza tus lágrimas por un rayo de sangre cargable#{{Damage}} Inflige 9 veces tu daño cada 0.63 segundos"},
	[121] = {"121", "Hongo Raro (Largo)", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +1.5#↓ {{Speed}} Velocidad -0.2"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manual de monstruos", "Genera un familiar aleatorio durante el piso actual"}, -- Manual de monstruos
	[126] = {"126", "Cuchilla", "↑ {{Damage}} Daño +1.2 durante la sala#{{Warning}} Inflige 1 corazón de daño al usarse#Tras el primer uso en la sala, sólo removerá medio corazón#{{Heart}} Remueve primero los corazones rojos"}, -- Razor Blade
	[129] = {"129", "Cubo de manteca", "↑ {{Heart}} +2 de Vida#↓ {{Speed}} Velocidad -0.2"}, -- Bucket of Lard
	[138] = {"138", "Estigma", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +0.3#{{HealingRed}} Cura 1 corazón"}, -- Stigmata
	[139] = {"139", "Bolso de Mamá", "{{Trinket}} Genera 1 trinket aleatorio#{{Trinket}} Permite llevar 2 trinkets"}, -- Bolso de Mamá
	[140] = {"140", "Maldición de Bob", "{{Bomb}} +5 Bombas#{{Poison}} Tus bombas generan una nube de veneno#{{Poison}} Otorga inmunidad al veneno"}, -- Bob's Curse
	[142] = {"142", "Escapulario", "{{SoulHeart}} +1 Corazón de alma al recibir daño teniendo medio corazón#Solo puede activarse una vez por habitación#{{Warning}} No se activa con las {{DonationMachine}} máquinas de donación"}, -- Scapular
	[147] = {"147", "Hacha de Notch", "Rompe las rocas y daña a los enemigos al contacto#Golpear con el hacha reduce sus cargas#Se recarga al avanzar al siguiente piso"}, -- Hacha de Notch
	[148] = {"148", "Infestación", "Genera 2-6 moscas azules al recibir daño"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} Daño +40#↓ {{Tears}} Lágrimas x0.33#↓ {{Range}} Alcance x0.8#↓ {{Shotspeed}} Vel. de lágrimas x0.8#Lágrimas explosivas#{{Poison}} Lágrimas venenosas"}, -- Ipecac
	[152] = {"152", "Tecnología 2", "↓ {{Tears}} Lágrimas x0.67#Remplaza tu ojo derecho con un laser continuo#{{Damage}} El laser inflige 2 veces tu daño cada segundo"}, -- Technology 2
	[153] = {"153", "Araña mutante", "↓ {{Tears}} Lágrimas x0.42#Disparo cuádruple"}, -- Mutant Spider
	[155] = {"155", "El fisgón", "↑ {{Damage}} Daño x1.35 para el ojo izquierdo#Flota por la habitación#Inflige 17.1 de daño por contacto cada segundo"}, -- The Peeper
	[158] = {"158", "Bola de cristal", "Puede generar:#Un {{SoulHeart}} Corazón de Alma, {{Rune}} runa o {{Card}} carta#{{Timer}} Revela el mapa del piso actual(excepto {{SuperSecretRoom}}{{UltraSecretRoom}} las Habitaciones Súper/Ultra Secretas)#Al tenerlo:#↑ {{PlanetariumChance}} +15% de probabilidad de planetario#↑ {{PlanetariumChance}} +100% de probabilidad de planetario al saltear la habitación del tesoro"}, -- Crystal Ball
	[169] = {"169", "Polifemo", "↑ {{Damage}} Daño +4#↑ {{Damage}} Daño x2#↓ {{Tears}} Lágrimas x0.42"}, -- Polyphemus
	[171] = {"171", "Trasero Aracnido", "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Inflige 10 de daño a todos los enemigos#Eliminar enemigos con él genera arañas azules"}, -- Culo de araña
	[172] = {"172", "Daga de Sacrificio", "Cuchillo orbital#Bloquea proyectiles enemigos#Inflige 112.5 de daño por contacto cada segundo"}, -- Sacrificial Dagger
	[173] = {"173", "Mitra", "{{SoulHeart}} 33% de probabilidad de convertir los corazones rojos en corazones de alma"}, -- Mitre
	[176] = {"176", "Células madre", "↑ {{Heart}} +1 de Vida#↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{HealingRed}} Cura 1 corazón"}, -- Stem Cells
	[178] = {"178", "Agua bendita", "{{Throwable}} Lanzable#Deja una piscina de fluido donde se haya roto#Petrifica a los enemigos"}, -- Agua bendita
	[180] = {"180", "El frijol negro", "Sueltas pedos en secuencia al recibir daño#{{Poison}} Los pedos dejan nubes venenosas y reflejan proyectiles"}, -- The Black Bean
	[182] = {"182", "Sagrado corazón", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño x2.3#↑ {{Damage}} Daño +1#↓ {{Tears}} Lágrimas -0.4#↓ {{Shotspeed}} Vel. de lágrimas -0.25#{{HealingRed}} Salud al maximo#Lágrimas teledirigidas"}, -- Sacred Heart
	[184] = {"184", "Santo Grial", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura un corazón#Permite volar"}, -- Holy Grail
	[186] = {"186", "Derechos de sangre", "Inflige 40 de daño a todos los enemigos#{{Warning}} Te inflige 1 corazón de daño al usarlo#Tras el primer uso en la sala, sólo removerá medio corazón#{{Heart}} Remueve primero los corazones rojos"}, -- Blood Rights
	[189] =	{"189", "Súper Fan de SMB", "↑ {{Heart}} +1 de vida#↑ {{Speed}} Velocidad +0.2#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.3#↑ {{Range}} Alcance +2.5#{{HealingRed}} Salud al maximo"}, -- SMB Super Fan
	[192] = {"192", "Telepatía para tontos", "{{Timer}} Otorga lágrimas teledirigidas para la habitación actual#↑ {{Range}} Alcance +3"}, -- Telepathy For Dummies
	[193] = {"193", "¡CARNE!", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +0.3#{{HealingRed}} Cura 1 corazón"}, -- ¡CARNE!
	[194] = {"194", "Bola 8 mágica", "↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{Card}} Genera una carta#↑ {{PlanetariumChance}} +15% de probabilidad de planetario"}, -- Magic 8 Ball
	[197] = {"197", "Jugo de Jesús", "↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +1.5"}, -- Jesus Juice
	[203] = {"203", "Paquete modesto", "50% de probabilidad de remplazar los recolectables por sus versiones dobles"}, -- Humbleing Bundle
	[205] = {"205", "Enchufe Afilado", "{{Battery}} Carga el objeto activo a cambio de medio corazón por carga faltante#Solo funciona si el objeto activo no tiene cargas#{{Heart}} Remueve primero los corazones rojos"}, -- Sharp Plug
	[206] = {"206", "Guillotina", "↑ {{Tears}} Lágrimas + 0.5#↑ {{Damage}} Daño +1#Convierte tu cabeza en un orbital#Disparas desde la cabeza#La cabeza inflige 56 de daño por contacto cada segundo"}, -- Guillotine
	[211] = {"211", "Bebé araña", "Genera 3-5 arañas azules al recibir daño"}, -- Spiderbaby
	[214] = {"214", "Anémico", "↑ {{Range}} Alcance +1.5#{{Timer}} Al recibir daño, deja un rastro de fluido en el suelo durante la habitación#El fluido inflige 6 de daño cada segundo"}, -- Anemic
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{HealingRed}} 50% de probabilidad de curar medio corazón cada minuto"}, -- Placenta
	[219] = {"219", "Vendaje Viejo", "↑ {{EmptyHeart}} +1 Contenedor de corazón vacío#{{Heart}} 20% de probabilidad de generar un corazón rojo al recibir daño"}, -- Old Bandage
	[222] = {"222", "Anti-Gravedad", "↑ {{Tears}} Lágrimas +1#Disparar de forma continua suspende las lágrimas en el aire#Soltar el boton de disparo las libera en la dirección que fueron disparadas"}, -- Anti-Gravity
	[223] = {"223", "Piromaníaco", "{{Bomb}} +5 Bombas#Otorga inmunidad a las explosiones y al fuego#{{HealingRed}} Ser golpeado por explosiones cura medio corazón"}, -- Pyromaniac
	[224] = {"224", "Cuerpo de Cricket", "↑ {{Tears}} Lágrimas +0.5#↓ {{Range}} Alcance x0.8#Las lágrimas se dividen en 4 al impactar#Las lágrimas partidas infligen la mitad de daño"}, -- Cricket's Body
	[225] = {"225", "Máscara BDSM", "{{SoulHeart}} 8% de probabilidad de generar un corazón de alma al recibir daño#{{Luck}} 50% de probabilidad con 22 de suerte#{{HalfHeart}} Probabilidad de que los enemigos dejen caer medio corazón rojo al morir"}, -- Gimpy
	[226] = {"226", "Loto Negro", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#↑ {{SoulHeart}} +1 Corazón de alma#↑ {{BlackHeart}} +1 Corazón negro"}, -- Black Lotus
	[228] = {"228", "Perfume de Mamá", "↑ {{Tears}} Lágrimas +0.5#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan a los enemigos"}, -- Mom's Perfume
	[229] = {"229", "Pulmón de Monstro", "↓ {{Tears}} Lágrimas x0.23#{{Chargeable}} Otorga un ataque cargado que escupirá una ráfaga de lágrimas rojas, similar a Monstro"}, -- Monstro's Lung
	[230] = {"230", "Abaddón", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.5#{{BlackHeart}} Convierte los contenedores de corazón en corazones negros#↑ {{BlackHeart}} +2 corazones negros#{{Fear}} 15% de probabilidad de disparar lágrimas que asustan"}, -- Abadón
	[232] = {"232", "Cronómetro", "↑ {{Speed}} Velocidad +0.3#{{Slow}} Ralentiza un 80% a los enemigos de forma permanente"}, -- Cronómetro
	[233] = {"233", "Mini-Planeta", "↑ {{Range}} Alcance +6.5#Lágrimas espectrales#Las lágrimas orbitan a tu alrededor"}, -- Tiny Planet
	[245] = {"245", "20/20", "↓ {{Damage}} Daño x0.8#Disparas 2 lágrimas a la vez"}, -- 20/20
	[248] = {"248", "Mente colmena", "Duplica el daño de las moscas y arañas azules#Aumenta el daño de las moscas y arañas familiares"}, -- Hive Mind
	[253] = {"253", "Costra mágica", "↑ {{Heart}} +1 de Vida#↑ {{Luck}} Suerte +1#{{HealingRed}} Cura 1 corazón"}, -- Magic Scab
	[254] = {"254", "Coágulo", "Otorga para el ojo izquierdo:#↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +1.5"}, -- Blood Clot
	[256] = {"256", "Bombas Ardientes", "{{Bomb}} +5 Bombas#{{Burning}} Tus bombas infligen daño por contacto#{{Burning}} Tus bombas dejan una llama al explotar#{{Burning}} Otorga inmunidad al fuego (excepto proyectiles)"}, -- Hot Bombs
	[261] = {"261", "Proptósis", "↑ {{Damage}} Daño +0.5#↓ {{Damage}} El daño de tus lágrimas disminuirá con la distancia recorrida#Las lágrimas infligen tu daño x3 a quemarropa"}, -- Proptósis
	[262] = {"262", "Página perdida 2", "{{BlackHeart}} +1 corazón negro#Al recibir daño teniendo 1 corazón, inflige daño a todos los enemigos de la sala#{{Collectible35}} Los efectos estilo Necronomicon y los corazones negros infligen el doble de daño"}, -- Missing Page 2
	[263] = {"263", "Runa limpia", "{{Rune}} Genera 1 runa aleatoria al tomarlo#{{Rune}} Copia el efecto de la runa o piedra del alma que tengas sin consumirla"}, -- Runa de claridad
	[264] = {"264", "Mosca Inteligente", "Orbital#Atacará a los enemigos cuando el jugador reciba daño#Inflige 6.5 de daño por contacto cada segundo"}, -- Smart Fly
	[272] = {"272", "Mosca Hermosa", "Mosca explosiva aliada#La explosión inflige 100 de daño#{{Warning}} La explosión puede herir al jugador"}, -- BBF
	[273] = {"273", "Cerebro de Bob", "{{Throwable}} Familiar lanzable#{{Poison}} La explosión inflige 100 de daño y envenena a enemigos#{{Warning}} La explosión puede herir al jugador"}, -- Bob's Brain
	[274] = {"274", "Mejor amigo", "Al recibir daño, genera un orbital de alcance medio durante la sala#Inflige 150 de daño por contacto cada segundo"}, -- Best Bud
	[275] = {"275", "Mini-Azufre", "{{Chargeable}} Familiar que carga y dispara un {{Collectible118}} rayo de sangre#El rayo inflige 24 de daño cada 0.63 segundos"}, -- Lil Brimstone
	[276] = {"276", "Corazón de Isaac", "Te vuelves invulnerable#{{Chargeable}} El familiar carga al disparar, al soltar el botón de disparo, el corazón: #Disparará 8 lágrimas#Soltará Creep rojo#Empujará enemigos y proyectiles#{{Warning}} Recibirás daño si golpéan al familiar corazón"}, -- Isaac's Heart
	[278] = {"278", "Pordiosero oscuro", "{{Heart}} Recoge los corazones rojos cercanos#Tras recoger 1.5 corazones rojos, genera:#{{SoulHeart}}/{{BlackHeart}} 1 Corazón de alma o negro#{{Pill}} Una píldora#{{Card}} Una Carta#{{Rune}} Una runa#o una araña"}, -- Dark Bum
	[280] = {"280", "Sissy patitas-largas", "Invoca arañas azules en habitaciones hostiles de forma aleatoria#{{Charm}} Encanta a los enemigos al contacto"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Duplica 1 recolectable aleatorio en la sala#Cambia tus objetos pasivos y tus estadisticas#Cambia los objetos en pedestales, los recolectables y las rocas en la sala#Reinicia la sala, regenera y degrada a los enemigos de la sala"}, -- D100
	[285] = {"285", "D10", "Degrada a todos los enemigos en la sala#Por ejemplo, las moscas rojas se convierten en moscas negras"}, -- D10
	[286] = {"286", "Carta en blanco", "Copia el efecto de la carta que tengas sin consumirla"}, -- Blank Card
	[287] = {"287", "Libro de secretos", "{{Timer}} Otorga uno de los siguientes efectos para el piso actual:#{{Collectible54}} Mapa del tesoro#{{Collectible21}} La Brújula#{{Collectible246}} Mapa azul#Solo otorga efectos de mapa que no tengas#{{Collectible76}} Si están todos los efectos activos, otorga Visión de rayos X"}, -- Libro de secretos
	[288] = {"288", "Caja de Arañas", "Invoca 4-8 arañas azules"}, -- Caja de arañas
	[289] = {"289", "Vela roja", "Lanza fuego rojo#La llama Inflige daño por contacto y bloquea proyectiles enemigos#Desaparece tras infligir daño o bloquear proyectiles 4 veces o tras 10 segundos"}, -- Red Candle
	[291] = {"291", "¡Flush!", "Convierte a los enemigos comunes en caca#Mata de forma instantánea a enemigos y jefes de caca#Extingue fuegos#Convierte en suelo las fosas de lava"}, -- ¡Flus-flus!
	[292] = {"292", "Biblia Satánica", "{{BlackHeart}} +1 Corazón negro#{{Warning}} Usarlo antes de la pelea contra el jefe reemplaza la recompensa del jefe por un objeto de pacto del diablo#{{AngelChance}} Tomar un objeto de pacto impedirá que aparezcan {{AngelRoom}} Salas del ángel"}, -- Satanic Bible
	[293] = {"293", "Cabeza de Krampus", "{{Collectible118}} Dispara un rayo de sangre en 4 direcciones#Cada rayo inflige 200 de daño cada 1.33 segundos"}, -- Head of Krampus
	[294] = {"294", "Frijol Mantequilla", "Empuja a los enemigos y proyectiles cercanos#Inflige 10 de daño a los enemigos lanzados contra obstáculos"}, -- Butter Bean
	[295] = {"295", "Dedos mágicos", "Inflige el doble de tu daño + 10 a toda la habitación#{{Coin}} Usarlo cuesta 1 moneda"}, -- Magic Fingers
	[296] = {"296", "Conversor", "{{Heart}} Convierte 1 Corazón Negro o de Alma en un Contenedor de corazón"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Caja de Pandora", "{{NoLB}}Genera recompensas en base al piso actual:#B1: 2 {{SoulHeart}}; B2: 2 {{Key}} + {{Bomb}}#C1: 1 objeto {{BossRoom}}; C2: B1+C1#D1: 4 {{SoulHeart}}; D2: 30 {{Coin}}#W1: 2 objetos {{BossRoom}}; W2: {{Collectible33}}#Sheol: 1 objeto {{DevilRoom}} + {{BlackHeart}}; Catedral: 1 objeto {{AngelRoom}} + {{SoulHeart}}#Cofre: 1 {{Coin}}#Casa: {{Collectible580}}"}, -- Pandora's Box
	[300] = {"300", "Aries", "↑ {{Speed}} Velocidad +0.25#Al correr sobre 0.85 de velocidad:#Evita el daño por contacto#Inflige 25 de daño por contacto a los enemigos"}, -- Aries
	[307] = {"307", "Capricornio", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.1#↑ {{Tears}} Lágrimas +0.50#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.75#+1 {{Coin}} moneda, {{Bomb}} bomba y {{Key}} llave#{{HealingRed}} Cura 1 corazón"}, -- Capricorn
	[308] = {"308", "Aquario", "Deja un rastro de fluido#El fluido inflige 66% de tu daño cada segundo#El fluido hace sinergia con los efectos de tus lágrimas"}, -- Aquarius
	[309] = {"309", "Piscis", "↑ {{Tears}} Lágrimas +0.5#↑ {{Tearsize}} Tamaño de lágrimas +0.12#Aumenta el empuje de las lágrimas"}, -- Pisces
	[310] = {"310", "Rímel de Eva", "↑ {{Damage}} Daño x2#↓ {{Tears}} Lágrimas x0.66#↓ {{Shotspeed}} Vel. de lágrimas -0.5"}, -- Eve's Mascara
	[314] = {"314", "Curvas Gruesas", "↑ {{Heart}} +1 de Vida#↓ {{Speed}} Velocidad -0.4#{{HealingRed}} Cura 1 corazón#Permite romper rocas al caminar sobre ellas"}, -- Thunder Thighs
	[315] = {"315", "Atractor extraño", "Lágrimas magnéticas#Las lágrimas atraerán enemigos, recolectables y trinkets#El efecto magnetico es más fuerte al final del trayecto de la lágrima"}, -- Strange Attractor
	[316] = {"316", "Ojo maldito", "{{Chargeable}} Ola cargable de 5 lágrimas#{{Warning}} Recibir daño mientras carga el ataque te teletrasnporta a una habitación aleatoria"}, -- Cursed Eye
	[319] = {"319", "El otro ojo de Caín", "Dispara lágrimas de forma aleatoria que copian los efectos de tus lágrimas#{{Damage}} Inflige el 75% de tu daño"}, -- Cain's Other Eye
	[320] = {"320", "Único amigo de ???", "Mosca controlable#Inflige 15 de daño por contacto cada segundo"}, -- ???'s Only Friend
	[323] = {"323", "Lágrimas de Isaac", "Dispara 8 lágrimas en todas direcciones#Las lágrimas imitan los efectos del jugador#↑ {{Damage}} Las lágrimas infligen tu daño +5#Se recarga al disparar lágrimas"}, -- Isaac's Tears
	[325] = {"325", "Tijeras", "{{Timer}} Convierte tu cabeza en una torreta por la habitación#El cuerpo se controla por separado y suelta lágrimas sangrientas en la dirección de disparo"}, -- Scissors
	[326] = {"326", "Respiración de vida", "Mantener pulsado el botón {{ButtonLT}} vaciará la barra de carga#El jugador será invencible al vaciar toda la barra#Al ser invencible, caerán rayos de luz sobre los enemigos que te toquen#Bloquear daño a la perfección, disparará un rayo sagrado en cruz#{{Warning}} Mantenerlo activo por mucho tiempo dañará al jugador"}, -- Respiración de vida
	[328] = {"328", "El negativo", "↑ {{Damage}} Daño +1#Al recibir daño teniendo medio o ningun corazón rojo:#Inflige 40 de daño a todos los enemigos en la habitación"}, -- El negativo
	[330] = {"330", "Leche de Soya", "↑ {{Tears}} Lágrimas x5.5#↓ {{Damage}} Daño x0.2%#↓ {{Tearsize}} Tamaño de lágrimas -0.3#Reduce el empuje de forma drástica"}, -- Soy Milk
	[331] = {"331", "Deidad", "↑ {{Damage}} Daño +0.5#↓ {{Tears}} Lágrimas -0.3#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Lágrimas teledirigidas#Las lágrimas obtienen un aura que inflige 60 de daño cada segundo"}, -- Deidad
	[336] = {"336", "Cebolla muerta", "↑ {{Tearsize}} Tamaño de lágrimas +0.22#↓ {{Range}} Alcance -1.5#↓ {{Shotspeed}} Vel. de lágrimas -0.4#Otorga lágrimas perforantes y espectrales"}, -- Dead Onion
	[339] = {"339", "El Gancho", "↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{BlackHeart}} +1 Corazón negro"}, -- El gancho
	[342] = {"342", "Hongo azul", "↑ {{Heart}} +1 de Vida#↑ {{Tears}} Lágrimas +0.7#↓ {{Shotspeed}} Vel. de lágrimas -0.16#{{HealingRed}} Cura 1 corazón"}, -- Blue Cap
	[344] = {"344", "Caja de Fósforos", "{{BlackHeart}} +1 Corazón negro#{{Bomb}} Genera 2-3 bombas#Genera el trinket {{Trinket41}} Cerilla "}, -- Match Book
	[345] = {"345", "Synthol", "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +2.5"}, -- Synthoil
	[346] = {"346", "Un Bocadillo", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- A Snack
	[349] = {"349", "Moneda de Madera", "{{Coin}} 59% de probabilidad de generar una moneda aleatoria"}, -- Wooden Nickel
	[352] = {"352", "Cañón de vidrio", "Dispara una gran lágrima espectral y perforante que inflige 10 veces tu daño#{{Warning}} Al recibir daño:#↓ Remueve dos corazones extra#El cañón se rompe y debe volver a cargarse#↑ {{Range}} Alcance +1.5 + un rastro de sangre por la habitación#El daño autoinfligido no activa el efecto"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{Trinket}} Genera un trinket aleatorio"}, -- Crack Jacks
	[355] = {"355", "Perlas de Mamá", "↑ {{Range}} Alcance +2.5#↑ {{Luck}} Suerte +1#{{SoulHeart}} +1 Corazón de alma"}, -- Mom's Pearls
	[360] = {"360", "Íncubo", "Familiar demoníaco#Dispara lágrimas que copian tus efectos#{{Damage}} Inflige el 75% de tu daño"}, -- Incubus
	[365] = {"365", "Mosca perdida", "Mosca que se mueve por las paredes y obstáculos de la habitación#Inflige 30 de daño por contacto cada segundo#Los enemigos cercanos irán hacia ella"}, -- Lost Fly
	[366] = {"366", "Bombas de dispersión", "{{Bomb}} +5 Bombas#Hace que las bombas se dividan en 4-5 bombas pequeñas al explotar"}, -- Scatter Bombs
	[367] = {"367", "Bombas Pegajosas", "{{Bomb}} +5 Bombas#{{Slow}} Tus bombas se adhieren a los enemigos#Las bombas generan arañas azules al matar a un enemigo"}, -- Sticky Bombs
	[368] = {"368", "Epífora", "↑ {{Tears}} Disparar en una única dirección aumenta la cadencia de disparo hasta un 200%"}, -- Epiphora
	[369] = {"369", "Continuo", "↑ {{Range}} Alcance +3#lágrimas espectrales#Las lágrimas pueden atravesar las paredes y aparecer del lado contrario"}, -- Continuum
	[370] = {"370", "Sr. Muñeca", "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +2.5#{{UnknownHeart}} Genera 3 corazones aleatorios"}, -- Mr. Dolly
	[374] = {"374", "Luz sagrada", "10% de probabilidad de disparar una lágrima sagrada#{{Luck}} 50% de probabilidad con 9 de suerte#Esta lágrima dejará caer un rayo de luz sobre un enemigo#{{Damage}}El rayo inflige tres veces tu daño"}, -- Holy Light
	[375] = {"375", "Sombrero de Host", "Otorga inmunidad a las explosiones y projectiles que caigan desde arriba#25% de probabilidad de reflejar lágrimas"}, -- Host hat
	[376] = {"376", "Reabastecimiento", "Las tiendas reponen los objetos que compres de forma instantánea#Aumenta el precio de los objetos repuestos"}, -- Restock
	[380] = {"380", "Pay To Play", "{{Coin}} +5 monedas#Las puertas, cofres y bloques con cerraduras deberán abrirse con monedas en lugar de llaves"}, -- Pay To Play
	[382] = {"382", "Bola amiga", "Lanza una bola a los enemigos para capturarlos#Volver a usarlo invocará al enemigo como aliado#Pasar por encima de la bola después de la captura recargará instantáneamente el objeto"}, -- Friendly Ball
	[384] = {"384", "Pequeño Gurdy", "{{Chargeable}} Familiar lanzable que rebota por la habitación#La velocidad depende del tiempo de carga#Inflige 5-20 de daño por contacto dependiendo de su velocidad"}, -- Lil Gurdy
	[386] = {"386", "D12", "Cambia los obstaculos de la sala por otros obstaculos aleatorios (e.j. caca, TNT, espinas, piedras, etc.)#Pequeña probabilidad de cambiar obstaculos por botones, killswitches, mazmorras o trampillas"}, -- D12
	[389] = {"389", "Bolsa de Runas", "{{Rune}} Genera una runa o piedra de alma aleatoria cada 7-8 habitaciones"}, -- Rune Bag
	[391] = {"391", "Traición", "Los enemigos podrán herirse entre sí, empezando a pelear entre ellos"}, -- Betrayal
	[393] = {"393", "Beso de Serpiente", "{{Poison}} 15% de probabilidad de disparar lágrimas venenosas#{{Poison}} Envenena a los enemigos al contacto#{{BlackHeart}} Los enemigos envenenados por contacto pueden soltar un corazón negro al morir"}, -- Serpent's Kiss
	[394] = {"394", "En la Mira", "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +3#Dispara lágrimas automáticamente hacia la cruz roja controlable del suelo#Los familiares disparan hacia la cruz#Puedes dejar de disparar presionando el boton de soltar ({{ButtonRT}})"}, -- Marked
	[395] = {"395", "Tech X", "{{Chargeable}} Reemplaza tus lágrimas por un anillo láser cargable#El tamaño del anillo aumenta hasta 100% con el tiempo de carga"}, -- Tech X
	[397] = {"397", "Rayo tractor", "↑ {{Tears}} Lágrimas +1#↑ {{Range}} Alcance +2.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#Las lágrimas viajan siguiendo un rayo de luz enfrente del jugador"}, -- Tractor Beam
	[399] = {"399", "Fauces del Vacío", "{{Chargeable}} Disparar por 2.35 segundos y soltar el boton crea un laser negro a tu alrededor#El aro inflige 30 veces tu daño cada 2 segundos"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% de probabilidad de disparar lágrimas pegajosas#Las lágrimas pegadas crecen y explotan, infligiendo tu daño +60 al detonar"}, -- Explosivo
	[404] = {"404", "Bebé Tira-Pedos", "Bloquea proyectiles#Al bloquear un proyectil: 10% de probabilidad de tirarse un pedo y {{Charm}} encantar, {{Poison}} envenenar o empujar a los enemigos cercanos#Los pedos infligen 5-6 de daño"}, -- Farting Baby
	[405] = {"405", "Error crítico", "{{Throwable}} Lanzable#Cambia los enemigos y recolectables que toca"}, -- GB Bug
	[407] = {"407", "Pureza", "↑ Potencia una estadística dependiendo del color del aura#Al recibir daño, remueve el efecto y otorga un aura nueva en la siguiente sala#{{ColorYellow}}Amarillo{{CR}} = {{Speed}} Velocidad +0.5#{{ColorBlue}}Azul{{CR}} = {{Tears}} Lágrimas +2#{{ColorRed}}Rojo{{CR}} = {{Damage}} Daño +4#{{ColorOrange}}Naranja{{CR}} = {{Range}} Alcance +3"}, -- Purity
	[408] = {"408", "Athame", "25% de probabilidad de crear un anillo negro alrededor de un enemigo al matarlo#Inflige 30 veces tu daño cada 2 segundos#{{Luck}} +2.5% de probabilidad por punto de suerte"}, -- Athame
	[415] = {"415", "Corona de la luz", "{{SoulHeart}} +2 Corazones de alma#Al tener la salud al maximo, recibirás:#↑ {{Damage}} Daño x2#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Recibir daño remueve el efecto"}, -- Crown Of Light
	[416] = {"416", "Bolsillos profundos", "{{Coin}} Aumenta el limite de monedas a 999#{{Coin}} Genera 1-3 monedas si no se ha generado una recompensa de habitación"}, -- Deep Pockets
	[417] = {"417", "Súcubo", "Familiar que rebota por la habitación rodeado de un aura#El aura inflige 7.5-10 de daño cada segundo a los enemigos#↑ {{Damage}} Daño x1.5l al quedarse dentro del aura"}, -- Succubus
	[419] = {"419", "Teletransporte 2.0", "Te teletransporta a una habitación sin explorar#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teletransporte 2.0
	[421] = {"421", "Frijol Rojo", "{{Charm}} Encanta a los enemigos cercanos"}, -- Frijol Rojo
	[422] = {"422", "Reloj de Arena brillante", "Regresa al jugador a la sala anterior y revierte todas las acciones en la habitación actual#El efecto se puede usar hasta 3 veces por piso#{{Collectible66}} Tras agotar sus usos, se convertirá en El Reloj de Arena, ralentizando a los enemigos por 8 segundos"}, -- Glowing Hourglass
	[426] = {"426", "Fan obsesionado", "Familiar que sigue tus movimientos con 0.66 segundos de retraso#Inflige 30 de daño por contacto cada segundo"}, -- Obsessed Fan
	[430] = {"430", "Mosca Papá", "Familiar que sigue tus movimientos con 0.66 segundos de retraso#{{Damage}} Dispara lágrimas que infligen tu daño a enemigos cercanos"}, -- Papa Fly
	[431] = {"431", "Bebé multidimensional", "Sigue tus movimientos con 0.66 segundos de retraso#Las lágrimas que lo traspasen se dividen y ganan una mejora de alcance y velocidad"}, -- Multidimensional Baby
	[432] = {"432", "Bombas Brillantes", "{{Bomb}} +5 Bombas#Las bombas tienen un 63% de probabilidad de generar un recolectable al explotar#La probabilidad se reduce en 1% por cada recolectable generado en el piso#{{Charm}} Las bombas tienen un 15% de probabilidad de encantar a los enemigos al explotar"}, -- Glitter Bombs
	[433] = {"433", "Mi sombra", "Una pequeña sombra seguirá al jugador#{{Timer}} Se creará un Charger oscuro por sala cuando un enemigo toque la sombra#El Charger inflige 8.7 de daño por contacto"}, -- My Shadow
	[437] = {"437", "D7", "Reinicia la habitación y vuelve a generar los enemigos#Permite obtener multiples recompensas de la misma habitación"}, -- D7
	[440] = {"440", "Piedra de Riñón", "Ocasionalmente dejas de disparar para cargar una rafaga de lágrimas y una piedra del riñón"}, -- Kidney Stone
	[442] = {"442", "Corona del Príncipe Oscuro", "Otorga al tener un corazón rojo lleno:#↑ {{Tears}} Lágrimas +2#↑ {{Range}} Alcance +1.5#↑ Vel. de disparo +0.2"}, -- Dark Prince's Crown
	[444] = {"444", "Lápiz", "Dispara un cúmulo de lágrimas cada 15 lágrimas "}, -- Lead Pencil
	[448] = {"448", "Pedazo de vidrio", "Al recibir daño:#{{Heart}} 25% de probabilidad de generar un corazón rojo#{{BleedingOut}} Te desangras, soltando lágrimas en la dirección de tus disparos#El sangrado inflige medio corazón de daño cada 20 segundos#El sangrado se detiene si:#Recoges un Corazón Rojo#Todos los corazones rojos estan vacios#O si el proximo daño te mataria"}, -- Shard of Glass
	[450] = {"450", "Ojo de Codicia", "{{Damage}} Cada 20 lágrimas, disparas una lágrima moneda que inflige 1.5 veces tu daño +10#Los enemigos golpeados se volverán estatuas de oro#{{Coin}} Las estatuas de oro sueltan 1-3 monedas al morir#{{Warning}} Disparar lágrimas moneda cuesta una moneda"}, -- Eye of Greed
	[451] = {"451", "Tela de Tarot", "{{Card}} Genera una carta aleatoria#{{Card}} Potencia o duplica los efectos de las cartas del tarot"}, -- Tarot Cloth
	[453] = {"453", "Fractura Compuesta", "↑ {{Range}} Alcance +1.5#Las lágrimas se separan en 1-3 fragmentos de hueso al impactar"}, -- Compound Fracture
	[455] = {"455", "Moneda perdida de Papá", "↑ {{Range}} Alcance +2.5#{{Luck}} Genera una moneda de la suerte"}, -- Dad's Lost Coin
	[456] = {"456", "Bocadillo nocturno", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Bocadillo nocturno
	[459] = {"459", "Infección sinusal", "20% de probabilidad de disparar lágrimas de moco#{{Damage}} Los mocos se pegan al enemigo durante 10 segundos e infligen tu daño cada segundo#{{Luck}} La probabilidad no cambia con la suerte"}, -- Sinus Infection
	[462] = {"462", "Ojo de Belial", "↑ {{Range}} Alcance +1.5#Lágrimas penetrantes#Tras golpear un enemigo, las lágrimas infligen el doble de daño y se vuelven teledirigidas"}, -- Eye of Belial
	[464] = {"464", "Glifo del equilibrio", "{{SoulHeart}} +2 corazones de alma#Los enemigos campeones y las habitaciones generarán los recolectables que más necesites"}, -- Glyph of Balance
	[468] = {"468", "Sombra", "Sigue tus movimientos con 0.66 segundos de retraso#Inflige 75 de daño por contacto cada segundo#Absorbes la sombra tras infligir 666 puntos de daño, aumentando tu daño por contacto"}, -- Shade
	[472] = {"472", "Rey bebé", "Hace que lo sigan otros familiares y dispara automaticamente a los enemigos#Se detiene cuando disparas#Se teletransporta hacia ti cuando dejas de disparar"}, -- Rey bebé
	[474] = {"474", "Cañón de cristal roto", "{{Collectible352}} Se convierte en el Cañón de cristal al usarlo"}, -- Cañón de cristal roto
	[476] = {"476", "D1", "Duplica un recolectable aleatorio en la habitación actual#La copia puede no ser idéntica al original"}, -- D1
	[477] = {"477", "Vacío", "Consume los objetos en pedestales de la habitación#Objeto activo: Se añade el efecto al de Vacío(Apilando los efectos)#↑ Objeto pasivo: Pequeña mejora aleatoria"}, -- Void
	[487] = {"487", "Pelador de Papas", "{{EmptyHeart}} Elimina un contenedor de corazón, a cambio, otorga:#↑ {{Damage}} Daño +0.2 de daño#{{Collectible73}} Un Cubo de carne#{{Timer}} Recibes por la habitación:#↑ {{Range}} Alcance +1.5#{{Collectible214}} Dejas un rastro de fluido rojo"}, -- Potato Peeler
	[489] = {"489", "D infinito", "Pulsa la tecla {{ButtonRT}} para cambiar entre una variedad de distintos dados#El único dado al que no se tiene acceso es al {{Collectible723}} Dado Reductor"}, -- D infinito
	[491] = {"491", "Bebé ácido", "{{Pill}} Genera una píldora aleatoria cada 7 habitaciones#{{Poison}} Usar una píldora envenena a los enemigos en la habitación"}, -- Acid Baby
	[493] = {"493", "Adrenalina", "↑ {{Damage}} Aumenta el daño por cada contenedor de corazón vacío#Al tener menos salud, el aumento de daño será mayór"}, -- Adrenaline
	[494] = {"494", "Escalera de Jacob", "Las lágrimas generan un rayo eléctrico al impactar#Los rayos infligen la mitad de tu daño#Los rayos saltan entre enemigos"}, -- Jacob's Ladder
	[495] = {"495", "Pimiento fantasma", "8% de probabilidad de disparar un fuego azul que inflige daño y bloquea proyectiles#{{Luck}} 50% de probabilidad con 10 de suerte#El fuego se encoje hasta desaparecer tras 2 segundos"}, -- Ghost Pepper
	[496] = {"496", "Eutanasia", "3.33% de probabilidad de disparar agujas#{{Luck}} 25% de probabilidad con 13 de suerte#Las agujas matan a los enemigos normales de un golpe, disparando otras 10 agujas#Infligen el triple de tu daño contra jefes"}, -- Euthanasia
	[497] = {"497", "Interior Camuflado", "{{Confusion}} Al entrar a una habitación te camufla y confunde a los enemigos hasta que dispares#↑ {{Speed}} Velocidad +0.5 al estar camuflado#Al descamuflarse: #Inflige daño a enemigos cercanos#{{Timer}} Aumenta temporalmente las lágrimas y el daño por la sala"}, -- Camo Undies
	[500] = {"500", "Bolsa de Bolsas", "Genera un saco cada 7-8 salas"}, -- Sack of Sacks
	[501] = {"501", "Esófago de Codicia", "{{Heart}} Otorga 1 contenedor de corazón por cada 25 monedas que tengas"}, -- Greed's Gullet
	[503] = {"503", "Cuernito", "5% de probabilidad de disparar una lágrima que invoca una mano de Big Horn#{{Luck}} 20% de probabilidad con 15 de suerte#La mano mata al instante a enemigos normales e inflige 3.5 de daño a los jefes#Infliges 7 de daño por contacto cada segundo"}, -- Little Horn
	[504] = {"504", "Nugget café", "Genera una mosca torreta que dispara a los enemigos#Inflige 3.5 de daño por disparo"}, -- Brown Nugget
	[506] = {"506", "Apuñala espaldas", "{{BleedingOut}} Golpear a un enemigo por detrás inflige el doble de daño y causa sangrado#Los enemigos que sangren dejarán un rastro de fluido y recibiran daño al moverse"}, -- Backstabber
	[507] = {"507", "Pajilla afilada", "Inflige tu daño + 10% de la vida máxima del enemigo a todos los enemigos de la sala#{{HalfHeart}} Probabilidad de generar medio corazón al infligir daño"}, -- Sharp Straw
	[508] = {"508", "Afeitadora de Mamá", "{{BleedingOut}} Orbital que causa sangrado#Los enemigos que sangren dejarán un rastro de fluido rojo y tomaran daño al moverse#{{Damage}} Inflige 1.5 veces tu daño cada segundo",},
	[509] = {"509", "Ojo Dispara-lágrimas", "Orbital que dispara una lágrima cada 0.33 segundos a los enemigos cercanos#Inflige 3.5 de daño#Inflige 30 de daño por contacto cada segundo"}, -- Bloodshot Eye
	[514] = {"514", "Modem Roto", "Probabilidad de congelar momentaneamente a enemigos y proyectiles#Los proyectiles enemigos congelados seran removidos#25% de probabilidad de duplicar las recompensas de sala"}, -- Broken Modem
	[517] = {"517", "Bombas Rápidas", "{{Bomb}} +5 Bombas#Permite colocar bombas muy rápido#Las bombas no se empujarán entre sí"}, -- Fast Bombs
	[522] = {"522", "Telequinesia", "Detiene los proyectiles cercanos durante 3 segundos y los lanza lejos#Empuja hacia afuera a los enemigos cercanos durante el efecto"}, -- Telekinesis
	[523] = {"523", "Caja de mudanza", "Permite almacenar hasta 10 recolectables y objetos en la habitación#Permite mover cosas entre habitaciones#Volver a usarlo los suelta en la habitación actual"}, -- Moving Box
	[524] = {"524", "Tecnología Cero", "Conecta tus lágrimas con rayos de electricidad#Los rayos infligen 4.5 veces tu daño por segundo"}, -- Technology Zero
	[531] = {"531", "Hemolacria", "↑ {{Damage}} Daño +1#↑ {{Damage}} Daño x1.5#↓ {{Tears}} Lágrimas x0.33#↓ {{Range}} Alcance x0.8#Las lágrimas salen en forma de arco#Al impactar, explotan en lágrimas más pequeñas"}, -- Haemolacria
	[543] = {"543", "Suelo Santificado", "Al recibir daño, genera una caca blanca con un aura que otorga:#↑ {{Tears}} Lágrimas x2.5#↑ {{Damage}} Daño x1.2%#Lágrimas teledirigidas#50% de probabilidad de ignorar el daño recibido"}, -- Hallowed Ground
	[549] = {"549", "Huesos frágiles", "{{EmptyBoneHeart}} Reemplaza todos tus contenedores de corazón por 6 corazones de hueso#Al perder un corazón de hueso:#↑ {{Tears}} Lágrimas +0.4#Dispara 8 lágrimas de hueso a tu alrededor"}, -- Brittle Bones
	[552] = {"552", "Pala de Mamá", "Genera una trampilla para saltar el piso#{{LadderRoom}} Genera una trampilla a una mazmorra al usarla sobre la decoración del suelo#Úsala en el montón de tierra en  \"Cuarto Oscuro\"#"}, -- Pala de Mamá
	[553] = {"553", "Mucormicosis", "25% de probabilidad de disparar esporas pegajosas#Las esporas explotan tras 2.5 segundos, infligiendo daño, envenenando a enemigos cercanos y soltando más esporas"}, --  Mucormycosis
	[554] = {"554", "Tengo miedo", "{{Fear}} Asusta a los enemigos en un corto radio a tu alrededor"}, -- 2Spooky
	[555] = {"555", "Cuchilla dorada", "{{Coin}} A cambio de 5 monedas, otorga en la habitación actual:#↑ {{Damage}} Daño +1.2"}, -- Golden Razor
	[556] = {"556", "Sulfuro", "{{Collectible118}} Activa el efecto de Azufre en la habitación actual#Usarlo repetidas veces incrementa el daño y el tamaño del rayo"}, -- Sulfur
	[557] = {"557", "Galleta de la suerte", "Puede generar: #Una fortuna #{{SoulHeart}} Un Corazón de Alma#{{Rune}} Una Runa o Piedra de alma{{Card}} Una Carta#{{Trinket}} Un Trinket"}, -- Fortune Cookie
	[558] = {"558", "Dolor de ojo", "Probabilidad de disparar 1-3 lágrimas adicionales en direcciones aleatorias"}, -- Eye Sore
	[559] = {"559", "120 voltios", "Da descargas de energía a los enemigos cercanos#{{Damage}} La electricidad inflige 3.75 veces tu daño cada segundo#Los rayos pueden saltar entre enemigos"}, -- 120 Volt
	[560] = {"560", "Duele...", "{{Timer}} Tras ser golpeado, otorga por la habitación:#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional#Libera un círculo de 10 lágrimas a tu alrededor"}, -- It Hurts
	[561] = {"561", "Leche de almendras", "↑ {{Tears}} Lágrimas x4#↓ {{Damage}} Daño x0.3#↓ {{Tearsize}} Tamaño de lágrima -0.16#{{Trinket64}} Las lágrimas ganan los efectos aleatorios de los trinkets de gusano"}, -- Almond Milk
	[562] = {"562", "Fondo rocoso", "↑ Evita que tus estadísticas bajen durante el resto de la partida"}, -- Rock Bottom
	[563] = {"563", "Nancy Bombas", "{{Bomb}} +5 Bombas#Las bombas explotan con un efecto de bomba aleatorio"}, -- Bombas guays
	[564] = {"564", "Pastilla de jabón", "↑ {{Tears}} Lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2"}, -- Pastilla de jabón
	[565] = {"565", "Cachorro sangriento", "Familiar que persigue a los enemigos#{{HalfHeart}} Genera medio corazón rojo tras matar 10 enemigos#Tras matar 15 enemigos, se vuelve más poderoso e intentará atacarte#Atacarle lo regresa a su estado normal"}, -- Blood Puppy
	[566] = {"566", "Atrapasueños", "{{HalfSoulHeart}} Medio corazón de alma al entrar a un nuevo piso#Durante la transición entre pisos, la pesadilla de Isaac muestra el objeto de la habitación del tesoro y al jefe del piso"}, -- Atrapasueños
	[567] = {"567", "Cirio pascual", "↑ {{Tears}} Limpiar una habitación sin recibir daño otorga Lágrimas +0.4#Limite de Lágrimas +2 {{ColorSilver}}(5 habitaciones){{CR}}#Recibir daño remueve las bonificaciónes"}, -- Paschal Candle
	[568] = {"568", "Intervención divina", "Tocar dos veces la tecla de disparo crea un escudo#El escudo dura un segundo, aleja a los enemigos, refleja proyectiles y láseres enemigos"}, --  Divine Intervention
	[569] = {"569", "Juramento de sangre", "{{Warning}} Drena todos tus corazones al inicio del piso#Incrementa la velocidad y el daño durante todo el piso por cada corazón perdido#Cada medio corazón perdido cuenta para los efectos activados por daño"}, -- Blood Oath
	[570] = {"570", "Galleta de plastilina", "Cada lágrima individual tendrá un color y efecto aleatorios"}, -- Playdough Cookie
	[571] = {"571", "Calcetines de huérfano", "↑ {{Speed}} Velocidad +0.3#{{SoulHeart}} +2 corazones de alma#Otorga inmunidad a los fluidos y a las espinas del suelo"}, -- Orphan Socks
	[572] = {"572", "El ojo de lo oculto", "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +7.5#↓ {{Shotspeed}} Vel. de lágrimas -0.16#Permite controlar la dirección de tus lágrimas"}, -- Eye of the Occult
	[573] = {"573", "Corazón inmaculado", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño x1.2#{{HealingRed}} Salud al maximo#20% de probabilidad de disparar una lágrima extra que es orbital y espectral"}, -- Immaculate Heart
	[574] = {"574", "Ostensorio", "Gana dos auras circulares que dañan a los enemigos#El aura interna inflige más daño"}, --  Ostensorio
	[575] = {"575", "El intruso", "Un familiar arácnido dentro de tu cabeza#{{Slow}} Dispara 4 lágrimas ralentizantes#Al recibir daño, la araña saldrá de tu cabeza y perseguirá a los enemigos"}, -- The Intruder
	[576] = {"576", "Mente sucia", "Destruir cacas genera 1-4 caquitas amistosas#El tipo de las caquitas dependerá de la caca de origen#Reemplaza algunas rocas con caca"}, -- Dirty Mind
	[577] = {"577", "Damocles", "Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#No duplica los objetos que tengan precio o provengan de cofres#{{Warning}} Tras recibir daño, probabilidad baja de que la espada te mate en un momento aleatorio"}, -- Damocles
	[578] = {"578", "Limonada gratis", "Crea una gran piscina de limonada#La limonada inflige 24 de daño cada segundo"}, -- Free Lemonade
	[579] = {"579", "Espada espiritual", "En lugar de lágrimas, tienes una espada#{{Damage}} Inflige 3 veces tu daño +3.5#{{Chargeable}} Tiene un ataque en giro + disparo de proyectil al cargarla#{{Heart}} Si tienes la vida al completo, dispara proyectiles con los ataques sin cargar"}, -- Espada espiritual
	[580] = {"580", "Llave roja", "Crea una nueva habitación adyacente a una pared disponible, indicada por el contorno de una puerta#Las habitaciónes rojas pueden ser habitaciones especiales#Entrar en una habitación fuera del límite del mapa (13 x 13 habitaciones) te enviará a la habitación I AM ERROR."}, -- Llave roja
	[581] = {"581", "Mosca psíquica", "Persigue y desvía proyectiles enemigos#Inflige 15 de daño por contacto cada segundo"}, -- Psy Fly
	[582] = {"582", "Seta ondulada", "↑ {{Shotspeed}} Vel. de lágrimas +0.75#↓ {{Speed}} Velocidad -0.03#Distorsiona la pantalla#Efecto acumulable#Limpiar o abandonar salas reduce los efectos"}, -- Wavy Cap
	[583] = {"583", "Cohete en un jarro", "{{Bomb}} +5 Bombas#Colocar una bomba al disparar lanzará un cohete a la dirección donde dispares"}, -- Cohete en un jarro
	[584] = {"584", "El libro de las virtudes", "{{AngelChance}} +12.5% de probabilidad de encontrar salas de Ángel al tenerlo#Invoca un fuego orbital que dispara lágrimas espectrales que puede destruirse#Puede combinarse con un segundo objeto activo para crear fuegos especiales#{{AngelRoom}} Cambia la primer sala del Diablo por una de Ángel#{{AngelRoom}} Las salas del Ángel aún se podran generar tras tomar un objeto de pacto del Diablo"}, -- Book of Virtues
	[585] = {"585", "Caja de alabastro", "{{SoulHeart}} Se carga al recoger corazones de alma#Genera: #{{SoulHeart}} 3 Corazones de alma#{{AngelRoom}} Dos objetos aleatorios de la Sala del Ángel"}, -- Alabaster Box
	[586] = {"586", "La escalerilla", "Genera una escalera al inicio de cada piso#{{AngelRoom}} La escalera lleva a una tienda del ángel"}, -- Escalera de mano
	[587] = {"587", "", "<Este objeto no existe>"}, -- Menorah (Cut item)
	[588] = {"588", "Sol", "{{BossRoom}} Revela el lugar de la sala del jefe #Tras derrotar al jefe:#Activa la carta {{Card20}} El Sol#Recarga el objeto activo#Otorga lo siguiente para el resto del piso:↑{{Damage}} Daño +3#↑ {{Luck}} Suerte +1"}, -- Sol
	[589] = {"589", "Luna", "Agrega una {{SecretRoom}} habitación secreta y una {{SuperSecretRoom}} súper secreta adicional a cada piso#Las habitaciones secretas contienen un rayo de luz que al tocarlo otorga lo siguiente: #↑ {{Tears}} Lágrimas +1 al tocar el primer rayo#↑ {{Tears}} Lágrimas +0.5 al tocar los siguientes rayos#{{HalfSoulHeart}} Medio Corazón de alma"}, -- Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} Velocidad +0.4#La mayoría de puertas se mantendrán abiertas permanentemente"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{Charm}} Encanta a los enemigos cercanos"}, -- Venus
	[592] = {"592", "Terra", "↑ {{Damage}} Daño +1#Reemplaza tus lágrimas por rocas#Infligen daño variable#Pueden destruir obstáculos#Aumenta el empuje"}, -- Terra
	[593] = {"593", "Mars", "Embiste al pulsar dos veces la tecla de movimiento#Al embestir: te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño +8#{{Timer}} 3 segundos de recarga"}, -- Mars
	[594] = {"594", "Júpiter", "{{EmptyHeart}} +2 contenedores de corazón#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura medio corazón#↑ {{Speed}} Bonus de velocidad +0.5 al quedarse quieto#{{Poison}} Suelta una nube de veneno al moverse otra vez#{{Poison}} Otorga inmunidad al veneno"}, -- Jupiter
	[595] = {"595", "Saturnus", "Al entrar en una habitación, 7 lágrimas orbitarán a tu alrededor#Estas lágrimas duran 13 segundos e infligen 1.5 veces tu daño +5#Probabilidad de atrapar proyectiles enemigos en la órbita"}, -- Saturnus
	[596] = {"596", "Uranus", "Otorga lágrimas de hielo que:#{{Slow}} Ralentizan a los enemigos#{{Freezing}} Congela a los enemigos al matarlos#Empujar enemigos congelados hará que se deslicen y exploten en 10 trozos de hielo"}, -- Uranus
	[597] = {"597", "Neptunus", "{{Chargeable}} Cargable (Automático)#Al no disparar, se empezará a cargar un ataque#Disparar hará que sueltes una ráfaga de lágrimas hasta que dispares a tu cadencia regular#Dejar de disparar recargará el ataque"}, -- Neptuno
	[598] = {"598", "Pluto", "↑ {{Tears}} Lágrimas +0.7#Encoge mucho a Isaac, permitiendo que pase entre objetos#Los proyectiles puede pasarte por encima"}, -- Pluto
	[599] = {"599", "Cabeza de Vudú", "{{CursedRoom}} Genera una habitación maldita adicional en cada piso#{{CursedRoom}} Se generan mejores salas malditas#{{Coin}} Genera una moneda en cada habitación maldita"}, -- Voodoo Head
	[600] = {"600", "Gotas Para Ojos", "↑ {{Tears}} Lágrimas x1.4 para el ojo izquierdo"}, -- Eye Drops
	[601] = {"601", "Acto de Contrición", "↑ {{Tears}} Lágrimas +0.7#{{EternalHeart}} +1 corazón eterno#{{AngelDevilChance}} Permite que aparezcan salas del ángel, aún tras hacer pactos con el diablo"}, -- Act of Contrition
	[602] = {"602", "Tarjeta de Socio", "{{Shop}} Añade una trampilla en cada tienda que permite acceder a una segunda tienda con artículos únicos"}, -- Tarjeta de socio
	[603] = {"603", "Conjunto de Baterías", "{{Battery}} Genera 2-4 baterías#{{Battery}} Recarga tu objeto activo por completo"}, -- Battery Pack
	[604] = {"604", "Pulsera de Mamá", "Permite levantar y lanzar piedras, TNT, cacas, Hosts (enemigo calavera), y otros obstáculos#Permite moverlos entre habitaciones"}, -- Pulsera de mamá
	[605] = {"605", "Cuchara de Helado", "↑ {{Damage}} Daño x1.35 para el ojo derecho#{{Timer}} Invoca un familiar {{Collectible155}} Fisgón en la habitación actual#El Fisgón inflige 36 de daño por contacto cada segundo y deja un rastro de fluido"}, -- The Scooper
	[606] = {"606", "Grieta Ocular", "5% de probabilidad de disparar lágrimas que crean grietas donde caen#{{Luck}} 20% de probabilidad con 15 de suerte#Infligen 3 veces tu daño cada segundo#Atraen enemigos cercanos, recolectables y proyectiles"}, -- Ocular Rift
	[607] = {"607", "Bebé Hervido", "Familiar que dispara grupos de lágrimas de manera caótica#Inflige 3.5 o 5.25 de daño por lágrima"}, -- Boiled Baby
	[608] = {"608", "Bebé Congelado", "Dispara lágrimas congelantes que infligen 3.5 de daño#{{Freezing}} Congela a los enemigos al matarlos"}, -- Freezer Baby
	[609] = {"609", "D6 Eterno", "Cambia todos los objetos de la habitación#25% de probabilidad de eliminar los objetos"}, -- Eternal D6
	[610] = {"610", "Pecho de Ave", "Familiar que ataca al primer enemigo que te golpée#Lanza una ola de rocas#Después persigue a los enemigos infligiendo 6.5 de daño por contacto cada segundo"}, -- Bird Cage
	[611] = {"611", "Laringe", "Te hace gritar, dañando y alejando a los enemigos cercanos#Cuantas más cargas tenga el objeto, más potente será el grito"}, -- Laringe
	[612] = {"612", "Alma Perdida", "Familiar de alma que muere de un golpe y reaparece al inicio de la siguiente planta#Si sobrevive toda la planta, puede generar:#{{SoulHeart}} 3 corazones de alma#{{EternalHeart}}2 corazones eternos#{{TreasureRoom}} Un objeto de sala de tesoro#{{AngelRoom}} Un objeto de sala de ángel"}, -- Lost Soul
	[613] = {"613", "", "<Este objeto no existe>"}, -- Salt Shaker (Cut item)
	[614] = {"614", "Bombas de Sangre", "{{Heart}} +1 de Vida#{{HealingRed}} Cura 4 corazones#{{HalfHeart}} Si no tienes bombas, puedes poner una a cambio de medio corazón#Las bombas dejan fluido rojo"}, -- Bombas de sangre
	[615] = {"615", "Mini-Dumpy", "Familiar Dumpy que sigue al jugador#Refleja un proyectil o enemigo que pueda golpear al jugador#Probabilidad de reflejar proyectiles cerca de él#Tras reflejar un projectil, necesita ser tocado para volver a activarse"}, -- Lil Dumpy
	[616] = {"616", "Ojo de Pájaro", "8% de probabilidad de disparar fuegos que bloquean proyectiles enemigos e infligen daño por contacto#{{Luck}} 50% de probabilidad con 10 de suerte#Desaparece tras infligir daño/bloquear proyectiles 4 veces o tras 10 segundos"}, --  Ojo de pájaro
	[617] = {"617", "Piedra de Imán", "{{Magnetize}} 17% de probabilidad de disparar lágrimas que magnetizan a los enemigos#{{Luck}} 100% de probabilidad con 5 de suerte#Los enemigos magnetizados atraen recolectables, proyectiles y enemigos cercanos"}, -- Lodestone
	[618] = {"618", "Tomate Podrido", "{{Bait}} 17% de probabilidad de disparar lágrimas que marcan a los enemigos#{{Luck}} 100% de probabilidad con 5 de suerte#Los enemigos marcados son atacados por otros enemigos"}, -- Rotten Tomato
	[619] = {"619", "Primogenitura", "Tiene un efecto distinto en cada personaje"}, -- Derecho de Nacimiento
	[620] = {"620", "", "<Este objeto no existe>"}, -- Voodoo Pin (Cut item)
	[621] = {"621", "Guisado Rojo", "#↑ {{Damage}} Daño +21.6#{{HealingRed}} Salud al maximo#El daño se pierde poco a poco durante 3 minutos#Matar enemigos extiende la duración del efecto"}, -- Red Stew
	[622] = {"622", "Génesis", "{{Warning}} Elimina todos tus objetos y recolectables y te teletransporta a una habitación única#La habitación contiene recolectables, cofres y una trampilla#Por cada objeto removido, se te darán a elegir entre 3 objetos del mismo grupo#Dejar la habitación te llevará a la siguiente planta"}, --  Génesis
	[623] = {"623", "Llave Afilada", "{{Key}} +5 llaves#Lanza tus llaves para infligir daño, destrozar obstáculos y abrir puertas#Los Enemigos asesinados con llaves pueden generar los contenidos de un cofre, incluyendo objetos"}, -- Sharp Key
	[624] = {"624", "Paquete de Refuerzo", "{{Card}} Genera 5 cartas aleatorias"}, -- Paquete de Refuerzo
	[625] = {"625", "Mega seta", "Te haces gigante y otorga:#↑ {{Damage}} Daño x4#↑ {{Range}} Alcance +2#↓ {{Tears}} Lágrimas -1.9#Invulnerabilidad y habilidad para destrozar enemigos y obstáculos#{{Timer}} El efecto dura 30 segundos y persiste entre habitaciones y plantas"}, -- Mega Mush
	[626] = {"626", "Primera Parte del Cuchillo", "Al ser combinado con la {{Collectible627}} Segunda parte del cuchillo:#Crea un cuchillo lanzable que inflige 25 de daño#Permite abrir una puerta hecha de carne"}, -- Primera parte del cuchillo
	[627] = {"627", "Segunda Parte del Cuchillo", "Al ser combinado con la {{Collectible626}} Primera parte del cuchillo:#Crea un cuchillo lanzable que inflige 25 de daño#Permite abrir una puerta hecha de carne"}, -- Segunda parte del cuchillo
	[628] = {"628", "Certificado de Defunción", "Te lleva a un piso que contiene todos los objetos del juego#Tras tomar un objeto, te devuelve a la habitación en la que estabas"}, -- Certificado de Defunción
	[629] = {"629", "Mosca robot", "Orbital que dispara lágrimas con escudo#Inflige 3 de daño por contacto cada segundo"}, -- Bot Fly
	[630] = {"630", "", "<Este objeto no existe>"}, -- Lucky Seven (Cut item)
	[631] = {"631", "Cuchillo de carnicero", "Divide a los enemigos de la habitación en 2 versiones más pequeñas con 40% de salud#Divide a los enemigos que normalmente se dividen#Inflige 25 de daño a los enemigos que no se dividan"}, -- Meat Cleaver
	[632] = {"632", "Nazar", "↑ {{Luck}} Suerte +2#Otorga inmunidad a {{Burning}} quemaduras, {{Confusion}} confusión, {{Fear}} miedo y {{Poison}} veneno"}, --  Amuleto del mal
	[633] = {"633", "Dogma", "↑ {{Speed}} Velocidad +0.1#↑ {{Damage}} Daño +2#Permite volar y otorga un {{HolyMantle}} escudo de Manto Sagrado de una solo uso#{{Heart}} Si tienes menos de 6 corazones, te curas con una mezcla de corazones rojos y de alma"}, -- Dogma
	[634] = {"634", "Purgatorio", "Genera grietas en el suelo de habitaciones hostiles#Caminar sobre ellas invoca fantasmas explosivos teledirigidos"}, -- Purgatory
	[635] = {"635", "Puntos de sutura", "Genera un familiar que se mueve en la dirección de tus disparos#Al usarlo, intercambias la posición con el familiar y ganas una invencibilidad corta#Teletransportarse en cosas puede dañarlas o destruirlas"}, -- Stitches
	[636] = {"636", "Tecla R", "Reinicia la partida actual#Mantendrás tus objetos, trinkets, estadisticas y recolectables#No reinicia el tiempo de la partida"}, -- R Key
	[637] = {"637", "Gotas de impacto", "{{Confusion}} 10% de probabilidad de disparar un puño con mucho empuje y que confunde a los enemigos#{{Luck}} 100% de probabilidad con 9 de suerte"}, -- Knockout Drops
	[638] = {"638", "Goma de borrar", "Lanza una goma que borra a un enemigo#Los enemigos borrados no apareceran durante el resto de la partida#Inflige 15 de daño a los jefes#Solo puede usarse una vez por piso"}, -- Goma de borrar
	[639] = {"639", "Corazón asqueroso", "{{RottenHeart}} +1 Corazón podrido"}, -- Yuck Heart
	[640] = {"640", "Urna de almas", "Lanza llamas azules#Gana cargas por cada enemigo que mates"}, -- Urna de almas
	[641] = {"641", "Aceldama", "Crea una cadena de lágrimas detrás al entrar en habitaciones hostiles#Las lágrimas infligen 3.5 de daño"}, -- Akeldama
	[642] = {"642", "Piel mágica", "Genera un objeto del grupo de items de la habitación actual#{{BrokenHeart}} Convierte 1 contenedor de corazón o 2 corazones de alma en un corazón roto#{{Warning}} Reemplaza futuros objetos si no lo tienes{{ColorSilver}}(33% tras 1 uso, 50% tras 2, 100% tras 3)#Menor probabilidad si ya se generó en el piso actual"}, -- Magic Skin
	[643] = {"643", "Revelación", "{{SoulHeart}} +2 Corazones de alma#Permite volar#{{Chargeable}} Lásar Sagrado cargable#El laser no reemplaza tus lágrimas"}, -- Revelation
	[644] = {"644", "Premio de consolación", "↑ Mejora tu estadística más baja#Puede generar 3 {{Coin}} monedas, 1 {{Bomb}} bomba, o 1 {{Key}} llave dependiendo de lo que tengas menos"}, -- Consolation Prize
	[645] = {"645", "Minitoma", "Orbital que bloquea proyectiles#Inflige daño por contacto#Se divide en versiones más pequeñas tras 3 golpes#Al romperse, las versiones pequeñas se convierten en arañas azules#Reaparece 5 segundos después"}, -- Minitoma
	[646] = {"646", "Bombas de azufre", "{{Bomb}} +5 Bombas#{{Collectible118}} Las bombas disparan 4 láseres de Azufre en forma de cruz#Los rayos no dañan a Isaac"}, -- Brimstone Bombs
	[647] = {"647", "4.5 voltios", "Los objetos activos ya no se cargan al limpiar habitaciones#Se cargan lentamente al infligir daño a los enemigos#El daño requerido aumenta por planta"}, -- 4.5 Volt
	[648] = {"648", "", "<Este objeto no existe>"}, -- Pill Crusher (Cut item)
	[649] = {"649", "Ciruela afrutada", "Mini Ciruelita#Viaja diagonalmente por la habitación, disparando lágrimas que infligen 3 de daño#Inflige 6 de daño por contacto cada segundo"}, -- Fruity Plum
	[650] = {"650", "Flauta ciruela", "{{Timer}} Invoca a Ciruelita en la habitación actual durante 10 segundos"}, -- Flauta de ciruela
	[651] = {"651", "Estrella de Belén", "{{BossRoom}} Viaja lentamente hasta la sala del jefe#Emite un aura que otorga:#↑ {{Tears}} Lágrimas x2.5#↑ {{Damage}} Daño x1.8#Lágrimas Teledirigidas#50% de probabilidad de ignorar el daño recibido"}, -- Star of Bethlehem
	[652] = {"652", "Bebé cubito", "Familiar que se desliza por la habitación si lo empujas#{{Slow}} Ralentiza e inflige 17.5 de daño por contacto#{{Freezing}} Congela a los enemigos al matarlos"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Al tenerlo, los enemigos no fantasmas dejan pequeños fantasmas rojos al morir#Al usarlo, hace que los fantasmas exploten#Mata instantaneamente a cualquier enemigo fantasma (incluyendo jefes) que tengan menos de 50% de salud"}, -- Vade Retro
	[654] = {"654", "Falso PHD", "{{Pill}} Identifica todas las píldoras#{{Pill}} Convierte las píldoras buenas en píldoras malas#{{BlackHeart}} +1 corazón negro#↑ {{Damage}} Las píldoras que bajan estadísticas otorgan +0.6 de daño#{{BlackHeart}} Otras píldoras sueltan corazones negros"}, -- False PHD
	[655] = {"655", "Gira para ganar", "Otorga un orbital giratorio que bloquea proyectiles enemigos e inflige 10.5 de daño por contacto cada segundo#Al usarlo: #↑ {{Speed}} Velocidad +0.5#Aumenta la velocidad y el daño de los orbitales"}, -- Spin to Win
	[656] = {"656", "Damocles", "Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#No duplica los objetos que tengan precio o provengan de cofres#{{Warning}} Tras recibir daño, probabilidad baja de que la espada te mate en un momento aleatorio"}, -- Damocles (hidden passive version)
	[657] = {"657", "Vasculitis", "Los enemigos sueltan lágrimas al morir con los efectos de tus lágrimas"}, -- Vasculitis
	[658] = {"658", "Célula gigante", "Al recibir daño genera un minIsaac#Los minIsaacs persiguen y disparan a los enemigos cercanos"}, -- Giant Cell
	[659] = {"659", "Tropicamida", "↑ {{Range}} Alcance +2.5 #↑ {{Tearsize}} Tamaño de lágrima +0.22"}, -- Tropicamide
	[660] = {"660", "Lectura de cartas", "Genera 2 portales al inicio de cada planta#Los portales desaparecen al abandonar la habitación#{{ColorRed}}Rojo: {{CR}} {{BossRoom}} Sala del jefe#{{ColorYellow}}Amarillo: {{CR}} {{TreasureRoom}} Sala del tesoro#{{ColorBlue}}Azul: {{CR}} {{SecretRoom}} Habitación secreta"}, -- Lectura de cartas
	[661] = {"661", "Quintillizos", "Matar a un enemigo genera un familiar torreta en ese lugar#Hasta 5 familiares"}, -- Quints
	[662] = {"662", "", "<Este objeto no existe>"}, -- Pacifist (Cut item)
	[663] = {"663", "Con uñas y dientes", "Te vuelve invencible durante 1 segundo cada 6 segundos#Resplandece antes de activarse"}, -- Con uñas y dientes
	[664] = {"664", "Comedor compulsivo", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Salud al maximo#Los pedestales de objetos alternan entre el objeto original y un objeto de comida#Tomar el objeto de comida otorga:#{{HealingRed}} Cura 2 corazones#↑ {{Damage}} Daño temporal +3.6#↑ Dos mejoras de estadísticas (Dependen del objeto de comida)#↓ {{Speed}} Velocidad -0.03"}, -- Binge Eater
	[665] = {"665", "El ojo de Guppy", "Revela el contenido de los {{Chest}} cofres, {{GrabBag}} sacos, tenderos y hogueras antes de ser abiertos o destruidos"}, -- Guppy's Eye
	[666] = {"666", "", "<Este objeto no existe>"},
	[667] = {"667", "Hombre de Paja", "{{Player14}} Genera un Keeper compañero#{{DevilRoom}} Los objetos de pacto del Diablo costaran monedas si esta vivo#Al morir:#Genera arañas azules#Elimina todo objeto que haya recogido y a si mismo de tu inventario#{{Warning}} Puede tomar objetos de eventos de progresión"}, -- Straw Man
	[668] = {"668", "Nota de Papá", "Tomarlo iniciará la ruta de ascenso hasta Casa#{{Trinket}} Transformará todos los trinkets dejados en la {{BossRoom}} Sala del jefe o la {{TreasureRoom}} Sala del tesoro en una {{Card78}} Llave rota"}, -- Nota de papá
	[669] = {"669", "Salchicha", "↑ {{Heart}} +1 corazón#↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +0.5#↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +2.5#↑ {{Shotspeed}} Vel. de lágrimas +0.6#↑ {{Luck}} Suerte +1#{{HealingRed}} Salud al maximo#↑ {{AngelDevilChance}} +6.9% de probabilidad de sala de Diablo/Ángel#↑ {{PlanetariumChance}} +6.9% de probabilidad de planetario"}, -- Sausage
	[670] = {"670", "¿Opciones?", "Permite elegir entre dos recompensas de habitación"}, -- Options?
	[671] = {"671", "Corazón de Caramelo", "↑ Recoger un {{Heart}} corazón rojo otorga una mejora aleatoria de estadísticas permanente#{{Heart}} Genera un corazón rojo"}, -- Candy Heart
	[672] = {"672", "Una Libra de Carne", "{{DevilRoom}} Los pactos del diablo ahora cuestan monedas#{{Shop}} Los objetos de las tiendas cuestan contenedores de corazón#Los recolectables en las tiendas son gratis pero están rodeados con espinas"}, -- A Pound of Flesh
	[673] = {"673", "Redención", "{{DevilRoom}} Al salir de una Sala del Diablo sin tomar nada, ganas: #{{SoulHeart}} Un Corazón de alma#↑ {{Damage}} Daño +1"}, -- Redemption
	[674] = {"674", "Grilletes Espirituales", "Al morir, te vuelves un fantasma encadenado a tu cuerpo muerto y puedes seguir luchando con medio corazón de alma#Si el fantasma sobrevive, te devuelve a la vida tras 10 segundos#{{SoulHeart}} Se recarga tomando corazones de alma"}, -- Soul Shackles
	[675] = {"675", "Orbe Roto", "Al recibir daño:#Abre todas las puertas de la habitación#Revela una habitación aleatoria en el mapa#Destruye todas las piedras marcadas y de trampilla#Puede abrir puertas cerradas con llave#Puede abrir la puerta de Mega Satán"}, -- Cracked Orb
	[676] = {"676", "Corazón Vacío", "{{EmptyHeart}} +1 Contenedor de corazon si al iniciar una planta tienes un corazón rojo o menos#{{EmptyBoneHeart}} Los corazones de hueso no cuentan"}, -- Empty Heart
	[677] = {"677", "Proyección Astral", "{{Timer}} Recibir daño en una habitación hostil otorga:#Lagrimas espectrales#Permite volar#Niega el daño del siguiente golpe#Congela el tiempo durante 2 segundos#Gran incremento en velocidad y lágrimas durante 2 segundos"}, -- Astral Proyection 
	[678] = {"678", "Cesárea", "{{Chargeable}} Cargable#Reemplaza tus lágrimas por fetos espectrales teledirigidos#{{Damage}} Los fetos infligen 2.8 veces tu daño por segundo"}, -- C Section
	[679] = {"679", "Mini Abadón", "{{Collectible399}} Familiar que dispara un ataque similar a Fauces del Vacío#Inflige 52.5 de daño cada segundo"}, -- Lil Abaddon
	[680] = {"680", "Venganza de Montezuma", "{{Chargeable}} Disparar de forma continua carga un ataque láser trasero"}, -- Montezuma's Revenge
	[681] = {"681", "Portal Pequeño", "Familiar arrojable que inflige daño por contacto al ser lanzado#Consume los recolectables a su paso#Cada uno aumenta su tamaño, daño, y genera una mosca azul#Consumir 4 recolectables genera un portal a una habitacion inexplorada"}, -- Lil Portal
	[682] = {"682", "Amigo Gusano", "Hace que un tentáculo salga del suelo y agarre a un enemigo#Los enemigos agarrados reciben 8 de daño cada segundo, son ralentizados y no pueden moverse"}, -- Worm Friend
	[683] = {"683", "Espuelas de Hueso", "Al morir, los enemigos generan huesos#Los huesos bloquean proyectiles e infligen daño por contacto"}, -- Espuelas de Hueso
	[684] = {"684", "Alma Hambrienta", "Probabilidad de generar fantasmas al matar enemigos#Los fantasmas persiguen enemigos, infligen daño por contacto y explotan tras 5 segundos#La explosión inflige 7 de daño a los enemigos cercanos#La explosión no te afecta"}, -- Hungry Soul
	[685] = {"685", "Tarro de Avispas", "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#Genera un fuego adicional con cada uso, hasta llegar a 12"}, -- Jar of Wisps
	[686] = {"686", "Relicario del Alma", "↑ Otorga una mejora de estadística permanente al tomar {{SoulHeart}} corazones de alma#{{SoulHeart}} Genera un corazón de alma"}, -- Soul Locket
	[687] = {"687", "Buscador de Amigos", "Genera un monstruo familiar aleatorio que copia tus ataques y movimientos"}, -- Buscador de Amigos
	[688] = {"688", "Niño Interior", "+1 vida adicional#Al morir, revive en la habitación actual con:#{{HalfHeart}} Medio corazón#↑ Velocidad +0.2#Un tamaño reducido"}, -- Niño Interior
	[689] = {"689", "Corona Glitcheada", "Los pedestales cambian rápidamente entre 5 objetos aleatorios"}, -- Corona Glitcheada
	[690] = {"690", "Belly Jelly", "Los enemigos rebotan lejos al tocarte#50% de probabilidad de negar el daño por contacto#50% de probabilidad de desviar proyectiles"}, -- Belly Jelly
	[691] = {"691", "Orbe Sagrado", "Evita que los objetos de calidad {{Quality0}} y {{Quality1}} aparezcan#33% de probabilidad de cambiar los objetos de calidad {{Quality2}}"}, -- Sacred Orb
	[692] = {"692", "Vínculo de Sangre", "{{DevilRoom}} Genera espinas especiales en la sala del Diablo#Hacerse daño en ellas puede otorgar:#35%: Nada#33%: ↑ {{Damage}} daño +0.5#15%: 6 {{Coin}} monedas#10%: 2 {{BlackHeart}} Corazones negros#5%: {{DevilRoom}} Objeto del Diablo aleatorio#2%: Transformación en Leviathan"}, -- Sanguine Bond
	[693] = {"693", "El Enjambre", "Otorga 8 moscas orbitales#Genera una nueva mosca al limpiar cada habitación#Se convierten en moscas azules tras bloquear un proyectil"}, -- The Swarm
	[694] = {"694", "Corazón Roto", "↑ {{Damage}} Daño +0.25 de daño por cada corazón roto#{{BrokenHeart}} +3 corazones rotos#{{BrokenHeart}} Cada golpe fatal añade otros 2 corazones rotos#Mueres al tener 12 corazones rotos"}, -- Heartbreak
	[695] = {"695", "Ráfaga de Sangre", "Al recibir daño, otorga para la planta actual:#↑ {{Speed}} Velocidad (+1.02 maximo)#↑ {{Tears}} Lagrimas (+3 maximo)"}, -- Bloody Gust"
	[696] = {"696", "Salvación", "Otorga un aura que genera rayos de luz al tocar a los enemigos#Cuanto más daño te hagan en esa planta, más grande será el aura"}, -- Salvación
	[697] = {"697", "Gemelo Desvaneciente", "Entrar en la sala de jefe genera un clon del jefe#Derrotarle genera un objeto extra#El clon es más lento y tiene un 75% de salud"}, -- Vanishing Twin
	[698] = {"698", "Par Retorcido", "Dos familiares que disparan lágrimas que copian tus efectos y estadisticas#{{Damage}} Infligen el 37.5% de tu daño"}, -- Twisted Pair
	[699] = {"699", "La Ira de Azazel", "Acumula ira al limpiar cada habitación#{{Collectible118}} Tras 4 habitaciones, dispara un gran rayo de Azufre al entrar a la siguiente habitación"}, -- La Ira de Azazel
	[700] = {"700", "Cámara de Eco", "Usar una {{Rune}} runa, {{Card}} carta o {{Pill}} píldora activa el efecto de las últimas 3 runas/cartas/píldoras que se hayan usado tras recoger Cámara de Eco"}, --  Eco Chamber
	[701] = {"701", "La Tumba de Isaac", "Genera un {{DirtyChest}} cofre viejo al inicio de cada planta#Los cofres antiguos requieren una llave para abrirse y pueden contener lo siguiente:#{{SoulHeart}} Corazones de alma#{{Trinket}} Trinkets#Objetos de la sala del ángel o relacionados con Mamá y Papá"}, -- Isaac's Tomb
	[702] = {"702", "Espíritu de venganza", "Tras recibir daño, genera un fuego orbital#Los fuegos disparan lágrimas, no bloquean proyectiles y desaparecen en la siguiente planta#Máximo de 6 fuegos"}, -- Vengeful Spirit
	[703] = {"703", "Esau Junior", "Cambia entre el personaje actual y Esau Junior#Esau Junior tiene {{BlackHeart}} 3 corazones negros, {{Damage}} +2 de daño y vuela#Esau Junior recibe objetos aleatorios en igual cantidad a los que tu tengas al cambiar de lugar por primera vez#Los personajes tienen objetos y vida independientes#{{Warning}} Morir como cualquier personaje termina la partida"}, -- Esau Jr.
	[704] = {"704", "¡Berserker!", "{{Battery}} Se carga al infligir daño#{{Timer}} Otorga durante 5 segundos:#↑ {{Speed}} Velocidad +0.4#↑ {{Tears}} Lágrimas x0.5#↑ {{Tears}} Lágrimas +2#↑ {{Damage}} Daño +3#Restringe el ataque a un arma a melee#{{Timer}} Por cada enemigo asesinado:#Aumenta la duración del efecto por 1 segundo#Otorga invencibilidad breve"}, -- Berserk!
	[705] = {"705", "Artes Oscuras", "{{Timer}} Al usarlo, ganas durante 1 segundo (o hasta disparar):#↑ {{Speed}} Velocidad +1#Permite caminar a través de los enemigos y proyectiles#Al disparar o finalizar el efecto:#Inflige el triple de tu daño a los enemigos#Elimina los proyectiles tocados#Genera una explosion en tu ubicacion#El ataque y la explosion aumentan su daño con cada entidad atacada"}, -- Dark Arts
	[706] = {"706", "Abismo", "Destruye todos los objetos de la habitación y genera una langosta familiar por cada uno#Las langostas infligen tu daño 2-3 veces por ataque#Los efectos de las moscas dependen de los objetos"}, -- Abyss
	[707] = {"707", "Cena", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Cena
	[708] = {"708", "Grapadora", "↑ {{Damage}} Daño +1#Disparas todas tus lagrimas por el ojo derecho"}, -- Grapadora
	[709] = {"709", "¡Suplex!", "Te permite correr, levantar a enemigos o jefes y estamparlos contra el suelo#Estampar inflige daño y genera una ola de rocas basados en tu tamaño"}, -- Suplex!
	[710] = {"710", "Bolsa de Trabajo", "Recoge hasta 8 recolectables#Mantener el botón del activable convierte los 8 recolectables en un objeto#La calidad del objeto dependerá de la de los recolectables"}, -- Bolsa de trabajo
	[711] = {"711", "Cambio", "Al entrar una habitación con un pedestal, un objeto fantasma aparecerá detras#Tras el uso, el objeto fantasma intercambiará lugar con el otro#Ambos objetos se pueden tomar si es que Cambio se usa después de tomar un objeto#{{Warning}} El objeto fantasma desaparecerá si tomas el primer objeto y sales de la habitación"}, -- Flip
	[712] = {"712", "Lemegeton", "Invoca un fantasma orbital que otorga un efecto de objeto pasivo aleatorio#El efecto del objeto se aplica al jugador#75% de probabilidad de ser del grupo del Tesoro/Tienda/Jefe#25% de probabilidad de ser del grupo de la sala actual"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Convierte medio corazón en un coágulo familiar#Los coágulos disparan tus lagrimas y pueden ser destruidos#El tipo de coágulos, daño, salud y efectos varian con los tipos de corazones#{{Player26}} Eva contaminada los convierte al disparar por cierto tiempo, usar el objeto de nuevo restaura su PV"}, --  Sumptorium
	[714] = {"714", "Llamado", "{{Player35}} Devuelve el cuerpo de Forgotten desde culquier distancia#El alma es invencible mientras vuelve el cuerpo"}, -- Recall
	[715] = {"715", "Frasco", "Guarda una caca bomba dentro para usarla más tarde"}, -- Bote
	[716] = {"716", "Bolsa de Keeper", "#Genera {{Coin}} 3 monedas y {{Key}} una llave#{{Shop}} Gastar 3 monedas en la tienda otorga: #↑ {{Speed}} Velocidad +0.03#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.25"}, -- Keeper's Sack
	[717] = {"717", "Parientes de Keeper", "Las rocas y jarrones generan 2 arañas azules al romperlos#Las rocas pueden generar ocasionalmente arañas azules en habitaciónes hostiles"}, -- Pariente de Keeper
	[718] = {"718", "", "<Este objeto no existe>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Caja de Keeper", "{{Shop}} Genera un objeto o recolectable de tienda aleatorio para comprar"}, -- Keeper's Box
	[720] = {"720", "Jarra Para Todo", "Genera algunos recolectables basados en las cargas que tenga#Si está cargado al completo, tiene un efecto aleatorio más único#Recompensas según cargas: 1:caca 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Tarro de todo
	[721] = {"721", "TMTRAINER", "Hace que los objetos futuros estén 'glitcheados'#Los objetos glitcheados tienen efectos completamente aleatorios"}, -- TM TRAINER
	[722] = {"722", "Anima Sola", "Encadena al enemigo más cercano durante 5 segundos, evitando que actúen#Los enemigos encadenados no pueden moverse ni atacar#{{Player37}} Jacob Contaminado siempre encadenará a Esaú Oscuro"}, -- Anima Sola
	[723] = {"723", "Dado Reductor", "Cambia todos los objetos en la habitación por otros restándole 1 al identificador interno del objeto actuál"}, -- Spindown Dice
	[724] = {"724", "Hipercoagulación", "{{Heart}} Tras recibir daño, sueltas medio o un corazón rojo (dependiendo de la cantidad de daño)#Los corazones soltados desaparecen tras 1.5 segundos"}, -- Hypercoagulation
	[725] = {"725", "IBS", "Parpadeas rojo tras infligir suficiente daño#Soltar el boton de ataque mientras parpadeas:#Arroja una caca aleatoria#Genera un fluido potenciador#{{Poison}} Suelta un gas venenoso#Genera 5 bombas troll"}, -- IBS
	[726] = {"726", "Hemoptisis", "Estornudas sangre al pulsar dos veces el botón de disparo#Inflige 1.5 veces tu daño a los enemigos delante de ti#Enfriamiento de un segundo#{{BrimstoneCurse}} Los enemigos afectados reciben daño extra de los rayos de Azufre"}, -- Hemoptysis
	[727] = {"727", "Bombas Fantasma", "{{Bomb}} +5 Bombas#Las bombas generan fantasmas#Los fantasmas infligen 2 veces tu daño y explotan luego de 10 segundos"}, -- Ghost Bombs
	[728] = {"728", "Gello", "Genera un familiar demoníaco atado a ti#Copia tus lágrimas, estadísticas y efectos#{{Damage}} Sus lágrimas infligen el 75% de tu daño"}, -- Gello
	[729] = {"729", "Ataque Decapitado", "Lanza tu cabeza y te permite disparar lágrimas desde donde caiga#Recuperas la cabeza al pisarla o reactivar el objeto"}, -- Ataque de decapitación
	[730] = {"730", "Ojo de Vidrio", "↑ {{Damage}} Daño +0.75#↑ {{Luck}} Suerte +1"}, -- Glass Eye
	[731] = {"731", "Orzuelo", "Otorga para el ojo derecho:#↑ {{Damage}} Daño x1.28#↑ {{Range}} Alcance +6.5#↓ {{Shotspeed}} Vel. de lágrimas -0.3"}, -- Stye
	[732] = {"732", "Anillo de Mamá", "↑ {{Damage}} Daño +1#{{Rune}} Genera una runa o piedra de alma al tomarlo"}, -- Anillo de Mamá
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +1.5#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Lunch
	[23] = "↑ {{Tears}} Lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Dinner
	[24] = "↑ {{Damage}} Daño +1#↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Dessert
	[25] = "↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Breakfast
	[26] = "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +1.5#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Rotten Meat
	[346] = "↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Luck}} Suerte +1#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- A Snack
	[456] = "↑ {{Damage}} Daño +1#↑ {{Luck}} Suerte +1#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Midnight Snack
	[707] = "↑ {{Tears}} Lágrimas +0.5#↑{{Luck}} Suerte +1#↑ {{Damage}} Daño temporal +3.6#↓ {{Speed}} Velocidad -0.03", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "También activa el efecto del {{Collectible35}} Necronomicón", -- Kamikaze!
	[126] = "También activa el efecto del {{Collectible35}} Necronomicón", -- Razor Blade
	[127] = "↑ {{Damage}} Daño +2 para el piso siguiente", -- Forget me Now
	[133] = "↑ {{Damage}} Daño +0.5", -- Guppy's Paw
	[135] = "Otorga {{Damage}} Daño temporal +0.66 por cada uso", -- IV Bag
	[147] = "El pico tiene mayor duración, empuje, velocidad, {{Burning}} incendia a los enemigos y suelta más recolectables al romper cacas y obstáculos", -- Notched Axe
	[186] = "También activa el efecto de {{Collectible126}} Cuchilla", -- Blood Rights
	[282] = "Deja un rastro de fuego que inflige daño por contacto e {{Burning}} incendia a los enemigos", -- How to Jump
	[290] = "Usar el objeto consume un corazón, otorga un aumento de {{Damage}} daño y deja fluido rojo en el suelo", -- The Jar
	[295] = "Probabilidad de activar el efecto de {{Collectible555}} Cuchilla dorada", -- Magic Fingers
	[297] = "Genera un familiar demoníaco permanente junto a la recompensa del piso", -- Pandora's Box
	[323] = "En su lugar, dispara 10 lágrimas espectrales y perforantes de mayor daño", -- Isaac's Tears
	[326] = "En vez de luz, Tendrás un aura fogosa al ser invencible#Otorga {{Damage}} Daño temporal y activa el efecto del {{Collectible35}} Necronomicon al hacer un bloqueo perfecto", -- Breath of Life
	[352] = "Activa {{Collectible34}} El Libro de Belial al romperse#La bonificación de daño persiste hasta que el cañón se repare", -- Glass Cannon
	[475] = "Revive a Judas como Dark Judas si tiene una vida extra", -- Plan C
	[482] = "Reemplaza tu objeto más reciente por {{Collectible51}} Pentáculo en vez de eliminarlo", -- Clicker
	[487] = "↑ {{Damage}} Daño +0.5 adicional", -- Potato Peeler
	[536] = "Por cada familiar sacrificado:#{{Damage}} Daño temporal +10.8", -- Sacrificial Altar
	[555] = "Daña a todos los enemigos de la sala y aplica el efecto de {{Collectible202}} Toque de Midas en ellos", -- Golden Razor
	[577] = "↑ {{Damage}} Daño adicional permanente", -- Damocles
	[582] = "↑ {{Damage}} Daño adicional permanente basado en la cantidad de usos del objeto", -- Wavy Cap
	[585] = "Cambia la recompensa por 2 corazones negros y un objeto del Diablo#Serán 3 corazones negros y 2 objetos si ya se ha hecho un pacto con el Diablo", -- Alabaster Box
	[622] = "Otorga un {{Collectible51}} Pentáculo", -- Genesis
	[623] = "También activa el efecto de {{Collectible126}} Cuchilla", -- Sharp Key
	[635] = "Crea una línea de {{Collectible705}} Artes Oscuras entre tú y Pespuntes", -- Stitches
	[640] = "En su lugar, dispara un rayo de {{Collectible118}} Azufre", -- Urn of Souls
	[642] = "↑ {{Damage}} Daño x1.4#↑ {{Damage}} Daño +1", -- Magic Skin
	[653] = "Los fantasmas irán hacia los enemigos", -- Vade Retro
	[685] = "Otorga 6 fuegos fatuos de la {{Collectible292}} Biblia satánica#{{DevilChance}} +10% de probabilidad de sala del Diablo por cada fuego", -- Jar of Wisps
	[705] = "↑ {{Damage}} Aumento de daño temporal por cada enemigo/proyectil golpeado", -- Dark Arts
	[710] = "Probabilidad de reemplazar los {{Heart}} Corazones Rojos al recogerlos con {{BlackHeart}} Corazones Negros", -- Bag of Crafting
	[729] = "Al no tener cabeza:#↑ {{Tears}} Lágrimas x3#↑ {{Damage}} Daño +2", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].BookOfVirtuesWispTexts = {
	-- values inside {} brackets will be replaced with text parts below
	-- Wisp texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the wisp descriptions
	StatDescription = "{{Heart}} {health} {{Damage}} {damage}",	-- {health} will be replaced with the health text, {damage} with the damage text or the "CantShoot" text
	Health = "{1} salud", 		-- {1} will be replaced with the health
	Damage = "{1} dps",				-- {1} will be replaced with the calculated damage
	CantShoot = "No puede disparar lágrimas",
	Shotspeed = "{1}% vel. de lágrimas", 			-- {1} will be replaced with the shot speed changes in %
	Chance = " ({1}% de probabilidad)",					-- {1} will be replaced with the chance
	SingleRoom = "Fuego de una sola habitación",
	NoWisps = "No hay fuego",
	Ring = {
		[-1] = "{amount} Fuego{plural_s} estacionario{plural_s}",
		[0] = "{amount} Fuego orbital{plural_es} interior {{InnerWisp}}",
		[1] = "{amount} Fuego orbital{plural_es} central {{MiddleWisp}}",
		[2] = "{amount} Fuego orbital{plural_es} exterior {{OuterWisp}}",
	},
}
-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[35] = "{{Collectible35}} Activa el efecto del Necronomicón al destruirse", -- The Necronomicon
	[37] = "Generan bombas de dispersión teledirigidas al destruirse", -- Mr. Boom
	[38] = "Lágrimas rápidas e imprecisas", -- Tammy's Head
	[40] = "Explotan al destruirse", -- Kamikaze!
	[47] = "Dispara 3 lágrimas explosivas hacia la cruz al usarse", -- Doctor's Remote
	[49] = "Dispara un rayo de Kamehame... ¡¿Eeeeeeh?! al usarlo", -- Shoop da Whoop!
	[56] = "Los fuegos dejarán un rastro de fluido amarillo", -- Lemon Mishap
	[58] = "Inmunidad a proyectiles#Inmunidad al daño durante el efecto {{Collectible58}}", -- Book of Shadows
	[65] = "Genera una bomba troll al destruírse", -- Anarchist Cookbook
	[66] = "{{Slow}} Ralentiza a los enemigos por 3 segundos al destruirse", -- The Hourglass
	[77] = "Daño por contacto extra", -- My Little Unicorn
	[78] = "Genera una langosta para la habitación al destruirse", -- Book of Revelations
	[85] = "Genera una {{Card}} carta al destruirse", -- Deck of Cards
	[97] = "Genera 1 de 8 fuegos: {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#Los efectos explosivos son comunes", -- The Book of Sin
	[102] = "Genera 1 de 6 fuegos de distinto color con distintos efectos#Probabilidad de envenenar, petrificar, confundir, lanzar disparos de Bombas Troll, O generar una araña enemiga al destruírse#Los 6 fuegos generan {{Pill}} píldoras al destruirse", -- Mom's Bottle of Pills
	[105] = "Genera un fuego extra por cada objeto cambiado", -- The D6
	[111] = "Pedo venenoso al destruirse", -- The Bean
	[123] = "Lágrimas aleatorias", -- Monster Manual
	[124] = "Genera un fuego del objeto activo que imitó", -- Dead Sea Scrolls
	[130] = "Los fuegos embestirán hacia la dirección que dispares", -- A Pony
	[137] = "+1 fuego por bomba detonada#Las lágrimas de los fuegos también pueden ser detonadas remotamente", -- Remote Detonator
	[145] = "Se generan fuegos en vez de moscas#Generan una mosca azul al destruirse", -- Guppy's Head
	[147] = "Romper caca puede generar llamas de caquita#Romper rocas puede generar 1 de 5 fuegos minerales:#{{Collectible132}} Carbón, {{Collectible201}} Hierro, {{Collectible202}} Oro, {{Collectible68}} Redstone o {{Collectible415}} Diamánte", -- Notched Axe
	[160] = "Genera un rayo de luz al contacto", -- Crack the Sky
	[166] = "Destruye todos los recolectables en la habitación#Probabilidad de generar un fuego aleatorio por cada recolectable destruido", -- D20
	[175] = "Los fuegos abren cofres/puertas al contacto#Puede abrir las puertas a Mega Satán, Cadaver y al Ascenso#Los fuegos se donan a si mismos a los {{KeyBeggar}} Mendigos de llaves", -- Dad's Key
	[177] = "Genera un fuego basado en la recompensa de la habitación", -- Portable Slot
	[263] = "Generan una {{Rune}} runa al destruirse", -- Clear Rune
	[283] = "Rerolea todos tus fuegos, añadiendo uno aleatorio#No cambia el Libro de las Virtudes", -- D100
	[284] = "Elimina todos los fuegos#Otorga un fuego aleatorio por cada 2 objetos conseguidos#No cambia el Libro de las Virtudes", -- D4
	[285] = "10% de probabilidad de disparar lágrimas con efecto de D10", -- D10
	[286] = "Generan una {{Card}} carta al destruirse", -- Blank Card
	[287] = "Activa el efecto del {{Collectible675}} Orbe roto al destruise", -- Book of Secrets
	[288] = "Genera fuegos en vez de arañás#Generan una araña azul al destruirse", -- Box of Spiders
	[290] = "Convierte los corazones recolectados en fuegos#Probabilidad de generar {{HalfHeart}} medio corazón al destruirse", -- The Jar
	[291] = "Genera un fuego extra por cada enemigo transformado en caca", -- Flush!
	[292] = "+10% de probabilidad de {{AngelDevilChance}} sala del Diablo/Ángel por cada fuego de la Biblia Satánica", -- Satanic Bible
	[293] = "Dispara un {{Collectible118}} rayo en 4 direcciones al destruirse", -- Head of Krampus
	[294] = "Efecto del Frijol Mantequilla al destruirse", -- Butter Bean
	[295] = "Probabilidad de soltar una {{Coin}} moneda al destruirse", -- Magic Fingers
	[296] = "Fuego que puede curarse con {{Heart}} corazones rojos", -- Converter
	[297] = "Genera de 0 a 8 fuegos, dependiendo del numero de planta actual", -- Pandora's Box
	[298] = "Inmune al daño por contacto#No inflige daño por contacto hasta que el Paso de unicornio se active", -- Unicorn Stump, Hasta acá lo voy a dejar por el momento, cuando me despierte y limpie continuaré
	[323] = "Tiempo de vida de 3 segundos", -- Isaac's Tears
	[324] = "{{Collectible570}} Lágrimas de Galleta de plastilina", -- Undefined
	[325] = "Conjunto de disparos arqueados", -- Scissors
	[326] = "Genera 4 fuegos al realizar un bloqueo de daño perfecto", -- Breath of Life
	[347] = "Fuego con lágrimas de {{Collectible245}} 20/20#Duplica tus otros fuegos", -- Diplopia
	[348] = "Genera una {{Pill}} píldora al destruirse", -- Placebo
	[349] = "50% de probabilidad de generar una {{Coin}} moneda al destruirse", -- Wooden Nickel
	[351] = "Todos los fuegos del Mega Frijol lanzan una onda de piedra al usar el objeto#{{Poison}} Pedo venenoso y petrificador al destruirse", -- Mega Bean
	[352] = "Si un fuego del Cañón de cristal se destruye, los otros lo harán", -- Glass Cannon
	[357] = "Duplica tus fuegos durante la habitación", -- Box of Friends
	[382] = "Los enemigos pueden generar fuegos con 1 de 4 efectos de lágrimas distintos al morir#Los efectos de lagrima dependen del tipo de ataque#Ataque regular, teledirigido, explosivo, o de {{Collectible118}} Azufre", -- Friendly Ball
	[383] = "Los disparos de los fuegos pueden ser detonados, explotando en 6 de tus lágrimas#Persisten entre habitaciones#Dispara lágrimas del jugador al destruirse", -- Tear Detonator
	[386] = "5% de probabilidad de que las lagrimas cambien al impactar los obstaculos de la habitación", -- D12
	[396] = "Cada portal tendrá un fuego", -- Ventricle Razor
	[406] = "Daño y velocidad de lágrimas aleatorias", -- D8
	[421] = "{{Charm}} Genera un pedo encantador al destruirse", -- Kidney Bean
	[422] = "Revive a todos los fuegos que fueron destruidos en la habitación anterior", -- Glowing Hour Glass
	[427] = "Genera un fuego que rebota por la habitación, Explotarán al hacer contacto con una lágrima del jugador#No puede disparar o infligir daño por contacto", -- Mine Crafter
	[434] = "Se generan fuegos en vez de moscas#De 5 moscas en adelante se generará un fuego con salud y daño incrementado 1", -- Jar of Flies
	[437] = "Efecto del D7 al hacer daño por contacto#Sólo se activa una vez", -- D7
	[441] = "{{Chargeable}} Lágrimas del {{Collectible275}} Mini-Azufre#Dispara de forma continua mientras se use Mega Ráfaga", -- Mega Blast
	[475] = "8 Fuegos de daño alto que persisten tras morir", -- Plan C
	[476] = "Genera otro fuego si no se duplica un recolectable", -- D1
	[477] = "Genera los fuegos de todos los objetos activos absorvidos#No genera fuegos por sí solo", -- Void
	[478] = "Pausa a todos los enemigos y permite disparar por 3 segundos", -- Pause
	[479] = "Probabilidad de generar un {{Trinket}} trinket al destruirse", -- Smelter
	[480] = "La salud del fuego aumentará con cada recolectables reciclado#Solo genera un fuego si al menos un recolectable es reciclado", -- Compost
	[481] = "5% de probabilidad de disparar lágrimas que transforman a los enemigos en fuegos aleatorios", -- Dataminer
	[482] = "Genera un fuego aleatorio", -- Clicker
	[483] = "Genera una bomba troll dorada al destruirse", -- Mama Mega!
	[484] = "Activa el efecto de Espera... ¿qué? al destruirse", -- Wait What?
	[485] = "Todos los fuegos de la Moneda Doblada pueden ser duplicados o destruidos si uno se daña", -- Crooked Penny
	[486] = "Probabilidad de negar el daño recibido y destruirse", -- Dull Razor
	[487] = "Fuego indestructible permanente#Acecha y dispara a los enemigos#No bloquea disparos ni hace daño por contacto", -- Potato Peeler
	[488] = "Genera un fuego del objeto imitado (Fuego aleatorio si no fue un objeto activo)", -- Metronome
	[489] = "Efecto adicional basado en el dado imitado", -- D Infinity
	[490] = "Genera un fuego aleatorio#Se regenera tras limpiar una habitación si fue destruido", -- Eden's Soul
	[504] = "Disparos apuntados", -- Brown Nugget
	[507] = "Probabilidad de generar fuegos al matar", -- Sharp Straw
	[510] = "Lágrimas de {{Collectible229}} Pulmón de Monstro, {{Collectible268}} Bebé Podrido, {{Collectible87}} Cuernos de Loki o {{Collectible118}} Azufre", -- Delirious
	[515] = "Genera un fuego aleatorio#Se regeneran tras limpiar una habitación si fueron destruidos", -- Mystery Gift
	[516] = "Disparan lágrimas en 8 direcciones, imitando al Aspersor", -- Sprinkler
	[521] = "Disparo triple#Comprar algo destruye todos los fuegos del Cupón", -- Coupon
	[522] = "Convierte los proyectiles capturados en fuegos", -- Telekinesis
	[523] = "Los fuegos se generan al soltar el contenido de la caja#Generan un recolectable aleatorio al destruirse", -- Moving Box
	[527] = "Abren cofres y puertas al limpiar una habitación", -- Mr. ME!
	[536] = "Convierte todos los fuegos en {{HalfHeart}} Medios corazones rojos#Genera un fuego de salud y daño altos al sacrificar", -- Sacrificial Altar
	[545] = "Genera un Bony amistoso al destruirse", -- Book of the Dead
	[550] = "10% de probabilidad de disparar lágrimas que generan un pisotón sobre el enemigo", -- Broken Shovel
	[552] = "10% de probabilidad de disparar lágrimas que generan un pisotón sobre el enemigo", -- Mom's Shovel
	[556] = "Lágrimas de {{Collectible118}} Azufre de corto alcance", -- Sulfur
	[557] = "↑ {{Luck}} +0.2 de suerte por cada fuego de la Galleta de la fortuna", -- Fortune Cookie
	[578] = "Los fuegos dejan un rastro de fluido amarillo", -- Free Lemonade
	[580] = "Probabilidad de generar puertas rojas al entrar a una nueva habitación", -- Red Key
	[582] = "Hasta 1 fuego del Hongo Mareante", -- Wavy Cap
	[584] = "Sin beneficio por copias múltiples", -- Book of Virtues
	[604] = "Se generan 1-3 fuegos donde aterriza lo que lanzaste", -- Mom's Bracelet
	[609] = "50% de probabilidad de generar un fuego invencibles#50% de probabilidad de que todos los fuegos del D6 Eterno se destruyan al usarse", -- Eternal D6
	[611] = "Daño y salud aumentados en base a las cargas del objeto", -- Larynx
	[622] = "Reemplaza todos tus fuegos por 3 fuegos normales", -- Genesis
	[631] = "Divide todos tus fuegos a la mitad (Mitad de salud y daño)#Los fuegos se destruyen si se dividen 3 veces", -- Meat Cleaver
	[638] = "Inmunidad a proyectiles#Elimina enemigos no-jefes al contacto", -- Eraser
	[639] = "Genera una mosca azul al limpiar una sala", -- Yuck Heart
	[640] = "Probabilidad de disparar una flama azul", -- Urn of Souls
	[650] = "Cuando Ciruelita rebote diagonalmente, Todos los fuegos de la Flauta Ciruela se volverám invencibles y lo harán", -- Plum Flute
	[653] = "Los fantasmas rojos pueden disparar lágrimas", -- Vade Retro
	[655] = "Fuegos temporales al usarse", -- Spin to Win
	[685] = "Triplica los fuegos generados", -- Jar of Wisps
	[687] = "Genera un fuego aleatorio", -- Friend Finder
	[705] = "Los enemigos generan un fuego de una habitación al morir", -- Dark Arts
	[709] = "Se generan 3 fuegos donde aterrices", -- Suplex
	[710] = "Genera un fuego aleatorio al fabricar", -- Bag of Crafting
	[712] = "Los fuegos de objetos lanzan disparos teledirigidos", -- Lemegeton
	[719] = "20% de probabilidad de que los enemigos suelten una {{Coin}} moneda al morir", -- Keeper's Box
	[720] = "Genera un fuego aleatorio", -- Everything Jar
	[722] = "Orbita alrededor del enemigo encadenado mientras le dispara#El fuego morirá cuando el enemigo lo haga", -- Anima Sola
	[723] = "Genera un fuego aleatorio y convierte a los demas fuegos en el mismo tipo", -- Spindown Dice
	[728] = "Todos los fuegos orbitarán a Gello", -- Gello
}

---------- Abyss Locust description parts ----------
EID.descriptions[languageCode].AbyssTexts = {
 	-- values inside {} brackets will be replaced with text parts below
	-- Abyss texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the abyss locust descriptions
	InfoText = "Genera una langosta{size}{speed} ({dmg})",
	InfoTextPlural = "Genera {amount} langostas{size}{speed} ({dmg})", -- Can be used by translators to provide a pluralized version of the InfoText
	Chance = " ({1}% de probabilidad)", -- {1} will be replaced with the chance
	SpeedSlow = " lenta{plural_s}", -- Speed < 1
	SpeedFast = " rápida{plural_s}", -- Speed > 1
	SpeedDash = " súper rápida{plural_s}", -- Speed >= 6
	SizeSmall = " pequeña{plural_s}", -- Size < 1
	SizeBig = " grande{plural_s}", -- Size > 1
	DamageMult = "Inflige tu daño x{1}", -- {1} will be replaced with the calculated damage multiplier
}

---------- Abyss Locust special effects ----------
--- Special locust effects that dont correspond to TearFlags.
--- Displays an icon in front of the description that shows an item with the same effect
EID.descriptions[languageCode].AbyssLocustEffects = {
[0] = "{{Bomb}} Explota al infligir daño",
[1] = "{{QuestionMark}} Efecto de langosta aleatorio",
-- 2 = Multiple locusts act like one. Uninteresting info for the player in my opinion
[3] = "{{Collectible284}} Cambia al enemigo tras infligir daño",
[4] = "{{Collectible35}} Daña a todos los enemigos al infligir daño",
[5] = "{{Collectible638}} Borra un enemigo al infligir daño",
[6] = "{{Collectible114}} Un cuchillo orbita la langosta mientras ataca",
[7] = "{{Collectible611}} Libera un grito de Laringe, dañando a los enemigos cercanos",
[8] = "{{Collectible399}} Genera un aro de Fauces del Vacío",
[9] = "{{Collectible522}} Obtiene un aura que empuja a los proyectiles al cargar",
[10] = "{{Collectible447}} Suelta pedos venenosos al infligir daño",
[11] = "{{Collectible447}} Suelta un pedo al infligir daño",
[12] = "{{Collectible118}} Genera un rayo de sangre al infligir daño",
[13] = "{{Collectible317}} Genera fluido verde al infligir daño",
[14] = "{{Collectible56}} Genera fluido amarillo al infligir daño",
[15] = "{{Collectible214}} Genera fluido rojo al infligir daño",
[16] = "{{Collectible178}} Genera fluido azul al infligir daño",
[17] = "{{Collectible420}} Genera un pentagrama de forma aleatoria",
[18] = "{{Collectible144}} Obtiene +0.25 daño por cada recolectables consumido. Maximo de 25 recolectables",
}


-- list of Tear flag descriptions used for Abyss locust effect description
EID.descriptions[languageCode].TearFlagNames = {
	[0] = "Espectral",													-- Ouija board type tear (goes thru obstacles)
    [1] = "Perforante",													-- Cupid's arrow type tear (goes thru enemy)
    [2] = "Teledirigida",												-- Spoon bender type tear (homes to enemy)
    [3] = "Ralentizante",												-- Spider bite type tear (slows on contact)
    [4] = "Envenena a los enemigos",									-- Common cold type tear (poisons on contact)
    [5] = "Petrifica a los enemigos",									-- Mom's contact type tear (freezes on contact)
    [6] = "Se dispersa al impacto",										-- Parasite type tear (splits on collision)
    [7] = "Aumenta su tamaño al moverse",								-- Lump of coal type tear (grows by range)
    [8] = "Boomerang",													-- My reflection type tear (returns back)
    [9] = "Persistente",												-- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage
    [10] = "Ondulante",													-- Wiggle worm type tear (wiggles)
    [11] = "Genera moscas al impacto",									-- Mulligan type tear (creates fly on hit)
    [12] = "Explosiva",													-- IPECAC type tear (explodes on hit)
    [13] = "Encanta a los enemigos",									-- Mom's Eyeshadow tear
    [14] = "Confunde a los enemigos",									-- Iron Bar tear
    [15] = "Suelta corazones al matar enemigos",						-- These tears cause enemy to drop hearts if killed (33% chance)
    [16] = "Orbita alrededor del jugador",								-- Used for Little Planet (orbit arounds the player)
    [17] = "Espera antes de moverse",									-- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
    [18] = "Se divide en 4 al impacto",									-- Splits into 4 smaller tears if it hits the ground
    [19] = "Rebota al impacto",											-- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
    [20] = "Asusta a los enemigos",										-- Mom's Perfume type tear of fear (fear on contact)
    [21] = "Se encoge al moverse",										-- Proptosis tears start large and shrink
    [22] = "Incendia a los enemigos",									-- Fire Mind tears cause Burn effect on enemies
    [23] = "Atrae recolectables y enemigos",							-- Attracts enemies and pickups
    [24] = "Empuja al enemigo",											-- Tear impact pushes enemies back further
    [25] = "Pulsante",													-- Makes the tear pulse
    [26] = "Viaja en espiral",											-- Makes the tear path spiral
    [27] = "Ovalada",													-- Makes the tear oval in the direction of travel
    [28] = "Bomba triste",												-- Used by Bombs (Sad Bomb)
    [29] = "Bomba de trasero",											-- Used by Bombs (Butt Bomb)
    [30] = "Viaja en angulo recto",										-- Used for Hook Worm
    [31] = "Aura que inflige daño",										-- Used for GodHead (they will have a glow around them)
    [32] = "Ralentiza y cubre de negro a los enemigos",					-- Used for Gish player tears (to color enemy black on slowing)
    [33] = "Genera fluido verde al impacto",							-- Mysterious Liquid tears spawn damaging green creep when hit
    [34] = "Bloquea proyectiles enemigos",								-- Lost Contact tears, block enemy projectiles
    [35] = "Bomba de brillos",											-- Used by Bombs (Glitter Bomb)
    [36] = "Bomba de dispersión",										-- Used for Scatter bombs
    [37] = "Se pega a los enemigos",									-- Used for Sticky bombs and Explosivo tears
    [38] = "Circula por la pantalla",									-- Tears loop around the screen
    [39] = "Genera un rayo de luz al impacto",							-- Create damaging light beam on hit
    [40] = "Genera una moneda al impacto",								-- Used by Bumbo, spawns a coin when tear hits
    [41] = "Genera corazones negros al matar enemigos",					-- Enemy drops a black hp when dies
    [42] = "Rayo tractor",												-- Tear with this flag will follow parent player's beam
    [43] = "Encoje a los enemigos",										-- God's flesh flag to minimize enemies
    [44] = "Genera una moneda al impacto",								-- Greed coin tears that has a chance to generate a coin when hit
    [45] = "Bomba cruz",												-- Bomber Boy
    [46] = "Movimiento en espiral grande",								-- Ouroboros Worm, big radius oscilating tears
    [47] = "Confunde a los enemigos",									-- Glaucoma tears, permanently confuses enemies
    [48] = "Se pega a los enemigos",									-- Booger tears, stick and do damage over time
    [49] = "Genera arañas o moscas al impacto",							-- Egg tears, leave creep and spawns spiders or flies
    [50] = "Puede romper rocas al impacto",								-- Sulfuric Acid tears, can break grid entities
    [51] = "Genera 1-2 fragmentos de hueso al matar enemigos",			-- Bone tears, splits in 2
    [52] = "Perforante + duplica su daño y teledirigida tras impactar",	-- Belial tears, piecing tears gets double damage + homing
    [53] = "Convierte los enemigos en oro",								-- Midas touch tears
    [54] = "Se dispersa en 10 lagrimas al impacto",						-- Needle tears
    [55] = "Libera rayos al impactar",									-- Jacobs ladder tears
    [56] = "Invoca una mano de big horn al impacto",					-- Little Horn tears
    [57] = "Conectada por electicidad",									-- Technology Zero
    [58] = "Rebota en las lágrimas",									-- Pop!
    [59] = "Absorbe lágrimas",											-- Hungry Tears
    [60] = "Genera un rayo sobre si misma",								-- Trisagion, generates a laser on top of the tear
    [61] = "Rebota en el suelo",										-- Flat Stone
    [62] = "Se dispersa al impactar",									-- Haemolacria
    [63] = "Deja un rastro de fluido",									-- Bob's Bladder
    [64] = "Empuja y confunde a los enemigos",							-- Knockout Drops
    [65] = "Matar a un enemigo lo congela",								-- Uranus
    [66] = "Atrae a enemigos y recolectables",							-- Lodestone
    [67] = "Los enemigos atacarán al enemigo afectado",					-- Rotten Tomato
    [68] = "Puedes controlar su dirección",								-- Eye of the Occult
    [69] = "Orbita alrededor del jugador",								-- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
    [70] = "Destruye rocas",											-- Rock tears, chance to break rocks, deal extra damage to rock type enemies
    [71] = "Viaja en angulo recto",										-- Brain Worm, tears turn and go horizontally when moving past an enemy
    [72] = "Bomba de sangre",											-- Blood Bombs, leave blood creep on the ground
    [73] = "Transforma al enemigo en caca",								-- E. Coli tears, turn enemies into poop
    [74] = "Los enemigos sueltan una moneda al morir",					-- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
    [75] = "Bomba de azufre",											-- Brimstone Bombs, explosion creates a brimstone cross
    [76] = "Genera un agujero negro al impactar",						-- Rift tears, creates a black hole on impact
    [77] = "Se pega al enemigo y se divide al matar",					-- Spore tears, stick to enemies and multiply on enemy death
    [78] = "Bomba fantasma",											-- Ghost bombs
    [79] = "Genera una carta al matar enemigos",						-- Killed enemies will drop a random tarot card
    [80] = "Genera una runa al matar enemigos",							-- Killed enemies will drop a random rune
    [81] = "Teletransporta a los enemgos al impacto",					-- Hit enemies will teleport to a different part of the room
    [82] = "Reduce su velocidad con el tiempo",							-- Decelerate over time
    [83] = "Aumenta su velocidad con el tiempo",						-- Accelerate over time
    [104] = "Rebota en las paredes",									-- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
	[106] = "Inflige daño extra y causa sangrado por detrás",			-- Deals extra damage from behind and inflicts bleeding
}

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
-- Kept in for backwards compatibility
EID.descriptions[languageCode].abyssSynergies = {}

-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 3}, -- The Book of Belial
	[59] = {2, 3}, -- The Book of Belial (Birthright)
	[83] = {" medio", "1"}, -- The Nail
	[263] = "Se activa 2 veces", -- Clear Rune
	[283] = {1, 2, "recolectable", "{{CR}}recolectables"}, -- D100
	[285] = {"a todos", "2 veces {{CR}}a todos"}, -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, " corazón", " {{CR}}corazones", 1, 2, "contenedor", "{{CR}}contenedores"}, -- Converter
	[323] = "Duplica el daño de las lagrimas", -- Isaac's Tears
	[386] = "Incrementa la probabilidad de obstaculos raros", -- D12
	[485] = "25% de probabilidad de cuadruplicar, 75% de probabilidad de eliminar", -- Crooked Penny
	[489] = "Usa 2 veces el dado selecionado", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"Una Fortuna", "Dos {{CR}}Fortunas", "Un Corazón", "Dos {{CR}}Corazones", "Una Runa o Piedra", "Dos {{CR}}Runas o Piedras", "Una Carta", "Dos {{CR}}Cartas", "Un Trinket", "Dos {{CR}}Trinkets"}, -- Fortune Cookie
	[582] = "Se activa 2 veces", -- Wavy Cap
	[584] = "Invoca 2 fuegos", -- Book of Virtues
	[605] = {" un ", "familiar", " 2 ", "{{CR}}familiares"}, -- The Scooper
	[609] = {25, 44}, -- Eternal D6
	[611] = "Añade un grito adicional de una carga", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Cambia 2 veces instantaneamente#Util para alcanzár enemigos, pero no permite alcanzar objetos fuera de tu alcance", -- Stitches
	[639] = {1, 2, " corazón", " {{CR}}corazones"}, -- Yuck Heart
	[642] = "Se activa 2 veces", -- Magic Skin
	[650] = {" a ", " 2 ", "Ciruelita", "{{CR}}Ciruelitas"}, -- Plum Flute
	[685] = "Invoca el doble de llamas, pero solo cuenta como 1 uso", -- Jar of Wisps
	[687] = {" un ", " 2 ", "monstruo", "{{CR}}monstruos"}, -- Friend Finder
	[704] = "Dura 10 segundos, pero matar a un enemigo limita el tiempo restante a 5 segundos, maximo", -- Berserk!
	[705] = {1, 2}, -- Dark Arts
	[712] = {" un ", " 2 ", "fantasma orbital", "{{CR}}fantasmas orbitales"}, -- Lemegeton
	[713] = {"medio corazón", "un corazón", "un familiar", "2 {{CR}}familiares"}, -- Sumptorium
	[719] = {" un ", " 2 ", "objeto o recolectable", "{{CR}}objetos o recolectables"}, -- Keeper's Box
	[720] = "Genera una caca junto al recolectable", -- Everything Jar
	[722] = "Encadena a 2 enemigos#Si solo hay un enemigo, lo encadena por 10 segundos#Usar Anima Sola nuevamente libera al enemigo más cercano", -- Anima Sola
	[723] = {"un", "dos"}, -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

-- Effect of BFFS!/Hive Mind on Familiars
local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7-8", "6"}, -- The Relic
	["5.100.107"] = {23.5, 47}, -- The Pinking Shears
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.178"] = {7, 14, "Genera una llama azul en donde aterriza"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Dispara lágrimas adicionales en direcciones aleatorias y deja un gran charco de fluido", -- Isaac's Heart
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.360"] = {75, 150, 100, 200}, -- Incubus (+ Lilith exception)
	["5.100.365"] = {30, 60}, -- Lost Fly
	["5.100.384"] = {"5-20", "10-40"}, -- Lil Gurdy
	["5.100.389"] = {"7-8", "6"}, -- Rune Bag
	["5.100.467"] = {10, 20}, -- Finger!
	["5.100.468"] = {75, 150}, -- Shade
	["5.100.491"] = {"7", "6"}, -- Acid Baby
	["5.100.500"] = {"7-8", "6"}, -- Sack of Sacks
	["5.100.504"] = {3.5, 7}, -- Brown Nugget
	["5.100.508"] = {1.5, 3}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 20, 40}, -- Bloodshot Eye
	
	["5.100.565"] = "Duplica su daño en su forma amistosa", -- Blood Puppy
	["5.100.569"] = "Otorga daño y velocidad adicional al activarse", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Book of Virtues
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "una ola de rocas", "4 {{CR}}olas de rocas", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Otorga un escudo de Manto Sagrado para el Alma Perdida", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "Al usarse, dispara 8 lágrimas desde tu posición", -- Stitches
	["5.100.645"] = {3.5, 7}, -- Tinytoma
	["5.100.649"] = {3, 6, 2, 4}, -- Fruity Plum
	["5.100.650"] = "Duplica el daño por contacto", -- Plum Flute
	["5.100.652"] = {17.5, 35}, -- Cube Baby
	["5.100.655"] = {10.5, 21, "Bonificaciones de BFF! desactivadas mientras Girar para Ganar este activo"}, -- Spin to Win
	["5.100.679"] = {52.5, 105}, -- Lil Abaddon
	["5.100.681"] = "Duplica el daño", -- Lil Portal
	["5.100.682"] = {8, 16}, -- Worm Friend
	["5.100.685"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Jar of Wisps
	["5.100.698"] = {37.5, 75}, -- Twisted Pair
	["5.100.702"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Vengeful Spirit
	["5.100.706"] = "Incrementa un 25% el daño de las langostas", -- Abyss
	["5.100.712"] = "Duplica el daño por contacto de los orbitales", -- Lemegeton
	["5.100.713"] = "Duplica el daño de los coágulos", -- Sumptorium
	["5.100.728"] = {75, 150, 100, 200}, -- Gello (+ Lilith exception)
	
	["5.300.96"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Soul of Bethany
	["5.350.142"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Beth's Faith
	["5.350.182"] = "Duplica el daño de lágrimas y por contacto de los fuegos", -- Beth's Essence
	["5.350.176"] = "Duplica el daño de los coágulos", -- Lil Clot
	["5.350.186"] = "Incrementa un 25% el daño de las langostas", -- Apollyon's Best Friend
	["Tainted Lilith"] = "Duplica el daño de las lágrimas de Gello", -- Gello (for BFFS pedestal)
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Gusano Ondulante", "↑ {{Tears}} Lágrimas +0.4#Lágrimas espectrales#Las lágrimas se mueven en ondas"}, -- Wiggle Worm
	[11] = {"11", "Gusano Circular", "↑ {{Tears}} Lágrimas +0.47#Lágrimas espectrales#Las lágrimas se mueven en espiral a gran velocidad"}, -- Ring Worm
	[14] = {"14", "Callo", "Otorga inmunidad a las espinas de suelo y al fluido#{{Warning}} No previene el daño al tocar las espinas especiales en {{SacrificeRoom}} la sala de Sacrificio y {{Collectible692}} la sala del Diablo"}, -- Callus
	[15] = {"15", "Roca de la suerte", "{{Coin}} 33% de probabilidad de generar monedas al destruir rocas"}, -- Lucky Rock
	[16] = {"16", "Uña del pie de Mamá", "El Pie de Mamá caerá en un lugar aleatorio de la habitación cada 20 segundos"}, -- Mom's Toenail
	[19] = {"19", "Clip de Papel", "{{GoldenChest}} Permite abrir los cofres dorados sin usar llaves#{{MegaChest}} Los mega cofres seguirán requeriendo llaves para abrirse"}, -- Paper Clip
	[24] = {"24", "Moneda de Trasero", "{{Coin}} 20% de probabilidad de generar una moneda al destruir una caca#Soltarás un pedo al recoger una moneda#{{Poison}} Los pedos empujan y envenenan a los enemigos"}, -- Butt Penny
	[25] = {"25", "Dulce misterioso", "Generas una caca o sueltas un pedo cada 30 segundos#Los pedos infligen 6 de daño y empujan a los proyectiles"}, -- Mysterious Candy
	[26] = {"26", "Gusano Cuadrado", "↑ {{Tears}} Lágrimas +0.4#↑ {{Range}} Alcance +1.5#Lágrimas espectrales#Las lágrimas se mueven en ángulos"}, -- Hook Worm
	[32] = {"32", "Monguis", "25% de probabilidad de activar un efecto de hongo aleatorio para la habitación actual"}, -- Liberty Cap
	[33] = {"33", "Cordón umbilical", "Al tener medio o ningún corazón rojo:#{{Collectible100}} Otorga un pequeño Steven#{{Collectible318}} 30% de probabilidad de otorgar un familiar Géminis al recibir daño#{{Luck}} 100% de probabilidad con 35 de suerte"}, -- Umbilical Cord
	[39] = {"39", "Cáncer", "↑ {{Tears}} Lágrimas +1"}, -- Cancer
	[48] = {"48", "Una Página Faltante", "Al recibir daño, 5% de probabilidad de infligir 80 de daño a todos los enemigos en la habitación#{{BlackHeart}} Los corazones negros y los efectos similares al Necronomicon reciben +40 de daño extra"}, -- A Missing Page
	[49] = {"49", "Moneda Sangrienta", "{{HalfHeart}} 25% de probabilidad de generar medio corazón al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor"}, -- Bloody Penny
	[50] = {"50", "Moneda Quemada", "{{Bomb}} 25% de probabilidad de generar una bomba al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor"}, -- Burnt Penny
	[51] = {"51", "Moneda Plana", "{{Key}} 25% de probabilidad de generar una llave al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor"}, -- Flat Penny
	[52] = {"52", "Moneda Falsificada", "{{Coin}} 50% de probabilidad de incrementar +1 el valor de las monedas al recogerlas#Mayor probabilidad al recoger monedas de mayor valor"}, -- Counterfeit Penny
	[61] = {"61", "La Mano izquierda", "{{RedChest}} Reemplaza todos los cofres por cofres rojos#No convierte cofres que ya han sido generados"}, -- La Mano izquierda
	[63] = {"63", "Tijeras de Seguridad", "{{Bomb}} Convierte las bombas troll en bombas recolectables#Permite recoger Giga Bombas"}, -- Safety Scissors
	[65] = {"65", "Gusano Estirado", "↑ {{Range}} Alcance +3"}, -- Tape Worm
	[66] = {"66", "Gusano Perezoso", "↓ {{Shotspeed}} Vel. de disparo -0.5"}, -- Lazy Worm
	[67] = {"67", "Dado Roto", "Recibir daño tiene un 50% de probabilidad de activar uno de los siguientes efectos:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Polaroid Desvanecida", "Te camufla de forma aleatoria#{{Confusion}} Confunde a los enemigos#Puede usarse para abrir una \"Puerta Extraña\" en las \"Profundidades II\""}, -- Faded Polaroid
	[80] = {"80", "Pluma Negra", "↑ {{Damage}} Daño +0.5 por cada objeto \"malvado\" que tengas"}, -- Black Feather
	[90] = {"90", "Detonador café", "La caca explota al ser destruida, infligiendo 100 de daño#No afecta a las cacas rojas"}, -- Brown Cap
	[92] = {"92", "Corona Quebrada", "↑ Multiplica las estadisticas x1.2 si se encuentran por encima del valor base"}, -- Cracked Crown
	[96] = {"96", "Gusano Ouroboros", "↑ {{Tears}} Lágrimas +0.4#↑ {{Range}} Alcance +1.5#Lágrimas espectrales#Probabilidad de disparar lágrimas teledirigidas#{{Luck}} 100% de probabilidad con 9 de suerte#Las lágrimas se mueven rapidamente en espiral"}, -- Ouroboros Worm
	[97] = {"97", "Angina", "Recibir daño 6-12 veces genera un familiar que bloquea proyectiles#Limite de 2 familiares"}, -- Tonsil
	[98] = {"98", "Duende de Naríz", "5% de probabilidad de disparar lágrimas de moco#{{Damage}} Los mocos infligen tu daño una vez cada segundo#Los mocos se pegan durante 10 segundos#50% de probabilidad de que los mocos sean teledirigidos"}, -- Nose Goblin
	[100] = {"100", "Bombilla Vibrante", "Otorga al tener un objeto activo cargado:#↑ {{Speed}} Velocidad +0.25#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.75#↑ {{Shotspeed}} Vel. de lágrimas +0.1#↑ {{Luck}} Suerte +1"}, -- Vibrant Bulb
	[101] = {"101", "Bombilla Muerta", "Otorga al tener un objeto activo descargado:#↑ {{Speed}} Velocidad +0.5#↑ {{Tears}} Lágrimas +0.5#↑ {{Damage}} Daño +1.5#↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.3#↑ {{Luck}} Suerte +2"}, -- Dim Bulb
	[107] = {"107", "Corazón de Cuervo", "{{Heart}} Los corazones rojos recibirán el daño antes que los de alma o negros#{{Warning}} El daño a corazones rojos reduce la probabilidad de encontrar salas del Diablo/Ángel"}, -- Crow Heart
	[110] = {"110", "Dólar de Plata", "{{Shop}} Las tiendas aparecerán en el Útero y en el Cadaver"}, -- Silver Dollar
	[111] = {"111", "Corona Sangrienta", "{{TreasureRoom}} Las salas del tesoro aparecerán en el Útero y en el Cadaver"}, -- Bloody Crown
	[119] = {"119", "Célula madre", "{{HealingRed}} Cura la mitad de tus corazones rojos/de hueso al entrar a un nuevo piso#{{HealingRed}} Cura medio corazón como mínimo"}, -- Stem Cell
	[128] = {"128", "Hueso del Dedo", "{{EmptyBoneHeart}} 4% de probabilidad de obtener un corazón de hueso al recibir daño"}, -- Finger Bone
	[129] = {"129", "Rompemandíbulas", "{{Damage}} 10% de probabilidad de disparar dientes#Los dientes infligen 3.2 veces tu daño#{{Luck}} 100% de probabilidad con 9 de suerte"}, -- Jawbreaker
	[130] = {"130", "Bolígrafo mordido", "{{Slow}} 10% de probabilidad de disparar lágrimas ralentizantes#{{Luck}} 100% de probabilidad con 18 de suerte"}, -- Chewed Pen
	[131] = {"131", "Moneda bendecida", "{{HalfSoulHeart}} 17% de probabilidad de generar medio corazón de alma al recoger monedas#Mayor probabilidad al recoger monedas de mayor valor"}, -- Blessed Penny
	[132] = {"132", "Jeringa rota", "25% de probabilidad de activar un efecto de jeringa aleatorio por habitación"}, -- Broken Syringe
	[133] = {"133", "Mecha corta", "{{Bomb}} Las bombas explotarán más rápido"}, -- Short Fuse
	[134] = {"134", "Frijol Gigante", "Aumenta el tamaño de los pedos"}, -- Gigante Bean
	[135] = {"135", "Un encendedor", "{{Burning}} 20% de probabilidad de incendiar enemigos aleatorios al entrar en una habitación"}, -- A Lighter
	[136] = {"136", "Candado roto", "Las puertas, candados y cofres dorados se pueden abrir con explosiones#También puede abrir una \"Puerta Extraña\" en las \"Profundidades II\""}, -- Broken Padlock
	[137] = {"137", "Nomeolvides", "Al bajar a una nueva planta, se generan hasta cuatro recolectables no obtenidos de la planta anterior"}, -- Myosotis
	[138] = {"138", "'M", "Usar un objeto activo lo reemplaza por otro"}, -- 'M
	[139] = {"139", "Talismán gota", "{{Luck}} Suerte +4 para los efectos de lágrimas basados en la suerte"}, -- Teardrop Charm
	[140] = {"140", "Manzana de Sodoma", "{{Heart}} Recoger corazones rojos puede convertirlos en arañas azules#Funciona incluso si tienes vida al completo#Puede convertir corazones necesarios para curarte"}, -- Apple of Sodom
	[141] = {"141", "Canción de cuna olvidada", "Duplica la velocidad de disparo de los familiares"}, -- Forgotten Lullaby
	[142] = {"142", "Fe de Beth", "{{Collectible584}} Al inicio de cada planta, genera 4 fuegos fatuos del Libro de virtudes"}, -- Beth's Faith
	[143] = {"143", "Condensador viejo", "Evita que el objeto activo se cargue al completar salas#{{Battery}} 20% de probabilidad de generar una batería al limpiar la habitación#{{Luck}} 33% de probabilidad con 5 de suerte"}, -- Old Capacitor
	[144] = {"144", "Gusano de cerebro", "Las lágrimas giran en ángulos de 90 grados hacia los enemigos que no haya logrado golpear"}, -- Brain Worm
	[145] = {"145", "Perfección", "↑ {{Luck}} Suerte +10#Se destruye si recibes daño"}, -- Perfection
	[146] = {"146", "Corona del diablo", "{{RedTreasureRoom}} Las habitaciones del tesoro ofrecen un pacto del Diablo en lugar de un objeto"}, -- Devil's Crown
	[147] = {"147", "Moneda recargada", "{{Battery}} Recoger monedas tiene un 17% de probabilidad de agregar una carga al objeto activo#Mayor probabilidad al recoger monedas de mayor valor"}, -- Charged Penny
	[148] = {"148", "Collar de la amistad", "Todos tus familiares orbitarán a tu alrededor"}, -- Friendship Necklace
	[149] = {"149", "Botón de pánico", "Activa tu objeto activo justo antes de recibir daño si está cargado"}, -- Panic Button
	[150] = {"150", "Llave azul", "Permite abrir las habitaciones que requieren llaves gratis, pero te enviará a una sala similar a la de Hush#Al completar esta habitación, te permite acceder a la habitación bloqueada"}, -- Blue Key
	[151] = {"151", "Lima", "Retrae todas las espinas, volviéndolas inofensivas#{{CursedRoom}} Afecta a las salas malditas, los cofres trampa y cualquier obstaculo con espinas"}, -- Flat File
	[152] = {"152", "Lente de telescopio", "{{PlanetariumChance}} +9% de probabilidad de planetario#+15% Adicionál si aún no has entrado en uno#{{Planetarium}} Los planetarios ahora aparecen en el Útero y en el Cadaver"}, -- Telescope Lens
	[153] = {"153", "Mechón de Mamá", "25% de probabilidad de otorgar el efecto de un objeto de Mamá aleatorio por habitación"}, -- Mom's Lock
	[154] = {"154", "Bolsa de dados", "50% de probabilidad por habitación de otorga un consumible temporal de dado#El dado desaparece al cambiar de habitación#El dado no ocupa un lugar de consumible"}, -- Dice Bag
	[155] = {"155", "Corona sagrada", "Genera una {{TreasureRoom}} habitación del tesoro y una {{Shop}} tienda en la Catedral"}, -- Holy Crown
	[156] = {"156", "Beso de mamá", "{{Heart}} +1 Contenedor de corazón al tenerlo"}, -- Mother's Kiss
	[157] = {"157", "Carta rota", "Cada 15 disparos, suela una lágrima de {{Collectible149}} Ipecac + una lágrima de {{Collectible5}} Mi Reflejo de alto alcance"}, -- Torn Card
	[158] = {"158", "Bolsillo roto", "Suelta 2 de tus monedas, llaves y bombas al recibir daño#Los recolectables pueden ser reemplazados por variantes de mayor valor"}, -- Torn Pocket
	[159] = {"159", "Llave dorada", "{{Key}} +1 Llave al recoger#{{GoldenChest}} Reemplaza todos los cofres por cofres dorados (excepto mega cofres y cofres viejos)#{{GoldenChest}} Los cofres dorados pueden contener cartas, pildoras o trinkets extra"}, -- Gilded Key
	[160] = {"160", "Bolsa de la suerte", "{{GrabBag}} Genera un saco al cambiar de piso"}, -- Lucky Sack
	[161] = {"161", "Corona maldita", "Las {{Shop}} tiendas y {{TreasureRoom}} salas de tesoro aparecerán en Sheol"}, -- Wicked Crown
	[162] = {"162", "Muñon de Azazel", "{{Player7}} 50% de probabilidad de convertirte en Azazel al limpiar una habitación#{{Timer}} El efecto dura hasta completar y salir de otra habitación"}, --  Azazel's Stump
	[163] = {"163", "Pedacito de popó", "Vuelve amistosas a todas las caquitas enemigas#Genera una caquita amistosa al limpiar una habitación"}, -- Dingle Berry
	[164] = {"164", "Fulminantes", "{{Bomb}} Genera una bomba adicional por cada bomba colocada"}, -- Ring Cap
	[165] = {"165", "¡Nah!", "Desde el Útero en adelante, cambia las monedas y llaves que se generan por una bomba, corazón, pildora, carta, trinket, batería, o mosca enemiga"}, -- Nuh Uh!
	[166] = {"166", "Arcilla de modelar", "50% de probabilidad de otorgar el efecto de un Objeto pasivo aleatorio en cada habitación"}, -- Modeling Clay
	[167] = {"167", "Hueso pulido", "25% de probabilidad de generar un hueso amistoso al limpiar una habitación"}, -- Polished Bone
	[168] = {"168", "Corazón hueco", "{{EmptyBoneHeart}} +1 corazón de hueso al comenzar un nuevo piso"}, -- Hollow Heart
	[169] = {"169", "Dibujo de niño", "{{Guppy}} Al tenerlo, cuenta como 1 objeto para la transformación de Guppy"}, -- Kid's Drawing
	[170] = {"170", "Llave de cristal", "{{Collectible580}} 33% de probabilidad de crear una habitación de Llave Roja al limpiar una habitación#Menor probabilidad al estar en una habitación de Llave Roja"}, -- Crystal Key
	[171] = {"171", "Regateo de Keeper", "{{DevilRoom}} 50% de probabilidad de que los pactos del diablo cuesten monedas en lugar de corazones"}, -- Keeper's Bargain
	[172] = {"172", "Moneda maldita", "Recoger una moneda te teletransporta a una habitación aleatoria#Puede teletransportarte a habitaciones secretas"}, -- Cursed Penny
	[173] = {"173", "Tu alma", "{{DevilRoom}} Permite tomar objetos de pacto del Diablo gratis#{{Warning}} Tomar objetos de pacto aún afectará las probabilidades de pactos de Ángel"}, -- Your Soul
	[174] = {"174", "Imán de número", "{{DevilChance}} +10% de probabilidad de pacto del diablo#Evita que Krampus aparezca en salas del Diáblo#Las habitaciónes del Diáblo seran mejoradas con mas pactos, corazones negros y enemigos"}, -- Number Magnet
	[175] = {"175", "Llave extraña", "Abre el pasaje hacia ??? (Vientre azul) independientemente del tiempo#{{Collectible297}} Usar la Caja de Pandora consume la llave y genera 6 objetos de grupos aleatorias"}, -- Strange Key
	[176] = {"176", "Mini coágulo", "Genera un coágulo familiar que imita tus movimientos#Copia tus estadisticas, tus efectos de lágrima y posee un 35% de tu daño#Se regenera cada habitación"}, -- Lil Clot
	[177] = {"177", "Tatuaje temporal", "{{Chest}} Genera un cofre al completar una {{ChallengeRoom}} sala de desafío#{{BossRushRoom}} Genera un objeto al completar una sala de desafíos de jefe"}, -- Temporary Tattoo
	[178] = {"178", "M80 tragado", "50% de probabilidad de explotar al recibir daño#No destruye máquinas de donación de sangre ni confesionarios, pero suelta recolectables como si lo hubiera hecho"}, -- Swallowed M80
	[179] = {"179", "RC Remoto", "Los familiares imitan tus movimientos en lugar de seguirte#Soltar el trinket hará que se queden en el último lugar que estaban"}, -- RC Remote
	[180] = {"180", "Alma encontrada", "Familiar que imita tus movimientos y dispara lágrimas espectrales#Posee tus estadisticas, efectos e inflige el 50% de tu daño#Muere de un golpe#Reaparece tras cada piso"}, -- Found Soul
	[181] = {"181", "Paquete de expansión", "Usar el objeto activo, tambien activará el efecto de un objeto activo aleatorio de 1-2 cargas"}, -- Expansion Pack
	[182] = {"182", "Esencia de Beth", "Entrar a una {{AngelRoom}} habitación de ángel generará 5 fuegos fatuos#25% de probabilidad de generar un fuego al dar dinero a los mendigos"}, -- Beth's Essence
	[183] = {"183", "Los gemelos", "50% de probabilidad de añadir o duplicar un familiar por habitación#Otorga un {{Collectible8}} Hermano Bobby o una {{Collectible67}} Hermana Maggy si no tienes familiares"}, -- The Twins
	[184] = {"184", "Papeles de adopción", "{{Shop}} Las tiendas venden familiares por 10 monedas"}, -- Adoption Papers
	[185] = {"185", "Pata de grillo", "17% de probabilidad de generar una langosta aleatoria al matar a un enemigo"}, -- Cricket Leg
	[186] = {"186", "Mejor amigo de Apolión", "{{Collectible706}} Otorga 1 langosta de Abismo"}, -- Apollyon's Best Friend
	[187] = {"187", "Lentes rotos", "{{TreasureRoom}} 50% de probabilidad de añadir un objeto adicional misterioso a la habitación del tesoro#50% de probabilidad de revelar el objeto misterioso en la ruta alternativa"}, -- Broken Glasses
	[188] = {"188", "Cubo de hielo", "20% de probabilidad de petrificar a enemigos aleatorios al entrar en una habitación#{{Freezing}} Matar a un enemigo petrificado lo congela"}, -- Ice Cube
	[189] = {"189", "Sello de Baphomet", "Matar a un enemigo otorga un escudo durante un segundo#Matar más enemigos aumenta la duración del escudo"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "¡Efecto duplicado!"
EID.descriptions[languageCode].tripledTrinket = "¡Efecto triplicado!"
EID.descriptions[languageCode].quadrupledTrinket = "¡Efecto cuadruplicado!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Usar un objeto activo te teletransporta hacia {{ColorGold}}una habitación sin completar{{CR}}#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Purple Heart 
	[5] = { "Duplica", "Cuadruplica" },
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "las monedas", "{{CR}}los {{ColorGold}}recolectables" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Se añade el rosario a todos los grupos de objetos" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Probabilidad de tomar los objetos en la tienda de forma gratuita{{CR}}#Probabilidad de convertirse en una {{Trinket13}} Tarjeta de crédito normal tras cada compra" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "{{Coin}} Las rocas podrán soltar 2 monedas", "{{Coin}} Las rocas podrán soltar 2 monedas", "{{Coin}} Las rocas podrán soltar monedas" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "caca", "caca dorada" },
	-- Golden Mysterious Candy makes Golden Poop
	[46] = { "{{HalfHeart}} Medio corazón", "{{Heart}} Un corazón", "{{Heart}} Un corazón y medio" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{Warning}} Este trinket no puede ser soltado#Solo puedes deshacerte de él con {{Trinket41}} La cerilla o tragándolo",
		"{{HealingRed}} Cura {{ColorGold}}3{{CR}} Corazones rojos al entrar a una {{BossRoom}} Sala del Jefe#{{CR}}Reduce un {{ColorGold}}30{{CR}}% la salud del jefe#{{ColorGold}}Puede ser soltado",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "{{ArrowUp}} Duplíca los aumentos de estadísticas", "Triplíca los aumentos de estadísticas", "Cuadruplíca los aumentos de estadísticas", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Duplica el efecto del trinket, de ser posible", "Triplica el efecto del trinket, de ser posible", "Cuadruplica el efecto del trinket, de ser posible", },
	-- NO!
	[88] = { "Evita que aparezcan objetos de calidad {{Quality0}}" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "{{GoldenChest}} Reemplaza todos los cofres (excepto los viejos y megacofres) con cofres dorados#Los cofres dorados pueden contener cartas, píldoras y trinkets extra" },
	-- The Twins
	[183] = { "Podrá copiar/otorgar 2 familiares", "Podrá copiar/otorgar 2 familiares", "Podrá copiar/otorgar 3 familiares" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData in this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
in their goldenTrinketEffects
]]

EID.descriptions[languageCode].goldenTrinketData = {
	-- Purple Heart
	[5] = {findReplace = true, mult = 2},
}

---------- Cards ----------

local repCards={
	[2] = {"2", "I - El Mago", "{{Timer}} Otorga durante la habitación actual:#↑ {{Range}} Alcance +3#Lágrimas teledirigidas"}, -- I - The Magician
	[12] = {"12", "XI - Fuerza", "{{Timer}} Otorga durante la habitación actual:#↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +0.3#↑ {{Damage}} Daño x0.5#↑ {{Range}} Alcance +2.5"}, -- XI - Strength
	[16] = {"16", "XV - El Diablo", "{{Timer}} Otorga durante la habitación actual:#↑ {{Damage}} Daño +2"}, -- XV - The Devil
	[18] = {"18", "XVII - Las Estrellas", "{{TreasureRoom}} Te teletransporta a la sala del tesoro#{{Planetarium}} Te llevará al planetario si se generó uno"}, -- XVII - The Stars
	[20] = {"20", "XIX - El Sol", "{{HealingRed}} Salud al maximo#Inflige 100 de daño a todos los enemigos#{{Timer}} Revela el mapa de la planta por completo (excepto las {{SuperSecretRoom}} Habitaciónes Super / {{UltraSecretRoom}} Ultra Secretas)#{{CurseDarkness}} Remueve la Maldición de Oscuridad"}, -- XIX - The Sun
	[21] = {"21", "XX - Juicio", "{{Beggar}} Genera un mendigo#{{DemonBeggar}} 33% de probabilidad de generar un mendigo demoníaco#2% de probabilidad de generar:#{{KeyBeggar}} Un mendigo de llaves#{{BombBeggar}} Un mendigo de bombas#{{BatteryBeggar}} Un mendigo de baterías#{{RottenBeggar}} Un mendigo podrido"}, -- XX - Judgement
	[22] = {"22", "XXI - El Mundo", "{{Timer}} Revela el mapa de la planta por completo (excepto las {{SuperSecretRoom}} Habitaciónes Super / {{UltraSecretRoom}} Ultra Secretas)"}, -- XXI - The World
	[27] = {"27", "Ás de Treboles", "{{Bomb}} Convierte todos los recolectables, cofres y enemigos no jefes en bombas aleatorias"}, -- Ace of Clubs
	[28] = {"28", "Ás de Diamantes", "{{Coin}} Convierte todos los recolectables, cofres y enemigos no jefes en monedas aleatorias"}, -- Ace of Diamonds
	[29] = {"29", "Ás de Espadas", "{{Key}} Convierte todos los recolectables, cofres y enemigos no jefes en llaves aleatorias"}, -- Ace of Spades
	[30] = {"30", "Ás de Corazones", "{{Heart}} Convierte todos los recolectables, cofres y enemigos no jefes en corazones aleatorios"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Genera una trampilla#{{LadderRoom}} Genera una mazmorra si se usa sobre un elemento decorativo"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Otorga invencibilidad por 20 segundos"}, -- Algiz
	[42] = {"42", "Carta del caos", "Usar la carta la lanza en tu direccion de movimiento#Mata a TODOS los enemigos al instante (Excepto Delirium y La Bestia)"}, -- Chaos Card
	[51] = {"51", "Carta sagrada", "{{HolyMantle}} Otorga un escudo de Manto Sagrado de un solo uso"}, -- Holy Card
	[52] = {"52", "Gran Crecimiento", "{{Timer}} Otorga durante la habitación actual:#↑ {{Damage}} Daño +7#↑ {{Range}} Alcance +3#Aumenta tu tamaño#Permite romper rocas al caminar sobre ellas"}, -- Huge Growth
	[55] = {"55", "Fragmento de runa", "{{Rune}} Activa el efecto de una runa aleatoria#El efecto es más débil que el original"}, -- Rune Shard
	[56] = {"56", "0 - ¿El Bufón?", "Deja caer tus corazones y recolectables al suelo#Te deja a medio corazón#Los recolectables pueden generarse como {{Collectible74}} Un Cuarto y {{Collectible19}} ¡Buum! si hay una cantidad suficiente"}, -- 0 - The Fool?
	[57] = {"57", "I - ¿El Mago?", "{{Timer}} Otorga un aura que repéle proyectiles y enemigos durante 60 segundos"}, -- I - The Magician?
	[58] = {"58", "II - ¿La Suma Sacerdotisa?", "{{Timer}} El Pie de Mamá tratará de pisarte por 60 segundos"}, -- II - The High Priestess?
	[59] = {"59", "III - ¿La Emperatriz?", "{{Timer}} Otorga durante 60 segundos:#↑ {{Heart}} +2 corazones rojos#↑ {{Tears}} Lágrimas +1.35#↓ {{Speed}} Velocidad -0.1"}, -- III - The Empress?
	[60] = {"60", "IV - ¿El Emperador?", "{{BossRoom}} Te teletransporta a una sala del jefe adicional#Derrotar al jefe otorga una recompensa#El jefe proviene de 2 plantas mas abajo de la actual"}, -- IV - The Emperor?
	[61] = {"61", "V - ¿El Hierofante?", "{{EmptyBoneHeart}} Genera 2 corazones de hueso"}, -- V - The Hierophant?
	[62] = {"62", "VI - ¿Los Enamorados?", "Genera un objeto del grupo de la sala actual#{{BrokenHeart}} Convierte 1 corazón rojo o 2 corazones de alma en un corazón roto"}, -- VI - The Lovers?
	[63] = {"63", "VII - ¿El Carruaje?", "{{Timer}} Otorga durante 10 segundos:#↑ {{Tears}} Lágrimas x4#Te convierte en una estatua invencible"}, -- VII - The Chariot?
	[64] = {"64", "VIII - ¿Justicia?", "{{GoldenChest}} Genera 2-4 cofres dorados"}, -- VIII - Justice?
	[65] = {"65", "IX - ¿El Ermitaño?", "{{Coin}} Convierte los recolectables y objetos de la habitación en monedas#El valor de las monedas es el mismo que su precio en la tienda#Genera una moneda si no hay nada que convertir"}, -- IX - The Hermit?
	[66] = {"66", "X - ¿La Rueda de la Fortuna?", "{{DiceRoom}} Activa un efecto aleatorio de la sala de dados"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - ¿Fuerza?", "{{Timer}} Los enemigos de la habitación se vuelven más {{Slow}} lentos y reciben el doble de daño durante 30 segundos"}, -- XI - Strength?
	[68] = {"68", "XII - ¿El Colgado?", "{{Timer}} Otorga durante 30 segundos:#↓ {{Speed}} velocidad -0.10#Disparo triple#{{Coin}} Los enemigos asesinados dejan caer monedas"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - ¿Muerte?", "{{Collectible545}} Activa el efecto del Libro de los Muertos#Genera entidades de hueso por cada enemigo eliminado en la habitación"}, -- XIII - Death?
	[70] = {"70", "XIV - ¿Templanza?", "{{Pill}} Consumes 5 píldoras aleatorias"}, -- XIV - Temperance?
	[71] = {"71", "XV - ¿El Diablo?", "{{Timer}} Otorga durante 60 segundos:#{{Collectible33}} Activa el efecto de La Biblia#{{Collectible390}} Genera un familiar Serafín#{{MomsHeart}} Mata al Pie de Mamá y al Corazón de Mamá de forma instantanea#{{Warning}} Te mata al usarlo contra Satán"}, -- XV - The Devil?
	[72] = {"72", "XVI - ¿La Torre?", "Genera 7 grupos de rocas y obstáculos aleatorios"}, -- XVI - The Tower?
	[73] = {"73", "XVII - ¿Las Estrellas?", "Elimina el objeto pasivo más antiguo#Genera 2 objetos aleatorios del grupo de la sala actual"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - ¿La Luna?", "{{UltraSecretRoom}} Te teletransporta a la sala ultrasecreta#{{Collectible580}} Genera un camino de vuelta con habitaciones rojas"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - ¿El Sol?", "{{Timer}} Otorga durante la planta actual:#↑ {{Damage}} Daño +1.5#Permite volar#Lágrimas espectrales#{{BoneHeart}} Convierte los contenedores de corazón en corazones de hueso (reversible)#{{CurseDarkness}} Otorga Maldición de Oscuridad"}, -- XIX - The Sun?
	[76] = {"76", "XX - ¿El Juicio?", "{{RestockMachine}} Genera una máquina de reabastecimiento"}, -- XX - Judgement?
	[77] = {"77", "XXI - ¿El Mundo?", "{{LadderRoom}} Genera una trampilla a una mazmorra"}, -- XXI - The World?
	[78] = {"78", "Llave Rota", "{{Collectible580}} Llave Roja de un solo uso"}, -- Cracked Key
	[79] = {"79", "Reina de Corazones", "{{Heart}} Genera 1-20 corazones rojos"}, -- Queen of Hearts
	[80] = {"80", "Comodín", "Copia el efecto del último recolectable activado: píldora, carta, runa, piedra de alma u objeto activo"}, -- Wild Card
	[81] = {"81", "Alma de Isaac", "Hace que los objetos en pedestal de la habitación alternen entre 2 objetos distintos"}, -- Soul of Isaac
	[82] = {"82", "Alma de Magdalena", "{{Timer}} Otorga durante la habitación actual:#{{HalfHeart}} Los enemigos sueltan medio corazón rojo al morir#Los corazones desaparecen tras 2 seconds"}, -- Soul of Magdalene
	[83] = {"83", "Alma de Caín", "Abre todas las puertas de la habitación#{{Collectible580}} Crea habitaciones rojas en cada pared"}, -- Soul of Cain
	[84] = {"84", "Alma de Judas", "Te convierte en un fantasma que puede atravesar enemigos y paralizarlos#Tras unos segundos, les ataca a todos"},
	[85] = {"85", "Alma de ???", "Suelta 8 pedos venenosos con creep marrón#Después deja un creep y 7 Bombas de Trasero#Quedarse en el creep otorga:#↑ {{Tears}} Lágrimas +1.35#↑ {{Damage}} Daño+1 "},
	[86] = {"86", "Alma de Eva", "14 familiares Dead Bird atacan a los enemigos# Dura en la habitación actual"},
	[87] = {"87", "Alma de Sansón", "Te convierte en Sansón berserker con ataque a melee durante 10 segundos#↑ +0.4 de velocidad#↑ Más lágrimas#↑ +3 de daño"},
	[88] = {"88", "Alma de Azazel", "Activa el efecto de {{Collectible441}} Mega Ráfaga durante 7.5 segundos"},
	[89] = {"89", "Alma de Lázaro", "Mueres y revives inmediatamente con medio corazón y unos segundos de invencibilidad#Se consume automáticamente al recibir daño fatal (como una vida adicional)"},
	[90] = {"90", "Alma de Edén", "Activa el efecto de D6 {{Collectible105}} y el de D20 {{Collectible166}}#El objeto cambiado usa grupos de objetos aleatorios"},
	[91] = {"91", "Alma del perdido", "{{Player10}} Te convierte en El Perdido en la habitación actual"},
	[92] = {"92", "Alma de Lilith", "Añade un familiar aleatorio"},
	[93] = {"93", "Alma de Keeper", "{{Coin}} Genera de 3 a 25 monedas aleatorias"},
	[94] = {"94", "Alma de Apolión", "Genera 15 langostas aleatorias"},
	[95] = {"95", "Alma del olvidado", "{{Player16}} Aparece El Olvidado como un segundo personaje en la habitación actual"},
	[96] = {"96", "Alma de Bethany", "{{Collectible584}} Genera 6 fuegos fatuos del Libro de las Virtudes con propiedades aleatorias"},
	[97] = {"97", "Alma de Jacob y Esaú", "{{Player20}} Aparece Esaú como un segundo personaje en la habitación actual"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "También otorga el efecto de {{Collectible34}} El libro de Belial", -- I - The Magician
	[3] = "Un segundo pie atacará en cuanto el primero lo haga", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} +1 Corazón de alma si el jefe aun no ha sido derrotado", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Genera {{ColorShinyPurple}}2{{CR}}{{UnknownHeart}} corazones, {{Coin}} monedas, {{Bomb}} bombas y {{Key}} llaves aleatorias"}, -- VIII - Justice
	[10] = "Evita que Codicia aparezca en las tiendas#Si ya se peleó contra Codicia, la tienda regresará a la normalidad", -- IX - The Hermit
	[11] = {" una ", " 2 ", "Máquina", "{{CR}}Maquinas","generar una", "{{CR}}de que una sea una"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" una ", " 2 ", "Máquina", "{{CR}}Maquinas", "mendigo demoníaco", "{{CR}}mendigos demoníacos"}, -- XIV - Temperance ( + Greed version)
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Si no se ha entrado a la sala del tesoro, esta tendrá 2 posibles opciones", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {"Genera un mendigo", "{{CR}}Genera {{ColorShinyPurple}}2{{CR}} mendigos", "generar ", "{{CR}}que uno sea ", "generar:", "{{CR}}que uno sea:"}, -- XX - Judgement
	[56] = "Sueltas tanto los recolectables como los 6 objetos mas recientes", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Añade 2 corazones rotos y genera 2 objetos", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Genera una {{Coin}} moneda adicional", -- IX - The Hermit?
	[66] = {" un ", " 2 ", "efecto", "{{CR}}efectos"}, -- X - Wheel of Fortune?
	[67] = {30, 60}, -- XI - Strength?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = "Elimina tus {{ColorShinyPurple}}2{{CR}} objetos pasivos más antiguos#Genera {{ColorShinyPurple}}4{{CR}} objetos aleatorios del grupo de la sala actual", -- XVII - The Stars?
	[76] = {" una ", " 2 ", "Máquina", "{{CR}}Maquinas"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Genera una Máquina", -- X - Wheel of Fortune
	[12] = "No duplica las mejoras de estadisticas", -- XI - Strength
	[14] = "Inflige 40 de daño", -- XIII - Death
	[15] = "Genera una Máquina", -- XIV - Temperance
	[16] = "Daño +2", -- XV - The Devil
	[20] = "Inflige 200 de daño", -- XIX - The Sun
	[21] = "Genera un mendigo", -- XX - Judgement
	[56] = "Suelta 3 objetos", -- 0 - The Fool?
	[64] = "Genera 2-7 cofres", -- VIII - Justice?
	[65] = "No genera una moneda adicional", -- IX - The Hermit?
	[66] = "Activa un efecto", -- X - Wheel of Fortune?
	[68] = "Dura 30 segundos", -- XII - The Hanged Man?
	[72] = "Genera 7 grupos", -- XVI - The Tower?
	[73] = "Remueve un objeto y genera 2", -- XVII - The Stars?
	[76] = "Genera una máquina", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Las bombas son llaves", "Intercambia el número de {{Bomb}} bombas y de {{Key}} llaves#También intercambia las bombas y llaves doradas"}, -- Bombs are Key
	[12] = {"11", "Menos Alcance", "↓ {{Range}} Alcance -1"}, -- Range Down
	[13] = {"12", "Más Alcance", "↑ {{Range}} Alcance +1.25"}, -- Range Up
	[38] = {"37", "¡Visión retro!", "{{Timer}} Pixela la pantalla durante 30 segundos"}, -- Retro Vision
	[42] = {"41", "Tengo mucho sueño...", "{{Slow}} Te ralentiza a ti y a todos los enemigos de la habitación"}, -- I'm Drowsy...
	[43] = {"42", "¡¡TENGO MUCHA ENERGÍA!!", "{{Timer}} Aumenta tu velocidad y la de todos los enemigos de la habitación#Reactiva el efecto tras 30 y 60 segundos"}, -- I'm Excited!!
	[48] = {"47", "Menos Vel. de lágrimas", "↓ {{Shotspeed}} Vel. de lágrimas -0.15"}, -- Shot speed Down
	[49] = {"48", "Más Vel. de lágrimas", "↑ {{Shotspeed}} Vel. de lágrimas +0.15"}, -- Shot speed Up
	[50] = {"49", "Píldora experimental", "↑ Aumenta una estadística aleatoria#↓ Disminuye una estadística aleatoria"}, -- Experimental Pill
	[9999] = {"", "Píldora dorada", "Efecto de píldora aleatorio#Probabilidad de destruirse tras cada uso"}, -- Golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Vaya pedo", "{{Poison}} Envenena toda la habitación"}, -- Bad Gas
	{"1", "Mal viaje", "{{Warning}} Te inflige 2 corazones de daño#Se vuelve una pildora de Salud Completa (+3 Corazones de Alma) al tener 1 corazón de salud o menos"}, -- Bad Trip
	{"2", "Bolas de acero", "{{SoulHeart}} +4 Corazones de Alma"}, -- Balls of Steel
	{"3", "Bombas son llaves", "Intercambia el número de {{Bomb}} bombas y de {{Key}} llaves#Aumenta el número de llaves y de bombas en un 50%#Las bombas y llaves doradas también se intercambian"}, -- Bombs are Key
	{"4", "Diarrea explosiva", "Genera enormes bombas troll teledirigidas en tu posición"}, -- Explosive Diarrhea
	{"5", "Salud completa", "{{SoulHeart}} +3 Corazones de Alma#{{HealingRed}} Vida al completo"}, -- Full Health
	{"6", "Menos vida", "↓ {{EmptyHeart}} -2 de Vida#Se vuelve una pildora de Mas Vida al tener 1 o menos contenedores de corazón"}, -- Health Down
	{"7", "Más vida", "↑ {{EmptyHeart}} +2 contenedores de corazón vacíos"}, -- Health Up
	{"8", "Encontre pildoras", "Sin efecto"}, -- I Found Pills
	{"9", "Pubertad", "Sin efecto#Consumir 3 te transforma en Adulto:#↑ {{Heart}} +1 de Vida"}, -- Puberty
	{"10", "Mosca bonita", "{{Collectible279}} Añade 1 Gran fan orbital#No hay límite máximo"}, -- Pretty Fly
	{"11", "Menos Alcance", "↓ {{Range}} Alcance -2"}, -- Range Down
	{"12", "Más Alcance", "↑ {{Range}} Alcance +2.5"}, -- Range Up
	{"13", "Menos velocidad", "↓ {{Speed}} Velocidad -0.24"}, -- Speed Down
	{"14", "Más velocidad", "↑ {{Speed}} Velocidad +0.3"}, -- Speed Up
	{"15", "Menos lágrimas", "↓ {{Tears}} Lágrimas -0.56"}, -- Tears Down
	{"16", "Más lágrimas", "↑ {{Tears}} Lágrimas +0.70"}, -- Tears Up
	{"17", "Menos suerte", "↓ {{Luck}} Suerte -2"}, -- Luck Down
	{"18", "Más suerte", "↑ {{Luck}} Suerte +2"}, -- Luck Up
	{"19", "¡Teletranspildora!", "Te teletransporta a una habitación aleatoria"}, -- Telepills
	{"20", "¡48 horas de energía!", "{{Battery}} Recarga por completo el objeto activo#{{Battery}} Deja caer 3-4 baterías"}, -- 48 Hour Energy!
	{"21", "Hematémesis", "{{EmptyHeart}} Drena todos los contenedores de corazón menos uno#{{Heart}} Genera 1-4 corazones rojos"}, -- TODO
	{"22", "Parálisis", "No puedes moverte ni disparar durante 4 segundos"}, -- Paralysis
	{"23", "¡Puedo ver para siempre!", "{{SecretRoom}} Abre las entradas de las habitaciones secretas de la planta actual#{{Card22}} Muestra el mapa completo"}, -- I can see forever!
	{"24", "Feromonas", "{{Charm}} Convierte a los enemigos de la habitación actual en amigos"}, -- Pheromones
	{"25", "Amnesia", "{{CurseLost}} Oculta el mapa de esta planta"}, -- Amnesia
	{"26", "Fiesta de limonada", "Genera un charco de fluido que cubre el suelo y daña a los enemigos"}, -- Lemon Party
	{"27", "¿Eres un mago?", "{{Timer}} Disparas en diagonal durante 60 segundos"}, -- R U a Wizard?
	{"28", "¡Percs!", "{{Timer}} Reduce todo daño recibido en la habitación actual a medio corazón"}, -- Percs!
	{"29", "¡Adicto!", "{{Timer}} Aumenta todo daño recibido en la habitación actual a un corazón"}, -- Addicted!
	{"30", "Relaxante", "Genera una caca detras de tí durante 10 segundos"}, -- Re-Lax
	{"31", "???", "{{CurseMaze}} Maldición del Laberinto durante todo el piso"}, -- ???
	{"32", "Una te hace grande", "Te haces mucho más grande#No afecta a la hitbox"}, -- One makes you larger
	{"33", "Una te hace pequeño", "Te haces mucho más pequeño#Tu hitbox se hace más pequeña"}, -- One makes you small
	{"34", "¡Infestado!", "Genera 2 arañas azules por cada caca de la habitación"}, -- Infested!
	{"35", "¿Infestado?", "Genera 2 arañas azules por cada enemigo de la habitación#Genera 2-6 arañas azules si no hay enemigos en la habitación"}, -- Infested?
	{"36", "Píldora de visión", "{{Timer}} Otorga durante la habitación:#↑ {{Damage}} +7 de Daño#↑ {{Range}} +3 de Rango#{{Timer}} Recibes por 6.5 segundos:#Invincibilidad#Isaac no puede disparar pero infliges 40 de daño por contacto cada segundo#{{HealingRed}} Probabilidad de curar medio corazón rojo al matar un enemigo#{{Fear}} Asusta a todos los enemigos en la habitación"}, -- Power Pill!
	{"37", "¡Visión retro!", "{{Timer}} Pixela la pantalla durante 30 segundos"}, -- Retro Vision
	{"38", "¡Amigos hasta el fin!", "Invoca 6 moscas azules"}, -- Friends Till The End!
	{"39", "X-Lax", "Genera una piscina de fluido resbaladizo persistente"}, -- X-Lax
	{"40", "Algo anda mal...", "{{Slow}} Genera una piscina de fluido ralentizante persistente"}, -- Something's wrong...
	{"41", "Tengo mucho sueño...", "{{Slow}} Te ralentiza a ti y a los enemigos de la habitación"}, -- I'm Drowsy...
	{"42", "¡¡TENGO MUCHA ENERGÍA!!", "{{Timer}} Aumenta tu velocidad y la de los enemigos de la habitación#Se vuelve a activar tras 30 y 60 segundos"}, -- I'm Excited!!
	{"43", "¡Glup!", "{{Trinket}} Consume el trinket actual y ganas su efecto de manera permanente"}, -- Gulp!
	{"44", "¡Horf!", "Dispara un grupo de lágrimas de {{Collectible149}}Ipecac"}, -- Horf!
	{"45", "¡Es como si caminara sobre el sol!", "{{Timer}} Otorga durante 6.5 segundos:#Invincibilidad#Isaac no puede disparar pero hace 40 de daño por contacto cada segundo#{{HealingRed}} Comer 2 enemigos cura medio corazón#{{Fear}} Asusta a todos los enemigos en la habitación"}, -- Feels like I'm walking on sunshine!
	{"46", "¡Vurp!", "Genera la última píldora usada como una píldora para caballos"}, -- Vurp!
	{"47", "Menos Vel. de lágrimas", "↓ {{Shotspeed}} Vel. de Lágrimas -0.3"}, -- Shot speed Down
	{"48", "Más Vel. de lágrimas", "↑ {{Shotspeed}} Vel. de Lágrimas +0.3"}, -- Shot speed Up
	{"49", "Píldora experimental", "↑ Aumenta una estadística aleatoria dos veces#↓ Disminuye otra estadística aleatoria dos veces"}, -- Experimental Pill
	[9999] = {"", "Píldora dorada", "Efecto de píldora de caballo aleatorio#Probabilidad de destruirse tras cada uso"}, -- Píldora dorada
}

---------- Character Info ----------
local repCharacterInfo = {
	[4] = {"???", "No puede tener Corazones rojos#{{SoulHeart}} los Objetos de vida otorgan Corazones de Alma#{{DevilRoom}} Los objetos de pacto del Diablo costaran Corazones de Alma#Genera 1 mosca azul al destruir caca"},
	[8] = {"Lázaro", "Al morír:#Revives como Lázaro resucitado (una vez por planta)#Pierdes 1 Contenedor de corazón#↑ {{Damage}} Daño +0.5"},
	[11] = {"Lázaro resucitado", "Estadisticas aumentadas#↑ {{Damage}} Daño x1.4#Al entrar a una nueva planta, volverás a ser Lázaro"},
	[12] = {"Judas Oscuro", "{{Damage}} Daño x2#No puedes tener Corazones rojos#{{BlackHeart}} los Objetos de vida otorgan Corazones Negros#{{Player3}} Cuenta como Judas para las Marcas de finalización"},
	[14] = {"Keeper", "{{CoinHeart}} Recupera vida al recoger monedas#3 Corazones de Moneda máximo#Transforma los corazones recogidos en moscas azules#{{DevilRoom}} Los pactos del Diablo cuestan entre 15 y 30 monedas"},
	[18] = {"Bethany", "{{SoulHeart}} Utiliza los corazones de alma para cargar tu objeto activo#No puede tener Corazones de Alma"},
	[19] = {"Jacob", "Controlas a Jacob y Esaú al mismo tiempo#Ambos personajes sueltan una bomba al usarlas#Esaú se queda quieto al mantener {{ButtonRT}}#{{ButtonLT}} activa el objeto de Jacob, {{ButtonRB}} activa el objeto de Esau, manten presionado {{ButtonRT}} para usar su carta/pildora"},
	[20] = {"Esaú", "Controlas a Jacob y Esaú al mismo tiempo#Ambos personajes sueltan una bomba al usarlas#Esaú se queda quieto al mantener {{ButtonRT}}#{{ButtonLT}} activa el objeto de Jacob, {{ButtonRB}} activa el objeto de Esau, manten presionado {{ButtonRT}} para usar su carta/pildora"},

	[21] = {"Isaac Corrupto", "Los objetos en pedestales alternan entre 2 objetos#Solo puedes llevar 8 objetos pasivos#Puedes cambiar el orden de los objetos pasivos presionando {{ButtonRT}}"},
	[22] = {"Magdalena Corrupta", "Drena lentamente tu salud al tener mas de 2 corazones#On contact, do a melee swing for 6x damage#{{HalfRedHeart}} Chance for enemies to drop Half Red Hearts that disappear in 2 seconds#Drop is guaranteed on melee kill#{{Collectible45}} Duplica la curación de objetos#{{AngelDevilChance}} Damage taken to draining hearts doesn't affect Devil Deal chance"},
	[23] = {"Caín Corrupto", "Los objetos en pedestales se transforman al tocarlos en varios recolectables"},
	[24] = {"Judas Corrupto", "No puedes tener Corazones rojos#{{BlackHeart}} los Objetos de vida otorgan Corazones Negros"},
	[25] = {"??? Corrupto", "Reemplaza tus bombas por Hechizos de caca#{{Crafting29}} Probabilidad de generar recursos de caca al matar enemigos#{{Collectible715}} Puedes almacenar el siguiente hechizo presionando {{ButtonRB}}"},
	[26] = {"Eva Corrupta", "Mantener el botón de disparo drena medio corazón y genera un coágulo#Los tipos de coágulos generados varian en funcion al tipo de corazón usado#Los coágulos pierden salud con el tiempo#Los coágulos se quedan quietos al mantener {{ButtonRT}}#Al tener medio corazón y no tener coágulos, obtiene un ataque similar al {{Collectible114}} Cuchillo de Mamá#El efecto dura hasta que te cures o invoques a un coágulo y cambies de habitación"},
	[27] = {"Sansón Corrupto", "Infligir o recibir daño carga el modo Berserker#{{Timer}} En modo berserker, otorga durante 5 segundos:#↑ {{Speed}} Velocidad +0.4#↓ {{Tears}} Lágrimas x0.5#↑ {{Tears}} Lágrimas +2#↑ {{Damage}} Daño +3#Restringe el ataque a un arma melee que refleja proyectiles#{{Timer}} Por cada enemigo asesinado:#Aumenta la duración del efecto por 1 segundo#Otorga invencibilidad breve"},
	[28] = {"Azazel Corrupto", "Estornudas sangre al comenzar a cargar#Estornudar en un enemigo reduce a la mitad tu tiempo de carga#El estornudo inflige 1.5 veces tu daño#{{BrimstoneCurse}} Los enemigos contagiados reciben el doble de daño de los rayos de Azufre#Al morir, los enemigos contagiados explotan y contagian a los enemigos cercanos"},
	[29] = {"Lázaro Corrupto", "Lázaro tiene 2 estados, cada uno con sus propios objetos y estadisticas#Al completar una habitación, una oleada o usar {{Collectible711}} Cambio alterna entre los estados"},
	[30] = {"Edén Corrupto", "Al recibir daño, cambia tus estadisticas, objetos, trinkets, y consumibles#Los objetos cambian a otros objetos de su mismo grupo#El daño auto-infligido no activa este cambio"},
	[31] = {"El Perdido Corrupto", "{{Card51}} Las cartas y runas encontradas tienen un 10% de probabilidad de ser convertidas en Carta Sagrada#Los objetos de calidad {{Quality2}} o menos tienen un 20% de probabilidad de ser cambiados#Solo se generarán objetos con \"calidad\" suficiente"},
	[32] = {"Lilith Corrupta", "Presionar el boton de disparo libera un bebé familiar de corta distancia#El bebé inflige 3 veces tu daño al golpear enemigos#Mantener presionado el boton provoca que el bebé dispare lágrimas a los enemigos cercanos"},
	[33] = {"Keeper Corrupto", "2 Corazones de Moneda máximo#Los enemigos sueltan monedas que desaparecen tras 2 segundos#La mayoria de objetos en pedestales cuestan 15 monedas#Los objetos de pacto del Diablo/Ángel cuestan entre 15 y 30 monedas#Las tiendas aparecen abiertas y mejoradas"},
	[34] = {"Apolión Corrupto", ""},
	[35] = {"El Olvidado Corrupto", "El Olvidado es un monton de huesos inmoviles que son recogidos y lanzados por El Alma#El Olvidado inflige 3 veces tu daño al ser lanzado#Solo El Alma puede recibir daño#Las bombas son soltadas en la ubicación de Forgotten#No puedes tener Corazones rojos#{{SoulHeart}} los Objetos de vida otorgan Corazones de Alma"},
	[36] = {"Bethany Corrupta", "{{Heart}} Utiliza corazones rojos para cargar tu objeto activo#No puede tener Corazones Rojos#{{SoulHeart}} los Objetos de vida otorgan Corazones de Alma y cargas de sangre#Las bonificaciónes de estadisticas serán 75% efectivas"},
	[37] = {"Jacob Corrupto", "Esaú Oscuro te persigue, embistiendo hacia ti al estar cerca#La embestida inflige mucho daño a los enemigos#Al ser embestido, te transforma en un fantasma que muere de un golpe por el resto de la planta#Al ser un fantasma, permite tomar un objeto de pacto del Diablo gratis"},
	[38] = {"Lázaro Corrupto Muerto", "Lázaro tiene 2 estados, cada uno con sus propios objetos y estadisticas#Al completar una habitación, una oleada o usar {{Collectible711}} Cambio alterna entre los estados"},
	[39] = {"Alma de Jacob Corrupto", "Vuela#Lágrimas espectrales#{{Warning}} no tiene vida#{{Warning}} Muere al ser golpeado por Esaú Oscuro#{{DevilRoom}} Permite tomar un objeto de pacto del Diablo gratis#Al entrar a una nueva planta, volverás a ser Jacob Corrupto"},
	[40] = {"Alma de El Olvidado Corrupto", "El Olvidado es un monton de huesos inmoviles que son recogidos y lanzados por El Alma#El Olvidado inflige 3 veces tu daño al ser lanzado#Solo El Alma puede recibir daño#Las bombas son soltadas en la ubicación de Forgotten#No puedes tener Corazones rojos#{{SoulHeart}} los Objetos de vida otorgan Corazones de Alma"},
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Todos los objetos en pedestales alternarán entre dos objetos"},
	{"Magdalene", "Magdalena", "↑ {{Heart}} +1 corazón#Aumenta el límite de contenedores de corazón a 18"},
	{"Cain", "Caín", "↑ {{Luck}} Suerte +1#{{ArcadeRoom}} Todos los pisos tendrán un Arcade mejorado garantizado(menos \"Cofre\" y \"Cuarto oscuro\")#{{Collectible46}} Incrementa enormemente la probabilidad de ganar del Pie de la suerte"},
	{"Judas", "", "{{Collectible34}} El Libro de Belial se vuelve un objeto pasivo, similar a {{Collectible584}} El Libro de las Virtudes#{{Collectible34}} Otorga El Libro de Belial si Judas actualmente no lo tiene#↑ {{Damage}} El aumento de daño escala con la carga de los objetos activos#Varios objetos activos reciben interacciones especiales"},
	{"???", "", "{{SoulHeart}} Duplica los corazones de alma recibidos por aumentos de vida"},
	{"Eve", "Eva", "{{Collectible122}} Activa de forma permanente la Ramera de Babilonia#{{Collectible117}} Activa de forma permanente el Ave Muerta"},
	{"Samson", "Sansón", "{{Collectible157}} Puedes activar Lujuria de Sangre 4 veces más por piso, hasta un máximo de +14 de daño"},
	{"Azazel", "", "El rayo de Azazel es más amplio#No aumenta el daño"},
	{"Lazarus", "Lázaro", "↑ Revivir como Lázaro Resucitado otorga:#↑ {{Damage}} Daño +7.2#{{Timer}} El efecto dura 60 segundos#{{Blank}} Matar enemigos mientras el efecto siga activo extiende la duración"},
	{"Eden", "Edén", "Genera 3 objetos aleatorios de grupos de objetos aleatorios#Solo se puede tomar uno"},
	{"The Lost", "El Perdido", "Evita que se generen objetos inútiles para El Perdido#Ejemplos: Aumentos de vida, vuelo, lágrimas espectrales o que requieran daño para activarse"},
	{"Lazarus Risen", "Lázaro Resucitado", "↑ {{Damage}} Daño +7.2#El efecto dura 60 segundos#Matar enemigos mientras el efecto siga activo extiende la duración#El efecto se activará cada vez que Lázaro resucite"},
	{"Black Judas", "Judas Oscuro", "{{Collectible34}} El Libro de Belial se vuelve un objeto pasivo, similar a {{Collectible584}} El Libro de las Virtudes#{{Collectible34}} Otorga El Libro de Belial si Judas actualmente no lo tiene#↑ {{Damage}} El aumento de daño escala con la carga de los objetos activos#Varios objetos activos reciben interacciones especiales"},
	{"Lilith", "", "Los familiares se posicionan frente a Lilith"},
	{"Keeper", "", "↑ {{CoinHeart}} +1 Vida#Aumenta el límite de corazones de moneda a 4"},
	{"Apollyon", "Apolión", "{{Collectible477}} Usar Vacio tiene una probabilidad de generar una copia de un objeto absorbido anteriormente#Mientras más objetos absorbidos, mayor probabilidad de generar copias al activarse"},
	{"The Forgotten", "El Olvidado", "Remueve las cadenas que atan El Alma a El Olvidado"},
	{"The Forgotten Soul", "El Alma", "Remueve las cadenas que atan El Alma a El Olvidado"},
	{"Bethany", "", "{{Battery}} Probabilidad de no consumir cargas de alma al usar un objeto activo"},
	{"Jacob", "", "El hermano que recoja el objeto obtendrá copias de tres objetos pasivos del otro hermano"},
	{"Esau", "Esaú", "El hermano que recoja el objeto obtendrá copias de tres objetos pasivos del otro hermano"},
	{"Tainted Isaac", "Isaac Corrupto", "Añade 4 ranuras adicionales de objetos pasivos#{{Collectible619}} Primogenitura no consume una ranura"},
	{"Tainted Magdalene", "Magdalena Corrupta", "{{Heart}} Añade 1 contenedor de corazón que no se drena"},
	{"Tainted Cain", "Caín Corrupto", "Duplica la cantidad de recolectables generados al tomar un objeto"},
	{"Tainted Judas", "Judas Corrupto", "{{Collectible705}} Aumenta el alcance del ataque de Artes Oscuras"},
	{"Tainted ???", "??? Corrupto", "{{PoopPickup}} Aumenta el número máximo de cacas que puedes llevar a 29"},
	{"Tainted Eve", "Eva Corrupta", "Los coágulos generados de corazones rojos sueltan medio corazón rojo al morir#Los medios corazones desaparecen tras 2 segundos"},
	{"Tainted Samson", "Sansón Corrupto", "{{Collectible704}} Matar a un enemigo añade 3 segundos al contador del modo berserker en lugar de 1"},
	{"Tainted Azazel", "Azazel Corrupto", "{{Collectible726}} Duplica el tamaño del estornudo de Azazel Corrupto"},
	{"Tainted Lazarus", "Lázaro Corrupto", "El Lázaro Corrupto que no esté activo aparecerá como un personaje fantasma#Es invencible e inflige el 25% de tu daño#Ambas formas reciben este objeto"},
	{"Tainted Eden", "Edén Corrupto", "Los objetos obtenidos antes de Primogenitura no cambiarán al recibir daño"},
	{"Tainted Lost", "El Perdido Corrupto", "Otorga una vida extra que revive a El Perdido Corrupto dentro de la habitación e inflige 200 de daño a enemigos cercanos"},
	{"Tainted Lilith", "Lilith Corrupta", "{{Collectible728}} Los familiares seguirán a Gello en vez de a Lilith Corrupto#El ataque melee inflige +3 de daño por familiar"},
	{"Tainted Keeper", "Keeper Corrupto", "{{Coin}} Atrae las monedas que sueltan los enemigos al morir#No afecta al resto de monedas"},
	{"Tainted Apollyon", "Apolión Corrupto", "Las langostas se quedan atacando al enemigo mientras se siga disparando"},
	{"Tainted Forgotten", "El Olvidado Corrupto", "{{Collectible714}} El Alma Corrupta gana la habilidad de recuperar automáticamente a El Olvidado Corrupto desde la distancia#El Alma es invencible mientras El Olvidado regresa"},
	{"Tainted Bethany", "Bethany Corrupta", "Genera 4 fuegos de objetos de calidad {{Quality3}} y {{Quality4}} aleatorios#Estos fuegos tienen más salud de lo normal"},
	{"Tainted Jacob", "Jacob Corrupto", "Crea una clon sombrío de Esaú Oscuro#Ambos embisten siempre al mismo tiempo#{{Collectible722}} Reduce el enfriamiento de Anima Sola a 10 segundos#Usar Anima Sola encadena a ambos durante 6.67 segundos"},
	{"Dead Tainted Lazarus", "Lázaro Corrupto muerto", "El Lázaro Corrupto que no esté activo aparecerá como un personaje fantasma#Es invencible e inflige el 25% de tu daño#Ambas formas reciben este objeto"},
	{"Tainted Jacob 2", "Jacob Corrupto 2", "Crea una clon sombrío de Esaú Oscuro#Ambos embisten siempre al mismo tiempo#{{Collectible722}} Reduce el enfriamiento de Anima Sola a 10 segundos#Usar Anima Sola encadena a ambos durante 6.67 segundos"},
	{"Tainted Forgotten Soul", "El alma Corrupta", "{{Collectible714}} El Alma Corrupta gana la habilidad de recuperar automáticamente a El Olvidado Corrupto desde la distancia#El Alma es invencible mientras El Olvidado regresa"},
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	-- These texts are affected by the PluralizeFunction (ab+ file)
	AddBlackHearts = "{{BlackHeart}} +{1} Cora{plural_zon} negro{plural_s}",
	AddBombs = "{{Bomb}} {1} Bomba{plural_s}",
	AddCoins = "{{Coin}} {1} Moneda{plural_s}",
	AddHearts = "{{Heart}} Cura {1} Cora{plural_zon} rojo{plural_s}",
	AddKeys = "{{Key}} {1} Llave{plural_s}",
	AddMaxHearts = "{{EmptyHeart}} +{1} Contenedor{plural_es} de Corazón",
	AddSoulHearts = "{{SoulHeart}} +{1} Cora{plural_zon} de alma",

	-- Cache Flag names
	cacheFlagStart = "Puede afectar ",
	[0] = "{{Damage}} Daño", "{{Tears}} Lágrimas", "{{Shotspeed}} Vel. de lágrimas", "{{Range}} Alcance", "Velocidad", "Efectos de lágrima", "Color de lágrima", "Vuelo", "Tipo de ataque", "Familiares", "Suerte", "Tamaño", "Color", "Contenido de cofres", [16] = "Todas las estadísticas",

	-- Attribute triggers
	active = "Al activarse:#",
	pickup_collected = "Al recoger un recolectable:#",
	enemy_kill = "Al matar un enemigo, probabilidad de 20% de:#",
	damage_taken = "Al recibir daño:#",
	entity_spawned = "Cuando se genera un {{ColorGray}}{T1}{{ColorText}}:#",
	tear_fire = "Al disparar una lágrima, probabilidad de 5% de:#",
	enemy_hit = "Al golpear un enemigo, probabilidad de 5% de:#",
	room_clear = "Al limpiar una sala:#",
	chain = "Que:{{CR}} ",

	-- Attribute effects
	area_damage = "Inflige {1} de daño en un área de {2}",
	add_temporary_effect = "Otorga {1} durante la sala",
	convert_entities = "Convierte todos los {{ColorGray}}{1}{{ColorText}} en la sala en {{ColorGray}}{2}{{ColorText}}",
	use_active_item = "Usa {1}",
	spawn_entity = "Genera un {{ColorGray}}{1}{{ColorText}}",
	fart = "Suelta un pedo en un área de {1}",
	
	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "bomba encendida",
	["5.0"] = "recolectable",
	["5.10"] = "corazón",
	["5.20"] = "moneda",
	["5.30"] = "llave",
	["5.40"] = "bomba recolectable",
	["5.69"] = "saco",
	["5.70"] = "pildora",
	["5.90"] = "bateria",
	["5.300"] = "carta",
	["5.301"] = "runa", -- not a real ID
	["9.-1"] = "proyectil enemigo",
	["999.-1"] = "objeto de grílla",
	["1000.0"] = "efecto",

	-- Text for the base item that is granted
	grants = "Otorga ",
}

---------- Bag of Crafting Text ----------
EID.descriptions[languageCode].CraftingBagContent = "Bolsa:"
EID.descriptions[languageCode].CraftingRoomContent = "Sala:"
EID.descriptions[languageCode].CraftingFloorContent = "Piso:"
EID.descriptions[languageCode].CraftingSearch = "Buscar:"
EID.descriptions[languageCode].CraftingBagQuality = "Calidad:"
EID.descriptions[languageCode].CraftingBestQuality = "Mejor Calidad:"
EID.descriptions[languageCode].CraftingHideKey = "Ocultar:"
EID.descriptions[languageCode].CraftingPreviewKey = "Vista Previa:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+{1} mas"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} de 8 objetos disponibles"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "¡Necesitas tener al menos 8 para mostrar las recetas!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Actualmente Oculto (Presiona {1} para mostrar)"
-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Desplazar: mantén {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}},#Bloquear: {{ButtonX}}, Refrescar: {{ButtonB}})"

-- Strings for Tainted Cain's pedestal salvaging; the non-base lines will have the corresponding icon automatically
EID.descriptions[languageCode].TaintedCainPedestalBase = "Se convierte en 3-8 recolectables aleatorios al tocarlo"
EID.descriptions[languageCode].TaintedCainPedestalBaseBirthright = "Se convierte en {{BlinkBirthright}}6-16{{CR}} recolectables aleatorios al tocarlo"
EID.descriptions[languageCode].TaintedCainPedestalGuaranteed = "Garantiza generar una{n} {1}" -- Room type spawns
EID.descriptions[languageCode].TaintedCainPedestalBonus = "33% de probabilidad de obtener un {1} extra" -- "Safety Cap" type spawns
EID.descriptions[languageCode].TaintedCainPedestalLuckyToe = "66% de probabilidad de obtener un recolectable extra"
EID.descriptions[languageCode].TaintedCainPedestalLuckyToeBirthright = "66% de probabilidad de obtener {{BlinkBirthright}}2{{CR}} recolectables extra"
EID.descriptions[languageCode].TaintedCainPedestalDaemonsTail = "Los corazones son 80% más raros"


---------- Misc. Text ----------

EID.descriptions[languageCode].ResultsWithX = "(Resulta en {1})"
EID.descriptions[languageCode].VariableCharge = "Carga de {1}:"

EID.descriptions[languageCode].poopSpells = {
	{"Caca", "Caca normal, puede generar recolectables"},
	{"Mazorqueada", "Genera moscas azules al estar intacta"},
	{"¡ESTO ARDE!", "Inflige daño por contacto al estar intacta#{{Burning}} Genera fuego al ser destruida"},
	{"Hice caca seca", "Puede infligir daño 3 veces la lanzarse#Requiere muchos golpes para ser destruida"},
	{"Esto está podrido...", "{{Poison}} Genera una nube tóxica#{{Warning}} ¡La nube explotará si entra en contacto con fuego!"},
	{"Caca Negra", "{{Slow}} Genera fluido ralentizante#{{Confusion}} Inflige 10 de daño y confunde a los enemigos"},
	{"¡Santa cagada!", "{{Collectible543}} Lanza una caca blanca con aura#Al estar dentro del aura, recibes:#↑ {{Damage}} Daño x1.2#↑ {{Tears}} Lágrimas x2.5 #Lágrimas teledirigidas#Probabilidad de ignorar daño"},
	{"Diarrea", "Dejas un camino de fluido#Pararte sobre el fluido potencia las lágrimas y el daño#Si el fluido toca una caca con efecto especial, adquirirá sus propiedades"},
	{"Un pedo", "Empuja enemigos y disparos#{{Poison}} Genera una nube tóxica#{{Warning}} ¡La nube explotará si entra en contacto con fuego!"},
	{"Bomba", "Bomba normal lanzable"},
	{"Diarrea explosiva", "Genera 5 bombas encendidas a tu paso"},

	--Undetected poop, for Poop API
	--[Poop name in code] = {Icon, Name, Description}
	["Unknown"] = {"{{PoopSpell1}}", "Caca Desconocida", "Los efectos de la caca son desconocidos"}
}

EID.descriptions[languageCode].itemPoolFor = "Grupos de Objeto:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Tesoro", "Tienda", "Jefe", "Diablo", "Ángel", "Secreta", "Biblioteca", "Trile", "Cofre Dorado", "Cofre Rojo", "Mendigo", "Mendigo Demoníaco", "Maldición", "Mendigo de llaves", "Mendigo de Baterias", "Cofre de Mamá", "Tesoro", "Tienda Codicia", "Jefe Codicia", "Diablo Codicia", "Ángel Codicia", "Maldición Codicia", "Secreta Codicia", "Juego de la Grua", "Ultra Secreta", "Mendigo de Bombas", "Planetario", "Cofre Antiguo", "Tienda de Bebés", "Cofre de Madera", "Mendigo Podrido",
}

EID.descriptions[languageCode].VoidShopText = "Si se absorbe justo después de tomarlo, otorga:"
EID.descriptions[languageCode].VoidOptionText = " será absorbido en su lugar"
EID.descriptions[languageCode].VoidNames = {"Velocidad {1}", "Lágrimas {1}", "Daño {1}", "Alcance {1}", "Vel. de lágrimas {1}", "Suerte {1}"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} Daño +4", "↑ {{Tears}} Lágrimas +2", "↑ {{Speed}} Velocidad +0.5", "↑ {{Range}} Alcance +3"}

EID.descriptions[languageCode].spindownError = "El objeto desaparece"

EID.descriptions[languageCode].BlankCardEffect = "Efecto de Carta en Blanco:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Mantén presionado {{ButtonSelect}} para mostrar la descripción)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "(Presiona {{CONFIG_BoC_Toggle}} para mostrar la descripción siguiente: {1})"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Se volverá Reloj de Arena Brillante en la próxima planta"

EID.descriptions[languageCode].FalsePHDHeart = "{{BlackHeart}} Genera 1 corazón negro"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} Daño +0.6"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} Daño +1.2"

EID.descriptions[languageCode].ExperimentalPillPHD = "No disminuye estadisticas"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "Sin aumento aleatorio de estadistica"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "En su lugar, consume la llave y genera 6 objetos de grupos aleatorios"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} ADVERTENCIA {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "¡Los logros están deshabilitados!#Para poder progresar en el juego, primero debes vencer a Mamá (Depths II) sin mods habilitados.#(Si ya derrotaste a Mamá, este mensaje es un bug, ignóralo)#(Este aviso puede ser desactivado en la configuración)"
EID.descriptions[languageCode].OldGameVersionWarningText = "La versión de Steam es la única con soporte oficial#Tu versión de Repentance no es la más reciente, algunas descripciónes podrian no ser correctas#(Este aviso puede ser desactivado en la configuración)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Los objetos modeados pueden provocar cálculos incorrectos#Instala REPENTOGON para obtener mejor soporte para objetos modeados#(Este aviso puede ser desactivado en la configuración)"


-- Conditional descriptions - DO NOT TRANSLATE THE FIRST PART IN ["BRACKETS"]
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (if there's an odd number of entries, the last entry is appended)
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
local repConditions = {
	------ GENERAL STRINGS ------
	["Tainted Revive"] = "{1} simplemente revive",
	["Ice Tears"] = "Congelar a un enemigo no cuenta como matarlo", -- Uranus Anti-Synergy

	------ GREED MODE ------
	["5.100.344"] = {"{{BlackHeart}} +1 Corazón negro#{{Bomb}} Genera 3 bombas"}, -- Match Book (Greed)
	["5.300.74"] = {"Te teletransporta a la primer habitacion de la planta"}, -- The Moon? (Greed)
	["5.100.416"] = {"{{Coin}} Aumenta el limite de monedas a 999"}, -- Deep Pockets (Greed)
	["5.100.566"] = {"{{HalfSoulHeart}} Otorga medio corazón de alma al entrar a un nuevo piso#{{Warning}} La pesadilla de transición de nivel muestra objetos equivocados en el Modo Codicia"}, -- Dream Catcher (Greed)
	["5.100.580"] = "{{GreedMode}} Raramente genera habitaciónes especiales en el Modo Codicia#{{SuperSecretRoom}} Aún ayuda a encontrar la habitación Super Secreta", -- Red Key (Greed)
	["5.300.83"] = "{{GreedMode}} Raramente genera habitaciónes especiales en el Modo Codicia#{{SuperSecretRoom}} Aún ayuda a encontrar la habitación Super Secreta", -- Soul of Cain (Greed)
	["5.100.514"] = {"Provoca que algunos enemigos y proyectiles se detengan de forma aleatoria#Los proyectiles detenidos desaparecen"}, -- Broken Modem (Greed)
	["5.350.162"] = {"{{Player7}} Completar una oleada tiene un 50% de probabilidad de convertirte en Azazel#{{Timer}} El efecto dura hasta completar otra oleada"}, -- Azazel's Stump (Greed)


	------ ACHIEVEMENT CHECKS ------
	-- todo...


	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	["5.100.642"] = {"{{Warning}} UN SOLO USO {{Warning}}#Genera un objeto del grupo de la habitación actual"}, -- Magic Skin + Lost
	["5.100.240"] = "{1} mantendrá los canbios de estadisticas al soltarlo", -- Experimental Treatment + Tainted Isaac
	["5.100.644"] = "{1} mantendrá las bonificaciónes de estadisticas al soltarlo", -- Consolation Prize + Tainted Isaac
	["5.100.549"] = {"↑ {{Tears}} Lágrimas +0.4"}, -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = "Permite a {1} sobrevivir  hasta 4 golpes", -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = {"↑ {{Damage}} Daño +0.25 por cada corazón roto#{{BrokenHeart}} +1 Corazón roto#{{BrokenHeart}} Cada golpe fatal otorga +1 corazón roto#Keeper morirá al tener 3 corazones rotos"}, -- Heartbreak + Normal Keeper
	["5.100.694 (Tainted Keeper)"] = {"{{Warning}} {1} morirá de un golpe tras tomar este objeto#↑ {{Damage}} Daño +0.25 por cada corazón roto#{{BrokenHeart}} +1 Corazón roto#{{BrokenHeart}} Cada golpe fatal otorga +1 corazón roto#Keeper Contaminado morirá al tener 2 corazones rotos"}, -- Heartbreak + Tainted Keeper
	["5.100.501"] = "{1} puede obtener contenedores de moneda adicionales#Los objetos de salud otorgan un contenedor extra cada 25 monedas", -- Greed's Gullet + Keeper
	["5.100.188"] = "Inflige 7.5 de daño como {1}", -- Cain + Abel
	["5.100.360"] = "Inflige 100% de daño como {1}", -- Lilith + Incubus
	["5.100.728"] = "Inflige 100% de daño como {1}", -- Lilith + Gello
	["5.100.230 (Keeper)"] = "{1} quedará con 1 contenedor de moneda", -- Abaddon
	["5.100.230 (Bethany)"] = "{1} quedará con medio corazón", -- Abaddon
	["5.100.230 (Tainted Bethany)"] = "{1} no perderá sus cargas de sangre", -- Abaddon
	["5.100.245 (Keeper)"] = {"↑ {{Tears}} Incrementa tus lágrimas#↑ Disminuye la dispersión de lágrimas#↓ {{Damage}} Daño x0.8"}, -- 20/20 + Keeper
	["5.100.205 (Tainted Magdalene)"] = "Permite usar infinitamente el Delicioso Corazón", -- Sharp Plug + Tainted Magdalene
	
	["5.100.705"] = "Daño temporal +1 por cada enemigo/proyectil", -- Dark Arts + Dark/Tainted Judas
	["5.100.722"] = {"Encadena a Esaú Oscuro#Tras 5 segundos o al volver a usar Anima Sola, se libera y carga contra Jacob"}, -- TJacob + Anima Sola
	["5.100.713"] = {"Absorbe los coágulos en tu barra de salud#Los coágulos extras son movidos a tu ubicación#{{Timer}} tiempo de recarga de 1 segundo"}, --Teve + Sumptorium
	["5.100.711"] = {"Al ", "{{Player38}} Permite a Lázaro alternar entre estados#Al "}, -- Tlaz + Flip
	["5.100.710"] = {"Al usarse, agita la bolsa en la dirección del ataque#Agitár sobre un recolectable lo mete dentro de la bolsa#Presionar {{ButtonRT}} reordena los contenidos de la bolsa, permitiendo reemplazar recolectables especificos al estar llena#Mantener el boton de Uso mientras la bolsa está llena fabríca el objeto mostrado#La calidad del objeto dependerá de la calidad de los recolectables"}, -- Tcain Bag of Crafting
	
	["Mother's Kiss Soul"] = {"{{SoulHeart}} +1 Corazón de Alma al tenerlo"},
	["Mother's Kiss Bone"] = {"{{BoneHeart}} +1 Corazón de Hueso al tenerlo"},
	["Mother's Kiss Coin"] = {"{{CoinHeart}} +1 Corazón de Moneda al tenerlo#Aumenta el limite de Corazones de Moneda en 1"},

	-- Vibrant/Dim Bulb
	["5.350.100 (Bethany)"] = "Funciona con las cargas de alma de {1}",
	["5.350.100 (Tainted Bethany)"] = "Funciona con las cargas de sangre de {1}",
	["5.350.101 (Bethany)"] = "Ignora las cargas de alma de {1}",
	["5.350.101 (Tainted Bethany)"] = "Ignora las cargas de sangre de {1}",
	["Health Up Soul Charges"] = "Cargas de alma +{1}",
	["Health Up Blood Charges"] = "Cargas de sangre +{1}",

	-- Tainted Bethany stuff
	["2 of Hearts Blood Charges"] = "Duplica las cargas de sangre de {1}",
	["Vampire Blood Charges"] = {"↑ {{Damage}} Daño +0.3#Matar 13 enemigos añade 1 carga de sangre"},
	["Fork Blood Charges"] = {"10% de probabilidad de añadir 1 carga de sangre al limpiar una habitación "},
	["Stem Cell Blood Charges"] = {"Entrar a un nuevo piso añade 1 carga de sangre"},
	
	["Salvaging Bonus"] = {"y máquinas destruidas", "máquinas destruidas, y objetos reciclados"},
	["Salvaging Lucky Toe"] = "66% de probabilidad de obtener recolectables extra de los objetos reciclados",


	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "Dispara 1 lágrima adicional#Sin disminución de estadisticas adicional", -- The Inner Eye
	["5.100.153 (Copies)"] = "Dispara 2 lágrimas adicionales#Sin disminución de estadisticas adicional", -- Mutant Spider
	["5.100.245 (Copies)"] = "Dispara 1 lágrima adicional#Sin disminución de estadisticas adicional", -- 20/20
	["5.100.358 (Copies)"] = "Dispara 1 lágrima adicional en el centro", -- The Wiz
	["5.100.64 (Copies)"] = "Tener multiples copias de este objeto reducirá mas los precios", -- Steam Sale
	["5.100.118 (Copies)"] = "Multiples copias de Azufre incrementan el daño y otorgan un rayo más grande", -- Brimstone
	["5.100.531 (Copies)"] = "Las copias adicionales otorgan +1 de daño", -- Haemolacria
	["5.100.224 (Copies)"] = "Las copias adicionales otorgan +0.5 lágrimas", -- Cricket's Body


	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Convierte a las moscas torreta en monedas",
	["Sacrificial Item Wisps"] = "Los familiares creados por el Lemegeton pueden ser sacrificados#Convierte a todos los fuegos del Lemegeton en {{HalfSoulHeart}} medios Corazones de Alma",
	["Sacrificial Plum"] = "La Ciruelita invocada cuenta como un familiar, y no remueve Flauta ciruela",
	["Sacrificial Quints"] = "Sacrificar a un familiar generado por Quinteto remueve el objeto",
	["Sacrificial Abyss"] = "Las langostas generadas por Abismo cuentan como familiares",
	["Sacrificial Star"] = "La Estrella de Bethlehem cuenta como un familiar",
	["Sacrificial Clots"] = "Convierte a los Coágulos en monedas",
	
	["1000.76.1"] = "{{Warning}} Solo cambia a los personajes que activen el dado", -- Dice Room 1 (Co-op)
	["1000.76.6"] = "{{Warning}} Todos los objetos de personaje seran cambiados en cooperativo!", -- Dice Room 6 (Co-op)
	["5.100.45"] = "Cura a otros jugadores por medio corazón", -- Yum Heart (Co-Op)
	["5.350.125"] = "Los rayos tambien saltan entre jugadores", -- Extension Cord (Co-Op)
	
	["5.100.245"] = "Remueve la penalización de lágrimas de {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["20/20"] = "Sin penalización de lágrimas con {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	
	["5.100.135 (Hard Mode)"] = {"1-2 monedas", "1 moneda", "2-3 monedas", "2 monedas"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.201"] = "Rellena por completo la carga de {1}", -- Iron Bar + Notched Axe
	["5.350.172"] = "{1} remueve el efecto de teletransportación", -- Cursed Penny + Black Candle
	["5.100.501 (Deep Pockets)"] = "+1 contenedor por cada 100 monedas superando las 99", -- Greed's Gullet + Deep Pockets
	["? Card Single Use"] = "Permite usar multiples veces los objetos de un solo uso", -- Single Use Actives + ? Card
	["Both Peppers"] = "Con {1}, la probabilidad de disparar una llama será de 12.5%#Será de 100% al tener 7 de suerte", -- Ghost Pepper + Bird's Eye
	["Black Feather"] = "↑ {{Damage}} Daño +0.5", -- Black Feather items
	["Hemoptysis"] = "Funciona con {1}", -- Hemoptysis + Brimstone items
	["5.100.600"] = "Lagrimas x1.2 para {1}", -- Eye Drops (items and some players)
	["5.100.482"] = "Los personajes contaminados cambiarán por otros personajes contaminados", -- Clicker
	
	["4.5 Volt Timed"] = "No afecta a las recargas", -- 4.5 Volt + Timed Recharges
	["4.5 Volt Multiple"] = "El activo secundario solo obtiene carga si el activo primario está cargado", -- 4.5 Volt + Schoolbag/Pocket Actives
	["Bulb Zero"] = "No tiene efecto con objetos activos sin cargas", -- Vibrant/Dim Bulb + zero charge actives
	
	["Brimstone Proptosis"] = "El rayo inflige 6 veces tu daño a quemarropa, disminuyendo con la distancia",
	["Brimstone Ipecac"] = "El rayo obtiene +2 daño y explota al impactar con enemigos y obstaculos",
	["Brimstone Pop!"] = "Rayo más corto que libera lágrimas de {1} al final",
	["Eye of Belial Dr. Fetus"] = "Las bombas atraviezan, infligiendo 2.5 veces tu daño",
	["Spirit Sword C Section"] = "{1} tiene prioridad#Los fetos sostienen espadas y realizan ataques giratorios",
	["Spirit Sword Mom's Knife"] = "{1} tiene prioridad#El ataque giratorio lanza la espada hacia adelante",
	["Spirit Sword Technology"] = "La espada se vuelve un sable de luz que refleja proyectiles enemigos",
	["Spirit Sword Ipecac"] = "La espada obtiene +6 de daño y envenena pero no explota#Los proyectiles de la espada si explotan",
	["Ludovico Ipecac"] = "Las lágrimas obtienen +2 de daño pero no explotan ni envenenan",
	["Technology Ipecac"] = "Los lasers obtienen +2 de daño y explotan al impactar",
	["Eye of the Occult Beam"] = "Disparas de forma automatica con una mira que altera el camino del rayo",
	
	["Lullaby Clots"] = "(Incluyendo coágulos)",
	["Lullaby Incubus"] = "(Incluyendo Incubo)",

	-- Jacob's Ladder / 120 Volt battery synergies
	["Sparks Damage"] = "Los rayos infligen un 50% más de daño",
	["Sparks Arc Length"] = "Los rayos tienen una distancia de salto mayor",
	["Sparks Arc Count"] = "Los rayos pueden saltar en 2 enemigos extra",
	["Sparks Arc Back"] = "Los rayos pueden volver a saltar al mismo enemigo",
	
	["White Poop Jar"] = "Genera una caca blanca con solo 1 carga",
	["Golden Poop Jar"] = "Probabilidad de generar caca dorada con solo 1 carga",
	
	["Binge Eater Healing"] = {"Cura 1 corazón", "Cura {{BlinkGreen}}2{{CR}} corazones", "+4 cargas de sangre", "+{{BlinkGreen}}6{{CR}} cargas de sangre"},
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)




-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Máquina de Donación", "Proximo logro en {1} monedas, monedas restantes: {2}#{{Luck}} 2% de probabilidad de obtener +1 de suerte al donar#{{AngelRoom}} Donar 10 monedas incrementa la probabilidad de encontrar salas de Ángel"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Máquina de Donación (Codicia)", "Proximo logro en {1} monedas, monedas restantes: {2}"}
end
