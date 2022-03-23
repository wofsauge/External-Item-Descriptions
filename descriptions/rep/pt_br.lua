------------------------------------------------------
-----  Basic Portuguese (Brazil) descriptions    -----
-----  By: LuanRoger, NotZin0 and JorgeLNJunior  -----
------------------------------------------------------

-- Last Sync with en_us: 11.11.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Portuguese (Brazil) letters: 
-- ãÃ áÁ àÀ âÂ çÇ éÉ êÊ íÍ õÕ óÓ ôÔ úÚ

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning
local languageCode = "pt_br"

local repCollectibles={
	[2] = {"2", "", "Disparo triplo#↓ {{Tears}} -49% Velocidade de disparo"},
	[5] = {"5", "", "Dá às lágrimas efeito de boomerang#↑ {{Range}} +1.5 Alcance#↑ {{Range}} +60% Alcance adicional#↑ {{Shotspeed}} +0.6 Velocidade de disparo"}, -- My Reflection
	[6] = {"6", "", "↑ {{Tears}} +1.5 Lágrimas#↓ {{Range}} -1.5 Alcance#↓ {{Range}} -20% Alcance adicional"}, -- Number One
	[7] = {"7", "", "↑ {{Damage}} +1 Dano#↑ {{Damage}} +50% se você tem o Book of Belial ou o efeito do Devil Card ativo"}, -- Blood of the Martyr
	[12] = {"12", "", "↑ {{Heart}} +1 Saúde#Saúde cheia!#↑ {{Damage}} +0.3 Dano#↑ {{Damage}} +50% Multiplicador de Dano#↑ {{Range}} +1.5 Alcance#↑ {{Speed}} +0.3 Velocidade"},
	[13] = {"13", "", "{{Poison}} Toque venenoso#↑ {{Speed}} +0.2 Velocidade"}, -- The Virus
	[14] = {"14", "", "↑ {{Speed}} +0.3 Velocidade#↑ {{Range}} +1.5 Alcance"}, -- Roid Rage
	[18] = {"18", "", "{{Coin}} +100 Moedas"}, -- A Dollar
	[22] = {"22", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura um Coração Vermelho"}, -- Lunch
	[23] = {"23", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura um Coração Vermelho"}, -- Dinner
	[24] = {"24", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura um Coração Vermelho"}, -- Dessert
	[25] = {"25", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura um Coração Vermelho"}, -- Breakfast
	[26] = {"26", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura um Coração Vermelho"}, -- Rotten Meat
	[29] = {"29", "", "↑ {{Range}} +1.5 Alcance#Gera 3-6 moscas azuis"}, -- Mom's Underwear
	[30] = {"30", "", "↑ {{Range}} +1.5 Alcance#Tocar o inimigo causa 12 de dano"}, -- Mom's Heels
	[31] = {"31", "", "↑ {{Range}} +2.25 Alcance#Gera 1 coração aleatório"}, -- Mom's Lipstick
	[34] = {"34", "", "↑ +2 Dano#↑ {{DevilChance}} / {{AngelChance}} +12.5% de chance da Sala do Anjo/Diabo#↑ {{Damage}} +50% Multiplicador de dano se você tiver Blood of the Martyr"}, -- The Book of Belial
	[37] = {"37", "", "Solta uma grande bomba abaixo do jogador que causa 185 de dano"}, -- Mr. Boom
	[40] = {"40", "", "Causa uma grande explosão no local do jogador#Causando 185 de dano"}, -- Kamikaze!
	[42] = {"42", "", "{{Poison}} Bomba de veneno arremessável#Causa 185 de dano + seu dano#Cria uma nuvem de veneno"}, -- Bob's Rotten Head
	[44] = {"44", "", "Teleporta o personagem para uma sala aleatória exceto salas I AM ERROR#Influencie um pouco a direção movendo-se na direção desejada"}, -- Teleport
	[45] = {"45", "", "Cura 1 coração vermelho#Também cura outros jogadores em meio coração"}, -- Yum Heart
	[46] = {"46", "", "↑ {{Luck}} +1 Sorte#Maior chance de ganhar em jogos#Aumenta a chance de item ao limpar uma sala#Transforma algumas pílulas ruims em boas"}, -- Lucky Foot
	[50] = {"50", "", "↑ {{Damage}} +1 Dano"}, -- Steven
	[52] = {"52", "", "{{Bomb}} Lágrimas de bomba#{{Damage}} Cada bomba causa 10x o seu dano#Se isso resultar em mais de 60 de dano, então causa 5x o seu dano + 30#↓ {{Tears}} -60% Lágrimas"}, --Dr. Fetus
	[53] = {"53", "", "Atração magnética para pickups#Abre baús remotamente, ignora o dano dos espinhos dos baús"}, -- Magneto
	[55] = {"55", "", "Chance de atirar uma lágrima para trás#{{Luck}} 100% de chance com 5 de sorte"}, -- Mom's Eye
	[59] = {"59", "", "<Item not obtainable>"}, -- The Book of Belial (Judas's Birthright Version)
	[62] = {"62", "", "↑ {{Damage}} +0.3 Dano#Cura meio coração a cada 13 inimigos mortos"}, -- Charm of the Vampire
	[64] = {"64", "", "{{Shop} -50% em itens da loja#Obter este item várias vezes reduz ainda mais o preço"}, -- Steam Sale
	[67] = {"67", "", "Familiar que atira lágrimas#6 de dano por lágrima"}, -- Sister Maggy
	[70] = {"70", "", "↑ {{Damage}} +1 Dano#↑ {{Speed}} +0.2 Velocidade"}, -- Growth Hormones
	[71] = {"71", "", "↑ {{Speed}} +0.3 Velocidade#↑ {{Range}} +1.5 Alcance#↑ Diminue seu tamanho"}, -- Mini Mush
	[72] = {"72", "", "{{SoulHeart}} +3 Coração de alma#↑ {{Tears}} 0.5 Lágrimas#{{Collectible33}} The Bible é mais comum"}, -- Rosary
	[77] = {"77", "", "Invencibilidade#20 de dano ao contato"}, -- My Little Unicorn
	[78] = {"78", "", "{{SoulHeart}} +1 Coração de alma#O Chefe é substituído por um Cavaleiro se usado#↑ {{AngelChance}}/{{DevilChance}} +17.5% de chance da Sala do Diabo ou Anjo"}, -- Book of Revelations
	[79] = {"79", "", "↑ {{Damage}} +1 Dano#↑ {{Speed}} +0.2 Velocidade#{{BlackHeart}} +1 Coração negro"}, -- The Mark
	[80] = {"80", "", "↑ {{Damage}} +0.5 Dano#↑ {{Tears}} +0.7 Lágrimas#{{BlackHeart}} +2 Coração negro"}, -- The Pact
	[83] = {"83", "", "{{HalfBlackHeart}} + Meio Coração negro#↑ {{Damage}} +2 Dano#↓ {{Speed}} -0.18 Velocidade#Dano ao contato#Esmaga pedras ao andar sobre elas"}, -- The Nail
	[87] = {"87", "", "25% de chance de disparar nas 4 direções#{{Luck}} 100% de chance com 15 de Sorte"}, -- Loki's Horns
	[91] = {"91", "", "Revela o tipo das 2 próximas salas adjacentes#Também pode revelar: #{{SecretRoom}} Salas Secretas#{{SuperSecretRoom}} Salas Super Secretas#{{MiniBoss}} Salas de Mini-Boss#Bloqueia projéteis vindos de cima/teto"}, -- Spelunker Hat
	[98] = {"98", "", "{{SoulHeart}} Gera 1 Coração de alma a cada 7-8 salas"}, -- The Relic
	[101] = {"101", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 Coração vermelho#↑ {{Damage}} +0.3 Dano#↑ {{Tears}} +0.2 Lágrimas#↑ {{Range}} +0.38 Alcance#↑ {{Speed}} +0.3 Velocidade#"}, -- The Halo
	[106] = {"106", "", "↑ Dano de bomba x1.85#{{Bomb}} +5 Bombas"}, -- Mr. Mega
	[110] = {"110", "", "Chance de atirar lágrimas congelantes#↑ {{Range}} +0.38 Alcance"}, -- Mom's Contacts
	[118] = {"118", "", "{{Chargeable}} Carregável#Dispara um laser de sangue que causa dano constante#↓ {{Tears}} -67% Velocidade de disparo"},
	[121] = {"121", "", "↑ {{Heart}} +1 Saúde#↑ {{Damage}} +1 Dano#↑ {{Range}} +0.38 Alcance#↓ {{Speed}} -0.2 Velocidade"}, -- Odd Mushroom (Large)
	[123] = {"123", "", "Gera um familiar aleatório#Dura para o andar atual"}, -- Monster Manual
	[129] = {"129", "", "↑ {{Heart}} +2 Espaço de coração#↓ {{Speed}} -0.2 Velocidade"}, -- Bucket of Lard
	[135] = {"135", "", "Máquina de doação de sangue portátil#Meio coração = 1-2 Coin#{{HardMode}} 1 moeda no Modo Difícil#{{Player14}} 0-1 moeda como Keeper"}, --IV Bag
	[138] = {"138", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 coração vermelho#↑ {{Damage}} +0.3 Dano"}, -- Stigmata
	[139] = {"139", "", "{{Trinket}} Você pode segurar 2 trinkets#{{Trinket}} Gera 1 trinket aleatório"}, -- Mom's Purse
	[140] = {"140", "", "{{Poison}} Bombas envenenadas#{{Bomb}} +5 Bombas#{{Bomb}} Bombas deixam uma nuvem de veneno#{{Poison}} Deixa você imune a dano de veneno"}, -- Bob's Curse
	[147] = {"147", "", "Quebra pedras e danifica inimigos#Batendo com o machado reduz sua carga#Recarrega ao ir para o próximo andar"}, -- Notched Axe
	[148] = {"148", "", "Gera 2-6 moscas quando você for danificado"}, -- Infestation
	[149] = {"149", "", "{{Poison}} Lágrimas explosivas venenosas#↑ {{Damage}} +40 Dano#↓ {{Shotspeed}} -0.2 Velocidade de disparo#↓ {{Tears}} -67% Taxa de disparo#↓ {{Range}} Alcance"}, -- Ipecac
	[152] = {"152", "", "Substitui as lágrimas do olho direito por um laser de alcance ilimitado#{{Damage}} Laser causa 13% do seu dano#↓ {{Tears}} 33% Lágrimas"}, -- Technology 2
	[153] = {"153", "", "Disparo quádruplo!#↓ {{Tears}} -58% Velocidade de disparo"}, -- Mutant Spider
	[155] = {"155", "", "Voa ao redor da sala#Causa 17.1 da dano ao contato#↑ Lágrimas disparadas pelo olho esquerdo causam 34% de dano a mais"}, -- The Peeper
	[158] = {"158", "", "Revela todo o mapa#Gera um: #{{SoulHeart}} Coração de alma#{{Card}} Carta aleatória#{{Rune}} Runa aleatória#Enquanto segurar: #↑ {{PlanetariumChance}} +15% Chance de Planetário#↑ {{PlanetariumChance}} 100% se uma {{TreasureRoom}} Sala do Item for pulada"}, -- Crystal Ball
	[169] =	{"169", "", "↑ {{Damage}} +100% Dano#↑ {{Damage}} +4 Dano adicional#↓ {{Tears}} -58% Velocidade de disparo#Lágrimas continuam depois de matar um inimigo"}, -- Polyphemus
	[171] = {"171", "", "{{Slow}} Atrasse os inimigos por 4 segundos#Cause 10 de dano á todos os inimigos#Inimigos mortos com isso gera aranhas azuis"}, -- Spider Butt
	[172] = {"172", "", "Faca orbital#Bloqueia os tiros dos inimigos#Causa 112.5 de dano por segundo"}, -- Sacrificial Dagger
	[176] = {"176", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 Coração Vermelho#↑ {{Shotspeed}} +0.16 Velocidade de disparo"}, -- Stem Cells
	[178] = {"178", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}}#Lança-se na direção do tiro do personagem#Causa 7 ao contato#Deixa uma poça no local arremessado"},
	[182] = {"182", "", "↑ {{Heart}} +1 Saúde#↑ {{Damage}} 230% + 1 Dano#↓ {{Tears}} -0.4 Lágrimas#↓ {{Shotspeed}} -0.25 Velocidade de disparo#Lágrimas teleguiadas#{{Heart}} Saúde cheia"}, -- Sacred Heart
	[184] = {"184", "", "Voo#↑ {{Heart}} +1 Saúde#{{Heart}}Cura 1 Coração vermelho"}, -- Holy Grail
	[188] = {"188", "", "Espelha seus movimentos#Dispara em direção ao jogador#Causa 3.5 de dano por disparo#{{Player2}} Cusa 7.5 de dano como Cain"}, -- Abel
	[189] = {"189", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Vida completa#↑ {{Damage}} +0.3 Dano#↑ {{Tears}} +0.2 Lágrimas#↑ {{Range}} +1.5 Alcance#↑ {{Speed}} +0.2 Velocidade"}, -- SMB Super Fan
	[192] = {"192", "", "Lágrimas teleguiadas para a sala atual#↑ {{Range}} +3 Alcance"}, -- Telepathy for Dummies
	[193] = {"193", "", "↑ {{Heart}} +1 Saúde#↑ {{Damage}} +0.3 Dano#{{Heart}} Cura 1 Coração vermelho"}, -- MEAT!
	[194] = {"194", "", "↑ {{Shotspeed}} +0.16 Velocidade de disparo#{{Card}} +1 carta#↑ {{PlanetariumChance}} +15% de chance de Planetário"}, -- Magic 8 Ball
	[197] = {"197", "", "↑ {{Damage}} +0.5 Dano#↑ {{Range}} +0.38 Alcance"}, -- Jesus Juice
	[203] = {"203", "", "Chance de gerar a versão dupla de pickups"}, -- Humbling Bundle
	[205] = {"205", "", "-Meio coração = Carrega um slot do seu item ativador ao pressionar a barra de espaço"}, -- Sharp Plug
	[206] = {"206", "", "↑ {{Damage}} +1 Dano#↑ {{Tears}} +0.5 Taxa de disparo#Sua cabeça agora é um orbital que não recebe dano e causa 105 ao contato#Você ainda continua atirando pela cabeça"}, -- Guillotine
	[211] = {"211", "", "Gera 3-5 aranhas quando receber dano"}, -- Spiderbaby
	[214] = {"214", "", "↑ {{Range}} +1.5 Alcance#Deixa um rastro no chão ao receber dano#Causa dano ao contato"}, -- Anemic
	[218] = {"218", "", "↑ {{Heart}} +1 Saúde#Cura 1 Coração vermelho#Chance de curar meio coração a cada minuto"}, -- Placenta
	[222] =	{"222", "", "Segurando o botão de disparo faz com que as lágrimas parem no ar#Quando soltar, elas vão continuar na direção onde estavam indo#↑ {{Tears}} +1 Lágrimas"}, -- Anti-Gravity
	[224] = {"224", "", "Lágrimas se dividem em quatro quando acerta um inimigo#Lágrimas divididas dão a metade do dano#↓ {{Range}} -20% Alcance#↑ {{Tears}} +0.5 Taxa de disparo"}, -- Cricket's Body
	[228] = {"228", "", "{{Fear}} 15% de chance de atirar lágrimas de medo#↑ {{Tears}} +0.5 Lágrimas"}, -- Mom's Perfume
	[229] =	{"229", "", "As lágrimas agora podem ser carregadas e atiradas no estilo de ataque de uma shotgun#↓ {{Tears}} 4.3x Atraso de lágrima"}, -- Monstro's Lung
	[230] = {"230", "", "↑ {{Damage}} +1.5 Dano#↑ {{Speed}} +0.2 Velocidade#{{Fear}} Lágrimas de medo#Converte todos os espaços de {{Heart}} Coração Vermelho em {{BlackHeart}} Corações Negro#{{BlackHeart}} +2 Corações negro"}, -- Abaddon
	[232] = {"232", "", "{{Slow}} Efeito permanente de lentidão em inimigos#↑ {{Speed}} +0.3 Velocidade"}, -- Stop Watch
	[233] = {"233", "", "Lágrimas orbitam ao redor de você#↑ {{Range}} +6.5 Alcance#Lágrimas espectrais"}, -- Tiny Planet
	[240] = {"240", "", "↑ Aumenta 4 estatísticas aleatoriamente#↓ Diminui 2 estatísticas aleatoriamente"}, -- Experimental Treatment
	[245] = {"245", "", "Dobra todos os seu tiros#↓ {{Damage}} -25% Dano"}, -- 20/20
	[248] = {"248", "", "Aranhas/Moscas azuis dão o dobro de dano#Familiares baseados em aranhas/moscas ficam mais fortes"}, -- Hive Mind
	[253] = {"253", "", "↑ {{Luck}} +1 Sorte#↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 Coração vermelho"}, -- Magic Scab
	[254] = {"254", "", "!!! Aplicado apenas no olho esquerdo#↑ {{Damage}} +1 Dano#↑ {{Range}} +1.5 Alcance"}, -- Blood Clot
	[256] = {"256", "", "{{Bomb}} +5 Bombas#{{Burning}} Bombas flamejantes#Bombas inflige dano ao contato"}, -- Hot Bombs
	[261] = {"261", "", "↑ {{Damage}} +0.5 Dano#↓ {{Damage}} O dano causado diminue de acordo com a distancia que a lágrima precorre#{{Damage}} 300% de dano à queima-roupa"}, -- Proptosis
	[262] = {"262", "", "{{BlackHeart}} +1 Coração negro#Quando com menos de 1 coração, cause dano a todos os inimigos na sala#Corações negros dão o dobro de dano"}, -- Missing Page 2
	[263] = {"263", "", "{{Rune}} Copia os efeitos da runa ou pedra da alma atual#{{Rune}} Solta 1 runa aleatória ao pegar"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "", "Familiar arremessável#Explode ao tocar um inimigo (causa 100 de dano)#O dano ignora armadura"}, -- Bob's Brain
	[274] = {"274", "", "Quando for danificado, ganhar um orbital de médio alcance#Orbital causa 150 de dano por segundo"}, -- Best Bud
	[275] = {"275", "", "{{Collectible118}} Atira um laser de brimstone#O tiro causa 2 de dano ao contato, para um total de 20 de dano"}, -- Lil Brimston
	[276] = {"276", "", "Ganhe um corpo invulnerável#!!! Quando o coração for atingido, você sofre dano#Carrega ao disparar e libera uma explosão de lágrimas"}, -- Isaac's Heart
	[278] = {"278", "", "{{Heart}} Converte 1.5 Coração vermelho em: #{{SoulHeart}} / {{BlackHeart}} 1 Coração Alma/Negro#{{Pill}} pílula#{{Card}} carta#{{Rune}} runa#Uma aranha"}, -- Dark Bum
	[280] = {"280", "", "Gera aranhas azuis aleatoriamente quando entra em uma sala hostil#Encanta os inimigos com os quais entra em contato"}, -- Sissy Longlegs
	[283] = {"283", "", "Troca todos os pedestais, status, pickups e todos os seus itens passivos atuais#Duplica 1 pickup aleatório na sala#Reinicia a sala atual e retorna com inimigos diferentes#Troca as pedras na sala"}, -- D100
	[285] = {"285", "", "Troca todos os inimigos na sala#Tenta troca-los por inimigos com HP máximo semelhante"}, -- D10
	[287] = {"287", "", "Revela partes do mapa#Concede apenas efeitos de mapeamento que você ainda não possui"}, -- Book of Secrets
	[288] = {"288", "", "Gera 4-8 aranhas azuis"}, -- Box of Spiders
	[289] = {"289", "", "Joga fogo vermelho#O fogo persiste até causar 23 dano ao contato ou após 10 segundos"}, -- Red Candle
	[291] = {"291", "", "!!! Mata instantaneamente inimigos e chefes cocôs!#Transforma todos os inimigos em cocôs#Apaga fogueiras#Transforma poças de lava em terreno andável"}, -- Flush!
	[292] = {"292", "", "!!! {{AngelRoom}} Pegar esse item prende você a Acordos com o Diabo pelo resto da corrida#{{BlackHeart}} +1 Coração negro#Quando usado antes de uma luta com o chefe, o item da Sala do Chefe será um acordo com o Diabo"}, -- Satanic Bible
	[294] = {"294", "", "Recua inimigos e projéteis próximos#Inimigos empurrados contra obstáculos recebem 10 de dano"}, -- Butter Bean
	[295] = {"295", "", "Danifica todos os inimigos da sala com 2x o seu dano + 10 #Preço: 1 moeda"}, -- Magic Fingers
	[296] = {"296", "", "Converte 1 Coração de alma ou negro em 1 coração vermelho"}, -- Converter
	[297] = {"297", "", "!!! USO ÚNICO !#Gera itens baseados no andar em que for ativado:#B1: 2 {{SoulHeart}}#B2: 2 {{Bomb}} e 2 {{Key}}#C1: 1 {{BossRoom}} item#C2: B1+C1#D1: 4 {{SoulHeart}}#D2: 20 {{Coin}}#W1: 2 {{BossRoom}} itens#W2: {{Collectible33}} The Bible#???/Void: Nada#Sheol: 1 {{DevilRoom}} item + 1 {{BlackHeart}}#Catch: 1 {{AngelRoom}} item +  1 {{EternalHeart}}#Dark Room: {{Collectible523}} Destranca Moving Box#Chest: 1 {{Coin}}#Home: {{Collectible580}} Red Key"}, -- Pandora's box
	[300] = {"300", "", "↑ {{Speed}} +0.25 Velocidade#Danifica os inimigos ao contato#Correr rápido o suficiente evita dano por contato"}, -- Aries
	[307] = {"307", "", "↑ {{Heart}} +1 Saúde#↑ {{Damage}} +0.5 Dano#↑ {{Speed}} +0.1 Velocidade#↑ {{Range}} +0.75 Alcance#↑ {{Tears}} +0.5 Lágrimas#Dá uma chave, bomba e moeda"}, -- Capricorn
	[308] = {"308", "", "Deixa um rastro#{{Damage}} Causa 66% do seu dano por segundo#Rastro sinergiza com efeitos da lágrima"}, -- Aquarius
	[309] =	{"309", "", "↑ {{Tears}} +0.5 Lágrimas#Aumenta o recuo das lágrimas"}, -- Pisces
	[310] =	{"310", "", "↑ {{Damage}} 2x Dano#↓ {{Tears}} -33% Lágrimas#↓ {{Shotspeed}} -0.5 Velocidade de disparo"}, -- Eve's Mascara
	[314] = {"314", "", "↑ {{Heart}} +1 Saúde#↓ {{Speed}} -0.4 Velocidade#{{Heart}} Cura 1 Coração vermelho#Destrói rochas quando andar sobre elas"}, -- Thunder Thighs
	[315] = {"315", "", "Lágrimas magnéticas#Afeta inimigos, pickups e trinkets#Itens serão atraídas para onde as lágrimas caem"}, -- Strange Attractor
	[320] = {"320", "", "Mosca controlável#Causa 3.5 de dano ao contato"}, -- ???'s Only Friend
	[326] = {"326", "", "Segurar a barra de espaço até que a barra de carga esteja vazia concederá invencibilidade#Raios de luz atingirão o inimigo que te tocar#!!! Não segure por muito tempo!"}, -- Breath of Life
	[328] = {"328", "", "↑ {{Damage}} +1 Dano#Danifica todos os inimigos na sala ao ser atingido em meio coração vermelho ou nenhum"}, -- The Negative
	[330] = {"330", "", "↑ {{Tears}} 5.5x Velocidade de disparo#↓ {{Damage}} -80% Dano#Reduz o recuo drasticamente"}, -- Soy Milk
	[331] = {"331", "", "↑ {{Damage}} +0.5 Dano#↓ {{Tears}} -0.3 Lágrimas#↓ {{Shotspeed}} -0.3 Velocidade de disparo#Lágrimas ganham aura que danifica os inimigos#Lágrimas teleguiadas"}, -- Godhead
	[336] = {"336", "", "Lágrimas penetrantes#Lágrimas espectrais#↓ {{Range}} -1.5 Alcance#↓ {{Shotspeed}} -0.4 Velocidade de disparo#↑ {{Tearsize}} +50% Tamanho da lágrima"}, -- Dead Onion
	[339] = {"339", "", "↑ {{Range}} +1.5 Alcance#↑ {{Shotspeed}} +0.16 Velocidade de disparo#{{BlackHeart}} +1 Coração negro"}, -- Safety Pin
	[342] = {"342", "", "↑ {{Heart}} +1 Saúde#↑ {{Tears}} +0.7 Lágrimas#↓ {{Shotspeed}} -16% Velocidade de disparo#Cura 1 Corações vermelhos"}, -- Blue Cap
	[344] = {"344", "", "{{BlackHeart}} +1 Coração negro#{{Bomb}} Gera 2-3 Bombas pickups#{{Trinket41}} Gera o Match Stick trinket"}, -- Match Book
	[345] = {"345", "", "↑ {{Damage}} +1 Dano#↑ {{Range}} +1.5 Alcance"}, -- Synthoil
	[346] = {"346", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 coração"}, -- A Snack
	[350] = {"350", "", "{{Poison}} No começo de cada sala, todo inimigo fica envenenado#{{Poison}} Concede imunidade a nuvens tóxicas"}, -- Toxic Shock
	[352] = {"352", "", "Dispara uma grande lágrima espectral ((DMG + 1) + 10)#!!! Quando você sofre dano (danificar a si próprio não conta):#Você perderá 2 corações extras de saúde#↑ {{Range}} +1.5 Alcance"}, -- Glass Canon
	[354] = {"354", "", "↑ {{Heart}} +1 Saúde#{{Trinket}} Gera um triket aleatório no andar#{{Heart}} Cura 1 coração vermelho"}, -- Crack Jacks
	[355] = {"355", "", "↑ {{Range}} +0.38 Alcance#↑ {{Luck}} +1 Sorte# {{SoulHeart}} +1 Coração de alma"}, -- Mom's Pearl
	[360] = {"360", "", "Atira as mesmas lágrimas que o personagem em termos de status e efeito#{{Damage}} Causa 75% do seu dano#{{Player14}} Causa 100% do seu dano quando jogar como Lilith"}, -- Incubus
	[366] = {"366", "", "{{Bomb}} +5 Bombas#{{Bomb}} Faz com que suas bombas explodam em 4-5 bombas menores"}, -- Scatter Bombs
	[368] =	{"368", "", "{{Tears}} Atirar em uma direção faz aumentar gradualmente sua velocidade de disparo para até 200%"}, -- Epiphora
	[369] = {"369", "", "↑ {{Range}} +3.0 Alcance#As lágrimas percorrem as paredes e aparecem na parede oposta"}, -- Continuum
	[370] = {"370","",  "↑ {{Tears}} +0.7 Lágrimas#↑ {{Range}} +1.5 Alcance#{{Heart}} Gera 3 tipos de corações diferentes quando pego"}, -- Mr. Dolly
	[374] = {"374", "", "10% de chance aleatória de atirar lágrimas sagradas, que irá gerar um feixe de luz ao acertar um inimigo#{{Damage}} O feixa causa 3X o seu dano#50% de chance com 9 de Sorte"}, -- Holy Light
	[375] = {"375", "", "Imunidade a explosões#Chance de desviar projéteis"}, -- Host hat
	[376] = {"376", "", "Gera 3 pickups aleatórios#Loja reestoca os itens depois de comprar um#Itens reestocados tem custo menor"}, -- Restock
	[382] = {"382", "", "Pode ser arremessado em um inimigo para capturá-lo#No próximo isso vai solta-lo como inimigo amigo#Caminhar sobre a bola após a captura recarregará instantaneamente o item"}, -- Friendly Ball
	[384] = {"384", "", "Será lançado e deslizará pela sala#Causa 5-20 de dano por acerto dependendo do tempo de carga"}, -- Lil Gurdy
	[389] = {"389", "", "{{Rune}} Gera uma runa ou Soul Stone aleatória a cada 7-8 salas"}, -- Rune Bag
	[393] = {"393", "", "{{Poison}} Chance aleatória de atirar lágrimas envenenadas#{{Poison}} Envenena os inimigos ao contato#{{BlackHeart}} Inimigos mortos por contato tem 20% de chance de soltar um Coração negro"}, -- Serpent`s Kiss
	[394] = {"394", "", "Atira lágrimas automaticamente em direção ao alvo vermelho no chão que é controlado pelo jogador#↑ {{Tears}} +0.7 Lágrimas#↑ {{Range}} +3.0 Alcance#Familiares atiram em direção ao alvo"}, -- Marked
	[395] = {"395", "", "{{Chargeable}} Carregável#Ganha a habilidade de atirar um anel de lazer que atravessa a sala#Dano baseado no progresso de carga#100% de dano na carga completa"}, -- Tech X
	[397] = {"397", "", "As lágrimas do personagem agora viajam diretamente para a frente seguindo um feixe de luz, mas também vão se mover para os lados com base no movimento do jogador#↑ {{Tears}} +0.5 Lágrimas#↑ {{Range}} +1.5 Alcance#↑ {{Shotspeed}} +0.16 Velocidade de disparo"}, -- Tractor Beam
	[399] = {"399", "", "{{Chargeable}} Carregável#Depois de disparar lágrimas por 3 segundos, cria um anel preto danificando os inimigos dentro dele"}, -- Maw of the Void
	[401] = {"401", "", "Chance de atirar lágrima de bombas pegajosas#Lágrimas pegajosas causam dano periodicamente"}, -- Explosivo
	[404] = {"404", "", "Bloqueia projéteis#Se for atingido, ele irá peidar, o que poderá encantar, envenenar ou empurrar os inimigos#O peido causa 5-6 Dano"}, -- Farting Baby
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Troca inimigos e pickup ao entrar em contato"}, -- GB Bug
	[407] = {"407", "", "↑ Melhora um de seus status dependendo da cor da aura ao seu redor#Quando for danificado e depois que entrar em uma nova sala, a cor da aura mudará#{{ColorRed}}Vermelho{{CR}} = {{Damage}} +4.0 Dano#{{ColorBlue}}Azul{{CR}} = {{Tears}} +2 Taxa de disparo#{{ColorYellow}}Amarelo{{CR}} = {{Speed}} +0.5 Velocidade#{{ColorOrange}}Laranja{{CR}} = {{Range}} +3.0 Alcance"}, -- Purity
	[408] = {"408", "", "Quando você recebe dano, um anel preto de brimstone aparecerá ao redor do personagem"}, -- Athame
	[415] = {"415", "", "{{SoulHeart}} +2 Corações de Alma#Se você não tem nenhum container de Coração Vermelho danificado:#↑ {{Damage}} +100% Dano#↑ {{Range}} +1.5 Alcance#↓ {{Shotspeed}} -0.3 Velocidade de disparo#Desativa para a sala atual quando receber dano"}, -- Crown Of Light
	[416] = {"416", "", "Gera 1-3 moedas se a sala não rendeu recompensas#{{Coin}} Aumenta o limite da moeda para 999"}, -- Deep Pockets
	[417] = {"417", "", "Voa ao redor da sala com uma aura que causa dano (7.5-10 ao contato) aos inimigos#↑ {{Damage}} +50% de dano enquanto estiver na aura"}, -- Succubus
	[419] = {"419", "", "Teleporta você para outra sala aleatória que ainda não foi explorada#Hierarquia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>I AM ERROR"}, -- Teleport 2.0
	[421] = {"421", "", "{{Charm}} Causa efeito de charme a um inimigo por perto"}, -- Kidney Bean
	[426] = {"426", "", "Segue seu moviemnto com 0.66 segundos de atraso#Causa 30 de dano ao contato por segundo"}, -- Obsessed Fan
	[430] = {"430", "", "Segue seu padrão de movimento com 0.66 segundos de atraso#Atira lágrimas em inimigos próximos#O dano causado é igual ao seu"}, -- Papa Fly
	[431] = {"431", "", "Segue seu padrão de movimento com 0.66 segundos de atraso#As lágrimas que passam por ele se dividem e ganham um aumento de velocidade"},
	[437] = {"437", "", "Faz ressurgir todos os inimigos da sala#Permite você ganhar as recompensas da sala quando for limpa novamente"}, -- D7
	[440] = {"440", "", "Enquanto atirar, há chance de você disparar uma explosão de lágrimas e uma pedra nos rins"}, -- Kidney Stone
	[442] = {"442", "", "!!! Enquanto estiver com 1 coração vermelho cheio:#↑ {{Tears}} +2 Taxa de disparo#↑ {{Range}} +1.5 Alcance#↑ {{Shotspeed}} +0.2 Velocidade de disparo#(Não funciona com personagens sem coração vermelho)"}, -- Dark Princes Crown
	[444] = {"444", "", "A cada 15 lágrimas atiradas, você dispara um aglomerado de lágrimas"}, -- Lead Pencil
	[448] = {"448", "", "Quando receber dano de coração vermelho, dispare lágrimas vermelhas#Controle a direção com os botões de disparo#Quando ativo, causa meio coração de dano a cada 20 segundos#Pare curando 1 coração vermelho"}, -- Shard of Glass
	[451] = {"451", "", "{{Card}} Solta uma carta aleatória ao pegar#{{Card}} Algumas cartas ganham um efeito extra ou dobrado"}, -- Tarot Cloth
	[453] = {"453", "", "↑ {{Range}} +0.38 Alcance#Lágrimas de osso#Lágrimas se quebram em 1-3 fragmentos de ossos menores ao atingir qualquer coisa"}, -- Compound Fracture
	[455] = {"455", "", "↑ {{Range}} +0.38 Alcance#Gera uma Lucky Penny"},
	[456] = {"456", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Cura 1 coração vermelho"}, -- Midnight Snack
	[459] = {"459", "", "{{Poison}} 20% de chance de disparar lágrimas de veneno pegajosas#Cusa o seu dano a cada segundo#Gruda por 10 segundos"}, -- Sinus Infection
	[462] = {"462", "", "↑ {{Range}} +1.5 Alcance#Concede lágrimas que atravessam inimigos#Depois de atingir o primeiro inimigo, as lágrimas causam dano duplo e ganham um efeito de teleguiado"}, -- Eye of Belial
	[464] = {"464", "", "{{SoulHeart}} +2 Corações de alma#Inimigos Campeões e salas de drops aparecem com mais frequência#A prioridade de gerar pickups depende do que o jogador está perdendo mais"}, -- Glyph of Balance
	[472] = {"472", "", "Outros familiares o seguem e atiram nos inimigos automaticamente#Para de se mover quando você está disparando#Teleportará de volta para você quando você parar de atirar"}, -- King Baby
	[474] = {"474", "", "Transforma-se em Glass Canon quando usado"}, -- Broken Glass Canon
	[476] =	{"476", "", "Duplica 1 pickup aleatório na sala atual#Pickups duplicados podem não ser idênticos aos originais"}, -- D1
	[477] = {"477", "", "!!! Quando usado, consume todos os items de pedestal na sala#Item ativador: Seu efeito será ativado em todo uso futuro do Void#↑ Item passivo: Pequena melhoria de estatística para duas estatísticas aleatórias"}, -- Void
	[489] = {"489", "", "Atua como qualquer item de dado, exceto para {{Collectible723}} Spindown Dice#Altere o dado atual pressionando {{ButtonRT}}#O tempo de recarga varia de acordo com o dado atual e atualiza quando usado"}, -- D Infinity
	[491] = {"491", "", "{{Pill}}Solta uma pílula aleatória a cada 7 salas#{{Poison}} Usar uma pílula envenena todos os inimigos na sala"}, -- Acid Baby
	[493] = {"493", "", "↑ {{Damage}} Dano para cada espaço de Coração Vermelho vazio#Segue uma fórmula,alguns exemplos são:#+0.3 com 1#+0.92 com 2#+1.76 com 3#+2.79 com 4#+3.98 com 5"}, -- Adrenaline
	[494] = {"494", "", "Lágrimas geram faíscas de eletricidade com o impacto#Faíscas causam metade do seu dano#Faíscas podem pular entre inimigos"}, -- Jacobs Ladder
	[495] = {"495", "", "8% de chance de disparar um fogo azul que bloqueia projéteis dos inimigos e da dano de contato#{{Luck}} 50% de chance com 10 de Sorte#A chama desaparece após 2 segundos"}, -- Ghost Pepper
	[496] = {"496", "", "3.33% de chance de disparar agulhas#{{Luck}} 50% de chance com 15 de Sorte#Agulhas matam inimigos normais instantaneamente, explodindo-os em 10 lágrimas#Agulhas causam 3x de dano contra chefes"}, -- Euthanasia
	[498] = {"498", "", "{{AngelDevilChance}} Gera uma porta da Sala do Diabo E Sala do Anjo#Ao entrar em uma a outra desaparecerá"}, -- Duality
	[501] = {"501", "", "Dá a você um espaço de coração para cada 25 moedas que você tem#{{Player14}} / {{Player33}}O Keeper ganhará Corações de Moeda adicionais#{{Collectible416}} Recebe 1 Container de Coração para cada 100 moedas que você tem (caso ultrapasse 99)"}, -- Greed's Gullet
	[503] = {"503", "", "Chance de atirar lágrimas que invoca a mão do Big Horn#A mão mata inimigos instantaneamente e causa dano aos chefes#Correr em inimigos causará 3,5 de dano a eles"}, -- Little Horn
	[504] = {"504", "", "Gera uma torreta voadora que atira nos inimigos#Cada tiro causa 3.5 de dano"}, -- Brown Nugget
	[507] = {"507", "", "{{Damage}} Causa seu dano + 10% da vida máxima do inimigo#Afeta todos os inimigos na sala#{{HalfHeart}} Chance de soltar meio coração quando causar dano"}, -- Sharp Straw
	[509] = {"509", "", "Orbital que dispara uma lágrima a cada 1/3 de segundo quando o inimigo está próximo#Causa 3.5 de dano por lágrima#Causa 30 de dano por segundo ao contato"}, -- Bloodshot Eye
	[517] = {"517", "", "{{Bomb}} +7 Bombas#Permite que você coloque rapidamente bombas no chão#Bombas não empurram umas as outras"}, -- Fast Bombs
	[523] = {"523", "", "Quando ussado, guarde até 10 pick-ups da sala atual#Usando de novo coloca todos eles de volta no chão#Isso permite mover coisas entre salas"}, -- Moving Box
	[524] = {"524", "", "Lágrimas serão conectadas por raios de eletricidade#Eletricidade causa dano igual a 1/3 do seu dano"}, -- Technology Zero
	[531] = {"531", "", "Lágrimas voam em arco#As lágrimas explodiram em lágrimas menores com o impacto#↓ Lágrimas#↑ +50% Dano#↑ +1 Dano adicional"}, -- Haemolacria
	[535] = {"535", "", "{{SoulHeart}} +1 Coração de Alma#{{Heart}} Cura 1 Coração Vermelho#{{HolyMantle}} Concede um escudo ao entrar em uma Sala do Chefe"}, -- Blanket
	[543] = {"543", "", "Gera cocôs branco quando for danificado#Enquanto dentro da área do cocô: #↑ {{Damage}} +25% de Dano#↑ {{Tears}} +250% Taxa de disparo#Lágrimas teleguiadas#Chance de bloquear danos"}, -- Hallowed Ground
	[549] =	{"549", "", "Troca todos os seus espaços de Corações vermelhos por 6 Corações de osso#Quando perder um coração de osso:#Atire 8 lágrimas de osso em todas as direções#↑ +0.4 Velocidade de disparo permanente"}, -- Brittle Bones
	[553] = {"553", "", "Chance de atirar esporos pegajosos#Esporos explodem depois de 2.5 segundos, causando dano, envenenamento a inimigos próximos e soltando mais esporos"}, --  Mucormycosis
	[554] = {"554", "", "{{Fear}} Amedronta inimigos em um pequeno raio ao seu redor"}, --  2Spooky
	[555] = {"555", "", "{{Coin}} Converte 5 moedas em {{Damage}} +1.2 Dano para a sala atual#{{Coin}} Recebe 5 moedas ao pegar"}, --  Golden Razor
	[556] = {"556", "", "{{Collectible118}} Concede Brimstone para a sala atual"}, --  Sulfur
	[557] = {"557", "", "Dá ao personagem uma das seguintes coisas: #Uma fortune#{{SoulHeart}} Coração de alma#{{Card}} Carta de tarô#{{Rune}} Runa ou Soul Stone#{{Trinket}} Trinket"}, --  Fortune Cookie
	[558] = {"558", "", "Chance de atirar 1-2 lágrimas extras em uma direção aleatória"}, --  Eye Sore
	[559] = {"559", "", "Ataca inimigos próximos repetidamente#{{Damage}} Eletricidade causa 75% do seu dano"}, --  120 Volt
	[560] = {"560", "", "Lança um anel de 10 lágrimas que causa 10 de dano quando for atingido#↑ {{Tears}} +1.2 Lágrimas para o primeiro dano#↑ {{Tears}} +0.4 para cada dano adicional"}, --  It Hurts
	[561] = {"561", "", "↑ {{Tears}} 4x Taxa de disparo#↓ {{Damage}} Dano x 0.3#Lágrimas ganham um efeito de minhoca aleatório"}, --  Almond Milk
	[562] = {"562", "", "Impede que as estatísticas sejam reduzidas para o resto da corrida"}, --  Rock Bottom
	[563] = {"563", "", "{{Bomb}} +5 Bombas#{{Bomb}} Bombas explodem com um efeito de bomba aleatório"}, --  Nancy Bombs
	[564] = {"564", "", "↑ {{Tears}} +0.5 Lágrimas#↑ {{Shotspeed}} +0.2 Velocidade de disparo"}, --  A Bar of Soap
	[565] = {"565", "", "Familiar que persegue inimigos#Depois de matar inimigos suficientes, ele se torna mais forte, mas também tentará machucar você#Atacar ele faz com que volte ao normal"}, --  Blood Puppy
	[566] = {"566", "", "{{HalfSoulHeart}} +1 Meio Coração de alma quando entrar em um novo andar#Na transição de fase, exibe: #{{TreasureRoom}} O próximo item da Sala do Tesouro#{{BossRoom}} O próximo chefe"}, --  Dream Catcher
	[567] = {"567", "", "↑ {{Tears}} +0.4 Lágrimas para cada sala limpa sem levar dano#{{Tears}} Acumula até +2"}, --  Paschal Candle
	[568] = {"568", "", "Pressionar duas vezes em uma tecla de atirar cria um escudo#O escudo dura 1 segundo, empurra os inimigos para longe e reflete projéteis e lasers inimigos"}, --  Divine Intervention
	[569] = {"569", "", "Apunhala você no início de cada andar, drenando tudo, menos a metade de um coração vermelho#Aumenta os status para o andar atual:#↑ {{Damage}} Seu dano + 0.15 * Corações perdidos^2#↑ {{Speed}} Velocidade + 0.05 * Corações perdidos"}, --  Blood Oath
	[570] = {"570", "", "Concede lágrimas multicoloridas com diferentes efeitos de status"}, --  Playdough Cookie
	[571] = {"571", "", "Impede danos a poças e espinhos no chão#↑ {{Speed}} +0.3 Velocidade#↑ {{SoulHeart}} +2 Corações de alma"}, --  Orphan Socks
	[572] = {"572", "", "Lágriams controláveis#↑ +1 Dano#↑ +7.5 Alcance#↓ -0.16 Velocidade de disparo"}, --  Eye of the Occult
	[573] = {"573", "", "↑ {{Heart}} +1 Espaço de coração vermelho#{{Heart}} Saúde cheia#↑ {{Damage}} +20% Dano#Chance de atirar lágrimas espectrais orbitais"}, --  Immaculate Heart
	[574] = {"574", "", "Ganhe duas auras circulares que causam danos aos inimigos#A aura interna causa mais danos"}, --  Monstrance
	[575] = {"575", "", "{{Slow}} Um familiar enterrado em sua cabeça disparando 4 lágrimas lentas#Ao receber dano, pode sair da cabeça "}, --  The Intruder
	[576] = {"576", "", "Todos os Dips (cocôs pequenos) são amigáveis#Destruir cocô gera 1-4 Dips#O tipo do Dip depende do cocô destrido#Pedras podem ser substituídas por cocôs"}, --  Dirty Mind
	[577] = {"577", "", "{{Warning}} USO ÚNICO {{Warning}}#Gera uma espada acima de sua cabeça, que duplica todos os itens de pedetais#Não duplica os itens de compra, baú ou Acordos com o Diabo#!!! Mata você em um momento aleatório ao receber dano de um inimigo depois de usar o item"}, --  Damocles
	[578] = {"578", "", "Cria uma grande poça amarela"}, --  Free Lemonade
	[579] = {"579", "", "Em vez de lágrimas, o personagem tem uma espada#Causa 3x seu dano#{{Chargeable}} Faz um ataque giratório + tiro de projétil ao carregar#Disparar projéteis com oscilações normais com a saúde cheia"}, --  Spirit Sword
	[580] = {"580", "", "Cria uma nova sala adjacente a uma parede viável, indicada pelo contorno de uma porta#Podem ser salas especiais#Uma sala fora do mapa de piso 13x13 irá teletransportá-lo para a sala I AM ERROR"}, --  Red Key
	[581] = {"581", "", "Familiar mosca orbital#Persegue inimigos e desvia projéteis#Causa dano ao contato"}, --  Psy Fly
	[582] = {"582", "", "↑ {{Tears}} +0.75 Taxa de disparo#↓ {{Speed}} -0.03 Velocidade#Distorce a tela#O efeito pode ser empilhado"}, --  Wavy Cap
	[583] = {"583", "", "{{Bomb}} +5 Bombas#Colocar uma bomba enquanto estiver atirando faz com que ela se transforme em um foguete que irá explodir na direção em que estiver olhando"}, --  Rocket in a Jar
	[584] = {"584", "", "Gera um familiar orbital que atira lágrimas espectrais mas pode ser destruído#Pode ser combinado com um segundo item ativador para criar um orbital temático#{{DevilRoom}} Transforma a primeira Sala do Diabo em uma {{AngelRoom}} Sala do Anjo#{{AngelChance}} Aumenta a chance de Sala do Anjo#{{AngelDevilChance}} Permite que acordos com o Diabo e Anjo sejam feitos"}, --  Book of Virtues
	[585] = {"585", "", "Ao usar gera: #{{SoulHeart}} 3 Corações de Alma#{{AngelRoom}} 2 itens da sala do anjo#{{SoulHeart}} Pode se carregado pegando corações de alma#{{DevilRoom}} Gera somente 2 corações de alma e 1 item do Anjo se um Acordo com o Diabo foi feito anteriormente"}, --  Alabaster Box
	[586] = {"586", "", "Gera uma escada no início de cada andar#{{AngelRoom}} Ela leva a uma loja de itens da Sala do Anjo"}, --  The Stairway
	[587] = {"587", "", "<Item não existe>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "", "{{BossRoom}} Revela a localização da Sala do Chefe#Ao derrotar o chefe, para o resto do andar#{{Card20}} Ativa The Sun#{{Battery}} Recarrega totalmente seu item ativador#↑ {{Damage}} +3 Dano#↑ {{Luck}} +1 Sorte"}, --  Sol
	[589] = {"589", "", "Adiciona um extra a Sala secreta{{SecretRoom}} e Super Secreta{{SuperSecretRoom}} em cada andar#{{SecretRoom}} A Sala Secreta contém um feixe de luz que dá: #{{Tears}} + Lágrimas para o andar atual#{{HalfSoulHeart}} Meio Coração de Alma#{{SecretRoom}} Revela uma sala secreta em cada andar"}, --  Luna
	[590] = {"590", "", "↑ {{Speed}} +0.4 Velocidade#Portas permanecem abertas depois de entrar em uma sala"}, --  Mercurius
	[591] = {"591", "", "↑ {{Heart}} +1 Espaço de Coração vermelho#{{Heart}} Cura 1 Coração Vermelho#{{Charm}} Inimigos próximos ficam encantados"}, --  Venus
	[592] = {"592", "", "↑ {{Damage}} +1 Dano#Troca lágrimas por pedras#Causa dano variável#Pode destruir obstáculos#Aumenta o recuo"}, --  Terra
	[593] = {"593", "", "Faz um dash pressionando duas vezes na tecla de movimento#Tornando-se invulnerável e causando 4x o seu dano#3 segundos de cooldown"}, --  Mars
	[594] = {"594", "", "↑ {{Heart}} +2 Espaços vazios de Coração vermelho#{{HalfHeart}} Cura meio coração#↓ {{Speed}} -0.3 Velocidade#{{Speed}} Aumenta até +0.5 de velocidade enquanto estiver parado#{{Poison}} Lança uma nuvem de veneno quando se mover novamente"}, --  Jupiter
	[595] = {"595", "", "Um círculo envolve você#Ao entrar em uma sala, 7 lágrimas irão orbitar nele#Chance de pegar projéteis inimigos"}, --  Saturnus
	[596] = {"596", "", "{{Freeze}} Atira lágrimas de gelo, que retardam os inimigos e congela os monstros que ele matam#Tocar em inimigos congelados faz-os desliza e explodir em 6 fragmentos de gelo"}, --  Uranus
	[597] = {"597", "", "{{Chargeable}} Carregável (Automático)#Cria um enorme bônus de lágrimas ao longo de 3 segundos enquanto não disparar#Disparar novamente irá liberar lágrimas armazenadas#O bônus da lágrima cai conforme você dispara"}, --  Neptunus
	[598] = {"598", "", "↑ {{Tears}} +0.7 Lágrimas#Diminui significativamente o tamanho do personagem, permitindo que ele passe entre objetos#Projéteis podem passar por cima dele"}, --  Pluto
	[599] = {"599", "", "{{CursedRoom}} Gera uma Sala de Maldição adicional para cada andar"}, --  Voodoo Head
	[600] = {"600", "", "!!! Aplicado apenas no olho esquerdo#↑ {{Tears}} +28% Velocidade de disparo#↑ {{Tears}} +20% Taxa de disparo para ataques que não são lágrimas#Depois de algum tempo, o primeiro tiro será duplo"}, --  Eye Drops
	[601] = {"601", "", "↑ {{Tears}} +0.7 Lágrimas#{{EternalHeart}} +1 Coração Eterno#{{DevilChance}} / {{AngelChance}} Permite que Salas do Anjo apareçam, mesmo que um acordo com o Diabo tenha sido fechado antes"}, --  Act of Contrition
	[602] = {"602", "", "{{Shop}} Adiciona um alçapão em cada loja que leva a uma segunda loja com um estoque exclusivo"}, --  Member Card
	[603] = {"603", "", "{{Battery}} Gera 2-4 baterias#Recarrega totalmente seu item ativador"}, --  Battery Pack
	[604] = {"604", "", "Permite pegar e arremessar pedras, TNT, cocôs, Dips amigáveis, Hosts, e outros obstáculos#Permite carrega-los entre salas"}, --  Mom's Bracelet
	[605] = {"605", "", "Invoca um familiar Peeper para a sala atual, que deixa um rastro vermelho#↑ Lágrimas disparadas do olho direito irão causar mais 34% de dano"}, --  The Scooper
	[606] = {"606", "", "Chance de atirar lágrimas que criam fendas onde caem#Puxa inimigos, pickups e projéteis próximos"}, --  Ocular Rift
	[607] = {"607", "", "Familiar que dispara rajadas de lágrimas em todas as direções#Causa 3.5 ou 5.3 de dano por lágrima"}, --  Boiled Baby
	[608] = {"608", "", "Familiar que lança lágrimas congelante#Congela inimigos ao matá-los"}, --  Freezer Baby
	[609] = {"609", "", "Troca todos os itens de pedestal na sala#Itens tem 30% de chance de desaparecer"}, --  Eternal D6
	[610] = {"610", "", "Familiar que salta sobre um inimigo como primeiro golpe na sala#Causa 45 de dano e lança uma onda de pedras#Ataca os inimigos"}, --  Bird Cage
	[611] = {"611", "", "Faz você gritar, causando dano e empurrando os inimigos próximos#O grito fica mais forte quanto mais cargas o item tiver"}, --  Larynx
	[612] = {"612", "", "Familiar de alma que morre com um golpe, ressurgindo no início do próximo andar#Se sobreviver a um andar inteiro, gerará 3 corações de almas, 2 corações eternos ou itens"}, --  Lost Soul
	[613] = {"613", "", "<Item não existe>"}, -- Salt Shaker
	[614] = {"614", "", "↑ {{Heart}} +1 Espaço de coração vermelho#{{Heart}} Cura 5 corações#{{HalfHeart}} Se o jogador não tiver bombas, uma pode ser colocada ao custo de meio coração#{{Bomb}} Bombas deixam uma poça vermelha"}, --  Blood Bombs
	[615] = {"615", "", "Familiar que quando sofre dano, empurra, atordoa ou envenena os inimigos próximos"}, --  Lil Dumpy
	[616] = {"616", "", "8% de chance de atirar fogo que bloqueia tiros inimigos e causa dano ao contato#{{Luck}} 50% de chance com 10 de Sorte#Máximo de dano é 4x seu dano"}, --  Bird's Eye
	[617] = {"617", "", "{{Magnetize}} 17% de chance de atirar lágrimas que magnetiza os inimigos#{{Luck}} 100% com 5 de Sorte#Irá atrair pickups, projéteis e inimigos"}, --  Lodestone
	[618] = {"618", "", "{{Bait}} 17% de chance de atirar lágrimas que Marca inimigos#{{Luck}} 100% de chance com 5 de Sorte#Inimigos marcados são atacados por outros inimigos"}, --  Rotten Tomato
	[619] = {"619", "", "Tem um efeito diferente para cada personagem"}, --  Birthright
	[620] = {"620", "", "<Item does not exist>"},
	[621] = {"621", "", "{{Heart}} Saúde cheia#↑ {{Damage}} +21.6 Dano#O dano desaparece pelos próximos 3 minutos"}, --  Red Stew
	[622] = {"622", "", "{{Warning}} USO ÚNICO {{Warning}}#Remove todos os itens e pickups do personagem#Teleporta você para um quarto exclusivo com pickups, baús e um alçapão#Para cada item perdido, Salas do Tesouro {{TreasureRoom}} mostram um conjunto de 3 itens para escolher"}, --  Genesis
	[623] = {"623", "", "{{Key}} +5 Chaves#Arremesse sua chave para causar dano, destruir obstáculos, ou abrir portas#Os inimigos mortos com ele têm a chance de gerar o conteúdo de um baú, incluindo itens"}, --  Sharp Key
	[624] = {"624", "", "{{Card}} Gera 5 cartas aleatórias"}, --  Booster Pack
	[625] = {"625", "", "Gigantifica você por 30 segundos#Aumenta seu dano e alcance#Concede invencibilidade e capacidade de esmagar inimigos e obstáculos#Efeito persiste entre as salas"}, --  Mega Mush
	[626] = {"626", "", "Primeira parte da faca"}, --  Knife Piece 1
	[627] = {"627", "", "Combinado com Knife Piece 1 {{Collectible627}}, cria um familiar faca#Causa dano aos inimigos#Pode abrir uma certa porta de carne"}, --  Knife Piece 2
	[628] = {"628", "", "{{Warning}} USU ÚNICO {{Warning}}#Leva você a um andar contendo todos os itens do jogo#Depois de pegar um item, volte para a sala de onde veio"}, --  Death Certificate
	[629] = {"629", "", "Orbital que atira lágrimas protegidas"}, --  Bot Fly
	[630] = {"630", "", "<Item não existe>"},
	[631] = {"631", "", "Divide os inimigos na sala em 2 versões menores deles mesmos com muito menos saúde"}, --  Meat Cleaver
	[632] = {"632", "", "↑ {{Luck}} +2 Sorte#Torna você imune a queimaduras, confusão, medo, veneno e gases tóxicos"}, --  Evil Charm
	[633] = {"633", "", "{{Collectible313}} Concede vôo e o efeito de um Holy Mantle por uma vez#↑ {{Damage}} +2.0 Dano#↑ {{Speed}} +0.1 Velocidade#{{Heart}} Se o jogador tiver menos de 6 corações, cura-o com uma combinação de corações vermelhos e almas"}, --  Dogma
	[634] = {"634", "", "Enquanto em uma sala com inimigos, gera rachaduras no chão#Andar sobre essas fendas convoca fantasmas explosivos"}, --  Purgatory
	[635] = {"635", "", "Passivamente gera um familiar que se move na direção do tiro do personagem#Em uso, o personagem troca de lugar com o familiar e ganha invencibilidade curta#Teleportar-se para objetos pode danificá-las ou destruí-las"}, --  Stitches
	[636] = {"636", "", "{{Warning}} USO ÚNICO {{Warning}}#Teleporta você de volta para o primeiro andar de uma nova corrida#Itens e pickups permanecem intactos"}, --  R Key
	[637] = {"637", "", "Chance de atirar uma primeira lágrima com um recuo extremo e efeito de confusão"}, --  Knockout Drops
	[638] = {"638", "", "Arremessa uma borracha que mata um inimigo instantaneamente#Impede que o inimigo apareça pelo resto da corrida#Causa 15 de dano a um chefe#Pode ser usado apenas uma vez por andar"}, --  Eraser
	[639] = {"639", "", "Concede um coração podre ao usar"}, --  Yuck Heart
	[640] = {"640", "", "Vomita uma torrente de chamas#Ganha uma carga cada vez que um inimigo morre"}, --  Urn of Souls
	[641] = {"641", "", "Cria uma corrente de lágrimas atrás de você durante uma luta#As lágrimas causam 3.5 de dano"}, --  Akeldama
	[642] = {"642", "", "{{EmptyHeart}} Troca 1 espaço de coração ou {{SoulHeart}} 2 Corações de alma por um {{BrokenHeart}} Coração quebrado#Gera um item do tipo de sala atual#{{Warning}} Uso único para The Lost#Quanto mais vezes o item for usado, maior a chance de substituir itens futuros se não estiver segurando"}, --  Magic Skin
	[643] = {"643", "", "{{Chargeable}} Atirar por 2.5 segundo irá disparar um laser sagrado quando o botão de disparo for solto#Concede Vôo#{{SoulHeart}} +2 Corações de alma"}, --  Revelation
	[644] = {"644", "", "Aumenta seu status mais baixo#Solta 3 moedas, 1 bomba ou 1 chave, dependendo do que você tem menos"}, --  Consolation Prize
	[645] = {"645", "", "Orbital Teratoma#Bloqueia tiros#Causa dano ao contato#Divide-se em versões menores de si mesmo ao receber 3 acertos#As versões menores se dividem em aranhas azuis#Renasce 5 segundos depois que todos se foram"}, --  Tinytoma
	[646] = {"646", "", "{{Bomb}} +5 Bombas#{{Collectible118}} Bombas lançam 4 Brimstone nas direções cardeais"}, --  Brimstone Bombs
	[647] = {"647", "", "Os itens ativadores não carregam ao limpar as salas#Eles carregam causando dano aos inimigos#60 de dano causado = 1 carga"}, --  4.5 Volt
	[648] = {"648", "", "<Item does not exist>"},
	[649] = {"649", "", "Impulsiona-se diagonalmente pela sala, soltando lágrimas por onde passa"}, --  Fruity Plum
	[650] = {"650", "", "Invoca um Baby Plum amigável na sala atual por 10 segundos"}, --  Plum Flute
	[651] = {"651", "", "Familiar que viaja lentamente em direção à Sala do Chefe#Emite uma aura que concede +20% + 1 Dano, +Lágrimas e lágrimas teleguiadas"}, --  Star of Bethlehem
	[652] = {"652", "", "Familiar que desliza pela sala#Ele diminui e causa dano de contato, congelando monstros que mata"}, --  Cube Baby
	[653] = {"653", "", "Enquanto segurar, inimigos não fantasmas geram pequenos fantasmas vermelhos na morte#Em uso, faz com que os fantasmas explodam"}, --  Vade Retro
	[654] = {"654", "", "{{Pill}} Identifica todas as pílulas#{{BlackHeart}} +1 Coração negro#Converte pílulas boas em ruims#↑ {{Damage}} Pílulas antiestáticas concede +Dano#{{BlackHeart}} Outras pílulas deixam cair corações negros ao usar"}, --  False PHD
	[655] = {"655", "", "Concede um orbital giratório que bloqueia tiros inimigos e causa dano ao contato#Quando usado: #↑ {{Speed}} +0.5 Velocidade e aumenta muito a velocidade de rotação dos orbitais"}, --  Spin to Win
	[656] = {"656", "", "<Item não coletável>"}, -- Damocles
	[657] = {"657", "", "Os inimigos explodem em lágrimas depois de morrer, que herdam os efeitos das lágrimas do personagem"}, --  Vasculitis
	[658] = {"658", "", "Gera versões pequenas do personagem quando recebe dano#Eles perseguem e atiram em inimigos próximos"}, --  Giant Cell
	[659] = {"659", "", "↑ {{Range}} +1.5 Alcance#{{Tearsize}} Aumenta o tamanho da lágrima"}, --  Tropicamide
	[660] = {"660", "", "Gera dois portais no início de cada andar#Os portais desaparecem ao sair da sala#{{ColorRed}}Vermelho: {{CR}}{{BossRoom} Sala do Chefe#{{ColorYellow}}Amarelo: {{CR}}{{TreasureRoom}} Sala do Tesouro#{{ColorBlue}}Azul: {{CR}}{{SecretRoom}} Sala Secreta"}, --  Card Reading
	[661] = {"661", "", "Ao matar um inimigo, gera um familiar aleatório no local onde ele morreu#Até 5 familiares por sala"}, --  Quints
	[662] = {"662", "", "<Item não existe>"}, -- Pacifist (Cut item)
	[663] = {"663", "", "Torne-se invencível a cada 6 segundos por 1 segundo#Pisca imediatamente antes da transição"}, --  Tooth and Nail
	[664] = {"664", "", "↑ {{Heart}} +1 Espaço de coração vermelho#{{Heart}} Saúde cheia#{{Heart}} Itens de comida curam 3 Corações Vermelhos#Os itens de pedestais alternam periodicamente entre itens alimentares e qualquer um outro#Pegar um item alimentar concede: #↑ {{Damage}} +3.6 Dano temporário#↑ 2 pequenos aumentos de estatísticas permanentes#↓ {{Speed}} -0.03 Velocidade"}, --  Binge Eater
	[665] = {"665", "", "Mostra o conteúdo de baús, sacos e fogueiras antes de serem abertos"}, --  Guppy's Eye
	[666] = {"666", "", "<Item não existe>"},
	[667] = {"667", "", "Gera um Keeper como segundo personagem#Se ele morrer, ele gera aranhas azuis#O item é removido depois"}, --  Strawman
	[668] = {"668", "", "Começa a sequência para acessar o andar da Casa#Trinkets restantes nas salas do Tesouro {{TreasureRoom}} ou Chefes {{BossRoom}} anteriores se transformam em Cracked Key {{Card78}}"}, --  Dad's Note
	[669] = {"669", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Saúde cheia#↑ {{Damage}} +0.5 Dano#↑ {{Speed}} +0.2 Velocidade#↑ {{Shotspeed}} +1.2 Velocidade de disparo#↑ {{Range}} +0.16 Alcance#↑ {{Luck}} +1 Sorte"}, --  Sausage
	[670] = {"670", "", "Se uma sala conceder uma recompensa, haverá duas recompensas diferentes para escolher#Pegar um faz com que a outra desapareça"}, --  Options?
	[671] = {"671", "", "Dá aumento aleatório permanente de estatísticas ao ser curado por um pickup de coração vermelho"}, --  Candy Heart
	[672] = {"672", "", "Acordos com o Diabo agora custam moedas#Itens da loja custam corações#Os consumíveis nas lojas são gratuitos, mas estão cercados por espinhos"}, --  A Pound of Flesh
	[673] = {"673", "", "Ao entrar em uma Sala do Demônio e não pegar nenhum item concede: #{{Soulheart}} 1 Coração de Alma#↑ {{Damage}} +1 Dano"}, --  Redemption
	[674] = {"674", "", "Ao morrer, o fantasma do personagem é acorrentado ao seu cadáver e ele pode continuar lutando com metade de um coração#Retorne a saúde depois de 10 segundos#Deve ser recarregado pegando um coração de alma"}, --  Spirit Shackles
	[675] = {"675", "", "Ao receber dano, revela uma sala aleatória no andar#Também destranca portas que requerem chaves#Pode abrir a porta do Mega Satan#Pode revelar a Sala Ultra Secreta"}, --  Cracked Orb
	[676] = {"676", "", "{{EmptyHeart}} Quando tiver um espaço de coração vazio no início de um novo andar, concede outro#{{EmptyBoneHeart}} Corações de osso não contam"}, --  Empty Heart
	[677] = {"677", "", "Ao ser atingido, para o tempo por 3 segundos#O personagem se torna um fantasma e deixa seu corpo#Na forma de fantasma, ganha vôo, lágrimas espectrais e também negam o próximo dado"}, --  Astral Projection
	[678] = {"678", "", "{{Chargeable}} Carregável#Concede um ataque que dispara lágrimas espectrais e teleguiada"}, --  C Section
	[679] = {"679", "", "{{Collectible399}} Familiar que dispara um mini Maw of the Void"}, --  Lil Abaddon
	[680] = {"680", "", "{{Chargeable}} Carregável#Enquanto dispara, carregue um Brimstone de curto alcance#Atira atrás de você"}, --  Montezuma's Revenge
	[681] = {"681", "", "Causa dano de contato e voa para frente#Consome pickups em seu caminho#Cada um aumentará seu tamanho, dano e gerará uma Blue Fly#A cada quatro pickups, ele gera um portal para uma sala inexplorada"}, --  Lil Portal
	[682] = {"682", "", "Faz com que um tentáculo saia do chão#Pode segurar inimigos e causar dano"}, --  Worm Friend
	[683] = {"683", "", "Inimigos geram ossos flutuantes na morte#Ossos bloqueiam projéteis e causam dano ao contato"}, --  Bone Spurs
	[684] = {"684", "", "Chance de gerar fantasmas ao matar um inimigo#Fantasmas perseguem inimigos e causam dano de contato#Após 5 segundos, o fantasma explode, causando 7 de dano aos inimigos próximos#Você não é danificado pela explosão "}, --  Hungry Soul
	[685] = {"685", "", "Gera um wisps que atira varias lágrimas, bloqueia tiros, e causa dano ao contato#Número de wisps gerados aumenta quanto mais é usado"}, --  Jar of Wisps
	[686] = {"686", "", "{{SoulHeart}} Concede um aumento de estatísticas permanente sempre que você pegar um coração de alma#{{SoulHeart}} Gera um coração de alma ao pegar"}, --  Soul Locket
	[687] = {"687", "", "Gera um monstro amigável aleatório que imita os movimentos e ataques do personagem"}, --  Friend Finder
	[688] = {"688", "", "+1 Saúde extra#Reaparece na sala atual com meio coração, tamanho reduzido massivamente e +0,2 Velocidade"}, --  Inner Child
	[689] = {"689", "", "Os itens de pedestais alternam rapidamente entre 5 itens aleatórios"}, --  Glitched Crown
	[690] = {"690", "", "Faz com que os inimigos ricocheteem no personagem#Saltar contra obstáculos causa dano#Chance de desviar projéteis inimigos"}, --  Belly Jelly
	[691] = {"691", "", "Impede que de itens de baixa qualidade apareçam#Aumentando muito a qualidade dos itens que irão aparecer"}, --  Sacred Orb
	[692] = {"692", "", "Gera um conjunto especial de espinhos na Sala do Demônio#Receber dano dos espinhos pode conceder uma recompensa:#35% 6 pennies#15% +0.5 Dano#5% 2 Corações negros#2% item aleatório#1% Transformar-se em Leviathan"}, --  Sanguine Bond
	[693] = {"693", "", "Concede 8 moscas orbitais que se transformam em moscas azuis após bloquearem um tiro#Gera uma nova mosca a cada sala limpa"}, --  The Swarm
	[694] = {"694", "", "{{BrokenHeart}} Concede 3 corações quebrados#↑ {{Damage}} +0.25 Dano para cada coração quebrado#Cada golpe fatal irá adicionar mais 2 corações quebrados#Você morre com 12 corações quebrados"}, --  Heartbreak
	[695] = {"695", "", "Ao receber dano, ganha velocidade e lágrimas para o andar atual#Limite de +1.02 Velocidade e +3 Velocidade de disparo"}, --  Bloody Gust
	[696] = {"696", "", "Concede uma aréola que gera feixes de luz nos inimigos dentro dele#Quanto mais dano você recebe neste andar, maior a aréola fica"}, --  Salvation
	[697] = {"697", "", "Familiar que se torna um clone do chefe ao entrar na sala do chefe#Derrotá-lo deixa cair um item extra#O clone é mais lento e tem 75% da saúde do chefe original"}, --  Vanishing Twin
	[698] = {"698", "", "Dois familiares que ficam ao seu lado#Atira lágrimas iguais às suas, mas com apenas 37,5% do seu dano"}, --  Twisted Pair
	[699] = {"699", "", "Aumente a raiva toda vez que uma sala for limpa#Após 4 quartos, dispara um grande Brimstone quando entrar na próxima sala"}, --  Azazel's Rage
	[700] = {"700", "", "Quando o personagem usa uma carta, pílula ou runa, ele também usa uma cópia de cada carta/pílula/runa que usou após pegar a Echo Chamber"}, --  Echo Chamber
	[701] = {"701", "", "Gera um Old Chest no início de cada andar#Pode conter corações de alma, trinkets ou itens da Sala do Anjo ou temático da Mãe e Pai"}, --  Isaac's Tomb
	[702] = {"702", "", "Depois de receber dano, gera um feixe orbital que dura por todo o andar#O máximo é 6#Eles disparam lágrimas, mas não bloqueiam os tiros"}, --  Vengeful Spirit
	[703] = {"703", "", "Troca entre o personagem atual e Esau Jr, que tem 3 corações negros, +2 de dano e vôo#Personagens têm itens e saúde independentes#{{Warning}} Morre quando um dos personagens termina a corrida"}, --  Esau Jr.
	[704] = {"704", "", "Modo furioso por 5 segundos:#↑ {{Speed}} +0.4 Velocidade#↑ {{Tears}} Lágrimas#↑ {{Damage}} +3.0 Dano#Restringe os ataques a uma arma branca"}, --  Berserk!
	[705] = {"705", "", "Quando usado, ganha ↑ +1 velocidade e a habilidade de andar sobre de inimigos/balas por 1 segundo#Aumenta rapidamente o dano em 1 para cada inimigo tocado#Influge 3x seu dano á inimigos tocados"}, --  Dark Arts
	[706] = {"706", "", "Destrói todos os itens na sala e gera uma familiar mosca para cada item destruído#Os efeitos da mosca dependem dos itens destruídos"}, --  Abyss
	[707] = {"707", "", "↑ {{EmptyHeart}} +1 Espaço de coração vermelho#{{Heart}} Cura um coração"}, --  Supper
	[708] = {"708", "", "↑ {{Damage}} +1 Dano#Impede o personagem de atirar lágrimas por um olho"}, --  Stapler
	[709] = {"709", "", "Permite que você colida e pegue inimigos ou chefes e, em seguida, jogue-os no chão#O arremço pode ser controlado#O arremesso causa 50 de dano e causa queda de rochas"}, --  Suplex!
	[710] = {"710", "", "Coleta e armazena até 8 pickups que não podem ser soltos#Pegando-os, podem ser usados para criar um item#A qualidade do item depende da qualidade do pickup"}, --  Bag of Crafting
	[711] = {"711", "", "Troque de personagem entre Tainted Lazarus e Dead Tainted Lazarus"}, --  Flip
	[712] = {"712", "", "Gera um item de fantasma orbital destruível#O efeito do item é aplicado ao jogador#Os itens são escolhidos de acordo com a sala atual"}, --  Lemegeton
	[713] = {"713", "", "Remove metade de um coração e cria um familiar Coágulo#O tipo do coração muda os status e habilidades do familiar"}, --  Sumptorium
	[714] = {"714", "", "Recupera o corpo do Forgotten de qualquer distância"}, --  Recall
	[715] = {"715", "", "Guarda uma bomba de cocô que pode ser usada mais tarde"}, --  Hold
	[716] = {"716", "", "{{Shop}} Concede {{Range}} +alcance, {{Speed}} velocidade, ou {{Damage}} dano quando comprar coisas em lojas#Gera 3 moedas e 1 chave ao pegar"}, --  Keeper's Sack
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
	[727] = {"727", "", "{{Bomb}} +5 Bombas#As bombas geram fantasmas que causam dano de contato e explodem após 10 segundos"}, --  Ghost Bombs
	[728] = {"728", "", "Gera um familiar demônio que fica ligado ao personagem#Imita a lágrima do personagem, status e efeito"}, --  Gello
	[729] = {"729", "", "Arranca a cabeça do personagem, ao mesmo tempo que é capaz de atirar lágrimas#Reativa o item ou pisar na cabeça o recoloca"}, --  Decap Attack
	[730] = {"730", "", "↑ {{Damage}} +0.75 Dano#↑ {{Luck}} +1 Sorte"}, -- Glass Eye
	[731] = {"731", "", "!!! Apenas para o olho direito#↑ {{Damage}} +1 Dano#↑ {{Range}} Alcance#↓ {{Shotspeed}} Velocidade de disparo"}, --  Stye //TBD: How much range up, doesn't say on the wiki and I can't test yet
	[732] = {"732", "", "↑ {{Damage}} +1 Dano#{{Rune}} Gera uma runa ou alma aleatória ao pegar"}, --  Mom's Ring
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Todos os itens passam por duas opções"},
	{"Magdalene", "", "↑ {{Heart}} +1 Saúde#{{Heart}} Limite máximo de corações sobe para 18"},
	{"Cain", "", "↑ {{Luck}} +1 Sorte#{{Arcade}} Todos os andares irão conter uma Sala de Jogo melhorada exeto para a Dark Room e Sala do Tesouro#{{Collectible46}} Aumenta as chances de ativação do Lucky Foot"},
	{"Judas", "", "{{Collectible34}} The Book of Belial se torna um livro passivo semelhante ao {{Collectible584}} Book of Virtues#Concede {{Collectible34}} The Book of Belial se não estiver segurando#↑ {{Damage}} O aumento do dano recebido dele aumenta com a quantidade de cargas do item acima dele"},
	{"???", "", "Corações de alma ganhos por atualizações de saúde são dobrados#!!! Pílulas Health down vão remover 2 corações de alma"},
	{"Eve", "", "Whore of Babylon é ativado independentemente da saúde#Dead Bird é ativado sem precisar levar dano"},
	{"Samson", "", "Bloody Lust pode conceder mais 4 de aumento de dano em um mesmo intervalo de +0.2, para um novo máximo de +14.0"},
	{"Azazel", "", "O Brimstone do Azazel se torna muito mais amplo, como o Mega Blast#Sem efeito no dano"},
	{"Lazarus", "", "Quando morto, reviva como Lazarus Ressuscitado#↑ {{Damage}} Lazarus Ressuscitado ganha um bônus de +21,6 Dano que diminui lentamente"},
	{"Eden", "", "Gera 3 itens aleatórios de locais diferentes#Apenas um pode ser pego"},
	{"The Lost", "", "Impede a geração de itens não benéficos para The Lost#Exemplos: aqueles que só dão saúde, vôo e/ou lágrimas espectrais ou itens que ativam ao receber dano"},
	{"Lazarus Risen", "", "↑ {{Damage}} Concede um bônus de +21.6 Dano que diminui lentamente"},
	{"Black Judas", "", "{{Collectible34}} The Book of Belial se torna um livro passivo semelhante ao {{Collectible584}} Book of Virtues#Concede {{Collectible34}} The Book of Belial se não estiver segurando#↑ {{Damage}} O aumento do dano recebido dele aumenta com a quantidade de cargas do item acima dele"},
	{"Lilith", "", "Os familiares são posicionados em frente a Lilith"},
	{"Keeper", "", "↑ +1 Saúde#Aumenta a capacidade da saúde em 1"},
	{"Apollyon", "", "{{Collectible477}} Usando Void há chance de gerar um item que que foi consumido anteriormente#Os bônus nas estatísticas são mantidos#Quanto mais itens consumidos, maior a chance de um item ser gerado após o uso"},
	{"The Forgotten", "", "The Soul é livre para se mover"},
	{"The Forgotten Soul", "", "The Soul é livre para se mover"},
	{"Bethany", "", "Ativar um item usando cargas de alma às vezes é grátis"},
	{"Jacob", "", "O personagem que pegar o item ganha cópias de três dos itens passivos do outro personagem"},
	{"Esau", "", "O personagem que pegar o item ganha cópias de três dos itens passivos do outro personagem"},
	{"Tainted Isaac", "", "Adiciona mais 4 espaços para itens passivos#Não consome o espaço por si só"},
	{"Tainted Magdalene", "", "{{Heart}} Adiciona mais 1 coração vermelho que não esgota"},
	{"Tainted Cain", "", "A quantidade de pickups gerados a partir da coleta de um item é dobrado"},
	{"Tainted Judas", "", "{{Collectible705}} Dobra a duração do Dark Arts"},
	{"Tainted ???", "", "{{PoopPickup}} Aumenta o número máximo de cocôs transportados para 29"},
	{"Tainted Eve", "", "Os coágulos de coração vermelho geram corações que desaparecem após 2 segundos ao morrer"},
	{"Tainted Samson", "", "O cronômetro furioso ganha 3 segundos em vez de 1 quando Tainted Samson mata um inimigo"},
	{"Tainted Azazel", "", "{{Collectible726}} Dobra o tamanho do ataque da Hemoptise do Tainted Azazel"},
	{"Tainted Lazarus", "", "A outra versão do T. Lazarus vai estar disponível como fantasma#Ele é imune a dano, mas pode atirar lágrimas#Ambos os personagens recebe o efeito do Birthright"},
	{"Tainted Eden", "", "Itens passivos ganhos antes do Birthright não serão trocados novamente ao receberem dano "},
	{"Tainted Lost", "", "+1 Vida extra que revive Tainted Lost na mesma sala e causa 200 de dano a inimigos próximos#Pode atingir o mesmo inimigo várias vezes"},
	{"Tainted Lilith", "", "{{Collectible728}} Familiares que segurem a Tainted Lilith normalmente vão agir como ela Gello"},
	{"Tainted Keeper", "", "Atrai fortemente as moedas soltas por inimigos derrotados de uma curta distância#Sem efeito nas outras moedas"},
	{"Tainted Apollyon", "", "Se o botão de disparo for segurado, os gafanhotos causarão dano contínuo aos inimigos ao invés de retornar"},
	{"Tainted Forgotten", "", "Tainted Soul ganha a habilidade do Recall {{Collectible714}}, para recuperar automaticamente o Tainted Forgotten à distância"},
	{"Tainted Bethany", "", "Gera quatro wisps de itens aleatórios de alta qualidade com HP maior do que o normal"},
	{"Tainted Jacob", "", "Dark Esau se divide em dois, criando um clone de si mesmo#Ambos irão sempre carregar ao mesmo tempo#{{Collectible722}} Usar o Anima Sola acorrenta ambos"},
	{"Dead Tainted Lazarus", "", "A outra versão do T. Lazarus vai estar disponível como fantasma#Ele é imune a dano, mas pode atirar lágrimas#Ambos os personagens recebe o efeito do Birthright"},
	{"Tainted Jacob 2", "", "Dark Esau se divide em dois, criando um clone de si mesmo#Ambos irão sempre carregar ao mesmo tempo#{{Collectible722}} Usar o Anima Sola acorrenta ambos"},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Tainted Soul ganha a habilidade do Recall, para recuperar automaticamente o Tainted Forgotten à distância"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0.5 Lágrimas#↑ {{Range}} +1.5 Alcance#↓ {{Speed}} -0.03 Velocidade", -- Lunch
	[23] = "↑ {{Tears}} +0.5 Lágrimas#↑ {{Shotspeed}} +0.2 Velocidade de disparo#↓ {{Speed}} -0.03 Velocidade", -- Dinner
	[24] = "↑ {{Damage}} +1 Dano#↑ {{Shotspeed}} +0.2 Velocidade de disparo#↓ {{Speed}} -0.03 Velocidade", -- Dessert
	[25] = "↑ +0.2 {{Shotspeed}} Velocidade de disparo#↑ {{Range}} +1.5 Alcance#↓ {{Speed}} -0.03 Velocidade", -- Breakfast
	[26] = "↑ {{Damage}} +1 Dano#↑ {{Range}} +1.5 Alcance#↓ {{Speed}} -0.03 Velocidade", -- Rotten Meat
	[456] = "↑ {{Damage}} +1 Dano#↑ {{Luck}} +1 Sorte#↓ {{Speed}} -0.03 Velocidade", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0.2 Velocidade de disparo#↑ {{Luck}} +1 Sorte#↓ {{Speed}} -0.03 Velocidade", -- A Snack
	[707] = "↑ {{Tears}} +0.5 Lágrimas#↑ {{Luck}} +1 Sorte#↓ {{Speed}} -0.03 Velocidade", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon infront of each buff-bulletpoint

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Também invoca o efeito do {{Collectible35}}Necronomicon", -- Kamikaze!
	[126] = "Também invoca o efeito do {{Collectible35}}Necronomicon", -- Razor Blade
	[127] = "Concede um aumento de dano para todo o próximo andar", -- Forget me Now
	[133] = "Concede um aumento de dano permanente", -- Guppy's Paw
	[135] = "Concede um aumento de dano a cada uso", -- IV Bag
	[147] = "O machado ganha um aumento na durabilidade e recuo, pode ser usado mais rápido, incendeia os inimigos e derruba mais pickups ao destruir cocôs e obstáculos", -- Notched Axe
	[186] = "Também invoca o efeito do {{Collectible126}}Razor Blade", -- Blood Rights
	[282] = "Deixa uma trilha de fogo que dá dano de contato e incendeia dos inimigos", -- How to Jump
	[290] = "Custa um coração de cada vez, concede um aumento de dano e deixa um rastro vermelho no chão", -- The Jar
	[295] = "Tem a chance de invocar o efeito do {{Collectible555}}Golden Razor", -- Magic Fingers
	[297] = "Gera um familiar demoníaco juntamente com o drop baseado no andar", -- Pandora's Box
	[323] = "Lágrimas lançadas tem o dano aumentado", -- Isaac's Tears
	[352] = "Ativa o Book of Belial quando quebrado - o aumento de dano persiste até o canhão ser consertado", -- Glass Cannon
	[475] = "Reaparece como Dark Judas se você tiver uma vida extra", -- Plan C
	[482] = "Substitui o item pego mais recentemente pelo {{Collectible51}}Pentagram", -- Clicker
	[487] = "Dano aumentado", -- Potato Peeler
	[536] = "Concede +10.8 de dano temporário para cada familiar sacrificado que desaparece lentamente da mesma forma que {{Collectible621}}Red Stew", -- Sacrificial Altar
	[555] = "Danifica e aplica o efeito do {{Collectible202}}Midas' Touch em tudo na sala", -- Golden Razor
	[577] = "Concede um aumento de dano permanente", -- Damocles
	[582] = "Concede um aumento de dano adicional pelo resto do andar baseado no número atual de usos", -- Wavy Cap
	[585] = "Altera o pagamento para 2 Corações Negros e 1 Item do Acordo com o Diabo#Torna-se 3 corações e 2 itens se um Acordo com o Diabo for feito", -- Alabaster Box
	[622] = "Concede um {{Collectible51}}Pentagram de graça", -- Genesis
	[623] = "Também invoca o efeito do {{Collectible126}}Razor Blade", -- Sharp Key
	[635] = "Cria uma linha do {{Collectible705}}Dark Arts entre você e o Stitches", -- Stitches
	[640] = "Lança uma {{Collectible118}}Brimstone em vez disso", -- Urn of Souls
	[642] = "Concede um aumento de dano permanente", -- Magic Skin
	[653] = "Os fantasmas perseguirão os inimigos", -- Vade Retro
	[685] = "Concede wisps da {{Collectible292}}Satanic Bible que aumentam a chance de Acordo com o Diabo", -- Jar of Wisps
	[705] = "Permite o ganho de aumentos de dano temporários", -- Dark Arts
	[710] = "Coletar Corações Vermelhos tem a chance de substituí-los por um Coração Negro", -- Bag of Crafting
	[729] = "Concede um enorme aumento de dano e lágrimas quando a cabeça está separada", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Lágrimas teleguiadas", -- The Bible
	[34] = "Lágrimas com o dobro de dano", -- The Book of Belial
	[35] = "3.5% de chance de disparar lágrimas de Medo#Efeito do Necronomicon quando destruído", -- The Necronomicon
	[36] = "2.5% de chance de disparar lágrimas do item {{Collectible236}} Ecoli", -- The Poop
	[37] = "Gera bombas que se espalham quando destuído", -- Mr. Boom
	[38] = "Lágrimas rápidas e imprecisas", -- Tammy's Head
	[39] = "5% de chance de atirar lágrimas que petrificam", -- Mom's Bra
	[40] = "Lágrimas explosivas#Explode quando destruído", -- Kamikaze!
	[41] = "7.5% de chance de disparar lágrimas de Medo", -- Mom's Pad
	[42] = "7.5% de chance de disparar lágrimas do item {{Collectible149}} Ipecac", -- Bob's Rotten Head
	[44] = "10% de chance de disparar lágrimas que teleportam inimigos#Wisps piscam a cada 5 segundos", -- Teleport!
	[45] = "20% de chance do inimigo soltar um coração quando morrer", -- Yum Heart
	[47] = "Lágrimas com metade do dano#Todas as wisps do Doctor's Remote disparam 3 lágrimas explosivas em direção a mira ao ativar o item", -- Doctor's Remote
	[49] = "Não pode disparar lágrimas#Todas as wisps do Shoop da Whoop! atiram lasers ao ativar o item", -- Shoop da Whoop!
	[56] = "Lágrimas rápidas e de baixo alcance#As wisp gotejam um rastro amarelo", -- Lemon Mishap
	[58] = "Imune a projéteis", -- Book of Shadows
	[65] = "Gera uma Bomba Troll quando destruída", -- Anarchist Cookbook
	[66] = "Desacelera os inimigos por 3 segundos quando destruído", -- The Hourglass
	[77] = "Dano de contato extra", -- My Little Unicorn
	[78] = "Não pode disparar lágrimas#Gera um familiar do item {{Collectible526}} 7 Seals para a sala atual quando destruído", -- Book of Revelations
	[83] = "Lágrimas que empurram", -- The Nail
	[84] = "Sem efeito especial", -- We Need to Go Deeper!
	[85] = "Gera uma carta quando destruído", -- Deck of Cards
	[86] = "Lágrimas de Dentes", -- Monstro's Tooth
	[93] = "Lágrimas Anti-gravidade#Chance de disparar lágrimas que causam Medo", -- The Gamekid
	[97] = "Gera 1 das 8 wisps: {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#Efeitos explosivos são prováveis", -- The Book of Sin
	[102] = "Gera 1 das 6 cores de wisps com efeitos aleatórios a cada run#Chances de Veneno, Petrificar, Confusão, Queima, lágrimas de Bomba Troll, ou gerar um inimigo aranha quando destruído#Todas as 6 geram uma pílula quando destruído", -- Mom's Bottle of Pills
	[105] = "Gera uma wisp extra por item trocado", -- The D6
	[107] = "Lágrimas que atravessam inimigos", -- The Pinking Shears
	[111] = "Gera um peido venenoso quando destruído", -- The Bean
	[123] = "Lágrimas aleatórias", -- Monster Manual
	[124] = "Gera uma wisp do item imitado", -- Dead Sea Scrolls
	[126] = "Wisp com HP alto", -- Razor Blade
	[127] = "Wisp com HP infinito somente para o novo andar", -- Forget Me Now
	[130] = "Não pode atirar lágrimas#Wisps carregam na direção que você dispara", -- A Pony
	[133] = "3 wisps com HP alto", -- Guppy's Paw
	[135] = "Sem efeito especial", -- IV Bag
	[136] = "7.5% de chance de disparar lágrimas que marcam#Inimigos marcados são atacados por outros inimigos", -- Best Friend
	[137] = "1 wisp por bomba detonda#As lágrimas das wisps também podem ser detonadas remotamente", -- Remote Detonator
	[145] = "Wisps são geradas ao invés de moscas#Gera uma Mosca Azul quando destruído", -- Guppy's Head
	[146] = "Lágrimas teleguiadas", -- Prayer Card
	[147] = "Quebrar rochas pode gerar aleatoriamente 1 de 5 wisps de material#Chance de carvão, Confusão, moeda, dano dobrado, ou lágrimas de laser", -- Notched Axe
	[158] = "Lágrimas rápidas e precisas", -- Crystal Ball
	[160] = "Invoca feixes de luz ao contato", -- Crack the Sky
	[164] = "Wisp que dura somente uma sala", -- The Candle
	[166] = "Destrói todos os pickups, tem uma chance de gerar uma wisp para cada um", -- D20
	[171] = "7.5% de chance de disparar lágrimas que aplicam lentidão", -- Spider Butt
	[175] = "Wisps abrem baús/portas abertas ao toque, incluindo o Mega Satan, Subida e portas do Corpse", -- Dad's Key
	[177] = "Gera uma wisp com base na recompensa que você ganhar", -- Portable Slot
	[181] = "10% de chance de disparar lágrimas de Luz Sagrada", -- White Pony
	[186] = "Wisp com HP alto", -- Blood Rights
	[192] = "Lágrimas teleguiadas", -- Telepathy for Dummies
	[263] = "15% de chance do inimigo soltar uma runa ao morrer#Gera uma runa quando destruído", -- Clear Rune
	[282] = "Até 6 wisps estacionárias", -- How to Jump
	[283] = "Troca suas wisps, mais 1 wisp aleatória#Não troca o Book of Virtues", -- D100
	[284] = "Remove todas as wisps e te dá uma wisp aleatória a cada 2 items ganhos#Não troca o Book of Virtues", -- D4
	[285] = "10% de chance de ativar o efeito do D10 ao atingir um inimigo", -- D10
	[286] = "15% de chance do inimigo soltar uma carta ao morrer#Gera uma carta ao morrer", -- Blank Card
	[287] = "Efeito do {{Collectible675}} Cracked Orb quando destruído", -- Book of Secrets
	[288] = "Gera wisps em vez de aranhas#Gera uma Aranha Azul quando destrído", -- Box of Spiders
	[289] = "Wisp que dura somente uma sala#Lágrimas de chama vermelha", -- Red Candle
	[290] = "Gera uma wisp no lugar de cada coração#Chance de soltar meio coração quando morrer", -- The Jar
	[291] = "Gera uma wisp extra para cada inimigo transformado", -- Flush!
	[292] = "+10% de chance de {{DevilRoom}}Sala do Diabo ou {{AngelRoom}}Sala do Anjo para cada wisp da Satanic Bible", -- Satanic Bible
	[293] = "Dispara lasers nas 4 direções quando destruído", -- Head of Krampus
	[294] = "Wisp que dura somente uma sala#Não pode disparar lágrimas#Efeito do Butter Bean quando destruído", -- Butter Bean
	[295] = "Chance de soltar uma moeda quando destuído", -- Magic Fingers
	[296] = "Sem efeito especial", -- Converter
	[297] = "Sem efeito especial", -- Pandora's Box
	[298] = "Não pode disparar lágrimas#Imune a dano de contao#Não causa dano de contato a menos que o Unicorn Stump esteja ativo", -- Unicorn Stump
	[323] = "Gera 6 wisps#3 segundos de vida", -- Isaac's Tears
	[324] = "Lágrimas do item {{Collectible570}} Playdough Cookie", -- Undefined
	[325] = "Lágrimas se agrupam em arco", -- Scissors
	[326] = "Gera uma wisp ao receber dano", -- Breath of Life
	[338] = "Wisp que dura somente uma sala#Lágrima boomerang", -- The Boomerang
	[347] = "Lágrimas do item {{Collectible245}} 20/20#Dobra suas outras wisps", -- Diplopia
	[348] = "Gera uma pílula quando destruído", -- Placebo
	[349] = "50% de chance de soltar uma moeda quando destruído", -- Wooden Nickel
	[351] = "Todas as wisps do Mega Bean enviam uma onda de rocha quando usado#Petrifica e gera um peido venenoso quando destruído", -- Mega Bean
	[352] = "Todas as wisps do Glass Cannon são destruídas quando uma for destruída#Persiste entre salas", -- Glass Cannon
	[357] = "Duplica suas wisps para a sala atual", -- Box of Friends
	[382] = "Inimigos capturados geram uma wisp normal, com lágrimas telegriadas, explosiva ou com Brimstone quando morrem, dependendo do seu tipo", -- Friendly Ball
	[383] = "As lágrimas das wisps podem ser detonadas transformando-se em 6 lágrimas do personagem#Explode em lágrimas do personagem quando destruído#Persiste entre salas", -- Tear Detonator
	[386] = "5% de chance das lágrimas trocarem os objetos da sala (exceto Cocô e TNT) ao atingí-los", -- D12
	[396] = "Não pode disparar lágrimas#Cada portal tem uma wisp", -- Ventricle Razor
	[406] = "Dano e velocidade de disparo aleatórios", -- D8
	[419] = "20% de chance das lágrimas teleportarem inimigos#Wisps piscam a cada 5 segundos", -- Teleport 2.0
	[421] = "Gera um peido que encanta quando destruído", -- Kidney Bean
	[422] = "30% de chance de disparar lágrimas que petrificam", -- Glowing Hour Glass
	[427] = "Salta inofensivamente ao redor da sala, explodindo quando atingido pelo Isaac#Não pode disparar lágrimas ou causar dano de contato", -- Mine Crafter
	[434] = "Wisps são geradas ao invés de moscas#Até 5 moscas fazem 1 wisp com vida e dano aumentado", -- Jar of Flies
	[437] = "Efeito do D7 quando atingido pela primeira vez", -- D7
	[439] = "Sem efeito especial", -- Mom's Box
	[441] = "Lágrimas do {{Collectible275}} Lil Brimstone (requer que o botão de disparo seja solto)#Todas as wisps do Mega Blast wisps disparam continuamente durante um Mega Blast", -- Mega Blast
	[475] = "8 wisps com dano elevado", -- Plan C
	[476] = "Gera uma segunda wisp se nenhum pickup foi duplicado", -- D1
	[477] = "Gera uma wisp de todos os items ativáveis absorvidos#Não gera uma wisp por si mesmo", -- Void
	[478] = "Pausa todos os inimigos e disparos por 3 segundos quando destruído", -- Pause
	[479] = "Chance de gerar um trinket quando destruído", -- Smelter
	[480] = "A vida das Wisps aumenta quanto mais pickups são destruídos", -- Compost
	[481] = "5% de chance de disparar lágrimas que transformam inimigos em wisps aleatórias", -- Dataminer
	[482] = "Gera uma wisp aleatória", -- Clicker
	[483] = "8 wisps que geram uma Bomba Troll Dourada quando destruído", -- Mama Mega!
	[484] = "Wisp que dura somente uma sala#Não pode disparar lágrimas#Efeito do Wait What? quando destruído", -- Wait What?
	[485] = "Todas as wisps do Crooked Penny são destruídas ou duplicadas quando uma recebe dano", -- Crooked Penny
	[486] = "Não pode disparar lágrimas#Chance de negar dano recebido pelo Isaac", -- Dull Razor
	[487] = "Wisp Permanente#Persegue inimigos para disparar neles#Não bloqueia disparos nem causa dano de contato", -- Potato Peeler
	[488] = "Gera uma wisp do item imitado (aleatório se o item não for ativável)", -- Metronome
	[489] = "Gera uma wisp normal além dos efeitos de wisp do dado imitado", -- D Infinity
	[490] = "Gera uma wisp aleatória#Reaparece depois de limpar uma sala se destruída", -- Eden's Soul
	[504] = "Wisp que dura somente uma sala#Lágrimas rápidas e precisas", -- Brown Nugget
	[507] = "Chance de gerar uma wisp ao matar", -- Sharp Straw
	[510] = "Lágrimas do {{Collectible299}} Monstro's Lung, {{Collectible268}} Rotten Baby,  {{Collectible87}} Loki's Horns ou {{Collectible118}} Brimstone", -- Delirious
	[512] = "Lágrimas magnéticas", -- Black Hole
	[515] = "Gera uma wisp aleatória#Reaparece depois de limpar uma sala se destruída", -- Mystery Gift
	[516] = "Lágrimas disparam em 8 direções como o Sprinkler", -- Sprinkler
	[521] = "Disparo triplo#As wisps serão destruídas caso você faça uma compra", -- Coupon
	[522] = "Projéteis capturados se tornam wisps", -- Telekinesis
	[523] = "Gera uma wisp somente se um item for solto#Gera um pickup aleatório quando destruído", -- Moving Box
	[527] = "Não pode disparar lágrimas#As wisps abrem baús/portas ao limpar a sala", -- Mr. ME!
	[536] = "Converte todas as wisps em Meios Corações Vermelhos#Gera uma wisp forte ao sacrificar", -- Sacrificial Altar
	[545] = "Gera um Bony amigável quando destruído", -- Book of the Dead
	[550] = "10% de chance das lágrimas acionarem uma pisada no inimigo", -- Broken Shovel
	[552] = "10% de chance das lágrimas acionarem uma pisada no inimigo#Também gera uma wisp com HP alto que não pode disparar lágrimas", -- Mom's Shovel
	[555] = "15% de chance de lágrimas com o efeito do {{Collectible202}} Midas' Touch", -- Golden Razor
	[556] = "Lágrimas são um laser de curto alcance", -- Sulfur
	[557] = "+0.2 de Sorte para cada wisp do Fortune Cookie", -- Fortune Cookie
	[577] = "Sem efeito especial", -- Damocles
	[578] = "As wisps gotejam um rastro amarelo", -- Free Lemonade
	[580] = "Chance de criar Portas Vermelhas ao entrar em uma nova sala", -- Red Key
	[582] = "Máximo de 1 wisp do Wavy Cap", -- Wavy Cap
	[584] = "Nenhum benefício de várias cópias", -- Book of Virtues
	[585] = "8 wisps", -- Alabaster Box
	[604] = "Wisp que dura somente uma sala#3 wisps criadas onde algo pousa#10% de chance de lágrimas que confundem", -- Mom's Bracelet
	[605] = "Sem efeito especial", -- The Scooper
	[609] = "Wisp invencível#50% de chance de todas as wisps do Eternal D6 serem destruídas ao usá-lo", -- Eternal D6
	[611] = "Vida e dano aumentam com base no número de cargas", -- Larynx
	[622] = "3 wisps#Remove todas as outras wisps", -- Genesis
	[623] = "Sem efeito especial", -- Sharp Key
	[631] = "Divide suas wisps ao meio (metade da saúde e dano)#Wisps são destruídas se divididas pela terceira vez", -- Meat Cleaver
	[635] = "Deixa uma wisp estacionária para trás#Até 6 wisps estacionárias", -- Stitches
	[636] = "Nenhuma wisp", -- R Key
	[638] = "Apaga inimigos não chefes ao contato", -- Eraser
	[639] = "Não pode atirar lágrimas#Gera uma Mosca Azul ao limpar uma sala", -- Yuck Heart
	[640] = "Chance de disparar lágrimas de chama azul", -- Urn of Souls
	[642] = "Lágrimas venenosas", -- Magic Skin
	[650] = "Quando Baby Plum salta diagonalmente, todos as wisps do Plum Flute fazem o mesmo", -- Plum Flute
	[653] = "Nenhuma wisp#Fantasmas vermelhos podem atirar lágrimas", -- Vade Retro
	[655] = "Wisps temporárias durante o uso", -- Spin to Win
	[685] = "Dobra as wisps geradas, adiciona mais uma", -- Jar of Wisps
	[687] = "Gera uma wisp aleatória", -- Friend Finder
	[703] = "Sem efeito especial", -- Esau Jr.
	[704] = "Wisp com HP alto#Não pode atirar lágrimas", -- Berserk
	[705] = "Wisp que dura somente uma sala para cada inimigo morto", -- Dark Arts
	[706] = "Wisp com HP alto#Não pode atirar lágrimas", -- Abyss
	[709] = "Wisp que dura somente uma sala#3 wisps criadas onde você aterrissar", -- Suplex
	[710] = "Gera uma wisp aleatória ao criar um item", -- Bag of Crafting
	[711] = "Sem efeito especial", -- Flip
	[712] = "As wisps podem atirar lágrimas teleguiadas", -- Lemegeton
	[713] = "Nenhuma wisp", -- Sumptorium
	[719] = "20% de chance do inimigo soltar uma moeda ao morrer", -- Keeper's Box
	[720] = "Gera uma wisp aleatória", -- Everything Jar
	[722] = "Orbita o inimigo acorrentado atirando nele#A wisp morre quando o inimigo morrer", -- Anima Sola
	[723] = "Troca suas wisps para o mesmo tipo", -- Spindown Dice
	[728] = "Todas as wisps vão orbitar o Gello", -- Gello
	[729] = "Wisp estacionária", -- Decap Attack
}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
	[2] = "Três gafanhotos normais", -- The Inner Eye
	[3] = "Gafanhoto roxo teleguiado", -- Spoon Bender
	[4] = "Gafanhoto vermelho e grande que causa o triplo de dano", -- Cricket's Head
	[6] = "Gafanhoto amarelo, rápido e de curto alcance que causa dano mais rapidamente", -- Number One
	[7] = "Gafanhoto vermelho que causa o dobro de dano", -- Blood of the Martyr
	[10] = "Dois gafanhotos cinzas que causam metade do dano", -- Halo of Flies
	[13] = "Gafanhoto verde que envenena os inimigos", -- The Virus
	[103] = "Gafanhoto verde que envenena os inimigos", -- The Common Cold
	[118] = "Gafanhoto cinza, maior e que é diferente do normal", -- Brimstone
	[149] = "Gafanhoto verde, grande e lento que causa x1.5 o seu dano e envenena os inimigos", -- Ipecac
	[153] = "Quatro gafanhotos normais", -- Mutant Spider
	[257] = "Gafanho laranja e em chamas que incendeia os inimigos", -- Fire Mind
	[305] = "Gafanhoto verde que envenena os inimigos", -- Scorpio
	[374] = "Gafanhoto ciano e brilhante que pode fazer surgir raios de luz que causam 3x o seu dano", -- Holy Light
	[494] = "Gafanhoto azul claro com arcos de eletricidade que causam 0.1 de dano por tick", -- Jacob's Ladder
	[559] = "Gafanhoto azul claro com arcos de eletricidade que causam 0.1 de dano por tick", -- 120 Volt
}

---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "", "{{Coin}} Gera 1 moeda quando for atingido#0-1 com o Keeper"}, -- Swallowed Penny
	[10] = {"10", "", "Lágrimas movem-se em ondas#↑ {{Tears}} +0.4 Lágrimas#Lágrimas espectrais"}, -- Wiggle Worm
	[11] = {"11", "", "Lágrimas movem-se em espiral em alta velocidade#↑ {{Tears}} +0.4 Lágrimas#Lágrimas espectrais"}, -- Ring Worm
	[15] = {"15", "", "{{Coin}} 33% de chance de gerar uma moeda quando destruir rochas"},-- Lucky Rock
	[24] = {"24", "", "{{Coin}} Peide ao pegar moedas#Maior chance de gerar moedas em cocôs#{{Poison}} Peido causa recuo e envenenamento em inimigos e projéteis"}, -- Butt Penny
	[26] = {"26", "", "Lágrimas movem-se em padrões angulares#↑ {{Tears}} +0.4 Lágrimas##↑ {{Range}} +1.5 Alcance#Lágrimas espectrais"}, -- Hook Worm
	[32] = {"32", "", "25% de chance de receber um efeito de cogumelo aleatório por sala"}, -- Liberty Cap
	[33] = {"33", "", "Quando estiver com um coração vermelho ou menos, ganhe um#{{Collectible100}} Little Steven#{{Collectible318}} Alta chance de gerar um familiar Gemini para a sala atual ao receber dano"}, -- Umbilical Cord
	[39] = {"39", "", "↑ {{Tears}} +1 Taxa de disparo"}, -- Cancer
	[48] = {"48", "", "Chance de quando for atingido, danificar todos os inimigos na sala#Corações negros e {{Collectible35}} efeitos como Necronomicon causam o dobro de dano"}, -- A Missing Page
	[49] = {"49", "", "{{HalfHeart}} 25% de chance de soltar meio coração quando pegar uma moeda"}, -- Bloody Penny
	[50] = {"50", "", "{{Bomb}} 25% de chance de soltar uma bomba quando pegar uma moeda"}, -- Burnt Penny
	[51] = {"51", "", "{{Key}} 25% de chance de soltar uma chave quando pegar uma moeda"}, -- Flat Penny
	[58] = {"58", "", "{{Damage}} 1/15 de chance de +0.5 Dano quando matar um inimigo#{{Luck}} 100% de chance com 10 de sorte#Efeito somente para a sala atual"}, -- Samson's Lock
	[65] = {"65", "", "↑ {{Range}} +3 Alcance"}, -- Tape Worm
	[66] = {"66", "", "↓ {{Shotspeed}} -0.5 Velocidade de disparo"}, -- Lazy Worm
	[69] = {"69", "", "Camufla o jogador aleatoriamente#Confunde inimigos#Pode ser ussado para abrir a porta para o andar \"Home\""}, -- Faded Polaroid
	[80] = {"80", "", "↑ {{Damage}} +0.5 Dano para cada item {{DevilRoom}} maligno que estiver segurando"}, -- Black Feather
	[92] = {"92", "", "↑ Aumeta as estatísticas de seus itens em 20%"}, -- Cracked Crown
	[96] = {"96", "", "As lágrimas se movem rapidamente em um padrão espiral#↑ {{Tears}} +0.4 Lágrimas#↑ {{Range}} +1.5 Alcance#Lágrimas spectrais#Chance de lágrimas teleguiadas"}, -- Ouroboros Worm
	[98] = {"98", "", "{{Poison}} 10% de chance de disparar lágrimas teleguiadas, pegajosas e venenosas#Causa o seu dano a cada segundo#Gruda por 10 segundos"},
	[101] = {"101", "", "!!! Enquanto segurar um item ativador descarregado:#↑ {{Damage}} +1.5 Dano#↑ {{Speed}} +0.5 Velocidade#↑ {{Range}} +1.5 Alcance#↑ {{Tears}} +0.5 Lágrima#↑ {{Shotspeed}} +0.3 Velocidade de disparo#↑ {{Luck}} +2 Sorte"}, -- Dim Bulb
	[110] = {"110", "", "{{Shop}} Lojas vão aparecer no Womb e Corpse"}, -- Silver Dollar
	[111] = {"111", "", "{{TreasureRoom}} Salas do item agora aparecem em the Womb e Corpse"}, -- Bloody Crown
	[119] = {"119", "", "Define seu HP vermelho para 50% do seu máximo ao entrar no próximo andar#Se sua saúde está acima disso, cura meio coração vermelho"}, -- Stem Cell
	[128] = {"128", "", "{{EmptyBoneHeart}} 5% de chance de ganhar um coração de osso ao receber dano"}, -- Finger Bone
	[129] = {"129","","Chance de atirar dentes"}, --  Jawbreaker
	[130] = {"130","","{{Slow}} Chance de atirar lágrimas de lentidão#{{Luck}} 100% de chance com 18 de sorte"}, --  Chewed Pen
	[131] = {"131","","{{SoulHeart}} Chance de soltar meio coração de alma quando pegar uma moeda"}, --  Blessed Penny
	[132] = {"132","","Chance de ganhar o efeito de uma seringa aleatória para a sala atual"}, --  Broken Syringe
	[133] = {"133","","Bombas colocadas pelo personagem explodem mais rápido"}, --  Short Fuse
	[134] = {"134","","Aumenta o tamanho do peido"}, -- Gigante Bean
	[135] = {"135","","{{Burning}} Chance de queimar os inimigos ao entrar em uma sala"}, --  A Lighter
	[136] = {"136","","Portas, blocos de chaves e baús dourados podem ser abertos com explosões#Também pode abrir a porta de Casas"}, --  Broken Padlock
	[137] = {"137","","Quando entrar em um novo andar, até 4 pickups não coletados do andar anterior aparecem na sala inicial"}, --  Myosotis
	[138] = {"138","","Usar um item ativador troca ele"}, --  'M
	[139] = {"139","","{{Luck}} Lágrimas baseadas em efeito de sorte ocorre com mais frequência"}, --  Teardrop Charm
	[140] = {"140","","Pegar corações vermelhos pode convertê-los em aranhas azuis#Funciona quando estiver com a saúde cheia#O efeito pode consumir corações necessários para curar"}, --  Apple of Sodom
	[141] = {"141","","Aumenta a taxa de tiro dos familiares"}, --  Forgotten Lullaby
	[142] = {"142","","{{Collectible584}} No início de cada andar, gera 4 Book of Virtues orbitais"}, --  Beth's Faith
	[143] = {"143","","Impede que o item carregue#{{Battery}} 20% de chance de gerar uma bateria quando limpa uma sala#{{Luck}} 33% de chance com 5 de sorte"}, --  Old Capacitor
	[144] = {"144","","Lágrimas que erram os inimigos irão ser redirecionar 90 graus em direção aos inimigos"}, --  Brain Worm
	[145] = {"145","","↑ {{Luck}} +10 Sorte enquanto segurar#É destruída quando receber dano"}, -- Perfection
	[146] = {"146","","{{TreasureRoom}} Salas do tesouro agora contem acordos com o Diabo"}, --  Devil's Crown
	[147] = {"147","","17% de chance de adicionar uma carga para seu item ativador ao pegar moedas"}, --  Charged Penny
	[148] = {"148","","Faz com que os familiares circulem o personagem"}, --  Friendship Necklace
	[149] = {"149","","Ativa seu item ativador ao receber dano"}, --  Panic Button
	[150] = {"150","","Entrar em uma sala que requer uma chave te leva para uma sala parecida com Womb#A sala atua como um meio-termo das duas salas"}, --  Blue Key
	[151] = {"151","","Faz com que os espinhos tornam-se inofensivos#{{CursedRoom}} Também afeta as portas da sala da maldição, Mímicos e qualquer obstáculo com espinhos"}, --  Flat File
	[152] = {"152","","+24% de chance de {{Planetarium}}Planetário se nenhum apareceu ainda#+9% se um Planetário já apareceu#Planetários podem aparecer no Womb e Corpse"}, --  Telescope Lens
	[153] = {"153","","25% de chance de efeito de um item aleatório da Mãe por sala"}, --  Mom's Lock
	[154] = {"154","","50% de chance um item consumível Dado temporário por sala#O Dado desaparece quando sai#Não ocupa um slot de pílula/carta"}, --  Dice Bag
	[155] = {"155","","Gera uma Sala do Tesouro {{TreasureRoom}} e Loja {{Shop}} na Cathedral"}, --  Holy Crown
	[156] = {"156","","Ganhe um espaço de coração#Funciona para o Keeper também"}, --  Mother's Kiss
	[157] = {"157","","A cada 15 tiros, atire uma lágrima Ipecac {{Collectible149}} + My Reflection {{Collectible5}} com maior número de alcance"}, --  Torn Card
	[158] = {"158","","Ao ser atingido, o personagem solta 2 moedas, chaves ou bombas#Estes pickups podem ser substituidos por outras variações, como a chave dourada, nickels, diamantes, etc.#(Exceto: Corações, Cartas, Pílulas, Runas)"}, --  Torn Pocket
	[159] = {"159","","{{Key}} +1 Chave#Substitui todos os baús por Baús Dourados (excerto Old/Mega)#Baús Dourados podem conter cartas, pílulas ou trinkets extras#Exceto: Mega Chest, Old Chest"}, --  Gilded Key
	[160] = {"160","","Gera uma Grab Bag ao viajar para o próximo andar"}, --  Lucky Sack
	[161] = {"161","","Gera uma Sala do Tesouro {{TreasureRoom}} e Loja {{Shop}} no Sheol"}, --  Wicked Crown
	[162] = {"162","","{{Player7}} 50% de chance de transformar-se em Azazel quando entra em uma nova sala#O efeito dura até limpar e sair de outra sala"}, --  Azazel's Stump
	[163] = {"163","","Gera 2 Dips amigáveis quando limpa uma sala"}, --  Dingle Berry
	[164] = {"164","","{{Bomb}} Gera uma bomba extra para cada bomba colocada"}, --  Ring Cap
	[165] = {"165","","{{Coin}} No Womb e diante, substitua todos as moedas e chaves por outro pickup ou mosca#Resultados possíveis: Bombas, Corações, Pílulas, Cartas, Trinkets, Baterias"}, --  Nuh Uh!
	[166] = {"166","","50% de chance de garatir o efeito de um item passivo para cada sala"}, --  Modeling Clay
	[167] = {"167","","25% de chance de gerar um Bony amigável quando limpa uma sala"}, --  Polished Bone
	[168] = {"168","","{{EmptyBoneHeart}} +1 espaço de coração de osso ao entrar em um novo andar"}, --  Hollow Heart
	[169] = {"169","","Enquanto segurar, conta como item para a transformação Guppy"}, --  Kid's Drawing
	[170] = {"170","","{{Collectible580}} 33% de chance de gerar automaticamente uma sala da Red Key toda vez que limpar uma sala"}, --  Crystal Key
	[171] = {"171","","50% de chance de Acordos com o Diabo custarem moedas em vez de corações"}, --  Keeper's Bargain
	[172] = {"172","","Teleporta você para uma sala aleatória quando pega um penny#Pode teleportar para salas secretas"}, --  Cursed Penny
	[173] = {"173","","Um item de acordo com o Diabo de graça"}, --  Your Soul
	[174] = {"174","","{{DevilChance}} +10% de chance de acordo com Diabo#Impede que o Krampus apareça nos acordos com o Diabo#Acordos com o Diabo serão transformados em sala de acordo especiais com mais acordos, inimigos e Corações Negros"}, --  Number Magnet
	[175] = {"175","","Libera a passagem para a luta contra o Hush, independentemente da duração da corrida#Usar a Pandora's Box {{Collectible297}} gera 6 itens de lugares aleatórios"}, --  Strange Key
	[176] = {"176","","Gera um familiar que imita o movimento do personagem, direção do tiro e efeito da lágrima#O familiar renasce a cada sala se morrer"}, --  Lil Clot
	[177] = {"177","","Gera um baú depois de concluir uma {{ChallengeRoom}}Sala do Desafio, ou um colecionável depois de concluir uma {{BossRushRoom}}Sala do Desafio de chefe"}, --  Temporary Tattoo
	[178] = {"178","","50% de chance do personagem explodir ao receber dano"}, --  Swallowed M80
	[179] = {"179","","O movimento dos familiares será controlado pelos mesmos comandos do jogador#Segure o botão de Soltar para manter o familiar no lugar, igual ao Jacob e Esau"}, --  RC Remote
	[180] = {"180","","Familiar que segue os movimentos exatos do personagem e dispara lágrimas espectrais#Tem o mesmo dano e efeito da lágrima do jogador#Renasce a cada andar"}, --  Found Soul
	[181] = {"181","","Quando ativar um item ativador, há chance de ativar um outro aleatório"}, --  Expansion Pack
	[182] = {"182",""," Gera 5 wisps ao entrar em uma {{AngelRoom}}Sala do anjo#25% de chance de gerar uma wisp ao doar a um Mendigo"}, --  Beth's Essence
	[183] = {"183","","50% de chance de duplicar um familiar a cada sala#Se você não tem nenhum familiar, concede {{Collectible8}}Brother Bobby ou {{Collectible67}}Sister Maggy em vez disso"}, --  The Twins
	[184] = {"184","","{{Shop}} Lojas podem vender familiares por 10 moedas"}, --  Adoption Papers
	[185] = {"185","","17% de chance de gerar um gafanhoto aleatório quando matar um inimigo"}, --  Cricket Leg
	[186] = {"186","","{{Collectible706}} Concede 1 gafanhoto Abyss"}, --  Apollyon's Best Friend
	[187] = {"187","","{{TreasureRoom}} 50% de chance de adicionar um item cego extra nas salas de itens#50% de revelar o item cego no caminho alternativo"}, --  Broken Glasses
	[188] = {"188","","20% de chance de petrificar um inimigo quando entra em uma sala#Matar o inimigo petrificado o congela"}, --  Ice Cube
	[189] = {"189","","Ativa um escudo de 1 segundo ao matar um inimigo#Matar um inimigo com o escudo ativo adiciona mais um segundo"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "Efeito dobrado!"
EID.descriptions[languageCode].tripledTrinket = "Efeito triplicado!"
EID.descriptions[languageCode].quadrupledTrinket = "Efeito quadruplicado!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "meio coração", "um coração", "um coração e meio" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"-{{ColorGold}}30{{CR}}% da vida dos chefes#Cura {{ColorGold}}2{{CR}} Corações Vermelhos ao entrar em uma {{BossRoom}}Sala do Chefe#{{ColorGold}}Removível!",
		"-{{ColorGold}}30{{CR}}% da vida dos chefes#Cura {{ColorGold}}2{{CR}} Corações Vermelhos ao entrar em uma {{BossRoom}}Sala do Chefe#!!! Uma vez pego, não pode ser removido#Removível apenas com {{Trinket41}}Match Stick ou {{Pill}}Gulp!",
		"-{{ColorGold}}30{{CR}}% da vida dos chefes#Cura {{ColorGold}}3{{CR}} Corações Vermelhos ao entrar em uma {{BossRoom}}Sala do Chefe#{{ColorGold}}Removível!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "O aumento de estatísticas do Worm são dobrados", "O aumento de estatísticas do Worm são triplicados", "O aumento de estatísticas do Worm são quadruplicados", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "O efeito do Trinket é duplicado se possível", "O efeito do Trinket é triplicado se possível", "O efeito do Trinket é quadruplicado se possível", },
	-- NO!
	[88] = { "Impede que itens de Qualidade {{Quality0}} apareçam" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Substitui todos os baús (exceto Old/Mega)por Baús Dourados#Baús Dourados podem conter cartas extras, pílulas ou trinkets" },
}

---------- Cards ----------

local repCards={
	[2] = {"2", "", "Concede para a sala atual: #Lágrimas teleguiadas#↑ {{Range}} +3 Alcance"}, -- I - The Magician
	[4] = {"4", "", "Concede para a sala atual: #↑ {{Damage}} +2.35 Dano#↑ {{Speed}} +0.3 Velocidade"}, -- III - The Empress
	[12] = {"12", "", "Concede para a sala atual: #↑ {{Heart}} +1 Saúde#↑ {{Damage}} +0.3 Dano#↑ {{Damage}} +50% Dano#↑ {{Range}} +5.25 Alcance#↑ {{Speed}} +0.3 Velocidade"}, -- XI - Strength
	[16] = {"16", "", "↑ {{Damage}} +2 Dano para a sala atual"}, -- XV - The Devil
	[27] = {"27", "", "{{Bomb}} Troca todos os pickups, baús e inimigos não chefes em bombas"},
	[28] = {"28", "", "{{Coin}} Troca todos os pickups, baús e inimigos não chefes em moedas"},
	[29] = {"29", "", "{{Key}} Troca todos os pickups, baús e inimigos não chefes em chaves"},
	[30] = {"30", "", "{{Heart}} Troca todos os pickups, baús e inimigos não chefes em corações"},
	[39] = {"39", "", "Invencibilidades por 20 segundos"},
	[51] = {"51", "", "{{HolyMantle}} Concede o efeito do Holy Mantle#(Ignora o próximo dano recebido)#O efeito dura até que o dano seja recebido"}, -- Holy card
	[52] = {"52", "", "↑ {{Damage}} +7 Dano#↑ {{Range}} +3 Alcance#Destrói pedras ao andar sobre elas#Aumenta seu tamanho#Efeito somente para a sala atual"}, -- Huge Growth
	[54] = {"54", "", "{{Slow}} Desacelera os inimigos#↑ {{Speed}} +0.5 Velocidade#↓ {{Shotspeed}} -1 Velocidade de disparo#Efeito somente para a sala atual"}, -- Era Walk
	[55] = {"55", "", "{{Rune}} Ativa o efeito de uma runa aleatória#O efeito da runa é mais fraco"},
	[56] = {"56", "", "Solta todos os seus corações e pickups#Sobra apenas meio coração#Pickups podem gerar como {{Collectible74}} {{Collectible19}} colecionáveis se a quantidade for suficiente"},
	[57] = {"57", "", "Concede um grande projétil e aura de repulsão#Dura 1 minuto"},
	[58] = {"58", "", "O Pé da Mãe pisa repetidamente por 1 minuto"},
	[59] = {"59", "", "Por 1 minuto:#↑ {{Heart}} +2 Corações#↑ {{Tears}} +1.35 Lágrimas"},
	[60] = {"60", "", "Teleporta você para um Chefe extra com saque extra#O chefe é escolhido de dois andares abaixo do atual"},
	[61] = {"61", "", "{{EmptyBoneHeart}} Gera 2 Corações de osso"},
	[62] = {"62", "", "Gera 1 item da sala atual#{{BrokenHeart}} Troca 1 espaço de coração vermelho ou 2 Corações de alma em um coração quebrado"},
	[63] = {"63", "", "Transforme-se em uma estátua imóvel e invencível por 10 segundos#↑ {{Tears}} Taxa de tiro extrema enquanto durar"},
	[64] = {"64", "", "Gera 2-4 baús dourados"},
	[65] = {"65", "", "Toca pickups e itens na sala em moedas#{{Shop}} Os valores das moedas são iguais ao valor da loja"},
	[66] = {"66", "", "Efeito de dado aleatório"},
	[67] = {"67", "", "{{Weakness}} Inimigos na sala são enfraquecidos, desacelerados e recebem o dobro de dano"},
	[68] = {"68", "", "{{Player14}} Transforma o personagem em Keeper por 30 segundos#Garante tiro triplo e menos velocidade#Matar inimigos solta uma moeda aleatória"},
	[69] = {"69", "", "{{Collectible545}} Ativa o efeito do Book of the Dead#Gera uma entidades de ossos para cada inimigo morto na sala"},
	[70] = {"70", "", "{{Pill}} Aplica 5 efeitos de pílulas  aleatórias"},
	[71] = {"71", "", "{{Collectible33}} Ativa o efeito do Bible#{{Collectible390}} Garante o familiar Seraphim e vôo por 30 segundos"},
	[72] = {"72", "", "Gera 6 aglomerado de rochas e obstáculos  aleatórios#Aglomerado frequentemente conterão Tinted Rocks"},
	[73] = {"73", "", "Remove itens passivos velhos (ignora itens iniciais)#Gera 2 itens aleatórios da sala atual"},
	[74] = {"74", "", "{{UltraSecretRoom}} Teleporta você para sala Ultra Secreta#O caminho de volta serão salas vermelhas"},
	[75] = {"75", "", "Para a sala atual: #↑ {{Collectible159}} Ganhe um Spirit of the Night#↑ {{Damage}} +1.5 Dano#Para o andar atual#{{BoneHearts}} Troca corações vermelhos em corações de osso#{{CurseDarkness}} Aplica Curse of Darkness"},
	[76] = {"76", "", "{{RestockMachine}} Gera uma Restock Machine"},
	[77] = {"77", "", "Gera um alçapão para o crawl space"},
	[78] = {"78", "", "{{Collectible580}} Uma vez, use a chave vermelha"},
	[79] = {"79", "", "{{Heart}} Gera 1-20 corações vermelhos"},
	[80] = {"80", "", "Copia o efeito da pílula, carta, runa, pedra da alma ou item ativador usados por ultimo"},
	[81] = {"81", "", "Troca todos os itens na sala#Volta todos os itens após um segundo#Efeito se repete"},
	[82] = {"82", "", "Circunda o personagem com uma aura vermelha borbulhante para a sala atual#{{HalfHeart}} Inimigos mortos solta metade de um coração vermelho que desaparece em 2 segundos"},
	[83] = {"83", "", "Abre todas as portas na sala#{{Collectible580}} Cria salas vermelas com a Red Key para cada saída possivel"},
	[84] = {"84", "", "Transforma o personagem em um fantasma que pode atravessar inimigos para paralisa-los#Depois de alguns segundos, vai atacar todos eles, ganhando bônus de dano por alvo"},
	[85] = {"85", "", "{{Poison}} Causa 8 peidos venenosos com trilha#Depois gera uma trilha de 7 Butt Bombs#Ficar na trilha garante: #↑ {{Tears}} +1.35 Lágrimas#↑ {{Damage}} +1 Dano"},
	[86] = {"86", "", "14 familiares Dead Bird voam e atacam os inimigos#Dura para a sala atual"},
	[87] = {"87", "", "Transforme-se em Samson com ataques corpo-a-corpo por 10 segundos#↑ {{Speed}} +0.4 Velocidade#↑ {{Tears}} Lágrimas#↑ {{Damage}} +3 Dano"},
	[88] = {"88", "", "{{Collectible441}} Ativa Mega Blast por 7.5 segundos"},
	[89] = {"89", "", "Ao morrer, reviva instantaneamente com meio coração e algum tempo de invencibilidade#Usado automaticamente quando recebe um dano fatal#Como uma vida extra"},
	[90] = {"90", "", "Ativa o efeito do D6 {{Collectible105}} e D20 {{Collectible166}} #Os itens trocados vem de salas aleatórias"},
	[91] = {"91", "", "{{Player10}} Morra e transforme-se em The Lost para a sala atual#Você pode pegar um item da {{DevilRoom}}Sala do Diabo de graça, o resto desaparecerá#Você pode entrar na porta do Mausoleum ou Gehenna de graça"},
	[92] = {"92", "", "Ganhe 1 familiar aleatório"},
	[93] = {"93", "", "{{Coin}} Gera 1-25 moedas aleatórias"},
	[94] = {"94", "", "Gera 15 moscas locust aleatória"},
	[95] = {"95", "", "{{Player16}} Gera The Forgotten como um personagem secundário temporário para a sala atual"},
	[96] = {"96", "", "{{Collectible584}} Gera 6 Book of Virtues orbital com propriedades aleatórias"},
	[97] = {"97", "", "{{Player20}} Gera Esau como um personagem secundário temporário para a sala atual#Ele é gerado com itens passivos aleatórios iguais a quantos você tem"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Também concede o efeito do {{Collectible34}} The Book of Belial", -- I - The Magician
	[3] = "Um segundo pé pisa logo após o primeiro", -- II - The High Priestess
	[4] = "Quadruplica o aumento de estatísticas", -- III - The Empress
	[5] = "Se o chefe ainda não foi derrotado, concede 1 Coração de alma", -- IV - The Emperor
	[6] = "{{SoulHeart}} Gera 3 Corações de alma", -- V - The Hierophant
	[7] = "{{Heart}} Gera 3 Corações vermelhos", -- VI - The Lovers
	[8] = "Duração dobrada", -- VII - The Chariot
	[9] = "Geração de pickup dobrada", -- VIII - Justice
	[10] = "Impede que o Greed apareça na loja#Transforma a loja em uma loja normal se o Greed já foi derrotado", -- IX - The Hermit
	[11] = "Gera 2 Máquinas caça-níqueis", -- X - Wheel of Fortune
	[12] = "Aumento de estatísticas duplicado, excluindo o multiplicador de dano", -- XI - Strength
	[14] = "Causa 80 de dano", -- XIII - Death
	[15] = "Gera 2 Máquinas de doação de sangue", -- XIV - Temperance
	[16] = "Dano aumentado é dobrado", -- XV - The Devil
	[17] = "Gera 12 Bombas trolls", -- XVI - The Tower
	[18] = "Se a sala do tesouro não foi acessada ainda, ela terá dois itens para escolher", -- XVII - The Stars
	[21] = "Gera 2 mendigos", -- XX - Judgement
	[56] = "Solta todos os itens junto com os pickups, incluindo Tarot Cloth", -- 0 - The Fool?
	[59] = "↑ {{Heart}} +3 Saúde", -- III - The Empress?
	[61] = "{{EmptyBoneHeart}} Gera 6 Corações de osso", -- V - The Hierophant?
	[62] = "{{BrokenHeart}} Adiciona 4 corações quebrados e gera 2 itens", -- VI - The Lovers?
	[64] = "Gera 4-14 Baús Dourados", -- VIII - Justice?
	[70] = "{{Pill}} Come 10 pílulas", -- XIV - Temperance?
	[72] = "Gera 14 aglomerados de rochas", -- XVI - The Tower?
	[73] = "Remove 2 itens e gera 4", -- XVII - The Stars?
	[76] = "{{RestockMachine}} Gera 2 máquinas de restock", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "", "Troca o número de bombas com chaves#Bombas e chaves douradas também são trocadas"}, -- Bombs are Key
	[12] = {"11", "", "↓ {{Range}} -0.6 Alcance"}, -- Range Down
	[13] = {"12", "", "↑ {{Range}} +0.75 Alcance"}, -- Range Up
	[14] = {"13", "", "↓ {{Speed}} -0.12 Velocidade"}, -- Speed Down
	[15] = {"14", "", "↑ {{Speed}} +0.15 Velocidade"}, -- Speed Up
	[16] = {"15", "", "↓ {{Tears}} -0.28 Lágrimas"}, -- Tears Down
	[17] = {"16", "", "↑ {{Tears}} +0.35 Lágrimas"}, -- Tears Up
	[18] = {"17", "", "↓ {{Luck}} -1 Sorte"}, -- Luck Down
	[19] = {"18", "", "↑ {{Luck}} +1 Sorte"}, -- Luck Up
	[42] = {"41", "", "{{Slow}} Atrasse todos os inimigos e o personagem na sala"}, -- I'm Drowsy...
	[43] = {"42", "", "Acelere todos os inimigos e o personagem na sala#Ativa novamente depois de 30 e 60 segundos"}, -- I'm Excited!!!
	[48] = {"47", "", "↓ {{Shotspeed}} -0.15 Velocidade de disparo"}, -- Shot Speed Down
	[49] = {"48", "", "↑ {{Shotspeed}} +0.15 Velocidade de disparo"}, -- Shot Speed Up
	[50] = {"49", "", "↑ Aumenta 1 status aleatório#↓ Diminua 1 algum outro status aleatório#Não diminuirá com {{Collectible75}}PHD, {{Collectible46}}Lucky Foot ou {{Collectible303}}Virgo#Não aumentará com {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "", "Efeito de pílula aleatório#Se destroi depois de alguns usos"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "", "{{Poison}} Envenamento toda a sala"}, -- Bad Gas
	{"1", "", "Causa 2 corações de dano a você"}, -- Bad Trip
	{"2", "", "{{SoulHeart}} +4 Corações de alma"}, -- Balls of Steel
	{"3", "", "Troca o número de bombas pelo número de chaves#Aumenta o número de bombas e chaves em 50%#Bombas douradas e chaves também são trocadas"}, -- Bombs are Key
	{"4", "", "Gera algumas mega bombas trolls na sua posição"}, -- Explosive Diarrhea
	{"5", "", "Saúde cheia#{{SoulHeart}} +3 Corações de alma"}, -- Full Health
	{"6", "", "↓ -2 Saúde"}, -- Health Down
	{"7", "", "↑ {{EmptyHeart}} +2 Espaços de corações vazios"}, -- Health Up
	{"8", "", "Sem efeito"}, -- I Found Pills
	{"9", "", "Sem efeito"}, -- Puberty
	{"10", "", "Adiciona 1 Big Fan orbital {{Collectible279}}#Não há limite superior"}, -- Pretty Fly
	{"11", "", "↓ {{Range}} -1.2 Alcance"}, -- Range Down
	{"12", "", "↑ {{Range}} +0.9 Alcance"}, -- Range Up
	{"13", "", "↓ {{Speed}} -0.24 Velocidade"}, -- Speed Down
	{"14", "", "↑ {{Speed}} +0.3 Velocidade"}, -- Speed Up
	{"15", "", "↓ {{Tears}} -0.56 Lágrimas"}, -- Tears Down
	{"16", "", "↑ {{Tears}} +0.70 Lágrimas"}, -- Tears Up
	{"17", "", "↓ {{Luck}} -2 Sorte"}, -- Luck Down
	{"18", "", "↑ {{Luck}} +2 Sorte"}, -- Luck Up
	{"19", "", "Teletransporta para uma sala aleatória"}, -- Telepills
	{"20", "", "Recarrega seu item de ativação#{{Battery}} Gera 3-4 baterias"}, -- 48 Hour Energy!
	{"21", "", "Drena todos os seus espaços de corações, mas vai restar apenas um#{{PHeart}} Gera 1-4 corações vermelhos"}, -- Hematemesis
	{"22", "", "Você não pode se mover por 4 segundos"}, -- Paralysis
	{"23", "", "{{SecretRoom}} Abra as entradas das salas secretas no andar atual#Ganha visão do mapa"}, -- I can see forever!
	{"24", "", "{{Charm}} Transforma cada inimigo da sala em amigo permanente"}, -- Pheromones
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
	{"36", "", "Curto efeito de invencibilidade#↑ {{Damage}} 7 Dano#↑ {{Range}} +3 Alcance#Durante a sala atual"}, -- Power Pill!
	{"37", "", "Pixeliza a tela por 90 segundos"}, -- Retro Vision
	{"38", "", "Gera 6 moscas azuis"}, -- Friends Till The End!
	{"39", "", "Gera uma poça escorregadia"}, -- X-Lax
	{"40", "", "Gera uma poça de lentidão"}, -- Something's wrong...
	{"41", "", "Efeito de lentidão em todos os inimigos da sala"}, -- I'm Drowsy...
	{"42", "", "Aumenta a velocidade de todos os inimigos da sala"}, --I'm Excited!!!
	{"43", "", "Consome o trinket que segura e ganha o efeito dele permanentemente"}, -- Gulp!
	{"44", "", "Dispara um cacho de lágrimas de ipecac"}, -- Horf!
	{"45", "", "Curto efeito de invencibilidade#Amedronta todos os inimigos#Causa 40 de dano ao contato#Dois inimigos comidos reabastecem meio coração"}, -- Feels like I'm walking on sunshine!
	{"46", "", "Gera a última pílula usada como horse"}, -- Vurp!
	{"47", "", "↓ {{Shotspeed}} -0.3 Velocidade de disparo"}, -- Shot Speed Down
	{"48", "", "↑ {{Shotspeed}} +0.3 Velocidade de disparo"}, -- Shot Speed Up
	{"49", "", "↑ Aumenta 1 status aleatório duas vezes#↓ Diminue 1 status aleatório duas vezes#Não vai diminuir com {{Collectible75}}PHD, {{Collectible46}}Lucky Foot ou {{Collectible303}}Virgo#Não vai aumentar com {{Collectible654}}False PHD"}, -- Experimental Pill
	[9999] = {"", "", "Efeito de pílula aleatório#Se destroi depois de alguns usos"}, -- golden Pill
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "",
	
	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} Coração Negro",
	AddBombs = "{{Bomb}} {1} Bomba",
	AddCoins = "{{Coin}} {1} Moeda",
	AddHearts = "Cura {{Heart}} {1} Coração Vermelho",
	AddKeys = "{{Key}} {1} Chave",
	AddMaxHearts = "{{EmptyHeart}} {1} Espaço de Coração",
	AddSoulHearts = "{{SoulHeart}} {1} Coração de Alma",
	
	-- Cache Flag names
	cacheFlagStart = "Pode afetar ",
	[0] = "{{Damage}} Dano", "{{Tears}} Taxa de Disparo", "{{Shotspeed}} Velocidade de Disparo", "{{Range}} Alcance", "{{Speed}} Velocidade", "Efeito de Lágrima", "Cor da Lágrima", "Vôo", "Tipo de Ataque", "Familiares", "{{Luck}} Sorte", "Tamanho", "Cor", "Conteúdo do Baú", 
	[16] = "Todos os Status",
	
	-- Attribute triggers
	chain = "Então:{{CR}} ",
	active = "Ao usar:#",
	pickup_collected = "Quando você coletar um pickup:#",
	enemy_kill = "Ao matar, chance de:#",
	damage_taken = "Quando você levar dano:#",
	entity_spawned = "Quando um {T1} é invocado:#",
	tear_fire = "Quando você atirar uma lágrima, chance de:#",
	enemy_hit = "Ao entrar em contato com um inimigo, chance de:#",
	room_clear = "Ao limpar a sala:#",
	
	-- Attribute effects
	area_damage = "Dá {1} de dano em uma área ao redor de você",
	add_temporary_effect = "Ganha {1} para a sala",
	convert_entities = "Converte todos os {1} na sala para {2}",
	use_active_item = "Usa {1}",
	spawn_entity = "Gera um {1}",
	fart = "Peida com o tamanho de {1}",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "Bomba acesa",
	["5.0"] = "pickup",
	["5.10"] = "Coração",
	["5.20"] = "Moeda",
	["5.30"] = "Chave",
	["5.40"] = "Bomba coletável",
	["5.69"] = "Saco",
	["5.70"] = "Pílula",
	["5.90"] = "Bateria",
	["5.300"] = "Carta",
	["9.-1"] = "projétil de inimigo",
	["999.-1"] = "objeto de grade",
	["1000.0"] = "efeito",
	
}

---------- Misc. Text ----------

EID.descriptions[languageCode].VoidShopText = "Se absorvido logo após coletar, ganha:"
EID.descriptions[languageCode].VoidOptionText = " em vez disso será absorvido"
EID.descriptions[languageCode].VoidNames = {"Velocidade {{Speed}}", "Taxa de disparo {{Tears}}", "Dano {{Damage}}", "Alcance {{Range}}", "Velocidade de disparo {{Shotspeed}}", "Sorte {{Luck}}"}

EID.descriptions[languageCode].spindownError = "O Item desaparece"

EID.descriptions[languageCode].CraftingBagContent = "Mochila:"
EID.descriptions[languageCode].CraftingRoomContent = "Sala:"
EID.descriptions[languageCode].CraftingFloorContent = "Andar:"

EID.descriptions[languageCode].CraftingBagQuality = "Qualidade da Mochila:"
EID.descriptions[languageCode].CraftingBestQuality = "Melhor Qualidade:"

EID.descriptions[languageCode].CraftingHideKey = "Esconder:"
EID.descriptions[languageCode].CraftingPreviewKey = "Visualizar:"
EID.descriptions[languageCode].CraftingPreviewBackup = "!!! Se este item estiver bloqueado, ele se transformará em"

EID.descriptions[languageCode].CraftingResults = "(Rolar: Segurar {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Travar: {{ButtonX}}, Atualizar: {{ButtonB}}, Redefinir a Bolsa: Hold {{ButtonRB}})"

EID.descriptions[languageCode].BlankCardCharge = "Carga do Blank Card:"
EID.descriptions[languageCode].BlankCardQCard = "Teleporta para a Sala I Am Error#Blank Card e ?-Card serão destruídas"
EID.descriptions[languageCode].ClearRuneCharge = "Limpar carga da Runa:"
EID.descriptions[languageCode].PlaceboCharge = "Carga do Placebo:"
EID.descriptions[languageCode].FlipItemToggleInfo = "(Segure {{ButtonSelect}} (Map) para mostrar a descrição)"


EID.descriptions[languageCode].FalsePHDHeart = "{{BlackHeart}} Gera 1 Coração Negro"
EID.descriptions[languageCode].FalsePHDDamage = "{{Damage}} +0.6 de Dano"
EID.descriptions[languageCode].FalsePHDHorseDamage = "{{Damage}} +1.2 de Dano"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}!!! ALERTA !!!"
EID.descriptions[languageCode].AchievementWarningText = "Conquista estão desabilitadas!#Para possibilitar a progressão e as conquistas, é preciso primeiro matar a Mãe (Depths II) sem nenhum mod habilitado.#(Se você já derrotou a Mãe, esta mensagem é um bug e pode ser ignorada)#(Este aviso pode ser desabilitado nas configurações)"

EID.descriptions[languageCode].OldGameVersionWarningText = "Sua versão do Repentance está desatualizada!#Somente a versão mais recente é oficialmente suportada#(Este aviso pode ser desabilitado nas configurações)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Items de Mods podem fazer o cálculo da receita ser impreciso!#Use o modo de exibição \"Sem Receitas\" ou desligue a exibição da Bag of Crafting se suas receitas estão incorretas#(Este aviso pode ser desabilitado nas configurações)"

EID.descriptions[languageCode].CraftingBagModError = "!!! {{ColorRed}}ERROR:#{{ColorRed}}O \"Crafting result calculation\" atualmente não é suportado quando mods são instalados!#{{ColorRed}}Por favor desinstale os mods ou desative a descrição da Bag of Crafting nas configurações"


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end
