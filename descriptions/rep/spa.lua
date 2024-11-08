---------------------------------------
-----  Basic spanish descriptions -----
---------------------------------------

-- Last Sync with en_us: 01.15.2022

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local languageCode = "spa"

local repCollectibles={
	[2] = {"2", "El Ojo Interior", "Disparo triple#↓ {{Tears}} Lágrimas -49%"},
	[5] = {"5", "Mi reflejo", "Otorga un efecto bumerán a las lágrimas#↑ {{Damage}} Daño +1.5#↑ {{Range}} Alcance x2 + 1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.6#↓ {{Luck}} Suerte -1#↑{{Tearsize}} Tamaño de lágrima +1.0"},
	[6] = {"6", "Número 1", "↑ {{Tears}} Lágrimas +1.5#↓ {{Range}} Rango x0.8 - 1.5#↑ Tamaño de lágrima +0.76"},
	[12] = {"12", "Hongo mágico", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño x1.5 + 0.3#↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +0.5#{{HealingRed}} Vida al completo"},
	[13] = {"13", "El virus", "↑ {{Speed}} Velocidad +0.2#{{Poison}} Toque venenoso"}, -- El virus
	[14] = {"14", "Furia por esteroides", "↑ {{Speed}} Velocidad +0.3#↑ {{Range}} Alcance +5.25#↑ Tamaño de lágrimas +0,5"}, -- Furia de esteroides
	[18] = {"18", "El dólar", "↑ {{Coin}} +100 monedas"},
	[22] = {"22", "Almuerzo", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Almuerzo
	[23] = {"23", "Cena", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Cena
	[24] = {"24", "Postre", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Postre
	[25] = {"25", "Desayuno", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Desayuno
	[26] = {"26", "Carne podrida", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Carne podrida
	[29] = {"29", "Ropa interior de Mamá", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +0.5#Genera de 3 a 6 moscas azules"}, -- Ropa interior de Mamá
	[30] = {"30", "Tacones de Mamá", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +0.5#Tocar a los enemigos inflige 12 de daño"}, -- Tacones de Mamá
	[31] = {"31", "Pintalabios de Mamá", "↑ {{Range}} Alcance +2.25#↑ Tamaño de lágrimas +0,5#Genera un corazón aleatorio"}, -- Pintalabios de Mamá
	[34] = {"34", "Libro de Belial", "↑ {{Damage}} Daño +2#↑ {{DevilChance}} +12.5% de probabilidad de Pacto con el Diablo#↑ {{Damage}} Multiplicador de daño x1.5 si tienes {{Collectible7}} Sangre del mártir"},
	[37] = {"37", "Sr. Buum", "Genera una gran bomba bajo el jugador que inflige 185 de daño"},
	[40] = {"40", "¡Kamikaze!", "Provoca una gran explosión en la ubicación del jugador#Inflige 185 de daño"}, -- ¡Kamikaze!
	[41] = {"41", "Toallita de Mamá", "{{Fear}} Asusta a todos los enemigos en la sala por 5 segundos#Genera una mosca azul"}, -- Mom's Pad
	[42] = {"42", "Cabeza podrida de Bob", "{{Throwable}} {{Poison}} Bomba venenosa lanzable#Inflige 185 + tu daño#Crea una nube de veneno"}, -- Cabeza podrida de Bob
	[44] = {"44", "¡Teletransporte!", "Teletransporta a Isaac a una habitación aleatoria (excepto a la habitación I AM ERROR)#Puedes influir un poco en la dirección al avanzar hacia allí"}, -- ¡Teletransporte!
	[45] = {"45", "Delicioso Corazón", "{{Heart}} Cura 1 corazón rojo#También cura medio corazón a otros jugadores"}, -- Corazón Ñam
	[46] = {"46", "Pie de la suerte", "↑ {{Luck}} Suerte +1.0#Más probabilidad de ganar al apostar#Aumenta las posibilidades de que caiga un recolectable al limpiar una habitación#Cambia todas píldoras malas por buenas"},
	[52] = {"52", "Dr. Fetus", "¡Lágrimas bomba!#{{Damage}} Las bombas hacen 10 veces tu daño#{{Damage}} Si tu daño es mayor a 60, será tu daño x5 + 30##↓ {{Tears}} Lágrimas -60%"},
	[53] = {"53", "Imán", "Acerca los recolectables al jugador#Abre cofres a distancia, ignorando el daño de los cofres de pinchos"},
	[55] = {"55", "Ojo de Mamá", "Posibilidad de disparar una lágrima hacia atrás"}, -- Ojo de Mamá
	[59] = {"59", "Libro de Belial", "↑ {{Damage}} Daño +2#↑ {{DevilChance}} +12.5% de probabilidad de Pacto con el Diablo#↑ {{Damage}} Multiplicador de daño x1.5 si tienes {{Collectible7}} Sangre del mártir"},
	[62] = {"62", "Encanto del vampiro", "↑ {{Damage}} Daño +0.3#{{HealingRed}} Cura medio corazón cada 13 enemigos asesinados"}, -- Encanto del vampiro
	[64] = {"64", "Oferta de Steam", "-50% en la compra de objetos#Tener varios hace que el precio sea todavía inferior"}, -- Oferta de Steam
	[67] = {"67", "Hermana Maggy", "Familiar de lágrimas normales#Inflige 5 de daño"}, -- Hermana Maggy
	[69] = {"69", "Batido de chocolate", "{{Chargeable}} Carga las lágrimas#↑ {{Damage}} Hasta un 400% más de daño"},
	[70] = {"70", "Hormonas de crecimiento", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.0"}, -- Hormonas de crecimiento
	[71] = {"71", "Mini Champi", "↑ {{Speed}} Velocidad +0.3#↑ {{Range}} Alcance +1.5# ↑ Te haces más pequeño"},
	[72] = {"72", "Rosario", "↑ {{Tears}} Lágrimas +0.5#{{SoulHeart}} +3 corazones de alma#{{Collectible33}} La Biblia es más común"}, -- Rosario
	[77] = {"77", "Mi pequeño unicornio", "Invencibilidad + 20 de daño por contacto"},
	[78] = {"78", "Libro de Revelaciones", "+{{SoulHeart}} 1 corazón de alma#Un jinete reemplazará al jefe del piso tras usarlo#↑ {{DevilChance}} +17.5 % probabilidad de Pacto con el Diablo"},
	[79] = {"79", "La marca", "↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +1.0#{{BlackHeart}} +1 corazón negro"}, -- La marca
	[80] = {"80", "El pacto", "↑ {{Tears}} Lágrimas +0.7#↑ {{Damage}} Daño +0.5#{{BlackHeart}} +2 corazones negros"}, -- El pacto
	[83] = {"83", "El clavo", "{{HalfBlackHeart}} + Medio corazón negro#↓ {{Speed}} Velocidad -0.18#↑ {{Damage}} Daño +0.7#Inflige daño por contacto#Rompe rocas"}, -- El clavo
	[84] = {"84", "¡Necesitamos Ir Más Profundo!", "Genera una trampilla para saltar el nivel#{{LadderRoom}} Genera una trampilla a un mini-sótano al usarla sobre un elemento decorativo del suelo"},
	[87] = {"87", "Cuernos de Loki", "25% de posibilidad de disparar en 4 direcciones#{{Luck}} 100% con 15 de suerte"},
	[91] = {"91", "Sombrero de espeleólogo", "Muestra el tipo de sala a partir de dos salas adyacentes a la actual#{{SecretRoom}} {{SuperSecretRoom}} Revela Salas secretas y salas súper secretas#Evita el daño de disparos que caigan desde arriba"},
	[98] = {"98", "La reliquia", "{{SoulHeart}} Suelta 1 corazón de alma cada 7-8 habitaciones"},
	[101] = {"101", "El halo", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} +0.3#↑ {{Range}} Alcance +0.38#↑ {{Tearsize}} Tamaño de lágrimas +0.5#{{HealingRed}} Cura 1 corazón"},
	[106] = {"106", "Sr. Mega", "↑ {{Bomb}} +5 Bombas#↑ {{Bomb}} Daño de bombas x1.85"}, -- Sr. Mega
	[109] = {"109", "Dinero = Poder", "↑ {{Damage}} +0.04 de daño por cada {{Coin}} moneda que tengas"},
	[110] = {"110", "Lentillas de Mamá", "Probabilidad de disparar lágrimas petrificantes#↑ {{Range}} Alcance +0.38#↑ {{Tearsize}} Tamaño de lágrimas +0.5"},
	[114] = {"114", "Cuchillo de mamá", "{{Chargeable}} Recargable#Los disparos del jugador son reemplazados por un cuchillo#{{Damage}} Al tenerlo en la mano inflige tu daño x2, y hasta x6 con 1/3 de carga#Cargar más el ataque sólo aumentará el daño#El daño regresa a ser x2 al regresar"}, -- Mom's Knife
	[115] = {"115", "Ouija Board", "↑ {{Tears}} Lágrimas +0.4#Recibes lágrimas espectrales"},
	[118] = {"118", "Azufre", "{{Chargeable}} Cargable#Dispara un chorro de sangre que inflige daño constante#↓ {{Tears}} Lágrimas -67%"},
	[120] = {"120", "Hongo Raro (pequeño)", "↑ {{Tears}} Lágrimas +1.7#↑ {{Speed}} Velocidad +0.3#↓ {{Damage}} Daño -10%#↓ {{Damage}} Resta de daño adicional de -0.4"},
	[121] = {"121", "Hongo raro (grande)", "↑ {{EmptyHeart}} +1 contenedor de corazón vacío#↓ {{Speed}} Velocidad -0.2#↑ {{Damage}} Daño +1.0#↑ {{Range}} Alcance +0.25#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Champiñón raro (grande)
	[123] = {"123", "Manual de monstruos", "Genera un familiar aleatorio#Se quedará durante todo el piso"}, -- Manual de monstruos
	[126] = {"126", "Hoja de Afeitar", "↑ {{Damage}} Daño durante la sala +1.2#{{Warning}} Inflige 1 corazón de daño tras usarlo#Tras el primer uso en la sala, sólo remverá medio corazón#{{Heart}} Remueve primero los corazones rojos"}, -- Razor Blade
	[129] = {"129", "Cubo de manteca", "↑ {{Heart}} +2 de contenedores de corazón#↓ {{Speed}} Velocidad -0.2"},
	[135] = {"135", "Bolsa I.V.", "Banco de sangre portátil#Medio corazón = 1-2 monedas#{{HardMode}} 1 moneda en el modo Difícil#{{Player14}} 0-1 moneda usando a Keeper"},
	[138] = {"138", "Estigma", "↑ {{Heart}} +1 de vida#{{HealingRed}} Cura 1 corazón#↑ {{Damage}} Daño +0.3"},
	[139] = {"139", "Bolso de Mamá", "{{Trinket}} Puedes tener 2 trinkets#{{Trinket}} Genera 1 trinket aleatorio"}, -- Bolso de Mamá
	[140] = {"140", "Maldición de Bob", "↑ {{Bomb}} +5 Bombas#{{Poison}} Bombas venenosas#{{Poison}} Las bombas dejan una nube de veneno#{{Poison}} Te vuelves inmune al veneno"}, -- Maldición de Bob
	[142] = {"142", "Escapulario", "Si te dañan menos de medio corazón, ganas 1 corazón de alma#(Uno por habitación)#No se activa con máquinas de donación"},
	[147] = {"147", "Hacha de Notch", "Rompe las rocas y daña a los enemigos al contacto#Golpear con el hacha reduce sus cargas#Se recarga al avanzar al siguiente piso"}, -- Hacha de Notch
	[148] = {"148", "Infestación", "Genera de 2 a 6 moscas cuando te golpean"}, -- Infestación
	[149] = {"149", "Ipecacuana", "Lágrimas explosivas#{{Poison}} Lágrimas venenosas#↓ {{Tears}} Lágrimas -66% aproximadamente#↑ {{Damage}} Daño +40 #↓ {{Shotspeed}} Vel. de lágrimas -0.2"},
	[152] = {"152", "Tecnología 2", "¡Láser permanente!#↓ {{Damage}} Inflige un 13 % de tu daño#↓ {{Tears}} Lágrimas -33%"},
	[153] = {"153", "Araña mutante", "¡Disparo cuádruple!#↓ {{Tears}} Lágrimas -58%"},
	[155] = {"155", "El fisgón", "Flota por la habitación#Inflige 17.1 de daño por contacto cada segundo#↑ {{Damage}} Las lágrimas disparadas porel ojo izquiero hacen 34% más daño"},
	[158] = {"158", "Bola de cristal", "Muestra el mapa completo#Puede generar: #{{Card}} una carta aleatoria# {{SoulHeart}} Un corazón de alma#Mientras lo tienes:#↑ {{PlanetariumChance}} Posibilidad de planetarios +15%#↑ {{PlanetariumChance}} Posibilidad de planetarios +100% si te saltas la habitación del tesoro"},
	[161] = {"161", "Anj", "{{Player4}} Reapareces como ??? al morir#{{Player25}} ??? Contaminado resucitará como él mismo"},
	[169] = {"169", "Polifemo", "¡Mega lágrimas!#↑ {{Damage}} Daño +4 y x2#↓ {{Tears}} Menos lágrimas"},
	[171] = {"171", "Trasero Aracnido", "{{Slow}} Ralentiza a los enemigos durante 4 segundos#Inflige 10 de daño a todos los enemigos#Eliminar enemigos con él genera arañas azules"}, -- Culo de araña
	[172] = {"172", "Daga de Sacrificio", "Cuchillo orbital#Bloquea los disparos enemigos#Inflige 112.5 de daño cada segundo"},
	[176] = {"176", "Células madre", "↑ {{Heart}} +1 de Vida#↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{HealingRed}} Cura 1 corazón"},
	[178] = {"178", "Agua bendita", "{{Throwable}} {{ColorOrange}}Lanzable{{CR}}#Deja una piscina de creep donde se haya roto#Petrifica a los enemigos"}, -- Agua bendita
	[180] = {"180", "El frijol negro", "{{Poison}} Al recibir daño, soltarás pedos en secuencia, dejando una nube venenosa"}, -- The Black Bean
	[182] = {"182", "Corazón sagrado", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Multiplicador de daño del 230%#↑ {{Damage}} Daño +1#↓ {{Tears}} Lágrimas -0.4#↓ {{Shotspeed}} Vel. de tiro -25%#{{HealingRed}} Vida al completo#Lágrimas teledirigidas"},
	[183] = {"183", "Mondadientes", "↑ {{Tears}} Lágrimas +0.7#↑ {{Shotspeed}} Vel. de lágrimas +0.16"},
	[184] = {"184", "Santo Grial", "↑ {{Heart}} +1 de Vida#Permite volar#Cura un corazón rojo"},
	[186] = {"186", "Blood Rights", "Inflige 40 puntos de daño a todos los enemigos#{{Warning}} Inflige 1 corazón de daño tras usarlo#Tras el primer uso en la sala, sólo remverá medio corazón#{{Heart}} Remueve primero los corazones rojos"},
	[188] = {"188", "Abel", "Copia tus movimientos#Dispara hacia el jugador#Inflige 3.5 de daño#{{Player2}} 7.5 de daño si eres Caín"},
	[189] =	{"189", "Súper Fan de SMB", "↑ +1 de vida#↑ {{Speed}} Velocidad +0.2#↑ {{Range}} Alcance +0.5#↑ {{Tears}} Lágrimas +0.2#↑ {{Damage}} Daño +0.3#↑ {{Tearsize}} Tamaño de lágrimas +1.0#{{HealingRed}} Vida al completo"},
	[192] = {"192", "Telepatía para tontos", "Lágrimas teledirigidas en la habitación actual#↑ {{Range}} Alcance +3"}, -- Telepatía para tontos
	[193] = {"193", "¡CARNE!", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Daño +0.3#{{HealingRed}} Cura 1 corazón"}, --¡CARNE!
	[194] = {"194", "Bola 8 mágica", "↑ {{Shotspeed}} Vel. de lágrimas +0.16#{{Card}} +1 carta#↑ {{PlanetariumChance}} Posibilidad de Planetario +15%"},
	[196] = {"196", "Squeezy", "{{SoulHeart}} +2 corazones de alma#↑ {{Tears}} Lágrimas +0.4"},
	[197] = {"197", "Zumo de Jesús", "↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +0.38#↑ {{Tearsize}} Tamaño de lágrima +0.5"},
	[203] = {"203", "Paquete modesto", "Probabilidad de duplicar los recolectables"}, -- Paquete modesto
	[205] = {"205", "Enchufe puntual", "{{Battery}} Puedes recargar tu objeto activo a cambio de tus {{Heart}} Corazones#{{HalfHeart}} Medio Corazón = {{1}} carga"}, -- Enchufe puntual
	[206] = {"206", "Guillotina", "↑ {{Tears}} Lágrimas + 0.33#↑ {{Damage}} Daño +1#Tu cabeza es un orbital#Disparas desde la cabeza#La cabeza inflige 105 de daño por contacto"},
	[211] = {"211", "Bebé araña", "Genera de tres a cinco arañas cuando te golpean"}, -- Bebé araña
	[214] = {"214", "Anémico", "↑ {{Range}} Alcance +1.5#Deja creep en el suelo cuando te golpean"},
	[215] = {"215", "Cabeza de cabra", "↑ {{DevilChance}}/{{AngelChance}} 100 % de probabilidad de pacto con el Diablo {{DevilRoom}} o el Ángel {{AngelRoom}}"},
	[218] = {"218", "Placenta", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{HealingRed}} 50% de probabilidad de curar medio corazón cada minuto"},
	[222] = {"222", "Anti-Gravedad", "↑ {{Tears}} Lágrimas +1.0#Lágrimas antigravedad"},
	[223] = {"223", "Piromaníaco", "↑ {{Bomb}} +5 Bombas#Inmunidad a las explosiones y al fuego#{{HealingRed}} Ser golpeado por explosiones cura 1 corazón"}, -- Pyromaniac
	[224] = {"224", "El cuerpo de Cricket", "↑ {{Tears}} Lágrimas +0.5 (puede sobrepasar el valor límite)#↓ {{Range}} Alcance -20%#Las lágrimas se dividen en 4 al impactar#Las lágrimas partidas infligen la mitad de daño"},
	[226] = {"226", "Loto Negro", "↑ {{Heart}} +1 Corazón#{{HealingRed}} Cura 1 corazón#↑ {{SoulHeart}} +1 Corazón de alma#↑ {{BlackHeart}} +1 Corazón negro"}, -- Black Lotus
	[227] = {"227", "El Cochinito", "{{Coin}} +3 monedas#{{Coin}} Genera una o dos monedas cuando te golpean#{{Player14}} Genera 0 o 1 con Keeper"},
	[228] = {"228", "Perfume de Mamá", "↑ {{Tears}} Lágrimas +0.50 (puede sobrepasar el valor límite)#{{Fear}} Las lágrimas asustan a los enemigos"},
	[229] = {"229", "Pulmón de Monstro", "Las lágrimas pueden cargarse y lanzarse como si fuera una escopeta#↓ {{Tears}} Lágrimas -77%"},
	[230] = {"230", "Abaddón", "↑ {{Damage}} Daño +1.5#↑ {{Speed}} Velocidad +0.2#{{Fear}} Las lágrimas asustan#↓ {{Heart}} Convierte todos los corazones rojos en {{BlackHeart}} corazones negros#↑ {{BlackHeart}} +2 corazones negros"}, -- Abadón
	[232] = {"232", "Cronómetro", "{{Slow}} Efecto ralentizante permanente para los enemigos#↑ {{Speed}} Velocidad +0.3"}, -- Cronómetro
	[233] = {"233", "Mini-Planeta", "Las lágrimas orbitan a tu alrededor#↑ {{Range}} Alcance +6.5#↑ #Lágrimas espectrales"},
	[237] = {"237", "Toque de la Muerte", "¡Dispara guadañas!#↓ {{Tears}} Lágrimas -0.3#↑ {{Damage}} Daño +1.5#Lágrimas penetrantes"},
	[240] = {"240", "Tratamiento experimental", "↑ Mejora 4 estadísticas aleatorias#↓ Reduce 2 estdísticas aleatorias"},
	[241] = {"241", "Contrato de Abajo", "Duplica los recolectables que generen las salas#33% de posibilidad de no generar recompensas#{{GreedMode}} / {{GreedierMode}} No funciona en el modo Codicia"},
	[245] = {"245", "20/20", "Duplica los disparos#↓ {{Damage}} Daño -20%"}, -- 20/20
	[248] = {"248", "Mente colmena", "Las moscas y arañas azules duplican su daño#Las moscas y arañas de los familiares son más fuertes"},
	[253] = {"253", "Costra mágica", "↑ {{Heart}} +1 de Vida#↑ {{Luck}} Suerte +1#{{HealingRed}} Cura 1 corazón"},
	[254] = {"254", "Coágulo", "↑ {{Damage}} Daño +1#↑ {{Range}} Rango +1.5#!!! Solo se aplica al ojo izquierdo"},
	[256] = {"256", "Bombas calientes", "↑ {{Bomb}} +5 Bombas#{{Burning}} Las bombas de Isaac's hacen daño por contacto#{{Burning}} Las bombas de Isaac's dejan una llama donde explotan#{{Burning}} Inmunidad al fuego (excepto los proyectiles)"}, -- Bombas calientes
	[261] = {"261", "Proptósis", "↑ {{Damage}} Daño +0.5#↓ {{Damage}} La lágrima hará menos daño mientras más distancia recorra#300 % de daño si disparas a quemarropa"}, -- Proptósis
	[262] = {"262", "Página perdida 2", "{{BlackHeart}} +1 corazón negro#Al tener menos de 1 corazón dañas a todos los enemigos de la habitación#Los corazones negros infligen el doble de daño"}, -- Página perdida 2
	[263] = {"263", "Runa limpia", "{{Rune}} Copia el efecto de la runa o la piedra de alma que tengas#{{Rune}} Genera 1 runa aleatoria al tomarlo"}, -- Runa de claridad
	[264] = {"264", "Mosca Inteligente", "Orbital#Atacará a los enemigos cuando el jugador reciba daño#Inflige 6.5 de daño por segundo"},
	[273] = {"273", "Cerebro de Bob", "{{Throwable}} Familiar bomba lanzable#La explosión inflige 100 de daño#El daño ignora la armadura"}, -- Cerebro de Bob
	[274] = {"274", "Mejor amigo", "Al ser golpeado, ganas un orbital de alcance medio#Inflige 150 de daño cada segundo"}, -- Mejor amigo
	[275] = {"275", "Mini-Azufre", "{{Collectible118}} Familiar que dispara un rayo que inflige 3 de daño cada segundo hasta un máximo de 24"},
	[276] = {"276", "Corazón de Isaac", "Gana un cuerpo invulnerable#!!! Cuando golpean al familiar corazón te hacen daño#{{Chargeable}} El familiar se carga al disparar, al soltar el botón de disparo, el corazón: #Disparará 8 lágrimas#Soltará Creep rojo#Empujará enemigos y proyectiles"}, -- Corazón de Isaac
	[278] = {"278", "Pordiosero oscuro", "!!! {{Heart}} Puede convertir 1.5 Corazones rojos en:#{{SoulHeart}}/{{BlackHeart}} 1 corazón de alma/negro#{{Pill}} Una píldora#{{Card}} Una Carta#{{Rune}} Una runa#O una araña"}, -- Vagabundo oscuro
	[280] = {"280", "Sissy patitas-largas", "Invoca arañas azules en habitaciones hostiles aleatorias#Encanta a los enemigos al tocarlos"}, -- Sissy patas largas
	[283] = {"283", "D100", "Cambia todos los pedestales, estadísticas, recolectables y tus objetos pasivos#Duplica un recolectable aleatorio de la habitación#Reinicia la planta actual y genera y cambia los enemigos#Cambia las rocas"}, -- D100
	[285] = {"285", "D10", "Degrada a todos los enemigos en sala#Por ejemplo, las moscas rojas se convierten en moscas negras"}, -- D10
	[287] = {"287", "Libro de secretos", "Durante el piso, puede otorgar el efecto de:#{{Collectible54}} Mapa del tesoro#{{Collectible21}} La Brújula#{{Collectible246}} El Mapa Azul#Solo otorga efectos de mapa que no tengas ya#{{Collectible76}} Si están todos los efectos activos, otorga Visión de rayos X"}, -- Libro de secretos
	[288] = {"288", "Caja de arañas", "Invoca de 4 a 8 arañas azules"}, -- Caja de arañas
	[289] = {"289", "Vela roja", "Lanza fuego rojo#La llama persiste hasta infligir 23 de daño 5 veces o durante 10 segundos"}, -- Vela roja
	[291] = {"291", "¡Flus-flus!", "!!! Mata a enemigos y jefes caca de manera instantánea#Convierte a los enemigos en caca#Extingue los fuegos#Convierte las fosas llenas de lava en suelo"}, -- ¡Flus-flus!
	[292] = {"292", "Biblia satánica", "+1 {{BlackHeart}} corazón negro#Si se usa antes de la pelea contra el jefe, el objeto de la habitación será un pacto con el diablo#{{AngelChance}} Tomar un objeto de pacto impedirá que aparezcan {{AngelRoom}} Salas del ángel"}, -- Biblia satánica
	[294] = {"294", "Judía de mantequilla", "Repele a los enemigos y proyectiles cercanos#Los enemigos lanzados contra obstáculos reciben 10 de daño"}, -- Judía de mantequilla
	[295] = {"295", "Dedos mágicos", "Daña toda la habitación con el doble de tu daño + 10 #Precio: 1 moneda"}, -- Dedos mágicos
	[296] = {"296", "Conversor", "!!! Convierte:#1 corazón de alma/negro en un corazón rojo"}, -- Conversor
	[297] = {"297", "Caja de Pandora", "!!! UN SOLO USO#!!! Genera cosas en base al piso:#B1: 2 {{SoulHeart}}; B2: 2 {{Key}} y {{Bomb}}#C1: 1 objeto {{BossRoom}}; C2: B1+C1#D1: 4 {{SoulHeart}}; D2: 30 {{Coin}}#W1: 2 objetos {{BossRoom}}; W2: {{Collectible33}}#Sheol: 1 objeto {{DevilRoom}} + {{BlackHeart}}; Catedral: 1 objeto {{AngelRoom}} + {{SoulHeart}}#Cofre: 1 {{Coin}}#Casa: {{Collectible580}}"},
	[300] = {"300", "Aries", "↑ {{Speed}} Velocidad +0.25#Tocar a los enemigos les daña#Correr lo suficiente evitará el daño por contacto"},
	[307] = {"307", "Capricornio", "↑ {{Heart}} +1 de Vida#↑ {{Speed}} +0,1 Velocidad#↑ {{Tears}} Lágrimas +0,50#↑ {{Damage}} +0,93 Daño#↑ {{Range}} Alcance +0,75#+1 {{Coin}} moneda, {{Bomb}} bomba y {{Key}} llave#{{HealingRed}} Cura 1 corazón"}, -- Capricornio
	[308] = {"308", "Aquario", "Deja un rastro de creep#El creep inflige 6 de daño cada segundo#El creep hace sinergia con el efecto de lágrima"}, -- Aquario
	[309] = {"309", "Piscis", "↑ {{Tears}} Lágrimas +0.5#Lágrimas con empuje"},
	[310] = {"310", "Rímel de Eva", "↓ {{Tears}} Menos lágrimas#↑ {{Damage}} Daño x2#↓ {{Shotspeed}} Vel. de lágrimas -0.5"},
	[311] = {"311", "Sombra de Judas", "{{Player12}} Al morir, revives como Judas Oscuro#Al momento de revivir: #↑ {{Damage}} Daño x2"},
	[314] = {"314", "Piernas gordas", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#↓ {{Speed}} Velocidad -0.4#Rompes rocas al caminar"},
	[315] = {"315", "Atrayente extraño", "Lágrimas magnéticas#Afecta a los enemigos, recolectables y trinkets#Los objetos irán donde caiga la lágrima"},
	[319] = {"319", "El otro ojo de Caín", "Dispara lágrimas en direcciones aleatorias, imitando los efectos de la lágrima del jugador#{{Damage}} Inflige 75% del daño del jugador"}, -- Cain's Other Eye
	[320] = {"320", "El único amigo de ???", "Mosca controlable#Inflige 3.5 de daño por contacto por tick"},
	[323] = {"323", "Isaac's Tears", "Dispara 8 lágrimas en todas direcciones#Las lágrimas imitan los efectos del jugador#↑ {{Damage}} Las lágrimas poseen +5 de daño#Se recarga al disparar lágrimas"}, -- Isaac's Tears
	[326] = {"326", "Respiración de vida", "Mantener pulsado el botón {{ButtonLT}} vaciará la barra de carga#El jugador será invencible al vaciar toda la barra#Al ser invencible, caerán rayos de luz sobre los enemigos que te toquen#Bloquear daño a la perfección, disparará un rayo sagrado en cruz#{{Warning}} Mantenerlo activo por mucho tiempo dañará al jugador"}, -- Breath of Life
	[328] = {"328", "El negativo", "↑ {{Damage}} Daño +1.0#Daña a todos los enemigos de la habitación si te golpean teniendo medio corazón de vida roja o ninguno"}, -- El negativo
	[330] = {"330", "Leche de Soya", "↑ {{Tears}} Lágrimas x5.5#↓ {{Damage}} Daño -80%#El empuje se reduce de forma drástica"},
	[331] = {"331", "Deidad", "Lágrimas teledirigidas#↓ {{Tears}} Lágrimas -0.3#↑ {{Damage}} Daño +0.5#↑ {{Range}} Alcance +1.2#↓ {{Shotspeed}} Vel. de lágrimas -30%#↑ {{Tearsize}} Tamaño de lágrimas +0.8#Las lágrimas ganan un aura con daño plano de 2"}, -- Cabeza de Dios
	[332] = {"332", "Harapos de Lázaro", "{{Player11}} Al morir, revive como Lázaro Resucitado#{{Player29}} Laazaro Resucitado revivirá como él mismo"},
	[336] = {"336", "Cebolla muerta", "Lágrimas espectrales y penetrantes#↑ {{Range}} Alcance +0.25#↓ {{Shotspeed}} Vel. de lágrimas -0.4#↑ {{Tearsize}} Tamaño de lágrimas +50%"}, -- Cebolla muerta
	[339] = {"339", "Imperdible", "↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Velocidad de disparo +0.16#{{BlackHeart}} +1 corazón negro#↑ {{Tearsize}} Tamaño de lágrimas +0.5"},
	[342] = {"342", "Hongo azul", "↑ {{Heart}} +1 de Vida#↑ {{Tears}} Lágrimas +0.7#↓ {{Shotspeed}} Vel. de lágrimas -16%#{{HealingRed}} Cura 1 corazón"},
	[344] = {"344", "Caja de Fósforos", "{{BlackHeart}} +1 corazón negro#Genera de 2 a 3 bombas#{{Trinket41}} Genera el trinket Cerilla "}, -- Libro de cerillas
	[345] = {"345", "Synthol", "↑ {{Damage}} Daño +1.0#↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} +0,5 de tamaño de lágrima"},
	[346] = {"346", "Snack", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Snack
	[350] = {"350", "Choque tóxico", "{{Poison}} Al entrar en cada habitación los enemigos se envenenan#{{Poison}} Inmunidad a las nubes tóxicas"},
	[352] = {"352", "Cañón de vidrio", "Dispara una gran lágrima espectral y penetrante ((+1 daño) X 10)#Al recibir daño: #El daño es de dos corazones#El cañón se rompe y debe volver a cargarse"}, -- Cañón de vidrio
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{Trinket}} Genera un trinket aleatorio"}, -- Crack Jacks
	[355] = {"355", "Perlas de Mamá", "↑ {{Range}} Alcance +1.25#↑ {{Luck}} Suerte +1#{{SoulHeart}} +1 corazón de alma#↑ {{Tearsize}} Tamaño de lágrimas +0.5"}, -- Perlas de Mamá
	[360] = {"360", "Íncubo", "Familiar que dispara lágrimas con las mismas estadísticas y efectos que las tuyas#{{Player13}} Inflige 100 % de daño al jugar con Lilith#Si no, inflige el 75 % de daño"},
	[366] = {"366", "Bombas de dispersión", "↑ {{Bomb}} +5 Bombas#Hace que las bombas exploten en 4-5 bombas pequeñas"},
	[365] = {"365", "Mosca perdida", "Mosca que se mueve por las paredes de la habitación#Inflige 60 de daño por contacto cada segundo#Los enemigos cercanos irán hacia ella"},
	[367] = {"367", "Bombas Pegajosas", "↑ {{Bomb}} +5 Bombas#{{Slow}} Las bombas del jugador se pegarán a los enemigos#Matar enemigos con las bombas creará arañas azules"}, -- Sticky Bombs
	[368] = {"368", "Epífora", "↑ {{Tears}} Disparar en una única dirección aumenta la cadencia de disparo hasta un 200%"},
	[369] = {"369", "Continuo", "↑ {{Range}} Alcance +3.0#↑ {{Tearsize}} Tamaño de lágrimas +1.5#Las lágrimas atraviesan las paredes y aparecen por la pared contraria"}, -- Continuum
	[370] = {"370", "Sr. Muñeca", "↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +0.5#{{Heart}} Genera 3 corazones aleatorios al tomarlo"}, -- Mr. Dolly
	[372] = {"372", "Bebé recargado", "Posibilidad de dejar caer una batería pequeña o de congelar a los enemigos#Puede agregar una carga a tu objeto activable"}, -- Bebé cargado
	[374] = {"374", "Luz sagrada", "Posibilidad de disparar una lágrima sagrada#Esta lágrima dejará caer un rayo de luz sobre un enemigo#{{Damage}}El rayo inflige tres veces tu daño"},
	[375] = {"375", "Sombrero de Host", "20 % de posibilidad de evitar lágrimas#Inmunidad a explosiones"}, -- Host hat
	[376] = {"376", "Reabastecimiento", "Genera 3 recolectables#Las tiendas reponen los objetos que compres instantáneamente#El precio de los objetos repuestos aumenta"}, -- Reabastecimiento
	[380] = {"380", "Pay To Play", "{{Coin}} +5 monedas#Abres puertas y cofres con monedas en lugar de llaves"},
	[382] = {"382", "Bola amigable", "Se lanza a los enemigos para capturarlos#Cuando vuelvas a usarlo lo revivirá como aliado#Pasar por encima de la bola después de la captura recargará instantáneamente el objeto"}, -- Bola amigable
	[384] = {"384", "Pequeño Gurdy", "Rebota por la habitación#Inflige de 5 a 20 de daño por contacto dependiendo de cuánto lo hayas cargado"},
	[389] = {"389", "Bolsa de Runas", "{{Rune}} Genera una runa aleatoria cada 7-8 habitaciones#También puede generar piedras de alma"},
	[391] = {"391", "Traición", "Los enemigos podrán dispararse entre sí, empezando a pelear entre ellos"}, -- Betrayal
	[393] = {"393", "Beso de serpiente", "{{Poison}} Posibilidad de lanzar lágrimas venenosas#{{Poison}} Envenena al tocar#{{BlackHeart}} 20% de posibilidad de que los enemigos envenenados dejen caer un corazón negro"},
	[394] = {"394", "En la Mira", "Dispara lágrimas automáticamente dirigidas por la cruz roja del suelo que puedes controlar#↑ {{Tears}} Lágrimas +0.7#↑ {{Range}} Alcance +3.0#↑ {{Tearsize}} Tamaño de lágrimas +0.3#Los familiares disparan hacia la cruz"},
	[395] = {"395", "Tecnología X", "{{Chargeable}} Cargable#Disparas anillos láser que viajan a través de la habitación#Daño basado en la carga#100% de daño al cargarlo al completo"}, -- Tecnología X
	[397] = {"397", "Rayo tractor", "Las lágrimas viajan en línea recta siguiendo un rayo de luz, pero se mueven hacia los lados basándose en tu movimiento #↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +1.5#↑ {{Shotspeed}} Vel. de lágrimas +0.16#↑ {{Tearsize}} Tamaño de lágrimas +0.5"},
	[399] = {"399", "Fauces del vacío", "{{Chargeable}} Cargable#3Tras disparar lágrimas durante 3 segundos, crea un anillo negro que daña a los enemigos que están dentro de él"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Posibilidad de disparar bombas pegajosas#Las lágrimas pegadas infligen daño al impactar"},
	[404] = {"404", "Bebé pedorro", "Bloquea los proyectiles#Si le golpean se tirará un pedo, lo que envenenará, empujará o encantará a los enemigos cercanos#Los pedos infligen 5-6 de daño"},
	[405] = {"405", "Error de juego", "{{Throwable}} {{ColorOrange}}Lanzable{{CR}}#Cambia los enemigos y recolectables que toca"}, -- Error de juego
	[407] = {"407", "Pureza", "↑ Potencia una estadística dependiendo del color del aura que te rodea#Al recibir daño cambia el color del aura#{{ColorRed}}Rojo{{CR}} = {{Damage}} Daño +4.0#{{ColorBlue}}Azul{{CR}} = {{Tears}} Lágrimas +75% aproximadamente#{{ColorYellow}}Amarillo{{CR}} = {{Speed}} Velocidad +0.5#{{ColorOrange}}Naranja{{CR}} = {{Range}} Alcance +3.0, Tamaño de lágrima +1.0"},
	[408] = {"408", "Athame", "Posibilidad de crear un anillo negro alrededor de un enemigo al matarlo"},
	[415] = {"415", "Corona de la luz", "↑ {{SoulHeart}} +2 corazones de alma##Si posees todos tus corazones, recibirás: #↑ {{Range}} Alcance +1.5#↑ {{Damage}} Daño x2#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Se pierde el efecto en la habitación si te dañan"},
	[416] = {"416", "Bolsillos profundos", "Genera de 1 a 3 monedas si no ha habido recompensa en la habitación#Aumenta el máximo de monedas a 999"}, -- Bolsillos profundos
	[417] = {"417", "Súcubo", "Familiar que rebota con un aura que inflige 7,5-10 de daño cada segundo a los enemigos que estén dentro de ella#↑ Al quedarse sobre el aura, {{Damage}} Daño +50%"},
	[419] = {"419", "Teletransporte 2.0", "Te teletransporta a una habitación sin explorar#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"},
	[421] = {"421", "Alubia roja", "{{Charm}} Encanta a los enemigos cercanos"},
	[422] = {"422", "Reloj de arena brillante", "Regresa al jugador a la sala anterior y revierte toda acción cometida#El efecto se puede usar hasta 3 veces#{{Collectible66}} Tras agotar sus usos, se convertirá en un el Reloj de Arena, ralentizando a los enemigos por 8 segundos"}, -- Glowing Hourglass (formerly Glowing Hour Glass)
	[426] = {"426", "Fanático obsesionado", "Sigue tus movimientos exactos con 0,66 segundos de retraso#Inflige 30 de daño por contacto cada segundo"},
	[430] = {"430", "Papá mosca", "Sigue tus movimientos con 0,66 segundos de retraso#Dispara a los enemigos cercanos e inflige tu daño"},
	[431] = {"431", "Bebé multidimensional", "Sigue tus movimientos con 0,66 segundos de retraso#Las lágrimas que lo traspasen se dividen y ganan una mejora de velocidad"},
	[432] = {"432", "Bombas Brillantes", "↑ {{Bomb}} +5 Bombas#Las bomas tienen un 63% de posibilidad de generar un pickup al explotar#{{Charm}} Las bombas tienen un 15% de posibilidad de encantar a los enemigos al explotar#La posibilidad de generar pickups se reduce en 1% al generarlo durante el piso"}, -- Glitter Bombs
	[433] = {"433", "Mi sombra", "Una pequeña sombra seguirá al jugador#Se creará un black charger cuando un enemigo entre en contacto con la sombra, el cual inflige 5 puntos de daño por segundo"}, -- My Shadow
	[437] = {"437", "D7", "Vuelve a generar enemigos y te permite conseguir recompensas al acabar la habitación"},
	[440] = {"440", "Piedra en el riñón", "De manera aleatoria dejas de disparar hasta que lanzas un grupo de lágrimas y piedra del riñón"},
	[442] = {"442", "Corona del príncipe oscuro", "!!! {{Heart}} Al tener un corazón rojo lleno:#↑ {{Range}} Alcance +1.5#↑ {{Tears}} Lágrimas +2.0#↑ Vel. de disparo +0.2#(No funciona con personajes que no tienen vida roja"},
	[443] = {"443", "¡Manzana!", "Dispara cuchillas que infligen un 400 % de daño de manera aleatoria#↑ {{Tears}} Lágrimas +0.3"},
	[444] = {"444", "Lápiz", "Cada 15 lágrimas disparas un grupo de lágrimas"},
	[445] = {"445", "Diente de Perro", "↑ {{Speed}} Velocidad +0.1#↑ {{Damage}} Daño +0.3#Un lobo aúlla si entras en una habitación al lado de la sala secreta#Un ladrido si hay una trampilla"},
	[448] = {"448", "Trozo de vidrio", "Cuando te golpean, posibilidad de: #↑ {{Range}} Alcance +5#Soltar lágrimas rojas#Dejar un rastro de creep sangriento#Generar un corazón rojo"}, -- Trozo de vidrio
	[450] = {"450", "Ojo de Codicia", "Cada 20 lágrimas, disparas una lágrima moneda que inflinge {{Damage}} 1.5 veces tu daño + 10#Cuesta una moneda#Los enemigos golpeados recibirán el efecto del Toque de Midas#!!! Ese disparo cuesta una moneda"},
	[451] = {"451", "Tapete de Tarot", "{{Card}} Genera una carta aleatoria#Duplica el uso de cualquier carta#Algunas cartas ganan un efecto adicional"}, -- Tapete de Tarot
	[453] = {"453", "Fractura compuesta", "Lágrimas de hueso#Al golpear, las lágrimas se separan en 1-3 trozos de hueso pequeños#↑ {{Range}} Alcance +0.38#↑ {{Tearsize}} +1.0 de tamaño de lágrima"},
	[455] = {"455", "Moneda perdida de Papá", "↑ {{Range}} Alcance +0.38#Deja caer un penique de la suerte"},
	[456] = {"456", "Pan mohoso", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Pan Mohoso
	[459] = {"459", "Infección sinusal", "{{Poison}} 20% de posibilidad de disparar lágrimas venenosas que se pegan al enemigo hasta que muere#{{Luck}} La posibilidad de disparar lágrimas no es alterada por la suerte#Inflige tu daño cada tick"},
	[462] = {"462", "Ojo de Belial", "↑ {{Range}} Alcance +1.5#↑ {{Tearsize}} Tamaño de lágrimas +1.0#Otorga lágrimas penetrantes#Tras golpear al primer enemigo, las lágrimas infligen el doble de daño y se vuelven teledirigidas"},
	[464] = {"464", "Glifo de balance", "↑ {{SoulHeart}} +2 corazones de alma#Los enemigos campeones y las habitaciones generan recolectables con más frecuencia#La prioridad de los recolectables varía en función de lo que más necesites"}, -- Glifo de balance
	[468] = {"468", "Sombra", "Sigue tu movimiento con un retraso de un segundo#Inflige 75 de daño por contacto#Al recibir 666 puntos de daño, será absorbida por el jugador y aumentará el daño por contacto"},
	[472] = {"472", "Rey bebé", "Le siguen otros familiares y dispara automaticamente a los enemigos#No se mueve mientras disparas#Se teletransporta a ti cuando dejas de disparar"},
	[474] = {"474", "Cañón de cristal roto", "{{Collectible352}} Se convierte en el Cañón de cristal al usarlo"}, -- Cañón de cristal roto
	[476] = {"476", "D1", "Duplica un recolectable aleatorio en la habitación actual#El recolectable copiado no será 100% igual al original"},
	[477] = {"477", "Vacío", "!!! Al usarlo, consume todos objeto de pedestal en la habitación#Objeto activo: Se añade el efecto al de Vacío(Apilando los efectos)#↑ Objeto pasivo: Pequeña mejora aleatoria"},
	[487] = {"487", "Pelador de Papas", "{{Heart}} Elimina un contenedor, a cambio, otorga:#↑ {{Damage}} Daño +0.2 de daño#{{Collectible73}} Un Cubo de carne#↑ {{Range}} Alcance +1.5 y la capacidad de soltar creep rojo durante la sala"},
	[489] = {"489", "D infinito", "Pulsa la tecla {{ButtonRT}} para cambiar entre una variedad de distintos dados#El único dado al que no se tiene acceso es al {{Collectible723}} Dado Reductor"}, -- D infinito
	[491] = {"491", "Bebé ácido", "{{Pill}} Genera una píldora aleatoria cada 7 habitaciones#{{Poison}} Usar una píldora envenena a los enemigos"}, -- Bebé ácido
	[493] = {"493", "Adrenalina", "Por cada medio contenedor de corazón vacío:#↑ {{Damage}} Más daño basado en ((2 * Medios corazones vacíos) ^ 1,6) * 0,1"},
	[494] = {"494", "Escalera de Jacob", "Lágrimas eléctricas que al impactar generan 1 o 2 rayos#Los rayos infligen la mitad de tu daño#Los rayos saltan entre enemigos"}, -- Escalera de Jacob
	[495] = {"495", "Pimiento fantasma", "8% de posibilidad de disparar una flama azul#{{Luck}} 50% de posibilidad con suerte de 10#El fuego inflinge daño y bloquea proyectiles#El fuego se mantiene hasta infligir daño 5 veces"},
	[496] = {"496", "Eutanasia", "3.33% de posibilidad de disparar jeringuillas#{{Luck}} 25% de posibilidad con suerte de 15#Las jeringuillas matan a los enemigos normales de un golpe, disparando otras 10 jeringuillas#A los jefes les inflige el triple de tu daño"},
	[497] = {"497", "Interior Camuflado", "Al entrar a una habitación te camuflas hasta que disparas#↑ {{Speed}} Velocidad +0.5 al estar camuflado#Al descamuflarse: #Todos los enemigos serán dañados#↑ {{Damage}} Más daño por la sala#↑ {{Tears}} Más lágrimas por la sala"},
	[498] = {"498", "Dualidad", "{{AngelDevilChance}} Genera la sala del Diablo y del Ángel#Cuando entras en una la otra desaparece"},
	[501] = {"501", "Esófago de Codicia", "Cada 25 monedas te da 1 contenedor de corazón#{{Player14}} Keeper ganará más monedas-corazones#{{Collectible416}} Ganarás un nuevo contenedor por 100 monedas ya pasadas las 99"},
	[503] = {"503", "Pequeño cuerno", "Posibilidad de disparar una lágrima que invoca a una mano de Big Horn#La mano mata al instante a enemigos normales y daña a los jefes#Inflige 3,5 de daño por contacto"}, -- Pequeño cuerno
	[504] = {"504", "Pepita marrón", "Genera una mosca torreta que dispara a los enemigos#Cada disparo inflige 3,5 de daño"}, -- Pepita marrón
	[506] = {"506", "Apuñala espaldas", "{{BleedingOut}} Las lágrimas causan sangrado#El daño del sangrado se basará en la velocidad de los enemigos (Más velocidad = más daño)"},
	[507] = {"507", "Pajilla afilada", "Inflige tu daño + 10 % de la vida máxima del enemigo#Afecta a todos los enemigos de la habitación#{{HalfHeart}} Probabilidad de generar medio corazón al infligir daño"},
	[508] = {"508", "Afeitadora de Mamá", "{{BleedingOut}} Orbital que causa sangrado#El daño del sangrado se basará en la velocidad de los enemigos (Más velocidad = más daño)#Los enemigos que sangren dejarán un creep rojo al moverse#Puede bloquear proyectiles y dañar a jefes",},
	[509] = {"509", "Ojos rojos", "Orbital que dispara una lágrima cada 1-3 segundos si hay enemigos cerca#Inflige 3,5 de daño#Inflige 30 de daño por contacto cada segundo"},
	[513] = {"513", "Bozo", "↑ {{Damage}} Daño +0.1#↑ {{SoulHeart}} +1 corazón de alma#{{Charm}} /{{Fear}} Posibilidad de encantar/asustar a un enemigo#Posibilidad de generar una caca arcoíris al ser golpeado"},
	[514] = {"514", "Modem roto", "Varios enemigos comenzarán a 'laguearse', haciendo que se congelen por un momento#Posibilidad de congelar y remover disparos enemigos25% de posibilidad de duplicar las recompensas de sala"},
	[517] = {"517", "Bombas Rápidas", "↑ {{Bomb}} +5 Bombas#Te permite colocar bombas muy rápido#Las bombas no se empujarán entre sí"},
	[523] = {"523", "Caja de mudanza", "Guarda hasta seis recolectables de la habitación#Al volver  a usarlo suelta los recolectables#Te permite mover cosas entre habitaciones"}, -- Caja de mudanza
	[524] = {"524", "Tecnología cero", "Las lágrimas están conectadas con rayos de electricidad#Los rayos infligen 1/3 de tu daño"}, -- Tecnología cero
	[531] = {"531", "Hemolacria", "Las lágrimas salen en forma de arco#Al impactar, explotan en lágrimas más pequeñas#↓ {{Tears}} Menos lágrimas#↑ {{Damage}} Daño +50%#↑ {{Damage}} Daño adicional +1.0"},
	[535] = {"535", "Manto", "{{SoulHeart}} +1 corazón de alma#{{Heart}} Cura un corazón rojo#Otorga un escudo al entrar a la sala del jefe"},
	[541] = {"541", "Médula", "{{EmptyBoneHeart}} +1 corazón de hueso#{{Heart}} Genera 3 corazones rojos"},
	[543] = {"543", "Suelo Santificado", "Genera una caca blanca con un aura cuando te golpean#El aura otorga lo siguiente: #↑ {{Damage}} Daño +25%#↑ {{Tears}} Lágrimas +100%#Lágrimas teledirigidas#Las lágrimas pueden bloquear disparos"}, -- Tierra sagrada
	[547] = {"547", "Papeles del divorcio", "↑ {{EmptyBoneHeart}} +1 un corazón de hueso#↑ {{Tears}} Lágrimas +0.7#{{Trinket21}} Genera un Papel misterioso"},
	[549] = {"549", "Huesos frágiles", "{{EmptyBoneHeart}} Remplaza todos los contenedores de corazón por 6 corazones de hueso#Perder un corazón de hueso dispara lágrimas en todas las direcciones#↑ {{Tears}} Lágrimas +0.5"},
	[552] = {"552", "Pala de Mamá", "Genera una trampilla hacia la siguiente planta#Úsala en el montón de tierra en  \"Cuarto Oscuro\"#"},
	[553] = {"553", "Mucormicosis", "Posibilidad de disparar lágrimas de espora que se pegan al enemigo#Las esporas explotan tras 2,5 segundos, soltando más esporas e infligiendo daño y envenenando a enemigos cercanos"}, --  Mucormicosis
	[554] = {"554", "Tengo miedo", "{{Fear}} Asusta a los enemigos en un radio pequeño a tu alrededor"}, --   Muy fantasmagórico
	[555] = {"555", "Cuchilla dorada", "{{Coin}} Convierte 5 monedas en#{{ArrowUp}} {{Damage}} Daño +1.2 en la habitación actual"}, --  Navaja de oro
	[556] = {"556", "Sulfuro", "{{Collectible118}} Activa el efecto de Azufre en la habitación actual"}, --  Sulfuro
	[557] = {"557", "Galleta de la suerte", "Puede generar: #Una fortuna #{{SoulHeart}} Un Corazón de Alma#{{Card}} Una Carta#{{Trinket}} Un Trinket#{{Rune}} Una Runa o Piedra de alma"}, --  Galleta de la fortuna
	[558] = {"558", "Dolor de ojo", "Posibilidad de disparar de 1 a 2 lágrimas adicionales en direcciones aleatorias"}, --  Dolor de ojo
	[559] = {"559", "120 voltios", "Da descargas de energía a los enemigos cercanos#La electricidad inflige el 75 % de tu daño"}, --  120 voltios
	[560] = {"560", "Duele...", "Suelta un círculo de 10 lágrimas cuando te golpean#↑ {{Tears}} Lágrimas +1.2 con el primer golpe#↑ {{Tears}} Lágrimas +0.4 por cada golpe adicional"}, --  ¡Eso duele!
	[561] = {"561", "Leche de almendras", "↑ {{Tears}} Lágrimas x 4#↓ {{Damage}} Daño x 0.3#{{Trinket64}} Las lágrimas ganan los efectos aleatorios de los trinkets de gusano"}, --  Leche de almendra
	[562] = {"562", "Fondo rocoso", "Evita que tus estadísticas bajen durante el resto de partida"}, --  Has tocado fondo
	[563] = {"563", "Nancy Bombas", "↑ {{Bomb}} +5 Bombas#Las bombas explotan con un efecto de bomba aleatorio"}, --  Bombas guays
	[564] = {"564", "Pastilla de jabón", "↑ {{Tears}} Lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2"}, --  Pastilla de jabón
	[565] = {"565", "Cachorro sangriento", "Familiar que persigue a los enemigos#Tras matar suficientes enemigos, se vuelve más poderoso, pero también te intentará atacar a ti#Atacarle le devuelve a su estado normal"}, --  Cachorro sangriento
	[566] = {"566", "Atrapasueños", "{{HalfSoulHeart}} Medio corazón de alma al cambiar de piso#Durante la transición entre pisos, la pesadilla de Isaac muestra el objeto de la habitación del tesoro y al jefe del piso"}, --  Atrapasueños
	[567] = {"567", "Cirio pascual", "↑ {{Tears}} Lágrimas +0.4#↑ {{Tears}} Aumento de lágrimas +0.4 por habitación si no se recibe daño#Se acumula hasta 5 veces"}, --  Cirio pascual
	[568] = {"568", "Intervención divina", "Al tocar dos veces una tecla de disparo se crea un escudo#El escudo dura un segundo, aleja a los enemigos, refleja proyectiles y láseres enemigos"}, --  Intervención divina
	[569] = {"569", "Juramento de sangre", "{{Heart}} Te apuñala al inicio del piso, dejando tus corazones rojos a la mitad#Incrementa las estadísticas durante todo el piso:#↑ {{Damage}} Daño + 0.15 * Corazones perdidos^2#↑ {{Speed}} Velocidad + 0.05 * Corazones perdidos"}, --  Juramento de sangre
	[570] = {"570", "Galleta de plastilina", "Garantiza lágrimas multicolores con efectos aleatorios"}, --  Galleta de plastilina
	[571] = {"571", "Calcetines de huérfano", "Evita el daño del creep y de los pinchos del suelo#↑ {{Speed}} Velocidad +0.3#↑ {{SoulHeart}} +2 corazones de alma"}, --  Calcetines de huérfano
	[572] = {"572", "El ojo de lo oculto", "Lágrimas controlables#↑ {{Damage}} Daño +1.0#↑ {{Range}} Alcance +7.5#↓ {{Shotspeed}} Vel. de lágrimas -0.16"}, --  El ojo de lo oculto
	[573] = {"573", "Corazón inmaculado", "↑ {{Heart}} +1 de Vida#↑ {{Damage}} Multiplicador de Daño de x1.2#{{HealingRed}} Vida al completo#20% de probabilidad de disparar una lágrima extra que es orbital y espectral"}, -- Corazón inmaculado
	[574] = {"574", "Ostensorio", "Gana dos auras circulares que dañan a los enemigos#El aura interna inflige más daño"}, --  Ostensorio
	[575] = {"575", "El intruso", "Un familiar arácnido dentro de tu cabeza#{{Slow}} Dispara 4 lágrimas ralentizantes#Al recibir daño, saldrá de tu cabeza"}, --  El intruso
	[576] = {"576", "Mente sucia", "Destruir cacas genera de 1 a 4 caquitas amistosas#El tipo de las caquitas dependerá de la caca de origen"}, --  Mente sucia
	[577] = {"577", "Damocles", "{{Warning}} UN SOLO USO {{Warning}}#Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#Te mata en un momento aleatorio al recibir daño de un enemigo y haber usado la espada"}, --  Damocles
	[578] = {"578", "Limonada gratis", "Crea una gran piscina de creep amarillo"}, --  Limonada gratis
	[579] = {"579", "Espada espiritual", "En lugar de lágrimas, tienes una espada#{{Damage}} Inflige el triple de tu daño#{{Chargeable}} Tiene un ataque en giro + disparo de proyectil al cargarla#{{Heart}} Si tienes la vida al completo, dispara proyectiles con los ataques sin cargar"}, --  Espada espiritual
	[580] = {"580", "Llave roja", "Crea una nueva habitación adyacente a una pared disponible, indicada por el contorno de una puerta#Pueden ser habitaciones especiales#Si intenta crear una habitación fuera del límite máximo del mapa (13 x 13 habitaciones), Isaac irá a I AM ERROR."}, --  Llave roja
	[581] = {"581", "Mosca psíquica", "Mosca orbital#Persigue y desvía proyectiles#Inflige daño por contacto"}, --  Mosca psíquica
	[582] = {"582", "Seta ondulada", "↑ {{Shotspeed}} Vel. de lágrimas +0.75#↓ {{Speed}} Velocidad -0.03#Distorsiona la pantalla#Efecto acumulable"}, --  Seta ondulada
	[583] = {"583", "Cohete en un jarro", "↑ {{Bomb}} +5 Bombas#Colocar una bomba al disparar lanzará un cohete a la dirección donde dispares"}, --  Cohete en un bote
	[584] = {"584", "El libro de las virtudes", "Genera un fuego orbital que dispara lágrimas espectrales que puede destruirse#Puede combinarse con un segundo objeto activo para crear fuegos temáticos#Cambia la primera sala del diablo por la del ángel"}, --  El libro de las virtudes
	[585] = {"585", "Caja de alabastro", "Genera: #{{SoulHeart}} 3 Corazones de alma#{{AngelRoom}} Dos objetos de la Sala del Ángel#{{SoulHeart}} Sólo se carga con Corazones de alma"}, --  Caja de alabastro
	[586] = {"586", "La escalerilla", "Genera una escalera al inicio de cada piso#{{AngelRoom}} Lleva a una tienda de la sala del ángel"}, --  Escalera de mano
	[587] = {"587", "Menorah (Sin usar pero está presente)", "<No existe>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "{{BossRoom}} Revela el lugar de la sala del jefe #Al derrotar al jefe activa la carta {{Card20}} El Sol#Recarga el objeto activo#Otorga lo siguiente para el resto del piso:↑{{Damage}} Daño +3#↑ {{Luck}} Suerte +1"}, --  Sol
	[589] = {"589", "Luna", "Agrega una habitación secreta adicional {{SecretRoom}} y una súper secreta {{SuperSecretRoom}} a cada piso#Las habitaciones secretas contienen un rayo de luz que al tocarlo otorga lo siguiente: #↑ {{Tears}} Lágrimas +1.0 al tocar el primer rayo#↑ {{Tears}} Lágrimas +0.5 al tocar los siguientes rayos#{{HalfSoulHeart}} Medio Corazón de alma"}, --  Luna
	[590] = {"590", "Mercurius", "↑ {{Speed}} Velocidad +0.4#Al entrar en una habitación las puertas siguen abiertas"}, --  Mercurio
	[591] = {"591", "Venus", "{{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón#{{Charm}} Los enemigos cercanos se encantan"}, --  Venus
	[592] = {"592", "Terra", "↑ {{Damage}} Daño +1.0#Cambia las lágrimas por rocas#Infligen daño variable#Pueden destruir obstáculos#Mejora el empuje"}, --  Terra
	[593] = {"593", "Mars", "Embiste pulsando dos veces la tecla de movimiento#te vuelves invulnerable e infliges {{Damage}} 4 veces tu daño#3 segundos de recarga"}, --  Marte
	[594] = {"594", "Júpiter", "{{Heart}} +2 corazones rojos#↓ {{Speed}} Velocidad -0.3#{{HealingRed}} Cura medio corazón#↑ {{Speed}} Bonus de velocidad +0.5 al quedarse quieto#{{Poison}} Suelta una nube de veneno al moverse otra vez"}, --  Júpiter
	[595] = {"595", "Saturnus", "Te rodea un círculo#Al entrar en una habitación, 7 lágrimas orbitan#Posibilidad de atrapar proyectiles enemigos en la órbita"}, --  Saturno
	[596] = {"596", "Uranus", "Dispara lágrimas de hielo, tienen la posibilidad de: #{{Slow}} Ralentizar a los enemigos#{{Freezing}} Congelar a los enemigos#Tocar enemigos congelados los empuja y explotan en 6 trozos de hielo"}, --  Urano
	[597] = {"597", "Neptunus", "{{Chargeable}} Cargable (Automático)#Al no disparar, se empezará a cargar un ataque#Disparar hará que sueltes una ráfaga de lágrimas hasta que dispares a tu cadencia regular#Dejar de disparar recargará el ataque"}, --  Neptuno
	[598] = {"598", "Pluto", "↑ {{Tears}} Lágrimas +0.7#Encoge mucho a Isaac, permitiendo que pase entre objetos#Los proyectiles puede pasarte por encima"}, --  Pluto
	[599] = {"599", "Cabeza de vudú", "{{CursedRoom}} Genera una habitación maldita adicional en cada piso#{{CursedRoom}} Se generan mejores salas malditas"}, --  Cabeza de vudú
	[600] = {"600", "Gotas para ojos", "↑ {{Tears}} Lágrimas +30% al ojo izquierdo con disparo algo errático#↑ {{Tears}} Lágrimas +20% para ataques que no son lágrimas"}, --  Gotas para ojos
	[601] = {"601", "Acto de contrición", "↑ {{Tears}} Lágrimas +0.7#{{EternalHeart}} +1 corazón eterno#{{AngelDevilChance}} Permite que aparezcan salas del ángel aunque hayas hecho pactos con el diablo antes"}, --  Acto de contrición
	[602] = {"602", "Tarjeta de socio", "{{Shop}} Añade una trampilla en cada tienda que permite acceder a una segunda tienda con artículos únicos"}, --  Tarjeta de socio
	[603] = {"603", "Conjunto de baterías", "{{Battery}} Genera de 2 a 4 baterías#Recarga el objeto activo al completo"}, --  Conjunto de baterías
	[604] = {"604", "Pulsera de mamá", "Permite levantar y lanzar piedras, TNT, cacas, Hosts (enemigo calavera), y otros obstáculos#Permite moverlos entre habitaciones"}, --  Pulsera de mamá
	[605] = {"605", "Cuchara de helado", "Invoca un familiar peeper en la habitación actual, que deja un creep rojo"}, --  Cuchara de helado
	[606] = {"606", "Grieta ocular", "Posibilidad de disparar lágrimas que crean grietas donde caen#Atraen enemigos cercanos, recolectables y proyectiles"}, --  Grieta ocular
	[607] = {"607", "Bebé hervido", "Familiar que dispara grupos de lágrimas de manera caótica#Inflige 3,5 o 5,3 de daño por lágrima"}, --  Bebé hervido
	[608] = {"608", "Bebé congelado", "{{Freezing}} Familiar que dispara lágrimas congelantes#{{Freezing}} Congela a los enemigos al matarlos"}, --  Bebé congelado
	[609] = {"609", "D6 eterno", "Cambia todos los objetos de la habitación#Posibilidad de que los objetos desaparezcan"}, --  D6 eterno
	[610] = {"610", "Pecho de ave", "Familiar que salta sobre un enemigo cuando te golpean#Inflige 45 de daño y lanza una ola de rocas#Después persigue a los enemigos"}, --  Jaula de pájaros
	[611] = {"611", "Laringe", "Te hace gritar, dañando y alejando a los enemigos cercanos#Cuantas más cargas tenga el objeto, más potente es"}, --  Laringe
	[612] = {"612", "Alma perdida", "Familiar de alma que muere de un golpe y reaparece al inicio de la siguiente planta#Si sobrevive toda la planta, genera 3 corazones de alma, 2 corazones eternos u objetos"}, --  Alma perdida
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Bombas de sangre", "{{Heart}} +1 de Vida#{{HealingRed}} Cura 4 corazones#Las bombas dejan creep rojo#Si no tienes bombas, puedes poner una a cambio de medio corazón"}, --  Bombas de sangre
	[615] = {"615", "Mini-Dumpy", "Familiar Dumpy que sigue al jugador#Emite un gas que refleja un proyectil que pueda golpear al jugador#Posibilidad de emitir el gas si un proyectil pasa cerca de su área"}, --  Dumpy pequeño
	[616] = {"616", "Ojo de pájaro", "Posibilidad de disparar fuegos que bloquean proyectiles enemigos e infligen daño por contacto#El daño máximo es 4 veces tu daño"}, --  Ojo de pájaro
	[617] = {"617", "Piedra de imán", "{{Magnetize}} Posibilidad de disparar lágrimas que magnetizan a los enemigos#Atrae recolectables cercanos, proyectiles y enemigos"}, --  Piedra de imán
	[618] = {"618", "Tomate podrido", "{{Bait}} Posibilidad de disparar lágrimas que marcan a los enemigos#A los enemigos marcados los atacan otros enemigos"}, --  Tomate podrido
	[619] = {"619", "Primogenitura", "Tiene un efecto distinto en cada personaje"}, --  Derecho de nacimiento
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Guisado rojo", "#↑ {{Damage}} Daño +21.6#{{HealingRed}} Vida al completo#El daño se pierde poco a poco a lo largo de los 3 minutos siguientes"}, --  Estofado rojo
	[622] = {"622", "Génesis", "{{Warning}} UN SOLO USO {{Warning}}#Elimina todos tus objetos y recolectables#Te teletransporta a una habitación única con recolectables, cofres y una trampilla#Por cada objeto perdido, se te darán a escoger entre 3 de la misma pool"}, --  Génesis
	[623] = {"623", "Llave afilada", "{{Key}} +5 llaves#Lanza tus llaves para infligir daño, destrozar obstáculos y abrir puertas"}, --  Llave afilada
	[624] = {"624", "Paquete de refuerzo", "{{Card}} Genera 5 cartas aleatorias"}, --  Paquete de refuerzo
	[625] = {"625", "Mega seta", "Te haces gigante durante 30 segundos#Aumenta el daño y el alcance#Otorga invulnerabilidad y habilidad para destrozar enemigos y obstáculos#El efecto se mantiene entre habitaciones"}, --  Mega seta
	[626] = {"626", "Primera parte del cuchillo", "Primera parte del cuchillo familiar"}, --  Primera parte del cuchillo
	[627] = {"627", "Segunda parte del cuchillo", "{{Collectible626}} Al combinarla con la Primera parte del cuchillo , crea un cuchillo familiar#Daña a los enemigos#Abre la puerta de carne"}, --  Segunda parte del cuchillo
	[628] = {"628", "Certificado de defunción", "{{Warning}} UN SOLO USO {{Warning}}#Te lleva a un piso que contiene todos los objetos del juego#Tras tomar un objeto, te devuelve a la habitación en la que estabas"}, --  Certificado de defunción
	[629] = {"629", "Mosca robot", "Orbital que dispara lágrimas con escudo"}, --  Mosca robot
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Cuchillo de carnicero", "Divide a los enemigos de la habitación en 2 versiones más pequeñas con menos vida"}, --  Cuchillo de carnicero
	[632] = {"632", "Nazar", "↑ {{Luck}} Suerte +2#{{HalfSoulHeart}} + Medio corazón de alma en cada planta#Inmunidad a efectos de estado"}, --  Amuleto del mal
	[633] = {"633", "Dogma", "Recibes vuelo y un {{HolyMantle}} escudo de Manto Sagrado que dura una sala#↑ {{Damage}} Daño +2.0#↑ {{Speed}} Velocidad +0.1#Si tienes menos de 6 corazones, te curas con una mezcla de corazones rojos y de alma"}, --  Dogma
	[634] = {"634", "Purgatorio", "Al estar en una habitación con enemigos, genera grietas en el suelo#Caminar sobre ellas invoca fantasmas explosivos"}, --  Purgatorio
	[635] = {"635", "Puntos de sutura", "De manera pasiva genera un familiar que se mueve en la dirección de tus disparos#Al usarlo, intercambias la posición con el familiar y ganas una invencibilidad corta#Teletransportarse en cosas puede dañarlas o destrozarlas"}, --  Puntos de sutura
	[636] = {"636", "Tecla R", "{{Warning}} UN SOLO USO {{Warning}}#Te teletransporta a la primera planta de una nueva run#Los objetos y recolectables se mantienen"}, --  Tecla R
	[637] = {"637", "Gotas de impacto", "Posibilidad de disparar un puño con mucho empuje y que confunde a los enemigos"}, --  Gotas de impacto
	[638] = {"638", "Goma de borrar", "Lanza una goma de borrar que mata instantáneamente a un enemigo#Evita que ese enemigo reaparezca en el resto de la partida#Inflige 15 de daño a los jefes#Solo se puede usar una vez por piso"}, --  Goma de borrar
	[639] = {"639", "Corazón asqueroso", "{{RottenHeart}} Otorga un corazón podrido al usarlo"}, --  Corazón asqueroso
	[640] = {"640", "Urna de almas", "Lanza llamas azules#Gana cargas por cada enemigo que mates"}, --  Urna de almas
	[641] = {"641", "Aceldama", "Crea una cadena de lágrimas detrás mientras estás en combate#Las lágrimas infligen 3,5 de daño"}, --  Akeldama
	[642] = {"642", "Piel mágica", "Consume 1 contenedor de corazón o 2 corazones de alma para generar un objeto de la pool del objeto actual#{{BrokenHeart}} Otorga un corazón roto al usarlo#{{Warning}} Objeto de un solo uso para The Lost"}, --  Piel mágica
	[643] = {"643", "Revelación", "{{Chargeable}} Lásar Sagrado cargable#Otorga: #Vuelo#{{SoulHeart}} 2 Corazones de alma"}, --  Revelación
	[644] = {"644", "Premio de consolación", "Mejora tu estadística más baja#Puede generar 3 monedas, 1 bomba, o 1 llave dependiendo de lo que tengas menos"}, --  Premio de consolación
	[645] = {"645", "Minitoma", "Familiar orbital#Bloquea disparos#Inflige daño por contacto#Se divide en versiones más pequeñas tras 3 golpes#Al romperse las versiones pequeñas se convierten en arañas azules#Reaparece 5 segundos después"}, --  Minitoma
	[646] = {"646", "Bombas de azufre", "↑ {{Bomb}} +5 Bombas#{{Collectible118}} Las bombas disparan 4 láseres de Azufre en forma de cruz"}, --  Bombas de azufre
	[647] = {"647", "4.5 voltios", "Los objetos activos no se cargan al limpiar una habitación#Se cargan al infligir daño a los enemigos#60 daño = 1 carga"}, --  4,5 voltios
	[648] = {"648", "Triturador de píldoras", "<Este objeto no existe>"},
	[649] = {"649", "Ciruela afrutada", "Mini Plum familiar#Viaja por la habitación en diagonal, disparando lágrimas"}, --  Ciruela afrutada
	[650] = {"650", "Flauta ciruela", "Invoca a Ciruelita en la habitación actual durante 10 segundos"}, --  Flauta de ciruela
	[651] = {"651", "Estrella de Belén", "{{BossRoom}} Familiar que viaja lentamente hasta la sala del jefe#Emite un aura que garantiza: #↑ {{Damage}} Daño x1.2 + 1#↑ {{Tears}} Lágrimas x2.5#Lágrimas Teledirigidas"}, --  Estrella de Belén
	[652] = {"652", "Bebé cubito", "Familiar que se desliza por la habitación si lo empujas#Ralentiza e inflige daño por contacto, al matar congela a los enemigos"}, --  Bebé cubito
	[653] = {"653", "Vade Retro", "Al tenerlo, los enemigos no fantasmas dejan pequeños fantasmas rojos al morir#Al usarlo, hace que los fantasmas exploten"}, --  Vade Retro
	[654] = {"654", "Falso PHD", "{{Pill}} Identifica todas las píldoras#{{Pill}} Convierte las píldoras buenas en píldoras malas#{{BlackHeart}} +1 corazón negro#↑ {{Damage}} Las píldoras que bajan las estadísticas dan más daño#{{BlackHeart}} Otras píldoras sueltan corazones negros"}, --  Falso PHD
	[655] = {"655", "Gira para ganar", "Añade un orbital giratorio que bloquea proyectiles enemigos#Inflige 10,5 de daño por contacto cada segundo#Al usarlo: #↑ {{Speed}} Velocidad +0.5#Aumenta la velocidad de rotación de los orbitales"}, --  Gira para ganar
	[656] = {"656", "Damocles", "No deberías encontrar esto"}, -- Damocles
	[657] = {"657", "Vasculitis", "Los enemigos sueltan lágrimas al morir que aplica tus efectos de lágrima"}, --  Vasculitis
	[658] = {"658", "Célula gigante", "Al recibir daño genera mini Isaacs#Persiguen y disparan a los enemigos cercanos"}, --  Célula gigante
	[659] = {"659", "Tropicamida", "↑ {{Range}} Alcance +1.5 #{{Tearsize}} Aumenta el tamaño de la lágrima"}, --  Tropicamida
	[660] = {"660", "Lectura de cartas", "Genera dos portales al inicio de cada planta#Los portales desaparecen al dejar la habitación#{{ColorRed}}Rojo: {{CR}} {{BossRoom}} Sala del jefe #{{ColorYellow}}Amarillo: {{CR}} {{TreasureRoom}} Sala del tesoro#{{ColorBlue}}Azul: {{CR}} {{SecretRoom}} Habitación secreta"}, --  Lectura de cartas
	[661] = {"661", "Quintillizos", "Al morir los enemigos, se genera en ese lugar un familiar estático que dispara#Hasta 5 familiares"}, --  Quintillizos
	[662] = {"662", "Pacifista (Cut item)", "<Este objeto no existe>"}, -- Pacifista (Cut item)
	[663] = {"663", "Con uñas y dientes", "Te vuelve invencible durante 1 segundo cada 6 segundos#Resplandece antes de ocurrir"}, --  Con uñas y dientes
	[664] = {"664", "Comedor compulsivo", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Vida al completo#Los pedestales de objetos cambiarán periódicamente entre objetos de comida y otro objeto#tomar el objeto de comida otorga: #{{HealingRed}} Cura 2 corazones#↑ {{Damage}} Daño temporal +3.6#↑ Dos mejoras de estadísticas, dependen del item de comida"}, --  Comedor compulsivo
	[665] = {"665", "El ojo de Guppy", "Muestra el contenido de los cofres, sacos y hogueras antes de abrirlos"}, --  El ojo de Guppy
	[666] = {"666", "", "<Este objeto no existe>"},
	[667] = {"667", "Hombre de paja", "{{Player14}} Genera un Keeper compañero#Si muere, genera arañas azules#El objeto acaba desapareciendo"}, --  Hombre de paja
	[668] = {"668", "Nota de papá", "Tomarlo iniciará la ruta de ascenso hasta Casa#{{Trinket}} Transformará todos los trinkets dejados en la {{BossRoom}} Sala del jefe o la {{TreasureRoom}} Sala del tesoro en una {{Card78}} Llave rota"}, --  Nota de papá
	[669] = {"669", "Salchicha", "↑ {{Heart}} +1 corazón#↑ {{Speed}} Velocidad +0.2#↑ {{Damage}} Daño +0.5#↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +0.16#↑ {{Shotspeed}} Vel. de lágrimas +1.2#↑ {{Luck}} Suerte +1#{{HealingRed}} Vida al completo#↑ {{AngelDevilChance}} Posibilidad de sala de Diablo/Ángel +6.9%#↑ {{PlanetariumChance}} Posibilidad de Planetario +6.9% "}, --  Salchicha
	[670] = {"670", "¿Opciones?", "Si limpiar una habitación genera una recompensa, habrá dos para elegir#Tomar una hace que la otra desaparezca"}, --  ¿Opciones?
	[671] = {"671", "Corazón de caramelo", "{{ArrowUp}} Otorga una mejora permanente aleatoria de estadísticas tomar un corazón rojo"}, --  Corazón de caramelo
	[672] = {"672", "Una libra de carne", "{{DevilRoom}} Los pactos del diablo ahora cuestan monedas#{{Shop}} Los objetos de las tiendas cuestan vida#Los recolectables en las tiendas son gratis pero están rodeados con pinchos"}, --  Una libra de carne
	[673] = {"673", "Redención", "{{DevilRoom}} Si sales de una Sala del Diablo sin tomar nada, ganas: #{{SoulHeart}} Un Corazón de alma#{{ArrowUp}} {{Damage}} Daño +1.0"}, --  Redención
	[674] = {"674", "Grilletes espirituales", "Al morir, tu fantasma se encadena a tu cuerpo muerto y puedes seguir luchando con medio corazón de alma#Te devuelve a la vida tras 10 segundos#{{SoulHeart}} Se recarga tomando corazones de alma"}, --  Grilletes espirituales
	[675] = {"675", "Orbe roto", "Al recibir daño, revela habitaciones aleatorias de la planta#También desbloquea puertas cerradas con llave#Puede abrir la puerta de Mega Satán#{{UltraSecretRoom}} Puede revelar habitaciones ultra secretas"}, --  Orbe roto
	[676] = {"676", "Corazón vacío", "{{EmptyHeart}} Al tener un contenedor de corazón vacío al iniciar una planta, añade otro contenedor#{{EmptyBoneHeart}} Los corazones de hueso no cuentan"}, --  Corazón vacío
	[677] = {"677", "Proyección astral", "Cuando te golpean el tiempo se para 3 segundos#Te conviertes en un fantasma y dejas tu cuerpo#Como fantasma, vuelas, tienes lágrimas espectrales y el siguiente golpe no lo recibes"}, --  Proyección astral
	[678] = {"678", "Cesárea", "{{Chargeable}} Cargable#Dispararás fetos automáticamente al presionar el botón de disparo#Los fetos seguirán a los enemigos y los atacarán varias veces"}, --  Sección C
	[679] = {"679", "Mini Abadón", "{{Collectible399}} Familiar que dispara un ataque similar a Fauces del Vacío"}, --  Mini Abadón
	[680] = {"680", "Venganza de Montezuma", "{{Chargeable}} Disparo láser trasero cargable"}, --  Venganza de Montezuma
	[681] = {"681", "Portal pequeño", "Inflige daño por contacto y vuela hacia delante#Consume los recolectables a su paso#Cada uno aumentará su tamaño, daño y generará una mosca azul#Cada cuatro recolectables, genera un portal a una habitación inexplorada"}, --  Portal pequeño
	[682] = {"682", "Amigo gusano", "Hace que un tentáculo salga del suelo#Puede agarrar a un enemigo e infligir daño"}, --  Amigo gusano
	[683] = {"683", "Espuelas de hueso", "Al morir, los enemigos generan huesos#Los huesos bloquean proyectiles e infligen daño por contacto"}, --  Espuelas de hueso
	[684] = {"684", "Alma hambrienta", "Posibilidad de que aparezcan fantasmas al matar enemigos#Los fantasmas persiguen enemigos e infligen daño por contacto#Tras 5 segundos, el fantasma explota infligiendo 7 de daño a los enemigos cercanos#La explosión no te afecta"}, --  Alma hambrienta
	[685] = {"685", "Tarro de abispas", "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#El número de fuegos aumenta cuanto más uses el objeto"}, --  Tarro de abispas
	[686] = {"686", "Relicario del alma", "{{SoulHeart}} Genera un corazón de alma al tomarlo#{{ArrowUp}} Otorga una mejora de estadística permanente al tomar corazones de alma"}, --  Relicario del alma
	[687] = {"687", "Buscador de amigos", "Genera un monstruo familiar aleatorio que copia tus ataques y movimientos"}, --  Buscador de amigos
	[688] = {"688", "Niño interior", "+1 vida adicional#Al morir, revive en la habitación actual con: #{{HalfHeart}} Medio corazón#{{ArrowUp}} Velocidad +0.2#Un tamaño reducido"}, --  Niño interior
	[689] = {"689", "Corona glitcheada", "Los pedestales cambian rápidamente entre 5 objetos aleatorios"}, --  Corona glitcheada
	[690] = {"690", "Belly Jelly", "Al tocarte, tienen una posibilidad de rebotar#Hacer que choquen contra obstáculos inflige daño#Posibilidad de desviar proyectiles"}, --  Barriga gelatinosa
	[691] = {"691", "Orbe sagrado", "Evita que los objetos de calidad {{Quality0}} y {{Quality1}} aparezcan#33% de posibilidad de cambiar los objetos de calidad {{Quality2}} por {{Quality3}} o {{Quality4}}"}, --  Orbe sagrado
	[692] = {"692", "Vínculo de Sangre", "{{DevilRoom}} Genera un tipo de pinchos especiales en la sala del diablo#Hacerse daño puede dar una recompensa:#{{Coin}} 35% 6 monedas#{{ArrowUp}} {{Damage}} 15% Daño +0.5 #{{BlackHeart}} 5% 2 corazones negros#2% objeto de la pool del Diablo#1% trasnformación de Leviatán"}, --  Lazo de sangre
	[693] = {"693", "La Enjambre", "Otorga 8 moscas orbitales que se convierten en moscas azules tras bloquear un proyectil#Genera una nueva mosca al limpiar cada habitación"}, --  El enjambre
	[694] = {"694", "Corazón roto", "{{BrokenHeart}} Otorga 3 corazones rotos#↑ {{Damage}} Daño +0.25 de daño por cada corazón roto#Cada golpe fatal añade otros 2 corazones rotos#Mueres al tener 12 corazones rotos"}, --  Rompecorazones
	[695] = {"695", "Ráfaga de sangre", "Al recibir daño, gana velocidad y más lágrimas en la planta actual"}, --  Ráfaga de sangre
	[696] = {"696", "Salvación", "Otorga un aura que genera rayos de luz al tocar a los enemigos#Cuanto más daño te hagan en esa planta, más grande será el aura"}, --  Salvación
	[697] = {"697", "Gemelo desvaneciente", "Familiar que clona al jefe al entrar en la sala del jefe#Derrotarle genera un objeto extra#El clon es más lento y tiene un 75 % de la vida del jefe original"}, --  Gemelo que desaparece
	[698] = {"698", "Par retorcido", "Dos familiares que se quedan a tu lado#Disparan lágrimas como las tuyas, pero con el 37,5 % de tu daño"}, --  Par retorcido
	[699] = {"699", "La ira de Azazel", "Acumula ira al limpiar cada habitación#{{Collectible118}} Tras 4 habitaciones, dispara un gran rayo de Azufre al entrar a la siguiente habitación"}, --  La ira de Azazel
	[700] = {"700", "Cámara de eco", "Cuando usas una carta, píldora o runa, replica el efecto de las últimas 3 cartas, píldoras o runas que se hayan usado#Se puede repetir el efecto de una misma carta píldora o runa"}, --  Caja de eco
	[701] = {"701", "La tumba de Isaac", "Genera un cofre viejo al inicio de cada planta#Puede contener corazones de alma, trinkets u objetos de la sala del ángel o relacionados con Mamá y Papá"}, --  La tumba de Isaac
	[702] = {"702", "Espíritu de venganza", "Tras recibir daño, genera un fuego orbital que dura en la planta actual#Máximo de 6#Disparan lágrimas pero no bloquean proyectiles"}, --  Espíritu de venganza
	[703] = {"703", "Esau Junior", "Cambia entre el personaje actual y Esau Junior, quien tiene 3 corazones negros, +2 de daño y vuela#Los personajes tienen objetos y vida independientes#{{Warning}} Morir como cualquier personaje acaba la partida"}, --  Esau Junior
	[704] = {"704", "¡Berserker!", "Modo berserker durante 5 segundos:#↑ {{Speed}} Velocidad +0.4#↑ {{Tears}} Más lágrimas#↑ {{Damage}} Daño +3.0#Restringe el ataque a un arma a melé"}, --  ¡Berserker!
	[705] = {"705", "Artes oscuras", "Al usarlo, ganas:#↑ {{Speed}} Velocidad +1.0#La habilidad de caminar a través de los enemigos y proyectiles durante 1 segundo#Infliges el triple de tu daño al tocar#{{Player24}} Al usarlo con Judas Contaminado, aumenta temporalmente su daño con cada entidad atacada"}, --  Artes oscuras
	[706] = {"706", "Abismo", "Destruye todos los objetos de la habitación y genera una mosca familiar por cada uno#Los efectos de las moscas dependen de los objetos"}, --  Abismo
	[707] = {"707", "Cena", "↑ {{Heart}} +1 de Vida#{{HealingRed}} Cura 1 corazón"}, -- Cena
	[708] = {"708", "Grapadora", "↑ {{Damage}} Daño +1.0#Sólo disparas con el ojo derecho"}, --  Grapadora
	[709] = {"709", "¡Suplex!", "Te permite correr, levantar a enemigos o jefes y estamparlos contra el suelo#Se puede controlar#Estampar inflige 50 de daño y genera una ola de rocas"}, --  ¡Suplex!
	[710] = {"710", "Bolsa de trabajo", "Recoge hasta 8 recolectables#Mantener el botón del activable convierte los recolectables en un objeto#La calidad del objeto dependerá de la de los recolectables"}, --  Bolsa de trabajo
	[711] = {"711", "Cambio", "Al entrar una habitación con un pedestal, un objeto fantasma aparecerá detras#Tras el uso, el objeto fantasma intercambiará lugar con el otro#Ambos objetos se pueden tomar si es que Cambio se usa después de tomar un objeto#!!! EL objeto fantasma desaparecerá si tomas el primer objeto y sales de la habitación"}, -- Inversión
	[712] = {"712", "Lemegeton", "Invoca el fantasma de un objeto pasivo aleatorio#El efecto del objeto se aplica al jugador#Tiene 25% de posibilidad de ser de la pool de la sala actual#En cambio, será de la pool del Tesoro/Tienda/Jefe"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Convierte los corazones en familiares que pueden ser destrozados#{{Player26}} Eva contaminada los convierte al disparar por cierto tiempo, usar el objeto de nuevo restaura su PV#El tipo de corazón cambia el comportamiento del familiar"}, --  Sumptorio
	[714] = {"714", "Llamado", "{{Player35}} Devuelve el cuerpo de Forgotten desde culquier distancia"}, --  Recuperar
	[715] = {"715", "Frasco", "Guarda una caca bomba dentro para usarla más tarde"}, --  Bote
	[716] = {"716", "Bolsa de Keeper", "{{Shop}} Al comprar algo en la tienda, puede aumentar: #{{Speed}} La velocidad#{{Damage}} El daño#{{Range}} El alcance#Al tomarlo, generas: #{{Coin}} 3 monedas#{{Key}} Una llave"}, --  El saco de Keeper
	[717] = {"717", "Parientes de Keeper", "Las rocas y jarrones generan 2 arañas azules al romperlos"}, --  Pariente de Keeper
	[718] = {"718", "Soga de Keeper (recortado)", "<Este objeto no existe>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "Caja de Keeper", "{{Shop}} Genera un objeto o recolectable aleatorio de tienda"}, --  La caja de Keeper
	[720] = {"720", "Jarra para todo", "Genera algunos recolectables basados en las cargas que tenga#Si está cargado al completo, tiene un efecto aleatorio más único#Recompensas según cargas: 1:caca 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Tarro de todo
	[721] = {"721", "TMTRAINER", "Hace que los objetos futuros estén 'glitcheados'#Tienen efectos completamente aleatorios"}, --  ENTRENADOR TM
	[722] = {"722", "Anima Sola", "Encadena al enemigo más cercano durante 5 segundos, evitando que actúen#{{Player37}} Jacob Contaminado siempre encadenará a Esaú Oscuro"}, --  Anima Sola
	[723] = {"723", "Dado reductor", "Cambia todos los objetos de la habitación por otro restándole 1 al identificador interno para obtener el nuevo objeto generado."}, --  Dado cuenta vidas
	[724] = {"724", "Hipercoagulación", "Al ser golpeado por un enemigo, genera medio o un corazón rojo#Los corazones que han aparecido desaparecen tras 1,5 segundos"}, --  Hipercoagulación
	[725] = {"725", "IBS", "Al dañar a un enemigo, posibilidad de:#Lanzar una caca#Crear gases#Tira pedos#Generar 5 bombas troll"}, --  Síndrome del intestino irritable
	[726] = {"726", "Hemoptisis", "Al pulsar dos veces el botón de disparar estornudas sangre#Inflige el 150 % de tu daño a los enemigos delante de ti#Enfriamiento de un segundo"}, --  Hemoptisis
	[727] = {"727", "Bombas fantasma", "↑ {{Bomb}} +5 Bombas#Las bombas generan fantasmas que infligen daño y explotan tras 10 segundos"}, --  Bombas fantasma
	[728] = {"728", "Gello", "Genera un familiar demoníaco atado a ti#Copia tus lágrimas, estadísticas y efectos"}, --  Gello
	[729] = {"729", "Ataque decapitado", "Lanza tu cabeza y te permite disparar lágrimas desde donde caiga#Al reactivar el objeto o pisar la cabeza la recuperas"}, --  Ataque de decapitación
	[730] = {"730", "Ojo de vidrio", "↑ {{Damage}} Daño +0.75#↑ {{Luck}} Suerte +1"}, -- Ojo de cristal
	[731] = {"731", "Orzuelo", "↑ {{Damage}} Daño +1.0#↑ {{Range}} Alcance +7.0#↓ {{Shotspeed}} Vel. de lágrimas -0.3#Sólo aplica al ojo derecho"}, -- Orzuelo
	[732] = {"732", "Anillo de Mamá", "↑ {{Damage}} Daño +1.0#{{Rune}} Genera una runa o piedra de alma al tomarlo"}, -- Anillo de Mamá
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Los objetos cambian entre dos objetos"},
	{"Magdalene", "Magdalena", "↑ {{Heart}} +1 corazón, límite de corazones aumentado a 18"},
	{"Cain", "Caín", "↑ {{Luck}} Suerte +1#{{ArcadeRoom}} Todos los pisos tienen Arcades garantizados menos Cofre y Cuarto oscuro#{{ArcadeRoom}} Mejores arcades"},
	{"Judas", "", "{{Collectible34}} El Libro de Belial actúa como un objeto pasivo, similar a {{Collectible584}} El Libro de las Virtudes, el aumento de daño escala con la carga de los objetos activos#Varios objetos activos reciben interacciones especiales"},
	{"???", "", "{{ArrowUp}} {{SoulHeart}} Los corazones de alma recibidos de aumentos de vida se duplican"},
	{"Eve", "Eva", "{{Collectible122}} La Ramera de Babilonia se activa sin depender de la vida#{{Collectible117}} El pájaro muerto se activa sin recibir daño"},
	{"Samson", "Sansón", "{{Collectible157}} Lujuria de Sangre puede ganar 4 mejoras de daño hasta un máximo de {{Damage}} +14.0"},
	{"Azazel", "", "El ataque de Azazel es más ancho#No varía el daño"},
	{"Lazarus", "Lázaro", "Al revivir en Lázaro resucitado: #↑ {{Damage}} Lázaro resucitado gana una mejora de daño de +21.6 que se pierde tras un minuto#El efecto se activará cada vez que Lázaro resucite"},
	{"Eden", "Edén", "Genera 3 objetos aleatorios de pools de objetos aleatorias#Solo se puede tomar uno"},
	{"The Lost", "El Perdido", "Evita la aparición de objetos inútiles para El Perdido#Ejemplos: Aumentos de vida, vuelo, lágrimas espectrales o los que requieren daño para activarse"},
	{"Lazarus Risen", "Lázaro Resucitado", "↑ {{Damage}} Otorga una mejora de daño de +21.6 que se pierde tras un minuto#El efecto se activará cada vez que Lázaro resucite"},
	{"Black Judas", "Judas Oscuro", "{{Collectible34}} El Libro de Belial actúa como un objeto pasivo, similar a {{Collectible584}} El Libro de las Virtudes, el aumento de daño escala con la carga de los objetos activos"},
	{"Lilith", "", "Los familiares se colocan frente a Lilith, mejor control de ataque"},
	{"Keeper", "", "↑ {{Coin}} +1 moneda de salud, el límite de salud llega a 4"},
	{"Apollyon", "Apolión", "Posibilidad de generar un objeto destruído anteriormente#Mientras más objetos consumidos, más posibilidad de generarlo#No afecta a objetos activos"},
	{"The Forgotten", "El Olvidado", "El alma no está atado y se mueve libremente"},
	{"The Forgotten Soul", "El Alma", "El alma no está atado y se mueve libremente"},
	{"Bethany", "", "Activar un objeto usando cargas de alma a veces es gratis"},
	{"Jacob", "", "El hermano que tome la primogenitura obtiene copias de tres objetos pasivos del otro hermano"},
	{"Esau", "Esaú", "El hermano que tome la primogenitura obtiene copias de tres objetos pasivos del otro hermano"},
	{"Tainted Isaac", "Isaac contaminado", "Añade 4 espacios adicionales para objetos pasivos"},
	{"Tainted Magdalene", "Magdalena contaminada", "{{Heart}} Añade 1 al límite de corazones"},
	{"Tainted Cain", "Caín contaminado", "La cantidad de recolectables que se generan al tomar un objeto se duplica"},
	{"Tainted Judas", "Judas contaminado", "Usar {{Collectible705}} Artes Oscuras otorga un aura con área de ataque mayor"},
	{"Tainted ???", "??? contaminado", "Aumenta el número máximo de cacas que puedes llevar a 29"},
	{"Tainted Eve", "Eva contaminada", "Los coágulos generados de corazones rojos sueltan medio corazón rojo que desaparece al morir"},
	{"Tainted Samson", "Sansón contaminado", "El contador del modo berserker gana 3 segundos en lugar de 1 cuando Sansón contaminado mata a un enemigo"},
	{"Tainted Azazel", "Azazel contaminado", "{{Collectible726}} El tamaño de Hemoptisis , el ataque de Azazel contaminado es el doble de grande"},
	{"Tainted Lazarus", "Lázaro contaminado", "El Lázaro que no se esté usando estará presente como un fantasma, siendo controlado como J&E#No puede recibir daño ni interactuar con el entorno#La versión fantasma hace su daño al 25%"},
	{"Tainted Eden", "Edén contaminado", "Los objetos pasivos y actuvis conseguidos antes de Primogenitura no cambian al recibir daño"},
	{"Tainted Lost", "El Perdido contaminado", "Otorga una vida extra que revive a Tainted Lost (Lost contaminado) en la misma habitación y causa 200 de daño a los enemigos cercanos#Puede golpear al mismo enemigo varias veces"},
	{"Tainted Lilith", "Lilith contaminada", "Los familiares son lanzados junto a Gello"},
	{"Tainted Keeper", "Keeper contaminado", "Atrae las monedas que sueltan los enemigos cercanos al morir#No afecta al resto de monedas"},
	{"Tainted Apollyon", "Apolión contaminado", "Las langostas se quedan atacando a un enemigo mientras se siga disparando"},
	{"Tainted Forgotten", "Forgotten contaminado", "{{Collectible714}} El alma contaminada gana la habilidad Llamado, puedes recuperar automáticamente a Forgotten contaminado desde la distancia"},
	{"Tainted Bethany", "Bethany contaminada", "Genera 4 grandes fuegos fatuos#Tienen mayor durabilidad que los regulares"},
	{"Tainted Jacob", "Jacob contaminado", "Otro Dark Esau aparecerá#{{Collectible722}} Al usar Anima Sola, ambos serán encadenados, ambos pueden ser soltados uno a uno"},
	{"Dead Tainted Lazarus", "Lázaro contaminado muerto", "El Lázaro que no se esté usando estará presente como un fantasma, siendo controlado como J&E#No puede recibir daño ni interactuar con el entorno#La versión fantasma hace su daño al 25%"},
	{"Tainted Jacob 2", "Jacob contaminado 2", "Otro Dark Esau aparecerá#{{Collectible722}} Al usar Anima Sola, ambos serán encadenados, ambos pueden ser soltados uno a uno"},
	{"Tainted Forgotten Soul", "El alma contaminada", "{{Collectible714}} El alma contaminada gana la habilidad Llamado, puedes recuperar automáticamente a Forgotten contaminado desde la distancia"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} Lágrimas +0.5#↑ {{Range}} Alcance +1.5#↓ {{Speed}} Velocidad -0.03", -- Lunch
	[23] = "↑ {{Tears}} Lágrimas +0.5#↑ {{Shotspeed}} Vel. de lágrimas +0.2#↓ {{Speed}} Velocidad -0.03", -- Dinner
	[24] = "↑ {{Damage}} Daño +1#↑ +0.2 de velocidad de lágrima#↓ {{Speed}} Velocidad -0.03", -- Dessert
	[25] = "↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Range}} Alcance +1.5#↓ {{Speed}} Velocidad -0.03", -- Breakfast
	[26] = "↑ {{Damage}} Daño +1#↑ {{Range}} Alcance +1.5#↓ {{Speed}} Velocidad -0.03", -- Rotten Meat
	[456] = "↑ {{Damage}} Daño +1#↑ {{Luck}} Suerte +1#↓ {{Speed}} Velocidad -0.03", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} Vel. de lágrimas +0.2#↑ {{Luck}} Suerte +1#↓ {{Speed}} Velocidad -0.03", -- A Snack
	[707] = "↑ {{Tears}} Lágrimas +0.5#↑{{Luck}} Suerte +1#↓ {{Speed}} Velocidad -0.03", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "También activa el efecto de {{Collectible35}} El Necronomicón", -- Kamikaze!
	[126] = "También activa el efecto de {{Collectible35}} El Necronomicón", -- Razor Blade
	[127] = "Aumento de daño durante todo el nuevo piso", -- Forget me Now
	[133] = "Aumento de daño permanente", -- Guppy's Paw
	[135] = "Aumento de daño por cada uso", -- IV Bag
	[147] = "El pico tiene mayor velocidad, empuje, duración, prende a los enemigos en fuego y suelta más recolectables al romper cacas y obstáculos", -- Notched Axe
	[186] = "También activa el efecto de {{Collectible126}} Cuchilla", -- Blood Rights
	[282] = "Deja un rastro de fuego que quema a los enemigos", -- How to Jump
	[290] = "Gasta un corazón a la vez, Otorga un aumento de daño y deja creep rojo en el suelo", -- The Jar
	[295] = "Probabilidad de activar el efecto de {{Collectible555}} Cuchilla dorada", -- Magic Fingers
	[297] = "Genera un familiar demoniaco junto a la recompensa basada en el piso", -- Pandora's Box
	[323] = "Las lágrimas lanzadas tienen un aumento de daño", -- Isaac's Tears
	[326] = "En vez de luz, Tendrás un aura fogosa al ser invencible#Recibes un aumento de daño temporal y activas el efecto del {{Collectible35}} Necronomicon en un bloqueo perfecto", -- Breath of Life
	[352] = "Activa el Libro de Belial al romperse - el daño persiste hasta que el cañón es reparado", -- Glass Cannon
	[475] = "Reapareces como Dark Judas si tienes una vida extra", -- Plan C
	[482] = "Reemplaza el objeto adquirido más reciente por {{Collectible51}} Pentáculo", -- Clicker
	[487] = "Incrementa el aumento de daño", -- Potato Peeler
	[536] = "{{Damage}} Daño temporal +10.8 por cada familiar sacrificado, disminuye con el tiempo igual que {{Collectible621}} Guisado Rojo", -- Sacrificial Altar
	[555] = "Daña a todos los enemigos de la sala y aplica el efecto de {{Collectible202}} Toque de Midas en ellos", -- Golden Razor
	[577] = "Aumento de daño permanente", -- Damocles
	[582] = "Aumento de daño adicional por el resto del piso basado en la cantidad de veces que se usó", -- Wavy Cap
	[585] = "Cambia las recompensas por 2 corazones negros y un objeto de trato con el Diablo#Serán 3 corazones negros y 2 objetos si ya se hizo un trato con el diablo", -- Alabaster Box
	[622] = "Otorga gratuitamente un {{Collectible51}} Pentáculo", -- Genesis
	[623] = "También activa el efecto de {{Collectible126}} Cuchilla", -- Sharp Key
	[635] = "Crea una línea de {{Collectible705}} Artes Oscuras entre tú y Pespuntes", -- Stitches
	[640] = "Lanza un rayo de {{Collectible118}} Azufre", -- Urn of Souls
	[642] = "Aumento de daño permanente", -- Magic Skin
	[653] = "Los fantasmas irán a los enemigos", -- Vade Retro
	[685] = "Otorga 6 fuegos fatuos de {{Collectible292}} Biblia satánica que aumentan la posibilidad de sala del Diablo", -- Jar of Wisps
	[705] = "Permite tener un aumento temporal de daño", -- Dark Arts
	[710] = "Tomar corazones rojos da la posibilidad de cambiarlos por corazones negros", -- Bag of Crafting
	[729] = "Gran aumento de daño y lágrimas cuando la cabeza es lanzada", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Disparos teledirigidos", -- The Bible
	[34] = "Disparos con daño x2", -- The Book of Belial
	[35] = "3.5% de poribilidad de lanzar lágrimas horrorizadoras#Se activa el efecto del Necronomicón al destruirse", -- The Necronomicon
	[36] = "2.5% de posibilidad de disparos de {{Collectible236}} E. Coli", -- The Poop
	[37] = "Generan bombas de dispersión al destruirse", -- Mr. Boom
	[38] = "Disparos rápidos e imprecisos", -- Tammy's Head
	[39] = "5% de posibilidad de disparos petrificadores", -- Mom's Bra
	[40] = "Disparos explosivos#Explotan al destruirse", -- Kamikaze!
	[41] = "7.5% de posibilidad de disparos horrorizadores", -- Mom's Pad
	[42] = "7.5% de posibilidad de disparos de {{Collectible149}} Ipecac", -- Bob's Rotten Head
	[44] = "10% de posibilidad de disparos que teletransportan enemigos#Los fuegos parpadean cada 5 segundos", -- Teleport!
	[45] = "20% de posibilidad de que un enemigo suelte un corazón al morir", -- Yum Heart
	[47] = "Disparos con daño al 1/2#Todos los fuegos generados por el objeto lanzarán 3 disparos explosivos hacia donde apunte la cruz tras usarse", -- Doctor's Remote
	[49] = "No puede disparar normalmente#Lanzará un disparo de Kamehame... ¡¿Eeeeeeh?! al usarlo", -- Shoop da Whoop!
	[56] = "Disparos rápidos de corto rango#Los fuegos dejarán caer creep amarillo", -- Lemon Mishap
	[58] = "Inmunidad a proyectiles", -- Book of Shadows
	[65] = "Genera una bomba troll al destruírse", -- Anarchist Cookbook
	[66] = "Ralentiza a los enemigos por 3 segundos al destruirse", -- The Hourglass
	[77] = "Daño de contacto extra", -- My Little Unicorn
	[78] = "No puede disparar#Genera un Familiar de {{Collectible526}} 7 Sellos al destruirse#Duran una habitación", -- Book of Revelations
	[83] = "Disparos con empuje", -- The Nail
	[84] = "Sin efecto especial", -- We Need to Go Deeper!
	[85] = "Genera una carta al destruirse", -- Deck of Cards
	[86] = "Disparos dentales", -- Monstro's Tooth
	[93] = "Disparos anti-gravitatorios#Capacidad de lanzar disparos horrorizadoras", -- The Gamekid
	[97] = "Genera 1 de 8 fuegos: {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#Los efectos explosivos son comunes", -- The Book of Sin
	[102] = "Genera 1 de 6 fuegos de distinto color con distintos efectos#Posibilidad de envenenar, petrificar, confundir, , lanzar disparos de Bombas Troll, O generar una araña enemiga al destruírse#Los 6 fuegos generan píldoras al destruirse", -- Mom's Bottle of Pills
	[105] = "Genera un fuego extra por cada objeto reroleado", -- The D6
	[107] = "Disparos pentrantes", -- The Pinking Shears
	[111] = "Pedo venenoso al destruirse", -- The Bean
	[123] = "Disparos aleatorios", -- Monster Manual
	[124] = "Genera un fuego de lo que sea que imitó", -- Dead Sea Scrolls
	[126] = "Fuego de alto PV", -- Razor Blade
	[127] = "Fuego de PC infinito por todo el nuevo piso", -- Forget Me Now
	[130] = "No puede disparar#Los fuegos cargarán hacia donde dispares", -- A Pony
	[133] = "3 fuegos de alto PV", -- Guppy's Paw
	[135] = "Sin efecto especial", -- IV Bag
	[136] = "7.5% de posibilidad lanzar disparos marcadores#Los enemigos marcados atacarán a otros enemigos", -- Best Friend
	[137] = "1 fuego por bomba detonada#Los disparos también pueden ser detonados a distancia", -- Remote Detonator
	[145] = "Se generan fuegos en vez de moscas#Generan una mosca azul al destruirse", -- Guppy's Head
	[146] = "Disparos teledirigidos", -- Prayer Card
	[147] = "Romper rocas puede generar 1 de 5 fuegos de varios materiales#posibilidad de efectos de carbón, confusión, monedas, daño doble o disparos láser", -- Notched Axe
	[158] = "Disparos apuntados#Genera fuegos de alto PV", -- Crystal Ball
	[160] = "Generan rayos de luz al contacto", -- Crack the Sky
	[164] = "Fuego de una sola habitación", -- The Candle
	[166] = "Destruye todos los recolectables#Posibilidad de generar un fuego por cada recolectable destruido", -- D20
	[171] = "7.5% de posibilidad de lanzar disparos realentizadores", -- Spider Butt
	[175] = "Los fuegos abren cofres/puertas al contacto#Puede abrir las puertas a Mega Satán, Cadaver y al Ascenso", -- Dad's Key
	[177] = "Genera un fuego basado en la recompensa ganada", -- Portable Slot
	[181] = "10% de lanzar disparos de {{Collectible374}} Luz Sagrada", -- White Pony
	[186] = "Fuego de alto PV", -- Blood Rights
	[192] = "Disparos teledirigidos", -- Telepathy for Dummies
	[263] = "15% de posibilidad de que los enemigos suelten una runa al morir#Generan una runa al destruirse", -- Clear Rune
	[282] = "Hasta 6 fuegos inmóviles", -- How to Jump
	[283] = "Rerolea todos tus fuegos, añadiendo uno aleatorio#No cambia el Libro de las Virtudes", -- D100
	[284] = "Elimina todos los fuegos#Otorga un fuego aleatorio por cada 2 objetos conseguidos#No cambia el Libro de las Virtudes", -- D4
	[285] = "10% de posibilidad de activar el efecto del D10 al golpear", -- D10
	[286] = "15% de posibilidad de que un enemigo suelte una carta al morir#Generan una carta al destruirse", -- Blank Card
	[287] = "Se activa el efecto del {{Collectible675}} Orbe roto al destruise", -- Book of Secrets
	[288] = "Se generan fuegos en vez de arañás#Generan una araña azul al destruirse", -- Box of Spiders
	[289] = "Fuegos de una sola habitación#Lágrimas de flamas rojkas", -- Red Candle
	[290] = "Crea un fuego por corazón#Posibilidad de generar {{HalfHeart}} medio corazón al destruirse", -- The Jar
	[291] = "Genera un fuego extra por cada enemigo transformado en caca", -- Flush!
	[292] = "+10% de posibilidad de {{DevilRoom}}sala del Diablo o {{AngelRoom}} sala del Ángel por cada fuego de la Biblia Satánica", -- Satanic Bible
	[293] = "Dispara un láser en 4 direcciones al destruirse", -- Head of Krampus
	[294] = "Fuego de una sola habitación#No puede disparar#El efecto del Frijol Mantequilla se activa al destruirse", -- Butter Bean
	[295] = "Posibilidad de soltar una moneda al destruirse", -- Magic Fingers
	[296] = "Sin efecto especial", -- Converter
	[297] = "Sin efecto especial", -- Pandora's Box
	[298] = "No pueden disparar#Inmunidad al daño por contacto#No harán daño de contacto hasta que el Paso de unicornio se active", -- Unicorn Stump, Hasta acá lo voy a dejar por el momento, cuando me despierte y limpie continuaré
	[323] = "Genera 3 fuegos#Tiempo de vida de 3 segundos", -- Isaac's Tears
	[324] = "Disparos de la {{Collectible570}} Galleta de plastilina", -- Undefined
	[325] = "Conjunto de disparos arqueados", -- Scissors
	[326] = "Genera un fuego al recibir daño", -- Breath of Life
	[338] = "Fuego de una sola habitación#Disparos de búmeran", -- The Boomerang
	[347] = "Disparos de 20/20#Duplica tus otros fuegos", -- Diplopia
	[348] = "Genera una píldora al destruirse", -- Placebo
	[349] = "50% de generar una moneda al destruirse", -- Wooden Nickel
	[351] = "Todos los fuegos del Mega Frijol lanzan una onda de piedra al usar el objeto#Pedo venenoso y petrificador al destruirse", -- Mega Bean
	[352] = "Si un fuego del Cañón de cristal se destruye, los otros lo harán#Persisten entre habitaciones", -- Glass Cannon
	[357] = "Duplica tus fuegos durante la habitación", -- Box of Friends
	[382] = "Los enemigos pueden generar un fuego con disparo regular, teledirigido, explosivo, o de {{Collectible118}} Azufre al morir, dependiendo de su set de movimientos", -- Friendly Ball
	[383] = "Los disparos de los fuegos pueden ser detonados, transformándose en 6 lágrimas del jugador#Lanza lágrimas del jugador al destruirse#Persisten entre habitaciones", -- Tear Detonator
	[386] = "5% de posibilidad de que los disparos cambien los objetos del ambiente al golpearlos (exceptuando popó y TNT)", -- D12
	[396] = "No pueden disparar#Cada pasadizo tendrá un fuego", -- Ventricle Razor
	[406] = "Daño y cadencia de tiro aleatorias", -- D8
	[419] = "20% de posibilidad de que las lágrimas teletransporten enemigos#Los fuegos parpedean cada 5 segundos", -- Teleport 2.0
	[421] = "Genera un pedo encantador al destruirse", -- Kidney Bean
	[422] = "30% de posibilidad de lanzar disparos petrificadores", -- Glowing Hour Glass
	[427] = "Genera un fuego que rebota por la habitación, Explotarán al hacer contacto con una lágrima del jugador#No puede disparar o hacer daño por contacto", -- Mine Crafter
	[434] = "Se generan fuegos en vez de moscas#De 5 moscas en adelante se generará un fuego con salud y daño incrementado 1", -- Jar of Flies
	[437] = "Efecto del D7 al hacer daño por contacto#Sólo se activa una vez", -- D7
	[439] = "Sin efecto especial", -- Mom's Box
	[441] = "Lágrimas del {{Collectible275}} Mini-Azufre (Disparo cargado)#Dispararán de forma continua mientras se use Mega Ráfaga", -- Mega Blast
	[475] = "8 fuegos de daño elevado", -- Plan C
	[476] = "Genera un fuego si no se duplica un recolectable", -- D1
	[477] = "Genera los fuegos de todos los objetos activos absorvidos#No genera fuegos por sí solo", -- Void
	[478] = "Pausa a todos los enemigos y permite disparar por 3 segundos", -- Pause
	[479] = "Posibilidad de generar un trinket al destruirse", -- Smelter
	[480] = "La salud del fuego aumentará dependiendo de los recolectables reciclados", -- Compost
	[481] = "5% de posibilidad de lanzar disparos que transformen a los enemigos en fuegos aleatorios", -- Dataminer
	[482] = "Genera un fuego aleatorio", -- Clicker
	[483] = "8 fuegos que generan una bomba troll al destruirse", -- Mama Mega!
	[484] = "Fuego de una sola habitación#No puede disparar#Se activa el efecto de Espera... ¿qué? al destruirse", -- Wait What?
	[485] = "Los fuegos de la Moneda Doblada pueden ser duplicados o totalmente destruidos si uno se daña", -- Crooked Penny
	[486] = "No puede disparar#Posibilidad de negar el daño recibido", -- Dull Razor
	[487] = "Fuego permanente#Acecha y dispara a los enemigos#No bloquea disparos ni hace daño por contacto", -- Potato Peeler
	[488] = "Genera un fuego de lo que sea que imitó (Fuego aleatorio si no fue un objeto activo)", -- Metronome
	[489] = "Genera un fuego normal en adición a fuego del dado imitado", -- D Infinity
	[490] = "Genera un fuego aleatorio#Resurge en la siguiente habitación si fue destruido", -- Eden's Soul
	[504] = "Fuego de una sola habitación#Disparos rápidos y apuntados", -- Brown Nugget
	[507] = "Posibilidad de generar fuegos al matar", -- Sharp Straw
	[510] = "Disparos del {{Collectible229}} Pulmón de Monstro, {{Collectible268}} Bebé Podrido, {{Collectible87}} Cuernos de Loki o {{Collectible118}} Azufre", -- Delirious
	[512] = "Disparos magnéticos", -- Black Hole
	[515] = "Genera un fuego aleatorio#", -- Mystery Gift
	[516] = "Disparos en 8 direcciones imitando al Aspersor", -- Sprinkler
	[521] = "Disparo triple#All Coupon tears are destroyed if you make a purchase", -- Coupon
	[522] = "Captured projectiles turn into wisps", -- Telekinesis
	[523] = "Los fuegos se generan al soltar el contenido de la caja#Generan un recolectable al destruirse", -- Moving Box
	[527] = "No pueden disparar#Pueden abrir cofres y puertas en las habitaciones vacías", -- Mr. ME!
	[536] = "Convierte todos los fuegos en {{HalfHeart}} Medios corazones#Genera un fuego bastante fuerte al sacrificar", -- Sacrificial Altar
	[545] = "Los fuegos generan un Bony amistoso al destruirse", -- Book of the Dead
	[550] = "10% de posibilidad de lanzar un disparo que genere un pisotón sobre el enemigo", -- Broken Shovel
	[552] = "10% de posibilidad de lanzar un disparo que genere un pisotón sobre el enemigo#Genera un fuego de alto PV que no dispara", -- Mom's Shovel
	[555] = "15% de lanzar un disparo con el efecto del {{Collectible202}} Toque de midas", -- Golden Razor
	[556] = "Disparos láser de corto alcance", -- Sulfur
	[557] = "{{ArrowUp}} +0.2 de suerte por cada fuego de la Galleta de la fortuna", -- Fortune Cookie
	[577] = "Sin efecto especial", -- Damocles
	[578] = "Los fuegos dejan caer creep amarillo", -- Free Lemonade
	[580] = "Posibilidad de generar puertas rojas al entrar a una nueva habitación", -- Red Key
	[582] = "Hasta 1 fuego del Hongo Mareante", -- Wavy Cap
	[584] = "Sin beneficio por copias múltiples", -- Book of Virtues
	[585] = "Genera 8 fuegos", -- Alabaster Box
	[604] = "Fuego de una habitación#Se generan 3 fuegos cuando algo que lanzaste aterriza#10% de posibilidad de lanzar disparos que confunden", -- Mom's Bracelet
	[605] = "Sin efecto especial", -- The Scooper
	[609] = "Fuego invisible#50% de posibilidad de que todos los fuegos del D6 Eterno se destruyan al usarse", -- Eternal D6
	[611] = "Daño y salud aumentados en base a las cargas tras utilizarlo", -- Larynx
	[622] = "3 fuegos#Remueve todos los otros fuegos ", -- Genesis
	[623] = "Sin efecto especial", -- Sharp Key
	[631] = "Parte tus fuegos a la mitad (Mitad de salud y daño)#Los fuegos se destruyen si se parten 3 veces", -- Meat Cleaver
	[635] = "Deja un fuego estacionario#Hasta 6 fuegos estacionarios", -- Stitches
	[636] = "No hay fuego", -- R Key
	[638] = "Elimina enemigos no-jefes al contacto", -- Eraser
	[639] = "No puede disparar#Genera una mosca azul al limpiar una sala", -- Yuck Heart
	[640] = "Posibilidad de lanzar una flama azul", -- Urn of Souls
	[642] = "Disparos venenosos", -- Magic Skin
	[650] = "Cuando Ciruelita dispare de forma diagonal, Todos los fuegos de la Flauta Ciruela lo harán", -- Plum Flute
	[653] = "No hay fuegos#Los fantasmas rojos pueden disparar lágrimas", -- Vade Retro
	[655] = "Fuegos temporales al usarse", -- Spin to Win
	[685] = "Duplica todos los fuegos generados, añade uno extra", -- Jar of Wisps
	[687] = "Genera un fuego aleatorio", -- Friend Finder
	[703] = "Sin efecto especial", -- Esau Jr.
	[704] = "Fuego de alto PV#No puede disparar", -- Berserk
	[705] = "Fuego de una habitación generado por enemigo asesinado", -- Dark Arts
	[706] = "Fuego de alto PV#No puede disparar", -- Abyss
	[709] = "Fuego de una habitación#Se generan 3 fuegos en donde aterrices", -- Suplex
	[710] = "Genera un fuego aleatorio al momento de fabricar", -- Bag of Crafting
	[711] = "Sin efecto especial", -- Flip
	[712] = "Los fuegos de objetos lanzan disparos teledirigidos", -- Lemegeton
	[713] = "No hay fuego", -- Sumptorium
	[719] = "20% de posibilidad de que un enemigo suelte un fuego al morir", -- Keeper's Box
	[720] = "Genera un fuego aleatorio", -- Everything Jar
	[722] = "Orbita alrededor del enemigo encadenado mientras le dispara#El fuego morirá cuando el enemigo lo haga", -- Anima Sola
	[723] = "Rerolea todos los fuegos, convirtiéndolos a uno del mismo tipo", -- Spindown Dice
	[728] = "Todos los fuegos orbitarán a Gello", -- Gello
	[729] = "Fuego estacionario", -- Decap Attack

}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
	[2] = "3 langostas regulares", -- The Inner Eye
	[3] = "Langostas purpuras teledirigidas", -- Spoon Bender
	[4] = "Langosta grande que inflinge el triple de tu daño", -- Cricket's Head
	[6] = "Langosta amarilla de corto rango, provoca daño con mayor velocidad", -- Number One
	[7] = "Langosta roja que inflinge el doble de tu daño", -- Blood of the Martyr
	[10] = "2 langostas grices que infligen la mitad de tu daño", -- Halo of Flies
	[13] = "Langosta verde que envenena enemigos", -- The Virus
	[103] = "Langosta verde que envenena enemigos", -- The Common Cold
	[118] = "Langosta gris más grande, es más que nada normal", -- Brimstone
	[149] = "Langosta grande, lenta y verde, inflinge tu daño x1.5 y envenena enemigos", -- Ipecac
	[153] = "4 langostas regulares", -- Mutant Spider
	[257] = "Langosta ardiente naranja, prende a los enemigos en fuego", -- Fire Mind
	[305] = "Langosta verde que envenena anemigos", -- Scorpio
	[374] = "Langosta brillante de color Cyan, puede generar un rayo de luz que inflinge tu daño x3", -- Holy Light
	[494] = "Langosta azul claro con arcos de electricidad, inflingen 0.1 de daño por toque", -- Jacob's Ladder
	[559] = "Langosta azul claro con arcos de electricidad, inflingen 0.1 de daño por toque", -- 120 Volt
}

EID.descriptions[languageCode].spindownError = "El objeto desaparece"

---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Moneda tragada", "Generas monedas cuando te golpean"},
	[10] = {"10", "Gusano ondulante", "Las lágrimas se mueven en ondas#↑ {{Tears}} Lágrimas +0.4#Otorga lágrimas espectrales"}, -- Gusano ondulante
	[11] = {"11", "Gusano anillo", "Las lágrimas se mueven en espirales a gran velocidad#↑ {{Tears}} Lágrimas +0.4#Otorga lágrimas espectrales"}, -- Gusano anillo
	[15] = {"15", "Roca de la suerte", "{{Coin}} 33% de posibilidad de generar monedas al destruir rocas"},
	[16] = {"16", "Uña del pie de Mamá", "El pie de mamá cae sobre los enemigos cada 20 segundos"}, -- Mom's Toenail
	[23] = {"23", "Cartel de desaparición", "{{SacrificeRoom}} Morir en una sala de sacrificio con la baratija te hará resucitar como {{Player10}} EL Perdido#Si lo tienes desbloqueado, revives como él incluso fuera de las salas de sacrificio#{{Player31}} El Perdido Contaminado resucitará como él mismo"},
	[24] = {"24", "Moneda de culo", "20% de posibilidad de generar una moneda al destruir una popó#Tomar una moneda suelta un pedo#{{Poison}} Los pedos empujan y aplican empuje a los enemigos"},
	[26] = {"26", "Gusano de gancho", "Las lágrimas se mueven en ángulos#↑ {{Tears}} Lágrimas +0.4#↑ {{Range}} Alcance +1.5#Otorga lágrimas espectrales"}, -- Gusano de gancho
	[32] = {"32", "Hongo de San Juan", "25% de posibilidad de activar el efecto de un hongo en la sala"},
	[33] = {"33", "Cordón umbilical", "{{Collectible100}} Al tener medio corazón, aparece un pequeño Steven#{{Collectible318}} Gran posibilidad de que aparezca un familiar Géminis al recibir daño"}, -- Cordón umbilical
	[39] = {"39", "Cáncer", "{{Tears}} ↑ Lágrimas +1"},
	[48] = {"48", "Una página perdida", "Cuando te golpean, 5% posibilidad de dañar a toda la habitación#{{BlackHeart}} Los corazones negros perdidos y otros efectos similares al Necronomicon hacen el doble de daño"},
	[49] = {"49", "Moneda sangrienta", "{{Heart}} 25% de posibilidad de dejar caer medio corazón al tomar monedas"}, -- Moneda sangrienta
	[50] = {"50", "Moneda quemada", "{{Bomb}} 25% de posibilidad de dejar una bomba al tomar monedas"}, -- Moneda quemada
	[51] = {"51", "Moneda plana", "{{Key}} 25% de posibilidad de dejar una llave al tomar monedas"}, -- Moneda plana
	[65] = {"65", "Cinta de gusano", "↑ {{Range}} Alcance +3"},
	[66] = {"66", "Gusano vago", "↓ {{Shotspeed}} Vel. de disparo -0.5"},
	[67] = {"67", "Cracked Dice", "Recibir daño tiene un 50% de probabilidad de activar uno de los siguientes efectos: #{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Polaroid descolorida", "Te camufla de manera aleatoria#Desorienta a los enemigos#Puede usarse para abrir la puerta hacia la planta \"Home\" (Casa)"}, -- Polaroid descolorida
	[80] = {"80", "Pluma negra", "↑ {{Damage}} Daño +0.5 por cada objeto \"malvado\" que tengas"},
	[92] = {"92", "Corona rota", "↑ Las estadísticas basadas en tus objetos son un 20% más efectivas"}, -- Corona rota
	[96] = {"96", "Serpiente Uróboros", "Las lágrimas se mueven rápido en espiral#Lágrimas espectrales#↑ +1.5 de rango"}, -- Ouroboros Worm
	[98] = {"98", "Nariz de duende", "{{Poison}} Probabilidad de disparar lágrimas venenosas que se pegan a los enemigos#"},
	[101] = {"101", "Bombilla apagada", "!!! Al tener un objeto activable descargado :#↑ {{Speed}} Velocidad +0.5#↑ {{Range}} Alcance +1.5#↑ {{Tears}} Lágrimas +0.5#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +1.5#↑ {{Shotspeed}} Vel. de disparo +0.3#↑ {{Luck}} Suerte +2"},
	[107] = {"107", "Corazón de cuervo", "Al recibir daño, los corazones rojos son dañados antes que los de alma o negros#!!! El daño a corazones rojos puede reducir tu posibilidad de sala del Diablo/Ángel"},
	[110] = {"110", "Moneda de plata", "{{Shop}} Ahora aparecen tiendas en el Útero y en el Cadaver"},
	[111] = {"111", "Corona sangrienta", "{{TreasureRoom}} Las salas del tesoro aparecen en el capítulo 4 (Matriz/Utero/Matriz desgarrada/Cadaver)"}, -- Corona sangrienta
	[121] = {"121", "Cruz de madera", "{{HolyMantle}} Te protege del primer daño recibido en cada planta"},
	[119] = {"119", "Célula madre", "{{HealingRed}} Entrar a un nuevo piso cura la mitad de los corazones Dojos/de Hueso de Isaac#{{HealingRed}} Cura medio corazón como mínimo"}, -- Célula madre
	[128] = {"128", "Dedo de hueso", "{{EmptyBoneHeart}} 5% de posibilidad de ganar un corazón de hueso al recibir daño"}, -- Dedo de hueso
	[125] = {"125", "Cable de extensión", "Genera un láser entre los familiares#El láser inflinge 6 de daño#Funciona con los familiares de todos los personajes en juego"},
	[129] = {"129", "Rompemandíbulas", "Probabilidad de disparar lágrimas diente"}, --  Rompemandíbulas
	[130] = {"130", "Bolígrafo mordido", "{{Slow}} Probabilidad de disparar lágrimas ralentizantes"}, --  Boli mordido
	[131] = {"131", "Moneda bendita", "{{HalfSoulHeart}} Probabilidad de dejar caer medio corazón de alma al coger monedas"}, --  Moneda bendita
	[132] = {"132", "Jeringuilla rota", "Probabilidad de ganar un efecto de jeringuilla aleatoria en la habitación actual"}, --  Jeringuilla rota
	[133] = {"133", "Fusible corto", "{{Bomb}} Las bombas colocadas explotan más rápido"}, --  Fusible corto
	[134] = {"134", "Judía gigante", "Aumenta el tamañó de los pedos"}, --  Judía gigante
	[135] = {"135", "Mechero", "{{Burning}} Probabilidad de quemar a los enemigos el entrar en la habitación"}, --  Mechero
	[136] = {"136", "Candado roto", "Las puertas, candados y cofres dorados pueden abrirse con explosiones#También puede abrir la puerta de Casa"}, --  Candado roto
	[137] = {"137", "Miosotis", "Al bajar a una nueva planta, se generan hasta cuatro recolectables no obtenidos de la planta anterior"}, --  Miosotis
	[138] = {"138", "'M", "Tu objeto activo será reemplazado al usarlo"}, --  'M
	[139] = {"139", "Amuleto de lágrima", "{{Luck}} Los efectos de lágrima basados en la suerte ocurren con mayor frecuencia"}, --  Amuleto de lágrima
	[140] = {"140", "Manzana de Sodoma", "{{Heart}} Tomar corazones rojos puede convertirlos en arañas azules#Funciona incluso si tienes vida al completo#Puede tragarse corazones que necesitas para curarte"}, --  Manzana de Sodoma
	[141] = {"141", "Canción de cuna olvidada", "Aumenta la cadencia de tiro de los familiares"}, --  Nana olvidada
	[142] = {"142", "La fe de Beth", "{{Collectible584}} Al inicio de cada planta, genera 4 fuegos del Libro de virtudes"}, --  La fe de Beth
	[143] = {"143", "Condensador antiguo", "Evita que el objeto activo se cargue#{{Battery}} Posibilidad de generar una paqueña batería al limpiar la habitación"}, --  Condensador antiguo
	[144] = {"144", "Gusano del cerebro", "Las lágrimas giran en ángulos de 90 grados para golpear a los enemigos si no iban a acertar"}, --  Gusano del cerebro
	[145] = {"145", "Perfección", "↑ {{Luck}} Suerte +10#Se destruye si recibes daño"}, --  Perfeccción
	[146] = {"146", "Corona del diablo", "{{RedTreasureRoom}} Las habitaciones doradas contienen ahora pactos del diablo"}, --  Corona del diablo
	[147] = {"147", "Moneda cargada", "{{Battery}} Tomar monedas puede cargar el objeto activable"}, --  Moneda cargada
	[148] = {"148", "Collar de la amistad", "Hace que los familiares giren a tu alrededor"}, --  Collar de la amistad
	[149] = {"149", "Botón del pánico", "Puede activar tu objeto activable al recibir daño"}, --  Botón del pánico
	[150] = {"150", "Llave azul", "Entrar en una habitación que requiere una llave te lleva a una habitación similar a la de Hush#Actúa como un medio entre dos habitaciones"}, --  Llave azul
	[151] = {"151", "Lima plana", "Toda clase de pinchos se retraen, impidiendo recibir daño#{{CursedRoom}} Afecta a las puertas de las salas malditas"}, --  Lima plana
	[152] = {"152", "Lente de telescopio", "{{PlanetariumChance}} Posibilidad de planetario +25%#{{Planetarium}} Posibilita que aparezca un segundo Planetario#{{Planetarium}} Los planetarios ahora podrán aparecer en el Capítulo 4 (Matriz/Utero/Matriz desgarrada/Cadaver) "}, --  Lente de telescopio
	[153] = {"153", "Pelo de Mamá", "{{Mom}} En cada habitación otorga un efecto aleatorio de un objeto de Mamá"}, --  Pelo de Mamá
	[154] = {"154", "Bolsa de dados", "{{Collectible489}} Al entrar en una habitación, otorga un consumible temporal de dado#El dado desaparece al cambiar de habitación#Ahora puedes llevar dos consumibles"}, --  Bolsa de dados
	[155] = {"155", "Corona sagrada", "{{TreasureRoom}} Genera una habitación de dorada en la Catedral"}, --  Corona sagrada
	[156] = {"156", "Beso de Mamá", "{{Heart}} Otorga un contenedor de vida roja#{{Player14}} También funciona con Keeper"}, --  Beso de Mamá
	[157] = {"157", "Carta rasgada", "Cada 15 disparos, suela una lágrima de Ipecac {{Collectible149}} + una lágrima de My Reflection {{Collectible5}} con mucho rango"}, --  Carta rasgada
	[158] = {"158", "Bolsillo roto", "Cuando te golpean, se te caen todos los recolectables#(Excepción: Corazones, cartas, píldoras, runas)"}, --  Bolsillo roto
	[159] = {"159", "Llave de oro", "{{GoldenChest}} Reemplaza todos los cofres sin abrir por cofres dorados#Excepción: mega cofres"}, --  Llave de oro
	[160] = {"160", "Saco de la suerte", "Genera un saco al bajar de planta"}, --  Saco de la suerte
	[161] = {"161", "Corona malvada", "{{TreasureRoom}} Genera una habitación dorada en Sheol"}, --  Corona malvada
	[162] = {"162", "Cuerno roto de Azazel", "{{Player7}} Posibilidad de convertirse en Azazel al entrar a una nueva habitación"}, --  Cuerno roto de Azazel
	[163] = {"163", "Dingle Berry", "Genera dos caquitas amistosas al limpiar una habitación"}, --  Dingle Berry
	[164] = {"164", "Anilla de protección", "Genera dos bombas adicionales por cada bomba que pongas"}, --  Anilla de protección
	[165] = {"165", "Ah, no", "En Womb (Útero) y más allá, cambia todos los recolectables que se generan por un recolectable aleatorio#Las bombas y los corazones son más comunes"}, --  Ah, no
	[166] = {"166", "Arcilla de modelar", "Otorga el efecto de un Objeto pasivo aleatorio en cada habitación"}, --  Arcilla de modelar
	[167] = {"167", "Hueso pulido", "Posibilidad de generar un hueso amistoso al limpiar la habitación"}, --  Hueso pulido
	[168] = {"168", "Corazón vacío", "{{EmptyBoneHeart}} +1 corazón de hueso al bajar a un nuevo piso"}, --  Corazón vacío
	[169] = {"169", "Dibujo infantil", "Al tenerlo, cuenta como un objeto para la transformación en Guppy"}, --  Dibujo infantil
	[170] = {"170", "Llave de cristal", "{{Collectible580}} Otorga la posibilidad de crear automáticamente salas de la Llave Roja al limpiar una habitación"}, --  Llave de cristal
	[171] = {"171", "La ganga de Keeper", "Los pactos del diablo usan monedas en lugar de corazones"}, --  La ganga de Keeper
	[172] = {"172", "Moneda maldita", "Teletransporta a una habitación aleatoria al recoger una moneda#Puede teletransportarte a habitaciones secretas"}, --  Moneda maldita
	[173] = {"173", "Tu alma", "{{Warning}} UN SOLO USO {{Warning}}#{{DevilRoom}} Puede usarse para pagar pactos del diablo sin perder corazones"}, --  Tu alma
	[174] = {"174", "Imán de número", "{{DevilChance}} +10 % de posibilidad de pacto del diablo"}, --  Imán de número
	[175] = {"175", "Llave extraña", "Desbloquea el pasaje a Blue Womb y la lucha de Hush, independientemente del tiempo#{{Collectible297}} Usar la Caja de Pandora genera 6 objetos de pools aleatorias"}, --  Llave extraña
	[176] = {"176", "Mini coágulo", "Genera un familiar coágulo que copia tu movimiento, la dirección del disparo y los efectos de lágrima"}, --  Mini coágulo
	[177] = {"177", "Tatuaje temporal", "{{ChallengeRoom}} Genera un cofre después de limpiar una sala de desafíos#{{BossRushRoom}} Genera un objeto después de limpiar una sala de desafíos de jefe"}, --  Tatuaje temporal
	[178] = {"178", "M80 mojado", "Isaac explota al recibir daño"}, --  M80 mojado
	[179] = {"179", "Mando a distancia", "En lugar de ir detrás, los familiares se mueven como tú"}, --  Mando a distancia
	[180] = {"180", "Alma encontrada", "Familiar que sigue los movimientos exactos y dispara lágrimas espectrales#Tiene el mismo daño y efectos que tú"}, --  Alma encontrada
	[181] = {"181", "Pack de expansión", "Usar el objeto activo activará un efecto de otro objeto activo aleatorio"}, --  Pack de expansión
	[182] = {"182", "Esencia de Beth", "Una vez por piso, recibir daño generará un fuego fatuo {{Collectible584}} y otorgará unos segundos de invulnerabilidad#Genera 5 fuegos al entrar en una habitación de ángel#Crea un fuego al dar dinero a los vagabundos"}, --  Esencia de Beth
	[183] = {"183", "Los gemelos", "Cada habitación:#Sin familiares: Posibilidad de hacer aparecer un Brother Bobby {{Collectible8}} o una Sister Maggy {{Collectible67}}# Con familiares: posibilidad de añadir o duplicar un familiar"}, --  Los gemelos
	[184] = {"184", "Papeles de adopción", "{{Shop}} Las tiendas pueden vender familiares#Los familiares siempre tienen descuento"}, --  Papeles de adopción
	[185] = {"185", "Pata de grillo", "Agrega la posibilidad de generar una langosta aleatoria al matar a un enemigo"}, --  Pata de grillo
	[186] = {"186", "El mejor amigo de Apollyon", "{{Throwable}} {{ColorOrange}}Lanzable{{CR}} (usar dos veces el botón de disparo)#Garantiza 2 moscas familiares con las que disparar"}, --  El mejor amigo de Apollyon
	[187] = {"187", "Gafas rotas", "{{TreasureRoom}} 33 % de probabilidad de añadir un objeto adicional a ciegas en la habitación del tesoro#Revela el objeto a ciegas in la ruta alternativa"}, --  Gafas rotas
	[188] = {"188", "Cubo de hielo", "Posibilidad de congelar a un enemigo al entrar en la habitación#{{Freezing}} Matar al enemigo petrificado lo congela"}, --  Cubo de hielo
	[189] = {"189", "Sello de Baphomet", "Activa un escudo de un segundo al matar a un enemigo"}, --  Sello de Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "¡Efecto duplicado!"
EID.descriptions[languageCode].tripledTrinket = "¡Efecto triplicado!"
EID.descriptions[languageCode].quadrupledTrinket = "¡Efecto cuadruplicado!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	[4] = { "{{Collectible419}} Usar un item activo teletransportará al jugador a {{ColorGold}}una habitación sin completar{{CR}}#Jerarquía: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[6] = { "monedas", "pickups" },
	[7] = { "{{Collectible72}} Se añade el rosario a todas las pools de items" },
	[13] = { "{{Shop}} {{ColorGold}}Posibilidad de tomar objetos de la tienda de forma gratuita{{CR}}#Se podrá convertir en una  {{Trinket13}} Tarjeta de crédito regular tras cada compra" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "{{Coin}} Las rocas podrán soltar 2 monedas", "{{Coin}} Las rocas podrán soltar 2 monedas", "{{Coin}} Las rocas podrán soltar monedas" },
	[25] = { "popó", "popó dorada" },
	-- Golden Mysterious Candy makes Golden Poop
	[46] = { "{{HalfHeart}} Medio corazón", "{{Heart}} Un corazón", "{{Heart}} Un corazón y medio" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a la {{BossRoom}} Sala del Jefe#-{{ColorGold}}30{{CR}}% de salud del jefe#{{ColorGold}} ¡Removible!",
		"{{HealingRed}} Cura {{ColorGold}}2{{CR}} Corazones rojos al entrar a la {{BossRoom}} Sala del Jefe#-{{ColorGold}}30{{CR}}% de salud del jefe#{{Warning}} Una vez tomado, no lo podrás soltar#Sólo se remueve con {{Trinket41}} La cerilla o tragándolo",
		"{{HealingRed}} Cura {{ColorGold}}3{{CR}} Corazones rojos al entrar a la {{BossRoom}} Sala del Jefe#-{{ColorGold}}30{{CR}}% de salud del jefe#{{ColorGold}} ¡Removible!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "{{ArrowUp}} Los aumentos de estadísticas son duplicados", "Los aumentos de estadísticas son triplicados", "Los aumentos de estadísticas son cuadruplicados", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "El efecto de la baratija se duplica si es posible", "El efecto de la baratija se triplica si es posible", "El efecto de la baratija se cuadriplica si es posible", },
	-- NO!
	[88] = { "Evita que los items de calidad {{Quality0}} aparezcan" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "{{GoldenChest}} Reemplaza todos los cofres (excepto los viejos y megacofres con cofres dorados#Los cofres dorados pueden contener cartas, píldoras y trinkets extra" },
	[183] = { "Podrá copiar/otorgar 2 familiares", "Podrá copiar/otorgar 2 familiares", "Podrá copiar/otorgar 3 familiares" },
}

---------- Cards ----------

local repCards={
	[2] = {"2", "I - El Mago", "Lágrimas teledirigidas en la habitación actual#{{Range}} Alcance +3.0"},
	[4] = {"4", "III - La Emperatriz", "Durante la habitación, recibes: #↑ {{Damage}} Daño +2.35#↑ {{Speed}} Velocidad +0.3"},
	[12] = {"12", "XI - Fuerza", "Durante la habitación actual, recibes: #↑ {{Heart}} +1 de Vida#↑ {{Speed}} Velocidad +0.3#↑ {{Damage}} Daño +50% y +0.3#↑ {{Range}} Alcance +1.5"},
	[16] = {"16", "XV - El Diablo", "Durante la habitación actual, recibes: #↑ {{Damage}} Daño +2"},
	[18] = {"18", "XVII - Las Estrellas", "{{TreasureRoom}} Te teletransporta a la sala del tesoro#{{Planetarium}} Te llevará al planetario si es que hay dicho"},
	[27] = {"27", "", "{{Bomb}} Convierte todos los recolectables, cofres y enemigos no jefes en bombas"},
	[28] = {"28", "", "{{Coin}} Convierte todos los recolectables, cofres y enemigos no jefes en monedas"},
	[29] = {"29", "", "{{Key}} Convierte todos los recolectables, cofres y enemigos no jefes en llaves"},
	[30] = {"30", "", "{{Heart}} Convierte todos los recolectables, cofres y enemigos no jefes en corazones"},
	[34] = {"34", "Ehwaz", "Genera una trampilla#{{LadderRoom}} Genera un mini-sótano si se usa sobre un elemento decorativo"},
	[39] = {"39", "", "Invencibilidad durante 20 segundos"},
	[42] = {"42", "Carta del caos", "Carta lanzable que mata al instante#No mata a Delirium ni a La Bestia"},
	[51] = {"51", "Carta sagrada", "{{HolyMantle}} Otorga el efecto del Manto Sagrado la planta actual#Se pierde con un golpe"},
	[55] = {"55", "Fragmento de runa", "{{Rune}} Activa un efecto de runa aleatoria#El efecto es débil"},
	[52] = {"52", "Gran Crecimiento", "Durante la habitación actual, recibes: #↑ {{Damage}} Daño +7#↑ {{Range}} Alcance +3.0#↑ +Tamaño#Capacidad de romper rocas"},
	[54] = {"54", "Caminando una Era", "Durante la habitación actual, recibes: #↑ {{Speed}} Velocidad +0.5#{{Shotspeed}} Vel. de lágrimas -0.40#Los enemigos se ralentizan"},
	[56] = {"56", "0 - ¿El Bufón?", "Deja caer los corazones y recolectables al suelo#Te deja con medio corazón#Los recolectables pueden generarse como los recolectables {{Collectible74}} {{Collectible19}} si hay una cantidad suficiente"},
	[57] = {"57", "I - ¿El Mago?", "Otorga un aura protectora contra los proyectiles grandes y los enemigos#Dura un minuto"},
	[58] = {"58", "II - ¿La Gran Sacerdotisa?", "El pie de mamá pisa repetidamente durante 1 minuto"},
	[59] = {"59", "III - ¿La Emperatriz?", "Efecto temporal:#↑ {{Heart}} +2 corazones rojos#↑ {{Tears}} Lágrimas +1.35"},
	[60] = {"60", "IV - ¿El Emperador?", "{{BossRoom}} Te teletransporta a una sala del jefe adicional con más recompensa"},
	[61] = {"61", "V - ¿El Sumo Sacerdote?", "{{EmptyBoneHeart}} Genera 2 corazones de hueso"},
	[62] = {"62", "VI - ¿Los Enamorados?", "Genera un objeto de la pool de la sala actual#{{BrokenHeart}} Convierte 1 corazón rojo o 2 corazones de alma en un corazón roto"},
	[63] = {"63", "VII - ¿El Carruaje?", "Te convierte en una estatua invencible durante 10 segundos#Gran velocidad de disparo mientras dure"},
	[64] = {"64", "VIII - ¿Justicia?", "{{GoldenChest}} Genera de 2 a 4 cofres dorados"},
	[65] = {"65", "IX - ¿El Ermitaño?", "Convierte los recolectables y objetos de la habitación en monedas#El valor de las monedas es el mismo que su precio en la tienda"},
	[66] = {"66", "X - ¿La Rueda de la Fortuna?", "Efecto aleatorio de la sala de dados"},
	[67] = {"67", "XI - ¿Fuerza?", "Los enemigos de la habitación se vuelven más débiles, lentos y reciben el doble de daño"},
	[68] = {"68", "XII - ¿El Colgado?", "{{Player14}} Te conviertes en Keeper durante 30 segundos#Otorga disparo triple y menos velocidad#Los enemigos asesinados dejan caer monedas"},
	[69] = {"69", "XIII - ¿Muerte?", "{{Collectible545}} Genera entidades de hueso por cada enemigo eliminado en la habitación"},
	[70] = {"70", "XIV - ¿Templanza?", "{{Pill}} Consumes 5 píldoras aleatorias"},
	[71] = {"71", "XV - ¿El Diablo?", "{{Collectible33}} Activa el efecto de La Biblia#Genera un familiar Serafín {{Collectible390}}# Dura 30 segundos"},
	[72] = {"72", "XVI - ¿La Torre?", "Genera 6 grupos de rocas y obstáculos aleatorios"},
	[73] = {"73", "XVII - ¿Las Estrellas?", "Elimina el objeto pasivo más antiguo#Genera 2 objetos aleatorios de la pool de la sala actual"},
	[74] = {"74", "XVIII - ¿La Luna?", "{{UltraSecretRoom}} Te teletransporta a la sala ultrasecreta#{{Collectible580}} El camino de vuelta será de habitaciones rojas"},
	[75] = {"75", "XIX - ¿El Sol?", "Ganas el objeto Spirit of the Night {{Collectible159}} (Espíritu de la noche)#↑ +1,5 de daño# Dura en la planta actual#Convierte los corazones rojos en corazones de hueso, pero los devuelve al acabar el efecto#Aplica Curse of Darkness (Maldición de oscuridad)"},
	[76] = {"76", "XX - ¿El Juicio?", "Genera una máquina de restock"},
	[77] = {"77", "XXI - ¿El Mundo?", "Genera una trampilla"},
	[78] = {"78", "Llave Rota", "{{Collectible580}} Llave Roja de' un solo uso"},
	[79] = {"79", "Reina de Corazones", "{{Heart}} Genera de 1 a 20 corazones rojos"},
	[80] = {"80", "Comodín", "Copia el efecto del último recolectable activado: píldora, carta, runa, piedra de alma u objeto activo"},
	[81] = {"81", "Alma de Isaac", "Cambia los objetos de la habitación#Lo alterna con la forma original tras un segundo#El efecto se repite"},
	[82] = {"82", "Alma de Magdalena", "Te rodea con un aura roja burbujeante en la habitación actual#Los enemigos asesinados dejan caer medios corazones rojos que desaparecen en 2 segundos"},
	[83] = {"83", "Alma de Caín", "{{Collectible580}} Crea habitaciones rojas para cada posible salida"},
	[84] = {"84", "Alma de Judas", "Te convierte en un fantasma que puede atravesar enemigos y paralizarlos#Tras unos segundos, les ataca a todos"},
	[85] = {"85", "Alma de ???", "Suelta 8 pedos venenosos con creep marrón#Después deja un creep y 7 Bombas de Trasero#Quedarse en el creep otorga:#↑ {{Tears}} Lágrimas +1.35#↑ {{Damage}} Daño+1 "},
	[86] = {"86", "Alma de Eva", "14 familiares Dead Bird atacan a los enemigos# Dura en la habitación actual"},
	[87] = {"87", "Alma de Sansón", "Te convierte en Sansón berserker con ataque a melé durante 10 segundos#↑ +0,4 de velocidad#↑ Más lágrimas#↑ +3 de daño"},
	[88] = {"88", "Alma de Azazel", "{{Collectible441}} Activa Mega Blast durante 7,5 segundos"},
	[89] = {"89", "Alma de Lázaro", "Mueres y revives inmediatamente con medio corazón y un rato de invencibilidad#El objeto se usa automáticamente al recibir un daño fatal (como una vida adicional)"},
	[90] = {"90", "Alma de Edén", "Activa el efecto de D6 {{Collectible105}} y el de D20 {{Collectible166}}#El objeto cambiado usa pools de objetos aleatorias"},
	[91] = {"91", "Alma del perdido", "{{Player10}} Te convierte en El Perdido en la habitación actual"},
	[92] = {"92", "Alma de Lilith", "Añade un familiar aleatorio"},
	[93] = {"93", "Alma de Keeper", "{{Coin}} Genera de 3 a 25 monedas aleatorias"},
	[94] = {"94", "Alma de Apolión", "Genera 15 langostas aleatorias"},
	[95] = {"95", "Alma del olvidado", "{{Player16}} Aparece El Olvidado como un segundo personaje en la habitación actual"},
	[96] = {"96", "Alma de Bethany", "{{Collectible584}} Genera 6 fuegos fatuos del Libro de las Virtudes con propiedades aleatorias"},
	[97] = {"97", "Alma de Jacob y Esaú", "{{Player20}} Aparece Esaú como un segundo personaje en la habitación actual"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)


---------- Tarot Cloth Buffs ----------
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "También otorga el efecto de {{Collectible34}} El libro de Belial", -- I - The Magician
	[3] = "Un segundo pie atacará en cuanto el primero lo haga", -- II - The High Priestess
	[4] = "Duplica el aumento de estadísticas", -- III - The Empress
	[5] = "Si el jefe no ha sido derrotado, Recibes un {{SoulHeart}} Corazón de alma", -- IV - The Emperor
	[6] = "Genera 3 corazones de alma", -- V - The Hierophant
	[7] = "Genera 3 corazones rojos", -- VI - The Lovers
	[8] = "Duración duplicada", -- VII - The Chariot
	[9] = "Duplica la generación de recolectables", -- VIII - Justice
	[10] ="Evita que Codicia aparezca en las tiendas#Si ya se peleó contra Codicia, la tienda regresará a la normalidad", -- IX - The Hermit
	[11] = "Genera 2 máquinas tragaperras", -- X - Wheel of Fortune
	[12] = "Duplica el aumento de estadísticas, excepto el multiplicador de daño", -- XI - Strength
	[14] = "Inflinge 80 de daño", -- XIII - Death
	[15] = "Genera 2 Máquinas de donación de sangre", -- XIV - Temperance
	[16] = "Aumento de daño duplicado", -- XV - The Devil
	[17] = "Genera 12 bombas troll", -- XVI - The Tower
	[18] = "Si no se ha entrado a la sala del tesoro, esta tendrá 2 posibles opciones", -- XVII - The Stars
	[21] = "Genera 2 mendigos", -- XX - Judgement
	[56] = "Sueltas tanto los recolectables como los objetos, Incluyendo el Tapete de tarot", -- 0 - The Fool?
	[59] = "↑ Salud +3", -- III - The Empress?
	[61] = "Genera 3 corazones de hueso", -- V - The Hierophant?
	[62] = "Añade 2 corazones rotos y genera 2 objetos", -- VI - The Lovers?
	[64] = "Genera 4-14 cofres dorados", -- VIII - Justice?
	[65] = "Genera una moneda adicional", -- IX - The Hermit?
	[66] = "Activa un efecto de sala del dado adicional", -- X - Wheel of Fortune?
	[68] = "Duplica el tiempo", -- XII - The Hanged Man?
	[70] = "Consumes 10 píldoras", -- XIV - Temperance?
	[72] = "Generas 14 agrupaciones de rocas", -- XVI - The Tower?
	[73] = "Retira 2 objetos y genera otros 4", -- XVII - The Stars?
	[76] = "Generan 4 máquinas de reabastecimiento", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bombas son llaves", "Intercambia el número de bombas por el de llaves#Las llaves y bombas de oro también se intercambian"},
	[12] = {"11", "Menos Alcance", "↓ {{Range}} Alcance -0.6"},
	[13] = {"12", "Más Alcance", "↑{{Range}} Alcance +0.75"},
	[14] = {"13", "Menos velocidad", "↓ {{Speed}} Velocidad -0.12"},
	[15] = {"14", "Más velocidad", "↑ {{Speed}} Velocidad +0.15"},
	[16] = {"15", "Menos lágrimas", "↓ {{Tears}} Lágrimas -0.28"},
	[17] = {"16", "Más lágrimas", "↑ {{Tears}} Lágrimas +0.35"},
	[18] = {"17", "Menos suerte", "↓ {{Luck}} Suerte -1"},
	[19] = {"18", "Más suerte", "↑ {{Luck}} Suerte +1"},
	[38] = {"37", "¡Visión retro!", "Pixela la pantalla durante 30 segundos"},
	[42] = {"41", "Tengo sueño...", "Te ralentiza a ti y a los enemigos de la habitación"},
	[43] = {"42", "¡¡TENGO MUCHA ENERGÍA!!", "Aumenta tu velocidad y la de todos los enemigos de la habitación#Se vuelve a activas tras 30 y 60 segundos"},
	[48] = {"47", "- Velocidad de lágrimas", "↓ {{Shotspeed}} Vel. de lágrimas -0.15"},
	[49] = {"48", "+ Velocidad de lágrimas", "↑ {{Shotspeed}} Vel. de lágrimas +0.15"},
	[50] = {"49", "Píldora experimental", "↑ Aumenta una estadística aleatoria#↓ Disminuye otra estadística aleatoria#Si tienes PHD no bajará ninguna"},
	[9999] = {"", "Píldora dorada", "Efecto de píldora aleatorio#Se destruye tras unos cuantos usos"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Vaya pedo", "{{Poison}} Envenena toda la habitación"},
	{"1", "Mal viaje", "Te inflige 2 corazones de daño"},
	{"2", "Bolas de acero", "{{SoulHeart}} +4 Corazones de Alma"},
	{"3", "Bombas son llaves", "Intercambia el número de bombas y de llaves#Aumenta el número de llaves y de bombas en un 50 %#Las bombas y llaves doradas también se intercambian"},
	{"4", "Diarrea explosiva", "Genera enormes bombas troll teledirigidas en tu posición"},
	{"5", "Salud completa", "{{SoulHeart}} +3 Corazones de Alma#{{HealingRed}} Vida al completo"},
	{"6", "Menos vida", "↓ {{EmptyHeart}} -2 de Vida"},
	{"7", "Más vida", "↑ {{EmptyHeart}} +2 contenedores de corazón vacíos"},
	{"8", "", "Sin efecto"},
	{"9", "Pubertad", "Sin efecto"}, -- Puberty
	{"10", "Mosca bonita", "{{Collectible279}} Añade 1 Gran fan orbital#No hay límite máximo"},
	{"11", "Menos Alcance", "↓ {{Range}} Alcance -1.2"},
	{"12", "Más Alcance", "↑ {{Range}} Alcance +0.9"},
	{"13", "Menos velocidad", "↓ {{Speed}} Velocidad -0.24"},
	{"14", "Menos velocidad", "↑ {{Speed}} Velocidad +0.3"},
	{"15", "Menos lágrimas", "↓ {{Tears}} Lágrimas -0.56"},
	{"16", "Más lágrimas", "↑ {{Tears}} Lágrimas +0.70"},
	{"17", "Menos suerte", "↓ {{Luck}} Suerte -2"},
	{"18", "Más suerte", "↑ {{Luck}} Suerte +2"},
	{"19", "¡Teletransporta!", "Te teletransporta a una habitación aleatoria"}, -- TODO
	{"20", "¡48 horas de energía!", "Recarga el objeto activo#Deja caer baterías"}, -- TODO
	{"21", "Hematémesis", "Drena todos los contenedores de corazón menos uno#Genera corazones rojos"}, -- TODO
	{"22", "Parálisis", "No te puedes mover durante 4 segundos"},
	{"23", "¡Puedo ver para siempre!", "{{SecretRoom}} Abre las entradas de las habitaciones secretas de la planta actual#{{Card22}} Muestra el mapa completo"},
	{"24", "Feromonas", "{{Charm}} Convierte a cada enemigo de la habitación actual en amigo"},
	{"25", "Amnesia", "{{CurseLost}} Oculta el mapa de esta planta"}, --TODO
	{"26", "Fiesta de limonada", "Genera un charco que cubre el suelo y daña a los enemigos"},
	{"27", "¿Eres un mago?", "Disparas en diagonal durante 60 segundos"},
	{"28", "¡Percs!", "Recibes la mitad de daño en la habitación actual"},  --TODO
	{"29", "¡Adicto!", "Recibes un corazón completo de daño en la habitación actual"}, --TODO
	{"30", "Relaxante", "Genera una caca mientras caminas durante 4 segundos"}, --TODO
	{"31", "", "{{CurseMaze}} Maldición del Laberinto durante todo el piso"}, --TODO
	{"32", "Una te hace grande", "Te haces mucho más grande#No afecta a la hitbox"},
	{"33", "Una te hace pequeño", "Te haces mucho más pequeño#Tu hitbox se hace más pequeña"},
	{"34", "¡Infestado!", "Genera 2 arañas azules por cada caca de la habitación"},
	{"35", "¿Infestado?", "Genera 2 arañas azules por cada enemigo de la habitación#Genera de 2 a 6 arañas azules si no hay enemigos en la habitación"},
	{"36", "Píldora de visión", "{{Timer}} Receibes por la habitación:#↑ {{Damage}} +7 de Daño#↑ {{Range}} +3 de Rango#{{Timer}} Recibes por 6,5 segundos:#Invincibilidad#Isaac no puede disparar pero hace 40 de daño por contacto cada segundo#{{HealingRed}} Matar 2 enemigos cura medio corazón#{{Fear}} Asusta a todos los enemigos en la habitación"},
	{"37", "¡Visión retro!", "Pixela la pantalla durante 30 segundos"},
	{"38", "¡Amigos hasta el fin!", "Invoca 6 moscas azules"},
	{"39", "", "Genera una piscina de creep resbaladizo persistente"},
	{"40", "", "Genera una piscina de creep ralentizante persistente"},
	{"41", "Tengo mucho sueño...", "Ralentiza a todos los enemigos de la habitación"}, --TODO
	{"42", "¡¡TENGO MUCHA ENERGÍA!!", "Acelera a todos los enemigos de la habitación"}, --TODO
	{"43", "¡Glup!", "{{Trinket}} Consume el trinket actual y ganas su efecto de manera permanente"}, --TODO
	{"44", "¡Horf!", "Dispara un grupo de lágrimas de {{Collectible149}}Ipecac"},
	{"45", "¡Es como si caminara sobre el sol!", "{{Timer}} Recibes por 6,5 segundos:#Invincibilidad#Isaac no puede disparar pero hace 40 de daño por contacto cada segundo#{{HealingRed}} Matar 2 enemigos cura medio corazón#{{Fear}} Asusta a todos los enemigos en la habitación"},
	{"46", "¡Vurp!", "Genera la última píldora usada como una píldora para caballos"},
	{"47", "Menos Velocidad de lágrimas", "↓ {{Shotspeed}} Vel. de Lágrimas -0.3"},
	{"48", "Más Velocidad de lágrimas", "↑ {{Shotspeed}} Vel. de Lágrimas +0.3"},
	{"49", "Píldora experimental", "↑ Aumenta una estadística aleatoria dos veces#↓ Disminuye otra estadística aleatoria dos veces#Si tienes PHD no disminuye nada"},
	[9999] = {"", "Píldora dorada", "Efecto de píldora de caballo aleatorio#Se destruye tras unos cuantos usos"}, -- Píldora dorada
}

---------- Glitched Items Descriptions ----------
EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Corazón/zones negro/s",
	AddBombs = "{{Bomb}} {1} Bomba/s",
	AddCoins = "{{Coin}} {1} Moneda/s",
	AddHearts = "{{Heart}} Cura {1} Corazón/es rojo/s",
	AddKeys = "{{Key}} {1} Llave/s",
	AddMaxHearts = "{{EmptyHeart}} {1} Contendor/es de Corazón",
	AddSoulHearts = "{{SoulHeart}} {1} Corazón/zones de alma",

	-- Cache Flag names
	cacheFlagStart = "Puede afectar ",
	[0] = "{{Damage}} Daño", "{{Tears}} Lágrimas", "{{Shotspeed}} Vel. de lágrimas", "{{Range}} Alcance", "Velocidad", "Efectos de lágrima", "Color de lágrima", "Vuelo", "Tipo de ataque", "Familiares", "Suerte", "Tamaño", "Color", "Contenido de cofres", [16] = "Todas las estadísticas",

	-- Attribute triggers
	chain = "Que: ",
	active = "Al usarse:#",
	pickup_collected = "Al tomar un recolectable:#", --chance to?
	enemy_kill = "Al matar, Posibilidad de:#",
	damage_taken = "Al recibir daño:#", --chance to?
	entity_spawned = "Cuando un {{ColorGray}}{T1}{{ColorText}} Se genera:#",
	tear_fire = "Al disparar una lágrima, posibilidad de:#",
	enemy_hit = "Al golpear un enemigo, posibilidad de:#",
	room_clear = "Al limpiar una sala:#", --chance to?

	-- Attribute effects
	area_damage = "Hace {1} de daño en el área",
	add_temporary_effect = "Gana {1} Durante la sala",
	convert_entities = "Convierte todos los {{ColorGray}}{1}{{ColorText}} de la sala en {{ColorGray}}{2}{{ColorText}}",
	use_active_item = "Usa {1}",
	spawn_entity = "Genera un {{ColorGray}}{1}{{ColorText}}",
	fart = "Suelta un pedo de tamaño {1}",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "lit Bomb",
	["5.0"] = "pickup",
	["5.10"] = "Heart",
	["5.20"] = "Coin",
	["5.30"] = "Key",
	["5.40"] = "Bomb pickup",
	["5.69"] = "Grab Bag",
	["5.70"] = "Pill",
	["5.90"] = "Battery",
	["5.300"] = "Card",
	["9.-1"] = "enemy projectile",
	["999.-1"] = "grid object",
	["1000.0"] = "effect",
}

---------- Misc. Text ----------
-- Poop spells
EID.descriptions[languageCode].poopSpells = { --¿Deberíamos cambiar "Popó" a "Caca"? (Y de paso poner nombres normales para los hechizos)
	{"Popó", "Popó normal, puede generar recolectables"},
	{"Mazorqueada", "Genera moscas azules al estar intacta"},
	{"¡ESTO ARDE!", "Inflige daño por contacto al estar intacta#{{Burning}} Genera fuego al ser destruida"},
	{"Hice caca seca", "Can deal damage 3 times when thrown#Takes a lot of hits to destroy"},
	{"Esto está podrido...", "{{Poison}} Genera nubes tóxicas#!!! ¡La nube explotará si entra en contacto con fuego!"},
	{"Popó Negra", "{{Slow}} Genera creep ralentizante#{{Confusion}} Inflige 10 de daño y confunde a los enemigos"},
	{"¡Santa cagada!", "{{Collectible543}} Lanzas una popó blanca con un aura#Al estar dentro del aura, recibes:#↑ {{Damage}} Daño +20%#↑ {{Tears}} Lágrimas +150% #Lágrimas teledirigidas#Posibilidad de bloquear daño"},
	{"Diarrea", "Dejas un camino de creep#Pararte sobre el creep otorga: #↑ {{Tears}} Más lágrimas#↑ {{Damage}} Más daño#Si el creep toca una popó con efecto especial, adquirirá sus propiedades"},
	{"Un pedo", "Empuja enemigos y disparos#{{Poison}} Genera una bomba tóxico#!!! ¡La nube explotará si entra en contacto con fuego!"},
	{"Bomba", "Normal throwable bomb"},
	{"Diarrea explosiva", "Genera 5 bombas encendidas a tu paso"},

	["Unknown"] = {"{{PoopSpell1}}", "Popó Desconocida", "Los efectos de la popó son desconocidos"}
}
-- Poop spells end

-- Void stuff
EID.descriptions[languageCode].VoidNames = {"de Velocidad", "de Lágrimas ", "de Daño", "de Alcance", "de Vel. de lágrimas ", "de Suerte"}
EID.descriptions[languageCode].VoidShopText = "Si se absorbe justo después de tomarlo, ganarás:"
EID.descriptions[languageCode].VoidOptionText = " Será absorbido en su lugar"
-- Void stuff end

-- Bag of Crafting stuff
EID.descriptions[languageCode].CraftingBagContent = "Bolsa:"
EID.descriptions[languageCode].CraftingRoomContent = "Sala:"
EID.descriptions[languageCode].CraftingFloorContent = "Piso:"

EID.descriptions[languageCode].CraftingBagQuality = "Calidad:"
EID.descriptions[languageCode].CraftingBestQuality = "Mejor Calidad:"

EID.descriptions[languageCode].CraftingHideKey = "Ocultar:"
EID.descriptions[languageCode].CraftingPreviewKey = "Prevista:"

EID.descriptions[languageCode].CraftingBagModError = "!!! {{ColorRed}}ERROR:#{{ColorRed}}El \"Cálculo de Recetas\" actualmente no funciona con mods que añaden objetos!#{{ColorRed}}Por favor desinstala los mods de objetos o desactiva las descripciones de Bag of Crafting en la configuración"
EID.descriptions[languageCode].CraftingResults = "(Desplazar: mantén {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}},#Bloquear: {{ButtonX}}, Refrescar: {{ButtonB}})"
-- Bag of Crafting stuff end

-- Mimic items charges
EID.descriptions[languageCode].BlankCardCharge = "Cargas de Carta en Blanco:"
EID.descriptions[languageCode].ClearRuneCharge = "Cargas de Runa limpia:"
EID.descriptions[languageCode].PlaceboCharge = "Cargas de Placebo:"
-- Mimic items charges end

-- Warnings
EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}!!! ADVERTENCIA !!!"
EID.descriptions[languageCode].AchievementWarningText = "¡Los logros están deshabilitados!#Para poder progresar en el juego, primero debes vencer a Mamá (Depths II) sin mods habilitados.#(Si ya derrotaste a Mamá, este mensaje es un bug, ignóralo)#(Este aviso puede ser desactivado en la configuración)"
EID.descriptions[languageCode].OutdatedModWarningText = "¡Un mod sin actualizar está reduciendo la cantidad de objetos! Esto puede causar crasheos, especialmente al entrar al area de la Pieza del cuchillo 2#Por favor, desinstala los mods con el archivo resources/items.xml desactualizado"
EID.descriptions[languageCode].OldGameVersionWarningText = "Tu versión de Repentance no es la más reciente#La versión más reciente es la única con soporte oficial (1.7.9b)#(Este aviso puede ser desactivado en la configuración)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Los objetos modeados pueden provocar cálculos incorrectos#Usa el modo Item Probability o desactiva el cálculo de la Bolsa de trabajo si es que los cálculos son incorrectos#(Este aviso puede ser desactivado en la configuración)"
-- Warnings end

-- False PHD modifier
EID.descriptions[languageCode].FalsePHDHeart = "{{BlackHeart}} Genera 1 corazón negro"
EID.descriptions[languageCode].FalsePHDDamage = "{{Damage}} Daño +0.6"
EID.descriptions[languageCode].FalsePHDHorseDamage = "{{Damage}} Daño +1.2"
-- False PHD modifier end

EID.descriptions[languageCode].FlipItemToggleInfo = "(Mantén presionado {{ButtonSelect}} para mostrar la descripción)"

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

-- Pandora Box and Strange Key
EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "En su lugar, la llave es usada para generar 6 objetos de pools aleatorias"
-- Pandora Box and Strange Key end

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = " Resultado",
}

EID.descriptions[languageCode].ResultsWithX = "(Resultado con {1})"

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Sala regular", "Tienda", "Sala de error", "Sala del tesoro", "Sala del jefe", "Sala de minijefe", "Sala secreta", "Sala súper secreta", "Arcade", "Sala maldita", "Sala de desafío", "Library", "Sala de sacrificio", "Sala del Diablo", "Sala del Ángel", "Mini-sótano", "Sala de Avalancha de jefes", "Habitación de Isaac", "Barren Room", "Sala de cofres", "Sala de dados", "Mercado negro", "Sala de salida", "Planetario", "Teleporter Entrance", "Entrada de teletransporte", "Trampilla de la ruta alterna", "Sala de la Llave Azul", "Sala ultra secreta",
-- Not technically room types but still potentially useful to have localized
[666] = "Sala del Diablo/Ángel", [1024] = "Sala roja", [1025] = "Sala roja especial" }
