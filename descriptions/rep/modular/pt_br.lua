---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ {{Speed}} +0.2 Velocidade", -- The Virus
	-- Full old Desc: "{{Poison}} Toque venenoso#↑ {{Speed}} +0.2 Velocidade"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Poison}} Bomba de veneno arremessável#Causa 185 de dano + seu dano#Cria uma nuvem de veneno", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Maior chance de ganhar em jogos#Aumenta a chance de item ao limpar uma sala#Transforma algumas pílulas ruims em boas", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Sorte#Maior chance de ganhar em jogos#Aumenta a chance de item ao limpar uma sala#Transforma algumas pílulas ruims em boas"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "Se isso resultar em mais de 60 de dano, então causa 5x o seu dano + 30#↓ {{Tears}} -60% Taxa de Disparo", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Lágrimas de bomba#{{Damage}} Cada bomba causa 10x o seu dano#Se isso resultar em mais de 60 de dano, então causa 5x o seu dano + 30#↓ {{Tears}} -60% Taxa de Disparo"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Atração magnética para pickups#Abre baús remotamente, ignora o dano dos espinhos dos baús", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Lágrimas carregáveis#↑ {{Damage}} Até 400% Dano", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "↑ {{AngelDevilChance}} +17.5% de chance da Sala do Diabo ou Anjo", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Coração de Alma#O Chefe do andar atual é substituído por um Cavaleiro se usado#↑ {{AngelDevilChance}} +17.5% de chance da Sala do Diabo ou Anjo"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Gera um alçapão para o próximo andar#{{LadderRoom}} Gera um alçapão com escada se usado em um piso decorativo (grama, pedras pequenas, papéis, pedras preciosas, etc.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Revela o tipo das 2 próximas salas adjacentes#Também pode revelar: #{{SecretRoom}} Salas Secretas#{{SuperSecretRoom}} Salas Super Secretas#{{MiniBoss}} Salas de Mini-Boss#Bloqueia projéteis vindos de cima/teto", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "<MISSING>", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Gera um familiar aleatório#Dura para o andar atual", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "<MISSING>", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} Deixa você imune a dano de veneno", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Bombas envenenadas#{{Bomb}} Bombas deixam uma nuvem de veneno#{{Poison}} Deixa você imune a dano de veneno#{{Bomb}} +5 Bombas"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Uma vez por sala, quando ficar com Meio Coração, você ganha 1 Coração de Alma#!!! Não ativa a partir de efeitos de doação", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Quebra pedras e danifica inimigos#Batendo com o machado reduz sua carga#Recarrega ao ir para o próximo andar", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "↓ {{Range}} -20% Alcance", -- Ipecac
	-- Full old Desc: "{{Poison}} Lágrimas explosivas venenosas#↑ {{Damage}} +40 Dano#↓ {{Shotspeed}} -0.2 Velocidade de Disparo#↓ {{Tears}} -67% Taxa de Disparo#↓ {{Range}} -20% Alcance"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "{{Damage}} O laser causa 13% do seu dano#↓ {{Tears}} 33% Taxa de Disparo", -- Technology 2
	-- Full old Desc: "Substitui as lágrimas do seu olho direito por um laser contínuo#{{Damage}} O laser causa 13% do seu dano#↓ {{Tears}} 33% Taxa de Disparo"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Atrasse os inimigos por 4 segundos#Inimigos mortos com isso gera aranhas azuis", -- Spider Butt
	-- Full old Desc: "{{Slow}} Atrasse os inimigos por 4 segundos#Cause 10 de dano á todos os inimigos#Inimigos mortos com isso gera aranhas azuis"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Arremessável{{CR}}#Lança-se na direção do tiro do personagem#Quebra e causa 7 ao tocar um inimigo#Deixa uma poça que causa dano e petrifica inimigos", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "<MISSING>", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "50% de chance de gerar a versão dupla de pickups", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} Ao usar, recarrega completamente seu item ao custo de Meio Coração por carga#Prioriza Corações Vermelhos", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Quando soltar, elas vão continuar na direção onde estavam indo#↑ {{Tears}} +1 Lágrimas", -- Anti-Gravity
	-- Full old Desc: "Segurando o botão de disparo faz com que as lágrimas parem no ar#Quando soltar, elas vão continuar na direção onde estavam indo#↑ {{Tears}} +1 Lágrimas"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 224] = "↓ {{Range}} -20% Alcance#↑ {{Tears}} +0.5 Taxa de Disparo", -- Cricket's Body
	-- Full old Desc: "Lágrimas se dividem em quatro quando acertam um inimigo#Lágrimas divididas dão a metade do dano#↓ {{Range}} -20% Alcance#↑ {{Tears}} +0.5 Taxa de Disparo"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{BlackHeart}} +2 Corações Negros", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Dano#↑ {{Speed}} +0.2 Velocidade#{{Fear}} Lágrimas que amedrontam inimigos#Converte todos os Contêineres de {{Heart}} Coração Vermelho em {{BlackHeart}} Corações Negro#{{BlackHeart}} +2 Corações Negros"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ {{Speed}} +0.3 Velocidade", -- Stop Watch
	-- Full old Desc: "{{Slow}} Efeito permanente de lentidão em inimigos#↑ {{Speed}} +0.3 Velocidade"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Aranhas/Moscas azuis dão o dobro de dano#Familiares baseados em aranhas/moscas ficam mais fortes", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Bomb}} +5 Bombas", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Bombas flamejantes#Você não pode mais receber dano de fogo#Bombas infligem dano ao contato#{{Bomb}} +5 Bombas"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ {{Damage}} Lágrimas causam menos dano quanto mais tempo permanecerem no ar#{{Damage}} 300% de dano à queima-roupa", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Dano#↓ {{Damage}} Lágrimas causam menos dano quanto mais tempo permanecerem no ar#{{Damage}} 300% de dano à queima-roupa"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Quando com menos de 1 Coração, cause dano a todos os inimigos na sala#Corações Negros dão o dobro de dano", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Coração Negro#Quando com menos de 1 Coração, cause dano a todos os inimigos na sala#Corações Negros dão o dobro de dano"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} Solta 1 runa aleatória ao pegar", -- Clear Rune
	-- Full old Desc: "{{Rune}} Copia os efeitos da runa ou pedra da alma atual#{{Rune}} Solta 1 runa aleatória ao pegar"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Ganhe um corpo invulnerável#!!! Quando o Coração for atingido, você sofre dano#Carrega ao disparar e libera uma explosão de lágrimas", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Coleta Corações Vermelhos do chão#A cada 1.5 Coração Vermelho gera: #{{BlackHeart}} 1 Coração Negro#{{Pill}} Pílula#{{Card}} Carta#{{Rune}} Runa#Uma aranha", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Gera aranhas azuis aleatoriamente quando entra em uma sala hostil#Encanta os inimigos com os quais entra em contato", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Troca todos os pedestais, status, pickups e todos os seus itens passivos atuais#Duplica 1 pickup aleatório na sala#Reinicia a sala atual e retorna com inimigos diferentes#Troca as pedras na sala", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Troca todos os inimigos na sala#Tenta troca-los por inimigos com HP máximo semelhante", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "<MISSING>", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Ao usar destaca pedras marcadas e pedras com alçapão em baixo#{{Collectible76}} Se todos os efeitos estiverem ativos, concede X-Ray Vision", -- Book of Secrets
	-- Full old Desc: "Ao usar destaca pedras marcadas e pedras com alçapão em baixo#Ganhe um desses efeitos para o andar: #{{Collectible54}} Treasure Map#{{Collectible21}} Compass #{{Collectible246}} Blue Map#Apenas concede efeitos que você ainda não possui#{{Collectible76}} Se todos os efeitos estiverem ativos, concede X-Ray Vision"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Lança uma chama vermelha#A chama persiste até ter causado 23 dano, bloqueado disparos 5 vezes ou após 10 segundos", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Transforma todos os inimigos não chefes em cocôs#Mata instantaneamente inimigos e chefes cocôs#Apaga fogueiras e enche a sala de água#Transforma poças de lava em terreno andável", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} Quando usado antes de uma luta com o chefe, o item da Sala do Chefe será um acordo com o Diabo#!!! Pegar esse item prende você a Acordos com o Diabo pelo resto da corrida", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Coração Negro#{{DevilRoom}} Quando usado antes de uma luta com o chefe, o item da Sala do Chefe será um acordo com o Diabo#!!! Pegar esse item prende você a Acordos com o Diabo pelo resto da corrida"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Recua inimigos e projéteis próximos#Inimigos empurrados contra obstáculos recebem 10 de dano", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Danifica todos os inimigos da sala com 2x o seu dano + 10 #{{Coin}} Preço: 1 moeda", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Converte 1 Coração de Alma ou Negro em 1 Coração Vermelho", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "Gera itens baseados no andar em que for ativado:#B1: 2 {{SoulHeart}}#B2: 2 {{Bomb}} e 2 {{Key}}#C1: 1 {{BossRoom}} item#C2: B1+C1#D1: 4 {{SoulHeart}}#D2: 20 {{Coin}}#W1: 2 {{BossRoom}} itens#W2: {{Collectible33}} The Bible#???/Void: Nada#Sheol: 1 {{DevilRoom}} item + 1 {{BlackHeart}}#Catch: 1 {{AngelRoom}} item +  1 {{EternalHeart}}#Dark Room: {{Collectible523}} Destranca Moving Box#Chest: 1 {{Coin}}#Home: {{Collectible580}} Red Key", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Danifica os inimigos ao contato", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Velocidade#Danifica os inimigos ao contato#Correr rápido o suficiente evita dano por contato"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Deixa um rastro#{{Damage}} Causa 66% do seu dano por segundo#Rastro sinergiza com efeitos da lágrima", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Lágrimas magnéticas#Afeta inimigos, pickups e trinkets#Itens serão atraídos para onde as lágrimas caírem", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "<MISSING>", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "<MISSING>", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Segurar a barra de espaço até que a barra de carga esteja vazia concederá invencibilidade#Raios de luz atingirão o inimigo que te tocar#!!! Não segure por muito tempo!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "Lágrimas teleguiadas", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Dano#↓ {{Tears}} -0.3 Lágrimas#↓ {{Shotspeed}} -0.3 Velocidade de Disparo#Lágrimas ganham aura que causa  2 de dano por tick#Lágrimas teleguiadas"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Gera o trinket Match Stick", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Coração Negro#{{Bomb}} Gera 2-3 Bombas#{{Trinket41}} Gera o trinket Match Stick"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Dispara uma grande lágrima espectral ((DMG + 1) + 10)#!!! Quando você sofre dano:#Você perderá um extra de 2 Corações de saúde#↑ {{Range}} +1.5 Alcance e deixa um rastro de sangue na sala atual#O dano extra não pode te matar#Causar dano a si mesmo não conta", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Atira as mesmas lágrimas que o personagem em termos de status e efeito#{{Damage}} Causa 75% do seu dano#{{Player13}} Causa 100% do seu dano quando jogar como Lilith", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Se move ao longo de paredes/obstáculos na sala#Inimigos próximos vão ter a Mosca como alvo", -- Lost Fly
	-- Full old Desc: "Se move ao longo de paredes/obstáculos na sala#Causa 56 de dano ao contato por segundo#Inimigos próximos vão ter a Mosca como alvo"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 368] = "{{Tears}} Atirar em uma direção faz aumentar gradualmente sua Taxa de Disparo para até 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Luck}} 50% de chance com 9 de Sorte", -- Holy Light
	-- Full old Desc: "10% de chance aleatória de disparar lágrimas sagradas, que irá gerar um feixe de luz ao acertar um inimigo#{{Damage}} O feixa causa 3X o seu dano#{{Luck}} 50% de chance com 9 de Sorte"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Imunidade a explosões#15% de chance de desviar projéteis#Bloqueia projéteis vindo de cima", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Gera 3 pickups aleatórios#Loja reestoca os itens depois de comprar um#Itens reestocados tem custo menor", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Agora você abre portas trancadas e baús com moedas em vez de chaves", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 moedas#Agora você abre portas trancadas e baús com moedas em vez de chaves"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Pode ser arremessado em um inimigo para capturá-lo#No próximo isso vai solta-lo como inimigo amigo#Caminhar sobre a bola após a captura recarregará instantaneamente o item", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "Será lançado e deslizará pela sala#Causa 5-20 de dano por acerto dependendo do tempo de carga", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Gera uma runa ou Soul Stone aleatória a cada 7-8 salas", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "<MISSING>", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% de chance de disparar lágrimas que envenenam#{{Luck}} Não é afetado pela sorte#{{Poison}} Envenena os inimigos ao contato#{{BlackHeart}} Inimigos mortos por contato tem 20% de chance de soltar um Coração Negro", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ {{Range}} +3.0 Alcance#Familiares disparam em direção ao alvo", -- Marked
	-- Full old Desc: "Atira lágrimas automaticamente em direção ao alvo vermelho no chão que é controlado pelo jogador#↑ {{Tears}} +0.7 Lágrimas#↑ {{Range}} +3.0 Alcance#Familiares disparam em direção ao alvo"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} Ganha a habilidade de disparar um anel de lazer que atravessa a sala#Dano baseado no progresso de carga#100% de dano na carga completa", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Depois de disparar lágrimas por 3 segundos, cria um anel preto danificando os inimigos dentro dele", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "15% de chance de disparar lágrima de bombas pegajosas#{{Luck}} Não é afetado pela sorte#Elas explodem depois de alguns segundos e causam seu dano + 60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "Se for atingido, ele irá peidar, o que poderá encantar, envenenar ou empurrar os inimigos#O peido causa 5-6 Dano", -- Farting Baby
	-- Full old Desc: "Bloqueia projéteis#Se for atingido, ele irá peidar, o que poderá encantar, envenenar ou empurrar os inimigos#O peido causa 5-6 Dano"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Arremessável{{CR}} (Apertar duas vezes no botão de tiro)#Troca inimigos e pickup ao entrar em contato", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Melhora um de seus status dependendo da cor da aura ao seu redor#Quando for danificado e depois que entrar em uma nova sala, a cor da aura mudará#{{ColorRed}}Vermelho{{CR}} = {{Damage}} +4.0 Dano#{{ColorBlue}}Azul{{CR}} = {{Tears}} +2 Taxa de Disparo#{{ColorYellow}}Amarelo{{CR}} = {{Speed}} +0.5 Velocidade#{{ColorOrange}}Laranja{{CR}} = {{Range}} +3.0 Alcance", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Quando você recebe dano, um anel preto de brimstone aparecerá ao redor do personagem", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Gera 1-3 moedas se a sala não rendeu recompensas#{{Coin}} Aumenta o limite da moeda para 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Voa ao redor da sala com uma aura que causa dano (7.5-10 ao contato) aos inimigos#↑ {{Damage}} +50% de dano enquanto estiver na aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Causa efeito de charme a um inimigo por perto", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "<MISSING>", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 433] = "<MISSING>", -- My Shadow
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Faz ressurgir todos os inimigos da sala#Permite você ganhar as recompensas da sala quando ela for limpa novamente", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "A cada 15 lágrimas disparadas, você dispara um aglomerado de lágrimas", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Quando receber dano de Coração Vermelho, dispare lágrimas vermelhas ao seu redor#Controle a direção com os botões de disparo#Causa Meio Coração de dano a cada 20 segundos#Pare de sangrar curando Corações Vermelhos#Chance de soltar um Coração Vermelho ao receber dano", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "A cada 20 lágrimas, dispara uma lágrima de moeda que causa 1.5x o seu dano + 10#Inimigos atingidos soltam uma moeda e se transformam em ouro temporariamente#Inimigos transformados em ouro soltam 1-3 moedas se mortos#!!! A lágrima de moeda custa 1 moeda", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Algumas cartas ganham um efeito extra ou dobrado", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Solta uma carta aleatória ao pegar#{{Card}} Algumas cartas ganham um efeito extra ou dobrado"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Lágrimas de osso", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +0.38 Alcance#Lágrimas de osso#Lágrimas se quebram em 1-3 fragmentos de ossos menores ao atingir qualquer coisa"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Inimigos Campeões e recompenas de salas concedem qualquer pickup que você mais precisar", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Corações de Alma#Inimigos Campeões e recompenas de salas concedem qualquer pickup que você mais precisar"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Outros familiares o seguem e disparam nos inimigos automaticamente#Para de se mover quando você está disparando#Voltará para você quando você parar de disparar", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Transforma-se em Glass Canon quando usado", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Duplica 1 pickup aleatório na sala atual#Pickups duplicados podem não ser idênticos aos originais", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "!!! Quando usado, consume todos os items de pedestal na sala#Item ativo: Seu efeito será ativado em todo uso futuro do Void#↑ Item passivo: Pequena melhoria de estatística para duas estatísticas aleatórias", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Atua como qualquer item de dado, exceto para {{Collectible723}} Spindown Dice#Altere o dado atual pressionando {{ButtonRT}}", -- D Infinity
	-- Full old Desc: "Atua como qualquer item de dado, exceto para {{Collectible723}} Spindown Dice#Altere o dado atual pressionando {{ButtonRT}}#O tempo de recarga varia de acordo com o dado atual e atualiza quando usado"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} Dano para cada Contêiner de Coração Vermelho vazio#Segue uma fórmula,alguns exemplos são:#+0.3 com 1#+0.92 com 2#+1.76 com 3#+2.79 com 4#+3.98 com 5", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Lágrimas geram faíscas de eletricidade com o impacto#Faíscas causam metade do seu dano#Faíscas podem pular entre inimigos", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "A chama desaparece após 2 segundos", -- Ghost Pepper
	-- Full old Desc: "8% de chance de disparar um fogo azul que bloqueia projéteis dos inimigos e causa dano ao contato#{{Luck}} 50% de chance com 10 de Sorte#A chama desaparece após 2 segundos"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "Ao entrar em uma sala, se camufla e confunde todos os inimigos até que você comece a disparar#↑ {{Speed}} +0.5 Velocidade enquanto camuflado#Ao disparar, causa dano ao seu redor e ganha um aumento de Taxa de Disparo e Dano muito breves", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "Dá a você um Contêiner de Coração para cada 25 moedas que você tem#{{Player14}} O Keeper ganhará Corações de Moeda adicionais#{{Collectible416}} Recebe 1 Contêiner de Coração para cada 100 moedas que você tem (caso ultrapasse 99)", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "A mão mata inimigos instantaneamente e causa dano aos chefes", -- Little Horn
	-- Full old Desc: "5% de chance de disparar lágrimas que invoca a mão do Big Horn#{{Luck}} 20% de chance com 15 de Sorte#A mão mata inimigos instantaneamente e causa dano aos chefes#Correr em inimigos causará 3,5 de dano a eles"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Gera uma torreta voadora que dispara nos inimigos", -- Brown Nugget
	-- Full old Desc: "Gera uma torreta voadora que dispara nos inimigos#Cada tiro causa 3.5 de dano"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "Se as lágrimas atingirem as costas do inimigo, elas causam o dobro de dano e cusam sangramento, o que faz os inimigos deixarem um rastro e receberem dano quando eles se movem", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Causa seu dano + 10% da vida máxima do inimigo#Afeta todos os inimigos na sala#{{HalfHeart}} 15% de chance de soltar Meio Coração quando causar dano", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "Orbital que causa sangramento, o que faz com que os inimigos deixem rastros e recebam dano quando se movem#Causa 20% do seu dano ao contato por tick", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbital que dispara uma lágrima a cada 0.33 segundos quando um inimigo está próximo", -- Bloodshot Eye
	-- Full old Desc: "Orbital que dispara uma lágrima a cada 0.33 segundos quando um inimigo está próximo#Causa 3.5 de dano por lágrima#Causa 30 de dano por segundo ao contato"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Causa 'lag' em inimigos e projéteis aleatórios para intervalos de tempo aleatórios, paralisando-os#Chance de congelar e remover disparos inimigos#25% de chance de duplicar recompensas ao limpar as salas", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Permite que você coloque bombas no chão rapidamente#Bombas não empurram umas as outras", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombas#Permite que você coloque bombas no chão rapidamente#Bombas não empurram umas as outras"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "<MISSING>", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Quando ussado, guarde até 10 pick-ups da sala atual#Usando de novo coloca todos eles de volta no chão#Isso permite mover coisas entre salas", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Lágrimas serão conectadas por raios de eletricidade#Eletricidade causa dano igual a 1/3 do seu dano", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Gera um alçapão para o próximo andar#Gera um {{LadderRoom}}alçapão com escada se usado em um piso decorativo (grama, pedras pequenas, papéis, pedras preciosas, etc.)", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% de chance de disparar esporos pegajosos#{{Luck}} Não é afetado pela sorte#Esporos explodem depois de 2.5 segundos, causando dano e envenenamento a inimigos próximos e soltando mais esporos", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Amedronta inimigos em um pequeno raio ao seu redor", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Coin}} +5 moedas#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} Converte 5 moedas em {{Damage}} +1.2 Dano para a sala atual#{{Coin}} +5 moedas"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 557] = "Dá ao personagem uma das seguintes coisas: #Uma fortune#{{SoulHeart}} Coração de Alma#{{Card}} Carta de tarô#{{Rune}} Runa ou Soul Stone#{{Trinket}} Trinket", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Chance de disparar 1-3 lágrimas extras em uma direção aleatória", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Ataca inimigos próximos repetidamente#{{Damage}} Eletricidade causa 75% do seu dano", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Lança um anel de 10 lágrimas que causa 10 de dano quando for atingido#↑ {{Tears}} +1.2 Taxa de Disparo para o primeiro dano#↑ {{Tears}} +0.4 para cada dano adicional", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "↑ Impede que as estatísticas sejam reduzidas pelo resto da corrida", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Bombas explodem com um efeito de bomba aleatório", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Bombas explodem com um efeito de bomba aleatório"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Familiar que persegue inimigos#Depois de matar 15 inimigos, ele causa mais dano e solta meio Coração Vermelho a cada 10 mortes, mas também tentará machucar você#Depois de matar 40 inimigos, ele causa ainda mais dano e pode destruir pedra#Atacar ele faz com que volte ao normal", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1 Meio Coração de Alma quando entrar em um novo andar#Na transição de fase, exibe: #{{TreasureRoom}} O próximo item da Sala do Tesouro#{{BossRoom}} O próximo chefe", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} +0.4 Taxa de Disparo para cada sala limpa sem levar dano#{{Tears}} Acumula até +2 Taxa de Disparo", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Pressionar duas vezes em uma tecla de disparar cria um escudo#O escudo dura 1 segundo, empurra os inimigos para longe e reflete projéteis e lasers inimigos", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "!!! Drena todos os seus Corações Vermelhos no início de cada andar e concede Dano e Velocidade para o andar:#↑ {{Damage}} Dano + 0.15 x Corações Perdidos x Corações Perdidos#↑ {{Speed}} Velocidade + 0.05 x Corações Perdidos#Cada meio coração perdido pode ativar item ativados por perda de vida", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Concede lágrimas multicoloridas com diferentes efeitos de status", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "↑ {{SoulHeart}} +2 Corações de Alma", -- Orphan Socks
	-- Full old Desc: "Impede danos a poças e espinhos no chão#↑ {{Speed}} +0.3 Velocidade#↑ {{SoulHeart}} +2 Corações de Alma"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ {{Shotspeed}} -0.16 Velocidade de Disparo", -- Eye of the Occult
	-- Full old Desc: "Lágriams controláveis#↑ {{Damage}} +1 Dano#↑ {{Range}} +2 Alcance#↓ {{Shotspeed}} -0.16 Velocidade de Disparo"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% de chance de disparar lágrimas espectrais orbitais adicionais", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Contêiner de Coração Vermelho#{{Heart}} Saúde cheia#↑ {{Damage}} +20% Dano#20% de chance de disparar lágrimas espectrais orbitais adicionais"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Ganhe duas auras circulares que causam danos aos inimigos#A aura interna causa mais danos", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} Um familiar enterrado em sua cabeça disparando 4 lágrimas lentas#Ao receber dano, pode sair da cabeça ", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Todos os Dips (cocôs pequenos) são amigáveis#Destruir cocôs gera 1-4 Dips#O tipo do Dip depende do cocô destruído#Pedras podem ser substituídas por cocôs", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Gera uma espada acima de sua cabeça, que duplica todos os itens de pedetais#Não duplica os itens de compra, baú ou Acordos com o Diabo#!!! Mata você em um momento aleatório ao receber dano de um inimigo depois de usar o item", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Cria uma grande poça amarela", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Em vez de lágrimas, o personagem tem uma espada#Causa 3x seu dano#{{Chargeable}} Faz um ataque giratório + tiro de projétil ao carregar#Disparar projéteis com oscilações normais com a saúde cheia", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Cria uma nova sala adjacente a uma parede viável, indicada pelo contorno de uma porta#Podem ser salas especiais#{{ErrorRoom}} Uma sala fora do mapa 13x13 do andar irá teletransportá-lo para a sala I AM ERROR", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Familiar mosca orbital", -- Psy Fly
	-- Full old Desc: "Familiar mosca orbital#Persegue inimigos e desvia projéteis#Causa 15 de dano ao contato por segundo"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Distorce a tela#O efeito pode ser empilhado", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Taxa de Disparo#↓ {{Speed}} -0.03 Velocidade#Distorce a tela#O efeito pode ser empilhado"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Colocar uma bomba enquanto estiver disparando faz com que ela se transforme em um foguete que será disparado na direção do disparo", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bombas#Colocar uma bomba enquanto estiver disparando faz com que ela se transforme em um foguete que será disparado na direção do disparo"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Pode ser combinado com um segundo item ativo para criar um orbital temático#{{DevilRoom}} Transforma a primeira Sala do Diabo em uma {{AngelRoom}} Sala do Anjo#{{AngelChance}} Permite que Salas do Anjo sejam geradas se você tiver feito um Acordo com o Diabo", -- Book of Virtues
	-- Full old Desc: "Gera um familiar orbital que dispara lágrimas espectrais mas pode ser destruído#Pode ser combinado com um segundo item ativo para criar um orbital temático#{{DevilRoom}} Transforma a primeira Sala do Diabo em uma {{AngelRoom}} Sala do Anjo#{{AngelChance}} Chance de Sala do Anjo 12.5% maior#{{AngelChance}} Permite que Salas do Anjo sejam geradas se você tiver feito um Acordo com o Diabo"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Ao usar gera: #{{SoulHeart}} 3 Corações de Alma#{{AngelRoom}} 2 itens da Sala do Anjo#Deve ser carregado pegando Corações de Alma#{{DevilRoom}} Gera somente 2 Corações de Alma e 1 item do Anjo se um Acordo com o Diabo foi feito anteriormente", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Gera uma escada no início de cada andar#{{AngelRoom}} Ela leva a uma loja de itens da Sala do Anjo", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "↑ {{Luck}} +1 Sorte", -- Sol
	-- Full old Desc: "{{BossRoom}} Revela a localização da Sala do Chefe#Ao derrotar o chefe, concede para o resto do andar: #{{Card20}} Ativa The Sun#{{Battery}} Recarrega totalmente seu item ativo#{{CurseBlind}} Remove quaisquer Maldições#↑ {{Damage}} +3 Dano#↑ {{Luck}} +1 Sorte"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Adiciona uma {{SecretRoom}} Sala Secreta e {{SuperSecretRoom}} Super Secreta extra em cada andar#Revela uma Sala Secreta em cada andar#A Sala Secreta contém um feixe de luz que concede:#{{HalfSoulHeart}} Meio Coração de Alma#↑ {{Tears}} +0.5 Taxa de Disparo para o andar atual#↑ {{Tears}} +0.5 Taxa de Disparo adicional do primeiro feixe por andar", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Portas permanecem abertas depois de entrar em uma sala", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Velocidade#Portas permanecem abertas depois de entrar em uma sala"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Inimigos próximos ficam encantados", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Contêiner de Coração Vermelho#{{Heart}} Cura 1 Coração Vermelho#{{Charm}} Inimigos próximos ficam encantados"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Troca lágrimas por pedras#Causa dano variável", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Dano#Troca lágrimas por pedras#Causa dano variável#Pode destruir obstáculos#Aumenta o recuo"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Faz um dash ao pressionar duas vezes na tecla de movimento#Torna-se invulnerável e causa 4x o seu dano#3 segundos de tempo de recarga", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Ao se mover libera as nuvens de peido venenoso atrás de você", -- Jupiter
	-- Full old Desc: "↑ {{Heart}} +2 Contêineres vazios de Coração Vermelho#{{HalfHeart}} Cura Meio Coração#↓ {{Speed}} -0.3 Velocidade#{{Speed}} Aumenta até +0.5 de velocidade enquanto estiver parado#{{Poison}} Te deixa imune a dano de veneno#{{Poison}} Ao se mover libera as nuvens de peido venenoso atrás de você"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "Um círculo envolve você#Ao entrar em uma sala, 7 lágrimas irão orbitar nele#Chance de pegar projéteis inimigos", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Atira lágrimas de gelo, que retardam os inimigos e congela os monstros que ele matam#Tocar em inimigos congelados faz-os desliza e explodir em 6 fragmentos de gelo", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Chargeable}} Carregável (Automático)#Cria um enorme bônus de lágrimas ao longo de 3 segundos enquanto não disparar#Disparar novamente irá liberar lágrimas armazenadas#O bônus da lágrima cai conforme você dispara", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Diminui significativamente o tamanho do personagem, permitindo que ele passe entre objetos#Projéteis podem passar por cima dele", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Lágrimas#Diminui significativamente o tamanho do personagem, permitindo que ele passe entre objetos#Projéteis podem passar por cima dele"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Gera uma Sala de Maldição adicional para cada andar#{{CursedRoom}} Melhora o layout e recompensas da Sala de Maldição", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Receber dano de Coração Vermelho não reduz tanto a chance da Sala do Diabo/Anjo", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Lágrimas#{{EternalHeart}} +1 Coração Eterno#{{AngelChance}} Permite que Salas do Anjo apareçam, mesmo se um Acordo com o Diabo tenha sido feito antes#Receber dano de Coração Vermelho não reduz tanto a chance da Sala do Diabo/Anjo"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} Adiciona um alçapão em cada loja que leva a uma segunda loja com um estoque exclusivo", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Recarrega totalmente seu item ativo", -- Battery Pack
	-- Full old Desc: "{{Battery}} Gera 2-4 baterias#Recarrega totalmente seu item ativo"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Permite pegar e arremessar pedras, TNT, cocôs, Dips amigáveis, Hosts, e outros obstáculos#Permite carrega-los entre salas", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Puxa inimigos, pickups e projéteis próximos", -- Ocular Rift
	-- Full old Desc: "5% de chance de disparar lágrimas que criam fendas onde caem#{{Luck}} Levemente afetado pela sorte#Puxa inimigos, pickups e projéteis próximos"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Familiar que dispara rajadas de lágrimas em todas as direções", -- Boiled Baby
	-- Full old Desc: "Familiar que dispara rajadas de lágrimas em todas as direções#Causa 3.5 ou 5.3 de dano por lágrima"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Familiar que lança lágrimas congelante#Congela inimigos ao matá-los", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Troca todos os itens de pedestal na sala#Itens tem 30% de chance de desaparecer", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Familiar que salta sobre um inimigo como primeiro golpe na sala#Causa 45 de dano e lança uma onda de pedras#Ataca os inimigos", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Faz você gritar, causando dano e empurrando os inimigos próximos#O grito fica mais forte quanto mais cargas o item tiver", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Familiar de alma que morre com um golpe, ressurgindo no início do próximo andar#Se ela sobreviver a um andar inteiro, gerará {{SoulHeart}} 3 Corações de Alma, {{EternalHeart}} 2 Corações Eternos ou um {{TreasureRoom}} item da Sala do Tesouro ou {{AngelRoom}} item da Sala do Anjo", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Se o jogador não tiver bombas, uma pode ser colocada ao custo de Meio Coração#Bombas colocadas deixam uma poça vermelha", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Contêiner de Coração Vermelho#{{Heart}} Cura 5 Corações#{{HalfHeart}} Se o jogador não tiver bombas, uma pode ser colocada ao custo de Meio Coração#Bombas colocadas deixam uma poça vermelha"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Logo antes do Isaac colidir com um inimigo ou projétil o Dumpy peidará para desviá-los#Depois de peidar, você precisa se aproximar do Dumpy para recuperá-lo", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Chamas podem bloquear até 4 disparos e/ou causar dano 4 vezes antes de serem destruídas, duram até 10 segundos", -- Bird's Eye
	-- Full old Desc: "8% de chance de disparar fogo que bloqueia tiros inimigos e causa dano ao contato#{{Luck}} 50% de chance com 10 de Sorte#Chamas podem bloquear até 4 disparos e/ou causar dano 4 vezes antes de serem destruídas, duram até 10 segundos"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Irá atrair pickups, projéteis e inimigos", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% de chance de disparar lágrimas que magnetizam os inimigos#{{Luck}} 100% com 5 de Sorte#Irá atrair pickups, projéteis e inimigos"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Inimigos marcados são atacados por outros inimigos", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% de chance de disparar lágrimas que marcam inimigos#{{Luck}} 100% de chance com 5 de Sorte#Inimigos marcados são atacados por outros inimigos"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Tem um efeito diferente para cada personagem", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "O dano desaparece pelos próximos 3 minutos#Matar inimigos enquanto o efeito está ativo aumenta o tempo", -- Red Stew
	-- Full old Desc: "{{Heart}} Saúde cheia#↑ {{Damage}} +21.6 Dano#O dano desaparece pelos próximos 3 minutos#Matar inimigos enquanto o efeito está ativo aumenta o tempo"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Remove todos os itens e pickups do personagem#Teleporta você para um quarto exclusivo com pickups, baús e um alçapão#Para cada item perdido, Salas do Tesouro {{TreasureRoom}} mostram um conjunto de 3 itens para escolher", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Arremesse sua chave para causar dano, destruir obstáculos, ou abrir portas#Os inimigos mortos com ele têm a chance de gerar o conteúdo de um baú, incluindo itens", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Chaves#Arremesse sua chave para causar dano, destruir obstáculos, ou abrir portas#Os inimigos mortos com ele têm a chance de gerar o conteúdo de um baú, incluindo itens"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Habilidade de esmagar inimigos e obstáculos", -- Mega Mush
	-- Full old Desc: "Gigantifica você por 30 segundos, persiste entre salas#Enquanto gigante você tem:#↑ {{Damage}} +300% Multiplicador de Dano#↑ {{Range}} +7 Alcance#↓ {{Tears}} -60% Taxa de Disparo#Habilidade de esmagar inimigos e obstáculos#Invencibilidade completa"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Causa dano aos inimigos", -- Knife Piece 2
	-- Full old Desc: "Combinado com Knife Piece 1 {{Collectible627}}, cria um familiar faca#Causa dano aos inimigos#Pode abrir uma certa porta de carne"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Leva você a um andar contendo todos os itens do jogo#Depois de pegar um item, volte para a sala de onde veio", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Orbital que dispara lágrimas protegidas nos projéteis inimigos", -- Bot Fly
	-- Full old Desc: "Orbital que dispara lágrimas protegidas nos projéteis inimigos"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Divide cada inimigo na sala em 2 versões menores deles mesmos com muito menos saúde", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Torna você imune a queimadura, confusão, medo, veneno e gases tóxicos", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Sorte#Torna você imune a queimadura, confusão, medo, veneno e gases tóxicos"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Enquanto em uma sala com inimigos, gera rachaduras no chão#Andar sobre essas fendas convoca fantasmas explosivos", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Passivamente gera um familiar que se move na direção do tiro do personagem#Em uso, o personagem troca de lugar com o familiar e ganha invencibilidade curta#Teleportar-se para objetos pode danificá-las ou destruí-las", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Teleporta você de volta para o primeiro andar de uma nova corrida#Itens, aumentos de status e pickups permanecem intactos", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Arremessa uma borracha que mata um inimigo instantaneamente#Impede que o inimigo apareça pelo resto da corrida#Causa 15 de dano a um chefe#Pode ser usado apenas uma vez por andar", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Vomita uma torrente de chamas#Ganha uma carga cada vez que um inimigo morre", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Cria uma corrente de lágrimas atrás de você durante uma luta#As lágrimas causam 3.5 de dano", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Gera um item baseado no tipo da sala atual#{{BrokenHeart}} Troca 1 Contêiner de Coração ou 2 Corações de Alma por um Coração Quebrado#!!! Substitui itens futuros se não estiver segurando isso#33% depois de 1 uso, 50% depois de 2, 100% depois de 3#Baixa chance se o Magic Skin está em um pedestal no andar atual#{{Player10}} Uso único para The Lost", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{SoulHeart}} +2 Corações de Alma", -- Revelation
	-- Full old Desc: "{{Chargeable}} Atirar por 2.5 segundo irá disparar um laser sagrado quando o botão de disparo for solto#Concede Voo#{{SoulHeart}} +2 Corações de Alma"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Aumenta seu status mais baixo#{{Coin}} Solta 3 moedas, {{Bomb}} 1 bomba ou {{Key}} 1 chave, dependendo do que você tem menos", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Orbital Teratoma#Causa dano ao contato#Divide-se em versões menores de si mesmo ao receber 3 acertos#As versões menores se dividem em aranhas azuis", -- Tinytoma
	-- Full old Desc: "Orbital Teratoma#Bloqueia tiros#Causa dano ao contato#Divide-se em versões menores de si mesmo ao receber 3 acertos#As versões menores se dividem em aranhas azuis#Renasce 5 segundos depois que todos se foram"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Bombas lançam 4 Brimstone nas direções cardeais#As Brimstones não te machucam", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#{{Collectible118}} Bombas lançam 4 Brimstone nas direções cardeais#As Brimstones não te machucam"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Os itens ativos não carregam ao limpar as salas#Eles carregam causando dano aos inimigos#O dano necessário por cargas aumenta a cada andar#Formula: 40 + 20 * andar", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Impulsiona-se diagonalmente pela sala, soltando lágrimas por onde passa", -- Fruity Plum
	-- Full old Desc: "Impulsiona-se diagonalmente pela sala, soltando lágrimas por onde passa"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Invoca um Baby Plum amigável na sala atual por 10 segundos", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Familiar que emite uma aura e viaja lentamente em direção à {{BossRoom}} Sala do Chefe#Enquanto permanecer na aura, concede:#↑ {{Damage}} +1 Dano#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Familiar que emite uma aura e viaja lentamente em direção à {{BossRoom}} Sala do Chefe#Enquanto permanecer na aura, concede:#↑ {{Damage}} +1 Dano#↑ +20% Multiplicador de Dano#↑ {{Tears}} +150% Multiplicador de Lágrimas#Lágrimas teleguiadas"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Familiar que desliza pela sala#{{Freezing}} Ele desacelera e causa dano ao contato, congelando monstros que mata", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Enquanto segurar, inimigos não fantasmas geram pequenos fantasmas vermelhos na morte#Em uso, faz com que os fantasmas explodam", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Outras pílulas ruins deixam cair Corações Negros ao serem usadas", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1 Coração Negro#{{Pill}} Identifica todas as pílulas#Converte pílulas boas em ruins#↑ {{Damage}} Pílulas antiestáticas concedem Dano#{{BlackHeart}} Outras pílulas ruins deixam cair Corações Negros ao serem usadas"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Concede um orbital giratório que bloqueia tiros inimigos e causa dano ao contato#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Concede um orbital giratório que bloqueia tiros inimigos e causa dano ao contato#Quando usado: #↑ {{Speed}} +0.5 Velocidade e aumenta muito a velocidade de rotação dos orbitais"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Item não coletável>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Os inimigos explodem em lágrimas depois de morrer, que herdam os efeitos das lágrimas do personagem", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Gera Minisaacs quando você recebe dano#Eles perseguem e disparam em inimigos próximos", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Gera dois portais no início de cada andar#Os portais desaparecem ao sair da sala#{{ColorRed}}Vermelho: {{CR}}{{BossRoom}} Sala do Chefe#{{ColorYellow}}Amarelo: {{CR}}{{TreasureRoom}} Sala do Tesouro#{{ColorBlue}}Azul: {{CR}}{{SecretRoom}} Sala Secreta", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Ao matar um inimigo, gera um familiar aleatório no local onde ele morreu#Até 5 familiares por sala", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Torne-se invencível a cada 6 segundos por 1 segundo#Pisca imediatamente antes da transição", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "{{Heart}} Itens de comida curam 3 Corações Vermelhos#Os itens de pedestais alternam periodicamente entre itens alimentares e qualquer um outro#↓ {{Speed}} -0.03 Velocidade", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Contêiner de Coração Vermelho#{{Heart}} Saúde cheia#{{Heart}} Itens de comida curam 3 Corações Vermelhos#Os itens de pedestais alternam periodicamente entre itens alimentares e qualquer um outro#Pegar um item alimentar concede: #↑ {{Damage}} +3.6 Dano temporário#↑ 2 pequenos aumentos de estatísticas permanentes#↓ {{Speed}} -0.03 Velocidade"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Mostra o conteúdo de {{Chest}} baús, {{GrabBag}} sacos, shopkeepers e fogueiras antes de serem abertos", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "!!! Ele pode pegar itens, removendo-os permanentemente ao morrer", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Bomba#{{Player14}} Gera um Keeper como segundo personagem#Quando ele morrer, gera aranhas azuis e remove completamente este item#{{DevilRoom}} Itens da Sala do Diabo custam moedas enquanto ele estiver vivo#!!! Ele pode pegar itens, removendo-os permanentemente ao morrer"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Começa a sequência para acessar o andar da Casa#Trinkets restantes nas salas do Tesouro {{TreasureRoom}} ou Chefes {{BossRoom}} anteriores se transformam em Cracked Key {{Card78}}", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Se uma sala conceder uma recompensa, haverá duas recompensas diferentes para escolher#Pegar um faz com que a outra desapareça", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "Dá aumento aleatório permanente de estatísticas ao ser curado por um pickup de Coração Vermelho#{{Heart}} Gera 1 Coração Vermelho", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Itens da Sala do Diabo agora custam moedas#{{Shop}} Itens da loja custam Corações#{{Shop}} Os consumíveis nas lojas são gratuitos, mas estão cercados por espinhos", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Depois de entrar em uma Sala do Diabo e não pegar nenhum item/pickup concede: #{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Depois de entrar em uma Sala do Diabo e não pegar nenhum item/pickup concede: #{{SoulHeart}} 1 Coração de Alma#↑ {{Damage}} +1 Dano"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Ao morrer, o fantasma do personagem é acorrentado ao seu cadáver e ele pode continuar lutando com metade de um coração#Retorne a saúde depois de 10 segundos#Deve ser recarregado pegando um Coração de Alma", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Ao receber dano:#Destranca portas fechadas na sala atual#Revela uma sala aleatória no andar#Também destranca portas que requerem chaves#Pode abrir a porta do Mega Satan#{{UltraSecretRoom}} Pode revelar a Sala Ultra Secreta", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} Quando estiver com um Coração Vermelho ou menos no início de um novo andar, concede um Contêiner de Coração Vazio#Nenhum efeito para personagens que não tem Corações Vermelhos", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Ao ser atingido, para o tempo por 3 segundos#O personagem se torna um fantasma e deixa seu corpo#Na forma de fantasma, ganha voo, lágrimas espectrais e também negam o próximo dado", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Concede um ataque carregável de curto atraso que dispara lágrimas teleguiadas de fetos espectrais", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Familiar que dispara um mini Maw of the Void", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Enquanto dispara, carregue um Brimstone de curto alcance#Atira atrás de você", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Causa dano ao contato e voa para frente#Consome pickups em seu caminho#Cada um aumentará seu tamanho, dano e gerará uma Blue Fly#A cada quatro pickups, ele gera um portal para uma sala inexplorada", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Faz com que um tentáculo saia do chão e agarre um inimigo#Inimigos agarrados sofrem dano, são desacelerados e não podem se mover", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Inimigos geram ossos flutuantes na morte#Ossos bloqueiam projéteis e causam dano ao contato", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Chance de gerar fantasmas ao matar um inimigo#Fantasmas perseguem inimigos e causam dano ao contato#Após 5 segundos, o fantasma explode, causando 7 de dano aos inimigos próximos#Você não é danificado pela explosão ", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Gera um wisps que dispara varias lágrimas, bloqueia tiros, e causa dano ao contato#Número de wisps gerados aumenta quanto mais é usado", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "{{SoulHeart}} Concede um aumento de estatísticas permanente sempre que você pegar um Coração de Alma", -- Soul Locket
	-- Full old Desc: "{{SoulHeart}} Concede um aumento de estatísticas permanente sempre que você pegar um Coração de Alma#{{SoulHeart}} Gera um Coração de Alma ao pegar"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Gera um monstro amigável aleatório que imita os movimentos e ataques do personagem", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Reaparece na sala atual com Meio Coração, tamanho reduzido massivamente e +0,2 Velocidade", -- Inner Child
	-- Full old Desc: "+1 Saúde extra#Reaparece na sala atual com Meio Coração, tamanho reduzido massivamente e +0,2 Velocidade"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Os itens de pedestais alternam rapidamente entre 5 itens aleatórios", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Faz com que os inimigos ricocheteem no personagem#Saltar contra obstáculos causa dano#50% de chance de desviar projéteis inimigos", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Impede que de itens de qualidade {{Quality0}}/{{Quality1}} apareçam#33% de chance de trocar itens com qualidade {{Quality2}}", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "{{DevilRoom}} Gera um conjunto especial de espinhos na Sala do Demônio#Receba dano dos espinhos para receber uma recompensa:#35%: Nada#15%: ↑ {{Damage}} +0.5 Dano#15%: {{Coin}} 6 pennies#10% {{BlackHeart}} 2 Corações negros#5%: {{DevilRoom}} Item aleatório da Sala do Diabo#2%: Transformar-se em Leviathan", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Gera uma nova mosca a cada sala limpa", -- The Swarm
	-- Full old Desc: "Concede 8 moscas orbitais que se transformam em moscas azuis após bloquearem um tiro#Gera uma nova mosca a cada sala limpa"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Cada golpe fatal irá adicionar mais 2 Corações Quebrados#Você morre com 12 Corações Quebrados", -- Heartbreak
	-- Full old Desc: "{{BrokenHeart}} Concede 3 corações quebrados#↑ {{Damage}} +0.25 Dano para cada Coração Quebrado#Cada golpe fatal irá adicionar mais 2 Corações Quebrados#Você morre com 12 Corações Quebrados"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Ao receber dano, ganha {{Speed}} velocidade e {{Tears}} lágrimas para o andar atual#Limite de +1.02 Velocidade e +3 Taxa de Disparo", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Concede uma aréola que gera feixes de luz nos inimigos dentro dele#Quanto mais dano você recebe neste andar, maior a aréola fica", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Familiar que se torna um clone do chefe ao entrar na Sala do Chefe#Derrotá-lo deixa cair um item extra#O clone é mais lento e tem 75% da saúde do chefe original", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Dois familiares que ficam ao seu lado#Atiram lágrimas iguais às suas, mas com apenas 37,5% do seu dano", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Aumente a raiva toda vez que uma sala for limpa#Após 4 salas, dispara um grande {{Collectible118}} Brimstone ao entrar na próxima sala", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Quando o personagem usa uma carta, pílula ou runa, ele também usa uma cópia das últimas 3 cartas/pílulas/runas que usou após pegar a Echo Chamber", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Gera um {{DirtyChest}} Old Chest no início de cada andar que requer uma chave para destrancar#Pode conter {{SoulHeart}} Corações de Alma, {{Trinket}} trinkets ou itens#{{AngelRoom}} Os Itens são da Sala do Anjo ou temáticos da Mãe e Pai", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Depois de receber dano, gera um feixe orbital que dura por todo o andar#O máximo é 6#Eles disparam lágrimas, mas não bloqueiam os tiros", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Troca entre o personagem atual e Esau Jr, que tem {{BlackHeart}} 3 Corações Negros, {{Damage}} +2 de dano e voo#Personagens têm itens e saúde independentes#Ao usar pela primeira vez ele recebe a mesma quantidade de itens passivos aleatórios que você tem#{{Warning}} Morrer com qualquer um dos personagens encerra a corrida", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Ao tocá-los, causa 2x o seu dano + 3.5 de dano por inimigo tocado#Explosão no final do efeito que causa dano igual ao quanto você causou", -- Dark Arts
	-- Full old Desc: "Ao usar recebe {{Speed}} +1 Velocidade e anda através dos inimigos e disparos por 1 segundo#Ao tocá-los, causa 2x o seu dano + 3.5 de dano por inimigo tocado#Explosão no final do efeito que causa dano igual ao quanto você causou"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Destrói todos os itens na sala e gera uma familiar mosca para cada item destruído#Os efeitos da mosca dependem dos itens destruídos", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Impede o personagem de disparar lágrimas por um olho", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Dano#Impede o personagem de disparar lágrimas por um olho"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Permite que você colida e pegue inimigos ou chefes e, em seguida, jogue-os no chão#O local de arremesso pode ser controlado#O arremesso causa 50 de dano e causa queda de rochas", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Coleta e armazena até 8 pickups que não podem ser soltos#Uma vez que 8 pickups estão na bag, usá-la irá criar um item#A qualidade do item depende da qualidade dos pickups", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Ao entrar em uma sala com um item de pedestal, um segundo item fantasma será mostrado#Ao usar, troca entre o item real e o espectral#Ambos podem ser pegos se o Flip for usado após pegar o primeiro item#!!! O item espectral desaparece se você pegar o primeiro item e sair da sala", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Uma uma wisp orbital que concede um efeio de item mas que pode ser destruída#O item tem 25% de chance de ser do tipo de sala atual, ou da Sala Do Tesouro, Chefe ou Loja", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Remove Meio Coração e cria um familiar Coágulo#Cada tipo de Coração gera um Coágulo com HP, dano e Efeito de Lágrima diferentes", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Recupera o corpo do Forgotten de qualquer distância", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Guarda um Feitiço de cocô que pode ser usado mais tarde", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} A cada 3 moedas gastas ao comprar itens, concede um dos seguintes status:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Gera {{Coin}} 3 moedas aleatórias e {{Key}} 1 chave#{{Shop}} A cada 3 moedas gastas ao comprar itens, concede um dos seguintes status:# ↑ {{Damage}} +0.5 Dano#↑ {{Range}} +0.25 Alcance#↑ {{Speed}} +0.03 Velocidade"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Pedras e adereços geram 2 aranhas azuis quando destruídas#Pedras podem ocasionalmente gerar aranhas azuis quando estiver em uma sala hostil", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Gera um item/pickup aleatório da loja que pode ser comprado", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Gera determinados pickups com base em quantas cargas ele tem#Se totalmente carregado, ele tem um efeito aleatório mais forte#Recompensas de acordo com a carga: 1:Cocô 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Faz com que todos os itens futuros sejam 'defeituoso'#Concede a eles efeitos completamente aleatórios", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Acorrenta o inimigo mais próximo por 5 segundos, impedindo-o de fazer qualquer coisa", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Troca todos os itens no quarto, diminuindo seu ID interno em um", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Ao ser atingido por um inimigo, deixa cair Meio Coração Vermelho ou um Cheio#Corações gerados são lançados e desaparecem após 1.5 segundos", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Depois de causar dano suficiente, pare de atacar para acionar um efeito aleatório do {{Player25}}Tainted ???:#Arremessar cocô aleatório#Criar uma poça fortificadora#Nuvem de peido venenoso#Solta 5 bombas vivas", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Pressione duas vezes o botão de disparar para espirrar sangue#Causa 150% do seu dano aos inimigos à sua frente#Cooldown de 1 segundos#Inimigos afetados sofrem dano extra da Brimstone", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "As bombas geram fantasmas que causam dano ao contato e explodem após 10 segundos", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#As bombas geram fantasmas que causam dano ao contato e explodem após 10 segundos"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Gera um familiar demônio que fica ligado ao personagem#Imita a lágrima do personagem, status e efeito", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Arranca a cabeça do personagem, causando dano ao contato e disparando lágrimas de onde ela cair#Reativar o item ou pisar na cabeça a recoloca", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Gera uma Runa ou Soul Stone aleatória ao pegar", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Dano#{{Rune}} Gera uma Runa ou Soul Stone aleatória ao pegar"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 33% de chance de gerar uma moeda quando destruir rochas", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} Chance 20% maior de gerar moedas em cocôs#Peida ao pegar moedas#{{Poison}} Peido causa recuo e envenenamento em inimigos e projéteis", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% de chance de receber um efeito de cogumelo aleatório por sala", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible100}} Little Steven", -- Umbilical Cord
	-- Full old Desc: "Quando estiver com um Coração Vermelho ou menos, ganhe um#{{Collectible100}} Little Steven#{{Collectible318}} Alta chance de gerar um familiar Gemini para a sala atual ao receber dano"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Quando for atingido, 5% de chance de causar 80 de dano a todos os inimigos na sala#{{BlackHeart}} Corações Negros e efeitos como {{Collectible35}} Necronomicon causam 2x o dano", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 25% de chance de soltar Meio Coração quando pegar uma moeda", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 25% de chance de soltar uma bomba quando pegar uma moeda", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 25% de chance de soltar uma chave quando pegar uma moeda", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Camufla o jogador aleatoriamente#Confunde inimigos#Pode ser ussado para abrir a porta para o andar \"Home\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Aumeta as estatísticas de seus itens em 20%", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "O dano recebido ignorará Corações de Alma/Negros, fazendo com que seus contêineres de Coração Vermelho sejam esgotados primeiro#!!! O dano de Coração Vermelho pode diminuir sua chance de Sala do Diabo/Anjo", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Lojas vão aparecer no Womb e Corpse", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Salas do item agora aparecem em the Womb e Corpse", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "Cura metade dos seus Corações Vermelhos/Osso vazios ao viajar para o próximo andar#Mínimo de Meio Coração curado", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{SoulHeart}} 17% de chance de soltar meio Coração de Alma quando pegar uma moeda", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% de chance de ganhar o efeito de uma seringa aleatória para a sala atual", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Bombas colocadas pelo personagem explodem mais rápido", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Aumenta o tamanho do peido", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Portas, blocos de chaves e baús dourados podem ser abertos com explosões#Também pode abrir a porta de Casas", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Quando entrar em um novo andar, até 4 pickups não coletados do andar anterior aparecem na sala inicial", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Usar um item ativo troca ele", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +3 Sorte para Lágrimas baseadas em efeito de sorte", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Pegar Corações Vermelhos pode convertê-los em aranhas azuis#Funciona quando estiver com a saúde cheia#O efeito pode consumir Corações necessários para curar", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Aumenta a taxa de tiro dos familiares", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} Ao entrar em um novo andar, gera 4 Book of Virtues orbitais", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Lágrimas que erram os inimigos irão ser redirecionar 90 graus em direção aos inimigos", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "É destruída quando receber dano", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Sorte enquanto segurar#É destruída quando receber dano"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{TreasureRoom}} Salas do tesouro agora contem acordos com o Diabo", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "17% de chance de adicionar uma carga para seu item ativo ao pegar moedas", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Faz com que os familiares circulem o personagem", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Ativa seu item ativo ao receber dano", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Entrar em uma sala que requer uma chave te leva para uma sala parecida com Womb#A sala atua como um meio-termo das duas salas", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Faz com que os espinhos tornem-se inofensivos#{{CursedRoom}} Também afeta as portas da Sala da Maldição, Mímicos e qualquer obstáculo com espinhos", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "{{Planetarium}} +9% se um Planetário já apareceu#{{Planetarium}} Planetários podem aparecer no Womb e Corpse", -- Telescope Lens
	-- Full old Desc: "{{Planetarium}} +24% de Chance de Planetário se nenhum apareceu ainda#{{Planetarium}} +9% se um Planetário já apareceu#{{Planetarium}} Planetários podem aparecer no Womb e Corpse"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% de chance de efeito de um item aleatório da Mãe por sala", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% de chance um item consumível Dado temporário por sala#O Dado desaparece quando sai#Não ocupa um slot de pílula/carta", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Gera uma Sala do Tesouro {{TreasureRoom}} e Loja {{Shop}} na Cathedral", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} Ganhe um Contêiner de Coração enquanto segurar#{{Player14}} Também funciona para o Keeper", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Ao ser atingido, o personagem solta 2 moedas, chaves ou bombas#Estes pickups podem ser substituidos por outras variações, como a chave dourada, nickels, diamantes, etc.#(Exceto: Corações, Cartas, Pílulas, Runas)", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Baús Dourados podem conter cartas, pílulas ou trinkets extras", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Chave#{{GoldenChest}} Substitui todos os baús por Baús Dourados (excerto Old/Mega)#{{GoldenChest}} Baús Dourados podem conter cartas, pílulas ou trinkets extras"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} Gera um saco ao viajar para o próximo andar", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Gera uma Sala do Tesouro {{TreasureRoom}} e Loja {{Shop}} no Sheol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 50% de chance de transformar-se em Azazel quando entra em uma nova sala#O efeito dura até limpar e sair de outra sala", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Todos os Dips (pequenos cocôs) são amigáveis#Gera 1 Dips aleatório quando limpa uma sala", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Gera uma bomba extra para cada bomba colocada", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "No Womb e diante, substitui todos as moedas e chaves por uma bomba, coração, pílula, carta, trinket, bateria ou mosca inimiga", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% de chance de garatir o efeito de um item passivo para cada sala", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "25% de chance de gerar um Bony amigável quando limpa uma sala", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} +1 Contêiner de Coração de Osso ao entrar em um novo andar", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} Enquanto segurar, conta como item para a transformação Guppy", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} 33% de chance de gerar automaticamente uma sala da Red Key toda vez que limpar uma sala", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% de chance de Acordos com o Diabo custarem moedas em vez de Corações", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "{{Coin}} Teleporta você para uma sala aleatória quando pega um penny#Pode teleportar para Salas Secretas", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Permite que você pegue um item da Sala do Diabo de graça#Comprar um item da Sala do Diabo destrói este trinket#!!! Pegar o item grátis ainda afeta a chance de Sala do Anjo", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Impede que o Krampus apareça nos acordos com o Diabo#Acordos com o Diabo serão transformados em sala de acordo especiais com mais acordos, inimigos e Corações Negros", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% de chance de acordo com Diabo#Impede que o Krampus apareça nos acordos com o Diabo#Acordos com o Diabo serão transformados em sala de acordo especiais com mais acordos, inimigos e Corações Negros"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Libera a passagem para a luta contra o Hush, independentemente da duração da corrida", -- Strange Key
	-- Full old Desc: "Libera a passagem para a luta contra o Hush, independentemente da duração da corrida#Usar a Pandora's Box {{Collectible297}} gera 6 itens de lugares aleatórios"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Gera um familiar que imita o movimento do personagem, direção do tiro e Efeito de Lágrima#O familiar renasce a cada sala se morrer", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} Gera um baú depois de concluir uma {{ChallengeRoom}}Sala do Desafio, ou um colecionável depois de concluir uma {{BossRushRoom}}Sala do Desafio de chefe", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "50% de chance do personagem explodir ao receber dano", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "O movimento dos familiares será controlado pelos mesmos comandos do jogador#Segure o botão de Soltar para manter o familiar no lugar, igual ao Jacob e Esau", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Familiar que segue os movimentos exatos do personagem e dispara lágrimas espectrais#Tem o mesmo dano e Efeito de Lágrima do jogador#Renasce a cada andar", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Quando usar um item ativo, ativa um efeito adicional de um item ativo com 1-2 cargas", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = " Gera 5 wisps ao entrar em uma {{AngelRoom}}Sala do anjo#25% de chance de gerar uma wisp ao doar a um Mendigo", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% de chance de duplicar um familiar a cada sala", -- The Twins
	-- Full old Desc: "50% de chance de duplicar um familiar a cada sala#Se você não tem nenhum familiar, concede {{Collectible8}}Brother Bobby ou {{Collectible67}}Sister Maggy em vez disso"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Lojas podem vender familiares por 10 moedas", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "17% de chance de gerar um gafanhoto aleatório quando matar um inimigo", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Concede 1 gafanhoto Abyss", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% de chance de adicionar um item cego extra nas salas de itens#50% de revelar o item cego no caminho alternativo", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Matar o inimigo petrificado o congela", -- Ice Cube
	-- Full old Desc: "20% de chance de petrificar um inimigo quando entra em uma sala#{{Freezing}} Matar o inimigo petrificado o congela"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Ativa um escudo de 1 segundo ao matar um inimigo#Matar um inimigo com o escudo ativo adiciona mais um segundo", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Teleporta você para a Sala do Tesouro#{{Planetarium}} Caso haja um Planetário, teleporta você para lá ao invés disso", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Troca todos os pickups, baús e inimigos não chefes em bombas", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Troca todos os pickups, baús e inimigos não chefes em moedas", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Troca todos os pickups, baús e inimigos não chefes em chaves", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} Troca todos os pickups, baús e inimigos não chefes em Corações", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Gera um alçapão para o próximo andar#Gera um {{LadderRoom}}alçapão com escada se usado em um piso decorativo (grama, pedras pequenas, papéis, pedras preciosas, etc.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Ao usar, arremessa a carta na direção em que você está se movendo#Mata imediatamente QUALQUER inimigo que ela tocar (exceto Delirium ou The Beast)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} Concede o efeito do Holy Mantle#(Ignora o próximo dano recebido)#O efeito dura até que o dano seja recebido", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Ativa o efeito de uma runa aleatória#O efeito da runa é mais fraco", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Solta todos os seus Corações e pickups no andar, deixando apenas Meio Coração#Moedas e bombas são soltas como {{Collectible74}}The Quarter ou {{Collectible19}}Boom! se possível", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "Concede uma aura que repele projéteis e inimigos por 1 minuto", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "O Pé da Mãe pisa repetidamente por 1 minuto", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Teleporta você para um Chefe extra com saque extra#O chefe é escolhido de dois andares abaixo do atual", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Gera 1 item baseado no tipo da sala atual#{{BrokenHeart}} Troca 1 Contêiner de Coração Vermelho ou 2 Corações de Alma em um Coração Quebrado", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "Transforme-se em uma estátua imóvel e invencível por 10 segundos#↑ {{Tears}} Taxa de tiro extrema enquanto durar"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "Gera 2-4 baús dourados", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Toca pickups e itens na sala em moedas#{{Shop}} Os valores das moedas são iguais ao valor da loja", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Efeito de dado aleatório", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Weakness}} Inimigos na sala atual são enfraquecidos, desacelerados e recebem o dobro de dano#Dura 1 minuto", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Matar inimigos solta uma moeda aleatória", -- XII - The Hanged Man?
	-- Full old Desc: "{{Player14}} Transforma o personagem em Keeper por 30 segundos#Garante tiro triplo e menos velocidade#Matar inimigos solta uma moeda aleatória"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} Ativa o efeito do Book of the Dead#Gera uma entidades de ossos para cada inimigo morto na sala", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} Aplica 5 efeitos de pílulas  aleatórias", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Collectible33}} Ativa o efeito do Bible#{{Collectible390}} Garante o familiar Seraphim e voo por 30 segundos", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Gera 6 aglomerado de rochas e obstáculos aleatórios#Aglomerados frequentemente conterão pedras marcadas", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Remove itens passivos velhos (ignora itens iniciais)#Gera 2 itens aleatórios da sala atual", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Teleporta você para sala Ultra Secreta#O caminho de volta serão salas vermelhas", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{BoneHeart}} Troca Corações Vermelhos em Corações de Osso", -- XIX - The Sun?
	-- Full old Desc: "Para a sala atual: #↑ {{Collectible159}} Ganhe um Spirit of the Night#↑ {{Damage}} +1.5 Dano#Para o andar atual#{{BoneHeart}} Troca Corações Vermelhos em Corações de Osso#{{CurseDarkness}} Aplica Curse of Darkness"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} Gera uma Restock Machine", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} Gera um alçapão para o crawl space", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Uma vez, use a chave vermelha", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Copia o efeito da pílula, carta, runa, pedra da alma ou item ativo usados por ultimo", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Troca todos os itens na sala#Volta todos os itens após um segundo#Efeito se repete", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Circunda o personagem com uma aura vermelha borbulhante para a sala atual#{{HalfHeart}} Inimigos mortos solta metade de um Coração Vermelho que desaparece em 2 segundos", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Abre todas as portas na sala#{{Collectible580}} Cria salas vermelas com a Red Key para cada saída possivel", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Transforma o personagem em um fantasma que pode atravessar inimigos para paralisa-los#Depois de alguns segundos, vai atacar todos eles, ganhando bônus de dano por alvo", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Causa 8 peidos venenosos com trilha#Depois gera uma trilha de 7 Butt Bombs#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Causa 8 peidos venenosos com trilha#Depois gera uma trilha de 7 Butt Bombs#Ficar na trilha garante: #↑ {{Tears}} +1.35 Lágrimas#↑ {{Damage}} +1 Dano"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "14 familiares Dead Bird voam e atacam os inimigos#Dura para a sala atual", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Fique furioso por 10 segundos por 10 segundos:#↑ {{Speed}} +0.4 Velocidade#↑ {{Damage}} +3 Dano#Restringe seus ataques a uma arma corpo-a-corpo#Matar enquanto furioso aumenta a sua duração em 1 segundo", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} Ativa Mega Blast por 7.5 segundos", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Ao morrer, reviva instantaneamente com Meio Coração e algum tempo de invencibilidade#Usado automaticamente quando recebe um dano fatal#Como uma vida extra", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Ativa o efeito do D6 {{Collectible105}} e D20 {{Collectible166}} #Os itens trocados vem de salas aleatórias", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} Morra e transforme-se em The Lost para a sala atual#Você pode pegar um item da {{DevilRoom}}Sala do Diabo de graça, o resto desaparecerá#Você pode entrar na porta do Mausoleum ou Gehenna de graça", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Ganhe 1 familiar aleatório", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Gera 15 moscas locust aleatória", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} Gera The Forgotten como um personagem secundário temporário para a sala atual", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} Gera 6 Book of Virtues orbital com propriedades aleatórias", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} Gera Esau como um personagem secundário temporário para a sala atual#Ele é gerado com itens passivos aleatórios iguais a quantos você tem", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Troca o número de bombas com chaves#Bombas e chaves douradas também são trocadas", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "Pixeliza todos os sprites por 30 segundos", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Atrasse todos os inimigos e o personagem na sala", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Acelere todos os inimigos e o personagem na sala#Ativa novamente depois de 30 e 60 segundos", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Efeito de pílula aleatório#Se destroi depois de alguns usos", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Envenamento toda a sala", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Causa 2 Corações de dano a você#Se torna um pílula de cavalo Saúde Cheia (+3 Corações de Alma) se você tem 1 coração ou menos", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Troca o número de bombas pelo número de chaves#Aumenta o número de bombas e chaves em 50%#Bombas douradas e chaves também são trocadas", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Gera algumas mega bombas trolls na sua posição", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "Se torna uma pílula de cavalo Health Up de você tem 0 ou 1 Contêiner de Coração", -- Health Down
	-- Full old Desc: "↓ -2 Saúde#Se torna uma pílula de cavalo Health Up de você tem 0 ou 1 Contêiner de Coração"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Adiciona 1 orbital mosca Big Fan#Não há limite superior", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Recarrega completamente seu item ativo", -- 48 Hour Energy!
	-- Full old Desc: "Recarrega completamente seu item ativo#{{Battery}} Gera 3-4 baterias"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Drena todos os seus Contêineres de Corações exceto um", -- Hematemesis
	-- Full old Desc: "Drena todos os seus Contêineres de Corações exceto um#{{Heart}} Gera 1-4 Corações Vermelhos"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Você não pode se mover por 4 segundos", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Transforma cada inimigo da sala em amigo permanente", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Enche o chão com uma poça que causa dano aos inimigos", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Atire na diagonal por 60 segundo", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Gera um cocô enquanto andar durante 4 segundos", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Efeito do Curse of the maze no andar atual", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Aumenta seu tamanho#Não afeta sua hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "diminui seu tamanho#Sua hitbox também diminui", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Gera 2 Aranhas Azuis por cocô na sala", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Gera 2 Aranhas Azuis por inimigo na sala#Gera 2-6 Aranhas Azuis quando não há inimigos na sala", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Pixeliza a tela por 90 segundos", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Gera uma poça escorregadia", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Gera uma poça de lentidão", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Efeito de lentidão em todos os inimigos da sala", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Aumenta a velocidade de todos os inimigos da sala", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Consome o trinket que estiver segurando e ganha o efeito dele permanentemente", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Dispara um cacho de lágrimas de ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Gera a última pílula usada como horse", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Aumenta 1 status aleatório duas vezes#↓ Diminue 1 status aleatório duas vezes#Não vai diminuir com {{Collectible75}}PHD, {{Collectible46}}Lucky Foot ou {{Collectible303}}Virgo#Não vai aumentar com {{Collectible654}}False PHD", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Efeito de pílula aleatório#Se destroi depois de alguns usos", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
