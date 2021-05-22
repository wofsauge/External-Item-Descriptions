-------------------------------------------------------------
-----  Basic Portuguese (Brazil) descriptions based on  -----
-----                 Platinumgod.co.uk 				-----
-----             By: LuanRoger and NotZin02            -----
-------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Portuguese (Brazil) letters: 
-- ãÃ áÁ àÀ âÂ çÇ éÉ êÊ íÍ õÕ óÓ ôÔ úÚ

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
	["5.70.14"] = {"14", "Golden Pill", "Efeito aleatório de pílula#Destrói-se após alguns usos"} -- golden Pill
}

local repCollectibles={
	[13] = {"13", "", "Toque venenoso#↑ +0.2 Velocidade"}, -- The Virus
	[14] = {"14", "", "↑ +0.3 Velocidade#↑ +5.25 Alcance#↑ +0.5 Altura do tiro"}, -- Roid Rage
	[22] = {"22", "", "↑ +1 Saúde#Cura um coração"}, -- Lunch
	[23] = {"23", "", "↑ +1 Saúde#Cura um coração"}, -- Dinner
	[24] = {"24", "", "↑ +1 Saúde#Cura um coração"}, -- Dessert
	[25] = {"25", "", "↑ +1 Saúde#Cura um coração"}, -- Breakfast
	[29] = {"29", "", "↑ +1.5 Alcance#↑ +0.5 Altura da lágrima#Gera 3-6 moscas azuis"}, -- Moms Underwear
	[30] = {"30", "", "↑ +1.5 Alcance#↑ +0.5 Altura da lágrima#Tocar o inimigo causa 12 de dano"}, -- Mom's Heels
	[31] = {"31", "", "↑ +2.25 Alcance#↑ +0.5 Altura da lágrima#Gera 1 coração aleatório"}, -- Mom's Lipstick
	[40] = {"40", "", "Causa uma grande explosão no local do jogador#Causando 185 de dano"}, -- Kamikaze!
	[42] = {"42", "", "Bomba de veneno arremessável#Causa 185 de dano + seu dano#Cria uma nuvem de veneno"}, -- Bob's Rotten Head
	[44] = {"44", "", "Teleporta o personagem para uma sala aleatória exceto salas I AM ERROR#Influencie um pouco a direção movendo-se na direção desejada"}, -- Teleport
	[45] = {"45", "", "Cura 1 coração vermelho#Também cura outros jogadores em meio coração"}, -- Yum Heart
	[46] = {"46", "", "↑ +1.0 Sorte#Maior chance de ganhar em jogos#Aumenta a chance de item ao limpar uma sala#Transforma algumas pílulas ruims em boas"}, -- Lucky Foot
	[55] = {"55", "", "Chance de atirar uma lágrima para trás"}, -- Mom's Eye
	[62] = {"62", "", "↑ +0.3 Dano#Cura meio coração a cada 13 inimigos mortos"}, -- Charm of the Vampire
	[64] = {"64", "", "-50% em itens da loja#Obter este item várias vezes reduz ainda mais o preço"}, -- Steam Sale
	[67] = {"67", "", "Familiar de lágrimas normais#5 de dano por lágrima"}, -- Sister Maggy
	[70] = {"70", "", "↑ +1.0 Dano#↑ +0.2 Velocidade"}, -- Growth Hormones
	[72] = {"72", "", "+3 Coração de alma#↑ 0.5 Lágrimas#Bible é mais comum"}, -- Rosary
	[79] = {"79", "", "↑ +1.0 Dano#↑ +0.2 Velocidade#+1 Coração negro"}, -- The Mark
	[80] = {"80", "", "↑ +0.5 Dano#↑ +0.7 Lágrimas#+2 Coração negro"}, -- The Pact
	[83] = {"83", "", "+ Meio Coração negro#↑ +0.7 Dano#↓ -0.18 Velocidade#Dano ao contato#Esmagar pedras"}, -- The Nail
	[106] = {"106", "", "↑ Dano de bomba x1.85#+5 Bombas"}, -- Mr. Mega
	[121] = {"121", "", "↑ +1 Espaço de coração vazio#↑ +1.0 Dano#↑ +0.25 Alcance#↓ -0.2 Velocidade de disparo#↑ +0.5 Altura da lágrima"}, -- Odd Mushroom (Large)
	[123] = {"123", "", "Gera um familiar aleatório#Dura para o andar atual"}, -- Monster Manual
	[139] = {"139", "", "Você pode segurar 2 trinkets#Gera 1 trinket aleatório"}, -- Mom's Purse
	[140] = {"140", "", "Bombas envenenadas#+5 Bombas#Bombas deixam uma nuvem de veneno"}, -- Bob's Curse
	[148] = {"148", "", "Gera 2-6 moscas quando você é danificado"}, -- Infestation
	[147] = {"147", "", "Quebra pedras e danifica inimigos#Batendo com o machado reduz sua carga#Recarrega ao ir para o próximo andar"}, -- Notched Axe
	[152] = {"152", "", "Atirar lasers!#Laser causa 13% do seu dano#↓33% Lágrimas"}, -- Technology 2
	[171] = {"171", "", "Atrasse os inimigos por 4 segundos#Cause 10 de dano á todos os inimigos#Inimigos mortos com isso gera aranhas azuir"}, -- Spider Butt
	[178] = {"178", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}}#Deixa uma poça no local arremessado"},
	[192] = {"192", "", "Lágrimas teleguidas para a sala atual#↑ +3 Alcance"}, -- Telepathy for Dummies
	[194] = {"194", "", "↑ +0.16 Velocidade de disparo#+1 carta#+15% de chance de Planetarium"}, -- Magic 8 Ball
	[203] = {"203", "", "Chance de gerar a versão dupla de pickups"}, -- Humbling Bundle
	[205] = {"205", "", "-Meio coração = Carrega um slot do seu item ativador ao pressionar a barra de espaço"}, -- Sharp Plug
	[211] = {"211", "", "Gera 3-5 aranhas quando é danificado"}, -- Spider Baby
	[230] = {"230", "", "↑ +1.5 Dano#↑ +0.2 Velocidade#Lágrimas de medo#Converte todos os espaços de coração vermelho em corações negro#+2 Corações negro"}, -- Abaddon
	[232] = {"232", "", "Efeito permanente de lentidão em inimigos#↑ +0.3 Velocidade"}, -- Stop Watch
	[245] = {"245", "", "Dobra todos os seu tiros#↓ -25% Dano"}, -- 20/20
	[256] = {"256", "", "Bombas flamejantes#+5 Bombas#Bombas inflige dano ao contato"}, -- Hot Bombs
	--{"261", "", "↑ +100% Damage up#↓ Dealt damage decreases for traveled distance of the tear"}, -- Proptosis ... Wiki não atualizou
	[262] = {"262", "", "+1 Coração negro#Quando com menos de 1 coração, cause dano a todos os inimigos na sala#Corações negros dão o dobro de dano"}, -- Missing Page 2
	[263] = {"263", "", "Copia os efeitos da runa ou pedra da alma atual#Solta 1 runa aleatória ao pegar"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "", "Familiar bomba arremessável#A explosão causa 100 de dano#O dano ignora armadura"}, -- Bob's Brain
	[274] = {"274", "", "Quando for danificado, ganhar um orbital de médio alcance#Orbital causa 150 de dano por segundo"}, -- Best Bud
	[276] = {"276", "", "Ganhe um corpo invulnerável#!!! Quando o familiar coração for atingido, você sofre dano#Familiar carregam ao disparar, liberando uma explosão de lágrimas"}, -- Isaac's Heart
	[278] = {"278", "", "!!! Converte:#1.5 Coração vermelho em 1 coração de alma/negro, uma aranha, uma pílula carta ou runa"}, -- Dark Bum
	[280] = {"280", "", "Gera aranhas azuis aleatoriamente quando entra em uma sala hostil#Encanta os inimigos com os quais entra em contato"}, -- Sissy Longlegs
	[283] = {"283", "", "Troca todos os pedestais, status, pickups e todos os seus itens passivos atuais#Duplica 1 pickup aleatório na sala#Reinicia a sala atual e retorna com inimigos diferentes#Troca as pedras na sala"}, -- D100
	[285] = {"285", "", "Troca todos os inimigos na sala#Tenta troca-los por inimigos com HP máximo semelhante"}, -- D10
	[287] = {"287", "", "Revela partes do maap#Concede apenas efeitos de mapas que você ainda não possui"}, -- Book of Secrets
	[288] = {"288", "", "Gera 4-8 aranhas azuis"}, -- Box of Spiders
	[289] = {"289", "", "Joga fogo vermelho#O fogo persiste até causar 5 dano ao contato ou após 10 segundos"}, -- Red Candle
	[291] = {"291", "", "!!! Mata instantaneamente inimigos e chefes cocôs!#Transforma todos os inimigos em cocôs#Apaga fogueiras#Transforma poças de lava em terreno andável"}, -- Flush!
	[292] = {"292", "", "+1 Coração negro#Quando usado antes de uma luta com o chefe, o item da sala do chefe será um acordo com o Diabo"}, -- Satanic Bible
	[294] = {"294", "", "Recua inimigos e projéteis próximos#Inimigos empurrados contra obstáculos recebem 10 de dano"}, -- Butter Bean
	[295] = {"295", "", "Danifica todos os inimigos da sala com 2x o seu dano + 10 #Preço: 1 moeda"}, -- Magic Fingers
	[296] = {"296", "", "!!! Converte:#1 Coração de alma/negro em 1 coração vermelho"}, -- Converter
	[307] = {"307", "", "↑ +1 Saúde / Chave / Bomba / Moeda#↑ +0.93 Dano#↑ +0.1 Velocidade#↑ +0.75 Alcance#↑ +Lágrimas"}, -- Capricorn
	[308] = {"308", "", "Deixa um rastro#Causa 6 de dano por segundo#Rastro sinergiza com efeitos da lágrima"}, -- Aquarius
	[328] = {"328", "", "↑ +1.0 Dano#Danifica todos os inimigos na sala ao ser atingido em meio coração vermelho ou nenhum"}, -- The Negative
	[331] = {"331", "", "Lágrimas teleguiadas#↑ +0.93 Dano#↑ +0.5 Alcance#↓ -0.6 Lágrimas#↓ -30% Velocidade de disparo#↑ +0.8 Altura da lágrima"}, -- Godhead
	[336] = {"336", "", "Lágrimas penetrantes + espectrais#↓ -1.5 Alcance#↓ -0.4 Velocidade de disparo"}, -- Dead Onion
	[344] = {"344", "", "+1 Coração negro#Gera 2-3 Bombas pickups#Gera o Match Stick {{Trinket41}} trinket"}, -- Match Book
	[346] = {"346", "", "↑ +1 Saúde#Cura 2 corações"}, -- A Snack
	[352] = {"352", "", "Dispara uma grande lágrima espectral ((DMG+1) X 10)#Quando você sofre dano, todo o dano ao jogador é aumentado em 2 corações"}, -- Glass Canon
	[355] = {"355", "", "↑ +1.25 Alcance#↑ +1 Sorte#+1 Coração de alma#↑ +0.5 Altura da lágrima"}, -- Mom's Pearl
	[369] = {"369", "", "↑ +3.0 Alcance#↑ +1.5 Altura da lágrima#As lágrimas percorrem as paredes e aparecem na parede oposta"}, -- Continuum
	[370] = {"370","","↑ +0.7 Lágrimas#↑ +1.5 Alcance#↑ +0.5 Altura da lágrima#Gera 3 tipos de corações diferentes quando pego"}, -- Mr. Dolly
	[372] = {"372", "", "Chance aleatória de soltar uma micro bateria ou congelar todos os inimigos na sala#Chance de carregar um slot do item ativador"}, -- Charged Baby
	[375] = {"375", "", "Chance de desviar projéteis#Imunidade a explosões"}, -- Host hat
	[376] = {"376", "", "Gera 3 pickups aleatórios#Loja reestoca os itens depois de comprar um#Itens reestocados tem custo menor"}, -- Restock
	[382] = {"382", "", "Pode ser arremessado em um inimigo para capturá-lo#No próximo isso vai solta-lo como inimigo amigo#Caminhar sobre a bola após a captura recarregará instantaneamente o item"}, -- Friendly Ball
	[395] = {"395", "", "Ganha a habilidade de atirar um anel de lazer que atravessa a sala#Dano baseado no progresso de carga#100% de dano na carga completa"}, -- Tech X
	[399] = {"399", "", "Depois de disparar lágrimas por 3 segundos, cria um anel preto danificando os inimigos dentro dele"}, -- Maw of the Void
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Troca inimigos e pickup ao entrar em contato"}, -- GB Bug
	[416] = {"416", "", "Gera 1-3 moedas se a sala não rendeu recompensas#Aumenta o limite da moeda para 999"}, -- Deep Pockets
	[448] = {"448", "", "Quando for danificado, tem chance de ganhas ↑ +5 Alcance, vomite lágrimas vermelhas e deixe um rastro de sangue, ou gere um coração vermelho"}, -- Shard of Glass
	[451] = {"451", "", "Solta uma carta aleatória ou runa ao pegar#Dobra o efeito de qualquer carta usada#Algumas cartas ganham um efeito extra"}, -- Tarot Cloth
	[464] = {"464", "", "+2 Corações de alma#Inimigos Champion e salas de drops aparecem com mais frequência#A prioridade de gerar pickups depende do que o jogador está perdendo mais"}, -- Glyph of Balance
	[474] = {"474", "", "Transforma-se em Glass Canon quando usado"}, -- Broken Glass Canon
	[489] = {"489", "", "Efeito de dado aleatório a cada uso#Pressione o botão Soltar para percorrer entre os dados"}, -- D Infinity
	[491] = {"491", "", "Solta uma pílula aleatória a cada 7 salas#Usar uma pílula envenena todos os inimigos na sala"}, -- Acid Baby
	[494] = {"494", "", "Lágrimas geram 1-2 faíscas de eletricidade com o impacto#Faíscas causam metade do seu dano#Faíscas podem pular entre inimigos"}, -- Jacobs Ladder
	[503] = {"503", "", "Chance de atirar lágrimas que invoca a mão do Big Horn#A mão mata inimigos instantaneamente e causa dano aos chefes#Correr em inimigos causará 3,5 de dano a eles"}, -- Little Horn
	[504] = {"504", "", "Gera uma torreta voadora que atira nos inimigos#Cada tiro causa 3.5 de dano"}, -- Brown Nugget
	[509] = {"509", "", "Orbital que dispara uma lágrima a cada 1/3 de segundo quando o inimigo está próximo#Causa 3.5 de dano por lágrima#Causa 30 de dano por segundo ao contato"}, -- Bloodshot Eye
	[523] = {"523", "", "Quando ussado, guarde até 6 pick-ups da sala atual#Usando de novo coloca todos eles de volta no chão#Isso permite mover coisas entre salas"}, -- Moving Box
	[524] = {"524", "", "Lágrimas serão conectadas por raios de eletricidade#Eletricidade causa dano igual a 1/3 do seu dano"}, -- Technology Zero
	[543] = {"543", "", "Gera cocôs branco quando for danificado#(O cocô branco tem uma aura de ↑ Lágrimas e Dano, concede lágrimas teleguiadas e pode bloquear danos)"}, -- Hallowed Ground
	[553] = {"553", "", "Chance de atirar esporos pegajosos#Esporos explodem depois de 2.5 segundos, causando dano, envenenamento a inimigos próximos e soltando mais esporos"}, --  Mucormycosis
	[554] = {"554", "", "Amedronta inimigos em um pequeno raio ao seu redor"}, --  2Spooky
	[555] = {"555", "", "Converte 5 moedas em +1.2 Dano para a sala atual"}, --  Golden Razor
	[556] = {"556", "", "Garante Brimstone {{Collectible118}} para a sala atual"}, --  Sulfur
	[557] = {"557", "", "Dá ao personagem uma fortune, coração de alma, carta de tarô, ou trinket"}, --  Fortune Cookie
	[558] = {"558", "", "Chance de atirar 1-2 lágrimas extras em uma direção aleatória"}, --  Eye Sore
	[559] = {"559", "", "Ataca inimigos próximos repetidamente#Eletricidade causa 75% do seu dano"}, --  120 Volt
	[560] = {"560", "", "Lança um anel de 10 lágrimas quando for atingido#↑ +1.2 Lágrimas para o primeiro dano#↑ +0.4 para cada dano adicional"}, --  It Hurts
	[561] = {"561", "", "↑ Taxa de tiro x 4#↓ Dano x 0.3#Lágrimas ganham um efeito de minhoca aleatório"}, --  Almond Milk
	[562] = {"562", "", "Define todas as estatísticas para seu valor base#Impede que as estatísticas sejam reduzidas para o resto da corrida"}, --  Rock Bottom
	[563] = {"563", "", "+5 Bombas#Bombas explodem com um efeito de bomba aleatório"}, --  Nancy Bombs
	[564] = {"564", "", "↑ +0.5 Lágrimas#↑ +0.2 Velocidade de tiro"}, --  A Bar of Soap
	[565] = {"565", "", "Familiar que persegue inimigos#Depois de matar inimigos suficientes, ele se torna mais forte, mas também tentará machucar você#Atacar ele faz com que volte ao normal"}, --  Blood Puppy
	[566] = {"566", "", "+1 Meio Coração de alma quando entrar em um novo andar#Exibe o próximo item da Sala do Tesouro e chefe na transição de fase"}, --  Dream Catcher
	[567] = {"567", "", "↑ +0.4 Lágrimas para cada sala limpa sem levar dano#Acumula até 5 vezes"}, --  Paschal Candle
	[568] = {"568", "", "Pressionar duas vezes em uma tecla de atirar cria um escudo#O escudo dura 1 segundo, empurra os inimigos para longe e reflete projéteis e lasers inimigos"}, --  Divine Intervention
	[569] = {"569", "", "Apunhala você no início de cada andar, drenando tudo, menos a metade de um coração vermelho#Aumenta os status para o andar atual:#↑ Seu dano + 0.15 * Corações perdidos^2#↑ Velocidade + 0.05 * Corações perdidos"}, --  Blood Oath
	[570] = {"570", "", "Concede lágrimas multicoloridas com diferentes efeitos de status"}, --  Playdough Cookie
	[571] = {"571", "", "Impede danos a poças e espinhos no chão#↑ +0.3 Velocidade#↑ +2 Corações de alma"}, --  Orphan Socks
	[572] = {"572", "", "Lágriams controláveis#↑ +1 Dano#↑ +7.5 Alcance#↓ -0.16 Velocidade de disparo"}, --  Eye of the Occult
	[573] = {"573", "", "+1 Espaço de coração vermelho#↑ +20% Dano#Vida cheia#Chance de atirar lágrimas espectrais orbitais"}, --  Immaculate Heart
	[574] = {"574", "", "Ganhe duas auras circulares que causam danos aos inimigos#A aura interna causa mais danos"}, --  Monstrance
	[575] = {"575", "", "Um familiar enterrado em sua cabeça, disparando 4 lágrimas lentas#Ao receber dano, pode sair da cabeça "}, --  The Intruder
	[576] = {"576", "", "Destruir cocô gera 1-4 Dips amigáveis#O tipo do Dip depende do cocô destrido"}, --  Dirty Mind
	[577] = {"577", "", "{{Warning}} USO ÚNICO {{Warning}}#Gera uma espada acima de sua cabeça, que dobra todos os pedestais de itens e recompensas de mendigos#Mata você em um momento aleatório ao receber dano e segurar a espada para cima"}, --  Damocles
	[578] = {"578", "", "Cria uma grande poça amarela"}, --  Free Lemonade
	[579] = {"579", "", "Em vez de lágrimas, o personagem tem uma espada#Causa 3x seu dano#Faz um ataque giratório + tiro de projétil ao carregar#Disparar projéteis com oscilações normais com a vida cheia"}, --  Spirit Sword
	[580] = {"580", "", "Cria uma nova sala adjacente a uma parede viável, indicada pelo contorno de uma porta#Podem ser salas especiais#Uma sala fora do mapa de piso 13x13 irá teletransportá-lo para a sala I AM ERROR"}, --  Red Key
	[581] = {"581", "", "Familiar mosca orbital#Persegue e desvia projéteis#Causa dano ao contato"}, --  Psy Fly
	[582] = {"582", "", "↑ +0.75 Taxa de disparo#↓ -0.03 Velocidade#Distorce a tela#O efeito pode ser empilhado"}, --  Wavy Cap
	[583] = {"583", "", "+5 Bombas#Se estiver andando, bombas colocadas se transformam em foguetes que disparam na direção em que está andando"}, --  Rocket in a Jar
	[584] = {"584", "", "Gera um familiar orbital que atira lágrimas espectrais mas pode ser destruído#Pode ser combinado com um segundo item ativador para criar um orbital temático#Transforma a primeira sala do Demônio em uma sala do Anjo"}, --  Book of Virtues
	[585] = {"585", "", "Gera três corações de alma e dois itens da sala do anjo#Pode se carregado pegando corações de alma"}, --  Alabaster Box
	[586] = {"586", "", "Gera uma escada no início de cada andar, levando a uma loja de itens da Sala do Anjo"}, --  The Stairway
	[587] = {"587", "", "<Item does not exist>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "", "Revela a localização da Sala do Chefe {{BossRoom}}#Ao derrotar o chefe, ativa XIX - The Sun {{Card20}}#Também recarrega totalmente seu item ativador, e +3 Dano e +1 Sorte para o resto do andar"}, --  Sol
	[589] = {"589", "", "Adiciona um extra a Sala secreta{{SecretRoom}} e Super Secreta Room{{SuperSecretRoom}} em cada andar#A Sala Secreta contém um feixe de luz que dá + Lágrimas ao andar atual e meio coração de alma"}, --  Luna
	[590] = {"590", "", "↑ +0.4 Velocidade#Portas permanecem abertas depois de entrar em uma sala"}, --  Mercurius
	[591] = {"591", "", "+1 Espaço de Coração vermelho#Vida cheia#Inimigos próximos ficam encantados"}, --  Venus
	[592] = {"592", "", "↑ +1.0 Dano#Troca lágrimas por pedras#Causa dano variável#Pode destruir obstáculos#Aumenta o recuo"}, --  Terra
	[593] = {"593", "", "Faz um Dash pressionando duas vezes na tecla de movimento#Tornando-se invulnerável e causando 4x o seu dano#3 segundos de cooldown"}, --  Mars
	[594] = {"594", "", "+2 Espaços de coração vermelho#↓ -0.3 Velocidade#Carrega enquanto estiver parado#Lança uma nuvem de veneno quando se mover novamente"}, --  Jupiter
	[595] = {"595", "", "Um círculo envolve você#Ao entrar em uma sala, 7 lágrimas irão orbitar nele#Chance de pegar projéteis inimigos"}, --  Saturnus
	[596] = {"596", "", "Atira lágrimas de gelo, que retardam os inimigos e congela os monstros que ele matam#Tocar em inimigos congelados faz-os desliza e explodir em 6 fragmentos de gelo"}, --  Uranus
	[597] = {"597", "", "Cria um enorme bônus de lágrimas ao longo de 3 segundos enquanto não dispara#Tirar novamente irá liberar lágrimas armazenadas#O bônus da lágrima cai conforme você atira"}, --  Neptunus
	[598] = {"598", "", "↑ +0.7 Lágrimas#Diminui significativamente o tamanho do personagem, permitindo que ele passe entre objetos#Projéteis podem passar por cima dele"}, --  Pluto
	[599] = {"599", "", "Gera uma Sala de Maldição {{CursedRoom}} adicional para cada andar"}, --  Voodoo Head
	[600] = {"600", "", "↑ Diminui o atrasso da lágrima em seu olho esquerdo em 28%"}, --  Eye Drops
	[601] = {"601", "", "↑ Lágrimas#+1 Coração Eterno#Permite que Salas do Anjo apareçam, mesmo que um acordo com o Diabo tenha sido fechado antes"}, --  Act of Contrition
	[602] = {"602", "", "Adiciona um alçapão em cada loja que leva a uma segunda loja com um estoque exclusivo"}, --  Member Card
	[603] = {"603", "", "Gera 2-4 baterias#Recarrega totalmente seu item ativador"}, --  Battery Pack
	[604] = {"604", "", "Permite pegar e arremessar pedras, TNT, cocôs, Hosts, e outros obstaculos#Permite carrega-los entre salas"}, --  Mom's Bracelet
	[605] = {"605", "", "Invoca um familiar Peeper para a sala atual, que deixa um rastro vermelho"}, --  The Scooper
	[606] = {"606", "", "Chance de atirar lágrimas que criam fendas onde caem#Puxa inimigos, pickups e projéteis próximos"}, --  Ocular Rift
	[607] = {"607", "", "Familiar que dispara rajadas de lágrimas caóticas em todas as direções#Causa 3.5 ou 5.3 de dano por lágrima"}, --  Boiled Baby
	[608] = {"608", "", "Familiar que lança lágrimas petrificantes#Petrifica inimigos ao matá-los"}, --  Freezer Baby
	[609] = {"609", "", "Troca todos os itens na sala#Itens tem chance de desaparecer"}, --  Eternal D6
	[610] = {"610", "", "Familiar que salta sobre um inimigo como primeiro golpe na sala#Causa 45 de dano e lança uma onda de pedras#Depois, persegue os inimigos"}, --  Bird Cage
	[611] = {"611", "", "Faz você gritar, causando dano e empurrando os inimigos próximos#O grito fica mais forte quanto mais cargas o item tiver"}, --  Larynx
	[612] = {"612", "", "Familiar de alma que morre com um golpe, ressurgindo no início do próximo andar#Se sobreviver a um andar inteiro, gerará 3 corações de almas, 2 corações eternos ou itens"}, --  Lost Soul
	[613] = {"613", "", "<Item does not exist>"},
	[614] = {"614", "", "+1 Espaço de coração vermelho#Cura 5 corações#Bombas deixam uma poça vermelha#Se o jogador não tiver bombas, uma pode ser colocada ao custo de meio coração"}, --  Blood Bombs
	[615] = {"615", "", "Familiar Dumpy#Quando sofre dano, empurra, atordoa ou envenena os inimigos próximos"}, --  Lil Dumpy
	[616] = {"616", "", "Chance de atirar fogo que bloqueia tiros inimigos e causa dano ao contato#Máximo de dano é 4x seu dano"}, --  Bird's Eye
	[617] = {"617", "", "Chance de atirar lágrimas que magnetiza os inimigos#Irá atrair pickups, projéteis e inimigos"}, --  Lodestone
	[618] = {"618", "", "Chance de atirar lágrimas que Marca inimigos#Inimigos marcados são atacados por outros inimigos"}, --  Rotten Tomato
	[619] = {"619", "", "Tem um efeito diferente para cada personagem"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "", "Vida cheia#↑ +21.6 Dano#O dano desaparece pelos próximos 3 minutos"}, --  Red Stew
	[622] = {"622", "", "{{Warning}} USO ÚNICO {{Warning}}#Remove todos os itens e pickups do personagem#Teleporta você para um quarto exclusivo com pickups, baús e um alçapão#Para cada item perdido, Salas do Tesouro {{TreasureRoom}} mostram um conjunto de 3 itens para escolher"}, --  Genesis
	[623] = {"623", "", "+5 Chaves#Arremesse sua chave para causar dano, destruir obstáculos, ou abrir portas"}, --  Sharp Key
	[624] = {"624", "", "Gera 5 cartas aleatórias"}, --  Booster Pack
	[625] = {"625", "", "Gigantifica você por 30 segundos#Aumenta seu dano e alcance#Concede invulnerabilidade e capacidade de esmagar inimigos e obstáculos#Efeito persiste entre as salas"}, --  Mega Mush
	[626] = {"626", "", "Primeira parte da faca"}, --  Knife Piece 1
	[627] = {"627", "", "Combinado com Knife Piece 1 {{Collectible627}}, cria um familiar faca#Danifica os inimigos#Pode abrir uma certa porta de carne"}, --  Knife Piece 2
	[628] = {"628", "", "{{Warning}} USU ÚNICO {{Warning}}#Leva você a um andar contendo todos os itens do jogo#Depois de pegar um item, volte para a sala de onde veio"}, --  Death Certificate
	[629] = {"629", "", "Orbital que atira lágrimas protegidas"}, --  Bot Fly
	[630] = {"630", "", "<Item does not exist>"},
	[631] = {"631", "", "Divide os inimigos na sala em 2 versões menores deles mesmos com muito menos saúde"}, --  Meat Cleaver
	[632] = {"632", "", "↑ +2 Sorte#+ Meio coração de alma em cada andar"}, --  Evil Charm
	[633] = {"633", "", "Concede vôo e o efeito de um Holy Mantle {{Collectible313}} por uma vez#↑ +2.0 Dano#↑ +0.1 Velocidade#Se o jogador tiver menos de 6 corações, cura-o com uma combinação de corações vermelhos e almas"}, --  Dogma
	[634] = {"634", "", "Enquanto em uma sala com inimigos, gera rachaduras no chão#Andar sobre essas fendas convoca fantasmas explosivos"}, --  Purgatory
	[635] = {"635", "", "Passivamente gera um familiar que se move na direção do tiro do personagem#Em uso, o personagem troca de lugar com o familiar e ganha invencibilidade curta#Teleportar-se para as coisas pode danificá-las ou destruí-las"}, --  Stitches
	[636] = {"636", "", "{{Warning}} USO ÚNICO {{Warning}}#Teleporta você de volta para o primeiro andar de uma nova corrida#Itens e pickups permanecem intactos"}, --  R Key
	[637] = {"637", "", "Chance de atirar uma primeira lágrima com um recuo extremo e efeito de confusão"}, --  Knockout Drops
	[638] = {"638", "", "Arremessa uma borracha que mata um inimigo instantaneamente#Impede que o inimigo apareça pelo resto da corrida#Pode ser usado apenas uma vez por andar"}, --  Eraser
	[639] = {"639", "", "Concede um coração podre ao usar"}, --  Yuck Heart
	[640] = {"640", "", "Vomita uma torrente de chamas#Ganha uma carga cada vez que um inimigo morre"}, --  Urn of Souls
	[641] = {"641", "", "Cria uma corrente de lágrimas atrás de você durante uma luta#As lágrimas causam 3.5 de dano"}, --  Akeldama
	[642] = {"642", "", "Consume 1 espaço de coração ou 2 corações de alma para gerar um item da sala atual#Também concede um recipiente de coração partido que nunca pode ser preenchido#{{Warning}} Uso único para The Lost"}, --  Magic Skin
	[643] = {"643", "", "Concede vôo e 2 Corações de alma#Atire por 2.5 segundo irá disparar um laser sagrado quando o botão de disparo for solto"}, --  Revelation
	[644] = {"644", "", "Aumenta seu status mais baixo#Solta 3 moedas, 1 bomba ou 1 chave, dependendo do que você tem menos"}, --  Consolation Prize
	[645] = {"645", "", "Orbital Teratoma#Bloqueia tiros#Causa dano ao contato#Divide-se em versões menores de si mesmo ao receber 3 acertos#As versões menores se dividem em aranhas azuis#Renasce 5 segundos depois que todos se foram"}, --  Tinytoma
	[646] = {"646", "", "+5 Bombas#Bombas lançam 4 Brimstone nas direções cardeais"}, --  Brimstone Bombs
	[647] = {"647", "", "Os itens ativadores não carregam ao limpar as salas#Eles carregam causando dano aos inimigos#60 de dano causado = 1 carga"}, --  4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "", "Familiar Mini Baby Plum#Impulsiona-se diagonalmente pela sala, soltando lágrimas por onde passa"}, --  Fruity Plum
	[650] = {"650", "", "Invoca um Baby Plum amigável na sala atual por 10 segundos"}, --  Plum Flute
	[651] = {"651", "", "Familiar que viaja lentamente em direção à Sala do Chefe#Emite uma aura que concede +20% + 1 Dano, +Lágrimas e lágrimas teleguiadas"}, --  Star of Bethlehem
	[652] = {"652", "", "Familiar deslizante#Ele diminui e causa dano de contato, congelando monstros que mata"}, --  Cube Baby
	[653] = {"653", "", "Enquanto segurar, inimigos não fantasmas geram pequenos fantasmas vermelhos na morte#Em uso, faz com que os fantasmas explodam"}, --  Vade Retro
	[654] = {"654", "", "Identifica todas as pílulas#+1 Coração negro#Converte pílulas boas em ruims#↑ Pílulas antiestáticas concede +Dano#Outras pílulas deixam cair corações negros ao usar"}, --  False PHD
	[655] = {"655", "", "Concede um orbital giratório que bloqueia tiros inimigos e causa dano ao contato#Quando usado,↑ +0.5 Velocidade e aumenta muito a velocidade de rotação dos orbitais"}, --  Spin to Win
	[656] = {"656", "", "<Item não coletável>"}, -- Damocles
	[657] = {"657", "", "Os inimigos explodem em lágrimas depois de morrer, que herdam os efeitos das lágrimas do personagem"}, --  Vasculitis
	[658] = {"658", "", "Gera versões pequenas do personagem quando recebe dano#Eles perseguem e atiram em inimigos próximos"}, --  Giant Cell
	[659] = {"659", "", "↑ +1.5 Alcance#Aumenta o tamanho da lágrima"}, --  Tropicamide
	[660] = {"660", "", "Gera dois portais no início de cada andar#Os portais desaparecem ao sair da sala#{{ColorRed}}Vermelho: {{CR}}Sala do Chefe#{{ColorYellow}}Amarelo: {{CR}}Sala do Tesouro#{{ColorBlue}}Azul: {{CR}}Sala Secreta"}, --  Card Reading
	[661] = {"661", "", "Gera um familiar tiro estacionário no local onde um inimigo morreu#Até 5 familiares"}, --  Quints
	[662] = {"662", "", "<Item does not exist>"}, -- Pacifist (Cut item)
	[663] = {"663", "", "Torne-se invencível a cada 6 segundos por 1 segundo#Pisca imediatamente antes da transição"}, --  Tooth and Nail
	[664] = {"664", "", "+1 Espaço de coração vermelho#Os itens de pedestais alternam periodicamente entre itens alimentares e qualquer um outro#Pegar um item alimentar concede temporariamente +3.6 Dano e 2 pequenas estatísticas permanentes"}, --  Binge Eater
	[665] = {"665", "", "Mostra o conteúdo de baús, sacos e fogueiras antes de serem abertos"}, --  Guppy's Eye
	[666] = {"666", "", "<Item does not exist>"},
	[667] = {"667", "", "Gera um Keeper como segundo personagem#Se ele morrer, ele gera aranhas azuis#O item é removido depois"}, --  Strawman
	[668] = {"668", "", "Começa a sequência para acessar o andar da Casa"}, --  Dad's Note
	[669] = {"669", "", "↑ +1.33 Dano#↑ +0.2 Velocidade#↑ +1.2 Velocidade de disparo#↑ +0.16 Alcance#↑ +1 Sorte"}, --  Sausage
	[670] = {"670", "", "Se uma sala conceder uma recompensa, haverá duas recompensas diferentes para escolher#Pegar um faz com que a outra desapareça"}, --  Options?
	[671] = {"671", "", "Dá aumento aleatório permanente de estatísticas ao ser curado por um pickup de coração vermelho"}, --  Candy Heart
	[672] = {"672", "", "Acordos com o Diabo agora custam moedas#Itens da loja custam corações#Os consumíveis nas lojas são gratuitos, mas estão cercados por espinhos"}, --  A Pound of Flesh
	[673] = {"673", "", "Concede 1 coração de alma e +1.0 Dano quando entrar em uma Sala do Demônio e não pegar nenhum item"}, --  Redemption
	[674] = {"674", "", "Ao morrer, o fantasma do personagem é acorrentado ao seu cadáver e ele pode continuar lutando com metade de um coração#Retorne a vida depois de 10 segundos#Deve ser recarregado pegando um coração de alma"}, --  Spirit Shackles
	[675] = {"675", "", "Ao receber dano, revela uma sala aleatória no andar#Também destranca portas que requerem chaves#Pode abrir a porta do Mega Satan#Pode revelar a Sala Ultra Secreta"}, --  Cracked Orb
	[676] = {"676", "", "Quando tiver um espaço de coração vazio no início de um novo andar, concede outro#Corações de osso não contam"}, --  Empty Heart
	[677] = {"677", "", "Ao ser atingido, para o tempo por 3 segundos#O personagem se torna um fantasma e deixa seu corpo#Na forma de fantasma, ganha vôo, lágrimas espectrais e também negam o próximo dado"}, --  Astral Projection
	[678] = {"678", "", "Lançar um bebê preso pelo cordão umbilical#Causa 3x da dano ao contato#O bebê chora e caminha quando o botão de disparo é pressionado#Retorna quando o botão é solto"}, --  C Section
	[679] = {"679", "", "Familiar que dispara um mini Maw of the Void {{Collectible399}}"}, --  Lil Abaddon
	[680] = {"680", "", "Enquanto dispara, carregue um Brimstone de curto alcance#Atira atrás de você"}, --  Montezuma's Revenge
	[681] = {"681", "", "Causa dano de contato e voa para frente#Consome pickups em seu caminho#Cada um aumentará seu tamanho, dano e gerará uma Blue Fly#A cada quatro pickups, ele gera um portal para uma sala inexplorada"}, --  Lil Portal
	[682] = {"682", "", "Faz com que um tentáculo saia do chão#Pode segurar inimigos e causar dano"}, --  Worm Friend
	[683] = {"683", "", "Inimigos geram ossos flutuantes na morte#Ossos bloqueiam projéteis e causam dano ao contato"}, --  Bone Spurs
	[684] = {"684", "", "Chance de gerar fantasmas ao matar um inimigo#Fantasmas perseguem inimigos e causam dano de contato"}, --  Hungry Soul
	[685] = {"685", "", "Gera um wisps que atira varias lágrimas, bloqueia tiros, e causa dano ao contato#Número de wisps gerados aumenta quanto mais é usado"}, --  Jar of Wisps
	[686] = {"686", "", "Concede um aumento de estatísticas permanente sempre que você pegar um coração de alma#Gera um coração de alma ao pegar"}, --  Soul Locket
	[687] = {"687", "", "Gera um monstro amigável aleatório que imita os movimentos e ataques do personagem"}, --  Friend Finder
	[688] = {"688", "", "+1 Vida extra#Reaparece na sala atual com meio coração, tamanho reduzido massivamente e +0,2 Velocidade"}, --  Inner Child
	[689] = {"689", "", "Os itens de pedestais alternam rapidamente entre 5 itens aleatórios"}, --  Glitched Crown
	[690] = {"690", "", "Faz com que os inimigos ricocheteem no personagem#Saltar contra obstáculos causa dano#Chance de desviar projéteis inimigos"}, --  Belly Jelly
	[691] = {"691", "", "Impede que de itens de baixa qualidade apareçam#Aumentando muito a qualidade dos itens que irão aparecer"}, --  Sacred Orb
	[692] = {"692", "", "Gera um conjunto especial de espinhos na Sala do Demônio#Receber dano dos espinhos pode conceder uma recompensa:#35% 6 pennies#15% +0.5 Dano#5% 2 Corações negros#2% item aleatório#1% Transformar-se em Leviathan"}, --  Sanguine Bond
	[693] = {"693", "", "Concede 9 moscas orbitais que se transformam em moscas azuis após bloquearem um tiro#Gera uma nova mosca a cada sala limpa"}, --  The Swarm
	[694] = {"694", "", "Concede 3 corações quebrados#↑ +0.25 Dano para cada coração quebrado#Cada golpe fatal irá adicionar mais 2 corações partidos#Você morre com 12 corações quebrados"}, --  Heartbreak
	[695] = {"695", "", "Ao receber dano, ganha velocidade e lágrimas para o andar atual"}, --  Bloody Gust
	[696] = {"696", "", "Concede uma aréola que gera feixes de luz nos inimigos dentro dele#Quanto mais dano você recebe neste andar, maior a aréola fica"}, --  Salvation
	[697] = {"697", "", "Familiar que se torna um clone do chefe ao entrar na sala do chefe#Derrotá-lo deixa cair um item extra#O clone é mais lento e tem 75% da saúde do chefe original"}, --  Vanishing Twin
	[698] = {"698", "", "Dois familiares que ficam ao seu lado#Atira lágrimas iguais às suas, mas com apenas 37,5% do seu dano"}, --  Twisted Pair
	[699] = {"699", "", "Aumente a raiva toda vez que uma sala for limpa#Após 4 quartos, dispara um grande Brimstone quando entrar na próxima sala"}, --  Azazel's Rage
	[700] = {"700", "", "Quando o personagem usa uma carta, pílula ou runa, ele também usa uma cópia de cada carta/pílula/runa que usou após pegar a Echo Chamber"}, --  Echo Chamber
	[701] = {"701", "", "Gera um Old Chest no início de cada andar#Pode conter corações de alma, trinkets ou itens da Sala do Anjo ou temático da Mãe e Pai"}, --  Isaac's Tomb
	[702] = {"702", "", "Depois de receber dano, gera um feixe orbital que dura por todo o andar#O máximo é 6#Eles disparam lágrimas, mas não bloqueiam os tiros"}, --  Vengeful Spirit
	[703] = {"703", "", "Troca entre o personagem atual e Esau Jr, que tem 3 corações negros, +2 de dano e vôo#Personagens têm itens e saúde independentes#{{Warning}} Morre quando um dos personagens termina a corrida"}, --  Esau Jr.
	[704] = {"704", "", "Modo furioso por 5 segundos:#↑ +0.4 Velocidade#↑ Lágrimas#↑ +3.0 Dano#Restringe os ataques a uma arma branca"}, --  Berserk!
	[705] = {"705", "", "Quando usado, ganha ↑ +1.0 velocidade e a habilidade de andar sobre de inimigos/balas por 1 segundo#Aumenta rapidamente o dano em 1 para cada inimigo tocado#Influge 3x seu dano á inimigos tocados"}, --  Dark Arts
	[706] = {"706", "", "Destrói todos os itens na sala e gera uma mosca familiar de ataque para cada item destruído#Os efeitos da mosca dependem dos itens"}, --  Abyss
	[707] = {"707", "", "+1 Espaço de coração vermelho#Cura um coração"}, --  Supper
	[708] = {"708", "", "↑ +1.0 Dano#Impede o personagem de atirar lágrimas por um olho"}, --  Stapler
	[709] = {"709", "", "Permite que você colida e pegue inimigos ou chefes e, em seguida, jogue-os no chão#Slam can be controlled#O arremesso causa 50 de dano e causa queda de rochas"}, --  Suplex!
	[710] = {"710", "", "Coleta e armazena até 8 pickups#Segurar o botão de ativação transforma os pickups em um item#A qualidade do item depende da qualidade do pickup"}, --  Bag of Crafting
	[711] = {"711", "", "Troque de personagem entre Tainted Lazarus e Dead Tainted Lazarus"}, --  Flip
	[712] = {"712", "", "Gera um item de fantasma orbital destruível#O efeito do item é aplicado ao jogador#Os itens são escolhidos de acordo com a sala atual"}, --  Lemegeton
	[713] = {"713", "", "Manter o botão de tiro pressionado converte meio coração em familiares destruíveis a cada 2 segundos#A ativação converte os familiares de volta aos corações#O tipo do coração muda o comportamento do familiar"}, --  Sumptorium
	[714] = {"714", "", "Recupera o corpo do Forgotten de qualquer distância"}, --  Recall
	[715] = {"715", "", "Guarda uma bomba de cocô que pode ser usada mais tarde"}, --  Hold
	[716] = {"716", "", "Concede +alcance, velocidade, ou dano quando comprar coisas em lojas#Gera 3 moedas e 1 chave ao pegar"}, --  Keeper's Sack
	[717] = {"717", "", "Pedras e adereços geram 2 aranhas azuis quando destruídas"}, --  Keeper's Kin
	[718] = {"718", "", "<Item não existe>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "", "Gera um item/pickup aleatório da loja"}, --  Keeper's Box
	[720] = {"720", "", "Gera determinados pickups com base em quantas cargas ele tem#Se totalmente carregado, ele tem um efeito aleatório mais forte#Recompensas de acordo com a carga: 1:Cocô 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[721] = {"721", "", "Faz com que todos os itens futuros sejam 'defeituoso'#Concede a eles efeitos completamente aleatórios"}, --  TMTRAINER
	[722] = {"722", "", "Acorrenta o inimigo mais próximo por 5 segundos, impedindo-o de fazer qualquer coisa"}, --  Anima Sola
	[723] = {"723", "", "Troca todos os itens no quarto, diminuindo seu ID interno em um"}, --  Spindown Dice
	[724] = {"724", "", "Ao ser atingido por um inimigo, deixa cair meio coração vermelho ou cheio#Corações gerados desaparecem após 1.5 segundos"}, --  Hypercoagulation
	[725] = {"725", "", "Ao causar dano, chance de desencadear um efeito:#Arremessar cocô#Criar uma poça fortificadora#Peido#Solta 5 bombas vivas"}, --  IBS
	[726] = {"726", "", "Pressionar duas vezes o botão de atirar para espirrar sangue#Causa 150% do seu dano aos inimigos à sua frente#Cooldown de 1 segundos"}, --  Hemoptysis
	[727] = {"727", "", "+5 Bombas#As bombas geram fantasmas que causam dano de contato e explodem após 10 segundos"}, --  Ghost Bombs
	[728] = {"728", "", "Gera um familiar demônio que está ligado ao personagem#Imita a lágrima do personagem, status e efeito"}, --  Gello
	[729] = {"729", "", "Arranca a cabeça do personagem, ao mesmo tempo que é capaz de atirar lágrimas#Reativa o item ou pisar na cabeça o recoloca"}, --  Decap Attack
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["pt_br"].collectibles)

EID.descriptions["pt_br"].birthright ={
	{"Isaac", "", "Todos os itens passam por duas opções"},
	{"Magdalene", "", "<Sem efeito>"},
	{"Cain", "", "<Sem efeito>"},
	{"Judas", "", "<Sem feito>"},
	{"???", "", "Corações de alma ganhos por atualizações de saúde são dobrados"},
	{"Eve", "", "Whore of Babylon é ativado independentemente da saúde#Dead Bird é ativado sem precisar levar dano"},
	{"Samson", "", "Bloody Lust pode conceder mais 4 de aumento de dano em um mesmo intervalo de +0.2, para um novo máximo de +14.0"},
	{"Azazel", "", "O Brimstone do Azazel se torna muito mais amplo, como o Mega Blast#Sem efeito no dano"},
	{"Lazarus", "", "Quando morto, reviva como Lazarus Ressuscitado#Lazarus Ressuscitado ganha um bônus de +21,6 Dano que diminui lentamente"},
	{"Eden", "", "Gera 3 itens aleatórios de locais diferentes#Apenas um pode ser pego"},
	{"The Lost", "", "Impede a geração de itens não benéficos para The Lost#Exemplos: aqueles que só dão saúde, vôo e/ou lágrimas espectrais ou itens que ativam ao receber dano"},
	{"Lazarus Risen", "", "Concede um bônus de +21.6 Dano que diminui lentamente"},
	{"Black Judas", "", "<Sem efeito>"},
	{"Lilith", "", "<Sem efeito>"},
	{"Keeper", "", "<Sem efeito>"},
	{"Apollyon", "", "<Sem efeito>"},
	{"The Forgotten", "", "The Soul é livre para se mover"},
	{"The Forgotten Soul", "", "The Soul é livre para se mover"},
	{"Bethany", "", "Ativar um item usando cargas de alma às vezes é grátis"},
	{"Jacob", "", "O personagem que pegar o item ganha cópias de três dos itens passivos do outro personagem"},
	{"Esau", "", "O personagem que pegar o item ganha cópias de três dos itens passivos do outro personagem"},
	{"Tainted Isaac", "", "Adiciona mais 4 espaços para itens passivos"},
	{"Tainted Magdalene", "", "Adiciona mais 1 coração vermelho que não esgota"},
	{"Tainted Cain", "", "A quantidade de pickups gerados a partir da coleta de um item é dobrado"},
	{"Tainted Judas", "", "<Sem efeito>"},
	{"Tainted ???", "", "Aumenta o número máximo de cocôs transportados para 29"},
	{"Tainted Eve", "", "<Sem efeito>"},
	{"Tainted Samson", "", "O cronômetro furioso ganha 3 segundos em vez de 1 quando Tainted Samson mata um inimigo"},
	{"Tainted Azazel", "", "Dobra o tamanho do ataque da Hemoptise {{Collectible726}} do Tainted Azazel"},
	{"Tainted Lazarus", "", "<Sem efeito>"},
	{"Tainted Eden", "", "Itens passivos ganhos antes do Birthright não serão trocados novamente ao receberem dano "},
	{"Tainted Lost", "", "+1 vida extra que revive Tainted Lost na mesma sala e causa 200 de dano a inimigos próximos#Pode atingir o mesmo inimigo várias vezes"},
	{"Tainted Lilith", "", "<Sem efeito>"},
	{"Tainted Keeper", "", "Atrai fortemente as moedas soltas por inimigos derrotados de uma curta distância#Sem efeito nas outras moedas"},
	{"Tainted Apollyon", "", "<Sem efeito>"},
	{"Tainted Forgotten", "", "Tainted Soul ganha a habilidade do Recall {{Collectible714}}, para recuperar automaticamente o Tainted Forgotten à distância"},
	{"Tainted Bethany", "", "<Sem efeito>"},
	{"Tainted Jacob", "", "<Sem efeito>"},
	{"Dead Tainted Lazarus", "", "<Sem efeito>"},
	{"Tainted Jacob 2", "", "<Sem efeito>"},
	{"Tainted Forgotten Soul", "", "Tainted Soul ganha a habilidade do Recall {{Collectible714}}, para recuperar automaticamente o Tainted Forgotten à distância"},
}

---------- Trinkets ----------
local repTrinkets={
	[10] = {"10", "", "Lágrimas movem-se em ondas#↑ +0.4 Lágrimas#Lágrimas espectrais"}, -- Wiggle Worm
    [11] = {"11", "", "Lágrimas movem-se em espiral em alta velocidade#Lágrimas espectrais"}, -- Ring Worm
    [26] = {"26", "", "Lágrimas movem-se em padrões angulares#↑ +10 Alcance#Lágrimas espectrais"}, -- Hook Worm
    [33] = {"33", "", "Quando estiver com meio coração, ganhe um little Steven#Alta chance de gerar um familiar Gemini ao receber dano"}, -- Umbilical Cord
    [49] = {"49", "", "25% de chance de soltar meio coração quando pegar uma moeda"}, -- Bloody Penny
    [50] = {"50", "", "25% de chance de soltar uma bomba quando pegar uma moeda"}, -- Burnt Penny
    [51] = {"51", "", "25% de chance de soltar uma chave quando pegar uma moeda"}, -- Flat Penny
    [69] = {"69", "", "Camufla o jogador aleatoriamente#Confunde inimigos#Pode ser ussado para abrir a porta para o andar \"Home\""}, -- Faded Polaroid
    [92] = {"92", "", "↑ Aumeta as estatísticas de seus itens em 20%"}, -- Cracked Crown
    [111] = {"111", "", "Salas do item {{TreasureRoom}} agora aparecem em the Womb e Corpse"}, -- Bloody Crown
	[119] = {"119", "", "Define seu HP vermelho para 50% do seu máximo ao entrar no próximo andar#Se sua saúde está acima disso, cura meio coração vermelho"}, -- Stem Cell
    [128] = {"128", "", "5% de chance de ganhar um coração de osso ao receber dano"}, -- Finger Bone
	[129] = {"129","","Chance de atirar dentes"}, --  Jawbreaker
	[130] = {"130","","Chance de atirar lágrimas de lentidão"}, --  Chewed Pen
	[131] = {"131","","Chance de soltar meio coração de alma quando pegar uma moeda"}, --  Blessed Penny
	[132] = {"132","","Chance de ganhar o efeito de uma seringa aleatória para a sala atual"}, --  Broken Syringe
	[133] = {"133","","Bombas colocadas pelo personagem explodem mais rápido"}, --  Short Fuse
	[134] = {"134","","Aumenta o tamanho do peido"}, -- Gigante Bean
	[135] = {"135","","Chance de queimar os inimigos ao entrar em uma sala"}, --  A Lighter
	[136] = {"136","","Portas, blocos de chaves e baús dourados podem ser abertos com explosões#Também pode abrir a porta de Casas"}, --  Broken Padlock
	[137] = {"137","","Quando entrar em um novo andar, até 4 pickups não coletados do andar anterior aparecem na sala inicial"}, --  Myosotis
	[138] = {"138","","Usar um item ativador troca ele"}, --  'M
	[139] = {"139","","Lágrimas baseadas em efeito de sorte ocorre com mais frequência"}, --  Teardrop Charm
	[140] = {"140","","Pegar corações vermelhos pode convertê-los em aranhas azuis#Funciona quando estiver com a vida cheia#O efeito pode consumir corações necessários para curar"}, --  Apple of Sodom
	[141] = {"141","","Aumenta a taxa de tiro dos familiares"}, --  Forgotten Lullaby
	[142] = {"142","","No início de cada andar, gera 4 Book of Virtues {{Collectible584}} orbitais"}, --  Beth's Faith
	[143] = {"143","","Impede que o item carregue#Chance de gerar uma lil Battery quando limpa uma sala"}, --  Old Capacitor
	[144] = {"144","","Lágrimas que erram os inimigos irão ser redirecionar 90 graus em direção aos inimigos"}, --  Brain Worm
	[146] = {"146","","Salas do tesouro {{TreasureRoom}} agora contem acordos com o Diabo"}, --  Devil's Crown
	[147] = {"147","","Pegar moedas pode carregar o item ativador"}, --  Charged Penny
	[148] = {"148","","Faz com que os familiares circulem o personagem"}, --  Friendship Necklace
	[149] = {"149","","Ativa seu item ativador ao receber dano"}, --  Panic Button
	[150] = {"150","","Entrar em uma sala que requer uma chave te leva para uma sala parecida com Womb#A sala atua como um meio-termo das duas salas"}, --  Blue Key
	[151] = {"151","","Faz com que os espinhos tornam-se inofensivos#Também afeta as portas da sala da maldição {{CursedRoom}}, Mímicos e qualquer obstáculo com espinhos"}, --  Flat File
	[152] = {"152","","Faz possível aparecer um segundo Planetarium#Planetariums podem aparecem no Womb"}, --  Telescope Lens
	[153] = {"153","","A cada sala, garante o efeito de um item da Mãe aleatório"}, --  Mom's Lock
	[154] = {"154","","Quando entrar em uma nova sala, garante um item consumível Dado temporário#O Dado desaparece quando sai#Ganhe a habilidade de segurar dois consumíveis"}, --  Dice Bag
	[155] = {"155","","Gera uma Sala do Tesouro {{TreasureRoom}} na Cathedral"}, --  Holy Crown
	[156] = {"156","","Ganhe um espaço de coração#Funciona para o Keeper também"}, --  Mother's Kiss
	[157] = {"157","","A cada 15 tiros, atire uma lágrima Ipecac {{Collectible149}} + My Reflection {{Collectible5}} com maior número de alcance"}, --  Torn Card
	[158] = {"158","","Ao ser atingido, o personagem solta todos os pickups#(Exceto: Corações, Cartas, Pílulas, Runas)"}, --  Torn Pocket
	[159] = {"159","","Substitui todos os novos baús por baús trancados#Exceto: Mega Chest"}, --  Gilded Key
	[160] = {"160","","Gera uma Grab Bag ao viajar para o próximo andar"}, --  Lucky Sack
	[161] = {"161","","Gera uma Sala do Tesouro {{TreasureRoom}} no Sheol"}, --  Wicked Crown
	[162] = {"162","","Chance de transformar-se em Azazel quando entra em uma nova sala"}, --  Azazel's Stump
	[163] = {"163","","Gera 2 Dips amigáveis quando limpa uma sala"}, --  Dingle Berry
	[164] = {"164","","Gera duas bombas extras para cada bomba colocada"}, --  Ring Cap
	[165] = {"165","","No Womb e diante, substitua todos os pickup gerados por outro pickup#Bombas e Corações são mais comuns"}, --  Nuh Uh!
	[166] = {"166","","Garate o efeito de um item passivo para cada sala"}, --  Modeling Clay
	[167] = {"167","","Chance de gerar um Bony amigável quando limpa uma sala"}, --  Polished Bone
	[168] = {"168","","+1 espaço de coração de osso ao entrar em um novo andar"}, --  Hollow Heart
	[169] = {"169","","Enquanto segurar, conta como item para a transformação Guppy"}, --  Kid's Drawing
	[170] = {"170","","Concede a chance de gerar automaticamente uma sala Chave Vermelha {{Collectible580}}"}, --  Crystal Key
	[171] = {"171","","Acordos com Diabo usam moedas em vez de corações"}, --  Keeper's Bargain
	[172] = {"172","","Teleporta você para uma sala aleatória quando pega um penny#Pode teleportar para salas secretas"}, --  Cursed Penny
	[173] = {"173","","{{Warning}} USO ÚNICO {{Warning}}#Pode ser usado para pagar um acordo com o Diabo sem perder o coração"}, --  Your Soul
	[174] = {"174","","+10% de chance de acordo com Diabo"}, --  Number Magnet
	[175] = {"175","","Libera a passagem para a luta contra o Hush, independentemente da duração da corrida#Usar a Pandora's Box {{Collectible297}} gera 6 itens de lugares aleatórios"}, --  Strange Key
	[176] = {"176","","Gera um familiar que imita o movimento do personagem, direção do tiro e efeito da lágrima"}, --  Lil Clot
	[177] = {"177","","Gera um baú depois de concluir uma Sala do Desafio de monstro, ou um colecionável depois de concluir uma Sala do Desafio de chefe"}, --  Temporary Tattoo
	[178] = {"178","","O personagem explode ao receber dano"}, --  Swallowed M80
	[179] = {"179","","O movimento dos familiares será controlado pelos mesmos comandos do jogador"}, --  RC Remote
	[180] = {"180","","Familiare que seguem os movimentos exatos do personagem e disparam lágrimas espectrais#Tem o mesmo dano e efeito da lágrima do jogador"}, --  Found Soul
	[181] = {"181","","Quando ativar um item ativador, há chance de ativar um outro aleatório"}, --  Expansion Pack
	[182] = {"182","","Uma vez por andar, ao receber dano ganhe um orbital {{Collectible584}} e invencibilidade#gera 5 orbitais ao entrar em uma sala do anjo#Cria um orbital quando dá moedas á um mendigo"}, --  Beth's Essence
	[183] = {"183","","Para cada sala:#Sem seguidores: Chance de ganhar um Brother Bobby {{Collectible8}} e/ou uma Sister Maggy {{Collectible67}}# Com seguidores: Chance de adicionar uma duplicata de um seguidor"}, --  The Twins
	[184] = {"184","","Lojas podem vender familiares#Familiares vão sempre estar com desconto"}, --  Adoption Papers
	[185] = {"185","","Chance de gerar um locusts aleatório quando matar um inimigo"}, --  Cricket Leg
	[186] = {"186","","{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Ganhe 2 moscas de ataque, as quais pode mirar e atirar"}, --  Apollyon's Best Friend
	[187] = {"187","","33% de chance de adicionar um item cego extra nas salas de itens#Revela o item cego no caminho alternativo"}, --  Broken Glasses
	[188] = {"188","","Adiciona uma chance de petrificar á um inimigo quando entra em uma sala#Matar o inimigo petrificado o congela"}, --  Ice Cube
	[189] = {"189","","Ativa um escudo de 1 segundo ao matar um inimigo"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["pt_br"].trinkets)

EID.descriptions["pt_br"].goldenTrinket = "DOURADO: Efeito Dobrado!"

---------- Cards ----------
local repCards={
	[27] = {"27", "", "Troca todos os pickups, baús e inimigos não chefes em bombas"},
	[28] = {"28", "", "Troca todos os pickups, baús e inimigos não chefes em moedas"},
	[29] = {"29", "", "Troca todos os pickups, baús e inimigos não chefes em chaves"},
	[30] = {"30", "", "Troca todos os pickups, baús e inimigos não chefes em corações"},
	[39] = {"39", "", "Invencibilidades por 20 segundos"},
	[55] = {"55", "", "Ativa o efeito de uma runa aleatória#O efeito da runa é mais fraco"},
	[56] = {"56", "", "Sotla todos os seus corações e pickups#Sobra apenas meio coração#Pickups podem gerar como {{Collectible74}} {{Collectible19}} colecionáveis se a quantidade for suficiente"},
	[57] = {"57", "", "Concede um grande projétil e aura de repulsão#Dura 1 minuto"},
	[58] = {"58", "", "O Pé da Mãe pisa repetidamente por 1 minuto"},
	[59] = {"59", "", "Efeito temporário:#↑ +2 Corações#↑ +1.35 Lágrimas"},
	[60] = {"60", "", "Teleporta você para um Chefe extra com saque extra"},
	[61] = {"61", "", "Gera 2 Corações de osso"},
	[62] = {"62", "", "Gera 1 item da sala atual#Troca 1 espaço de coração vermelho ou 2 Corações de alma em um coração quebrado"},
	[63] = {"63", "", "Transforme-se em uma estátua imóvel e invencível por 10 segundos#Taxa de tiro extrema enquanto durar"},
	[64] = {"64", "", "Gera 2-4 baús dourados"},
	[65] = {"65", "", "Toca pickups e itens na sala em moedas#Os valores das moedas são iguais ao valor da loja"},
	[66] = {"66", "", "Efeito de dado aleatório"},
	[67] = {"67", "", "Inimigos na sala são enfraquecidos, desacelerados e recebem o dobro de dano"},
	[68] = {"68", "", "Transforma o personagem em Keeper por 30 segundos#Garante tiro triplo e menos velocidade#Matar inimigos solta uma moeda aleatória"},
	[69] = {"69", "", "Ativa o efeito do Book of the Dead {{Collectible545}}#(Gera uma entidades de ossos para cada inimigo morto na sala)"},
	[70] = {"70", "", "Aplica 5 efeitos de pílulas  aleatórias"},
	[71] = {"71", "", "Ativa o efeito do Bible {{Collectible33}}#Garante o familiar Seraphim {{Collectible390}}#Por 30 segundos"},
	[72] = {"72", "", "Gera 6 aglomerado de rochas e obstáculos  aleatórios"},
	[73] = {"73", "", "Remove itens passivos velhos#Gera 2 itens aleatórios da sala atual"},
	[74] = {"74", "", "Teleporta você para sala Ultra secreta#O caminho de volta serão salas vermelhas"},
	[75] = {"75", "", "Ganhe um Spirit of the Night {{Collectible159}}#↑ +1.5 Dano#Para o andar atual#Troca corações vermelhos em corações de osso, mas reverte quando o efeito acaba#Aplica Curse of Darkness"},
	[76] = {"76", "", "Gera uma Restock Machine"},
	[77] = {"77", "", "Gera um alçapão para o crawl space"},
	[78] = {"78", "", "Uma vez, use a chave vermelha {{Collectible580}}"},
	[79] = {"79", "", "Gera 1-12 corações vermelhos"},
	[80] = {"80", "", "Copia o efeito da pílula, carta, runa, pedra da alma ou item ativador usados por ultimo"},
	[81] = {"81", "", "Troca todos os itens na sala#Volta todos os itens após um segundo#Efeito se repete"},
	[82] = {"82", "", "Circunda o personagem com uma aura vermelha borbulhante para a sala atual#Inimigos mortos solta metade de um coração vermelho que desaparece em 2 segundos"},
	[83] = {"83", "", "Cria salas vermelas com Chaves Vermelhas {{Collectible580}} para cada saída possivel"},
	[84] = {"84", "", "Transforma o personagem em um fantasma que pode atravessar inimigos para paralisa-los#Depois de alguns segundos, vai atacar todos eles, ganhando bônus de dano por alvo"},
	[85] = {"85", "", "Causa 8 peidos venenosos com trilha#Depois gera uma trilha de 7 Butt Bombs#Ficar na trilha garante ↑ +1.35 Lágrimas e ↑ +1 Dano"},
	[86] = {"86", "", "14 familiares Dead Bird voam e atacam inimigos#Dura para a sala atual"},
	[87] = {"87", "", "Transforme-se em Samson com ataques corpo-a-corpo por 10 segundos#↑ +0.4 Velocidade#↑ Lágrimas#↑ +3 Dano"},
	[88] = {"88", "", "Ativa Mega Blast {{Collectible441}} por 7.5 segundos"},
	[89] = {"89", "", "Ao morrer, reviva instantaneamente com meio coração e algum tempo de invencibilidade#Usado automaticamente quando recebe um dano fatal#Como uma vida extra"},
	[90] = {"90", "", "Ativa o efeito do D6 {{Collectible105}} e D20 {{Collectible166}} #Os itens trocados vem de salas aleatórias"},
	[91] = {"91", "", "Morra e transforme-se em The Lost para a sala atual"},
	[92] = {"92", "", "Ganhe 1 familiar aleatório"},
	[93] = {"93", "", "Gera 3-25 moedas aleatórias"},
	[94] = {"94", "", "Gera 15 moscas locust aleatória"},
	[95] = {"95", "", "Gera The Forgotten como um personagem secundário temporário para a sala atual"},
	[96] = {"96", "", "Gera 6 Book of Virtues {{Collectible584}} orbital com propriedades aleatórias"},
	[97] = {"97", "", "Gera Esau como um personagem secundário temporário para a sala atual"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["pt_br"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "", "Troca o número de bombas com chaves#Bombas e chaves douradas também são trocadas"},
	[12] = {"11", "", "↓ -0.6 Alcance"},
	[13] = {"12", "", "↑ +0.45 Alcance"},
	[42] = {"41", "", "Atrasse todos os inimigos e o personagem na sala"},
	[43] = {"42", "", "Acelere todos os inimigos e o personagem na sala#Ativa novamente depois de 30 e 60 segundos"},
	[48] = {"47", "", "↓ -0.15 Velocidade de disparo"},
	[49] = {"48", "", "↑ +0.15 Velocidade de disparo"},
	[50] = {"49", "", "↑ Aumenta 1 status aleatório#↓ Diminua 1 algum outro status aleatório#Não diminuirá com PHD"},
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["pt_br"].pills)

EID.descriptions["pt_br"].horsepills={
	{"0", "", "Envenamento ao entrar na sala"}, -- Bad Gas
	{"1", "", "Causa 2 corações de dano a você"}, -- Bad Trip
	{"2", "", "+4 Corações de alma"}, -- Balls of Steel
	{"3", "", "Troca o número de bombas pelo número de chaves#Aumenta o número de bombas e chaves em 50%#Bombas douradas e chaves também são trocadas"}, -- Bombs are Key
	{"4", "", "Gera algumas mega bombas trolls na sua posição"}, -- Explosive Diarrhea
	{"5", "", "Enche a vida#+3 Corações de alma"}, -- Full Health
	{"6", "", "↓ -2 Saúde"}, -- Health Down
	{"7", "", "↑ +2 Espaços de corações vazios"}, -- Health Up
	{"8", "", "Sem efeito"}, -- I Found Pills
	{"9", "", "Sem efeito"}, -- Puberty
	{"10", "", "Adiciona 1 Big Fan orbital {{Collectible279}}#Não há limite superior"}, -- Pretty Fly
	{"11", "", "↓ -1.2 Alcance"}, -- Range Down
	{"12", "", "↑ +0.9 Alcance"}, -- Range Up
	{"13", "", "↓ -0.24 Velocidade"}, -- Speed Down
	{"14", "", "↑ +0.3 Velocidade"}, -- Speed Up
	{"15", "", "↓ -0.56 Lágrimas"}, -- Tears Down
	{"16", "", "↑ +0.70 Lágrimas"}, -- Tears Up
	{"17", "", "↓ -2 Sorte"}, -- Luck Down
	{"18", "", "↑ +2 Sorte"}, -- Luck Up
	{"19", "", "Teletransporta para uma sala aleatória"}, -- Telepills
	{"20", "", "Recarrega seu item de ativação#Gera baterias"}, -- 48 Hour Energy!
	{"21", "", "Drena todos os seus espaços de corações, mas vai restar apenas um#Gera corações vermelhos"}, -- Hematemesis
	{"22", "", "Você não pode se mover por 4 segundos"}, -- Paralysis
	{"23", "", "Abra a sala secreta do andar atual#Ganha visão do mapa"}, -- I can see forever!
	{"24", "", "Transforma cada inimigo da sala em amigo permanente"}, -- Pheromones
	{"25", "", "Esconde o mapa do andar atual"}, -- Amnesia
	{"26", "", "Enche a poça no chão, o que causa danos aos inimigos"}, -- Lemon Party
	{"27", "", "Atire na diagonal por 60 segundo"}, -- R U a Wizard?
	{"28", "", "Receba apenas metade do dano para a sala atual"},  -- Percs!
	{"29", "", "Recebe um dano de coração cheio na sala atual"}, -- Addicted!
	{"30", "", "Gera um cocô enquanto anda por 4 segundos"}, -- Re-Lax
	{"31", "", "Efeito do Curse of the maze no andar atual"}, -- ???
	{"32", "", "Aumenta seu tamanho#Não afeta sua hitbox"}, -- One makes you larger
	{"33", "", "diminui seu tamanho#Sua hitbox também diminui"}, -- One makes you small
	{"34", "", "Gera 2 aranhas azuis por cocô na sala"}, -- Infested!
	{"35", "", "Gera 2 aranhas azuis por inimigo na sala#Gera 2-6 aranhas azuis quando não há inimigos na sala"}, -- Infested?
	{"36", "", "Curto efeito de invencibilidade#↑ #7 Dano#↑ +3 Alcance#Durante a sala atual"}, -- Power Pill!
	{"37", "", "Pixeliza a tela por 90 segundos"}, -- Retro Vision
	{"38", "", "Gera 6 moscas azuis"}, -- Friends Till The End!
	{"39", "", "Gera uma poça escorregadia"}, -- X-Lax
	{"40", "", "Gera uma poça de lentidão"}, -- Something's wrong...
	{"41", "", "Efeito de lentidão em todos os inimigos da sala"}, -- I'm Drowsy...
	{"42", "", "Aumenta a velocidade de todos os inimigos da sala"}, --I'm Excited!!!
	{"43", "", "Consome o trinket que segura e ganha o efeito dele permanentemente"}, -- Gulp!
	{"44", "", "Dispara um cacho de lágrimas de ipecac"}, -- Horf!
	{"45", "", "Curto efeito de invencibilidade#Amedronta todos os inimigos#Dois inimigos comidos reabastecem meio coração"}, -- Feels like I'm walking on sunshine!
	{"46", "", "Gera a última pílula usada como horse"}, -- Vurp!
	{"47", "", "↓ -0.3 Velocidade de disparo"}, -- Shot Speed Down
	{"48", "", "↑ +0.3 Velocidade de disparo"}, -- Shot Speed Up
	{"49", "", "↑ Aumenta 1 status aleatório duas vezes#↓ Diminue 1 status aleatório duas vezes#Não vai diminuir com PHD"}, -- Experimental Pill
}

EID.descriptions["pt_br"].CraftingRoomContent = "Pickups na sala:"
EID.descriptions["pt_br"].CraftingResults = "Resultado:#(Rolar: Segurar TAB + Atirar △/▽)"