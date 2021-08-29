---------------------------------------
-----  Basic spanish descriptions -----
---------------------------------------
-- Last Sync with en_us: 03.07.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
	--["5.70.14"] = {"14", "Golden Pill", "Random pill effect#Destroys itself after a few uses"}, -- golden Pill
}

local repCollectibles={
	[5] = {"5", "Mi reflejo", "Otorga un efecto bumerán a las lágrimas#↑ +1,5 de rango#↑ +60 % de rango adicional#↑ +0,6 de velocidad de disparo#↑ +1 de tamaño de lágrima"},
	[6] = {"6", "Número uno", "↑ +1,5 de lágrimas#↓ -1,5 de rango#↓ -20 % de rango adicional#↑ +0,76 de tamaño de lágrima"},
	[12] = {"12", "Champiñón mágico", "↑ +1 de vida#↑ +0,3 de daño#↑ +50 % de multiplicador de daño#↑ +1,5 de rango#↑ +0,3 de velocidad#↑ +0,5 de tamaño de lágrima#¡Vida al completo!"},
	[13] = {"13", "El virus", "Toque venenoso#↑ +0,2 de velocidad"}, -- El virus
	[14] = {"14", "Furia de esteroides", "↑ +0,3 de velocidad#↑ +5,25 de rango#↑ +0,5 de tamaño de lágrima"}, -- Furia de esteroides
	[18] = {"18", "El dólar", "+100 monedas"},
	[22] = {"22", "Almuerzo", "↑ +1 de vida#Cura un corazón"}, -- Almuerzo
	[23] = {"23", "Cena", "↑ +1 de vida#Cura un corazón"}, -- Cena
	[24] = {"24", "Postre", "↑ +1 de vida#Cura un corazón"}, -- Postre
	[25] = {"25", "Desayuno", "↑ +1 de vida#Cura un corazón"}, -- Desayuno
	[26] = {"26", "Carne podrida", "↑ +1 de vida#Cura un corazón"},
	[29] = {"29", "Ropa interior de Mamá", "↑ +1,5 de rango#↑ +0,5 de tamaño de lágrima#Genera de 3 a 6 moscas azules"}, -- Ropa interior de Mamá
	[30] = {"30", "Tacones de Mamá", "↑ +1,5 de rango#↑ +0,5 de tamaño de lágrima#Tocar a los enemigos inflige 12 de daño"}, -- Tacones de Mamá
	[31] = {"31", "Pintalabios de Mamá", "↑ +2,25 de rango#↑ +0,5 de tamaño de lágrima#Genera un corazón aleatorio"}, -- Pintalabios de Mamá
	[40] = {"40", "¡Kamikaze!", "Provoca una gran explosión en la ubicación del jugador#Inflige 185 de daño"}, -- ¡Kamikaze!
	[42] = {"42", "Cabeza podrida de Bob", "Bomba venenosa lanzable#Inflige 185 + tu daño#Crea una nube de veneno"}, -- Cabeza podrida de Bob
	[44] = {"44", "¡Teletransporte!", "Teletransporta a Isaac a una habitación aleatoria (excepto a la habitación I AM ERROR)#Puedes influir un poco en la dirección al avanzar hacia allí"}, -- ¡Teletransporte!
	[45] = {"45", "Corazón Ñam", "Cura 1 corazón rojo#También cura medio corazón a otros jugadores"}, -- Corazón Ñam
	[46] = {"46", "Pie de la suerte", "↑ +1,0 de suerte#Más probabilidad de ganar al apostar#Aumenta las posibilidades de que caiga un recolectable al limpiar una habitación#Cambia algunas píldoras malas por buenas"}, -- Pie de la suerte
	[53] = {"53", "Imán", "Acerca los recolectables al jugador#Abre cofres a distancia, ignorando el daño de los cofres de pinchos"},
	[55] = {"55", "Ojo de Mamá", "Posibilidad de disparar una lágrima hacia atrás"}, -- Ojo de Mamá
	[62] = {"62", "Encanto del vampiro", "↑ +0,3 de daño#Cura medio corazón cada 13 enemigos asesinados"}, -- Encanto del vampiro
	[64] = {"64", "Oferta de Steam", "-50 % en la compra de objetos#Tener varios hace que el precio sea todavía inferior"}, -- Oferta de Steam
	[67] = {"67", "Hermana Maggy", "Familiar de lágrimas normales#Inflige 5 de daño"}, -- Hermana Maggy
	[70] = {"70", "Hormonas de crecimiento", "↑ +1,0 de daño#↑ +0,2 de velocidad"}, -- Hormonas de crecimiento
	[71] = {"71", "Mini Champi", "↑ +0,3 de velocidad#↑ +1,5 de rango*# ↑ Te haces más pequeño"},
	[72] = {"72", "Rosario", "+3 corazones de alma#↑ 0,5 de lágrimas#La Biblia es más común"}, -- Rosario
	[77] = {"77", "Mi pequeño unicornio", "Invencibilidad + 20 de daño por contacto"},
	[79] = {"79", "La marca", "↑ +1,0 de daño#↑ +0,2 de velocidad#+1 corazón negro"}, -- La marca
	[80] = {"80", "El pacto", "↑ +0,5 de daño#↑ +0,7 de lágrimas#+2 corazones negros"}, -- El pacto
	[83] = {"83", "El clavo", "+ Medio corazón negro#↑ +0,7 de daño#↓ -0,18 de velocidad#Inflige daño por contacto#Rompe rocas"}, -- El clavo
	[98] = {"98", "La reliquia", "Suelta 1 corazón de alma cada 7-8 habitaciones"},
	[101] = {"101", "El halo", "↑ + 1 de vida#↑ +0,3 de daño#↑ +0,2 de lágrimas#↑ +0,38 de rango#↑ +0,3 de velocidad#↑ +0,5 de tamaño de lágrima"},
	[106] = {"106", "Sr. Mega", "↑ x1,85 el daño de bomba #+5 bombas"}, -- Sr. Mega
	[110] = {"110", "Lentillas de Mamá", "Probabilidad de disparar lágrimas congelantes#↑ +0,38 de rango#↑ +0,5 de tamaño de lágrima"},
	[121] = {"121", "Champiñón raro (grande)", "↑ +1 contenedor de corazon vacío#↑ +1,0 de daño#↑ +0,25 de rango#↓ -0,2 de velocidad#↑ +0,5 de tamaño de lágrima"}, -- Champiñón raro (grande)
	[123] = {"123", "Manual de monstruos", "Familiar aleatorio#Se mantiene en la planta actual"}, -- Manual de monstruos
	[138] = {"138", "Estigma", "↑ +1 de vida#↑ +0,3 de daño#Cura un corazón"},
	[139] = {"139", "Bolso de Mamá", "Puedes tener 2 trinkets#Genera 1 trinket aleatorio"}, -- Bolso de Mamá
	[140] = {"140", "Maldición de Bob", "Bombas venenosas#+5 bombas#Las bombas dejan una nube de veneno"}, -- Maldición de Bob
	[147] = {"147", "Hacha de Notch", "Rompe las rocas y daña a los enemigos al contacto#Golpear con el hacha reduce sus cargas#Se recarga al cambiar de planta"}, -- Hacha de Notch
	[148] = {"148", "Infestación", "Genera de 2 a 6 moscas cuando te golpean"}, -- Infestación
	[149] = {"149", "Ipecacuana", "Lágrimas explosivas#↑ +40 de daño#↓ -0,2 de velocidad de disparo#↓ Menos lágrimas"},
	[152] = {"152", "Tecnología 2", "¡Láser permanente!#↓ Inflige un 13 % de tu daño#↓ 33 % menos de lágrimas"},
	[158] = {"158", "Bola de cristal", "Muestra el mapa completo#Genera una carta aleatoria o un corazón de alma#Mientras lo tienes:#↑ +15 % de posibilidad de que aparezca el Planetarium#100 % si te saltas la habitación del tesoro"},
	[171] = {"171", "Culo de araña", "Ralentiza a los enemigos durante 4 segundos#10 de daño a todos los enemigos#Eliminar enemigos con él genera arañas azules"}, -- Culo de araña
	[176] = {"176", "Células madre", "↑ +1 de vida#↑ +0,16 de velocidad de disparo#Cura un corazón rojo"},
	[178] = {"178", "Agua bendita", "{{Throwable}} {{ColorOrange}}Lanzable{{CR}}#Deja una piscina de creep donde se haya roto#Petrifica a los enemigos"}, -- Agua bendita 
	[182] = {"182", "Corazón sagrado", "Lágrimas teledirigidas#↑ +1 de vida#↑ 230 % + 1 de daño#↓ -0,4 de lágrimas#↓ -0,25 de velocidad de disparo#↑ +0,5 de rango"},
	[184] = {"184", "Santo Grial", "↑ +1 de vida#Permite volar#+1 de vida#Cura un corazón rojo"},
	[188] = {"188", "Abel", "Copia tus movimientos#Dispara hacia el jugador#Inflige 3,5 de daño#7,5 de daño si eres Caín"},
	[192] = {"192", "Telepatía para tontos", "Lágrimas teledirigidas en la habitación actual#↑ +3 de rango"}, -- Telepatía para tontos
	[193] = {"193", "¡CARNE!", "↑ +1 de vida#↑ +0,3 de daño#Cura un corazón"},
	[194] = {"194", "Bola 8 mágica", "↑ +0,16 de velocidad de disparo#+1 carta#+15 % de probabilidad de que aparezca el Planetarium"},
	[197] = {"197", "Zumo de Jesús", "↑ +0,5 de daño#↑ +0,38 de rango#↑ +0,5 de tamaño de lágrima"},
	[203] = {"203", "Paquete modesto", "Probabilidad de duplicar los recolectables"}, -- Paquete modesto
	[205] = {"205", "Enchufe puntual", "- medio corazón = Da una carga al objeto cuando pulsas espacio a cambio de medio corazón"}, -- Enchufe puntual
	[206] = {"206", "Guillotina", "↑ +1 de daño#↑ + 0,33 de lágrimas#Tu cabeza es un orbital#Disparas desde la cabeza#La cabeza inflige 105 de daño por contacto"},
	[211] = {"211", "Bebé araña", "Genera de tres a cinco arañas cuando te golpean"}, -- Bebé araña
	[214] = {"214", "Anémico", "↑ +1,5 de rango#Deja creep en el suelo cuando te golpean"},
	[218] = {"218", "Placenta", "Regenera la vida poco a poco#↑ +1 de vida#Cura 1 corazón"},
	[224] = {"224", "El cuerpo de Cricket", "↑ Más lágrimas (puede sobrepasar el valor límite)#↓ -20 % de rango#Las lágrimas se dividen en 4 al impactar#Las lágrimas partidas infligen la mitad de daño"},
	[228] = {"228", "Perfume de Mamá", "Las lágrimas asustan a los enemigos#↑ Más lágrimas (puede sobrepasar el valor límite)"},
	[230] = {"230", "Abadón", "↑ +1,5 de daño#↑ +0,2 de velocidad#Las lágrimas asustan#Convierte todos los corazones rojos en corazones negros#+2 corazones negros"}, -- Abadón
	[232] = {"232", "Cronómetro", "Efecto ralentizante permanente para los enemigos#↑ +0,3 de velocidad"}, -- Cronómetro
	[240] = {"240", "Tratamiento experimental", "↑ Gana 4 mejoras aleatorias, pero otras ↓2 estadísticas bajan"},
	[245] = {"245", "20/20", "Duplica los disparos#↓ -25 % de daño"}, -- 20/20
	[248] = {"248", "Mente colmena", "Las moscas y arañas azules duplican su daño#Las moscas y arañas de los familiares son más fuertes"},
	[253] = {"253", "Costra mágica", "↑ +1 de suerte#↑ +1 de vida#Cura un corazón"},
	[254] = {"254", "Coágulo", "↑ +1 de daño#↑ +1,5 de rango#!!! Solo se aplica al ojo izquierdo"},
	[256] = {"256", "Bombas calientes", "Las bombas queman#+5 bombas#Las bombas infligen daño por contacto"}, -- Bombas calientes
	[261] = {"261", "Proptósis", "↑ +0,5 de daño#↓ Cuanto más rato esté la lágrima en el aire, menos daño infligirá#300 % de daño si disparas a quemarropa"}, -- Proptósis
	[262] = {"262", "Página perdida 2", "+1 corazón negro#Al tener menos de 1 corazón dañas a todos los enemigos de la habitación#Los corazones negros infligen el doble de daño"}, -- Página perdida 2
	 
	[263] = {"263", "Runa de claridad", "Copia el efecto de la runa o la piedra de alma que tengas#Genera 1 runa aleatoria al cogerlo"}, -- Runa de claridad
	 
	[273] = {"273", "Cerebro de Bob", "Familiar bomba lanzable#La explosión inflige 100 de daño#El daño ignora la armadura"}, -- Cerebro de Bob
	[274] = {"274", "Mejor amigo", "Al ser golpeado, ganas un orbital de rango medio#Inflige 150 de daño cada segundo"}, -- Mejor amigo
	[276] = {"276", "Corazón de Isaac", "Gana un cuerpo invulnerable#!!! Cuando golpean al familiar corazón te hacen daño#El familiar se carga mientras disparas, soltando un grupo de lágrimas al soltar"}, -- Corazón de Isaac
	[278] = {"278", "Vagabundo oscuro", "!!! Convierte:#1,5 corazones rojos en 1 corazón de alma/negro, araña, píldora, carta o runa"}, -- Vagabundo oscuro
	[280] = {"280", "Sissy patas largas", "Invoca arañas azules en habitaciones hostiles aleatorias#Encanta a los enemigos al tocarlos"}, -- Sissy patas largas
	[283] = {"283", "D100", "Cambia todos los pedestales, estadísticas, recolectables y tus objetos pasivos#Duplica un recolectable aleatorio de la habitación#Reinicia la planta actual y genera y cambia los enemigos#Cambia las rocas"}, -- D100
	[285] = {"285", "D10", "Cambia todos los enemigos de la habitación#Los intenta sustituir por enemigos con una vida máxima similar"}, -- D10
	[287] = {"287", "Libro de secretos", "Otorga {{Collectible54}}Treasure Map (Mapa del tesoro), {{Collectible21}}Compass (Brújula) o {{Collectible246}}Blue Map (Mapa azul) en la planta en la que lo uses#Solo otorga efectos de mapa que no tengas ya#Si están todos los efectos activos,otorga {{Collectible76}}X-Ray Vision (visión de rayos X)"}, -- Libro de secretos
	[288] = {"288", "Caja de arañas", "Invoca de 4 a 8 arañas azules"}, -- Caja de arañas
	[289] = {"289", "Vela roja", "Lanza fuego rojo#La llama persiste hasta infligir 23 de daño 5 veces o durante 10 segundos"}, -- Vela roja
	[291] = {"291", "¡Flus-flus!", "!!! Mata a enemigos y jefes caca de manera instantánea#Convierte a los enemigos en caca#Extingue los fuegos#Convierte las fosas llenas de lava en suelo"}, -- ¡Flus-flus!
	[292] = {"292", "Biblia satánica", "+1 corazón negro#Si se usa antes de la pelea contra el jefe, el objeto de la habitación será un pacto con el diablo"}, -- Biblia satánica
	[294] = {"294", "Judía de mantequilla", "Repele a los enemigos y proyectiles cercanos#Los enemigos lanzados contra obstáculos reciben 10 de daño"}, -- Judía de mantequilla
	[295] = {"295", "Dedos mágicos", "Daña toda la habitación con el doble de tu daño + 10 #Precio: 1 moneda"}, -- Dedos mágicos
	[296] = {"296", "Conversor", "!!! Convierte:#1 corazón de alma/negro en un corazón rojo"}, -- Conversor
	[297] = {"297", "Caja de Pandora", "!!! UN SOLO USO#!!! Genera cosas en función del piso en el que se active:#B1: 2 corazones de alma #B2: 2 llaves y bombas#C1: 1 objeto de jefe#C2: B1+C1#D1: 4 corazones de alma#D2: 30 monedas#W1: 2 objetos de jefe#W2: Biblia#Sheol: 1 objeto del diablo+corazón negro#Catedral: 1 objeto de ángel + corazón de alma#Chest(cofre): 1 moneda#Home: Red Key(llave roja)"},
	[300] = {"300", "Aries", "↑ +0,25 de velocidad#Tocar a los enemigos les daña#Correr lo suficiente evitará el daño por contacto"},
	[307] = {"307", "Capricornio", "↑ +1 de vida / llave / bomba / moneda#↑ +0,93 de daño#↑ +0,1 de velocidad#↑ +0,75 de rango#Más lágrimas"}, -- Capricornio
	[308] = {"308", "Aquario", "Deja un rastro de creep#El creep inflige 6 de daño cada segundo#El creep hace sinergia con el efecto de lágrima"}, -- Aquario
	[314] = {"314", "Piernas gordas", "↑ +1 de vida#-0,4 de velocidad#Cura un corazón#Rompes rocas al caminar"},
	[315] = {"315", "Atrayente extraño", "Lágrimas magnéticas#Afecta a los enemigos, recolectables y trinkets#Los objetos irán donde caiga la lágrima"},
	[320] = {"320", "El único amigo de ???", "Mosca controlable#Inflige 3,5 de daño por contacto por tick"},
	[326] = {"326", "Soplo de vida", "Mantén hasta que la barra del objeto se vacíe para ser invencible#Caerán rayos de luz sobre los enemigos que te toquen mientras eres invencible#!!! ¡No mantengas demasiado tiempo!"},
	[328] = {"328", "El negativo", "↑ +1,0 de daño#Daña a todos los enemigos de la habitación si te golpean teniendo medio corazón de vida roja o ninguno"}, -- El negativo
	[331] = {"331", "Cabeza de Dios", "Lágrimas teledirigidas#↑ +0,5 de daño#↑ +1,2 de rango#↓ -0,3 de lágrimas#↓ -30 % de velocidad de disparo#↑ +0,8 de tamaño de lágrima#Las lágrimas ganan un daño de aura"}, -- Cabeza de Dios
	[336] = {"336", "Cebolla muerta", "Lágrimas espectrales y penetrantes#↑ +0,25 de rango#↓ -0,4 de velocidad de disparo#↑ +50 % de tamaño de lágrima"}, -- Cebolla muerta
	[339] = {"339", "Imperdible", "↑ +1,5 de rango#↑ +0,16 de velocidad de disparo#+1 corazón negro#↑ +0,5 de tamaño de lágrima"},
	[342] = {"342", "Gorra azul", "↑ +1 de vida#↑ +0,7 de lágrimas#↓ -16 % de velocidad de disparo#Cura 2 corazones rojos"},
	[344] = {"344", "Libro de cerillas", "+1 corazón negro#Genera de 2 a 3 bombas#Genera el trinket Cerilla {{Trinket41}}"}, -- Libro de cerillas
	[345] = {"345", "Synthol", "↑ +1,0 de daño#↑ +1,5 de rango#↑ +0,5 de tamaño de lágrima"},
	[346] = {"346", "Snack", "↑ +1 de vida#Cura 1 corazón"}, -- Snack
	[350] = {"350", "Choque tóxico", "Al entrar en cada habitación los enemigos se envenenan#Inmunidad a las nubes tóxicas"},
	[352] = {"352", "Cañón de vidrio", "Dispara una gran lágrima espectral y penetrante ((+1 daño) X 10)#Cuando te golpean, el daño es de dos corazones#El cañón se rompe y debe volver a cargarse"}, -- Cañón de vidrio
	[355] = {"355", "Perlas de Mamá", "↑ +1,25 de rango#↑ +1 de suerte#+1 corazón de alma#↑ +0,5 de tamaño de lágrima"}, -- Perlas de Mamá
	[360] = {"360", "Íncubo", "Familiar que dispara lágrimas con las mismas estadísticas y efectos que las tuyas#Inflige 100 % de daño al jugar con Lilith#Si no, inflige el 75 % de daño"},
	[366] = {"366", "Bombas de dispersión", "+5 bombas#Hace que las bombas exploten en 4-5 bombas pequeñas"},
	[369] = {"369", "Continuum", "↑ +3,0 de rango#↑ +1,5 de tamaño de lágrima#Las lágrimas atraviesan las paredes y aparecen por la pared contraria"}, -- Continuum
	[370] = {"370", "Sr. muñequita", "↑ +0,7 de lágrimas#↑ +1,5 de rango#↑ +0,5 de tamaño de lágrima#Genera 3 corazones aleatorios al cogerlo"}, -- Mr. Dolly
	[372] = {"372", "Bebé cargado", "Posibilidad de dejar caer una batería pequeña o de congelar a los enemigos#Puede agregar una carga a tu objeto activable"}, -- Bebé cargado
	[374] = {"374", "Luz sagrada", "Posibilidad de disparar una lágrima sagrada, que hará que caigan rayos de luz desde el cielo#El rayo inflige tres veces tu daño"},
	[375] = {"375", "Sombrero de Host", "20 % de posibilidad de evitar lágrimas#Inmune a explosiones"}, -- Host hat
	[376] = {"376", "Reabastecimiento", "Genera 3 recolectables#Las tiendas reponen los objetos que compres instantáneamente#El precio de los objetos repuestos aumenta"}, -- Reabastecimiento
	[382] = {"382", "Bola amigable", "Se lanza a los enemigos para capturarlos#Cuando vuelvas a usarlo lo revivirá como aliado#Pasar por encima de la bola después de la captura recargará instantáneamente el objeto"}, -- Bola amigable
	[384] = {"384", "Pequeño Gurdy", "Rebota por la habitación#Inflige de 5 a 20 de daño por contacto dependiendo de cuánto lo hayas cargado"},
	[393] = {"393", "Beso de serpiente", "Posibilidad de lanzar lágrimas venenosas#Envenena al tocar#20 % de posibilidad de que los enemigos envenenados dejen caer un corazón negro"},
	[394] = {"394", "Marcado", "Dispara lágrimas automáticamente dirigidas por la cruz roja del suelo que puedes controlar#↑ +0,7 de lágrimas#↑ +0,3 de tamaño de lágrima#↑ +3,0 de rango#Los familiares disparan hacia la cruz"},
	[395] = {"395", "Tecnología X", "Cargas y disparas anillos láser que viajan a través de la habitación#Daño basado en la carga#100 % de daño al cargarlo al completo"}, -- Tecnología X
	[397] = {"397", "Rayo tractor", "Las lágrimas viajan en línea recta siguiendo un rayo de luz, pero se mueven hacia los lados basándose en tu movimiento #↑ +0,5 de lágrimas#↑ +1,5 de rango#↑ +0,16 de velocidad de disparo#↑ +0,5 de tamaño de lágrima"},
	[399] = {"399", "Fauces del vacío", "Tras disparar lágrimas durante 3 segundos, crea un anillo negro que daña a los enemigos que están dentro de él"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Posibilidad de disparar bombas pegajosas#Las lágrimas pegadas infligen daño al impactar"},
	[404] = {"404", "Bebé pedorro", "Bloquea los proyectiles#Si le golpean se tirará un pedo, lo que envenenará, empujará o encantará a los enemigos cercanos#Los pedos infligen 5-6 de daño"},
	[405] = {"405", "Error de juego", "{{Throwable}} {{ColorOrange}}Lanzable{{CR}} (usar dos veces el botón de disparo)#Cambia los enemigos y recolectables que toca"}, -- Error de juego
	[407] = {"407", "Pureza", "↑ Potencia una estadística dependiendo del color del aura que te rodea#Al recibir daño cambia el color del aura#{{ColorRed}}Rojo{{CR}} = +4,0 de daño#{{ColorBlue}}Azul{{CR}} = -4 de retraso de lágrima#{{ColorYellow}}Amarillo{{CR}} = +0,5 de velocidad#{{ColorOrange}}Naranja{{CR}} = +3,0 de rango, +1 de tamaño de lágrima"},
	[408] = {"408", "Athame", "Al recibir daño, aparece un anillo negro alrededor de Isaac que inflige daño por contacto"},
	[416] = {"416", "Bolsillos profundos", "Genera de 1 a 3 monedas si no ha habido recompensa en la habitación#Aumenta el máximo de monedas a 999"}, -- Bolsillos profundos
	[417] = {"417", "Súcubo", "Familiar que rebota con un aura que inflige 7,5-10 de daño cada segundo a los enemigos que estén dentro de ella#↑ Al quedarse sobre el aura, +50 % de daño"},
	[421] = {"421", "Alubia roja", "Encanta a los enemigos cercanos"},
	[426] = {"426", "Fanático obsesionado", "Sigue tus movimientos exactos con 0,66 segundos de retraso#Inflige 30 de daño por contacto cada segundo"},
	[430] = {"430", "Papá mosca", "Sigue tus movimientos con 0,66 segundos de retraso#Dispara a los enemigos cercanos e inflige tu daño"},
	[431] = {"431", "Bebé multidimensional", "Sigue tus movimientos con 0,66 segundos de retraso#Las lágrimas que lo traspasen se dividen y ganan una mejora de velocidad"},
	[437] = {"437", "D7", "Vuelve a generar enemigos y te permite conseguir recompensas al acabar la habitación"},
	[440] = {"440", "Piedra en el riñón", "De manera aleatoria dejas de disparar hasta que lanzas un grupo de lágrimas y piedra del riñón"},
	[442] = {"442", "Corona del príncipe oscuro", "!!! Al tener un corazón rojo lleno:#↑ +1,5 de rango#↑ +2,0 de lágrimas#↑ +0,2 de velocidad de disparo#(No funciona con personajes que no tienen vida roja"},
	[444] = {"444", "Lápiz", "Cada 15 lágrimas disparas un grupo de lágrimas"},
	[448] = {"448", "Trozo de vidrio", "Cuando te golpean, posibilidad de ganar ↑ +5 de rango, soltar lágrimas rojas o dejar un rastro de creep sangriento o generar un corazón rojo"}, -- Trozo de vidrio
	[451] = {"451", "Tapete de Tarot", "Genera una carta aleatoria#Duplica el uso de cualquier carta#Algunas cartas ganan un efecto adicional"}, -- Tapete de Tarot
	[453] = {"453", "Fractura compuesta", "Lágrimas de hueso#Al golpear, las lágrimas se separan en 1-3 trozos de hueso pequeños#↑ +0,38 de rango#+1,0 de tamaño de lágrima"},
	[455] = {"455", "Moneda perdida de Papá", "↑ +0,38 de rango#Deja caer un penique de la suerte"},
	[456] = {"456", "Pan mohoso", "↑ +1 de vida#Cura un corazón"},
	[464] = {"464", "Glifo de balance", "+2 corazones de alma#Los enemigos campeones y las habitaciones generan recolectables más frecuentemente#La prioridad de los recolectables varía en función de lo que más necesites"}, -- Glifo de balance
	[472] = {"472", "Rey bebé", "Le siguen otros familiares y dispara automaticamente a los enemigos#No se mueve mientras disparas#Se teletransporta a ti cuando dejas de disparar"},
	[474] = {"474", "Cañón de cristal roto", "Se convierte en Glass Canon (Cañón de cristal) al usarlo"}, -- Cañón de cristal roto
	[489] = {"489", "D infinito", "Efecto de dado aleatorio en cada uso#Pulsa la tecla de soltar objetos para cambiar entre los dados"}, -- D infinito
	[491] = {"491", "Bebé ácido", "Genera una píldora aleatoria cada 7 habitaciones#Usar una píldora envenena a los enemigos"}, -- Bebé ácido
	[493] = {"493", "Adrenalina", "Por cada medio contenedor de corazón vacío:#↑ más daño basado en ((2 * Medios corazones vacíos) ^ 1,6) * 0,1"},
	[494] = {"494", "Escalera de Jacob", "Lágrimas eléctricas que al impactar generan 1 o 2 rayos#Los rayos infligen la mitad de tu daño#Los rayos saltan entre enemigos"}, -- Escalera de Jacob
	[503] = {"503", "Pequeño cuerno", "Posibilidad de disparar una lágrima que invoca a una mano de Big Horn#La mano mata al instante a enemigos normales y daña a los jefes#Inflige 3,5 de daño por contacto"}, -- Pequeño cuerno
	[504] = {"504", "Pepita marrón", "Genera una mosca torreta que dispara a los enemigos#Cada disparo inflige 3,5 de daño"}, -- Pepita marrón
	[509] = {"509", "Ojos rojos", "Orbital que dispara una lágrima cada 1-3 segundos si hay enemigos cerca#Inflige 3,5 de daño#Inflige 30 de daño por contacto cada segundo"},
	[523] = {"523", "Caja de mudanza", "Guarda hasta seis recolectables de la habitación#Al volver  a usarlo suelta los recolectables#Te permite mover cosas entre habitaciones"}, -- Caja de mudanza
	[524] = {"524", "Tecnología cero", "Las lágrimas están conectadas con rayos de electricidad#Los rayos infligen 1/3 de tu daño"}, -- Tecnología cero
	[531] = {"531", "Hemolacria", "Las lágrimas salen en forma de arco#Al impactar, explotan en lágrimas más pequeñas#↓ Menos lágrimas#↑ +50 % de daño↑ +1 de daño adicional"},
	[541] = {"541", "Médula", "+1 corazón de hueso#Genera 3 corazones rojos"},
	[543] = {"543", "Tierra sagrada", "Genera una caca blanca cuando te golpean#(La caca blanca tiene un aura que aumenta las lágrimas, las hace teledirigidas y puede bloquear daño)"}, -- Tierra sagrada
	
	[553] = {"553", "Mucormicosis", "Posibilidad de disparar lágrimas de espora que se pegan al enemigo#Las esporas explotan tras 2,5 segundos, soltando más esporas e infligiendo daño y envenenando a enemigos cercanos"}, --  Mucormicosis
	[554] = {"554", "Muy fantasmagórico", "Asusta a los enemigos en un radio pequeño a tu alrededor"}, --   Muy fantasmagórico
	[555] = {"555", "Navaja de oro", "Convierte 5 momedas en +1,2 de daño en la habitación actual"}, --  Navaja de oro
	[556] = {"556", "Sulfuro", "Garantiza Brimstone {{Collectible118}} en la habitación actual"}, --  Sulfuro
	[557] = {"557", "Galleta de la fortuna", "Genera una fortuna: corazón de alma, carta, runa, trinket o piedra del alma"}, --  Galleta de la fortuna
	[558] = {"558", "Ojo irritado", "Posibilidad de disparar de 1 a 2 lágrimas adicionales en direcciones aleatorias"}, --  Ojo irritado
	[559] = {"559", "120 voltios", "Da descargas de energía a los enemigos cercanos#La electricidad inflige el 75 % de tu daño"}, --  120 voltios
	[560] = {"560", "¡Eso duele!", "Suelta un círculo de 10 lágrimas cuando te golpean#↑ +1,2 de lágrimas con el primer golpe#↑ +0,4 por cada golpe adicional"}, --  ¡Eso duele!
	[561] = {"561", "Leche de almendra", "↑ Velocidad de disparo x 4#↓ Daño x 0,3#Las lágrimas ganan los efectos aleatorios de los trinkets de gusano"}, --  Leche de almendra
	[562] = {"562", "Has tocado fondo", "Evita que tus estadísticas bajen durante el resto de partida"}, --  Has tocado fondo
	[563] = {"563", "Bombas guays", "+5 bombas#Las bombas explotan con un efecto de bomba aleatorio"}, --  Bombas guays
	[564] = {"564", "Pastilla de jabón", "↑ +0,5 de lágrimas#↑ +0,2 de velocidad de disparo"}, --  Pastilla de jabón
	[565] = {"565", "Cachorro sangriento", "Familiar que persigue a los enemigos#Tras matar suficientes enemigos, se vuelve más poderoso, pero también te intentará atacar a ti#Atacarle le devuelve a su estado normal"}, --  Cachorro sangriento
	[566] = {"566", "Atrapasueños", "Medio corazón de alma al cambiar de piso#Durante la transición entre pisos, la pesadilla de Isaac muestra el objeto de la habitación del tesoro y al jefe del piso"}, --  Atrapasueños
	[567] = {"567", "Cirio pascual", "↑ +0,4 de lágrimas por cada habitación completada sin recibir daño#Se acumula hasta 5 veces"}, --  Cirio pascual
	[568] = {"568", "Intervención divina", "Al tocar dos veces una tecla de disparo se crea un escudo#El escudo dura un segundo, aleja a los enemigos y refleja proyectiles y láseres enemigos"}, --  Intervención divina
	[569] = {"569", "Juramento de sangre", "Te apuñala al inicio de la planta, y te deja con medio corazón rojo#Incrementa las estadísticas de la planta:#↑ Daño + 0,15 * Corazones perdidos^2#↑ Velocidad + 0,05*Corazones perdidos"}, --  Juramento de sangre
	[570] = {"570", "Galleta de plastilina", "Garantiza lágrimas multicolores con efectos aleatorios"}, --  Galleta de plastilina
	[571] = {"571", "Calcetines de huérfano", "Evita el daño del creep y de los pinchos del suelo#↑ +0,3 de velocidad#↑ +2 corazones de alma"}, --  Calcetines de huérfano
	[572] = {"572", "El ojo de lo oculto", "Lágrimas controlables#↑ +1 de daño#↑ +7,5 de rango#↓ -0,16 de velocidad de disparo"}, --  El ojo de lo oculto
	[573] = {"573", "Corazón inmaculado", "+1 corazón rojo#↑ +20 % de daño#Vida al completo#Posibilidad de disparar lágrimas espectrales que orbitan"}, --  Corazón inmaculado
	[574] = {"574", "Ostensorio", "Gana dos auras circulares que dañan a los enemigos#El aura interna inflige más daño"}, --  Ostensorio
	[575] = {"575", "El intruso", "Un familiar arácnido dentro de tu cabeza, dispara 4 lágrimas ralentizantes#Al recibir daño, puede salir de tu cabeza"}, --  El intruso
	[576] = {"576", "Mente sucia", "Destruir cacas genera de 1 a 4 caquitas amistosas#El tipo de las caquitas dependerá de la caca de origen"}, --  Mente sucia
	[577] = {"577", "Damocles", "{{Warning}} UN SOLO USO {{Warning}}#Genera una espada sobre tu cabeza que duplica los objetos en pedestales y recompensas de mendigos#Te mata en un momento aleatorio al recibir daño de un enemigo y haber usado la espada"}, --  Damocles
	[578] = {"578", "Limonada gratis", "Crea una gran piscina de creep amarillo"}, --  Limonada gratis
	[579] = {"579", "Espada espiritual", "En lugar de lágrimas, tienes una espada#Inflige el triple de tu daño#Tiene un ataque en giro + disparo de proyectil al cargarla#Si tienes la vida al completo, dispara proyectiles con los ataques sin cargar"}, --  Espada espiritual
	[580] = {"580", "Llave roja", "Crea una nueva habitación adyacente a una pared disponible, indicada por el contorno de una puerta#Pueden ser habitaciones especiales# Si intenta crear una habitación fuera del límite máximo del mapa (13 x 13 habitaciones), Isaac irá a I AM ERROR."}, --  Llave roja
	[581] = {"581", "Mosca psíquica", "Mosca orbital#Persigue y desvía proyectiles#Inflige daño por contacto"}, --  Mosca psíquica 
	[582] = {"582", "Seta ondulada", "↑ +0,75 de velocidad de disparo#↓ -0,03 de velocidad#Distorsiona la pantalla#Los efectos se acumulan"}, --  Seta ondulada
	[583] = {"583", "Cohete en un bote", "+5 bombas#Si caminas, al colocar una bomba se disparará un misilen la misma dirección."}, --  Cohete en un bote
	[584] = {"584", "El libro de las virtudes", "Genera un fuego orbital que dispara lágrimas espectrales que puede destruirse#Puede combinarse con un segundo objeto activo para crear fuegos temáticos#Cambia la primera sala del diablo por la del ángel"}, --  El libro de las virtudes
	[585] = {"585", "Caja de alabastro", "Genera tres corazones de alma y dos objetos de la sala del ángel#Se carga con corazones de alma"}, --  Caja de alabastro
	[586] = {"586", "Escalera de mano", "Genera una escalera al inicio de cada planta, que lleva a una tienda de la sala del ángel"}, --  Escalera de mano
	[587] = {"587", "Menorah (Unused but skripted)", "<Item does not exist>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Revela el lugar de la sala del jefe {{BossRoom}}#Al derrotar al jefe activa la carta The sun (El sol) {{Card20}}#También recarga el objeto activo y da +3 de daño y +1 de suerte para el resto de la planta"}, --  Sol
	[589] = {"589", "Luna", "Agrega una habitación secreta adicional {{SecretRoom}} y una súper secreta {{SuperSecretRoom}} a cada piso#Las habitaciones secretas contienen un rayo de luz que mejora la velocidad de disparo en el piso actual y da medio corazón de alma"}, --  Luna
	[590] = {"590", "Mercurio", "↑ +0,4 de velocidad#Al entrar en una habitación las puertas siguen abiertas"}, --  Mercurio
	[591] = {"591", "Venus", "+1 corazón rojo#Vida al completo#Los enemigos cercanos se encantan"}, --  Venus
	[592] = {"592", "Terra", "↑ +1,0 de daño#Cambia las lágrimas por rocas#Infligen daño variable#Pueden destruir obstáculos#Mejora el empuje"}, --  Terra
	[593] = {"593", "Marte", "Embiste pulsando dos veces la tecla de movimiento#Se vuelve invulnerable e inflige 4x de tu daño#3 segundos de enfriamiento"}, --  Marte
	[594] = {"594", "Júpiter", "+2 corazones rojos#↓ -0,3 de velocidad#Se carga al quedarse quieto#Suelta una nube de veneno al moverse otra vez"}, --  Júpiter
	[595] = {"595", "Saturno", "Te rodea un círculo#Al entrar en una habitación, 7 lágrimas orbitan#Posibilidad de atrapar proyectiles enemigos en la órbita"}, --  Saturno
	[596] = {"596", "Urano", "Dispara lágrimas de hielo, que ralentizan y congelan a los enemigos que matas#Tocar enemigos congelados los empuja y explotan en 6 trozos de hielo"}, --  Urano
	[597] = {"597", "Neptuno", "Al no disparar, otorga una mejora de lágrimas durante 3 segundos#Disparar otra vez suelta todas las lágrimas#La mejora de lágrima se pierde al disparar"}, --  Neptuno
	[598] = {"598", "Pluto", "↑ +0,7 de lágrimas#Encoge mucho a Isaac, permitiendo que pase entre objetos#Los proyectiles puede pasarte por encima"}, --  Pluto
	[599] = {"599", "Cabeza de vudú", "Genera una habitación maldita adicional {{CursedRoom}} en cada planta"}, --  Cabeza de vudú
	[600] = {"600", "Gotas para ojos", "↑ Mejora la velocidad de disparo un 28 % en el ojo izquierdo"}, --  Gotas para ojos
	[601] = {"601", "Acto de contrición", "↑ Más lágrimas#+1 corazón eterno#Permite que aparezcan salas del ángel aunque hayas hecho pactos con el diablo antes"}, --  Acto de contrición
	[602] = {"602", "Tarjeta de socio", "Añade una trampilla en cada tienda que permite acceder a una segunda tienda con artículos únicos"}, --  Tarjeta de socio
	[603] = {"603", "Conjunto de baterías", "Genera de 2 a 4 baterías#Recarga el objeto activo al completo"}, --  Conjunto de baterías
	[604] = {"604", "Pulsera de mamá", "Permite levantar y lanzar piedras, TNT, cacas,  Hosts (enemigo calavera), y otros obstáculos#Permite moverlos entre habitaciones"}, --  Pulsera de mamá
	[605] = {"605", "Cuchara de helado", "Invoca un familiar peeper en la habitación actual, que deja un creep rojo"}, --  Cuchara de helado
	[606] = {"606", "Grieta ocular", "Posibilidad de disparar lágrimas que crean grietas donde caen#Atraen enemigos cercanos, recolectables y proyectiles"}, --  Grieta ocular
	[607] = {"607", "Bebé hervido", "Familiar que dispara grupos de lágrimas de manera caótica#Inflige 3,5 o 5,3 de daño por lágrima"}, --  Bebé hervido
	[608] = {"608", "Bebé congelado", "Familiar que dispara lágrimas congelantes#Congela a los enemigos al matarlos"}, --  Bebé congelado
	[609] = {"609", "D6 eterno", "Cambia todos los objetos de la habitación#Posibilidad de que los objetos desaparezcan"}, --  D6 eterno
	[610] = {"610", "Jaula de pájaros", "Familiar que salta sobre un enemigo cuando te golpean#Inflige 45 de daño y lanza una ola de rocas#Después persigue a los enemigos"}, --  Jaula de pájaros
	[611] = {"611", "Laringe", "Te hace gritar, dañando y alejando a los enemigos cercanos#Cuantas más cargas tenga el objeto, más potente es"}, --  Laringe
	[612] = {"612", "Alma perdida", "Familiar de alma que muere de un golpe y reaparece al inicio de la siguiente planta#Si sobrevive toda la planta, genera 3 corazones de alma, 2 corazones eternos u objetos"}, --  Alma perdida
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "Bombas de sangre", "+1 corazón rojo#Cura 5 corazones#Las bombas dejan creep rojo#Si no tienes bombas, puedes poner una a cambio de medio corazón"}, --  Bombas de sangre
	[615] = {"615", "Dumpy pequeño", "Familiar Dumpy#Al ser golpeado, empuja, aturde o envenena a los enemigos cercanos"}, --  Dumpy pequeño
	[616] = {"616", "Ojo de pájaro", "Posibilidad de disparar fuegos que bloquean proyectiles enemigos e infligen daño por contacto#El daño máximo es 4 veces tu daño"}, --  Ojo de pájaro
	[617] = {"617", "Piedra de imán", "Posibilidad de disparar lágrimas que magnetizan a los enemigos#Atrae recolectables cercanos, proyectiles y enemigos"}, --  Piedra de imán
	[618] = {"618", "Tomate podrido", "Posibilidad de disparar lágrimas que marcan a los enemigos#A los enemigos marcados los atacan otros enemigos"}, --  Tomate podrido
	[619] = {"619", "Derecho de nacimiento", "Tiene un efecto distinto en cada personaje"}, --  Derecho de nacimiento
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "Estofado rojo", "Vida al completo#↑ +21,6 de daño#El daño se pierde poco a poco a lo largo de los 3 minutos siguientes"}, --  Estofado rojo
	[622] = {"622", "Génesis", "{{Warning}} UN SOLO USO {{Warning}}#Elimina todos tus objetos y recolectables#Te teletransporta a una habitación única con recolectables, cofres y una trampilla#Por cada objeto perdido, las habitaciones del tesoro {{TreasureRoom}} muestran 3 tipos de objetos entre los que escoger"}, --  Génesis
	[623] = {"623", "Llave afilada", "+5 llaves#Lanza tus llaves para infligir daño, destrozar obstáculos y abrir puertas"}, --  Llave afilada
	[624] = {"624", "Paquete de refuerzo", "Genera 5 cartas aleatorias"}, --  Paquete de refuerzo
	[625] = {"625", "Mega seta", "Te haces gigante durante 30 segundos#Aumenta el daño y el rango#Otorga invulnerabilidad y habilidad para destrozar enemigos y obstáculos#El efecto se mantiene entre habitaciones"}, --  Mega seta
	[626] = {"626", "Primera parte del cuchillo", "Primera parte del cuchillo familiar"}, --  Primera parte del cuchillo
	[627] = {"627", "Segunda parte del cuchillo", "Al combinarla con la Primera parte del cuchillo {{Collectible627}}, crea un cuchillo familiar#Daña a los enemigos#Abre la puerta de carne"}, --  Segunda parte del cuchillo
	[628] = {"628", "Certificado de defunción", "{{Warning}} UN SOLO USO {{Warning}}#Te lleva a un piso que contiene todos los objetos del juego#Tras coger un objeto, te devuelve a la habitación en la que estabas"}, --  Certificado de defunción
	[629] = {"629", "Mosca robot", "Orbital que dispara lágrimas con escudo"}, --  Mosca robot
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "Cuchillo de carnicero", "Divide a los enemigos de la habitación en 2 versiones más pequeñas con menos vida"}, --  Cuchillo de carnicero
	[632] = {"632", "Amuleto del mal", "↑ +2 de suerte#+ Medio corazón de alma en cada planta"}, --  Amuleto del mal
	[633] = {"633", "Dogma", "Garantiza volar y efecto de un único uso similar a Holy Mantle {{Collectible313}}#↑ +2,0 de daño#↑ +0,1 de velocidad#Si tienes menos de 6 corazones, te curas con una mezcla de corazones rojos y de alma"}, --  Dogma
	[634] = {"634", "Purgatorio", "Al estar en una habitación con enemigos, genera grietas en el suelo#Caminar sobre ellas invoca fantasmas explosivos"}, --  Purgatorio
	[635] = {"635", "Puntos de sutura", "De manera pasiva genera un familiar que se mueve en la dirección de tus disparos#Al usarlo, intercambias la posición con el familiar y ganas una invencibilidad corta#Teletransportarse en cosas puede dañarlas o destrozarlas"}, --  Puntos de sutura
	[636] = {"636", "Tecla R", "{{Warning}} UN SOLO USO {{Warning}}#Te teletransporta a la primera planta de una nueva run#Los objetos y recolectables se mantienen"}, --  Tecla R
	[637] = {"637", "Gotas de impacto", "Posibilidad de disparar un puño con mucho empuje y que confunde a los enemigos"}, --  Gotas de impacto
	[638] = {"638", "Goma de borrar", "Lanza una goma de borrar que mata instantáneamente a un enemigo#Evita que ese enemigo reaparezca en el resto de la run#Inflige 15 de daño a los jefes#Solo se puede usar una vez por planta"}, --  Goma de borrar
	[639] = {"639", "Corazón asqueroso", "Otorga un corazón podrido al usarlo"}, --  Corazón asqueroso
	[640] = {"640", "Urna de almas", "Lanza llamas azules#Gana cargas por cada enemigo que mates"}, --  Urna de almas
	[641] = {"641", "Akeldama", "Crea una cadena de lágrimas detrás mientras estás en combate#Las lágrimas infligen 3,5 de daño"}, --  Akeldama
	[642] = {"642", "Piel mágica", "Consume 1 contenedor de corazón o 2 corazones de alma para generar un objeto de la pool del objeto actual#También otorga un contenedor de corazón roto que no se rellena#{{Warning}} Objeto de un solo uso para The Lost"}, --  Piel mágica
	[643] = {"643", "Revelación", "Otorga vuelo y 2 corazones de alma#Cargar el ataque disparará un láser sagrado"}, --  Revelación
	[644] = {"644", "Premio de consolación", "Mejora tu estadística más baja#Puede generar 3 monedas, 1 bomba, o 1 llave dependiendo de lo que tengas menos"}, --  Premio de consolación
	[645] = {"645", "Minitoma", "Familiar orbital#Bloquea disparos#Inflige daño por contacto#Se divide en versiones más pequeñas tras 3 golpes#Al romperse las versiones pequeñas se convierten en arañas azules#Reaparece 5 segundos después"}, --  Minitoma
	[646] = {"646", "Bombas de azufre", "+5 bombas#Las bombas disparan 4 láseres de Brimstone en forma de cruz"}, --  Bombas de azufre
	[647] = {"647", "4,5 voltios", "Los objetos activos no se cargan al limpiar una habitación#Se cargan al infligir daño a los enemigos#60 daño = 1 carga"}, --  4,5 voltios
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "Ciruela afrutada", "Mini Plum familiar#Viaja por la habitación en diagonal, disparando lágrimas"}, --  Ciruela afrutada
	[650] = {"650", "Flauta de ciruela", "Invoca un Bebé Plum en la habitación actual durante 10 segundos"}, --  Flauta de ciruela
	[651] = {"651", "Estrella de Belén", "Familiar que viaja lentamente hasta la sala del jefe#Emite un aura que garantiza +20 % + 1 de daño, y lágrimas teledirigidas"}, --  Estrella de Belén
	[652] = {"652", "Bebé cubito", "Familiar que se desliza por la habitación si lo empujas#Ralentiza e inflige daño por contacto, al matar congela a los enemigos"}, --  Bebé cubito
	[653] = {"653", "Vade Retro", "Al tenerlo, los enemigos no fantasmas dejan pequeños fantasmas rojos al morir#Al usarlo, hace que los fantasmas exploten"}, --  Vade Retro
	[654] = {"654", "Falso PHD", "Identifica todas las píldoras#+1 corazón negro#Convierte las píldoras buenas en píldoras malas#↑ Las píldoras que bajan las estadísticas dan más daño#Otras píldoras sueltan corazones negros"}, --  Falso PHD
	[655] = {"655", "Gira para ganar", "Añade un orbital giratorio que bloquea proyectiles enemigos#Inflige 10,5 de daño por contacto cada segundo#Al usarlo,↑ +0,5 de velocidad y mejora la velocidad de rotación de los orbitales"}, --  Gira para ganar
	[656] = {"656", "Damocles", "<Item not obtainable>"}, -- Damocles
	[657] = {"657", "Vasculitis", "Los enemigos sueltan lágrimas al morir que aplica tus efectos de lágrima"}, --  Vasculitis
	[658] = {"658", "Célula gigante", "Al recibir daño genera mini Isaacs#Persiguen y disparan a los enemigos cercanos"}, --  Célula gigante
	[659] = {"659", "Tropicamida", "↑ +1,5 de rango#Aumenta el tamaño de la lágrima"}, --  Tropicamida
	[660] = {"660", "Lectura de cartas", "Genera dos portales al inicio de cada planta#Los portales desaparecen al dejar la habitación#{{ColorRed}}Rojo: {{CR}}Sala del jefe #{{ColorYellow}}Amarillo: {{CR}}Sala del tesoro#{{ColorBlue}}Azul: {{CR}}Habitación secreta"}, --  Lectura de cartas
	[661] = {"661", "Quintillizos", "Al morir los enemigos, se genera en ese lugar un familiar estático que dispara#Hasta 5 familiares"}, --  Quintillizos
	[662] = {"662", "Pacifista (Cut item)", "<Item does not exist>"}, -- Pacifista (Cut item)
	[663] = {"663", "Con uñas y dientes", "Te vuelve invencible durante 1 segundo cada 6 segundos#Resplandece antes de ocurrir"}, --  Con uñas y dientes
	[664] = {"664", "Comedor compulsivo", "+1 corazón rojo#Los pedestales de objetos cambiarán periódicamente entre objetos de comida y otro objeto#Coger el objeto de comida otorga una mejor a temporal de daño de +3,6 de daño y 2 pequeñas mejoras de estadísticas"}, --  Comedor compulsivo
	[665] = {"665", "El ojo de Guppy", "Muestra el contenido de los cofres, sacos y hogueras antes de abrirlos"}, --  El ojo de Guppy
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "Hombre de paja", "Genera un personaje como de Keeper#Si muere, genera arañas azules#El objeto acaba desapareciendo"}, --  Hombre de paja
	[668] = {"668", "Nota de papá", "Inicia la sequencia de acceso a la planta de Casa"}, --  Nota de papá
	[669] = {"669", "Salchicha", "↑ +0,5 de daño#↑ +0,2 de velocidad#↑ +1,2 de velocidad de disparo#↑ +0,16 de rango#↑ +1 de suerte"}, --  Salchicha
	[670] = {"670", "¿Opciones?", "Si limpiar una habitación genera una recompensa, habrá dos para elegir#Coger una hace que la otra desaparezca"}, --  ¿Opciones?
	[671] = {"671", "Corazón de caramelo", "Otorga una mejora permanente aleatoria de estadísticas al curarse"}, --  Corazón de caramelo
	[672] = {"672", "Una libra de carne", "Los pactos del diablo ahora cuestan monedas#Los objetos de las tiendas cuestan vida#Los recolectables en las tiendas son gratis pero están rodeados con pinchos"}, --  Una libra de carne
	[673] = {"673", "Redención", "Garantiza 1 corazón de alma y +1,0 de daño al entrar a la sala del pacto con el diablo y salir sin coger un objeto"}, --  Redención
	[674] = {"674", "Grilletes espirituales", "Al morir, tu fantasma se encadena a tu cuerpo muerto y puedes seguir luchando con medio corazón de alma#Te devuelve a la vida tras 10 segundos#Se recarga cogiendo corazones de alma"}, --  Grilletes espirituales
	[675] = {"675", "Orbe roto", "Al recibir daño, revela habitaciones aleatorias de la planta#También desbloquea puertas cerradas con llave#Puede abrir la puerta de Mega Satán#Puede revelar habitaciones ultra secretas"}, --  Orbe roto
	[676] = {"676", "Corazón vacío", "Al tener un contenedor de corazón vacío al iniciar una planta, añade otro contenedor#Los corazones de hueso no cuentan"}, --  Corazón vacío
	[677] = {"677", "Proyección astral", "Cuando te golpean el tiempo se para 3 segundos#Te conviertes en un fantasma y dejas tu cuerpo#Como fantasma, vuelas, tienes lágrimas espectrales y el siguiente golpe no lo recibes"}, --  Proyección astral
	[678] = {"678", "Sección C", "Tienes un bebé atado con el cordón umbilical#Inflige el triple de tu daño#El bebé dispara y camina según los botones de disparo#Vuelve cuando dejas de disparar"}, --  Sección C
	[679] = {"679", "Mini Abadón", "Familiar que dispara un mini Maw of the Void (Fauces del vacío) {{Collectible399}}"}, --  Mini Abadón
	[680] = {"680", "Venganza de Montezuma", "Al disparar, carga un rayo de corto alcance similar a Brimstone#Se dispara por detrás"}, --  Venganza de Montezuma
	[681] = {"681", "Portal pequeño", "Inflige daño por contacto y vuela hacia delante#Consume los recolectables a su paso#Cada uno aumentará su tamaño, daño y generará una mosca azul#Cada cuatro recolectables, genera un portal a una habitación inexplorada"}, --  Portal pequeño
	[682] = {"682", "Amigo gusano", "Hace que un tentáculo salga del suelo#Puede agarrar a un enemigo e infligir daño"}, --  Amigo gusano
	[683] = {"683", "Espuelas de hueso", "Al morir, los enemigos generan huesos#Los huesos bloquean proyectiles e infligen daño por contacto"}, --  Espuelas de hueso
	[684] = {"684", "Alma hambrienta", "Posibilidad de que aparezcan fantasmas al matar enemigos#Los fantasmas persiguen enemigos e infligen daño por contacto#Tras 5 segundos, el fantasma explota infligiendo 7 de daño a los enemigos cercanos#La explosión no te afecta"}, --  Alma hambrienta
	[685] = {"685", "Tarro de abispas", "Genera fuegos aleatorios que disparan distintas lágrimas, bloquean disparos e infligen daño por contacto#El número de fuegos aumenta cuanto más uses el objeto"}, --  Tarro de abispas
	[686] = {"686", "Relicario del alma", "Otorga una mejora de estadística permanente al coger corazones de alma#Genera un corazón de alma al cogerlo"}, --  Relicario del alma
	[687] = {"687", "Buscador de amigos", "Genera un monstruo familiar aleatorio que copia tus ataques y movimientos"}, --  Buscador de amigos
	[688] = {"688", "Niño interior", "+1 vida adicional#Al morir, revive en la habitación actual con medio corazón, un tamaño muy pequeño, y +0,2 de velocidad"}, --  Niño interior
	[689] = {"689", "Corona glitcheada", "Los pedestales cambian rápidamente entre 5 objetos aleatorios"}, --  Corona glitcheada
	[690] = {"690", "Barriga gelatinosa", "Al tocarte, los enemigos rebotan#Hacer que choquen contra obstáculos inflige daño#Posibilidad de desviar proyectiles"}, --  Barriga gelatinosa
	[691] = {"691", "Orbe sagrado", "Evita que los objetos de calidad mediocre aparezcan#Aumenta la calidad de los objetos"}, --  Orbe sagrado
	[692] = {"692", "Lazo de sangre", "Genera un tipo de pinchos especiales en la sala del diablo#Hacerse daño puede dar una recompensa:#35 % 6 monedas#15 % +0,5 de daño#5 % 2 corazones negros#2 % objeto aleatorio#1 % trasnformación de Leviatán"}, --  Lazo de sangre
	[693] = {"693", "El enjambre", "Otorga 9 moscas orbitales que se convierten en moscas azules tras bloquear un proyectil#Genera una nueva mosca al limpiar cada habitación"}, --  El enjambre
	[694] = {"694", "Rompecorazones", "Otorga 3 corazones rotos#↑ +0,25 de daño por cada corazón roto#Cada golpe fatal añade otros 2 corazones rotos#Mueres al tener 12 corazones rotos"}, --  Rompecorazones
	[695] = {"695", "Ráfaga de sangre", "Al recibir daño, gana velocidad y más lágrimas en la planta actual"}, --  Ráfaga de sangre
	[696] = {"696", "Salvación", "Otorga un aura que genera rayos de luz al tocar a los enemigos#Cuanto más daño te hagan en esa planta, más grande será el aura"}, --  Salvación
	[697] = {"697", "Gemelo que desaparece", "Familiar que clona al jefe al entrar en la sala del jefe#Derrotarle genera un objeto extra#El clon es más lento y tiene un 75 % de la vida del jefe original"}, --  Gemelo que desaparece
	[698] = {"698", "Par retorcido", "Dos familiares que se quedan a tu lado#Disparan lágrimas como las tuyas, pero con el 37,5 % de tu daño"}, --  Par retorcido
	[699] = {"699", "La ira de Azazel", "Acumula ira al limpiar cada habitación#Tras 4 habitaciones, dispara un gran rayo de Brimstone al entrar a la siguiente habitación"}, --  La ira de Azazel
	[700] = {"700", "Caja de eco", "Cuando usas una carta, píldora o runa, también usas una copia de todas las cartas, píldoras y runas que hayas usado tras coger el objeto"}, --  Caja de eco
	[701] = {"701", "La tumba de Isaac", "Genera un cofre viejo al inicio de cada planta#Puede contener corazones de alma, trinkets u objetos de la sala del ángel o relacionados con Mamá y Papá"}, --  La tumba de Isaac
	[702] = {"702", "Espíritu de venganza", "Tras recibir daño, genera un fuego orbital que dura en la planta actual#Máximo de 6#Disparan lágrimas pero no bloquean proyectiles"}, --  Espíritu de venganza
	[703] = {"703", "Esau Junior", "Cambia entre el personaje actual y Esau Junior, quien tiene 3 corazones negros, +2 de daño y vuela#Los personajes tienen objetos y vida independientes#{{Warning}} Morir como cualquier personaje acaba la partida"}, --  Esau Junior
	[704] = {"704", "¡Berserker!", "Modo berserker durante 5 segundos:#↑ +0,4 de velocidad#↑ Más lágrimas#↑ +3,0 de daño#Restringe el ataque a un arma a melé"}, --  ¡Berserker!
	[705] = {"705", "Artes oscuras", "Al usarlo ganas ↑ +1,0 de velocidad y la habilidad de caminar a través de los enemigos y proyectiles durante 1 segundo#Aumenta brevemente el daño por cada enemigo y proyectil tocado#Infliges el triple de tu daño al tocar"}, --  Artes oscuras
	[706] = {"706", "Abismo", "Destruye todos los objetos de la habitación y genera una mosca familiar por cada uno#Los efectos de las moscas dependen de los objetos"}, --  Abismo
	[707] = {"707", "Cena", "+1 corazón rojo#Cura un corazón"}, --  Cena
	[708] = {"708", "Grapadora", "↑ +1,0 de daño#Ahora solo disparas con un ojo"}, --  Grapadora
	[709] = {"709", "¡Suplex!", "Te permite correr, levantar a enemigos o jefes y estamparlos contra el suelo#Se puede controlar#Estampar inflige 50 de daño y genera una ola de rocas"}, --  ¡Suplex!
	[710] = {"710", "Bolsa de trabajo", "Recoge y mantiene hasta 8 recolectables#Mantener el botón del activable convierte los recolectables en un objeto#La calidad del objeto dependerá de la de los recolectables"}, --  Bolsa de trabajo
	[711] = {"711", "Voltear", "Cambia entre los personajes Lázaro Contaminado y Lázaro Contaminado Muerto"}, --  Voltear
	[712] = {"712", "Lemegeton", "Invoca el fantasma de un objeto pasivo aleatorio#El efecto del objeto se aplica al jugador#Los objetos dependen de la pool de objetos de la habitación actual"}, --  Lemegeton
	[713] = {"713", "Sumptorio", "Mantener el botón de disparar convierte, cada 2 segundos, medio corazón en familiares que pueden ser destrozados#Activar el objeto convierte de nuevo a los familiares en corazones#El tipo de corazón cambia el comportamiento del familiar"}, --  Sumptorio
	[714] = {"714", "Recuperar", "Devuelve el cuerpo de Forgotten desde culquier distancia"}, --  Recuperar
	[715] = {"715", "Bote", "Guarda una caca bomba dentro para usarla más tarde"}, --  Bote
	[716] = {"716", "El saco de Keeper", "Aumenta el rango, la velocidad, o el daño al comprar cosas de la tienda#Genera 3 monedas y llave al recogerlo"}, --  El saco de Keeper
	[717] = {"717", "Pariente de Keeper", "Las rocas y jarrones generan 2 arañas azules al romperlos"}, --  Pariente de Keeper
	[718] = {"718", "Keepers Robe (Cut item)", "<Item does not exist>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "La caja de Keeper", "Genera un objeto o recolectable aleatorio de tienda"}, --  La caja de Keeper
	[720] = {"720", "Tarro de todo", "Genera algunos recolectables basados en las cargas que tenga#Si está cargado al completo, tiene un efecto aleatorio más único#Recompensas según cargas: 1:caca 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Tarro de todo
	[721] = {"721", "ENTRENADOR TM", "Hace que los objetos futuros estén 'glitcheados'#Tienen efectos completamente aleatorios them completely random effects"}, --  ENTRENADOR TM
	[722] = {"722", "Anima Sola", "Encadena al enemigo más cercano durante 5 segundos, evitando que actúen"}, --  Anima Sola
	[723] = {"723", "Dado de 20 caras", "Cambia todos los objetos de la habitación por otro restándole 1 al identificador interno para obtener el nuevo objeto generado."}, --  Dado cuenta vidas
	[724] = {"724", "Hipercoagulación", "Al ser golpeado por un enemigo, genera medio o un corazón rojo#Los corazones que han aparecido desaparecen tras 1,5 segundos"}, --  Hipercoagulación
	[725] = {"725", "Síndrome del intestino irritable", "Al dañar a un enemigo, posibilidad de:#Lanzar una caca#Crear gases#Tira pedos#Generar 5 bombas troll"}, --  Síndrome del intestino irritable
	[726] = {"726", "Hemoptisis", "Al pulsar dos veces el botón de disparar estornudas sangre#Inflige el 150 % de tu daño a los enemigos delante de ti#Enfriamiento de un segundo"}, --  Hemoptisis
	[727] = {"727", "Bombas fantasma", "+5 bombas#Las bombas generan fantasmas que infligen daño y explotan tras 10 segundos"}, --  Bombas fantasma
	[728] = {"728", "Gello", "Genera un familiar demoníaco atado a ti#Copia tus lágrimas, estadísticas y efectos"}, --  Gello
	[729] = {"729", "Ataque de decapitación", "Lanza tu cabeza y te permite disparar lágrimas desde donde caiga#Al reactivar el objeto o pisar la cabeza la recuperas"}, --  Ataque de decapitación
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["spa"].collectibles)

EID.descriptions["spa"].birthright ={
{"Isaac", "", "Los objetos cambian entre dos objetos"},
{"Magdalene", "", "<No effect yet>"},
{"Cain", "", "<No effect yet>"},
{"Judas", "", "<No effect yet>"},
{"???", "", "Los corazones de alma recibidos de aumentos de vida se duplican"},
{"Eve", "", "Whore of Babylon se activa sin depender de la vida#Dead Bird se activa sin recibir daño"},
{"Samson", "", "Bloody Lust puede ganar 4 mejoras de daño hasta un máximo de +14,0"},
{"Azazel", "", "El Brimstone de Azazel es más ancho, como el de Mega Blast#No varía el daño"},
{"Lazarus", "", "Al morir, revive como Lazarus Risen (Lázaro resucitado)#Lazarus Risen gana una mejora de daño de +21,6 que se pierde poco a poco"},
{"Eden", "", "Genera 3 objetos aleatorios de pools de objetos aleatorias#Solo se puede coger uno"},
{"The Lost", "", "Evita que aparezcan los objetos inútiles para The Lost#Ejemplos: los que dan vida, vuelo, lágrimas espectrales o los que se activan al recibir daño"},
{"Lazarus Risen", "", "Otorga una mejora de daño de +21,6 que se pierde poco a poco"},
{"Black Judas", "", "<No effect yet>"},
{"Lilith", "", "<No effect yet>"},
{"Keeper", "", "<No effect yet>"},
{"Apollyon", "", "<No effect yet>"},
{"The Forgotten", "", "The Soul (El alma) no está atado y se mueve libremente"},
{"The Forgotten Soul", "", "The Soul (El alma) no está atado y se mueve libremente"},
{"Bethany", "", "Activar un objeto usando cargas de alma a veces es gratis"},
{"Jacob", "", "El personaje que recoge un objeto obtiene copias de tres objetos pasivos del otro personaje"},
{"Esau", "", "El personaje que recoge un objeto obtiene copias de tres objetos pasivos del otro personaje"},
{"Tainted Isaac", "Isaac contaminado", "Añade 4 espacios adicionales para objetos pasivos"},
{"Tainted Magdalene", "Magdalena contaminada", "Añade 1 al límite de corazones"},
{"Tainted Cain", "Cain contaminado", "La cantidad de recolectables que se generan al coger un objeto se duplica"},
{"Tainted Judas", "Judas contaminado", "<No effect yet>"},
{"Tainted ???", "??? contaminado", "Aumenta el número máximo de cacas que puedes llevar a 29"},
{"Tainted Eve", "Eve contaminada", "<No effect yet>"},
{"Tainted Samson", "Sansón contaminado", "El contador del modo berserker gana 3 segundos en lugar de 1 cuando Tainted Samson (Sansón contaminado) mata a un enemigo"},
{"Tainted Azazel", "Azazel contaminado", "El tamaño de Hemoptysis {{Collectible726}}, el ataque de Tainted Azazel (Azazel contaminado) es el doble de grande"},
{"Tainted Lazarus", "Lázaro contaminado", "<No effect yet>"},
{"Tainted Eden", "Eden contaminado", "Los objetos pasivos conseguidos antes de Birthright no cambian al recibir daño"},
{"Tainted Lost", "Lost contaminado", "Otorga una vida extra que revive a Tainted Lost (Lost contaminado) en la misma habitación y causa 200 de daño a los enemigos cercanos#Puede golpear al mismo enemigo varias veces"},
{"Tainted Lilith", "Lilith contaminada", ""},
{"Tainted Keeper", "Keeper contaminado", "Atrae las monedas que sueltan los enemigos cercanos al morir#No afecta al resto de monedas"},
{"Tainted Apollyon", "Apollyon contaminado", "<No effect yet>"},
{"Tainted Forgotten", "Forgotten contaminado", "Tainted Soul (Alma contaminada) gana la habilidad Recall (Recuperar) {{Collectible714}}, recuperar automáticamente a Tainted Forgotten (Forgotten contaminado) desde la distancia"},
{"Tainted Bethany", "Bethany contaminada", "<No effect yet>"},
{"Tainted Jacob", "Jacob contaminado", "<No effect yet>"},
{"Dead Tainted Lazarus", "Lázaro contaminado muerto", "<No effect yet>"},
{"Tainted Jacob 2", "Jacob contaminado 1", "<No effect yet>"},
{"Tainted Forgotten Soul", "El alma de Forgotten contaminada", "Tainted Soul (El alma contaminada) gana la habilidad Recall (Recuperar) {{Collectible714}}, recuperar automáticamente a Tainted Forgotten (Forgotten contaminado) desde la distancia"},
}

EID.descriptions["spa"].spindownError = "El objeto desaparece"

---------- Trinkets ----------
local repTrinkets={
	[1] = {"1", "Moneda tragada", "Generas monedas cuando te golpean"},
	[10] = {"10", "Gusano ondulante", "Las lágrimas se mueven en ondas#↑ +0,4 de lágrimas#Otorga lágrimas espectrales"}, -- Gusano ondulante
	[11] = {"11", "Gusano anillo", "Las lágrimas se mueven en espirales a gran velocidad#Otorga lágrimas espectrales"}, -- Gusano anillo
	[26] = {"26", "Gusano de gancho", "Las lágrimas se mueven en ángulos#↑ +1.5 rango#Otorga lágrimas espectrales"}, -- Gusano de gancho
	[33] = {"33", "Cordón umbilical", "Al tener medio corazón, aparece un pequeño Steven#Gran posibilidad de que aparezca un familiar Géminis al recibir daño"}, -- Cordón umbilical
	[49] = {"49", "Moneda sangrienta", "25 % de posibilidad de dejar caer medio corazón al coger monedas"}, -- Moneda sangrienta
	[50] = {"50", "Moneda quemada", "25 % de posibilidad de dejar una bomba al coger monedas"}, -- Moneda quemada
	[51] = {"51", "Moneda plana", "25 % de posibilidad de dejar una llave al coger monedas"}, -- Moneda plana
	[69] = {"69", "Polaroid descolorida", "Te camufla de manera aleatoria#Desorienta a los enemigos#Puede usarse para abrir la puerta hacia la planta \"Home\" (Casa)"}, -- Polaroid descolorida
	[92] = {"92", "Corona rota", "↑ Las estadísticas basadas en tus objetos son un 20 % más efectivas"}, -- Corona rota
	[111] = {"111", "Corona sangrienta", "Las salas del tesoro {{TreasureRoom}} aparecen en el Womb (Útero) y Corpse (Cadáver)"}, -- Corona sangrienta
	[119] = {"119", "Célula madre", "Reduce tus corazones rojos al 50 % de tu máximo al entrar en la siguiente planta#Si tu vida está por encima, cura medio corazón rojo"}, -- Célula madre
	[128] = {"128", "Dedo de hueso", "5 % de posibilidad de ganar un corazón de hueso al recibir daño"}, -- Dedo de hueso
	
	[129] = {"129", "Rompemandíbulas", "Probabilidad de disparar lágrimas diente"}, --  Rompemandíbulas
	[130] = {"130", "Boli mordido", "Probabilidad de disparar lágrimas ralentizantes"}, --  Boli mordido
	[131] = {"131", "Moneda bendita", "Probabilidad de dejar caer medio corazón de alma al coger monedas"}, --  Moneda bendita
	[132] = {"132", "Jeringuilla rota", "Probabilidad de ganar un efecto de jeringuilla aleatoria en la habitación actual"}, --  Jeringuilla rota
	[133] = {"133", "Fusible corto", "Las bombas colocadas explotan más rápido"}, --  Fusible corto
	[134] = {"134", "Judía gigante", "Aumenta el tamañó de los pedos"}, --  Judía gigante
	[135] = {"135", "Mechero", "Probabilidad de quemar a los enemigos el entrar en la habitación"}, --  Mechero
	[136] = {"136", "Candado roto", "Las puertas, candados y cofres dorados pueden abrirse con explosiones#También puede abrir la puerta de Casa"}, --  Candado roto
	[137] = {"137", "Miosotis", "Al bajar a una nueva planta, se generan hasta cuatro recolectables no obtenidos de la planta anterior"}, --  Miosotis
	[138] = {"138", "'M", "Usar un objeto activo lo cambia"}, --  'M
	[139] = {"139", "Amuleto de lágrima", "Los efectos de lágrima basados en la suerte ocurren más a menudo"}, --  Amuleto de lágrima
	[140] = {"140", "Manzana de Sodoma", "Coger corazones rojos puede convertirlos en arañas azules#Funciona incluso si tienes vida al completo#Puede tragarse corazones que necesitas para curarte"}, --  Manzana de Sodoma
	[141] = {"141", "Nana olvidada", "Aumenta la velocidad de disparo de los familiares"}, --  Nana olvidada
	[142] = {"142", "La fe de Beth", "Al inicio de cada planta, genera 4 fuegos del Book of Virtues (Libro de las virtudes) {{Collectible584}}"}, --  La fe de Beth
	[143] = {"143", "Condensador antiguo", "Evita que el objeto activo se cargue#Posibilidad de generar una paqueña batería al limpiar la habitación"}, --  Condensador antiguo
	[144] = {"144", "Gusano del cerebro", "Las lágrimas giran en ángulos de 90 grados para golpear a los enemigos si no iban a acertar"}, --  Gusano del cerebro
	[145] = {"145", "Perfección", "↑ +10 de suerte#Se destruye si recibes daño"}, --  Perfeccción
	[146] = {"146", "Corona del diablo", "Las habitaciones doradas {{TreasureRoom}} contienen ahora pactos del diablo"}, --  Corona del diablo
	[147] = {"147", "Moneda cargada", "Coger monedas puede cargar el objeto activable"}, --  Moneda cargada
	[148] = {"148", "Collar de la amistad", "Hace que los familiares giren a tu alrededor"}, --  Collar de la amistad
	[149] = {"149", "Botón del pánico", "Puede activar tu objeto activable al recibir daño"}, --  Botón del pánico
	[150] = {"150", "Llave azul", "Entrar en una habitación que requiere una llave te lleva a una habitación similar a la de Hush#Actúa como un medio entre dos habitaciones"}, --  Llave azul
	[151] = {"151", "Lima plana", "Hace que los pinchos se retraigan, por lo que no hacen daño#También afecta a las puertas de las habitaciones malditas {{CursedRoom}}, y cualquier obstáculo con pinchos"}, --  Lima plana
	[152] = {"152", "Lente de telescopio", "Posibilita que aparezca un segundo Planetario#Los planetarios ahora podrán aparecer en el Womb (Útero)"}, --  Lente de telescopio
	[153] = {"153", "Pelo de Mamá", "En cada habitación otorga un efecto aleatorio de un objeto de Mamá"}, --  Pelo de Mamá
	[154] = {"154", "Bolsa de dados", "Al entrar en una habitación, otorga un consumible temporal de dado#El dado desaparece al cambiar de habitación#Ahora puedes llevar dos consumibles"}, --  Bolsa de dados
	[155] = {"155", "Corona sagrada", "Genera una habitación de dorada {{TreasureRoom}} en la Catedral"}, --  Corona sagrada
	[156] = {"156", "Beso de Mamá", "Otorga un contenedor de vida roja#También funciona con Keeper"}, --  Beso de Mamá
	[157] = {"157", "Carta rasgada", "Cada 15 disparos, suela una lágrima de Ipecac {{Collectible149}} + una lágrima de My Reflection {{Collectible5}} con mucho rango"}, --  Carta rasgada
	[158] = {"158", "Bolsillo roto", "Cuando te golpean, se te caen todos los recolectables#(Excepción: Corazones, cartas, píldoras, runas)"}, --  Bolsillo roto
	[159] = {"159", "Llave de oro", "Reemplaza todos los cofres sin abrir por cofres cerrados#Excepción: mega cofres"}, --  Llave de oro
	[160] = {"160", "Saco de la suerte", "Genera un saco al bajar de planta"}, --  Saco de la suerte
	[161] = {"161", "Corona malvada", "Genera una habitación dorada {{TreasureRoom}} en Sheol"}, --  Corona malvada
	[162] = {"162", "Cuerno roto de Azazel", "Posibilidad de convertirse en Azazel al entrar a una nueva habitación"}, --  Cuerno roto de Azazel
	[163] = {"163", "Dingle Berry", "Genera dos caquitas amistosas al limpiar una habitación"}, --  Dingle Berry
	[164] = {"164", "Anilla de protección", "Genera dos bombas adicionales por cada bomba que pongas"}, --  Anilla de protección
	[165] = {"165", "Ah, no", "En Womb (Útero) y más allá, cambia todos los recolectables que se generan por un recolectable aleatorio#Las bombas y los corazones son más comunes"}, --  Ah, no
	[166] = {"166", "Arcilla de modelar", "Otorga el efecto de un Objeto pasivo aleatorio en cada habitación"}, --  Arcilla de modelar
	[167] = {"167", "Hueso pulido", "Posibilidad de generar un hueso amistoso al limpiar la habitación"}, --  Hueso pulido
	[168] = {"168", "Corazón vacío", "+1 corazón de hueso al bajar a un nuevo piso"}, --  Corazón vacío
	[169] = {"169", "Dibujo infantil", "Al tenerlo, cuenta como un objeto para la transformación en Guppy"}, --  Dibujo infantil
	[170] = {"170", "Llave de cristal", "Otorga la posibilidad de crear automáticamente salas de Red Key {{Collectible580}} al limpiar una habitación"}, --  Llave de cristal
	[171] = {"171", "La ganga de Keeper", "Los pactos del diablo usan monedas en lugar de corazones"}, --  La ganga de Keeper
	[172] = {"172", "Moneda maldita", "Teletransporta a una habitación aleatoria al recoger una moneda#Puede teletransportarte a habitaciones secretas"}, --  Moneda maldita
	[173] = {"173", "Tu alma", "{{Warning}} UN SOLO USO {{Warning}}#Puede usarse para pagar pactos del diablo sin perder corazones"}, --  Tu alma
	[174] = {"174", "Imán de número", "+10 % de posibilidad de pacto del diablo"}, --  Imán de número
	[175] = {"175", "Llave extraña", "Desbloquea el pasaje a Blue Womb y la lucha de Hush, independientemente del tiempo#Usar la Pandora's Box {{Collectible297}} genera 6 objetas de pools aleatorias"}, --  Llave extraña
	[176] = {"176", "Mini coágulo", "Genera un familiar coágulo que copia tu movimiento, la dirección del disparo y los efectos de lágrima"}, --  Mini coágulo
	[177] = {"177", "Tatuaje temporal", "Genera un cofre después de limpiar una sala de desafíos, o un objeto después de limpiar una sala de desafíos de jefe"}, --  Tatuaje temporal
	[178] = {"178", "M80 mojado", "Isaac explota al recibir daño"}, --  M80 mojado
	[179] = {"179", "Mando a distancia", "En lugar de ir detrás, los familiares se mueven como tú"}, --  Mando a distancia
	[180] = {"180", "Alma encontrada", "Familiar que sigue los movimientos exactos y dispara lágrimas espectrales#Tiene el mismo daño y efectos que tú"}, --  Alma encontrada
	[181] = {"181", "Pack de expansión", "El uso de un elemento activo desencadena otro efecto de elemento activo aleatorio"}, --  Pack de expansión
	[182] = {"182", "Esencia de Beth", "Una vez por piso,  recibir daño generará un fuego fatuo {{Collectible584}} y otorgará unos segundos de invulnerabilidad#Genera 5 fuegos al entrar en una habitación de ángel#Crea un fuego al dar dinero a los vagabundos"}, --  Esencia de Beth
	[183] = {"183", "Los gemelos", "Cada habitación:#Sin familiares: Posibilidad de hacer aparecer un Brother Bobby {{Collectible8}} o una Sister Maggy {{Collectible67}}# Con familiares: posibilidad de añadir o duplicar un familiar"}, --  Los gemelos
	[184] = {"184", "Papeles de adopción", "Las tiendas pueden vender familiares#Los familiares siempre tienen descuento"}, --  Papeles de adopción
	[185] = {"185", "Pata de grillo", "Agrega la posibilidad de generar una langosta aleatoria al matar a un enemigo"}, --  Pata de grillo
	[186] = {"186", "El mejor amigo de Apollyon", "{{Throwable}} {{ColorOrange}}Throwable{{CR}} (usar dos veces el botón de disparo)#Garantiza 2 moscas familiares con las que disparar"}, --  El mejor amigo de Apollyon
	[187] = {"187", "Gafas rotas", "33 % de probabilidad de añadir un objeto adicional a ciegas en la habitación del tesoro#Revela el objeto a ciegas in la ruta alternativa"}, --  Gafas rotas
	[188] = {"188", "Cubo de hielo", "Posibilidad de petrificar a un enemigo al entrar en la habitación#Matar al enemigo petrificado lo congela"}, --  Cubo de hielo
	[189] = {"189", "Sello de Baphomet", "Activa un escudo de un segundo al matar a un enemigo"}, --  Sello de Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["spa"].trinkets)

EID.descriptions["spa"].goldenTrinket = "DORADO: ¡Efecto duplicado!"
---------- Cards ----------
local repCards={
	[27] = {"27", "", "Convierte todos los recolectables, cofres y enemigos no jefes en bombas"},
	[28] = {"28", "", "Convierte todos los recolectables, cofres y enemigos no jefes en monedas"},
	[29] = {"29", "", "Convierte todos los recolectables, cofres y enemigos no jefes en llaves"},
	[30] = {"30", "", "Convierte todos los recolectables, cofres y enemigos no jefes en corazones"},
	[39] = {"39", "", "Invencibilidad durante 20 segundos"},
	[51] = {"51", "Carta sagrada", "Otorga el efecto de Manto Sagrado (Holy Mantle) la planta actual#(El siguiente daño recibido es 0)"},
	
	[55] = {"55", "", "Activa un efecto de runa aleatoria#El efecto es débil"},
	[56] = {"56", "", "Deja caer los corazones y recolectables al suelo#Te deja con medio corazón#Los recolectables pueden generarse como los recolectables {{Collectible74}} {{Collectible19}} si hay una cantidad suficiente"},
	[57] = {"57", "", "Otorga un aura protectora contra los proyectiles grandes y los enemigos#Dura un minuto"},
	[58] = {"58", "", "El pie de mamá pisa repetidamente durante 1 minuto"},
	[59] = {"59", "", "Efecto temporal:#↑ +2 corazones rojos#↑ +1,35 de lágrimas"},
	[60] = {"60", "", "Te teletransporta a una sala del jefe adicional con más recompensa"},
	[61] = {"61", "", "Genera 2 corazones de hueso"},
	[62] = {"62", "", "Genera un objeto de la pool de la sala actual#Convierte 1 corazón rojo o 2 corazones de alma en un corazón roto"},
	[63] = {"63", "", "Te convierte en una estatua invencible durante 10 segundos#Gran velocidad de disparo mientras dure"},
	[64] = {"64", "", "Genera de 2 a 4 corazones dorados"},
	[65] = {"65", "", "Convierte los recolectables y objetos de la habitación en monedas#El valor de las monedas es el mismo que su precio en la tienda"},
	[66] = {"66", "", "Efecto aleatorio de la sala de dados"},
	[67] = {"67", "", "Los enemigos de la habitación se vuelven más débiles, lentos y reciben el doble de daño"},
	[68] = {"68", "", "Te conviertes en Keeper durante 30 segundos#Otorga disparo triple y menos velocidad#Los enemigos asesinados dejan caer monedas"},
	[69] = {"69", "", "Otorga el efecto de Book of the Dead {{Collectible545}} (Libro de los muertos)#(Genera entidades de hueso por cada enemigo eliminado en la habitación)"},
	[70] = {"70", "", "Aplica 5 efectos de píldora aleatorios"},
	[71] = {"71", "", "Otorga el efecto de Bible {{Collectible33}} (la Biblia)#Genera un  familiar Serafín {{Collectible390}}# Dura 30 segundos"},
	[72] = {"72", "", "Genera 6 grupos de rocas y obstáculos aleatorios"},
	[73] = {"73", "", "Elimina el objeto pasivo más antiguo#Genera 2 objetos aleatorios de la pool de la sala actual"},
	[74] = {"74", "", "Te teletransporta a la sala ultrasecreta#El camino de vuelta será de habitaciones rojas"},
	[75] = {"75", "", "Ganas el objeto Spirit of the Night {{Collectible159}} (Espíritu de la noche)#↑ +1,5 de daño# Dura en la planta actual#Convierte los corazones rojos en corazones de hueso, pero los devuelve al acabar el efecto#Aplica Curse of Darkness (Maldición de oscuridad)"},
	[76] = {"76", "", "Genera una máquina de restock"},
	[77] = {"77", "", "Genera una trampilla"},
	[78] = {"78", "", "Un solo uso de Red Key {{Collectible580}} (Llave roja)"},
	[79] = {"79", "", "Genera de 1 a 12 corazones rojos"},
	[80] = {"80", "", "Copia el efecto del último recolectable activado: píldora, carta, runa, piedra de alma u objeto activo"},
	[81] = {"81", "", "Cambia los objetos de la habitación#Lo alterna con la forma original tras un segundo#El efecto se repite"},
	[82] = {"82", "", "Te rodea con un aura roja burbujeante en la habitación actual#Los enemigos asesinados dejan caer medios corazones rojos que desaparecen en 2 segundos"},
	[83] = {"83", "", "Crea habitaciones rojas con Red Key {{Collectible580}} (Llave roja) para cada posible salida"},
	[84] = {"84", "", "Te convierte en un fantasma que puede atravesar enemigos y paralizarlos#Tras unos segundos, les ataca a todos, ganando una mejora de daño por cada objetivo"},
	[85] = {"85", "", "Suelta 8 pedos venenosos con creep marrón#Después deja un rastro de 7 Butt Bombs (Bombas culo)#Quedarse en el creep otorga ↑ +1,35 de lágrimas y ↑ +1 de daño"},
	[86] = {"86", "", "14 familiares Dead Bird (Pájaro muerto) atacan a los enemigos# Dura en la habitación actual"},
	[87] = {"87", "", "Te convierte en Sansón berserker con ataque a melé durante 10 segundos#↑ +0,4 de velocidad#↑ Más lágrimas#↑ +3 de daño"},
	[88] = {"88", "", "Activa Mega Blast {{Collectible441}} durante 7,5 segundos"},
	[89] = {"89", "", "Mueres y revives inmediatamente con medio corazón y un rato de invencibilidad#El objeto se usa automáticamente al recibir un daño fatal (como una vida adicional)"},
	[90] = {"90", "", "Activa el efecto de D6 {{Collectible105}} y el de D20 {{Collectible166}}#El objeto cambiado usa pools de objetos aleatorias"},
	[91] = {"91", "", "Te convierte en The Lost en la habitación actual"},
	[92] = {"92", "", "Añade un familiar aleatorio"},
	[93] = {"93", "", "Genera de 3 a 25 monedas aleatorias"},
	[94] = {"94", "", "Genera 15 langostas aleatorias"},
	[95] = {"95", "", "Aparece The Forgotten como un segundo personaje en la habitación actual"},
	[96] = {"96", "", "Genera 6 fuegos fatuos de Book of Virtues {{Collectible584}} (Libro de las virtudes) con propiedades aleatorias"},
	[97] = {"97", "", "Aparece Esaú como un segundo personaje en la habitación actual"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["spa"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "", "Intercambia el número de bombas por el de llaves#Las llaves y bombas de oro también se intercambian"},
	[12] = {"11", "", "↓ -0,6 de rango"},
	[13] = {"12", "", "↑ +0,75 de rango"},
	[42] = {"41", "", "Te ralentiza a ti y a los enemigos de la habitación"},
	[43] = {"42", "", "Aumenta tu velocidad y la de todos los enemigos de la habitación#Se vuelve a activas tras 30 y 60 segundos"},
	
	[48] = {"47", "", "↓ -0,15 de velocidad de disparo"},
	[49] = {"48", "", "↑ +0,15 de velocidad de disparo"},
	[50] = {"49", "", "↑ Aumenta una estadística aleatoria#↓ Disminuye otra estadística aleatoria#Si tienes PHD no bajará ninguna"},
	[9999] = {"", "Píldora dorada", "Efecto de píldora de caballo aleatorio#Se destruye tras unos cuantos usos"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["spa"].pills)

EID.descriptions["spa"].horsepills={
	{"0", "", "Envenena toda la habitación"},
	{"1", "", "Te inflige 2 corazones de daño"},
	{"2", "", "+4 corazones de alma"},
	{"3", "", "Intercambia el número de bombas y de llaves#Aumenta el número de llaves y de bombas en un 50 %#Las bombas y llaves doradas también se intercambian"},
	{"4", "", "Genera enormes bombas troll teledirigidas en tu posición"},
	{"5", "", "Vida al completo#+3 corazones de alma"},
	{"6", "", "↓ -2 corazones"},
	{"7", "", "↑ +2 contenedores de vida vacíos"},
	{"8", "", "Sin efecto"},
	{"9", "", "Sin efecto"}, -- Puberty
	{"10", "", "Añade 1 mosca orbital Big Fan {{Collectible279}} (Gran fan)#No hay límite máximo"},
	{"11", "", "↓ -1,2 de rango"},
	{"12", "", "↑ +0,9 de rango"},
	{"13", "", "↓ -0,24 de velocidad"},
	{"14", "", "↑ +0,3 de velocidad"},
	{"15", "", "↓ -0,56 de lágrimas"},
	{"16", "", "↑ +0,70 de lágrimas"},
	{"17", "", "↓ -2 de suerte"},
	{"18", "", "↑ +2 de suerte"},
	{"19", "", "Te teletransporta a una habitación aleatoria"}, -- TODO
	{"20", "", "Recarga el objeto activo#Deja caer baterías"}, -- TODO
	{"21", "", "Drena todos los contenedores de corazón menos uno#Genera corazones rojos"}, -- TODO
	{"22", "", "No te puedes mover durante 4 segundos"},
	{"23", "", "Abre las entradas de las habitaciones secretas de la planta actual#Muestra el mapa completo"},
	{"24", "", "Convierte a cada enemigo de la habitación actual en amigo"},
	{"25", "", "Oculta el mapa de esta planta"}, --TODO
	{"26", "", "Genera un charco que cubre el suelo y daña a los enemigos"},
	{"27", "", "Disparas en diagonal durante 60 segundos"},
	{"28", "", "Te hacen la mitad de daño en la habitación actual"},  --TODO
	{"29", "", "Te hace un corazón de daño en la habitación actual"}, --TODO
	{"30", "", "Genera una caca mientras caminas durante 4 segundos"}, --TODO
	{"31", "", "Efecto de Curse of the maze (Maldición del laberinto) en la planta actual"}, --TODO
	{"32", "", "Te haces mucho más grande#No afecta a la hitbox"},
	{"33", "", "Te haces mucho más pequeño#Tu hitbox se hace más pequeña"},
	{"34", "", "Genera 2 arañas azules por cada caca de la habitación"},
	{"35", "", "Genera 2 arañas azules por cada enemigo de la habitación#Genera de 2 a 6 arañas azules si no hay enemigos en la habitación"},
	{"36", "", "Efecto de invencibilidad breve#↑ #7 de daño#↑ +3 de rango#Dura en la habitación actual"},
	{"37", "", "Pixela la pantalla durante 30 segundos"},
	{"38", "", "Invoca 6 moscas azules"},
	{"39", "", "Genera una piscina de creep resbaladizo persistente"},
	{"40", "", "Genera una piscina de creep ralentizante persistente"},
	{"41", "", "Ralentiza a todos los enemigos de la habitación"}, --TODO
	{"42", "", "Acelera a todos los enemigos de la habitación"}, --TODO
	{"43", "", "Consume el trinket actual y ganas su efecto de manera permanente"}, --TODO
	{"44", "", "Dispara un grupo de lágrimas de Ipecac"},
	{"45", "", "Invencibilidad corta#Asusta a todos los enemigos#Comerse dos enemigos repone medio corazón"},
	{"46", "", "Genera la última píldora usada como una píldora para caballos"},
	{"47", "", "↓ -0,3 de velocidad de disparo"},
	{"48", "", "↑ +0,3 de velocidad de disparo"},
	{"49", "", "↑ Aumenta una estadística aleatoria dos veces#↓ Disminuye otra estadística aleatoria dos veces#Si tienes PHD no disminuye nada"},
	[9999] = {"", "Píldora dorada", "Efecto de píldora de caballo aleatorio#Se destruye tras unos cuantos usos"}, -- Píldora dorada
}


EID.descriptions["spa"].CraftingBagContent = "bolsa:"
EID.descriptions["spa"].CraftingRoomContent = "habitación:"
EID.descriptions["spa"].CraftingFloorContent = "escenario:"
EID.descriptions["spa"].CraftingResults = "Resultados:#(Scroll: hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}})"

