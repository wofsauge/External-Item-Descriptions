-- This file contains text elements that are used for the modular description system.
-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 8] = "Atira lÃ¡grimas normais (3.5 de dano)", -- Brother Bobby
	-- Full old Desc: "Atira lÃ¡grimas normais (3.5 de dano)"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Todos as moscas inimigas sÃ£o amigÃ¡veis", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Renascer com saÃºde total", -- 1up!
	-- Full old Desc: "â†‘ +1 Vida#Renascer com saÃºde total"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Inimigos podem soltar CoraÃ§Ãµes Negros se envenenados", -- The Virus
	-- Full old Desc: "{{Poison}} Toque venenoso#â†“ {{Speed}} -0.1 Velocidade#{{BlackHeart}} Inimigos podem soltar CoraÃ§Ãµes Negros se envenenados"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Revela os Ã­cones no mapa#NÃ£o mostra o layout do mapa", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Voo para o sala atual#{{MomsHeart}} Mata o PÃ© da MÃ£e e o CoraÃ§Ã£o da MÃ£e instantaneamente#!!! Mata VOCÃŠ quando usado no Satan", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Solte um cocÃ´ e empurre os inimigos#Pode ser colocado prÃ³ximo a um poÃ§o e destruÃ­do com uma bomba para fazer uma ponte", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Dispara 10 lÃ¡grimas em um cÃ­rculo ao redor do personagem", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Congele todos os inimigos na sala atual por 4 segundos", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Causa uma explosÃ£o no local do jogador", -- Kamikaze!
	-- Full old Desc: "Causa uma explosÃ£o no local do jogador#Causa 40 de dano"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "Causa medo a todos os inimigos na sala atual por 5 segundos.", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "{{Poison}} Bomba venenosa arremessÃ¡vel", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleporta o personagem para uma sala aleatÃ³ria", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "Aumenta a chance de ganhar em jogos e em mÃ¡quinas", -- Lucky Foot
	-- Full old Desc: "â†‘ {{Luck}} +1 Sorte#Aumenta a chance de ganhar em jogos e em mÃ¡quinas"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Ao usar, comece a apontar uma mira#Um mÃ­ssil cai na mira apÃ³s 1.5 segundos#Causa 20x o seu dano", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Dispara um laser da boca do personagem", -- Shoop da Whoop!
	-- Full old Desc: "Dispara um laser da boca do personagem"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "â†“ {{Tears}} Atraso de lÃ¡grima x 2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} LÃ¡grimas de bomba#{{Damage}} Cada bomba causa 5x o seu dano + 30#â†“ {{Tears}} Atraso de lÃ¡grima x 2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Atrai pickups magneticamente", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Revela o layout do andar#NÃ£o mostra os Ã­cones das salas", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Derrama uma poÃ§a de limonada#Causa 24 de dano por segundo", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Mosca orbital de mÃ©dia distÃ¢ncia", -- Distant Admiration
	-- Full old Desc: "Mosca orbital de mÃ©dia distÃ¢ncia#Causa 75 de dano ao contato por segundo"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Caminhe por pequenas lacunas", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} Cura Meio CoraÃ§Ã£o a cada 13 inimigos mortos", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Agora, os itens ativos podem ser carregados duas vezes", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} 50% de desconto em itens de loja#Conseguir dois deixarÃ¡ tudo de graÃ§a", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Gera 6 bombas trolls prÃ³ximo ao centro da sala", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Diminua a velocidade dos inimigos por 8 segundos", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Familiar que dispara lÃ¡grimas normais", -- Sister Maggy
	-- Full old Desc: "Familiar que dispara lÃ¡grimas normais#Causa 3.5 de dano por lÃ¡grima"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "LÃ¡grimas agora sÃ£o lasers", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} LÃ¡grimas carregadas#â†‘ {{Damage}} AtÃ© 400% de Dano#â†“ {{Tears}} LÃ¡grimas", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "LVL1: Orbital#LVL2: Orbital que dispara#LVL3: Meat Boy LVL1#LVL4: Meat Boy LVL2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{Heart}} Cura 2 CoraÃ§Ãµes", -- PHD
	-- Full old Desc: "{{Pill}} PÃ­lulas melhores#{{Pill}} Gera uma pÃ­lula ao pegar#{{Pill}} PÃ­lulas identificadas#{{Heart}} Cura 2 CoraÃ§Ãµes#{{DonationMachine}} Mais dinheiro da Blood Donation Machines e {{Collectible135}} IV Bag"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}}Revela as entradas das Salas Secretas", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "â†‘ {{AngelDevilChance}} +17.5% oportunidade de Sala do Diabo/Anjo enquanto segurar", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#Alta chance de Chefes Cavaleiros#â†‘ {{AngelDevilChance}} +17.5% oportunidade de Sala do Diabo/Anjo enquanto segurar"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Renascer com 1 CoraÃ§Ã£o#â†“ Define seus contÃªineres de CoraÃ§Ã£o Vermelho para 1", -- Dead Cat
	-- Full old Desc: "â†‘ +9 Vidas#Renascer com 1 CoraÃ§Ã£o#â†“ Define seus contÃªineres de CoraÃ§Ã£o Vermelho para 1#!!! Personagens que nÃ£o podem ter CoraÃ§Ãµes Vermelhos ficam com 1 CoraÃ§Ã£o de Alma/Negro"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#â†‘ {{Damage}} +0.7 Dano#â†“ {{Speed}} -0.18 Velocidade#Causa 40 de dano ao contato por segundo#DestrÃ³i pedras ao andar sobre elas"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Cria um alÃ§apÃ£o para o prÃ³ximo andar#{{LadderRoom}} 10% de chance de criar um alÃ§apÃ£o com escada", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Invoca o Monstro que cai em um inimigo e causa 120 de dano", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Familiar que avanÃ§a para frente", -- Little Chubby
	-- Full old Desc: "Familiar que avanÃ§a para frente#Causa 52.5 de dano ao contato por segundo"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Revela o tipo de salas adjacentes#{{SecretRoom}} Pode revelar Salas Secretas e Salas Super Secretas", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Curta invencibilidade#{{Fear}} Amedrontra todos os inimigos#Causa 40 de Dano ao contato por segundo#{{HalfHeart}} Dois inimigos comidos reabastecem Meio CoraÃ§Ã£o"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Solta moedas aleatÃ³rias a cada 2 salas", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Familiar que dispara lasers", -- Robo-Baby
	-- Full old Desc: "Familiar que dispara lasers#Causa 3.5 de dano por disparo"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Solta Meio CoraÃ§Ã£o a cada 3 salas", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} LÃ¡grimas que causam lentidÃ£o", -- Little Gish
	-- Full old Desc: "{{Slow}} LÃ¡grimas que causam lentidÃ£o#Causa 3.5 de dano por disparo"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "LÃ¡grimas teleguiadas", -- Little Steven
	-- Full old Desc: "LÃ¡grimas teleguiadas#Causa 3.5 de dano por disparo"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "LÃ¡grimas se dividem em duas ao contato#LÃ¡grimas divididas causam metade do dano", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Troca os itens dos pedestais na sala atual", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Voar#Seu corpo ataca os inimigos com 82 de dano por segundo"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Todo dano recebido Ã© reduzido para Meio CoraÃ§Ã£o", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "â†‘ {{Damage}} +0.04 Dano para cada {{Coin}} moeda que vocÃª tem#â†‘ +3.96 Dano com 99 moedas", -- Money = Power
	-- English: "â†‘ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Peido venenoso#O veneno causa 6 vezes o seu dano", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Acelera todos os orbitais", -- Guardian Angel
	-- Full old Desc: "Orbital#Acelera todos os orbitais#Bloqueia projÃ©teis#Causa 105 de dano ao contato por segundo"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Torreta de disparo automÃ¡tico", -- Demon Baby
	-- Full old Desc: "Torreta de disparo automÃ¡tico#Causa 3 de dano por disparo"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "{{Chargeable}} CarregÃ¡vel#Cencede uma faca controlÃ¡vel#A faca causa 2x seu dano enquanto segurar e 6x quando arremessado a distÃ¢ncia mÃ¡xima", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "-1 carga necessÃ¡ria para itens ativÃ¡veis#{{Battery}} Recarrega completamente seu item ativo", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Gera um pÃ¡ssaro quando vocÃª Ã© atingido", -- Dead Bird
	-- Full old Desc: "Gera um pÃ¡ssaro quando vocÃª Ã© atingido#Causa 4 de dano por segundo"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Quando estiver com meio CoraÃ§Ã£o Vermelho ou menos#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Quando estiver com meio CoraÃ§Ã£o Vermelho ou menos#â†‘ {{Damage}} +1.5 Dano#â†‘ {{Speed}} +0.3 Velocidade"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Concede um familiar aleatÃ³rio para a sala atual", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Efeito aleatÃ³rio de um item ativo", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 Bombas", -- Bobby-Bomb
	-- Full old Desc: "Bombas Teleguiadas#{{Bomb}} +5 Bombas"
	-- English: "Homing bombs"

	[C_ID .. 126] = "â†‘ {{Damage}} +1.2 Dano#â†“ -1 SaÃºde", -- Razor Blade
	-- English: "â†‘ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Troca to o andar", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Mosca orbital", -- Forever Alone
	-- Full old Desc: "Mosca orbital#Far away#Causa 30 de de dano ao contato por segundo"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Concede voo enquanto segura#Arrancada em uma direÃ§Ã£o cruzando a tela (40 de dano ao contato)#{{Speed}} Define sua velocidade para 1.5 se vocÃª tem menos que 1.5", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Solta 1 bomba coletÃ¡vel a cada 2-3 salas", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} LÃ¡grimas causam mais dano quanto mais elas viajam", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! Ao usar converte#1 ContÃªiner de CoraÃ§Ã£o Vermelho em 3 CoraÃ§Ãµes de Alma", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% de chance da recompesa por limpar a sala ser um baÃº#33% de chance de nÃ£o receber nenhuma recompensa ao limpar a sala", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Banco de sangue portÃ¡til#Metade de um CoraÃ§Ã£o = 1-3 Moedas#{{Player14}} 0-1 moeda como Keeper", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Armadilha explosiva#Atrai inimigos", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "{{Bomb}} +5 Bombas", -- Remote Detonator
	-- Full old Desc: "Detonar bombas sob demanda#{{Bomb}} +5 Bombas"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Agora vocÃª pode segurar 2 trinkets", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 Bombas", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Bombas venenosas#{{Bomb}} +5 Bombas"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Uma vez por sala, quando ficar com Meio CoraÃ§Ã£o, vocÃª ganha 1 CoraÃ§Ã£o de Alma", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Coleta moedas do chÃ£o#Gera pickups aleatÃ³rios em troca", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Quebrar todas as pedras na sala atual", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "16% Chance de gerar uma mosca quando lÃ¡grimas atingem um inimigo", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "â†“ {{Damage}} -35% Dano#â†“ {{Tears}} Atraso da LÃ¡grima x 2", -- Technology 2
	-- Full old Desc: "Troca as lÃ¡grimas do seu olho direito por um laser contÃ­nuo#O laser causa 20% do seu dano#â†“ {{Damage}} -35% Dano#â†“ {{Tears}} Atraso da LÃ¡grima x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Familiar que flutua pela sala (8 de dano ao contato)", -- The Peeper
	-- Full old Desc: "Familiar que flutua pela sala (8 de dano ao contato)"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} +1 carga quando vocÃª for atingido", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "!!! Quando vocÃª Ã© atingido#â†‘ {{Damage}} Dano#Dura todo o andar", -- Bloody Lust
	-- English: "â†‘ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Revelar todo o mapa do andar#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Revelar todo o mapa do andar#Solta carta aleatÃ³ria ou CoraÃ§Ã£o de Alma"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Gera 5 raios de luz prÃ³ximos aos inimigos#Causa seu dano + 20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Renasce como ??? (Blue Baby) ao morrer", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Familiar que dispara lÃ¡grimas espectrais", -- Ghost Baby
	-- Full old Desc: "Familiar que dispara lÃ¡grimas espectrais#Causa 3 de dano por disparo"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "LanÃ§a uma chama azul#Causa dano ao contato#Bloqueia lÃ¡grimas de inimigos#Some apÃ³s 2 segundos", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Troca todos os pickup na sala atual", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Familiar que dispara lagrimas em \"V\"", -- Harlequin Baby
	-- Full old Desc: "Familiar que dispara lagrimas em "V"#Causa 4 de dano por disparo"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Em vez de lÃ¡grimas, aponta uma mira#Um mÃ­ssil cai na mira apÃ³s 1,5 segundos#Causa 20 vezes o seu dano", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Pisa nos inimigos", -- Daddy Longlegs
	-- Full old Desc: "Pisa nos inimigos#Causa 40 de dano por segundo"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Retarda os inimigo por 4 segundos", -- Spider Butt
	-- Full old Desc: "Retarda os inimigo por 4 segundos#Causa 10 de dano a todos os inimigos"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Familiar que dispara lÃ¡grimas de tipo aleatÃ³ria", -- Rainbow Baby
	-- Full old Desc: "Familiar que dispara lÃ¡grimas de tipo aleatÃ³ria#Causa 3-5 de dano por disparo"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Abre todas as portas na sala, incluindo {{SecretRoom}}{{SuperSecretRoom}}Salas Secretas, {{ChallengeRoom}}{{BossRushRoom}}Salas de Desafio, e a porta do Mega Satan", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "CaÃ§a niquel portÃ¡tio", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Deixa uma poÃ§a quando vocÃª Ã© atingido#Causa 24 de dano por segundo", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Peida quando atingido", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Concede Voo#{{Speed}} Define sua velocidade para 1.5 se vocÃª tem menos que 1.5#Holy Dash ao usar", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Bola de pelo em crescimento#BalanÃ§a ao seu redor#Cresce ao matar um inimigo#Bola maior causa mais dano", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Espelha seu movimento#Atira em direÃ§Ã£o ao jogador", -- Abel
	-- Full old Desc: "Espelha seu movimento#Atira em direÃ§Ã£o ao jogador#Causa 3.5 de dano por disparo"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Efeito de lÃ¡grima aleatÃ³rio a cada 2-3 segundos", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Cria 1 pickup de cada tipo", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Mais itens de baÃºs", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 chaves#Mais itens de baÃºs"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Transforma inimigos em ouro ao tocar#Causa dano ao contato baseado na quantidade de moedas que vocÃª tem#{{Coin}} Inimigos dourados soltam moedas#Alta chance de efeitos que geram CocÃ´s gerarem CocÃ´s Dourados", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Duplica todos os pickups", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% de chance de soltar um pickup aleatÃ³rio quando for atingido", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Ao usar, recarrega completamente seu item ativo ao custo de 2 CoraÃ§Ãµes#!!! SÃ³ funciona quando o item nÃ£o tem cargas!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Orbital#LVL2: Orbital que dispara#LVL3: Bandage Girl LVL1#LVL4: Bandage Girl LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "â†‘ {{Damage}} +1 Dano", -- Champion Belt
	-- Full old Desc: "+15% de chance de Inimigos CampeÃµes aparecerem#â†‘ {{Damage}} +1 Dano"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} ExplosÃµes confundem e danificam todos os inimigos na sala", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombs#{{Confusion}} ExplosÃµes confundem e danificam todos os inimigos na sala"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "InvencÃ­vel ao ficar parado por 1 segundo", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% de chance de reviver com Meio CoraÃ§Ã£o apÃ³s morrer", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "LÃ¡grimas bloqueiam projÃ©teis inimigos", -- Lost Contact
	-- Full old Desc: "LÃ¡grimas que protejem#LÃ¡grimas bloqueiam projÃ©teis inimigos#â†“ {{Shotspeed}} -0.15 Velocidade de Disparo"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Deixa em rastro que causa dano apÃ³s receber dano", -- Anemic
	-- Full old Desc: "â†‘ {{Range}} +5 Alcance#Deixa em rastro que causa dano apÃ³s receber dano"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HalfHeart}} chance de curar Meio CoraÃ§Ã£o a cada minuto", -- Placenta
	-- Full old Desc: "â†‘ {{Heart}} +1 SaÃºde#{{HalfHeart}} chance de curar Meio CoraÃ§Ã£o a cada minuto"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "{{Bomb}} +5 Bombas", -- Sad Bombs
	-- Full old Desc: "ExplosÃµes de bombas tambÃ©m disparam 10 lÃ¡grimas em um cÃ­rculo#{{Bomb}} +5 Bombas"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "LÃ¡grimas ricocheteiam nas paredes, inimigos e objetos", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Ao soltar, todas elas dispararÃ£o na direÃ§Ã£o que foram disparadas#â†‘ {{Tears}} -2 Atraso da LÃ¡grima", -- Anti-Gravity
	-- Full old Desc: "Segurar o botÃ£o de disparo faz com que as lÃ¡grimas fiquem paradas no ar#Ao soltar, todas elas dispararÃ£o na direÃ§Ã£o que foram disparadas#â†‘ {{Tears}} -2 Atraso da LÃ¡grima"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 Bombas", -- Pyromaniac
	-- Full old Desc: "ExplosÃµes curam o personagem#{{Bomb}} +5 Bombas"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "â†“ {{Range}} -10.0 Alcance", -- Cricket's Body
	-- Full old Desc: "LÃ¡grimas divididas em 4 ao acertar#LÃ¡grimas divididas cusam metade do dano#â†‘ {{Tears}} +1 LÃ¡grimas#â†“ {{Range}} -10.0 Alcance"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Chance de soltar um CoraÃ§Ã£o de Alma ao ser atingido#{{HalfHeart}} Inimigos tem a chance de soltar Meio CoraÃ§Ã£o ao morrerem", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Gera uma moeda ao ser atingido", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Moedas#Gera uma moeda ao ser atingido#{{Player14}} 0-1 moeda como Keeper"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "â†‘ {{Tears}} +1 LÃ¡grimas", -- Mom's Perfume
	-- Full old Desc: "{{Fear}} 15% de cahnce de disparar lagrimas de medo#â†‘ {{Tears}} +1 LÃ¡grimas"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "â†“ {{Tears}} 4.3x Atraso da LÃ¡grima", -- Monstro's Lung
	-- Full old Desc: "{{Chargeable}} As lÃ¡grimas agora podem ser carregadas e disparadas com maior forÃ§a#â†“ {{Tears}} 4.3x Atraso da LÃ¡grima"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{BlackHeart}} +6 CoraÃ§Ãµes Negros", -- Abaddon
	-- Full old Desc: "â†‘ {{Damage}} +1.5 Dano#â†‘ {{Speed}} +0.2 Velocidade#{{Fear}} LÃ¡grimas que amedrontam inimigos#â†“ {{EmptyHeart}} Remove todos os EspÃ§oes de CoraÃ§Ãµes#{{BlackHeart}} +6 CoraÃ§Ãµes Negros"
	-- English: "â†“ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Luck}} 100% de chance com 18 de Sorte", -- Ball of Tar
	-- Full old Desc: "Deixe um rastro de lentidÃ£o#{{Slow}} 10% de chance de lÃ¡grimas lentas#{{Luck}} 100% de chance com 18 de Sorte"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "â†‘ {{Speed}} +0.3 Velocidade", -- Stop Watch
	-- Full old Desc: "{{Slow}} Ao ser atingido, desacelera todos os inimigos na sala permanentemente#â†‘ {{Speed}} +0.3 Velocidade"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "â†‘ {{Range}} Alcance", -- Tiny Planet
	-- Full old Desc: "LÃ¡grimas orbitam em torno do personagem#â†‘ +7 Altura da LÃ¡grima#â†‘ {{Range}} Alcance#LÃ¡grimas espectrais"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Gera aranhas quando vocÃª mata um inimigo", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Ao ser atingido, transforme o inimigo em cocÃ´", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Duplica todas as recompensas ao limpar a sala#33% de chance de nÃ£o receber recompensa por limpar a sala#{{GreedMode}} NÃ£o afeta o Modo Greed", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% de chance de bloquear lÃ¡grimas", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Escudo que bloqueia projÃ©teis", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Ocasionalmente, dispare lasers alÃ©m de suas lÃ¡grimas", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Duplica todos os seus disparos", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Revela Salas Secretas", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Seus familiares causam o dobro de dano", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Aranhas e Moscas Azuis causam o dobro do dano", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "2 itens de Boss aparecem em vez de 1#!!! Apenas um pode ser pego", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Todos os drops de bombas se tornam bombas duplas", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "{{Card}} Transforma todas as pÃ­lulas em cartas#{{Card}} Solta uma carta ao pegar", -- Starter Deck
	-- Full old Desc: "{{Card}} VocÃª pode carregar 2 cartas#{{Card}} Transforma todas as pÃ­lulas em cartas#{{Card}} Solta uma carta ao pegar"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "{{Pill}} Transforma todas as cartas em pÃ­lulas#{{Pill}} Solta uma pÃ­lula ao pegar", -- Little Baggy
	-- Full old Desc: "{{Pill}} VocÃª pode carregar 2 pÃ­lulas#{{Pill}} Transforma todas as cartas em pÃ­lulas#{{Pill}} Solta uma pÃ­lula ao pegar"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Bomb}} +5 Bombas", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Efeito de fogo em bombas#{{Bomb}} +5 Bombas"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "!!! A explosÃ£o pode te machucar!", -- Fire Mind
	-- Full old Desc: "{{Burning}} LÃ¡grimas flamejantes#Chance de lÃ¡grimas explodirem#{{Luck}} 100% de chance com 13 de Sorte#!!! A explosÃ£o pode te machucar!"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Troca todos os seus itens e status ao pegar e toda vez que vocÃª troca de andar", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseCursed}} Imunidade a maldiÃ§Ãµes", -- Black Candle
	-- Full old Desc: "{{CurseCursed}} Imunidade a maldiÃ§Ãµes#{{BlackHeart}} +1 CoraÃ§Ã£o Negro#{{DevilChanceAB}} / {{AngelChanceAB}} +15% chance de Sala do Diabo/Anjo"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "â†“ {{Damage}} LÃ¡grimas causam menos dano Ã  medida que viajam", -- Proptosis
	-- Full old Desc: "â†‘ {{Damage}} +100% Dano#â†“ {{Damage}} LÃ¡grimas causam menos dano Ã  medida que viajam"
	-- English: "â†“ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Quando ficar com 1 CoraÃ§Ã£o, causa dano a todos os inimigos na sala", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 CoraÃ§Ã£o Negro#Quando ficar com 1 CoraÃ§Ã£o, causa dano a todos os inimigos na sala"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Quando vocÃª for atingido ele atacarÃ¡ os inimigos", -- Smart Fly
	-- Full old Desc: "Orbital#Quando vocÃª for atingido ele atacarÃ¡ os inimigos#Causa 22.5 de dano por segundo"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Quando ele for atingido por lÃ¡grimas inimigas, tem 10% de chance de causar dano em todos os inimigos na sala", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Deixa um rastro de lentidÃ£o#Gera 1-2 aranhas amigÃ¡veis apÃ³s limpar uma sala", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Atira lasers#Move em direÃ§Ã£o aos seus disparos", -- Robo-Baby 2.0
	-- Full old Desc: "Atira lasers#Causa 3.5 de dano por disparo#Move em direÃ§Ã£o aos seus disparos"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Familiar que gera moscas azuis quando o player estÃ¡ disparando", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Deixa um rastro que causa 6 de dano por segundo", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "{{HalfHeart}} Cura Meio CoraÃ§Ã£o quando mata um inimigo#Causa 3.2 de dano por segundo", -- Leech
	-- Full old Desc: "{{HalfHeart}} Cura Meio CoraÃ§Ã£o quando mata um inimigo#Causa 3.2 de dano por segundo"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Solta pickups aleatÃ³rios a cada poucas salas", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Mosca amigÃ¡vel explosiva", -- BBF
	-- Full old Desc: "Mosca amigÃ¡vel explosiva#A explosÃ£o causa 60 de dano"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Familiar bomba arremessÃ¡vel#A explosÃ£o causa 60 de dano", -- Bob's Brain
	-- Full old Desc: "Familiar bomba arremessÃ¡vel#A explosÃ£o causa 60 de dano"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Quando vocÃª for atingido, ganha um orbital de mÃ©dio alcance para a sala", -- Best Bud
	-- Full old Desc: "Quando vocÃª for atingido, ganha um orbital de mÃ©dio alcance para a sala#Orbital causa 75 de dano por segundo"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} Familiar que carrega para disparar um laser brimstone", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} Familiar que carrega para disparar um laser brimstone#O disparo causa 31.5 dano por segundo"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Ganhe invulnerabilidade#!!! Quando o familiar coraÃ§Ã£o Ã© atingido, vocÃª sofre dano", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Familiar fantasma amigÃ¡vel", -- Lil Haunt
	-- Full old Desc: "Familiar fantasma amigÃ¡vel#Causa 4 de dano por segundo"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Coleta CoraÃ§Ãµes Vermelhos do chÃ£o#A cada 1.5 CoraÃ§Ãµes, gera um CoraÃ§Ã£o de Alma/Negro ou uma aranha", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Orbital grande e gordo", -- Big Fan
	-- Full old Desc: "Orbital grande e gordo#Causa 30 de dano por segundo"
	-- English: "Large orbital"

	[C_ID .. 280] = "Gera aranhas azuis aleatÃ³riamente ao entrar em uma sala hostÃ­l", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Familiar isca#Os inimigos o atacarÃ£o", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Permite pular", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Troca todos os pickups, itens e itens de pedestais na sala", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Troca todos os itens passivos que vocÃª estiver segurando", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Troca todos os inimigos na sala", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Imita o efeito da carta que vocÃª estiver segurando", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "LanÃ§a uma chama vermelha#A chama persiste atÃ© causar dano ou bloquear disparos 5 vezes", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Armazena atÃ© 4 pickups de CoraÃ§Ãµes Vermelhos para uso futuro", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Transforma todos os inimigos nÃ£o chefes em cocÃ´#Mata instÃ¢ntaneamente inimigos e chefes cocÃ´s", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Atira laser brimstone nas 4 direÃ§Ãµes", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Atira laser brimstone nas 4 direÃ§Ãµes"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Afasta inimigos e projÃ©teis prÃ³ximos", -- Butter Bean
	-- Full old Desc: "Afasta inimigos e projÃ©teis prÃ³ximos#10% de chance de se tornar o mais forte {{Collectible484}}Wait What? Ao trocÃ¡-lo por um item ativo diferente e pegÃ¡-lo novamente"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Causa dano em toda a sala com 2x o seu dano#{{Coin}} PreÃ§o: 1 moeda", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Converte 2 CoraÃ§Ãµes de Alma/Negro em 1 ContÃªiner de CoraÃ§Ã£o Vermelho", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "â†‘ {{Speed}} Ganhe velocidade lentamente enquanto estiver em salas hostis#{{Collectible77}} Com 2 de velocidade, ganha invencibilidade e causa dano ao contato#Depois, perca o aumento de velocidade do Taurus para a sala", -- Taurus
	-- Full old Desc: "â†“ {{Speed}} -0.3 Velocidade#â†‘ {{Speed}} Ganhe velocidade lentamente enquanto estiver em salas hostis#{{Collectible77}} Com 2 de velocidade, ganha invencibilidade e causa dano ao contato#Depois, perca o aumento de velocidade do Taurus para a sala"
	-- English: "â†‘ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Inflinge dano aos inimigos ao toca-los", -- Aries
	-- Full old Desc: "â†‘ {{Speed}} +0.25 Velocidade#Inflinge dano aos inimigos ao toca-los"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Depois de ser atingido, ganhe reduÃ§Ã£o de dano (-50% do dano recebido)", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 CoraÃ§Ãµes de Alma#Depois de ser atingido, ganhe reduÃ§Ã£o de dano (-50% do dano recebido)"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Aumenta seu tamanho", -- Leo
	-- Full old Desc: "Quebra pedras ao andar sobre elas#Aumenta seu tamanho"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Chance de obter invencibilidade ao ser atingido#{{Pill}} Converte pÃ­lulas negativas em positivas", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Equilibra suas estatÃ­sticas#!!! Todas as estatÃ­sticas posteriores tambÃ©m serÃ£o afetadas", -- Libra
	-- Full old Desc: "+6 {{Coin}} Moedas, {{Bomb}} Bombas, {{Key}} Chaves#Equilibra suas estatÃ­sticas#!!! Todas as estatÃ­sticas posteriores tambÃ©m serÃ£o afetadas"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Deixa um rastro azul#O rastro causa 6 de dano por segundo", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "{{Player12}} Quando morto, renasce como Judas Negro#{{Damage}} Ele tem 2x Multiplicador de Dano", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Agora todos os CoraÃ§Ãµes Vermelhos curam o dobro do seu valor", -- Maggy's Bow
	-- Full old Desc: "â†‘ {{Heart}} +1 SaÃºde#{{Heart}} Cura um CoraÃ§Ã£o Vermelho#Agora todos os CoraÃ§Ãµes Vermelhos curam o dobro do seu valor"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Ignore o primeiro dano em todas as salas", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Quebra pedras ao andar sobre elas", -- Thunder Thighs
	-- Full old Desc: "â†‘ {{Heart}} +1 SaÃºde#â†“ {{Speed}} -0.4 Velocidade#Quebra pedras ao andar sobre elas"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "LÃ¡grimas magnÃ©ticas#Afeta inimigos, pickups e trinkets", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "!!! Quando atingido enquanto estiver parcialmente carregado, teleporta vocÃª para uma sala aleatÃ³ria", -- Cursed Eye
	-- Full old Desc: "Onda carregada de lÃ¡grimas#!!! Quando atingido enquanto estiver parcialmente carregado, teleporta vocÃª para uma sala aleatÃ³ria#{{Collectible260}} NÃ£o te teleporta se vocÃª tem a Black Candle"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "LÃ¡grimas deixam rastro tÃ³xico#O rastro causa 30 de dano por segundo", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Familiar corpo a corpo", -- Gemini
	-- Full old Desc: "Familiar corpo a corpo#Causa 6 de dano ao contato por segundo"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Salta pela sala#Atira em direÃ§Ã£o ao personagem#{{Damage}} O dano dele Ã© igual ao seu dano", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Familiar controlÃ¡vel", -- ???'s Only Friend
	-- Full old Desc: "Familiar controlÃ¡vel#Causa 5 de dano ao contato por segundo"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Bola arremessÃ¡vel que pode destruir pedras", -- Samson's Chains
	-- Full old Desc: "Bola arremessÃ¡vel que pode destruir pedras#Causa 10.7 de dano ao contato por segundo"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Copia o efeito de um de seus familiares#Causa o dobro do seu dano", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Quando usado, dispara 8 lÃ¡grimas em todas as direÃ§Ãµes#Recarrega ao disparar", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleporta vocÃª para#{{TreasureRoom}} Sala do Tesouro, {{SecretRoom}} Sala Secreta, {{SuperSecretRoom}} Sala Super Secreta ou a Sala {{ErrorRoom}} I AM ERROR", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Corta sua cabeÃ§a#A cabeÃ§a se torna um familiar estacionÃ¡rio#Controle seu corpo separadamente", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Invencibilidade enquanto estiver ativando#!!! Qaundo nÃ£o estiver com carga, vocÃª levarÃ¡ dano", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Invencibilidade ao ser atingido e estiver com Meio CoraÃ§Ã£o Vermelho ou nenhum", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Causa dano a todos os inimigos da sala ao ser atingido e estiver com Meio CoraÃ§Ã£o Vermelho ou nenhum", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Em vez de disparar lÃ¡grimas vocÃª controla uma lÃ¡grima gigante", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "â†‘ {{Tearsize}} 50% Tamanho da LÃ¡grima", -- Godhead
	-- Full old Desc: "LÃ¡grimas teleguiada#LÃ¡grimas ganham uma aura que causa dano aos inimigos#â†‘ {{Damage}} +0.5 Dano#â†‘ {{Range}} +1.2 Alcance#â†“ {{Tears}} -0.3 LÃ¡grimas#â†“ {{Shotspeed}} -0.3 Velocidade de Disparo#â†‘ {{Tearsize}} 50% Tamanho da LÃ¡grima#â†‘ +0.5 Altura da LÃ¡grima"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Ao morrer renasce como LÃ¡zaro (Revivido)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Revela todo o mapa do andar", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Concede um aura que desvia projÃ©teis e inimigos", -- The Soul
	-- Full old Desc: " {{SoulHeart}}+2 CoraÃ§Ãµes de Alma#Concede um aura que desvia projÃ©teis e inimigos"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Retarda ou acelera os inimigos a cada 4 salas", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Boomerang arremessÃ¡vel#Atordoa os inimigos e causa 2x seu dano#Pode pegar itens", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplica todos os itens de pedestal e consumÃ­veis na sala atual", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Copia o efeito da pÃ­lula que vocÃª estÃ¡ segurando no momento", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} No inÃ­cio de cada sala, todo inimigo recebe um efeito de veneno#Inimigos mortos deixam uma poÃ§a", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Congele todos os inimigos na sala atual#Causa 5 de dano de envenenamento a qualquer inimigo prÃ³ximo#Envia uma onda de espinhos pela sala#Pode ser usado para abrir Salas Secretas", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "!!! Reduz a sua saÃºde para Meio CoraÃ§Ã£o#Dispara uma grande lÃ¡grima espectral penetrante ((seu dano + 1) x 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bombas agora explodem em forma de cruz", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bombas#Bombas agora explodem em forma de cruz"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Faz com que o seu item ativo seja ativado duas vezes quando usado", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Duplique seus familiares para a sala atual#Se vocÃª nÃ£o tem nenhum familiar, {{Collectible113}} Demon Baby serÃ¡ gerado para a sala atual", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "LÃ¡grimas espectrais", -- The Wiz
	-- Full old Desc: "Dispare 2 lÃ¡grimas de uma vez na diagonal#LÃ¡grimas espectrais"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Aumenta o recuo", -- 8 Inch Nails
	-- Full old Desc: "â†‘ {{Damage}} +1.5 Dano#Aumenta o recuo"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Dispara lÃ¡grimas com mesmo dano, status e efeitos que as suas", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Familiar que dispara lÃ¡grimas com o seu dano e efeitos de lÃ¡grima", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Solta um pickup aleatÃ³rio em algumas salas", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Bloqueia e atrai projÃ©teis#Bloquear 10 lÃ¡grimas em uma sala solta um CoraÃ§Ã£o Eterno", -- Sworn Protector
	-- Full old Desc: "Familiar orbital#Causa 105 de dano ao contato por segundo#Bloqueia e atrai projÃ©teis#Bloquear 10 lÃ¡grimas em uma sala solta um CoraÃ§Ã£o Eterno"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Familiar orbital", -- Friend Zone
	-- Full old Desc: "Familiar orbital#Causa 45 de dano de contato por segundo"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Move-se pelas paredes e obstÃ¡culos na sala", -- Lost Fly
	-- Full old Desc: "Move-se pelas paredes e obstÃ¡culos na sala#Causa 105 de dano ao contato por segundo"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Quando uma bomba mata um inimigo gera aranhas azuis#Faz com que suas bombas grudem nos inimigos", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombas#Quando uma bomba mata um inimigo gera aranhas azuis#Faz com que suas bombas grudem nos inimigos"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Atirar em uma direÃ§Ã£o aumenta sua Taxa de Disparo em atÃ© 200%", -- Epiphora
	-- English: "â†‘ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Suas lÃ¡grimas viajam atravÃ©s das paredes e reaparecem na parede oposta", -- Continuum
	-- Full old Desc: "â†‘ {{Range}} +2.25 Alcance#â†‘ +1.5 Altura da LÃ¡grima#LÃ¡grimas espectrais#Suas lÃ¡grimas viajam atravÃ©s das paredes e reaparecem na parede oposta"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "Gera 6 bombas trolls sempre que vocÃª for atingido#Ã‰ afetado por itens de bombas", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "A cada 30 segundos em que estiver em uma sala nÃ£o limpa, concede um efeito aleatÃ³rio:#Adiciona uma carga ao seu item ativo (max. de 2 por sala)#Congela todos os inimigos na sala", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "â†‘ {{Damage}} +12.5% Dano ou +25% para cada lÃ¡grima que atinge com sucesso um inimigo(max. +100%)", -- Dead Eye
	-- English: "â†‘ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "Concede imunidade a explosÃ£o e imunidade a pisÃµes da MÃ£e e Satan#20% de chance de bloquear lÃ¡grimas", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 377] = "As aranhas sÃ£o inofensivas", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Disparar lÃ¡grimas por 3 segundos solta um Butt Bomb", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "VocÃª pode abrir portas com moedas ao invÃ©s de chaves", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Moedas#VocÃª pode abrir portas com moedas ao invÃ©s de chaves"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Fornece um item aleatÃ³rio no inÃ­cio de sua prÃ³xima \"run\"", -- Eden's Blessing
	-- Full old Desc: "â†‘ {{Tears}} +0.7 LÃ¡grimas#Fornece um item aleatÃ³rio no inÃ­cio de sua prÃ³xima "run""
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Pode ser jogado em inimigos para capturÃ¡-los#No prÃ³ximo uso, o inimigo capturado reaparecerÃ¡ como companheiro", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Detone qualquer lÃ¡grima na tela e faz com que cada uma se divida em mais 6 lÃ¡grimas que sairÃ£o em cÃ­rculo", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Se lanÃ§a e desliza ao redor da sala com velocidade baseada na quantidade de cargas#Causa 5-90 de dano ao contato por segundo dependendo da velocidade", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Pega todas as moedas prÃ³ximas#A cada 6 moedas ele sobe de nÃ­vel, exceto o nÃ­vel 4, que leva 12 moedas#LVL1: Apenas pega moedas#LVL2: Solta pickups aleatÃ³rios#LVL3: Atira lÃ¡grimas#LVL4: NÃ£o irÃ¡ dispara lÃ¡grimas. Ele irÃ¡ perseguir o inimigo e causar dano ao contato. Chance de gerar bombas", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Troca quanquer objeto de cenÃ¡rio em outro tipo de objeto aleatÃ³rio (ex. cocÃ´s, potes, TNT, cocÃ´s vermelhos, blocos de pedra, etc.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Cria uma enorme aura de luz que retarda os inimigos e projÃ©teis dentro dela", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Converte chaves em baÃºs aleatÃ³rios", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Solta uma runa aleatÃ³ria a cada 5-6 salas", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Atira lÃ¡grimas Sacred Heart", -- Seraphim
	-- Full old Desc: "Atira lÃ¡grimas Sacred Heart#Causa 10 de dano por disparo"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Toda vez que o personagem sofre dano, causa um efeito de charme em todos os inimigos na sala", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "DarÃ¡ a vocÃª um efeito aleatÃ³rio de item zodÃ­aco a cada andar", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% de chance de disparar lÃ¡grimas que envenenam#{{Poison}} Cause dano por veneno ao contato#{{BlackHeart}} Inimigos envenenados tÃªm chance de soltar um CoraÃ§Ã£o Negro ao morrerem", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "â†‘ +0.3 Altura da LÃ¡grima", -- Marked
	-- Full old Desc: "Atira lÃ¡grimas direcionadas automaticamente a um alvo vermelho no chÃ£o controlado pelo jogador#â†‘ {{Tears}} +0.7 LÃ¡grimas#â†‘ {{Range}} +3.15 Alcance#â†‘ +0.3 Altura da LÃ¡grima"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Troca lÃ¡grimas por um laser carregÃ¡vel em forma de anel que atravessa a sala#O anel tem tamanho maior com cargas maiores", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Cria atÃ© dois portais para viajar entre eles#Pode ser colocado em salas diferentes", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "â†‘ +0.5 Altura da LÃ¡grima", -- Tractor Beam
	-- Full old Desc: "Agora, suas lÃ¡grimas viajam diretamente para a frente do local onde vocÃª estÃ¡ olhando mesmo que vocÃª se mova ou se vire#â†‘ {{Tears}} +0.5 LÃ¡grimas#â†‘ {{Range}} +5.25 Alcance#â†‘ {{Shotspeed}} +0.16 Velocidade de Disparo#â†‘ +0.5 Altura da LÃ¡grima"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "LÃ¡grimas podem encolher inimigos#Inimigos encolhidos podem ser mortos ao andar sobre eles", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} Inimigos mortos pelo anel preto tÃªm chance de derrubar CoraÃ§Ãµes Negros", -- Maw of the Void
	-- Full old Desc: "â†‘ {{Damage}} +1 Dano#â†‘ +0.5 Altura da LÃ¡grima#{{Chargeable}} Depois de disparar lÃ¡grimas por 3 segundos, cria um anel preto danificando os inimigos dentro dele#{{BlackHeart}} Inimigos mortos pelo anel preto tÃªm chance de derrubar CoraÃ§Ãµes Negros"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Cria uma lanÃ§a na sua frente#Causa 2 vezes o seu dano#Chance de amedrontar inimigos ao contato", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% de chance de disparar lÃ¡grimas de bombas pegajosas#Bombas pegajosas nÃ£o causam dano ao atingir", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Agora, itens de pedestais serÃ£o escolhidos aleatÃ³riamente", -- Chaos
	-- Full old Desc: "Agora, itens de pedestais serÃ£o escolhidos aleatÃ³riamente#Gera 1-6 pickups aleatÃ³rios"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Permite que vocÃª veja seu dano de lÃ¡grima e as barras de saÃºde de todos os inimigos#Inflige um efeito de status aleatÃ³rio no contato#Solta baterias aleatoriamente", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Ao ser atingido tem 10% de chance de peidar, o que irÃ¡, encantar, envenenar ou empurrar inimigos", -- Farting Baby
	-- Full old Desc: "Familiar que bloqueia projÃ©teis#Ao ser atingido tem 10% de chance de peidar, o que irÃ¡, encantar, envenenar ou empurrar inimigos"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Salta pela sala", -- GB Bug
	-- Full old Desc: "Salta pela sala#Causa 120 de dano por segundo e aplica um efeito de status aleatÃ³rio"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Troca suas estatÃ­sticas#AfetarÃ¡ apenas estatÃ­sticas de dano: LÃ¡grimas, Alcance e Velocidade", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "â†‘ Aumente uma das estatÃ­sticas do personagem, dependendo da cor da aura ao seu redor#Quando sofrer dano, vocÃª perderÃ¡ a aura nesta sala e receberÃ¡ uma nova na prÃ³xima sala#Vermelha = +4 {{Damage}} Dano#Azul = -4 {{Tears}} Atraso da lÃ¡grima#Amarelo = +0.5 {{Speed}} Velocidade#Laranja = +7.5 {{Range}} Alcance", -- Purity
	-- English: "â†‘ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = â†‘ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = â†‘ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = â†‘ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = â†‘ {{Range}} +7.5 Range, â†‘ +1 Tear height"

	[C_ID .. 408] = "Quando vocÃª recebe dano, um anel preto aparecerÃ¡ ao redor do personagem, causando dano ao contato##{{BlackHeart}} Inimigos mortos com ele tÃªm a chance de derrubar um CoraÃ§Ã£o Negro", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Quando o personagem nÃ£o tem CoraÃ§Ãµes Vermelhos:#Recebe Voo#A cada 40 segundos em uma sala hostÃ­l recebe um escudo por 10 segundos", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 CoraÃ§Ãµes Negro#Quando o personagem nÃ£o tem CoraÃ§Ãµes Vermelhos:#Recebe Voo#A cada 40 segundos em uma sala hostÃ­l recebe um escudo por 10 segundos"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "â†‘ {{Damage}} +0.5 Dano para cada inimigo morto na sala atual# MÃ¡ximo de +5 de Dano apÃ³s 10 mortes", -- Lusty Blood
	-- English: "â†‘ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Depois de sofrer dano 15 vezes, o personagem ganha um familiar demÃ´nio permanente#MÃ¡ximo de 4 familiares", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Depois de pegar 15 CoraÃ§Ãµes, o personagem ganha um familiar angelical permanente#MÃ¡ximo de 5 familiares", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} 2 itens surgem em cada Sala do Tesouro#VocÃª pode pegar somente um", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Se vocÃª nÃ£o tem nenhum ContÃªiner de CoraÃ§Ã£o Vermelho danificado:#{VAR:EFFECTLIST}#Desativa para a sala atual quando receber um dano completo", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 CoraÃ§Ã£o de Alma#Se vocÃª nÃ£o tem nenhum ContÃªiner de CoraÃ§Ã£o Vermelho danificado:#â†‘ {{Damage}} +100% Dano#â†‘ {{Range}} +5.25 Alcance#â†‘ +0.5 Tamanho da LÃ¡grima#â†“ {{Shotspeed}} -0.3 Velocidade de Disparo#Desativa para a sala atual quando receber um dano completo"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Permite carregar 2 cartas, pÃ­lulas ou runas", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Salta ao redor da sala com uma aura que causa 129% do seu dano a cada segundo#â†‘ {{Damage}} +50% dano enquanto estiver na aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#â†‘ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "DÃ¡ a vocÃª um efeito de lÃ¡grima diferente a cada lÃ¡grima que vocÃª disparar", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleporta vocÃª para outra sala aleatÃ³ria que ainda nÃ£o foi limpa", -- Teleport 2.0
	-- Full old Desc: "Teleporta vocÃª para outra sala aleatÃ³ria que ainda nÃ£o foi limpa#Hierarquia: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Andar em cÃ­rculo gerarÃ¡ um sÃ­mbolo de pentagrama no chÃ£o (10 de dano ao contato)", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Encanta quaisquer inimigos prÃ³ximos e causa 5 de dano a eles", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Qualquer dano sofrido ou consumÃ­veis usados na sala atual serÃ£o redefinidos para o estado anterior", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Grande aurÃ©ola ao seu redor que causa seu dano ao contato a cada segundo#Chance de refletir projÃ©teis inimigos", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickups tem 33% de chance de serem substituÃ­dos por um saco#Gera um saco", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Gera um cone de luz na sua frente que retarda inimigos e projÃ©teis dentro dele", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Gera um barril TNT empurrÃ¡vel#Se usado uma segunda vez na mesma sala enquanto o Ãºltimo barril de TNT ainda estiver lÃ¡, ele explodirÃ¡", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Inimigos tem 5% de chance de soltar uma moeda ao serem atingidos por suas lÃ¡grimas", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Dispara lÃ¡grimas em inimigos prÃ³ximos que causam dano igual ao seu", -- Papa Fly
	-- Full old Desc: "Segue seu padrÃ£o de movimento com atraso de 1 segundos#Dispara lÃ¡grimas em inimigos prÃ³ximos que causam dano igual ao seu"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "As lÃ¡grimas do personagem que passam pelo bebÃª, se dividem e aceleram", -- Multidimensional Baby
	-- Full old Desc: "Segue seu padrÃ£o de movimento com atraso de 2 segundos#As lÃ¡grimas do personagem que passam pelo bebÃª, se dividem e aceleram"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Bombas tem a chance de soltarem pickups aleatÃ³rios ou encantar inimigos quando explodem", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 bombas#Bombas tem a chance de soltarem pickups aleatÃ³rios ou encantar inimigos quando explodem"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Toda vez que vocÃª sofrer dano, causarÃ¡ medo a todos os inimigos na sala e gerarÃ¡ um familiar que atacarÃ¡ por vocÃª.", -- My Shadow
	-- Full old Desc: "Toda vez que vocÃª sofrer dano, causarÃ¡ medo a todos os inimigos na sala e gerarÃ¡ um familiar que atacarÃ¡ por vocÃª.#Ele serÃ¡ morto se estiver muito danificado"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Toda vez que vocÃª mata um inimigo, uma mosca azul Ã© adicionada ao pote#Guarda atÃ© 20 moscas#Usar o item libera todas as moscas", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Dispara 4 lÃ¡grimas em um padrÃ£o cruzado", -- Lil Loki
	-- Full old Desc: "Dispara 4 lÃ¡grimas em um padrÃ£o cruzado#Causa 3.5 de dano por disparo"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Ao sofrer dano vocÃª ganha um aumento de LÃ¡grimas para o resto da sala", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Faz ressurgir todos os inimigos da sala#Permite vocÃª ganhar as recompensas da sala quando ela for limpa novamente#!!! Se usado em uma luta do Greed, ele pode trocar os itens da Loja", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "â†‘ +2 Altura da LÃ¡grima", -- Kidney Stone
	-- Full old Desc: "As vezes, vocÃª para de disparar e tem que carregar um ataque que libera uma explosÃ£o de lÃ¡grimas e pedras nos rins#â†“ {{Speed}} -0.2 Velocidade#â†“ {{Range}} -17 Alcance#â†‘ +2 Altura da LÃ¡grima"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Atira um enorme laser Mega Satan por 15 segundos#O laser persiste entre salas e andares", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! Enquanto estiver com 1 CoraÃ§Ã£o Vermelho:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! Enquanto estiver com 1 CoraÃ§Ã£o Vermelho:#â†‘ {{Range}} +1.5 Alcance#â†‘ {{Tears}} +0.75 LÃ¡grimas#â†‘ {{Shotspeed}} +0.2 Velocidade de Disparo#!!! NÃ£o funciona com personagens sem CoraÃ§Ãµes Vermelhos"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "A cada 15 lÃ¡grimas disparadas, vocÃª dispara um conjunto de lÃ¡grimas#Cada lÃ¡grima no conjunto causa dano duplo", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Um som de latido tocarÃ¡ ao entrar em uma sala com um alÃ§apÃ£o embaixo de uma pedra", -- Dog Tooth
	-- Full old Desc: "â†‘ {{Damage}} +0.3 Dano#â†‘ {{Speed}} +0.1 Velocidade#{{SecretRoom}} Um lobo uiva se vocÃª entrar em uma sala ao lado de uma Sala Secreta/Super Secreta#{{LadderRoom}} Um som de latido tocarÃ¡ ao entrar em uma sala com um alÃ§apÃ£o embaixo de uma pedra"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Ao disparar, vocÃª obtÃ©m uma aura verde que envenena qualquer inimigo ao contato#O veneno causa o mesmo dano que vocÃª", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Enquanto disparar sem parar gera uma nuvem de cocÃ´ a cada 7.5 segundos#A nuvem causa 3.5 de dano 5 vezes por segundo#A nuvem dura 15 segundos#Pode ser movida ao disparar nela", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Ao receber dano:#{{Heart}}25% de chance de soltar um CoraÃ§Ã£o Vermelho#{{Collectible214}} 10% de chance de obter â†‘ +5 de alcance e deixar rastro de sangue na sala atual", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get â†‘ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "ProjÃ©teis inimigos tÃªm 25% de chance de serem desviados como lÃ¡grimas que confundem", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#ProjÃ©teis inimigos tÃªm 25% de chance de serem desviados como lÃ¡grimas que confundem"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "A cada 20 lÃ¡grimas, dispara uma lÃ¡grima de moeda que causa o dobro de dano#Transforma os inimigos em ouro temporariamente#Inimigos transformados em ouro soltam 1-4 moedas se mortos#!!! A lÃ¡grima de moeda custa 1 moeda", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Dobra o efeito de cartas", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Solta uma carta aleatÃ³ria#{{Card}} Dobra o efeito de cartas"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Ao sofrer dano, atire 10 lÃ¡grimas em um cÃ­rculo ao seu redor#As lÃ¡grimas causam seu dano + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "â†‘ {{Range}} +1.5 Alcance", -- Compound Fracture
	-- Full old Desc: "LÃ¡grimas de osso#As lÃ¡grimas se quebram em 1-3 fragmentos de osso menores ao atingir qualquer coisa#â†‘ {{Range}} +1.5 Alcance#â†‘ +1 Altura da LÃ¡grima"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Permite que o personagem carregue duas cartas, runas ou pÃ­lulas#Solta uma carta, runa ou pÃ­lula aleatÃ³ria", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "Solta uma moeda da sorte", -- Dad's Lost Coin
	-- Full old Desc: "â†‘ {{Range}} +1.5 Alcance#â†‘ +1 Altura da LÃ¡grima#Solta uma moeda da sorte"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% de chance de ignorar danos", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#20% de chance de ignorar danos"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Solta um trinket ou pickup aleatÃ³rio", -- Belly Button
	-- Full old Desc: "{{Trinket}} Solta um trinket ou pickup aleatÃ³rio#{{Trinket}} Concede 1 espaÃ§o extra para trinkets"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "{{Poison}} 20% de chance de disparar lÃ¡grimas venenosas que grudam#Gruda por 60 segundos", -- Sinus Infection
	-- Full old Desc: "{{Poison}} 20% de chance de disparar lÃ¡grimas venenosas que grudam#Causa seu dano a cada segundo#Gruda por 60 segundos"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 25% de chance de disparar lÃ¡grimas que confundem#Deixa a tela um pouco mais escura", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 462] = "Depois de atingir o primeiro inimigo, as lÃ¡grimas causam dano duplo e ganha um efeito de teleguiado", -- Eye of Belial
	-- Full old Desc: "â†‘ {{Range}} +1.5 Alcance#â†‘ +1 Altura da LÃ¡grima#Concede lÃ¡grimas que atravessam inimigos#Depois de atingir o primeiro inimigo, as lÃ¡grimas causam dano duplo e ganha um efeito de teleguiado"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Chance de destruir pedras e abrir portas com suas lÃ¡grimas", -- Sulfuric Acid
	-- Full old Desc: "â†‘ {{Damage}} +0.3 Dano#Chance de destruir pedras e abrir portas com suas lÃ¡grimas"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Os inimigos CampeÃµes soltam pickups que vocÃª mais precisa", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 CoraÃ§Ãµes de Alma#Os inimigos CampeÃµes soltam pickups que vocÃª mais precisa"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Permite disparar lÃ¡grimas na diagonal", -- Analog Stick
	-- Full old Desc: "â†‘ {{Tears}} +0.3 LÃ¡grimas#Permite disparar lÃ¡grimas na diagonal"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} O primeiro inimigo morto na sala explodirÃ¡ e envenenarÃ¡ todos os inimigos prÃ³ximos", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Causa 10% do seu dano aos inimigos constantemente na direÃ§Ã£o em que o dedo aponta", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Deixa um rastro#O rastro causa 6 de dano por segundo#Inimigos que tocam na nuvem podem ativar o efeito Crack The Sky", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Salta pela sala#Para de se mover enquanto vocÃª disparar#Quando parado pode bloquear projÃ©teis", -- Hushy
	-- Full old Desc: "Salta pela sala#Causa dano ao contato#Para de se mover enquanto vocÃª disparar#Quando parado pode bloquear projÃ©teis"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Cada lÃ¡grima causa 3.5 de Dano", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Carrega seus tiros e solte-os como um efeito espingarda similar ao {{Collectible229}} Monstro's Lung#Cada lÃ¡grima causa 3.5 de Dano"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Outros familiares o seguem#Enquanto disparar lÃ¡grimas, ele para de se mover#TeleportarÃ¡ de volta para vocÃª quando parar de disparar", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Charrega para frente muito divagar", -- Big Chubby
	-- Full old Desc: "Charrega para frente muito divagar#Causa 40.5 de dano ao contato por segundo"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "Causa 9.999.999 de dano a todos os inimigos", -- Plan C
	-- Full old Desc: "Mata vocÃª 3 segundos depois do uso#Causa 9.999.999 de dano a todos os inimigos"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Duplica 1 pickup aleatÃ³rio na sala atual", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Quando usado, consuma todos os itens de pedestal na sala#Item ativo: Seu efeito ativa e serÃ¡ ativado a cada uso futuro do Void#Item passivo: Pequeno aumento de estatÃ­stica para duas estatÃ­sticas aleatÃ³rias", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#â†‘ Passive items grant two random stat ups"

	[C_ID .. 478] = "Congela todos os inimigos na sala atÃ© vocÃª disparar novamente#Tocar em um inimigo congelado ainda irÃ¡ ferir vocÃª#Os inimigos descongelam apÃ³s 30 segundos", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Consome seu trinket e oferece o efeito permanentemente#Mais trinkets aparecem", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Converte pickups em moscas ou aranhas azuis#Dobras suas moscas/aranhas azuis atuais#Gera 1 mosca ou aranha azul quando vocÃª nÃ£o tem nenhuma", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Transforma vocÃª em um personagem diferente#Remove o Ãºltimo item que vocÃª coletou", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Afeta o andar inteiro#Explode todos os objetos#{VAR:EFFECTLIST}#Abre a porta do Boss Rush, Hush e todas as Salas secretas#!!! Se vocÃª tem uma Bomba Dourada, consome ela ao usar em vez da Mama Mega", -- Mama Mega!
	-- Full old Desc: "Afeta o andar inteiro#Explode todos os objetos#Causa 200 de dano a todos os inimigos#Abre a porta do Boss Rush, Hush e todas as Salas secretas#!!! Se vocÃª tem uma Bomba Dourada, consome ela ao usar em vez da Mama Mega"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Ao usar, empurra os inimigos para longe e gera uma onde de pedras#Pode abrir salas e quebrar pedras", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% Chance de dobrar todos os itens, consumÃ­veis e baÃºs no sala#50% Chance de remover itens ou pickups na sala e gerar 1 moeda", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Danifica o personagem sem receber o dano#Pode ativar efeitos de itens", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Concede um efeito de item aleatÃ³rio para a sala atual", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Efeito de dado aleatÃ³rio a cada uso", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Cria 2 itens aleatÃ³rios baseado nos tipos de item da sala atual#ComeÃ§a com nenhuma carga", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Usar pÃ­lulas envenenam os inimigos na sala atual", -- Acid Baby
	-- Full old Desc: "{{Pill}} Solta uma pÃ­lula aleatÃ³ria a cada 3 salas#{{Poison}} Usar pÃ­lulas envenenam os inimigos na sala atual"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Destaca a localizaÃ§Ã£o de {{SecretRoom}} Salas Secretas, pedras marcadas e alÃ§apÃµes", -- YO LISTEN!
	-- Full old Desc: "â†‘ {{Luck}} +1 Sorte#Destaca a localizaÃ§Ã£o de {{SecretRoom}} Salas Secretas, pedras marcadas e alÃ§apÃµes"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Para cada ContÃªiner de CoraÃ§Ã£o que estiver vazio:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Para cada ContÃªiner de CoraÃ§Ã£o que estiver vazio:#â†‘ {{Damage}} +0.2 Dano"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "LÃ¡grimas geram 1-2 faÃ­scas de eletricidade quando atingem algo#FÃ­scas causam metade do dano", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Chance de disparar uma chama que bloqueia disparos inimigos e causa dano ao contato#A chama fica atÃ© que ela tenha causado dano ou bloqueado disparos 5 vezes", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Agulhas matam inimigos normais instÃ¢ntaneamente, explodindo eles em 10 lÃ¡grimas#Agulhas causam 3x o dano contra chefes", -- Euthanasia
	-- Full old Desc: "3.33% de chance de disparar agulhas#{{Luck}} 100% de chance com 15 de Sorte#Agulhas matam inimigos normais instÃ¢ntaneamente, explodindo eles em 10 lÃ¡grimas#Agulhas causam 3x o dano contra chefes"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Fique camuflado ao entrar em uma sala atÃ© comeÃ§ar a disparar", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Gera uma porta da Sala do Diabo E Sala do Anjo#Ao entrar em uma a outra desaparecerÃ¡", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "DÃ¡ a vocÃª um ContÃªiner de CoraÃ§Ã£o para cada 25 moedas que vocÃª tem#{{Player14}} O Keeper ganharÃ¡ CoraÃ§Ãµes de Moeda adicionais#{{Collectible416}} Recebe 1 ContÃªiner de CoraÃ§Ã£o para cada 100 moedas que vocÃª tem (caso ultrapasse 99)", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Enquanto disparar, ocasionalmente dispara uma lÃ¡grimas que deixa um rastro branco que causa o dobro de dano#Dispara uma lÃ¡grimas que deixa um rastro branco quando receber dano", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Cria uma torre de mosca que dispara nos inimigos#Cada disparo causa 2 de dano", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Chance de gerar um inimigo encantado ao entrar em uma sala hostil", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "LÃ¡grimas que causam sangramento (10% do dano total de pontos de vida dos inimigos a cada 5 segundos)", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Danifique os inimigos com seu dano + 10% do dano igual Ã  vida mÃ¡xima do inimigo#Afeta todos os inimigos na sala#{{HalfHeart}} Chance de soltar Meio CoraÃ§Ã£o quando causar dano#{{HalfSoulHeart}} Solta CoraÃ§Ãµes de Alma em vez disso se vocÃª nÃ£o tem HP vermelho", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Orbital que causa sangramento que causa 10% do dano total de pontos de vida mÃ¡ximos dos inimigos a cada 5 segundos#Causa 300% do seu dano ao contato#NÃ£o bloqueia disparos", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbital que dispara uma lÃ¡grima a cada 2 segundos em uma direÃ§Ã£o aleatÃ³ria#NÃ£o bloqueia disparos", -- Bloodshot Eye
	-- Full old Desc: "Orbital que dispara uma lÃ¡grima a cada 2 segundos em uma direÃ§Ã£o aleatÃ³ria#Causa 3.5 de dano por lÃ¡grima#Causa 30 de dano ao contato por segundo#NÃ£o bloqueia disparos"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Gera uma versÃ£o amigÃ¡vel do chefe Delirium branco para a sala atual", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbita em torno de um inimigo aleatÃ³rio atÃ© que ele morra", -- Angry Fly
	-- Full old Desc: "Orbita em torno de um inimigo aleatÃ³rio atÃ© que ele morra#Causa dano ao contato"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Buraco negro jogÃ¡vel que suga todos os inimigos para dentro dele#Inimigos presos levam dano rÃ¡pidamente", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Chance aleatÃ³ria de encantar ou amedrontar um inimigo#Chance de gerar um cocÃ´ de arco-Ã­ris ao receber dano", -- Bozo
	-- Full old Desc: "â†‘ {{Damage}} +0.1 Dano#{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#Chance aleatÃ³ria de encantar ou amedrontar um inimigo#Chance de gerar um cocÃ´ de arco-Ã­ris ao receber dano"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Causa 'lag' em inimigos e projÃ©teis aleatÃ³rios para intervalos de tempo aleatÃ³rios, paralisando-os#Chance de congelar e remover disparos inimigos#25% de chance de duplicar recompensas ao limpar as salas", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Cria um item aleatÃ³rio da sala atual", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Gera um Sprinkler que gira em cÃ­rculo, borrifando lÃ¡grimas em todas as direÃ§Ãµes", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Permite que vocÃª coloque rapidamente bombas no chÃ£o", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombas#Permite que vocÃª coloque rapidamente bombas no chÃ£o"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "DÃ¡ a vocÃª um familiar aleatÃ³rio#Tem um efeito de lÃ¡grima aleatÃ³ria#SerÃ¡ trocado novamente a cada andar", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Um familiar que se transforma em outro familiar aleatÃ³rio a cada 10 segundos", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 de carga para seu item ativo a cada 15 inimigos mortos", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Quando usado, faz com que um item aleatÃ³rio da {{Shop}} Loja ou {{DevilRoom}} Sala do Diabo fique gratuito#{{Shop}} Enquanto segurar, garante que um item da Loja estarÃ¡ a venda", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "ProjÃ©teis inimigos prÃ³ximos a vocÃª sÃ£o mantidos no lugar por 3 segundos#Recarrega apÃ³s 2 segundos", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Quando usado, armazena todos os pickups da sala atual#A utilizaÃ§Ã£o novamente as colocarÃ¡ no chÃ£o", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "LÃ¡grimas serÃ£o conectadas por raios de eletricidade#Eletricidade causa o mesmo dano que vocÃª", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Ao receber dano, irÃ¡ gerar um orbital que bloqueia projÃ©teis#MÃ¡ximo de 3 orbitais ao mesmo tempo#Os orbitais podem ser destruÃ­dos se sofrerem muito dano", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "DÃ¡ a vocÃª um familiar cavaleiro que gera seu respectivo gafanhoto#O cavaleiro muda a cada 10 segundos", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Familiar usÃ¡vel que faz tarefas para vocÃª:#Abre portas ou baÃºs#Traz um item#50% de chance de roubar da Loja ou Sala do Diabo#Ataca um inimigo atÃ© ele morrer#Explode pareder, pedras, shopkeepers, estÃ¡tuas do anjo, mÃ¡quinas, mendigos", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Prima obrbital#As lÃ¡grimas que atingem o prisma se dividirÃ£o em 4 novas lÃ¡grimas", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "LÃ¡grimas se comportarÃ£o como bolas de bilhar", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Concede um pickup ou aumento de status se vocÃª matar inimigos na ordem em que estÃ£o marcados", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "â†‘ {{Damage}} 31% Dano", -- Haemolacria
	-- Full old Desc: "LÃ¡grimas voam em um arco#LÃ¡grimas explodem em lÃ¡grimas menores com o impacto#â†“ {{Tears}} LÃ¡grimas#â†‘ {{Damage}} 31% Dano"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "As lÃ¡grimas diminuem enquanto viaja pela sala#Ao parar, eles explodem em 8 lÃ¡grimas menores#As lÃ¡grimas podem ser disparadas em outras lÃ¡grimas, aumentando-as", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "LÃ¡grimas sÃ£o trocadas por feixes de luz#{{Damage}} Causa 33% de dano, mas pode atingir inimigos mÃºltiplas vezes", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Permite segurar 2 itens ativos#Troque entre eles pressionando o botÃ£o de Soltar ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{Collectible313}} Concede um escudo ao entrar na sala do chefe", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#{{HealingRed}} Cura 1 CoraÃ§Ã£o Vermelho#{{Collectible313}} Concede um escudo ao entrar na sala do chefe"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Sacrifique 1-2 familiares para gerar um item de Acordo com o Diabo", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} +1 PÃ­lula aleatÃ³ria ao pegar#Familiar que dispara uma linha de rastro#O tipo de rastro muda toda vez que o jogador usa uma pÃ­lula", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Ao receber dano, tem a chance de consumir permanentemente o trinket atual", -- Marbles
	-- Full old Desc: "{{Trinket}} Solta 3 trinkets aleatÃ³rios#{{Collectible479}} Ao receber dano, tem a chance de consumir permanentemente o trinket atual"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Ao receber dano, gera um inimigo amigavel#Gera amigÃ¡veis mais fortes quanto mais salas forem limpas sem receber dano", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "LÃ¡grimas ricocheteiam no chÃ£o#As lÃ¡grimas causam dano por respingo a cada ricochete", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Reflete projÃ©teis", -- Slipped Rib
	-- Full old Desc: "Orbital#Reflete projÃ©teis"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Gera um cocÃ´ branco quando vocÃª recebe dano#Enquanto estiver dentro da aura do cocÃ´:#{VAR:EFFECTLIST}#Chance de bloquear danos", -- Hallowed Ground
	-- Full old Desc: "Gera um cocÃ´ branco quando vocÃª recebe dano#Enquanto estiver dentro da aura do cocÃ´:#â†‘ {{Tears}} -50% Atraso de LÃ¡grimas#Chance de bloquear danos"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Prego que levita na sua frente#Causa seu dano 6 vezes por segundo", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Cria um osso orbital encantado para cada inimigo morto na sala atual", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Concede uma aura que congela os inimigos no lugar", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Gera o trinket Mysterious Paper", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 CoraÃ§Ã£o de Osso#â†‘ {{Tears}} +0.7 LÃ¡grimas#{{Trinket21}} Gera o trinket Mysterious Paper"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Familiar bumerangue#Pode recuperar pickups", -- Jaw Bone
	-- Full old Desc: "Familiar bumerangue#Causa 7 de dano ao contato#Pode recuperar pickups"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "!!! Primeira parte da pÃ¡ quebrada#O PÃ© da MÃ£e constantemente o ataca#O uso dela para o ataque para a sala atual#(Tente vencer o Boss Rush com ele)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "!!! Segunda parte de uma pÃ¡ quebrada", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Cria um alÃ§apÃ£o para o prÃ³ximo andar#Desbloqueia algo legal", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Solte moedas quando for atingido", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% de chance de drops de cocÃ´s", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 Carga para itens ativos", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Teleporta vocÃª ao usar um item ativo", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Dobra a chance de aparecer inimigos campeÃµes", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Atrai moedas", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Maior chance de achar The Bible em {{Shop}} Lojas e {{Library}} Bibliotecas", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} Chance 50% maior de Sala do Anjo#{{Collectible33}} Maior chance de achar The Bible em {{Shop}} Lojas e {{Library}} Bibliotecas"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} 5% de chance de ativar o efeito Gamekid ao receber dano"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "LÃ¡grimas pulsantes#Afeta a hitbox de lÃ¡grimas", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "â†‘ {{Tears}} +0.3 Lagrimas", -- Wiggle Worm
	-- Full old Desc: "LÃ¡grimas se movem em ondas#â†‘ {{Tears}} +0.3 Lagrimas"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "LÃ¡grimas se movem em espiral em alta velocidade", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "LÃ¡grimas 50% maiores#Aumenta o recuo", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Todos os itens de loja sÃ£o gratuitos#!!! Ao comprar qualquer item de loja com 0 moedas, este trinket desaparece", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Previne dano de espinhos e rastros", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Destruir pedras gera moedas", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +1% de chance de CoraÃ§Ãµes Negros", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% de chance de CoraÃ§Ãµes Eternos", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Abra baÃºs sem usar chaves", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Quando estiver com Meio CoraÃ§Ã£o de saÃºde, gere um CoraÃ§Ã£o Negro#!!! AtÃ© 3 usos", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Imita aleatÃ³riamente:#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Imita aleatÃ³riamente:#{{Collectible327}} Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Diminui a chance de apariÃ§Ã£o de CoraÃ§Ãµes em 20%#{{BlackHeart}} Pickups de CoraÃ§Ãµes se tornam CoraÃ§Ãµes Negros#{{Key}} Aumenta a chance de apariÃ§Ã£o de chaves", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Renasce como The Lost quando morrer#Se ele nÃ£o estiver desbloqueado, morra em uma {{SacrificeRoom}} Sala do SacrifÃ­cio enquanto segurar este trinket para desbloqueÃ¡-lo", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} Chance 20% maior de cocÃ´s soltarem moedas#Peida ao pegar moedas#O peido somente empurra os inimigos", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Peide ou solte um cocÃ´ a cada 30 segundos", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "â†‘ {{Range}} +10 Alcance", -- Hook Worm
	-- Full old Desc: "As lÃ¡grimas se movem em padrÃµes angulares#â†‘ {{Range}} +10 Alcance"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% chance de reaparecer como ??? (Blue Baby) ao morrer", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Gera uma mosca azul ao ser atingido", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Receba um efeito aleatÃ³rio de cogumelo por sala#Pode revelar salas especiais no minimapa", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 10% de chance da recompensa por limpar a sala ser um CoraÃ§Ã£o Vermelho aleatÃ³rio#Chance de um CoraÃ§Ã£o bÃ´nus para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% de chance da recompensa por limpar a sala ser uma chave#Chance de uma chave bÃ´nus para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% de chance para drops aleatÃ³rios de coraÃ§Ã£o vermelho serem: #{{SoulHeart}} CoraÃ§Ã£o de Alma#{{BlackHeart}} CoraÃ§Ã£o Negro#{{EmptyBoneHeart}} CoraÃ§Ã£o de Osso", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "â†‘ {{Damage}} 20% de chance de ganhar +1.8 Dano ao ser atingido", -- Red Patch
	-- Full old Desc: "â†‘ {{Damage}} 20% de chance de ganhar +1.8 Dano ao ser atingido#{{Luck}} 100% de chance com 8 de Sorte#Efeito dura somente para a sala atual"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "10% de chance da recompensa por limpar a sala ser uma bomba#{{Bomb}} Chance de uma bomba bÃ´nus para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das #!!! Remove o trinket {{Trinket53}} The Tick", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% chance de recompensa por limpar a sala#Pickups extras para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das", -- Lucky Toe
	-- Full old Desc: "â†‘ {{Luck}} +1 Sorte#+8% chance de recompensa por limpar a sala#Pickups extras para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Quando sofrer dano de Meio CoraÃ§Ã£o ou menos, teleporta o personagem para uma sala aleatÃ³ria", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% de chance da recompensa por limpar a sala ser uma pÃ­lula#{{Pill}} Chance de uma pÃ­lula bÃ´nus para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% de chance da recompensa por limpar a sala ser uma carta#{{Card}} Chance de uma carta bÃ´nus para baÃºs, pedras marcadas e mÃ¡quinas destruÃ­das", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} 50% de chance de gerar Meio CoraÃ§Ã£o Vermelho ao pegar moedas", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} 50% de chance de gerar bombas ao pegar moedas", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 50% de chance de gerar chaves ao pegar moedas", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 50% de chance de gera +1 moeda ao pegar moedas", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "!!! SÃ³ consiguirÃ¡ soltÃ¡-lo com o trinket {{Trinket41}} Match Stick#-15% da vida dos Chefes#{{BossRoom}} Cura 1 CoraÃ§Ã£o Vermelho ao entrar na Sala do Chefe", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Familiar com lÃ¡grimas que atravessam inimigos", -- Isaac's Head
	-- Full old Desc: "Familiar com lÃ¡grimas que atravessam inimigos#Causa 3.5 de dano por lÃ¡grima"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Consiga um CoraÃ§Ã£o Eterno ao iniciar um novo andar", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Reduz os preÃ§os de todos itens do Arcodo com o Diabo de 2 ContÃªineres de CoraÃ§Ã£o para 1", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Familiar que salta ao redor da sala#Atira na mesma direÃ§Ã£o que o personagem", -- ???'s Soul
	-- Full old Desc: "Familiar que salta ao redor da sala#Atira na mesma direÃ§Ã£o que o personagem#Causa 3.5 de dano por lÃ¡grima"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "â†‘ {{Damage}} 1/15 de chance de +0.5 Dano ao matar um inimigo na sala atual", -- Samson's Lock
	-- Full old Desc: "â†‘ {{Damage}} 1/15 de chance de +0.5 Dano ao matar um inimigo na sala atual#{{Luck}} 100% de chance com 10 de Sorte#O efeito dura somente para a sala atual"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Transforma todos os baÃºs em baÃºs vermelhos", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Pedras marcadas e pedras com um alÃ§apÃ£o em baixo a cada 10 segundos", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Transforma bombas trolls em bombas coletÃ¡veis", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Efeito de minhoca aleatÃ³ria a cada 3 segundos", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Quando for atingido, 50% de chance de usar:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Quando for atingido, 50% de chance de usar:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 ou #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "ÃmÃ£ para pickup e inimigos", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Camufla o jogador aleatoriamente por alguns segundos#Confunde inimigos", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Chance de gerar uma aranha enquanto estiver em uma sala hostil", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "{{Bomb}} Bombas deixam poÃ§a venenosa que causa dano aos inimigos ao contato", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% de chance da recompensa por limpar a sala ser uma bateria#+10% de chance de pickups aleatÃ³rios serem uma bateria#5% de chance de adicionar 1 carga ao item ativo ao limpar uma sala", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% de chance de soltar uma bomba coletÃ¡vel quando uma bomba explodir", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "0.5% de chance de revelar um alÃ§apÃ£o ao quebrar pedras", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Efeito de trinket aleatÃ³rio em todas as salas", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "BaÃºs tem 50/50 de chance de gerarem pickup extras ou um inimigo Mosca", -- Poker Chip
	-- English: "â†‘ 50% chance for chests to spawn extra pickups#â†“ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Aumenta o recuo das lÃ¡grimas", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "DuraÃ§Ã£o dos efeitos em inimigos 2x maior", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "25% de chance de ao usar pÃ­lulas/cartas solta uma cÃ³pia dela no chÃ£o", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Invencibilidade dura 2x mais ao ser atingido", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} +15% de chance de ter 2 itens na Sala do Tesouro nos prÃ³ximos andares#VocÃª pode pegar apenas um", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Abra Lojas sem usar chaves", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "5% mais moedas e menos CoraÃ§Ãµes para a recompensas ao limpar salas#Greed e Super Greed nÃ£o aparecem mais em {{Shop}}Lojas ou {{SecretRoom}}Salas Secretas", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Usar uma MÃ¡quina de DoaÃ§Ã£o pode curÃ¡-lo ou gerar um mendigo", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Destruir cocÃ´ gera uma mosca azul", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Cura Meio CoraÃ§Ã£o quando vocÃª usa chaves#Meios CoraÃ§Ãµes aparecem como CoraÃ§Ãµes Cheios", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Impede que itens ativÃ¡veis apareÃ§am", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Familiares se aproximam do personagem", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "CocÃ´ explode quando destruÃ­do", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Aumenta a chance de o cocÃ´ preto aparecer#Chance de gerar um CoraÃ§Ã£o Negro quando o cocÃ´ preto Ã© destruido", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "â†‘ {{Tears}} +0.2 Lagrimas", -- Cracked Crown
	-- Full old Desc: "â†‘ Aumento de estatÃ­sticas de seus itens sÃ£o 33% mais eficazes#â†‘ {{Tears}} +0.2 Lagrimas#â†‘ {{Tears}} +1 Atraso da lÃ¡grima"
	-- English: "â†‘ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% de chance por sala para todas as Moscas inimigas se tornarem amigÃ¡veis", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Dobra todas as Moscas/Aranhas Azuis", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "MÃ¡ximo de +2 Familiares", -- Tonsil
	-- Full old Desc: "Recebe um familiar que bloqueia projÃ©teis apÃ³s receber dano 12-20 vezes#MÃ¡ximo de +2 Familiares"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "{{Poison}} 10% de chance de disparar lÃ¡grimas teleguiadas, pegajosas e venenosas#Causa o seu dano a cada segundo#Gruda por 10 segundos", -- Nose Goblin
	-- Full old Desc: "{{Poison}} 10% de chance de disparar lÃ¡grimas teleguiadas, pegajosas e venenosas#Causa o seu dano a cada segundo#Gruda por 10 segundos"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% de chance de disparar lÃ¡grimas saltitantes", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Enquanto estiver com o item totalmente carregado:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Enquanto estiver com o item totalmente carregado:#â†‘ +0.25 Velocidade#â†‘ +0.75 Alcance#â†‘ +0.2 Lagrimas#â†‘ +0.10 Velocidade de Disparo#â†‘ +0.5 Dano#â†‘ +1 Sorte"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! Enquanto estiver com o item totalmente descarregado:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! Enquanto estiver com o item totalmente descarregado:#â†‘ +0.5 Velocidade#â†‘ +1.5 Alcance#â†‘ +0.4 Lagrimas#â†‘ +0.3 Velocidade de Disparo#â†‘ +1.5 Dano#â†‘ +2 Sorte"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 Sala secreta extra por andar enquanto segurar", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Quando o nÃºmero de moedas, chaves e bombas sÃ£o iguais:#Transforma metade dos consumÃ­veis em consumÃ­veis duplos", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Aumenta o raio de qualquer fluido que vocÃª produz", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "O dano recebido ignora os CoraÃ§Ãµes de Alma/Negros, fazendo com que seus ContÃªineres de CoraÃ§Ã£o Vermelhos se esgote primeiro", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "!!!Ã‰ destruÃ­do depois#Chance de soltar um pickup ou trinket ao ser atingido por uma explosÃ£o", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Impede que os familiares do personagem se movam", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} As Lojas agora aparecerÃ£o no Womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Salas de Itens agora aparecem no Womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} As mÃ¡quinas de reabastecimento sempre aparecem nas {{TreasureRoom}} Sala do Tesouro", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Gera uma mosca explosiva de ataque ao entrar em uma sala hostil#A mosca causa o dobro do seu dano + dano de explosÃ£o", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Gera uma mosca venenosa de ataque ao entrar em uma sala hostil#A mosca causa o dobro do seu dano", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Gera uma mosca de ataque de lentidÃ£o ao entrar em uma sala hostil#A mosca causa o dobro do seu dano", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Gera uma mosca de ataque ao entrar em uma sala hostil#A mosca causa quatro vezes o seu dano", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Gera entre 1-4 moscas de ataque ao entrar numa sala hostil#Cada mosca causa o dobro do seu dano", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "5% de chance de ganhar voo apÃ³s matar um inimigo#Persiste para a sala atual", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HalfHeart}} Cura Meio CoraÃ§Ã£o Vermelho ao viajar para o prÃ³ximo andar", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Recarrega totalmente seu item ativo no inÃ­cio de uma batalha contra um chefe", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Protege vocÃª do primeiro dano que recebe em cada andar", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Ao usar seu item ativo ele cairÃ¡ de volta em um pedestal no chÃ£o#Ao receber dano hÃ¡ 2% de chance de soltar um dos seus itens passivos", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Faz com que os chefes Anjos deixem itens normais em vez de peÃ§as da chave", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "A Ãºltima porta que vocÃª usou permanece aberta", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Conecta seus familiares com raios de eletricidade#Causa 6 de dano por raio", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Cria uma mosca azul ao pegar uma moeda", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Concede aos seus familiares disparos teleguiados", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teleporta vocÃª de volta ao inÃ­cio", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Faz com que o PÃ© da MÃ£e pise em um inimigo (300 de dano)", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Teleporta vocÃª para a Sala do Chefe", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Gera 1 bomba, 1 chave, 1 moeda, 1 coraÃ§Ã£o", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Teleporta vocÃª para a Loja", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Cria uma mÃ¡quina caÃ§a-nÃ­queis ou Fortuna", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Cria uma mÃ¡quina de doaÃ§Ã£o de sangue#{{GreedMode}} Gera um Devil Beggar no Greed Mode", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Gera 6 bombas trolls", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Teleporta vocÃª para a Sala do Tesouro", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Teleporta vocÃª para a Sala Secreta", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Gera um Mendigo ou Mendigo do Diabo", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Duplique suas bombas", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Duplique suas moedas", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Duplique suas chaves", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "!!! SÃ³ tem efeito curativo#{{Heart}} Duplique seus CoraÃ§Ãµes Vermelhos", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Transforma todos os pickups em bombas", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Transforma todos os pickups em moedas", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Transforma todos os pickups em chaves", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Transforma todos os pickups em CoraÃ§Ãµes", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Teleporta vocÃª para Sala do Diabo ou Sala do Anjo", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Destrua todas as pedras na sala", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplique todos os pickups na sala", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Cria um alÃ§apÃ£o para o prÃ³ximo andar", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Remove os efeitos de maldiÃ§Ã£o", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 CoraÃ§Ã£o de Alma#{{CurseCursed}} Remove os efeitos de maldiÃ§Ã£o"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Trocar todos os itens do pedestal", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efeito de rÃºna aleatÃ³ria#25% de chance de soltar esta runa novamente", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Converte todo os itens de pedestal na sala em itens de aumento de status#Converte todos os pickups na sala em moscas azuis", -- Black Rune
	-- Full old Desc: "Causa 40 de dano a todos os inimigos#Converte todo os itens de pedestal na sala em itens de aumento de status#Converte todos os pickups na sala em moscas azuis"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Ao usar, arremessa a carta na direÃ§Ã£o em que vocÃª estÃ¡ se movendo#Mata imediatamente QUALQUER inimigo que ela tocar (exceto Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Remove o preÃ§o de todos os itens da {{Shop}} Loja atual ou {{DevilRoom}} Acordo com o Diabo, tudo fica de graÃ§a", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Exibe dicas \"Ãºteis\" sobre o uso", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Preenche toda a sala com cocÃ´", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Mata o personagem e gera muitos pickups, itens e/ou baÃºs na mesma sala", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Abra todas as portas na sala atual", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Ativa seu item ativo gratuitamente", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Trocar itens e pickups na sala atual", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "MÃ£os da MÃ£e descem e agarram um inimigo", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} Concede o efeito Holy Mantle por uma sala#(ProteÃ§Ã£o contra dano)#25% de chance de gerar outro Holy Card", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Quebra pedras ao contato", -- Huge Growth
	-- Full old Desc: "!!! Efeito dura para a sala atual#â†‘ {{Damage}} +7 Dano#â†‘ {{Range}} +30 Alcance#Aumenta seu tamanho#Quebra pedras ao contato"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Efeito dura para a sala atual", -- Era Walk
	-- Full old Desc: "{{Slow}} Diminui a velocidade dos inimigos#â†“ {{Speed}} -0.5 Velocidade#â†“ {{Shotspeed}} -1 Velocidade de Disparo#Efeito dura para a sala atual"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Cria uma nuvem de gÃ¡s", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Causa 1 CoraÃ§Ã£o de dano a vocÃª#Se torna uma pÃ­lula de SaÃºde Cheia se vocÃª tem 1 coraÃ§Ã£o ou menos", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Trocar o nÃºmero de bombas pelo nÃºmero de chaves", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Solta 5 bombas trolls no local que vocÃª estÃ¡", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Se torna uma pÃ­lula Health Up se vocÃª tem 0 ou 1 ContÃªiner de CoraÃ§Ã£o", -- Health Down
	-- Full old Desc: "â†“ {{Heart}} SaÃºde#Se torna uma pÃ­lula Health Up se vocÃª tem 0 ou 1 ContÃªiner de CoraÃ§Ã£o"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "{{Adult}} Consumir 3 pÃ­lulas concederÃ¡ a transformaÃ§Ã£o Adulto (+1 ContÃªiner de CoraÃ§Ã£o Vazio)#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Sem efeito#{{Adult}} Consumir 3 pÃ­lulas concederÃ¡ a transformaÃ§Ã£o Adulto (+1 ContÃªiner de CoraÃ§Ã£o Vazio)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teletransporta vocÃª para uma sala aleatÃ³ria#{{ErrorRoom}} Baixa chance de te teleportar para a sala I AM ERROR", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Recarregue seu item ativo", -- 48 Hour Energy!
	-- Full old Desc: "Recarregue seu item ativo#{{Battery}} Solta 1-2 bateria"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Drena todos os ContÃªineres de CoraÃ§Ãµes, exceto um", -- Hematemesis
	-- Full old Desc: "Drena todos os ContÃªineres de CoraÃ§Ãµes, exceto um#{{Heart}} Gera 1-4 CoraÃ§Ãµes Vermelhos"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "VocÃª nÃ£o pode se mover por alguns segundos", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Abra entradas de Salas Secretas no andar atual", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Encanta todos os inimigos na sala", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Oculta o mapa do andar", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Cria uma grande poÃ§a de limonada no chÃ£o que causa dano aos inimigos", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Atire na diagonal por 60 segundos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Tome apenas Meio CoraÃ§Ã£o de dano para a sala atual", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Danos sofridos na sala atual levam um CoraÃ§Ã£o Inteiro", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Gera cocÃ´ enquanto caminha por 2 segundos", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Curse Of The Maze para andar atual", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "NÃ£o afeta seu hitbox", -- One makes you larger
	-- Full old Desc: "Aumeta seu tamanho#NÃ£o afeta seu hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Seu hitbox fica menor", -- One makes you small
	-- Full old Desc: "Diminue seu tamanho#Seu hitbox fica menor"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Gera 1 aranha azul por cocÃ´ na sala", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Gera 1 aranha azul por inimigo na sala#Gera 1-3 aranhas azuis quando nenhum inimigo estÃ¡ na sala", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Pixeliza a tela por 30 segundos", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Gera uma poÃ§a de fluido escorregadio", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Gera uma poÃ§a de fluido de lentidÃ£o", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Atrassa todos os inimigos na sala", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Acelere todos os inimigos na sala", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "Consumir trinket atual e obter seu efeito permanentemente", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Atira uma lÃ¡grima do Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "{{Pill}} Gera a Ãºltima pÃ­lula usada", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
