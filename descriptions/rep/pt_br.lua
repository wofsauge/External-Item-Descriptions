-------------------------------------------------------------
-----  Basic Portuguese (Brazil) descriptions based on  -----
-----                 Platinumgod.co.uk 				-----
-------------------------------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Portuguese (Brazil) letters: 
-- ãÃ áÁ àÀ âÂ çÇ éÉ êÊ íÍ õÕ óÓ ôÔ úÚ

--Special character markup:
-- ↑ = Up Arrow   |  ↓ = Down Arrow    | ! = Warning
local newDescriptions = {
	["5.70.14"] = {"14", "Golden Pill", "Random pill effect#Destroys itself after a few uses"} -- golden Pill
}

local repCollectibles={
	[178] = {"178", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Deixa uma poça de fluido no local arremeçado"},
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Troque todos os inimigos e pickups ao contato"},

}
-- EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["pt_br"].collectibles, true)

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
    [92] = {"92", "", "↑ Aumeta as estatísticas de seus itens em 20%#↑ +0.2 Lágrimas#↑ -1 Atrasso da lágrima"}, -- Cracked Crown
    [95] = {"95", "", "Atira aleatoriamente um dente envenenado#Inimigos atingidos são atacados por uma mão do Big Horn"}, -- Black tooth
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
	[136] = {"136","","Portas, blocos de chaves e baús dourados podem ser abertos com explosões"}, --  Broken Padlock
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
	[181] = {"181","","Ativa um item ativador aleatório ao usar um item ativo"}, --  Expansion Pack
	[182] = {"182","","Uma vez por andar, ao receber dano ganhe um orbital {{Collectible584}} e invencibilidade#gera 5 orbitais ao entrar em uma sala do anjo#Cria um orbital quando dá moedas á um mendigo"}, --  Beth's Essence
	[183] = {"183","","Para cada sala:#Sem seguidores: Chance de ganhar um Brother Bobby {{Collectible8}} e/ou uma Sister Maggy {{Collectible67}}# Com seguidores: Chance de adicionar uma duplicata de um seguidor"}, --  The Twins
	[184] = {"184","","Lojas podem vender familiares#Familiares vão sempre estar com desconto"}, --  Adoption Papers
	[185] = {"185","","Chance de gerar um locusts aleatório quando matar um inimigo"}, --  Cricket Leg
	[186] = {"186","","{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Ganhe 2 moscas de ataque, as quais pode mirar e atirar"}, --  Apollyon's Best Friend
	[187] = {"187","","33% de chance de adicionar um item cego extra nas salas de itens#Revela o item cego no caminho alternativo"}, --  Broken Glasses
	[188] = {"188","","Adiciona uma chance de petrificar á um inimigo quando entra em uma sala#Matar o inimigo petrificado o congela"}, --  Ice Cube
	[189] = {"189","","Ativa um escudo de 1 segundo ao matar um inimigo"}, --  Sigil of Baphomet
}
-- EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["pt_br"].trinkets, true)

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
	[89] = {"89", "", "Morra e reviva instantaneamente com meio coração e algum tempo de invencibilidade#Usado automaticamente quando recebe um dano fatal (como uma vida extra)"},
	[90] = {"90", "", "Ativa o efeito do D6 {{Collectible105}} e D20 {{Collectible166}} #Os itens trocados vem de salas aleatórias"},
	[91] = {"91", "", "Morra e transforme-se em The Lost para a sala atual"},
	[92] = {"92", "", "Ganhe 1 familiar aleatório"},
	[93] = {"93", "", "Gera 3-25 moedas aleatórias"},
	[94] = {"94", "", "Gera 15 moscas locust aleatória"},
	[95] = {"95", "", "Gera The Forgotten como um personagem secundário temporário para a sala atual"},
	[96] = {"96", "", "Gera 6 Book of Virtues {{Collectible584}} orbital com propriedades aleatórias"},
	[97] = {"97", "", "Gera Esau como um personagem secundário temporário para a sala atual"},
}
-- EID:updateDescriptionsViaTable(repCards, EID.descriptions["pt_br"].cards, true)

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
-- EID:updateDescriptionsViaTable(repPills, EID.descriptions["pt_br"].pills, true)

EID.descriptions["pt_br"].horsepills={
	{"0", "", "Poisons entire room"},
	{"1", "", "Deals 2 heart of damage to you"},
	{"2", "", "+4 Soul Hearts"},
	{"3", "", "Switches number of bombs with keys#Increases key and bomb count by 50%#Golden bombs and keys are also swapped"},
	{"4", "", "Spawns some mega homing troll bombs at your position"},
	{"5", "", "Full Health#+3 Soul Hearts"},
	{"6", "", "↓ -2 Health down"},
	{"7", "", "↑ +2 empty heart containers"},
	{"8", "", "No effect"},
	{"9", "", "No effect"}, -- Puberty
	{"10", "", "Adds 1 Big Fan fly orbital {{Collectible279}}#There is no upper limit"},
	{"11", "", "↓ -1.2 Range down"},
	{"12", "", "↑ +0.9 Range up"},
	{"13", "", "↓ -0.24 Speed down"},
	{"14", "", "↑ +0.3 Speed up"},
	{"15", "", "↓ -0.56 Tears down"},
	{"16", "", "↑ +0.70 Tears up"},
	{"17", "", "↓ -2 Luck down"},
	{"18", "", "↑ +2 Luck up"},
	{"19", "", "Teleport to random room"}, -- TODO
	{"20", "", "Recharges your active item#Drops batteries"}, -- TODO
	{"21", "", "Drains all but one heart container#Spawns red hearts"}, -- TODO
	{"22", "", "You can't move for 4 seconds"},
	{"23", "", "Opens secret room entrances on current floor#Grants full mapping"},
	{"24", "", "Turns every enemy in the room permanently friendly"},
	{"25", "", "Hides the floor map"}, --TODO
	{"26", "", "Spawns room filling puddle on the ground which damages enemies"},
	{"27", "", "Shoot diagonally for 60 seconds"},
	{"28", "", "Take only half the damage for current room"},  --TODO
	{"29", "", "Take full heart damage for current room"}, --TODO
	{"30", "", "Spawn poop while walking for 4 seconds"}, --TODO
	{"31", "", "Curse of the maze effect for current floor"}, --TODO
	{"32", "", "You grow a lot bigger#Doesn't affect your hitbox"},
	{"33", "", "You get a lot smaller#Your hitbox gets smaller"},
	{"34", "", "Spawn 2 blue spider per poop in room"},
	{"35", "", "Spawn 2 blue spider per enemy in room#Spawns 2-6 blue spiders when no enemy is in the room"},
	{"36", "", "Short invincibility effect#↑ #7 Damage up#↑ +3 Range up# persists for current room"},
	{"37", "", "Pixelates the screen for 90 seconds"},
	{"38", "", "Spawns 6 blue flies"},
	{"39", "", "Spawn pool of long lasting slippery creep"},
	{"40", "", "Spawn pool of long lasting slowing creep"},
	{"41", "", "Slow all enemies in room"}, --TODO
	{"42", "", "Speed up for all enemies in room"}, --TODO
	{"43", "", "Consume current trinket and gain its effect permanently"}, --TODO
	{"44", "", "Shoots a cluster of ipecac tears"},
	{"45", "", "Short invincibility#Fears all enemies# Two eaten enemies replenish half a heart"},
	{"46", "", "Spawns last used pill as a horse pill"},
	{"47", "", "↓ -0.3 Shot Speed down"},
	{"48", "", "↑ +0.3 Shot Speed up"},
	{"49", "", "↑ Increases 1 random stat two times#↓ Decreases 1 random other stat two times#Will not decrease with PHD"},
}

---------- Transformations ----------

local repTransformations={}
EID:updateDescriptionsViaTable(repTransformations, EID.descriptions["pt_br"].transformations,false)

